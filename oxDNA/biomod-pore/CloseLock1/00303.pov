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
	<24.250498, 34.906437, 35.226254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.448858, 34.919094, 34.879131>,  <24.567875, 34.926689, 34.670860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.448858, 34.919094, 34.879131>,  <24.250498, 34.906437, 35.226254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.448858, 34.919094, 34.879131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.580508, 0.755302, -0.304186,
		0.645828, 0.654612, 0.392923,
		0.495900, 0.031643, -0.867803,
		24.597628, 34.928589, 34.618790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.575645, 35.590332, 35.085091>,  <24.250498, 34.906437, 35.226254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.575645, 35.590332, 35.085091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.474783, 35.413174, 34.740936>,  <24.414267, 35.306881, 34.534443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.474783, 35.413174, 34.740936>,  <24.575645, 35.590332, 35.085091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.474783, 35.413174, 34.740936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563294, 0.790132, -0.241642,
		0.786836, 0.423714, -0.448726,
		-0.252166, -0.442897, -0.860380,
		24.399136, 35.280308, 34.482819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.686884, 35.983475, 34.596027>,  <24.575645, 35.590332, 35.085091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.686884, 35.983475, 34.596027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.379013, 35.738586, 34.523605>,  <24.194290, 35.591652, 34.480152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.379013, 35.738586, 34.523605>,  <24.686884, 35.983475, 34.596027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.379013, 35.738586, 34.523605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.580982, 0.789231, -0.198933,
		0.264687, -0.047923, -0.963143,
		-0.769676, -0.612224, -0.181058,
		24.148109, 35.554920, 34.469288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.012863, 36.314812, 35.216446>,  <24.686884, 35.983475, 34.596027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.012863, 36.314812, 35.216446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.060448, 36.548717, 34.895473>,  <25.088999, 36.689060, 34.702888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.060448, 36.548717, 34.895473>,  <25.012863, 36.314812, 35.216446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.060448, 36.548717, 34.895473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028799, 0.809866, 0.585908,
		0.992481, -0.046592, 0.113184,
		0.118962, 0.584762, -0.802435,
		25.096136, 36.724148, 34.654743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.531048, 36.798222, 35.266441>,  <25.012863, 36.314812, 35.216446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.531048, 36.798222, 35.266441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.303886, 36.971310, 34.986374>,  <25.167589, 37.075165, 34.818333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.303886, 36.971310, 34.986374>,  <25.531048, 36.798222, 35.266441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.303886, 36.971310, 34.986374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075650, 0.819613, 0.567901,
		0.819613, 0.375479, -0.432724,
		-0.567901, 0.432724, -0.700170,
		25.133516, 37.101128, 34.776321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.829103, 37.472179, 35.459106>,  <25.531048, 36.798222, 35.266441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.829103, 37.472179, 35.459106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.188213, 37.451416, 35.284153>,  <26.403679, 37.438957, 35.179180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.188213, 37.451416, 35.284153>,  <25.829103, 37.472179, 35.459106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.188213, 37.451416, 35.284153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274112, 0.843141, 0.462576,
		0.344765, -0.535181, 0.771180,
		0.897774, -0.051910, -0.437385,
		26.457546, 37.435844, 35.152939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.281757, 37.651672, 35.926147>,  <25.829103, 37.472179, 35.459106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.281757, 37.651672, 35.926147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.474081, 37.727116, 35.583626>,  <26.589476, 37.772381, 35.378113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.474081, 37.727116, 35.583626>,  <26.281757, 37.651672, 35.926147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.474081, 37.727116, 35.583626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357152, 0.849779, 0.387708,
		0.800789, -0.492243, 0.341224,
		0.480812, 0.188604, -0.856299,
		26.618324, 37.783695, 35.326736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.908865, 37.910141, 36.112804>,  <26.281757, 37.651672, 35.926147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.908865, 37.910141, 36.112804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.896162, 38.045090, 35.736469>,  <26.888540, 38.126057, 35.510670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.896162, 38.045090, 35.736469>,  <26.908865, 37.910141, 36.112804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.896162, 38.045090, 35.736469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295706, 0.902343, 0.313584,
		0.954751, -0.268253, -0.128419,
		-0.031758, 0.337368, -0.940837,
		26.886635, 38.146301, 35.454220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.475374, 38.314110, 36.027702>,  <26.908865, 37.910141, 36.112804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.475374, 38.314110, 36.027702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.226851, 38.450302, 35.745411>,  <27.077736, 38.532017, 35.576038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.226851, 38.450302, 35.745411>,  <27.475374, 38.314110, 36.027702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.226851, 38.450302, 35.745411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223911, 0.940251, 0.256500,
		0.750891, 0.001347, -0.660425,
		-0.621311, 0.340480, -0.705724,
		27.040457, 38.552444, 35.533695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.853556, 38.797001, 35.629391>,  <27.475374, 38.314110, 36.027702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.853556, 38.797001, 35.629391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.474960, 38.891518, 35.541454>,  <27.247803, 38.948227, 35.488693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.474960, 38.891518, 35.541454>,  <27.853556, 38.797001, 35.629391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.474960, 38.891518, 35.541454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204638, 0.966105, 0.157368,
		0.249572, 0.103960, -0.962760,
		-0.946487, 0.236292, -0.219839,
		27.191015, 38.962406, 35.475502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.824383, 39.418247, 35.096344>,  <27.853556, 38.797001, 35.629391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.824383, 39.418247, 35.096344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.483635, 39.395927, 35.304653>,  <27.279186, 39.382538, 35.429638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.483635, 39.395927, 35.304653>,  <27.824383, 39.418247, 35.096344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.483635, 39.395927, 35.304653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082367, 0.967665, 0.238411,
		-0.517239, 0.245990, -0.819727,
		-0.851868, -0.055797, 0.520775,
		27.228075, 39.379189, 35.460884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.540672, 39.922417, 34.806812>,  <27.824383, 39.418247, 35.096344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.540672, 39.922417, 34.806812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.303505, 39.861942, 35.123188>,  <27.161203, 39.825657, 35.313015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.303505, 39.861942, 35.123188>,  <27.540672, 39.922417, 34.806812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.303505, 39.861942, 35.123188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132264, 0.950593, 0.280853,
		-0.794325, 0.271136, -0.543630,
		-0.592921, -0.151186, 0.790941,
		27.125629, 39.816586, 35.360470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.062124, 40.549583, 34.739006>,  <27.540672, 39.922417, 34.806812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.062124, 40.549583, 34.739006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.075546, 40.407391, 35.112640>,  <27.083599, 40.322075, 35.336819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.075546, 40.407391, 35.112640>,  <27.062124, 40.549583, 34.739006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.075546, 40.407391, 35.112640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314832, 0.890785, 0.327694,
		-0.948554, 0.283083, 0.141807,
		0.033555, -0.355480, 0.934081,
		27.085613, 40.300747, 35.392864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.750332, 41.013435, 35.202835>,  <27.062124, 40.549583, 34.739006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.750332, 41.013435, 35.202835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.961269, 40.820896, 35.482895>,  <27.087831, 40.705372, 35.650932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.961269, 40.820896, 35.482895>,  <26.750332, 41.013435, 35.202835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.961269, 40.820896, 35.482895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048978, 0.839895, 0.540535,
		-0.848239, -0.250756, 0.466489,
		0.527344, -0.481350, 0.700150,
		27.119473, 40.676491, 35.692940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.619965, 41.424271, 35.835011>,  <26.750332, 41.013435, 35.202835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.619965, 41.424271, 35.835011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.946949, 41.211506, 35.923393>,  <27.143141, 41.083847, 35.976425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.946949, 41.211506, 35.923393>,  <26.619965, 41.424271, 35.835011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.946949, 41.211506, 35.923393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344965, 0.759343, 0.551722,
		-0.461251, -0.374789, 0.804227,
		0.817464, -0.531913, 0.220959,
		27.192188, 41.051933, 35.989681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.612967, 41.337120, 36.526840>,  <26.619965, 41.424271, 35.835011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.612967, 41.337120, 36.526840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.998310, 41.285248, 36.432930>,  <27.229517, 41.254124, 36.376583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.998310, 41.285248, 36.432930>,  <26.612967, 41.337120, 36.526840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.998310, 41.285248, 36.432930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258523, 0.682091, 0.684045,
		0.071430, -0.719677, 0.690625,
		0.963361, -0.129682, -0.234774,
		27.287319, 41.246342, 36.362499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.957701, 41.344349, 37.143379>,  <26.612967, 41.337120, 36.526840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.957701, 41.344349, 37.143379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.237675, 41.445206, 36.876091>,  <27.405659, 41.505718, 36.715717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.237675, 41.445206, 36.876091>,  <26.957701, 41.344349, 37.143379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.237675, 41.445206, 36.876091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345963, 0.698819, 0.626068,
		0.624821, -0.669386, 0.401897,
		0.699934, 0.252138, -0.668220,
		27.447655, 41.520847, 36.675625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.481571, 41.485020, 37.523014>,  <26.957701, 41.344349, 37.143379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.481571, 41.485020, 37.523014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.639631, 41.645008, 37.192226>,  <27.734467, 41.741001, 36.993752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.639631, 41.645008, 37.192226>,  <27.481571, 41.485020, 37.523014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.639631, 41.645008, 37.192226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498445, 0.662835, 0.558751,
		0.771628, -0.632990, 0.062557,
		0.395149, 0.399966, -0.826972,
		27.758177, 41.764999, 36.944134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.178169, 41.791901, 37.720184>,  <27.481571, 41.485020, 37.523014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.178169, 41.791901, 37.720184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.078503, 41.991241, 37.388023>,  <28.018703, 42.110847, 37.188728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.078503, 41.991241, 37.388023>,  <28.178169, 41.791901, 37.720184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.078503, 41.991241, 37.388023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454983, 0.817161, 0.353889,
		0.854931, -0.289640, -0.430352,
		-0.249166, 0.498353, -0.830397,
		28.003754, 42.140747, 37.138905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.759947, 42.222935, 37.690418>,  <28.178169, 41.791901, 37.720184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.759947, 42.222935, 37.690418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.481760, 42.396412, 37.461250>,  <28.314848, 42.500496, 37.323750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.481760, 42.396412, 37.461250>,  <28.759947, 42.222935, 37.690418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.481760, 42.396412, 37.461250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397412, 0.896429, 0.196160,
		0.598657, -0.091264, -0.795789,
		-0.695467, 0.433688, -0.572923,
		28.273121, 42.526520, 37.289375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.053152, 42.779873, 37.220737>,  <28.759947, 42.222935, 37.690418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.053152, 42.779873, 37.220737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.666225, 42.881073, 37.227516>,  <28.434069, 42.941792, 37.231583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.666225, 42.881073, 37.227516>,  <29.053152, 42.779873, 37.220737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.666225, 42.881073, 37.227516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250467, 0.963776, -0.091668,
		-0.039522, -0.084429, -0.995645,
		-0.967318, 0.252999, 0.016944,
		28.376030, 42.956974, 37.232597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.956404, 43.091175, 36.585400>,  <29.053152, 42.779873, 37.220737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.956404, 43.091175, 36.585400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.667734, 43.220879, 36.830036>,  <28.494534, 43.298698, 36.976818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.667734, 43.220879, 36.830036>,  <28.956404, 43.091175, 36.585400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.667734, 43.220879, 36.830036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213748, 0.944714, -0.248653,
		-0.658408, -0.048720, -0.751083,
		-0.721673, 0.324257, 0.611593,
		28.451233, 43.318157, 37.013515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.664799, 43.741604, 36.285275>,  <28.956404, 43.091175, 36.585400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.664799, 43.741604, 36.285275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.538368, 43.750118, 36.664673>,  <28.462509, 43.755226, 36.892311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.538368, 43.750118, 36.664673>,  <28.664799, 43.741604, 36.285275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.538368, 43.750118, 36.664673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122248, 0.992328, 0.018472,
		-0.940824, 0.121790, -0.316254,
		-0.316078, 0.021283, 0.948495,
		28.443544, 43.756504, 36.949223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.110643, 44.259811, 36.293530>,  <28.664799, 43.741604, 36.285275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.110643, 44.259811, 36.293530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.286842, 44.207535, 36.648804>,  <28.392563, 44.176170, 36.861969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.286842, 44.207535, 36.648804>,  <28.110643, 44.259811, 36.293530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.286842, 44.207535, 36.648804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210560, 0.976791, 0.039299,
		-0.872712, 0.169706, 0.457793,
		0.440499, -0.130689, 0.888190,
		28.418991, 44.168327, 36.915260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.930225, 44.934517, 36.580708>,  <28.110643, 44.259811, 36.293530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.930225, 44.934517, 36.580708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.218300, 44.796795, 36.821632>,  <28.391146, 44.714161, 36.966187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.218300, 44.796795, 36.821632>,  <27.930225, 44.934517, 36.580708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.218300, 44.796795, 36.821632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334709, 0.932881, 0.133054,
		-0.607700, 0.105777, 0.787091,
		0.720187, -0.344304, 0.602316,
		28.434357, 44.693504, 37.002327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.787745, 45.173241, 37.346943>,  <27.930225, 44.934517, 36.580708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.787745, 45.173241, 37.346943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.159546, 45.098804, 37.219574>,  <28.382627, 45.054142, 37.143154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.159546, 45.098804, 37.219574>,  <27.787745, 45.173241, 37.346943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.159546, 45.098804, 37.219574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251801, 0.951035, 0.179244,
		0.269475, -0.246787, 0.930849,
		0.929505, -0.186087, -0.318421,
		28.438396, 45.042980, 37.124046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.311163, 45.386837, 37.923519>,  <27.787745, 45.173241, 37.346943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.311163, 45.386837, 37.923519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.420536, 45.426868, 37.540852>,  <28.486160, 45.450886, 37.311249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.420536, 45.426868, 37.540852>,  <28.311163, 45.386837, 37.923519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.420536, 45.426868, 37.540852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295559, 0.937717, 0.182571,
		0.915358, -0.332674, 0.226823,
		0.273433, 0.100078, -0.956671,
		28.502565, 45.456890, 37.253849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.890175, 45.845341, 37.893654>,  <28.311163, 45.386837, 37.923519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.890175, 45.845341, 37.893654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.752892, 45.892891, 37.520969>,  <28.670523, 45.921421, 37.297359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.752892, 45.892891, 37.520969>,  <28.890175, 45.845341, 37.893654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.752892, 45.892891, 37.520969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192408, 0.979820, 0.054140,
		0.919341, -0.160686, -0.359154,
		-0.343207, 0.118877, -0.931706,
		28.649929, 45.928555, 37.241459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.498392, 45.918434, 37.530754>,  <28.890175, 45.845341, 37.893654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.498392, 45.918434, 37.530754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.756014, 45.764118, 37.794987>,  <29.910587, 45.671528, 37.953526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.756014, 45.764118, 37.794987>,  <29.498392, 45.918434, 37.530754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.756014, 45.764118, 37.794987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589518, -0.800610, 0.107205,
		0.487507, -0.458468, -0.743064,
		0.644055, -0.385786, 0.660578,
		29.949230, 45.648384, 37.993160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.340958, 45.202374, 37.392384>,  <29.498392, 45.918434, 37.530754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.340958, 45.202374, 37.392384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.527006, 45.211311, 37.746368>,  <29.638636, 45.216675, 37.958759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.527006, 45.211311, 37.746368>,  <29.340958, 45.202374, 37.392384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.527006, 45.211311, 37.746368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496238, -0.821265, 0.281552,
		0.733083, -0.570109, -0.370899,
		0.465122, 0.022346, 0.884965,
		29.666542, 45.218014, 38.011856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.041901, 45.111622, 38.010185>,  <29.340958, 45.202374, 37.392384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.041901, 45.111622, 38.010185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.424377, 44.996651, 38.032383>,  <29.653864, 44.927670, 38.045700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.424377, 44.996651, 38.032383>,  <29.041901, 45.111622, 38.010185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.424377, 44.996651, 38.032383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095794, 0.486356, 0.868494,
		-0.276615, -0.825133, 0.492584,
		0.956194, -0.287425, 0.055491,
		29.711235, 44.910423, 38.049030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.044460, 44.812721, 38.780293>,  <29.041901, 45.111622, 38.010185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.044460, 44.812721, 38.780293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.395094, 44.894760, 38.606148>,  <29.605474, 44.943981, 38.501663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.395094, 44.894760, 38.606148>,  <29.044460, 44.812721, 38.780293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.395094, 44.894760, 38.606148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318451, 0.431060, 0.844261,
		0.360816, -0.878706, 0.312549,
		0.876585, 0.205092, -0.435358,
		29.658070, 44.956287, 38.475540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.602720, 44.656944, 39.198826>,  <29.044460, 44.812721, 38.780293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.602720, 44.656944, 39.198826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.793102, 44.915501, 38.960281>,  <29.907331, 45.070633, 38.817154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.793102, 44.915501, 38.960281>,  <29.602720, 44.656944, 39.198826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.793102, 44.915501, 38.960281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214707, 0.572173, 0.791529,
		0.852860, -0.504773, 0.133542,
		0.475952, 0.646391, -0.596362,
		29.935888, 45.109417, 38.781372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.185436, 44.900124, 39.576870>,  <29.602720, 44.656944, 39.198826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.185436, 44.900124, 39.576870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.067057, 45.209354, 39.352451>,  <29.996029, 45.394894, 39.217800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.067057, 45.209354, 39.352451>,  <30.185436, 44.900124, 39.576870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.067057, 45.209354, 39.352451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029750, 0.594529, 0.803523,
		0.954741, 0.221109, -0.198949,
		-0.295947, 0.773075, -0.561044,
		29.978273, 45.441277, 39.184139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.299067, 44.287224, 39.140472>,  <30.185436, 44.900124, 39.576870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.299067, 44.287224, 39.140472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.925369, 44.173290, 39.226318>,  <29.701151, 44.104931, 39.277828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.925369, 44.173290, 39.226318>,  <30.299067, 44.287224, 39.140472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.925369, 44.173290, 39.226318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304029, -0.950657, 0.061777,
		0.186431, 0.122965, 0.974742,
		-0.934243, -0.284833, 0.214617,
		29.645096, 44.087841, 39.290703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.275137, 43.773891, 39.646984>,  <30.299067, 44.287224, 39.140472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.275137, 43.773891, 39.646984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.909372, 43.694340, 39.505959>,  <29.689915, 43.646606, 39.421345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.909372, 43.694340, 39.505959>,  <30.275137, 43.773891, 39.646984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.909372, 43.694340, 39.505959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187573, -0.980008, 0.066337,
		-0.358708, -0.005472, 0.933434,
		-0.914410, -0.198882, -0.352563,
		29.635050, 43.634674, 39.400188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.001627, 43.218277, 40.079124>,  <30.275137, 43.773891, 39.646984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.001627, 43.218277, 40.079124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.787525, 43.207108, 39.741432>,  <29.659065, 43.200405, 39.538818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.787525, 43.207108, 39.741432>,  <30.001627, 43.218277, 40.079124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.787525, 43.207108, 39.741432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072759, -0.997263, -0.013140,
		-0.841553, -0.068458, 0.535820,
		-0.535252, -0.027927, -0.844230,
		29.626949, 43.198730, 39.488163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.477304, 42.736488, 40.195389>,  <30.001627, 43.218277, 40.079124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.477304, 42.736488, 40.195389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.509428, 42.740307, 39.796700>,  <29.528702, 42.742599, 39.557487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.509428, 42.740307, 39.796700>,  <29.477304, 42.736488, 40.195389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.509428, 42.740307, 39.796700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180469, -0.983567, 0.005119,
		-0.980297, -0.180289, -0.080710,
		0.080307, 0.009547, -0.996724,
		29.533520, 42.743172, 39.497681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.014498, 42.166809, 39.875603>,  <29.477304, 42.736488, 40.195389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.014498, 42.166809, 39.875603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.288300, 42.249283, 39.595905>,  <29.452579, 42.298767, 39.428085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.288300, 42.249283, 39.595905>,  <29.014498, 42.166809, 39.875603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.288300, 42.249283, 39.595905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029514, -0.966222, -0.256017,
		-0.728413, 0.154606, -0.667466,
		0.684502, 0.206186, -0.699245,
		29.493650, 42.311138, 39.386131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.870619, 41.767693, 39.312988>,  <29.014498, 42.166809, 39.875603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.870619, 41.767693, 39.312988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.249905, 41.862312, 39.228199>,  <29.477476, 41.919083, 39.177326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.249905, 41.862312, 39.228199>,  <28.870619, 41.767693, 39.312988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.249905, 41.862312, 39.228199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122114, -0.887558, -0.444217,
		-0.293217, 0.395328, -0.870482,
		0.948215, 0.236550, -0.211972,
		29.534369, 41.933277, 39.164608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.885326, 41.627506, 38.525127>,  <28.870619, 41.767693, 39.312988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.885326, 41.627506, 38.525127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.251062, 41.632282, 38.687035>,  <29.470505, 41.635147, 38.784180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.251062, 41.632282, 38.687035>,  <28.885326, 41.627506, 38.525127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.251062, 41.632282, 38.687035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278038, -0.745228, -0.606078,
		0.294412, 0.666703, -0.684711,
		0.914340, 0.011939, 0.404772,
		29.525364, 41.635864, 38.808468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.459459, 41.761738, 38.007816>,  <28.885326, 41.627506, 38.525127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.459459, 41.761738, 38.007816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.619539, 41.572075, 38.321510>,  <29.715588, 41.458279, 38.509727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.619539, 41.572075, 38.321510>,  <29.459459, 41.761738, 38.007816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.619539, 41.572075, 38.321510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376956, -0.694831, -0.612465,
		0.835311, 0.540729, -0.099337,
		0.400200, -0.474153, 0.784231,
		29.739599, 41.429829, 38.556778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.047850, 41.618206, 37.740498>,  <29.459459, 41.761738, 38.007816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.047850, 41.618206, 37.740498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.045433, 41.371746, 38.055542>,  <30.043983, 41.223869, 38.244568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.045433, 41.371746, 38.055542>,  <30.047850, 41.618206, 37.740498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.045433, 41.371746, 38.055542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240520, -0.765396, -0.596925,
		0.970625, 0.185829, 0.152820,
		-0.006042, -0.616147, 0.787608,
		30.043621, 41.186901, 38.291824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.665976, 41.235264, 37.504684>,  <30.047850, 41.618206, 37.740498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.665976, 41.235264, 37.504684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.462172, 41.041801, 37.789352>,  <30.339890, 40.925724, 37.960152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.462172, 41.041801, 37.789352>,  <30.665976, 41.235264, 37.504684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.462172, 41.041801, 37.789352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280309, -0.875256, -0.394149,
		0.813527, -0.001336, 0.581526,
		-0.509511, -0.483657, 0.711670,
		30.309319, 40.896706, 38.002853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.164234, 40.707928, 37.791920>,  <30.665976, 41.235264, 37.504684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.164234, 40.707928, 37.791920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.783201, 40.594749, 37.836693>,  <30.554583, 40.526840, 37.863556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.783201, 40.594749, 37.836693>,  <31.164234, 40.707928, 37.791920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.783201, 40.594749, 37.836693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234500, -0.917056, -0.322519,
		0.193904, -0.280977, 0.939922,
		-0.952581, -0.282949, 0.111932,
		30.497427, 40.509865, 37.870274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.243164, 39.953373, 37.969753>,  <31.164234, 40.707928, 37.791920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.243164, 39.953373, 37.969753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.860453, 40.031223, 37.883316>,  <30.630827, 40.077934, 37.831451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.860453, 40.031223, 37.883316>,  <31.243164, 39.953373, 37.969753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.860453, 40.031223, 37.883316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045323, -0.833764, -0.550258,
		-0.287268, -0.516680, 0.806548,
		-0.956778, 0.194626, -0.216097,
		30.573420, 40.089611, 37.818485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.903614, 39.251247, 37.917336>,  <31.243164, 39.953373, 37.969753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.903614, 39.251247, 37.917336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.633326, 39.472523, 37.722446>,  <30.471153, 39.605289, 37.605515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.633326, 39.472523, 37.722446>,  <30.903614, 39.251247, 37.917336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.633326, 39.472523, 37.722446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204416, -0.775639, -0.597159,
		-0.708245, -0.303920, 0.637198,
		-0.675724, 0.553188, -0.487216,
		30.430609, 39.638481, 37.576283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.320015, 38.825230, 37.817940>,  <30.903614, 39.251247, 37.917336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.320015, 38.825230, 37.817940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.321854, 39.103291, 37.530399>,  <30.322956, 39.270126, 37.357876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.321854, 39.103291, 37.530399>,  <30.320015, 38.825230, 37.817940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.321854, 39.103291, 37.530399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190592, -0.705072, -0.683044,
		-0.981659, 0.140148, 0.129249,
		0.004597, 0.695149, -0.718851,
		30.323233, 39.311836, 37.314743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.850973, 38.619915, 37.401028>,  <30.320015, 38.825230, 37.817940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.850973, 38.619915, 37.401028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.050867, 38.866165, 37.157303>,  <30.170803, 39.013916, 37.011066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.050867, 38.866165, 37.157303>,  <29.850973, 38.619915, 37.401028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.050867, 38.866165, 37.157303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219112, -0.590726, -0.776552,
		-0.838006, 0.521579, -0.160315,
		0.499735, 0.615628, -0.609316,
		30.200788, 39.050854, 36.974506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.404295, 38.848469, 36.957073>,  <29.850973, 38.619915, 37.401028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.404295, 38.848469, 36.957073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.744085, 38.887531, 36.749668>,  <29.947960, 38.910969, 36.625225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.744085, 38.887531, 36.749668>,  <29.404295, 38.848469, 36.957073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.744085, 38.887531, 36.749668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434161, -0.429068, -0.792089,
		-0.299829, 0.897978, -0.322084,
		0.849475, 0.097655, -0.518514,
		29.998928, 38.916828, 36.594112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.215298, 38.892052, 36.296307>,  <29.404295, 38.848469, 36.957073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.215298, 38.892052, 36.296307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.607939, 38.848442, 36.233612>,  <29.843523, 38.822277, 36.195995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.607939, 38.848442, 36.233612>,  <29.215298, 38.892052, 36.296307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.607939, 38.848442, 36.233612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190884, -0.542949, -0.817783,
		0.004059, 0.832658, -0.553773,
		0.981604, -0.109026, -0.156737,
		29.902420, 38.815735, 36.186592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.279762, 39.085228, 35.615627>,  <29.215298, 38.892052, 36.296307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.279762, 39.085228, 35.615627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.584425, 38.839878, 35.699203>,  <29.767221, 38.692669, 35.749348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.584425, 38.839878, 35.699203>,  <29.279762, 39.085228, 35.615627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.584425, 38.839878, 35.699203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263413, -0.587682, -0.765012,
		0.592026, 0.527639, -0.609182,
		0.761656, -0.613373, 0.208936,
		29.812922, 38.655865, 35.761883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.459766, 38.784706, 35.010765>,  <29.279762, 39.085228, 35.615627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.459766, 38.784706, 35.010765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.641363, 38.524292, 35.254089>,  <29.750320, 38.368042, 35.400085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.641363, 38.524292, 35.254089>,  <29.459766, 38.784706, 35.010765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.641363, 38.524292, 35.254089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193093, -0.738388, -0.646141,
		0.869832, 0.175881, -0.460932,
		0.453991, -0.651037, 0.608312,
		29.777561, 38.328979, 35.436584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.871004, 38.358883, 34.549870>,  <29.459766, 38.784706, 35.010765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.871004, 38.358883, 34.549870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.847437, 38.154942, 34.893166>,  <29.833298, 38.032578, 35.099144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.847437, 38.154942, 34.893166>,  <29.871004, 38.358883, 34.549870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.847437, 38.154942, 34.893166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104141, -0.851904, -0.513240,
		0.992816, -0.119616, -0.002906,
		-0.058916, -0.509855, 0.858240,
		29.829762, 38.001984, 35.150639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.308878, 37.911011, 34.475811>,  <29.871004, 38.358883, 34.549870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.308878, 37.911011, 34.475811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.064793, 37.760002, 34.754414>,  <29.918341, 37.669399, 34.921574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.064793, 37.760002, 34.754414>,  <30.308878, 37.911011, 34.475811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.064793, 37.760002, 34.754414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213284, -0.768421, -0.603356,
		0.762988, -0.516730, 0.388382,
		-0.610213, -0.377518, 0.696506,
		29.881729, 37.646748, 34.963364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.431192, 37.171646, 34.488422>,  <30.308878, 37.911011, 34.475811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.431192, 37.171646, 34.488422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.055210, 37.232521, 34.610619>,  <29.829620, 37.269047, 34.683937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.055210, 37.232521, 34.610619>,  <30.431192, 37.171646, 34.488422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.055210, 37.232521, 34.610619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324505, -0.675811, -0.661797,
		0.105741, -0.721193, 0.684616,
		-0.939955, 0.152183, 0.305492,
		29.773224, 37.278175, 34.702267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.119421, 36.554604, 34.521545>,  <30.431192, 37.171646, 34.488422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.119421, 36.554604, 34.521545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.792013, 36.783760, 34.504456>,  <29.595568, 36.921253, 34.494202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.792013, 36.783760, 34.504456>,  <30.119421, 36.554604, 34.521545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.792013, 36.783760, 34.504456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416749, -0.643330, -0.642220,
		-0.395405, -0.507864, 0.765329,
		-0.818520, 0.572887, -0.042724,
		29.546457, 36.955627, 34.491638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.593161, 36.055115, 34.518394>,  <30.119421, 36.554604, 34.521545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.593161, 36.055115, 34.518394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.501680, 36.414112, 34.367561>,  <29.446793, 36.629513, 34.277061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.501680, 36.414112, 34.367561>,  <29.593161, 36.055115, 34.518394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.501680, 36.414112, 34.367561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419735, -0.440407, -0.793640,
		-0.878361, -0.023229, 0.477433,
		-0.228700, 0.897498, -0.377086,
		29.433071, 36.683361, 34.254436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.261028, 35.908115, 34.235466>,  <29.593161, 36.055115, 34.518394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.261028, 35.908115, 34.235466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.528608, 35.936462, 33.939499>,  <30.689156, 35.953468, 33.761917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.528608, 35.936462, 33.939499>,  <30.261028, 35.908115, 34.235466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.528608, 35.936462, 33.939499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.669620, 0.374670, 0.641274,
		0.322671, -0.924446, 0.203182,
		0.668949, 0.070866, -0.739923,
		30.729294, 35.957722, 33.717522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.873634, 35.402233, 34.434032>,  <30.261028, 35.908115, 34.235466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.873634, 35.402233, 34.434032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.919437, 35.740425, 34.225399>,  <30.946920, 35.943340, 34.100220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.919437, 35.740425, 34.225399>,  <30.873634, 35.402233, 34.434032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.919437, 35.740425, 34.225399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.630956, 0.343638, 0.695562,
		0.767321, -0.408742, -0.494114,
		0.114509, 0.845484, -0.521579,
		30.953791, 35.994072, 34.068924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.535397, 35.554199, 34.262424>,  <30.873634, 35.402233, 34.434032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.535397, 35.554199, 34.262424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.354153, 35.908203, 34.305233>,  <31.245407, 36.120605, 34.330917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.354153, 35.908203, 34.305233>,  <31.535397, 35.554199, 34.262424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.354153, 35.908203, 34.305233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594806, 0.210723, 0.775759,
		0.664002, 0.415157, -0.621889,
		-0.453108, 0.885009, 0.107018,
		31.218220, 36.173706, 34.337337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.125847, 36.020870, 34.365063>,  <31.535397, 35.554199, 34.262424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.125847, 36.020870, 34.365063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.788189, 36.194702, 34.490635>,  <31.585594, 36.299000, 34.565979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.788189, 36.194702, 34.490635>,  <32.125847, 36.020870, 34.365063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.788189, 36.194702, 34.490635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501963, 0.435050, 0.747505,
		0.188273, 0.788589, -0.585389,
		-0.844148, 0.434579, 0.313935,
		31.534945, 36.325077, 34.584816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.187992, 36.700993, 34.507141>,  <32.125847, 36.020870, 34.365063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.187992, 36.700993, 34.507141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.873877, 36.583717, 34.725262>,  <31.685406, 36.513351, 34.856136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.873877, 36.583717, 34.725262>,  <32.187992, 36.700993, 34.507141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.873877, 36.583717, 34.725262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442374, 0.350490, 0.825507,
		-0.433154, 0.889492, -0.145537,
		-0.785291, -0.293189, 0.545305,
		31.638288, 36.495762, 34.888855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.145271, 37.232334, 34.973984>,  <32.187992, 36.700993, 34.507141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.145271, 37.232334, 34.973984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.942638, 36.910706, 35.098457>,  <31.821058, 36.717728, 35.173141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.942638, 36.910706, 35.098457>,  <32.145271, 37.232334, 34.973984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.942638, 36.910706, 35.098457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419595, 0.085381, 0.903687,
		-0.753202, 0.588364, 0.294133,
		-0.506584, -0.804076, 0.311184,
		31.790663, 36.669483, 35.191811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.613752, 37.253792, 35.509064>,  <32.145271, 37.232334, 34.973984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.613752, 37.253792, 35.509064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.790901, 36.896393, 35.538822>,  <31.897190, 36.681953, 35.556675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.790901, 36.896393, 35.538822>,  <31.613752, 37.253792, 35.509064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.790901, 36.896393, 35.538822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315692, 0.233059, 0.919795,
		-0.839169, -0.383865, 0.385284,
		0.442871, -0.893494, 0.074392,
		31.923763, 36.628345, 35.561138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.342371, 36.943241, 36.168545>,  <31.613752, 37.253792, 35.509064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.342371, 36.943241, 36.168545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.702009, 36.801006, 36.066414>,  <31.917791, 36.715668, 36.005135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.702009, 36.801006, 36.066414>,  <31.342371, 36.943241, 36.168545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.702009, 36.801006, 36.066414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337400, 0.191285, 0.921722,
		-0.278911, -0.914861, 0.291958,
		0.899094, -0.355585, -0.255323,
		31.971737, 36.694332, 35.989819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.641190, 36.531860, 36.744984>,  <31.342371, 36.943241, 36.168545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.641190, 36.531860, 36.744984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.953804, 36.624096, 36.513111>,  <32.141373, 36.679440, 36.373989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.953804, 36.624096, 36.513111>,  <31.641190, 36.531860, 36.744984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.953804, 36.624096, 36.513111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492024, 0.343443, 0.799975,
		0.383559, -0.910424, 0.154954,
		0.781534, 0.230596, -0.579681,
		32.188263, 36.693275, 36.339207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.157261, 36.226234, 37.040485>,  <31.641190, 36.531860, 36.744984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.157261, 36.226234, 37.040485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.382721, 36.481327, 36.830498>,  <32.517998, 36.634384, 36.704506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.382721, 36.481327, 36.830498>,  <32.157261, 36.226234, 37.040485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.382721, 36.481327, 36.830498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409474, 0.336235, 0.848102,
		0.717378, -0.692994, -0.071618,
		0.563649, 0.637735, -0.524970,
		32.551815, 36.672649, 36.673008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.842533, 36.174892, 37.286480>,  <32.157261, 36.226234, 37.040485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.842533, 36.174892, 37.286480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.815899, 36.537373, 37.119450>,  <32.799919, 36.754860, 37.019230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.815899, 36.537373, 37.119450>,  <32.842533, 36.174892, 37.286480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.815899, 36.537373, 37.119450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530333, 0.386635, 0.754493,
		0.845171, -0.171220, -0.506330,
		-0.066581, 0.906199, -0.417576,
		32.795925, 36.809231, 36.994179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.525898, 36.399174, 37.183731>,  <32.842533, 36.174892, 37.286480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.525898, 36.399174, 37.183731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.281414, 36.713913, 37.217896>,  <33.134724, 36.902756, 37.238396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.281414, 36.713913, 37.217896>,  <33.525898, 36.399174, 37.183731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.281414, 36.713913, 37.217896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.677163, 0.464012, 0.571089,
		0.409729, 0.406890, -0.816432,
		-0.611205, 0.786850, 0.085412,
		33.098053, 36.949966, 37.243519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.940659, 37.055538, 37.330948>,  <33.525898, 36.399174, 37.183731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.940659, 37.055538, 37.330948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.581799, 37.195477, 37.438820>,  <33.366482, 37.279438, 37.503544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.581799, 37.195477, 37.438820>,  <33.940659, 37.055538, 37.330948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.581799, 37.195477, 37.438820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426604, 0.527862, 0.734418,
		0.114575, 0.773933, -0.622817,
		-0.897152, 0.349842, 0.269683,
		33.312653, 37.300430, 37.519726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.031761, 37.804626, 37.489677>,  <33.940659, 37.055538, 37.330948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.031761, 37.804626, 37.489677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.684528, 37.694553, 37.654942>,  <33.476189, 37.628510, 37.754101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.684528, 37.694553, 37.654942>,  <34.031761, 37.804626, 37.489677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.684528, 37.694553, 37.654942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202925, 0.562865, 0.801252,
		-0.453046, 0.779395, -0.432772,
		-0.868085, -0.275184, 0.413162,
		33.424103, 37.612000, 37.778889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.849377, 38.377922, 37.885147>,  <34.031761, 37.804626, 37.489677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.849377, 38.377922, 37.885147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.584709, 38.121799, 38.041199>,  <33.425907, 37.968124, 38.134830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.584709, 38.121799, 38.041199>,  <33.849377, 38.377922, 37.885147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.584709, 38.121799, 38.041199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010836, 0.512091, 0.858863,
		-0.749715, 0.572514, -0.331898,
		-0.661673, -0.640306, 0.390126,
		33.386208, 37.929707, 38.158237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.317375, 38.806683, 38.213837>,  <33.849377, 38.377922, 37.885147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.317375, 38.806683, 38.213837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.306381, 38.441372, 38.376404>,  <33.299786, 38.222187, 38.473942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.306381, 38.441372, 38.376404>,  <33.317375, 38.806683, 38.213837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.306381, 38.441372, 38.376404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040061, 0.405236, 0.913334,
		-0.998819, 0.041389, 0.025447,
		-0.027490, -0.913275, 0.406416,
		33.298134, 38.167389, 38.498329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.949280, 38.906002, 38.840919>,  <33.317375, 38.806683, 38.213837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.949280, 38.906002, 38.840919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.110867, 38.548809, 38.920311>,  <33.207821, 38.334496, 38.967945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.110867, 38.548809, 38.920311>,  <32.949280, 38.906002, 38.840919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.110867, 38.548809, 38.920311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069144, 0.246162, 0.966759,
		-0.912155, -0.376818, 0.161186,
		0.403970, -0.892979, 0.198483,
		33.232059, 38.280914, 38.979855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.654934, 38.645454, 39.456749>,  <32.949280, 38.906002, 38.840919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.654934, 38.645454, 39.456749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.002327, 38.449570, 39.425964>,  <33.210762, 38.332039, 39.407494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.002327, 38.449570, 39.425964>,  <32.654934, 38.645454, 39.456749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.002327, 38.449570, 39.425964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115895, 0.049631, 0.992021,
		-0.481989, -0.870468, 0.099859,
		0.868479, -0.489717, -0.076961,
		33.262871, 38.302654, 39.402878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.680664, 38.142891, 39.916622>,  <32.654934, 38.645454, 39.456749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.680664, 38.142891, 39.916622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.062634, 38.237099, 39.844341>,  <33.291817, 38.293621, 39.800972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.062634, 38.237099, 39.844341>,  <32.680664, 38.142891, 39.916622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.062634, 38.237099, 39.844341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192978, -0.029974, 0.980745,
		0.225567, -0.971408, -0.074073,
		0.954924, 0.235518, -0.180699,
		33.349110, 38.307755, 39.790131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.057999, 37.683994, 40.346638>,  <32.680664, 38.142891, 39.916622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.057999, 37.683994, 40.346638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.323586, 37.969398, 40.257149>,  <33.482937, 38.140640, 40.203457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.323586, 37.969398, 40.257149>,  <33.057999, 37.683994, 40.346638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.323586, 37.969398, 40.257149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393538, -0.079030, 0.915905,
		0.635826, -0.696175, -0.333266,
		0.663968, 0.713509, -0.223722,
		33.522778, 38.183453, 40.190033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.697960, 37.334949, 40.493023>,  <33.057999, 37.683994, 40.346638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.697960, 37.334949, 40.493023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.735420, 37.731644, 40.528114>,  <33.757896, 37.969658, 40.549171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.735420, 37.731644, 40.528114>,  <33.697960, 37.334949, 40.493023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.735420, 37.731644, 40.528114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344542, -0.114958, 0.931706,
		0.934088, -0.057030, -0.352459,
		0.093653, 0.991732, 0.087732,
		33.763515, 38.029163, 40.554436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.385006, 37.527309, 40.691238>,  <33.697960, 37.334949, 40.493023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.385006, 37.527309, 40.691238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.213039, 37.871738, 40.799850>,  <34.109859, 38.078396, 40.865017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.213039, 37.871738, 40.799850>,  <34.385006, 37.527309, 40.691238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.213039, 37.871738, 40.799850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398383, -0.088968, 0.912894,
		0.810225, 0.500640, -0.304788,
		-0.429915, 0.861072, 0.271530,
		34.084064, 38.130058, 40.881310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.770653, 37.854027, 41.163982>,  <34.385006, 37.527309, 40.691238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.770653, 37.854027, 41.163982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.441986, 38.078007, 41.206535>,  <34.244785, 38.212395, 41.232067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.441986, 38.078007, 41.206535>,  <34.770653, 37.854027, 41.163982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.441986, 38.078007, 41.206535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228428, 0.152523, 0.961539,
		0.522185, 0.814369, -0.253231,
		-0.821671, 0.559946, 0.106379,
		34.195484, 38.245991, 41.238449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.919788, 38.192474, 41.703266>,  <34.770653, 37.854027, 41.163982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.919788, 38.192474, 41.703266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.537193, 38.308559, 41.691235>,  <34.307636, 38.378212, 41.684017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.537193, 38.308559, 41.691235>,  <34.919788, 38.192474, 41.703266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.537193, 38.308559, 41.691235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086277, 0.379801, 0.921036,
		0.278721, 0.878366, -0.388314,
		-0.956489, 0.290214, -0.030076,
		34.250248, 38.395622, 41.682213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.849224, 38.955593, 41.885483>,  <34.919788, 38.192474, 41.703266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.849224, 38.955593, 41.885483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.520744, 38.746239, 41.976433>,  <34.323658, 38.620625, 42.031002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.520744, 38.746239, 41.976433>,  <34.849224, 38.955593, 41.885483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.520744, 38.746239, 41.976433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204882, 0.101455, 0.973514,
		-0.532591, 0.846035, 0.023917,
		-0.821200, -0.523385, 0.227372,
		34.274384, 38.589222, 42.044643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.470615, 39.269600, 42.386658>,  <34.849224, 38.955593, 41.885483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.470615, 39.269600, 42.386658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.339043, 38.893887, 42.425739>,  <34.260101, 38.668457, 42.449188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.339043, 38.893887, 42.425739>,  <34.470615, 39.269600, 42.386658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.339043, 38.893887, 42.425739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045861, 0.119223, 0.991808,
		-0.943241, 0.321752, -0.082292,
		-0.328927, -0.939288, 0.097700,
		34.240364, 38.612099, 42.455048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.022079, 39.333393, 42.922882>,  <34.470615, 39.269600, 42.386658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.022079, 39.333393, 42.922882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.029167, 38.933983, 42.902378>,  <34.033421, 38.694336, 42.890076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.029167, 38.933983, 42.902378>,  <34.022079, 39.333393, 42.922882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.029167, 38.933983, 42.902378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000208, -0.051268, 0.998685,
		-0.999843, -0.017685, -0.001116,
		0.017719, -0.998529, -0.051257,
		34.034481, 38.634426, 42.887001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.359077, 38.941265, 43.219650>,  <34.022079, 39.333393, 42.922882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.359077, 38.941265, 43.219650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.682404, 38.706890, 43.242603>,  <33.876400, 38.566265, 43.256374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.682404, 38.706890, 43.242603>,  <33.359077, 38.941265, 43.219650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.682404, 38.706890, 43.242603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093030, -0.030872, 0.995185,
		-0.581347, -0.809766, -0.079465,
		0.808320, -0.585941, 0.057385,
		33.924900, 38.531109, 43.259819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.243336, 38.633102, 43.916130>,  <33.359077, 38.941265, 43.219650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.243336, 38.633102, 43.916130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.630939, 38.563023, 43.846474>,  <33.863503, 38.520973, 43.804680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.630939, 38.563023, 43.846474>,  <33.243336, 38.633102, 43.916130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.630939, 38.563023, 43.846474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174989, -0.010703, 0.984512,
		-0.174351, -0.984475, 0.020287,
		0.969010, -0.175201, -0.174139,
		33.921642, 38.510464, 43.794231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.509151, 38.074039, 44.417664>,  <33.243336, 38.633102, 43.916130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.509151, 38.074039, 44.417664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.835411, 38.257278, 44.276318>,  <34.031166, 38.367222, 44.191509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.835411, 38.257278, 44.276318>,  <33.509151, 38.074039, 44.417664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.835411, 38.257278, 44.276318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312385, 0.165378, 0.935449,
		0.486963, -0.873384, -0.008212,
		0.815648, 0.458095, -0.353365,
		34.080105, 38.394707, 44.170307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.071968, 37.762878, 44.821587>,  <33.509151, 38.074039, 44.417664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.071968, 37.762878, 44.821587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.207855, 38.106236, 44.667831>,  <34.289387, 38.312248, 44.575577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.207855, 38.106236, 44.667831>,  <34.071968, 37.762878, 44.821587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.207855, 38.106236, 44.667831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162374, 0.349033, 0.922936,
		0.926405, -0.375953, -0.020808,
		0.339718, 0.858391, -0.384391,
		34.309772, 38.363754, 44.552513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.647053, 37.926838, 45.177135>,  <34.071968, 37.762878, 44.821587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.647053, 37.926838, 45.177135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.532421, 38.282021, 45.033245>,  <34.463642, 38.495132, 44.946911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.532421, 38.282021, 45.033245>,  <34.647053, 37.926838, 45.177135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.532421, 38.282021, 45.033245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206779, 0.423952, 0.881764,
		0.935477, 0.178308, -0.305105,
		-0.286576, 0.887959, -0.359726,
		34.446449, 38.548409, 44.925327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.125050, 38.384224, 45.365757>,  <34.647053, 37.926838, 45.177135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.125050, 38.384224, 45.365757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.819431, 38.632103, 45.293976>,  <34.636059, 38.780830, 45.250908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.819431, 38.632103, 45.293976>,  <35.125050, 38.384224, 45.365757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.819431, 38.632103, 45.293976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274394, 0.563882, 0.778938,
		0.583899, 0.545904, -0.600874,
		-0.764048, 0.619698, -0.179457,
		34.590218, 38.818012, 45.240139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.291119, 39.021706, 45.316772>,  <35.125050, 38.384224, 45.365757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.291119, 39.021706, 45.316772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.910568, 39.066978, 45.431370>,  <34.682240, 39.094143, 45.500130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.910568, 39.066978, 45.431370>,  <35.291119, 39.021706, 45.316772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.910568, 39.066978, 45.431370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305569, 0.464378, 0.831253,
		-0.038961, 0.878375, -0.476381,
		-0.951373, 0.113180, 0.286497,
		34.625156, 39.100933, 45.517319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.269699, 39.662186, 45.617935>,  <35.291119, 39.021706, 45.316772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.269699, 39.662186, 45.617935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.936729, 39.514652, 45.783356>,  <34.736946, 39.426132, 45.882607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.936729, 39.514652, 45.783356>,  <35.269699, 39.662186, 45.617935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.936729, 39.514652, 45.783356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203521, 0.490648, 0.847256,
		-0.515406, 0.789446, -0.333363,
		-0.832427, -0.368835, 0.413552,
		34.687000, 39.404003, 45.907421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.846481, 40.245464, 45.943279>,  <35.269699, 39.662186, 45.617935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.846481, 40.245464, 45.943279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.740700, 39.910637, 46.134853>,  <34.677231, 39.709740, 46.249798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.740700, 39.910637, 46.134853>,  <34.846481, 40.245464, 45.943279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.740700, 39.910637, 46.134853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183639, 0.443825, 0.877095,
		-0.946752, 0.319906, 0.036345,
		-0.264457, -0.837066, 0.478939,
		34.661362, 39.659515, 46.278534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.474049, 40.478580, 46.565781>,  <34.846481, 40.245464, 45.943279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.474049, 40.478580, 46.565781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.528667, 40.090557, 46.646118>,  <34.561440, 39.857742, 46.694321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.528667, 40.090557, 46.646118>,  <34.474049, 40.478580, 46.565781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.528667, 40.090557, 46.646118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071615, 0.211882, 0.974668,
		-0.988042, -0.118704, 0.098402,
		0.136547, -0.970059, 0.200848,
		34.569630, 39.799538, 46.706371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.872360, 40.326305, 46.959240>,  <34.474049, 40.478580, 46.565781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.872360, 40.326305, 46.959240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.157799, 40.049496, 47.002861>,  <34.329060, 39.883411, 47.029034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.157799, 40.049496, 47.002861>,  <33.872360, 40.326305, 46.959240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.157799, 40.049496, 47.002861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195171, -0.046882, 0.979648,
		-0.672824, -0.720354, -0.168518,
		0.713594, -0.692021, 0.109049,
		34.371876, 39.841888, 47.035576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.673328, 39.935566, 47.471214>,  <33.872360, 40.326305, 46.959240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.673328, 39.935566, 47.471214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.051147, 39.805050, 47.456486>,  <34.277840, 39.726742, 47.447647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.051147, 39.805050, 47.456486>,  <33.673328, 39.935566, 47.471214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.051147, 39.805050, 47.456486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007992, -0.089257, 0.995977,
		-0.328266, -0.941046, -0.081700,
		0.944551, -0.326292, -0.036821,
		34.334515, 39.707161, 47.445438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.791222, 39.228600, 47.727516>,  <33.673328, 39.935566, 47.471214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.791222, 39.228600, 47.727516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.128609, 39.441158, 47.758945>,  <34.331043, 39.568691, 47.777802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.128609, 39.441158, 47.758945>,  <33.791222, 39.228600, 47.727516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.128609, 39.441158, 47.758945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038164, -0.205181, 0.977980,
		0.535815, -0.821900, -0.193344,
		0.843472, 0.531395, 0.078572,
		34.381649, 39.600578, 47.782516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.259533, 38.769726, 48.111851>,  <33.791222, 39.228600, 47.727516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.259533, 38.769726, 48.111851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.376488, 39.149776, 48.155247>,  <34.446659, 39.377808, 48.181282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.376488, 39.149776, 48.155247>,  <34.259533, 38.769726, 48.111851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.376488, 39.149776, 48.155247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207953, -0.173899, 0.962556,
		0.933417, -0.258875, -0.248427,
		0.292383, 0.950128, 0.108487,
		34.464203, 39.434814, 48.187794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.887024, 38.769917, 48.429050>,  <34.259533, 38.769726, 48.111851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.887024, 38.769917, 48.429050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.752953, 39.140045, 48.499977>,  <34.672508, 39.362122, 48.542534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.752953, 39.140045, 48.499977>,  <34.887024, 38.769917, 48.429050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.752953, 39.140045, 48.499977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057497, -0.167760, 0.984150,
		0.940398, 0.340061, 0.003027,
		-0.335179, 0.925319, 0.177314,
		34.652397, 39.417641, 48.553173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.167660, 38.892120, 49.014236>,  <34.887024, 38.769917, 48.429050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.167660, 38.892120, 49.014236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.911198, 39.199081, 49.015724>,  <34.757320, 39.383259, 49.016617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.911198, 39.199081, 49.015724>,  <35.167660, 38.892120, 49.014236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.911198, 39.199081, 49.015724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065775, -0.059783, 0.996042,
		0.764591, 0.638369, 0.088806,
		-0.641151, 0.767405, 0.003721,
		34.718853, 39.429302, 49.016842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.332413, 39.436295, 49.559341>,  <35.167660, 38.892120, 49.014236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.332413, 39.436295, 49.559341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.945030, 39.504517, 49.486668>,  <34.712601, 39.545448, 49.443062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.945030, 39.504517, 49.486668>,  <35.332413, 39.436295, 49.559341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.945030, 39.504517, 49.486668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213259, -0.190050, 0.958333,
		0.128915, 0.966847, 0.220426,
		-0.968453, 0.170552, -0.181688,
		34.654495, 39.555683, 49.432159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.069363, 39.808495, 50.159576>,  <35.332413, 39.436295, 49.559341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.069363, 39.808495, 50.159576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.743587, 39.648563, 49.991375>,  <34.548122, 39.552605, 49.890453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.743587, 39.648563, 49.991375>,  <35.069363, 39.808495, 50.159576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.743587, 39.648563, 49.991375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374473, -0.191383, 0.907272,
		-0.443232, 0.896386, 0.006145,
		-0.814442, -0.399831, -0.420499,
		34.499256, 39.528614, 49.865227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.395664, 40.193970, 50.474384>,  <35.069363, 39.808495, 50.159576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.395664, 40.193970, 50.474384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.304638, 39.836063, 50.320705>,  <34.250023, 39.621319, 50.228500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.304638, 39.836063, 50.320705>,  <34.395664, 40.193970, 50.474384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.304638, 39.836063, 50.320705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313084, -0.306366, 0.898954,
		-0.922059, 0.324856, -0.210419,
		-0.227565, -0.894767, -0.384194,
		34.236370, 39.567635, 50.205448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.627117, 39.989613, 50.649441>,  <34.395664, 40.193970, 50.474384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.627117, 39.989613, 50.649441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.844055, 39.655396, 50.614277>,  <33.974216, 39.454865, 50.593178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.844055, 39.655396, 50.614277>,  <33.627117, 39.989613, 50.649441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.844055, 39.655396, 50.614277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283125, -0.280277, 0.917216,
		-0.791015, -0.472555, -0.388569,
		0.542342, -0.835545, -0.087911,
		34.006760, 39.404732, 50.587902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.163261, 39.356522, 50.753483>,  <33.627117, 39.989613, 50.649441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.163261, 39.356522, 50.753483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.542267, 39.313431, 50.873890>,  <33.769669, 39.287575, 50.946133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.542267, 39.313431, 50.873890>,  <33.163261, 39.356522, 50.753483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.542267, 39.313431, 50.873890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317553, -0.207836, 0.925183,
		-0.037104, -0.972214, -0.231136,
		0.947514, -0.107726, 0.301018,
		33.826523, 39.281113, 50.964195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.364952, 38.677330, 50.993843>,  <33.163261, 39.356522, 50.753483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.364952, 38.677330, 50.993843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.558613, 38.980335, 51.169010>,  <33.674809, 39.162136, 51.274113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.558613, 38.980335, 51.169010>,  <33.364952, 38.677330, 50.993843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.558613, 38.980335, 51.169010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491075, -0.178986, 0.852531,
		0.724182, -0.627808, 0.285338,
		0.484155, 0.757510, 0.437919,
		33.703857, 39.207588, 51.300385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.949886, 38.603733, 51.511971>,  <33.364952, 38.677330, 50.993843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.949886, 38.603733, 51.511971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.690464, 38.900509, 51.579979>,  <33.534809, 39.078575, 51.620785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.690464, 38.900509, 51.579979>,  <33.949886, 38.603733, 51.511971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.690464, 38.900509, 51.579979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320960, -0.469109, 0.822753,
		0.690190, 0.479029, 0.542374,
		-0.648555, 0.741936, 0.170025,
		33.495899, 39.123089, 51.630985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.994728, 38.992043, 52.176861>,  <33.949886, 38.603733, 51.511971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.994728, 38.992043, 52.176861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.620548, 38.975857, 52.036404>,  <33.396042, 38.966145, 51.952129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.620548, 38.975857, 52.036404>,  <33.994728, 38.992043, 52.176861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.620548, 38.975857, 52.036404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309946, -0.383651, 0.869911,
		-0.169915, 0.922592, 0.346344,
		-0.935448, -0.040464, -0.351141,
		33.339912, 38.963718, 51.931061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.682060, 38.631607, 52.777206>,  <33.994728, 38.992043, 52.176861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.682060, 38.631607, 52.777206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.663540, 38.703453, 53.170265>,  <33.652428, 38.746559, 53.406101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.663540, 38.703453, 53.170265>,  <33.682060, 38.631607, 52.777206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.663540, 38.703453, 53.170265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.733825, -0.673545, 0.088536,
		0.677759, -0.716992, 0.162988,
		-0.046301, 0.179611, 0.982648,
		33.649651, 38.757336, 53.465061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.028938, 37.922138, 52.773228>,  <33.682060, 38.631607, 52.777206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.028938, 37.922138, 52.773228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.391666, 37.844631, 52.922962>,  <34.609303, 37.798126, 53.012802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.391666, 37.844631, 52.922962>,  <34.028938, 37.922138, 52.773228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.391666, 37.844631, 52.922962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406856, 0.170259, -0.897485,
		0.110168, 0.966161, 0.233230,
		0.906825, -0.193765, 0.374332,
		34.663715, 37.786503, 53.035263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.500580, 38.441936, 52.705025>,  <34.028938, 37.922138, 52.773228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.500580, 38.441936, 52.705025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.719780, 38.107899, 52.685768>,  <34.851299, 37.907478, 52.674213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.719780, 38.107899, 52.685768>,  <34.500580, 38.441936, 52.705025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.719780, 38.107899, 52.685768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378633, 0.298959, -0.875934,
		0.745876, 0.461787, 0.480023,
		0.548002, -0.835091, -0.048139,
		34.884182, 37.857372, 52.671326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.282352, 38.584103, 52.470547>,  <34.500580, 38.441936, 52.705025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.282352, 38.584103, 52.470547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.158772, 38.215210, 52.377563>,  <35.084625, 37.993874, 52.321774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.158772, 38.215210, 52.377563>,  <35.282352, 38.584103, 52.470547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.158772, 38.215210, 52.377563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450272, 0.073455, -0.889865,
		0.837738, -0.379592, 0.392562,
		-0.308950, -0.922233, -0.232455,
		35.066086, 37.938541, 52.307827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.858467, 38.233261, 51.987434>,  <35.282352, 38.584103, 52.470547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.858467, 38.233261, 51.987434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.524113, 38.017139, 51.948730>,  <35.323498, 37.887466, 51.925507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.524113, 38.017139, 51.948730>,  <35.858467, 38.233261, 51.987434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.524113, 38.017139, 51.948730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242761, -0.205788, -0.948008,
		0.492300, -0.815918, 0.303180,
		-0.835888, -0.540304, -0.096764,
		35.273346, 37.855049, 51.919701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.046352, 37.670246, 51.787136>,  <35.858467, 38.233261, 51.987434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.046352, 37.670246, 51.787136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.660576, 37.700348, 51.685799>,  <35.429108, 37.718410, 51.624996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.660576, 37.700348, 51.685799>,  <36.046352, 37.670246, 51.787136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.660576, 37.700348, 51.685799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182258, -0.504770, -0.843794,
		-0.191381, -0.859967, 0.473107,
		-0.964446, 0.075258, -0.253339,
		35.371243, 37.722927, 51.609798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.704330, 36.863796, 51.754990>,  <36.046352, 37.670246, 51.787136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.704330, 36.863796, 51.754990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.507046, 37.117039, 51.516357>,  <35.388676, 37.268986, 51.373177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.507046, 37.117039, 51.516357>,  <35.704330, 36.863796, 51.754990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.507046, 37.117039, 51.516357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255322, -0.550241, -0.795013,
		-0.831595, -0.544433, 0.109741,
		-0.493215, 0.633109, -0.596583,
		35.359081, 37.306973, 51.337383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.252106, 36.445896, 51.317604>,  <35.704330, 36.863796, 51.754990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.252106, 36.445896, 51.317604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.323845, 36.796112, 51.138153>,  <35.366890, 37.006241, 51.030483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.323845, 36.796112, 51.138153>,  <35.252106, 36.445896, 51.317604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.323845, 36.796112, 51.138153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058147, -0.445786, -0.893249,
		-0.982066, 0.186289, -0.029041,
		0.179349, 0.875540, -0.448623,
		35.377651, 37.058773, 51.003567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.678860, 36.495419, 50.762482>,  <35.252106, 36.445896, 51.317604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.678860, 36.495419, 50.762482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.980312, 36.745106, 50.680130>,  <35.161186, 36.894917, 50.630718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.980312, 36.745106, 50.680130>,  <34.678860, 36.495419, 50.762482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.980312, 36.745106, 50.680130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041829, -0.267048, -0.962775,
		-0.655961, 0.734193, -0.175146,
		0.753635, 0.624217, -0.205883,
		35.206402, 36.932369, 50.618366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.435673, 36.840149, 50.236065>,  <34.678860, 36.495419, 50.762482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.435673, 36.840149, 50.236065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.831158, 36.897980, 50.220360>,  <35.068451, 36.932678, 50.210938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.831158, 36.897980, 50.220360>,  <34.435673, 36.840149, 50.236065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.831158, 36.897980, 50.220360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006951, -0.217511, -0.976033,
		-0.149651, 0.965291, -0.214052,
		0.988714, 0.144576, -0.039260,
		35.127773, 36.941353, 50.208580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.716522, 37.255463, 49.540985>,  <34.435673, 36.840149, 50.236065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.716522, 37.255463, 49.540985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.013813, 37.038723, 49.697960>,  <35.192188, 36.908680, 49.792145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.013813, 37.038723, 49.697960>,  <34.716522, 37.255463, 49.540985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.013813, 37.038723, 49.697960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206986, -0.371561, -0.905041,
		0.636211, 0.753883, -0.164000,
		0.743231, -0.541852, 0.392434,
		35.236782, 36.876167, 49.815689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.178150, 37.214836, 49.009487>,  <34.716522, 37.255463, 49.540985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.178150, 37.214836, 49.009487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.328548, 36.931030, 49.247887>,  <35.418785, 36.760746, 49.390926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.328548, 36.931030, 49.247887>,  <35.178150, 37.214836, 49.009487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.328548, 36.931030, 49.247887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380285, -0.468383, -0.797496,
		0.844993, 0.526502, 0.093710,
		0.375992, -0.709516, 0.596001,
		35.441345, 36.718174, 49.426685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.865242, 37.020657, 48.795048>,  <35.178150, 37.214836, 49.009487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.865242, 37.020657, 48.795048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.757874, 36.697701, 49.005215>,  <35.693451, 36.503925, 49.131317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.757874, 36.697701, 49.005215>,  <35.865242, 37.020657, 48.795048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.757874, 36.697701, 49.005215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405512, -0.589461, -0.698639,
		0.873790, 0.025533, 0.485632,
		-0.268423, -0.807393, 0.525419,
		35.677345, 36.455482, 49.162842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.478050, 36.539925, 48.776535>,  <35.865242, 37.020657, 48.795048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.478050, 36.539925, 48.776535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.147068, 36.329453, 48.854965>,  <35.948479, 36.203167, 48.902023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.147068, 36.329453, 48.854965>,  <36.478050, 36.539925, 48.776535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.147068, 36.329453, 48.854965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283561, -0.692936, -0.662897,
		0.484671, -0.492921, 0.722580,
		-0.827458, -0.526183, 0.196073,
		35.898830, 36.171597, 48.913788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.611153, 35.837788, 48.557201>,  <36.478050, 36.539925, 48.776535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.611153, 35.837788, 48.557201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.213768, 35.814857, 48.596680>,  <35.975338, 35.801098, 48.620365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.213768, 35.814857, 48.596680>,  <36.611153, 35.837788, 48.557201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.213768, 35.814857, 48.596680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049346, -0.563984, -0.824310,
		0.102919, -0.823793, 0.557469,
		-0.993465, -0.057329, 0.098695,
		35.915730, 35.797661, 48.626289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.312466, 35.122440, 48.441299>,  <36.611153, 35.837788, 48.557201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.312466, 35.122440, 48.441299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.999035, 35.356491, 48.357742>,  <35.810978, 35.496922, 48.307610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.999035, 35.356491, 48.357742>,  <36.312466, 35.122440, 48.441299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.999035, 35.356491, 48.357742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158913, -0.513789, -0.843070,
		-0.600630, -0.627413, 0.495577,
		-0.783575, 0.585127, -0.208893,
		35.763962, 35.532028, 48.295074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.974339, 34.749825, 47.954052>,  <36.312466, 35.122440, 48.441299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.974339, 34.749825, 47.954052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.766796, 35.088959, 47.910294>,  <35.642269, 35.292439, 47.884037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.766796, 35.088959, 47.910294>,  <35.974339, 34.749825, 47.954052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.766796, 35.088959, 47.910294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231077, -0.262310, -0.936908,
		-0.823037, -0.460842, 0.332016,
		-0.518858, 0.847831, -0.109400,
		35.611137, 35.343307, 47.877472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.367355, 34.615589, 47.456985>,  <35.974339, 34.749825, 47.954052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.367355, 34.615589, 47.456985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.405270, 35.013786, 47.456989>,  <35.428017, 35.252705, 47.456989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.405270, 35.013786, 47.456989>,  <35.367355, 34.615589, 47.456985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.405270, 35.013786, 47.456989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176568, 0.016818, -0.984145,
		-0.979714, 0.093282, 0.177367,
		0.094786, 0.995498, 0.000007,
		35.433704, 35.312435, 47.456993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.699306, 34.879852, 47.237621>,  <35.367355, 34.615589, 47.456985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.699306, 34.879852, 47.237621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.023178, 35.103867, 47.167446>,  <35.217503, 35.238274, 47.125340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.023178, 35.103867, 47.167446>,  <34.699306, 34.879852, 47.237621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.023178, 35.103867, 47.167446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156871, -0.081531, -0.984248,
		-0.565517, 0.824448, 0.021839,
		0.809680, 0.560035, -0.175439,
		35.266083, 35.271877, 47.114815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.521839, 35.078110, 46.531876>,  <34.699306, 34.879852, 47.237621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.521839, 35.078110, 46.531876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.889568, 35.228455, 46.578480>,  <35.110207, 35.318661, 46.606441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.889568, 35.228455, 46.578480>,  <34.521839, 35.078110, 46.531876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.889568, 35.228455, 46.578480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020377, 0.250217, -0.967975,
		-0.392977, 0.892255, 0.222371,
		0.919322, 0.375861, 0.116511,
		35.165363, 35.341213, 46.613434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.548180, 35.670002, 46.064835>,  <34.521839, 35.078110, 46.531876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.548180, 35.670002, 46.064835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.913155, 35.525528, 46.141781>,  <35.132137, 35.438843, 46.187950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.913155, 35.525528, 46.141781>,  <34.548180, 35.670002, 46.064835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.913155, 35.525528, 46.141781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214536, 0.021904, -0.976470,
		0.348477, 0.932235, 0.097474,
		0.912435, -0.361189, 0.192365,
		35.186886, 35.417171, 46.199490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.939468, 35.916939, 45.480587>,  <34.548180, 35.670002, 46.064835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.939468, 35.916939, 45.480587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.163445, 35.632378, 45.650471>,  <35.297829, 35.461643, 45.752399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.163445, 35.632378, 45.650471>,  <34.939468, 35.916939, 45.480587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.163445, 35.632378, 45.650471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428555, -0.190019, -0.883308,
		0.709088, 0.676610, 0.198475,
		0.559942, -0.711401, 0.424705,
		35.331429, 35.418957, 45.777882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.606106, 36.076550, 45.323750>,  <34.939468, 35.916939, 45.480587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.606106, 36.076550, 45.323750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.549137, 35.682652, 45.363724>,  <35.514957, 35.446312, 45.387707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.549137, 35.682652, 45.363724>,  <35.606106, 36.076550, 45.323750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.549137, 35.682652, 45.363724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256300, -0.134207, -0.957235,
		0.956047, -0.110720, 0.271505,
		-0.142423, -0.984748, 0.099931,
		35.506409, 35.387226, 45.393703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.186882, 35.677799, 44.927818>,  <35.606106, 36.076550, 45.323750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.186882, 35.677799, 44.927818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.906937, 35.397572, 44.983521>,  <35.738968, 35.229435, 45.016941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.906937, 35.397572, 44.983521>,  <36.186882, 35.677799, 44.927818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.906937, 35.397572, 44.983521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165795, -0.348974, -0.922350,
		0.694766, -0.622433, 0.360386,
		-0.699866, -0.700567, 0.139259,
		35.696976, 35.187401, 45.025299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.430744, 35.047989, 44.581867>,  <36.186882, 35.677799, 44.927818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.430744, 35.047989, 44.581867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.036552, 34.991577, 44.619705>,  <35.800037, 34.957729, 44.642406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.036552, 34.991577, 44.619705>,  <36.430744, 35.047989, 44.581867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.036552, 34.991577, 44.619705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074121, -0.143963, -0.986803,
		0.152784, -0.979482, 0.131419,
		-0.985476, -0.141027, 0.094595,
		35.740910, 34.949268, 44.648083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.280334, 34.355255, 44.242470>,  <36.430744, 35.047989, 44.581867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.280334, 34.355255, 44.242470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.940075, 34.557278, 44.300858>,  <35.735920, 34.678493, 44.335892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.940075, 34.557278, 44.300858>,  <36.280334, 34.355255, 44.242470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.940075, 34.557278, 44.300858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315718, -0.268739, -0.910001,
		-0.420377, -0.820178, 0.388060,
		-0.850650, 0.505061, 0.145973,
		35.684879, 34.708797, 44.344650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.824875, 33.845783, 43.983234>,  <36.280334, 34.355255, 44.242470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.824875, 33.845783, 43.983234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.636150, 34.198452, 43.986023>,  <35.522915, 34.410053, 43.987694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.636150, 34.198452, 43.986023>,  <35.824875, 33.845783, 43.983234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.636150, 34.198452, 43.986023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486572, -0.253774, -0.835971,
		-0.735283, -0.397813, 0.548730,
		-0.471813, 0.881671, 0.006969,
		35.494606, 34.462952, 43.988113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.125599, 33.663780, 43.755653>,  <35.824875, 33.845783, 43.983234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.125599, 33.663780, 43.755653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.162445, 34.055687, 43.684586>,  <35.184555, 34.290833, 43.641945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.162445, 34.055687, 43.684586>,  <35.125599, 33.663780, 43.755653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.162445, 34.055687, 43.684586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421285, -0.123322, -0.898505,
		-0.902238, 0.157617, 0.401402,
		0.092118, 0.979770, -0.177668,
		35.190079, 34.349617, 43.631287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.435860, 33.953812, 43.477543>,  <35.125599, 33.663780, 43.755653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.435860, 33.953812, 43.477543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.739784, 34.185425, 43.359280>,  <34.922138, 34.324394, 43.288322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.739784, 34.185425, 43.359280>,  <34.435860, 33.953812, 43.477543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.739784, 34.185425, 43.359280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320818, -0.061615, -0.945135,
		-0.565481, 0.812972, 0.138949,
		0.759807, 0.579033, -0.295658,
		34.967728, 34.359135, 43.270584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.042980, 34.500946, 43.163033>,  <34.435860, 33.953812, 43.477543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.042980, 34.500946, 43.163033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.413994, 34.546841, 43.020756>,  <34.636600, 34.574379, 42.935390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.413994, 34.546841, 43.020756>,  <34.042980, 34.500946, 43.163033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.413994, 34.546841, 43.020756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346559, -0.092284, -0.933478,
		-0.139933, 0.989100, -0.045832,
		0.927532, 0.114741, -0.355695,
		34.692253, 34.581264, 42.914047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.008636, 34.878246, 42.633167>,  <34.042980, 34.500946, 43.163033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.008636, 34.878246, 42.633167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.355541, 34.697762, 42.549011>,  <34.563683, 34.589470, 42.498516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.355541, 34.697762, 42.549011>,  <34.008636, 34.878246, 42.633167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.355541, 34.697762, 42.549011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373970, -0.311460, -0.873578,
		0.328642, 0.836301, -0.438857,
		0.867261, -0.451214, -0.210393,
		34.615719, 34.562397, 42.485893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.196281, 35.269260, 42.017097>,  <34.008636, 34.878246, 42.633167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.196281, 35.269260, 42.017097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.377235, 34.913342, 42.041096>,  <34.485809, 34.699791, 42.055496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.377235, 34.913342, 42.041096>,  <34.196281, 35.269260, 42.017097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.377235, 34.913342, 42.041096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040458, -0.087681, -0.995327,
		0.890904, 0.447845, -0.075665,
		0.452386, -0.889802, 0.059996,
		34.512951, 34.646400, 42.059093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.715145, 35.311150, 41.523552>,  <34.196281, 35.269260, 42.017097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.715145, 35.311150, 41.523552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.645897, 34.926239, 41.607506>,  <34.604347, 34.695293, 41.657879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.645897, 34.926239, 41.607506>,  <34.715145, 35.311150, 41.523552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.645897, 34.926239, 41.607506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284700, -0.155111, -0.945984,
		0.942855, -0.223521, -0.247108,
		-0.173118, -0.962278, 0.209883,
		34.593960, 34.637554, 41.670471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.163830, 34.855701, 41.160080>,  <34.715145, 35.311150, 41.523552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.163830, 34.855701, 41.160080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.852127, 34.619778, 41.244831>,  <34.665108, 34.478226, 41.295681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.852127, 34.619778, 41.244831>,  <35.163830, 34.855701, 41.160080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.852127, 34.619778, 41.244831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159796, -0.139908, -0.977185,
		0.605993, -0.795333, 0.014775,
		-0.779255, -0.589806, 0.211874,
		34.618351, 34.442837, 41.308392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.156853, 34.487568, 40.573833>,  <35.163830, 34.855701, 41.160080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.156853, 34.487568, 40.573833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.803883, 34.400742, 40.740788>,  <34.592102, 34.348644, 40.840958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.803883, 34.400742, 40.740788>,  <35.156853, 34.487568, 40.573833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.803883, 34.400742, 40.740788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382074, -0.186980, -0.905018,
		0.274490, -0.958082, 0.082061,
		-0.882425, -0.217065, 0.417383,
		34.539154, 34.335621, 40.866001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.937206, 33.826466, 40.246304>,  <35.156853, 34.487568, 40.573833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.937206, 33.826466, 40.246304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.597450, 33.971100, 40.400082>,  <34.393597, 34.057880, 40.492348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.597450, 33.971100, 40.400082>,  <34.937206, 33.826466, 40.246304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.597450, 33.971100, 40.400082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485387, -0.249177, -0.838039,
		-0.207217, -0.898429, 0.387152,
		-0.849388, 0.361575, 0.384452,
		34.342636, 34.079575, 40.515415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.442223, 33.372097, 39.950104>,  <34.937206, 33.826466, 40.246304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.442223, 33.372097, 39.950104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.274868, 33.712269, 40.077675>,  <34.174454, 33.916374, 40.154217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.274868, 33.712269, 40.077675>,  <34.442223, 33.372097, 39.950104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.274868, 33.712269, 40.077675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336920, 0.180764, -0.924018,
		-0.843466, -0.494051, 0.210898,
		-0.418389, 0.850434, 0.318924,
		34.149353, 33.967400, 40.173351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.836697, 33.321445, 39.701366>,  <34.442223, 33.372097, 39.950104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.836697, 33.321445, 39.701366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.874249, 33.714306, 39.766571>,  <33.896778, 33.950020, 39.805695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.874249, 33.714306, 39.766571>,  <33.836697, 33.321445, 39.701366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.874249, 33.714306, 39.766571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444931, 0.187858, -0.875641,
		-0.890631, 0.009675, 0.454623,
		0.093876, 0.982149, 0.163007,
		33.902412, 34.008949, 39.815472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.205654, 33.594639, 39.627842>,  <33.836697, 33.321445, 39.701366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.205654, 33.594639, 39.627842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.444714, 33.910202, 39.570652>,  <33.588150, 34.099541, 39.536339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.444714, 33.910202, 39.570652>,  <33.205654, 33.594639, 39.627842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.444714, 33.910202, 39.570652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498735, 0.226182, -0.836723,
		-0.627758, 0.571373, 0.528633,
		0.597648, 0.788907, -0.142976,
		33.624008, 34.146873, 39.527760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.747063, 34.244785, 39.407665>,  <33.205654, 33.594639, 39.627842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.747063, 34.244785, 39.407665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.116665, 34.299362, 39.264782>,  <33.338425, 34.332108, 39.179050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.116665, 34.299362, 39.264782>,  <32.747063, 34.244785, 39.407665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.116665, 34.299362, 39.264782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377025, 0.169307, -0.910597,
		-0.063762, 0.976073, 0.207881,
		0.924006, 0.136438, -0.357209,
		33.393867, 34.340294, 39.157619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.799389, 34.804852, 38.913212>,  <32.747063, 34.244785, 39.407665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.799389, 34.804852, 38.913212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.132549, 34.611954, 38.804611>,  <33.332447, 34.496216, 38.739449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.132549, 34.611954, 38.804611>,  <32.799389, 34.804852, 38.913212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.132549, 34.611954, 38.804611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209132, 0.179952, -0.961187,
		0.512386, 0.857355, 0.049029,
		0.832901, -0.482245, -0.271505,
		33.382420, 34.467281, 38.723160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.049339, 35.115356, 38.376591>,  <32.799389, 34.804852, 38.913212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.049339, 35.115356, 38.376591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.259476, 34.777222, 38.337761>,  <33.385555, 34.574341, 38.314465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.259476, 34.777222, 38.337761>,  <33.049339, 35.115356, 38.376591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.259476, 34.777222, 38.337761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042423, 0.087918, -0.995224,
		0.849836, 0.526946, 0.010325,
		0.525337, -0.845339, -0.097071,
		33.417076, 34.523621, 38.308640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.643173, 35.334118, 38.005367>,  <33.049339, 35.115356, 38.376591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.643173, 35.334118, 38.005367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.670475, 34.939632, 37.945061>,  <33.686855, 34.702942, 37.908875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.670475, 34.939632, 37.945061>,  <33.643173, 35.334118, 38.005367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.670475, 34.939632, 37.945061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287743, 0.164160, -0.943533,
		0.955272, 0.021016, 0.294980,
		0.068253, -0.986210, -0.150770,
		33.690952, 34.643768, 37.899830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.106930, 35.206924, 37.416695>,  <33.643173, 35.334118, 38.005367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.106930, 35.206924, 37.416695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.925377, 34.850677, 37.428009>,  <33.816444, 34.636929, 37.434795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.925377, 34.850677, 37.428009>,  <34.106930, 35.206924, 37.416695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.925377, 34.850677, 37.428009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181309, -0.123384, -0.975655,
		0.872423, -0.437701, 0.217477,
		-0.453879, -0.890614, 0.028284,
		33.789211, 34.583492, 37.436493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.529297, 34.674244, 37.086605>,  <34.106930, 35.206924, 37.416695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.529297, 34.674244, 37.086605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.146164, 34.560257, 37.071907>,  <33.916283, 34.491863, 37.063087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.146164, 34.560257, 37.071907>,  <34.529297, 34.674244, 37.086605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.146164, 34.560257, 37.071907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034148, 0.014092, -0.999318,
		0.285296, -0.958432, -0.003766,
		-0.957831, -0.284972, -0.036749,
		33.858814, 34.474766, 37.060883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.317001, 34.649410, 36.889809>,  <34.529297, 34.674244, 37.086605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.317001, 34.649410, 36.889809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.528458, 34.386944, 36.674408>,  <35.655331, 34.229465, 36.545166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.528458, 34.386944, 36.674408>,  <35.317001, 34.649410, 36.889809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.528458, 34.386944, 36.674408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295774, -0.452252, 0.841419,
		-0.795649, -0.604083, -0.045002,
		0.528640, -0.656164, -0.538506,
		35.687050, 34.190094, 36.512856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.163048, 33.974197, 37.193314>,  <35.317001, 34.649410, 36.889809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.163048, 33.974197, 37.193314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.517067, 33.974194, 37.007114>,  <35.729477, 33.974194, 36.895393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.517067, 33.974194, 37.007114>,  <35.163048, 33.974197, 37.193314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.517067, 33.974194, 37.007114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400640, -0.509160, 0.761737,
		-0.237020, -0.860672, -0.450628,
		0.885047, -0.000007, -0.465501,
		35.782581, 33.974190, 36.867462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.473995, 33.440907, 37.361179>,  <35.163048, 33.974197, 37.193314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.473995, 33.440907, 37.361179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.798157, 33.644753, 37.245564>,  <35.992653, 33.767059, 37.176193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.798157, 33.644753, 37.245564>,  <35.473995, 33.440907, 37.361179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.798157, 33.644753, 37.245564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545201, -0.475370, 0.690492,
		0.214483, -0.717160, -0.663082,
		0.810402, 0.509612, -0.289038,
		36.041279, 33.797638, 37.158852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.071888, 32.931263, 37.308823>,  <35.473995, 33.440907, 37.361179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.071888, 32.931263, 37.308823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.217472, 33.298607, 37.370975>,  <36.304825, 33.519012, 37.408268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.217472, 33.298607, 37.370975>,  <36.071888, 32.931263, 37.308823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.217472, 33.298607, 37.370975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.658297, -0.371651, 0.654615,
		0.658920, -0.135969, -0.739822,
		0.363963, 0.918362, 0.155380,
		36.326660, 33.574116, 37.417591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.731556, 32.848919, 37.436951>,  <36.071888, 32.931263, 37.308823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.731556, 32.848919, 37.436951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.655094, 33.212402, 37.585384>,  <36.609219, 33.430492, 37.674446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.655094, 33.212402, 37.585384>,  <36.731556, 32.848919, 37.436951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.655094, 33.212402, 37.585384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524490, -0.224998, 0.821149,
		0.829681, 0.351597, -0.433600,
		-0.191154, 0.908711, 0.371086,
		36.597748, 33.485016, 37.696709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.307259, 32.916340, 37.861988>,  <36.731556, 32.848919, 37.436951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.307259, 32.916340, 37.861988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.068851, 33.209385, 37.993462>,  <36.925808, 33.385212, 38.072346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.068851, 33.209385, 37.993462>,  <37.307259, 32.916340, 37.861988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.068851, 33.209385, 37.993462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588011, 0.119472, 0.799981,
		0.546809, 0.670076, -0.501994,
		-0.596022, 0.732615, 0.328684,
		36.890045, 33.429169, 38.092068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.757862, 33.575741, 38.001606>,  <37.307259, 32.916340, 37.861988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.757862, 33.575741, 38.001606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.420200, 33.575314, 38.216049>,  <37.217606, 33.575058, 38.344715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.420200, 33.575314, 38.216049>,  <37.757862, 33.575741, 38.001606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.420200, 33.575314, 38.216049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534705, -0.073898, 0.841801,
		0.038716, 0.997265, 0.062953,
		-0.844151, -0.001070, 0.536104,
		37.166954, 33.574993, 38.376881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.129772, 33.900749, 38.622398>,  <37.757862, 33.575741, 38.001606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.129772, 33.900749, 38.622398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.764706, 33.768906, 38.719063>,  <37.545666, 33.689800, 38.777061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.764706, 33.768906, 38.719063>,  <38.129772, 33.900749, 38.622398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.764706, 33.768906, 38.719063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251066, 0.014429, 0.967862,
		-0.322502, 0.944008, 0.069584,
		-0.912665, -0.329608, 0.241662,
		37.490906, 33.670025, 38.791561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.926842, 34.296925, 39.219257>,  <38.129772, 33.900749, 38.622398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.926842, 34.296925, 39.219257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.687023, 33.976856, 39.225811>,  <37.543133, 33.784813, 39.229744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.687023, 33.976856, 39.225811>,  <37.926842, 34.296925, 39.219257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.687023, 33.976856, 39.225811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017318, 0.033436, 0.999291,
		-0.800154, 0.598836, -0.033904,
		-0.599545, -0.800174, 0.016383,
		37.507160, 33.736805, 39.230724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.274818, 34.452194, 39.542408>,  <37.926842, 34.296925, 39.219257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.274818, 34.452194, 39.542408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.371738, 34.067787, 39.595669>,  <37.429890, 33.837143, 39.627625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.371738, 34.067787, 39.595669>,  <37.274818, 34.452194, 39.542408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.371738, 34.067787, 39.595669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018455, 0.141786, 0.989725,
		-0.970026, -0.237351, 0.052090,
		0.242298, -0.961021, 0.133156,
		37.444427, 33.779480, 39.635616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.936356, 34.227650, 40.122044>,  <37.274818, 34.452194, 39.542408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.936356, 34.227650, 40.122044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.217243, 33.945297, 40.084896>,  <37.385777, 33.775887, 40.062607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.217243, 33.945297, 40.084896>,  <36.936356, 34.227650, 40.122044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.217243, 33.945297, 40.084896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145290, 0.014377, 0.989285,
		-0.696983, -0.708183, 0.112653,
		0.702215, -0.705882, -0.092871,
		37.427906, 33.733532, 40.057034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.781956, 33.718540, 40.610287>,  <36.936356, 34.227650, 40.122044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.781956, 33.718540, 40.610287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.169407, 33.673195, 40.521824>,  <37.401878, 33.645988, 40.468746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.169407, 33.673195, 40.521824>,  <36.781956, 33.718540, 40.610287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.169407, 33.673195, 40.521824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215641, -0.058989, 0.974689,
		-0.123539, -0.991801, -0.032693,
		0.968627, -0.113362, -0.221160,
		37.459995, 33.639187, 40.455475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.931416, 33.265957, 41.024815>,  <36.781956, 33.718540, 40.610287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.931416, 33.265957, 41.024815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.303272, 33.383430, 40.935806>,  <37.526386, 33.453915, 40.882401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.303272, 33.383430, 40.935806>,  <36.931416, 33.265957, 41.024815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.303272, 33.383430, 40.935806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276542, -0.157007, 0.948089,
		0.243502, -0.942920, -0.227177,
		0.929641, 0.293685, -0.222525,
		37.582165, 33.471535, 40.869049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.394016, 32.876625, 41.424278>,  <36.931416, 33.265957, 41.024815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.394016, 32.876625, 41.424278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.595352, 33.212852, 41.344189>,  <37.716152, 33.414589, 41.296135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.595352, 33.212852, 41.344189>,  <37.394016, 32.876625, 41.424278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.595352, 33.212852, 41.344189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358943, 0.007378, 0.933331,
		0.786009, -0.541649, -0.298004,
		0.503339, 0.840572, -0.200220,
		37.746353, 33.465023, 41.284122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.018745, 32.918453, 42.029022>,  <37.394016, 32.876625, 41.424278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.018745, 32.918453, 42.029022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.085392, 33.274723, 41.859818>,  <38.125381, 33.488483, 41.758297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.085392, 33.274723, 41.859818>,  <38.018745, 32.918453, 42.029022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.085392, 33.274723, 41.859818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156968, 0.399573, 0.903162,
		0.973447, -0.216883, -0.073231,
		0.166619, 0.890675, -0.423007,
		38.135376, 33.541927, 41.732914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.718502, 33.166069, 42.348228>,  <38.018745, 32.918453, 42.029022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.718502, 33.166069, 42.348228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.501511, 33.475971, 42.218327>,  <38.371315, 33.661915, 42.140385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.501511, 33.475971, 42.218327>,  <38.718502, 33.166069, 42.348228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.501511, 33.475971, 42.218327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140883, 0.465008, 0.874025,
		0.828172, 0.428388, -0.361407,
		-0.542479, 0.774759, -0.324754,
		38.338768, 33.708401, 42.120899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.120178, 33.800724, 42.432022>,  <38.718502, 33.166069, 42.348228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.120178, 33.800724, 42.432022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.730629, 33.891552, 42.433155>,  <38.496899, 33.946049, 42.433834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.730629, 33.891552, 42.433155>,  <39.120178, 33.800724, 42.432022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.730629, 33.891552, 42.433155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077995, 0.322748, 0.943266,
		0.213269, 0.918844, -0.332027,
		-0.973875, 0.227066, 0.002834,
		38.438465, 33.959671, 42.434006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.093197, 34.501915, 42.727863>,  <39.120178, 33.800724, 42.432022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.093197, 34.501915, 42.727863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.717598, 34.374142, 42.778843>,  <38.492237, 34.297478, 42.809429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.717598, 34.374142, 42.778843>,  <39.093197, 34.501915, 42.727863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.717598, 34.374142, 42.778843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058679, 0.513949, 0.855812,
		-0.338874, 0.796129, -0.501341,
		-0.939000, -0.319431, 0.127448,
		38.435898, 34.278313, 42.817078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.690208, 35.132866, 42.890785>,  <39.093197, 34.501915, 42.727863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.690208, 35.132866, 42.890785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.468140, 34.834564, 43.038101>,  <38.334900, 34.655582, 43.126492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.468140, 34.834564, 43.038101>,  <38.690208, 35.132866, 42.890785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.468140, 34.834564, 43.038101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098903, 0.498849, 0.861027,
		-0.825836, 0.441591, -0.350703,
		-0.555170, -0.745753, 0.368293,
		38.301590, 34.610840, 43.148590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.097633, 35.467636, 43.236446>,  <38.690208, 35.132866, 42.890785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.097633, 35.467636, 43.236446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.112335, 35.101776, 43.397476>,  <38.121159, 34.882259, 43.494095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.112335, 35.101776, 43.397476>,  <38.097633, 35.467636, 43.236446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.112335, 35.101776, 43.397476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086501, 0.398426, 0.913112,
		-0.995573, -0.068387, -0.064473,
		0.036757, -0.914647, 0.402578,
		38.123363, 34.827381, 43.518250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.448944, 35.332867, 43.733658>,  <38.097633, 35.467636, 43.236446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.448944, 35.332867, 43.733658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.725365, 35.057495, 43.821754>,  <37.891216, 34.892273, 43.874611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.725365, 35.057495, 43.821754>,  <37.448944, 35.332867, 43.733658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.725365, 35.057495, 43.821754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312743, -0.010087, 0.949784,
		-0.651642, -0.725229, -0.222274,
		0.691054, -0.688434, 0.220238,
		37.932682, 34.850964, 43.887825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.074184, 34.818325, 44.118946>,  <37.448944, 35.332867, 43.733658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.074184, 34.818325, 44.118946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.457981, 34.754025, 44.211491>,  <37.688259, 34.715446, 44.267017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.457981, 34.754025, 44.211491>,  <37.074184, 34.818325, 44.118946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.457981, 34.754025, 44.211491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204720, 0.166330, 0.964585,
		-0.193538, -0.972879, 0.126684,
		0.959496, -0.160749, 0.231359,
		37.745831, 34.705799, 44.280899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.147903, 34.364239, 44.745014>,  <37.074184, 34.818325, 44.118946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.147903, 34.364239, 44.745014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.502895, 34.548565, 44.743061>,  <37.715893, 34.659161, 44.741890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.502895, 34.548565, 44.743061>,  <37.147903, 34.364239, 44.745014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.502895, 34.548565, 44.743061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097146, 0.197440, 0.975490,
		0.450484, -0.865256, 0.219991,
		0.887484, 0.460813, -0.004887,
		37.769142, 34.686810, 44.741596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.548763, 34.107231, 45.377556>,  <37.147903, 34.364239, 44.745014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.548763, 34.107231, 45.377556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.749290, 34.437786, 45.274975>,  <37.869606, 34.636120, 45.213425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.749290, 34.437786, 45.274975>,  <37.548763, 34.107231, 45.377556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.749290, 34.437786, 45.274975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141562, 0.214063, 0.966508,
		0.853608, -0.520827, -0.009672,
		0.501313, 0.826388, -0.256455,
		37.899685, 34.685703, 45.198040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.208305, 34.101818, 45.749565>,  <37.548763, 34.107231, 45.377556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.208305, 34.101818, 45.749565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.134937, 34.482803, 45.652260>,  <38.090916, 34.711395, 45.593876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.134937, 34.482803, 45.652260>,  <38.208305, 34.101818, 45.749565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.134937, 34.482803, 45.652260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065746, 0.258794, 0.963692,
		0.980833, 0.160767, -0.110089,
		-0.183421, 0.952460, -0.243264,
		38.079910, 34.768539, 45.579281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.650936, 34.484207, 46.096600>,  <38.208305, 34.101818, 45.749565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.650936, 34.484207, 46.096600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.343861, 34.724514, 46.007397>,  <38.159615, 34.868698, 45.953873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.343861, 34.724514, 46.007397>,  <38.650936, 34.484207, 46.096600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.343861, 34.724514, 46.007397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014896, 0.364638, 0.931030,
		0.640652, 0.711418, -0.288877,
		-0.767687, 0.600769, -0.223009,
		38.113556, 34.904743, 45.940495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.791222, 35.059341, 46.243526>,  <38.650936, 34.484207, 46.096600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.791222, 35.059341, 46.243526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.395763, 35.119137, 46.237343>,  <38.158489, 35.155014, 46.233635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.395763, 35.119137, 46.237343>,  <38.791222, 35.059341, 46.243526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.395763, 35.119137, 46.237343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037459, 0.344703, 0.937964,
		0.145545, 0.926732, -0.346388,
		-0.988642, 0.149491, -0.015455,
		38.099171, 35.163982, 46.232708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.658489, 35.712151, 46.331860>,  <38.791222, 35.059341, 46.243526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.658489, 35.712151, 46.331860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.318893, 35.566525, 46.485050>,  <38.115135, 35.479149, 46.576965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.318893, 35.566525, 46.485050>,  <38.658489, 35.712151, 46.331860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.318893, 35.566525, 46.485050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083453, 0.623304, 0.777514,
		-0.521775, 0.692063, -0.498798,
		-0.848992, -0.364061, 0.382979,
		38.064198, 35.457306, 46.599945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.350002, 36.286827, 46.645397>,  <38.658489, 35.712151, 46.331860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.350002, 36.286827, 46.645397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.141087, 35.984211, 46.802811>,  <38.015736, 35.802643, 46.897259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.141087, 35.984211, 46.802811>,  <38.350002, 36.286827, 46.645397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.141087, 35.984211, 46.802811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063699, 0.425575, 0.902679,
		-0.850387, 0.496526, -0.174082,
		-0.522289, -0.756537, 0.393531,
		37.984402, 35.757252, 46.920872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.959641, 36.572254, 47.080284>,  <38.350002, 36.286827, 46.645397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.959641, 36.572254, 47.080284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.941113, 36.192734, 47.205273>,  <37.929996, 35.965023, 47.280266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.941113, 36.192734, 47.205273>,  <37.959641, 36.572254, 47.080284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.941113, 36.192734, 47.205273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355632, 0.276650, 0.892744,
		-0.933478, 0.152473, 0.324609,
		-0.046316, -0.948798, 0.312470,
		37.927219, 35.908096, 47.299015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.415920, 36.632866, 47.677853>,  <37.959641, 36.572254, 47.080284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.415920, 36.632866, 47.677853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.645164, 36.307941, 47.721123>,  <37.782711, 36.112988, 47.747086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.645164, 36.307941, 47.721123>,  <37.415920, 36.632866, 47.677853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.645164, 36.307941, 47.721123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173611, 0.249358, 0.952722,
		-0.800879, -0.527233, 0.283935,
		0.573108, -0.812309, 0.108171,
		37.817097, 36.064247, 47.753574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.166550, 36.219803, 48.284878>,  <37.415920, 36.632866, 47.677853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.166550, 36.219803, 48.284878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.547302, 36.116119, 48.219482>,  <37.775753, 36.053909, 48.180244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.547302, 36.116119, 48.219482>,  <37.166550, 36.219803, 48.284878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.547302, 36.116119, 48.219482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223956, 0.224205, 0.948460,
		-0.209192, -0.939438, 0.271468,
		0.951883, -0.259207, -0.163491,
		37.832867, 36.038357, 48.170437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.384556, 35.857323, 48.840172>,  <37.166550, 36.219803, 48.284878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.384556, 35.857323, 48.840172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.739929, 35.984669, 48.707912>,  <37.953152, 36.061077, 48.628559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.739929, 35.984669, 48.707912>,  <37.384556, 35.857323, 48.840172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.739929, 35.984669, 48.707912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331779, 0.052367, 0.941903,
		0.317187, -0.946520, -0.059103,
		0.888434, 0.318369, -0.330645,
		38.006458, 36.080177, 48.608719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.814011, 35.612598, 49.364601>,  <37.384556, 35.857323, 48.840172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.814011, 35.612598, 49.364601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.039104, 35.881451, 49.172115>,  <38.174160, 36.042763, 49.056622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.039104, 35.881451, 49.172115>,  <37.814011, 35.612598, 49.364601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.039104, 35.881451, 49.172115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517632, 0.167362, 0.839075,
		0.644509, -0.721266, -0.253739,
		0.562730, 0.672135, -0.481217,
		38.207924, 36.083092, 49.027752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.485115, 35.512138, 49.598370>,  <37.814011, 35.612598, 49.364601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.485115, 35.512138, 49.598370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.536625, 35.872787, 49.433208>,  <38.567532, 36.089176, 49.334110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.536625, 35.872787, 49.433208>,  <38.485115, 35.512138, 49.598370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.536625, 35.872787, 49.433208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505054, 0.298695, 0.809754,
		0.853426, -0.312817, -0.416905,
		0.128777, 0.901625, -0.412903,
		38.575256, 36.143276, 49.309338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.253387, 35.649288, 49.620827>,  <38.485115, 35.512138, 49.598370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.253387, 35.649288, 49.620827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.079998, 36.009743, 49.617943>,  <38.975964, 36.226017, 49.616211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.079998, 36.009743, 49.617943>,  <39.253387, 35.649288, 49.620827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.079998, 36.009743, 49.617943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557893, 0.274634, 0.783155,
		0.707711, 0.335453, -0.621785,
		-0.433475, 0.901137, -0.007214,
		38.949955, 36.280083, 49.615780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.713524, 36.091560, 49.645485>,  <39.253387, 35.649288, 49.620827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.713524, 36.091560, 49.645485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.401516, 36.283810, 49.805767>,  <39.214310, 36.399158, 49.901936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.401516, 36.283810, 49.805767>,  <39.713524, 36.091560, 49.645485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.401516, 36.283810, 49.805767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584936, 0.332547, 0.739772,
		0.222298, 0.811427, -0.540528,
		-0.780021, 0.480624, 0.400708,
		39.167511, 36.427998, 49.925980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.031658, 36.669289, 49.911957>,  <39.713524, 36.091560, 49.645485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.031658, 36.669289, 49.911957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.673397, 36.647148, 50.088474>,  <39.458439, 36.633862, 50.194386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.673397, 36.647148, 50.088474>,  <40.031658, 36.669289, 49.911957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.673397, 36.647148, 50.088474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365921, 0.472249, 0.801924,
		-0.252789, 0.879725, -0.402718,
		-0.895656, -0.055355, 0.441289,
		39.404701, 36.630543, 50.220860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.992649, 37.292393, 50.320438>,  <40.031658, 36.669289, 49.911957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.992649, 37.292393, 50.320438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.745045, 37.012623, 50.463341>,  <39.596481, 36.844761, 50.549080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.745045, 37.012623, 50.463341>,  <39.992649, 37.292393, 50.320438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.745045, 37.012623, 50.463341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379249, 0.132132, 0.915812,
		-0.687748, 0.702384, 0.183466,
		-0.619010, -0.699427, 0.357252,
		39.559341, 36.802795, 50.570515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.240356, 37.774235, 49.793797>,  <39.992649, 37.292393, 50.320438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.240356, 37.774235, 49.793797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.538586, 37.945644, 49.589649>,  <40.717525, 38.048492, 49.467159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.538586, 37.945644, 49.589649>,  <40.240356, 37.774235, 49.793797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.538586, 37.945644, 49.589649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284865, -0.487413, -0.825397,
		-0.602468, 0.760784, -0.241331,
		0.745577, 0.428528, -0.510371,
		40.762260, 38.074203, 49.436539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.955284, 38.040901, 49.248241>,  <40.240356, 37.774235, 49.793797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.955284, 38.040901, 49.248241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.344353, 38.025078, 49.156731>,  <40.577793, 38.015583, 49.101822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.344353, 38.025078, 49.156731>,  <39.955284, 38.040901, 49.248241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.344353, 38.025078, 49.156731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224025, -0.418713, -0.880053,
		-0.060977, 0.907257, -0.416134,
		0.972674, -0.039561, -0.228780,
		40.636154, 38.013210, 49.088097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.037827, 38.343731, 48.631863>,  <39.955284, 38.040901, 49.248241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.037827, 38.343731, 48.631863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.363640, 38.112137, 48.646317>,  <40.559128, 37.973179, 48.654991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.363640, 38.112137, 48.646317>,  <40.037827, 38.343731, 48.631863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.363640, 38.112137, 48.646317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143138, -0.260956, -0.954680,
		0.562179, 0.772447, -0.295433,
		0.814534, -0.578989, 0.036137,
		40.608002, 37.938438, 48.657158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.255932, 38.319374, 47.884338>,  <40.037827, 38.343731, 48.631863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.255932, 38.319374, 47.884338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.450459, 38.018749, 48.062618>,  <40.567177, 37.838375, 48.169586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.450459, 38.018749, 48.062618>,  <40.255932, 38.319374, 47.884338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.450459, 38.018749, 48.062618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010078, -0.514877, -0.857205,
		0.873723, 0.412384, -0.257969,
		0.486319, -0.751559, 0.445704,
		40.596355, 37.793282, 48.196331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.698967, 38.278008, 47.391048>,  <40.255932, 38.319374, 47.884338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.698967, 38.278008, 47.391048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.702972, 37.933525, 47.594311>,  <40.705376, 37.726833, 47.716267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.702972, 37.933525, 47.594311>,  <40.698967, 38.278008, 47.391048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.702972, 37.933525, 47.594311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012823, -0.508027, -0.861246,
		0.999868, 0.015137, 0.005958,
		0.010009, -0.861208, 0.508154,
		40.705975, 37.675163, 47.746758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.265270, 37.939468, 47.147514>,  <40.698967, 38.278008, 47.391048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.265270, 37.939468, 47.147514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.034466, 37.647717, 47.294525>,  <40.895985, 37.472668, 47.382732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.034466, 37.647717, 47.294525>,  <41.265270, 37.939468, 47.147514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.034466, 37.647717, 47.294525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046341, -0.478500, -0.876864,
		0.815423, -0.488926, 0.309898,
		-0.577007, -0.729376, 0.367522,
		40.861362, 37.428905, 47.404781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.430882, 37.425930, 46.755444>,  <41.265270, 37.939468, 47.147514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.430882, 37.425930, 46.755444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.085938, 37.310032, 46.921516>,  <40.878971, 37.240494, 47.021160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.085938, 37.310032, 46.921516>,  <41.430882, 37.425930, 46.755444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.085938, 37.310032, 46.921516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198568, -0.560778, -0.803802,
		0.465724, -0.775612, 0.426060,
		-0.862364, -0.289748, 0.415180,
		40.827229, 37.223106, 47.046070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.424335, 36.666904, 46.730114>,  <41.430882, 37.425930, 46.755444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.424335, 36.666904, 46.730114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.053486, 36.816032, 46.745319>,  <40.830975, 36.905510, 46.754440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.053486, 36.816032, 46.745319>,  <41.424335, 36.666904, 46.730114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.053486, 36.816032, 46.745319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171914, -0.332992, -0.927126,
		-0.332992, -0.866096, 0.372818,
		0.927126, -0.372818, -0.038011,
		40.775349, 36.927879, 46.756721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.962826, 36.153347, 46.613731>,  <41.424335, 36.666904, 46.730114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.962826, 36.153347, 46.613731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.732201, 36.465122, 46.515709>,  <40.593826, 36.652187, 46.456898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.732201, 36.465122, 46.515709>,  <40.962826, 36.153347, 46.613731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.732201, 36.465122, 46.515709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288846, -0.474999, -0.831230,
		-0.764292, -0.408475, 0.499005,
		-0.576564, 0.779438, -0.245052,
		40.559231, 36.698952, 46.442192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.563744, 35.921001, 46.187248>,  <40.962826, 36.153347, 46.613731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.563744, 35.921001, 46.187248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.461224, 36.298702, 46.104588>,  <40.399712, 36.525322, 46.054989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.461224, 36.298702, 46.104588>,  <40.563744, 35.921001, 46.187248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.461224, 36.298702, 46.104588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350385, -0.290013, -0.890574,
		-0.900855, -0.155847, 0.405181,
		-0.256301, 0.944248, -0.206654,
		40.384335, 36.581978, 46.042591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.910294, 35.822495, 45.826530>,  <40.563744, 35.921001, 46.187248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.910294, 35.822495, 45.826530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.024353, 36.194290, 45.732952>,  <40.092789, 36.417370, 45.676804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.024353, 36.194290, 45.732952>,  <39.910294, 35.822495, 45.826530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.024353, 36.194290, 45.732952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357541, -0.123311, -0.925721,
		-0.889299, 0.347617, 0.297169,
		0.285152, 0.929493, -0.233947,
		40.109898, 36.473137, 45.662769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.330048, 36.042034, 45.480080>,  <39.910294, 35.822495, 45.826530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.330048, 36.042034, 45.480080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.649239, 36.258781, 45.374550>,  <39.840755, 36.388832, 45.311234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.649239, 36.258781, 45.374550>,  <39.330048, 36.042034, 45.480080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.649239, 36.258781, 45.374550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285321, -0.045926, -0.957331,
		-0.530865, 0.839207, 0.117959,
		0.797981, 0.541870, -0.263824,
		39.888634, 36.421341, 45.295403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.143360, 36.491272, 44.932114>,  <39.330048, 36.042034, 45.480080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.143360, 36.491272, 44.932114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.541374, 36.526077, 44.912781>,  <39.780182, 36.546963, 44.901180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.541374, 36.526077, 44.912781>,  <39.143360, 36.491272, 44.932114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.541374, 36.526077, 44.912781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056532, 0.094369, -0.993931,
		-0.081926, 0.991727, 0.098820,
		0.995034, 0.087015, -0.048333,
		39.839886, 36.552181, 44.898281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.305576, 37.028774, 44.551243>,  <39.143360, 36.491272, 44.932114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.305576, 37.028774, 44.551243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.632889, 36.799347, 44.536087>,  <39.829277, 36.661690, 44.526993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.632889, 36.799347, 44.536087>,  <39.305576, 37.028774, 44.551243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.632889, 36.799347, 44.536087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024334, 0.031295, -0.999214,
		0.574301, 0.818561, 0.011651,
		0.818282, -0.573566, -0.037891,
		39.878372, 36.627277, 44.524719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.819160, 37.305382, 44.107376>,  <39.305576, 37.028774, 44.551243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.819160, 37.305382, 44.107376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.894581, 36.913521, 44.134888>,  <39.939835, 36.678406, 44.151394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.894581, 36.913521, 44.134888>,  <39.819160, 37.305382, 44.107376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.894581, 36.913521, 44.134888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001775, -0.069693, -0.997567,
		0.982061, 0.188219, -0.011402,
		0.188555, -0.979651, 0.068776,
		39.951149, 36.619625, 44.155521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.343666, 37.126965, 43.617149>,  <39.819160, 37.305382, 44.107376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.343666, 37.126965, 43.617149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.174355, 36.767403, 43.662407>,  <40.072769, 36.551666, 43.689560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.174355, 36.767403, 43.662407>,  <40.343666, 37.126965, 43.617149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.174355, 36.767403, 43.662407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098744, -0.078364, -0.992023,
		0.900603, -0.431072, -0.055592,
		-0.423277, -0.898908, 0.113141,
		40.047371, 36.497730, 43.696350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.662483, 36.753891, 43.118633>,  <40.343666, 37.126965, 43.617149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.662483, 36.753891, 43.118633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.348278, 36.526203, 43.215752>,  <40.159756, 36.389591, 43.274025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.348278, 36.526203, 43.215752>,  <40.662483, 36.753891, 43.118633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.348278, 36.526203, 43.215752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160209, -0.191917, -0.968246,
		0.597744, -0.799471, 0.059559,
		-0.785516, -0.569222, 0.242800,
		40.112625, 36.355438, 43.288593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.724216, 36.147373, 42.656124>,  <40.662483, 36.753891, 43.118633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.724216, 36.147373, 42.656124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.351437, 36.119587, 42.798470>,  <40.127769, 36.102917, 42.883877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.351437, 36.119587, 42.798470>,  <40.724216, 36.147373, 42.656124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.351437, 36.119587, 42.798470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332121, -0.230189, -0.914718,
		0.145456, -0.970664, 0.191454,
		-0.931954, -0.069465, 0.355860,
		40.071850, 36.098747, 42.905228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.454597, 35.496620, 42.463196>,  <40.724216, 36.147373, 42.656124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.454597, 35.496620, 42.463196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.150841, 35.750446, 42.520668>,  <39.968586, 35.902744, 42.555153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.150841, 35.750446, 42.520668>,  <40.454597, 35.496620, 42.463196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.150841, 35.750446, 42.520668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297918, -0.142814, -0.943848,
		-0.578419, -0.759556, 0.297502,
		-0.759392, 0.634570, 0.143679,
		39.923023, 35.940819, 42.563770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.891972, 35.095306, 42.335705>,  <40.454597, 35.496620, 42.463196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.891972, 35.095306, 42.335705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.776730, 35.476421, 42.297352>,  <39.707584, 35.705090, 42.274342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.776730, 35.476421, 42.297352>,  <39.891972, 35.095306, 42.335705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.776730, 35.476421, 42.297352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338307, -0.194941, -0.920623,
		-0.895847, -0.232802, 0.378498,
		-0.288107, 0.952786, -0.095879,
		39.690296, 35.762257, 42.268589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.290031, 35.017582, 41.984539>,  <39.891972, 35.095306, 42.335705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.290031, 35.017582, 41.984539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.384247, 35.401814, 41.925472>,  <39.440777, 35.632355, 41.890030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.384247, 35.401814, 41.925472>,  <39.290031, 35.017582, 41.984539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.384247, 35.401814, 41.925472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136931, -0.117628, -0.983572,
		-0.962170, 0.251890, 0.103827,
		0.235539, 0.960581, -0.147669,
		39.454910, 35.689987, 41.881172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.670586, 35.298737, 41.612743>,  <39.290031, 35.017582, 41.984539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.670586, 35.298737, 41.612743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.965950, 35.558895, 41.541500>,  <39.143169, 35.714993, 41.498756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.965950, 35.558895, 41.541500>,  <38.670586, 35.298737, 41.612743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.965950, 35.558895, 41.541500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156615, -0.091489, -0.983413,
		-0.655907, 0.754061, 0.034306,
		0.738415, 0.650401, -0.178106,
		39.187473, 35.754017, 41.488068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.458187, 35.695564, 41.058540>,  <38.670586, 35.298737, 41.612743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.458187, 35.695564, 41.058540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.853531, 35.755466, 41.047821>,  <39.090736, 35.791409, 41.041389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.853531, 35.755466, 41.047821>,  <38.458187, 35.695564, 41.058540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.853531, 35.755466, 41.047821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014125, -0.085043, -0.996277,
		-0.151474, 0.985059, -0.081938,
		0.988360, 0.149753, -0.026796,
		39.150040, 35.800392, 41.039783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.539478, 36.208271, 40.624073>,  <38.458187, 35.695564, 41.058540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.539478, 36.208271, 40.624073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.879181, 35.997375, 40.635330>,  <39.083000, 35.870838, 40.642082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.879181, 35.997375, 40.635330>,  <38.539478, 36.208271, 40.624073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.879181, 35.997375, 40.635330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021031, -0.019472, -0.999589,
		0.527566, 0.849496, -0.005449,
		0.849253, -0.527235, 0.028139,
		39.133957, 35.839207, 40.643772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.922207, 36.410221, 39.977673>,  <38.539478, 36.208271, 40.624073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.922207, 36.410221, 39.977673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.108433, 36.075016, 40.091507>,  <39.220169, 35.873894, 40.159805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.108433, 36.075016, 40.091507>,  <38.922207, 36.410221, 39.977673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.108433, 36.075016, 40.091507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064387, -0.288633, -0.955272,
		0.882669, 0.463064, -0.080420,
		0.465564, -0.838011, 0.284582,
		39.248100, 35.823612, 40.176880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.454769, 36.275497, 39.373493>,  <38.922207, 36.410221, 39.977673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.454769, 36.275497, 39.373493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.421585, 35.933746, 39.578686>,  <39.401676, 35.728695, 39.701801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.421585, 35.933746, 39.578686>,  <39.454769, 36.275497, 39.373493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.421585, 35.933746, 39.578686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111392, -0.519482, -0.847190,
		0.990308, -0.013138, 0.138265,
		-0.082956, -0.854380, 0.512984,
		39.396698, 35.677433, 39.732582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.026230, 35.786789, 39.243465>,  <39.454769, 36.275497, 39.373493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.026230, 35.786789, 39.243465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.738880, 35.546101, 39.383110>,  <39.566471, 35.401688, 39.466896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.738880, 35.546101, 39.383110>,  <40.026230, 35.786789, 39.243465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.738880, 35.546101, 39.383110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170038, -0.638494, -0.750609,
		0.674559, -0.479854, 0.560990,
		-0.718371, -0.601720, 0.349108,
		39.523369, 35.365585, 39.487843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.364330, 35.180836, 39.292221>,  <40.026230, 35.786789, 39.243465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.364330, 35.180836, 39.292221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.969009, 35.127182, 39.263210>,  <39.731815, 35.094990, 39.245804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.969009, 35.127182, 39.263210>,  <40.364330, 35.180836, 39.292221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.969009, 35.127182, 39.263210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135133, -0.550047, -0.824128,
		0.070646, -0.824292, 0.561740,
		-0.988306, -0.134131, -0.072531,
		39.672516, 35.086945, 39.241451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.190632, 34.482399, 39.101158>,  <40.364330, 35.180836, 39.292221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.190632, 34.482399, 39.101158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.875526, 34.702484, 38.990387>,  <39.686462, 34.834538, 38.923923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.875526, 34.702484, 38.990387>,  <40.190632, 34.482399, 39.101158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.875526, 34.702484, 38.990387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109551, -0.317255, -0.941991,
		-0.606155, -0.772406, 0.189646,
		-0.787766, 0.550217, -0.276923,
		39.639198, 34.867550, 38.907310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.894970, 34.181435, 38.457428>,  <40.190632, 34.482399, 39.101158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.894970, 34.181435, 38.457428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.660721, 34.505589, 38.450310>,  <39.520172, 34.700081, 38.446037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.660721, 34.505589, 38.450310>,  <39.894970, 34.181435, 38.457428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.660721, 34.505589, 38.450310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332600, -0.260257, -0.906445,
		-0.739202, -0.524920, 0.421948,
		-0.585626, 0.810386, -0.017795,
		39.485031, 34.748703, 38.444973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.210125, 34.005489, 38.209629>,  <39.894970, 34.181435, 38.457428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.210125, 34.005489, 38.209629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.285145, 34.394791, 38.156559>,  <39.330158, 34.628372, 38.124718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.285145, 34.394791, 38.156559>,  <39.210125, 34.005489, 38.209629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.285145, 34.394791, 38.156559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046763, -0.126070, -0.990918,
		-0.981141, 0.192049, 0.021868,
		0.187548, 0.973254, -0.132674,
		39.341408, 34.686768, 38.116756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.774548, 34.244804, 37.715847>,  <39.210125, 34.005489, 38.209629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.774548, 34.244804, 37.715847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.098419, 34.477085, 37.681873>,  <39.292740, 34.616451, 37.661488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.098419, 34.477085, 37.681873>,  <38.774548, 34.244804, 37.715847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.098419, 34.477085, 37.681873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041076, -0.088301, -0.995247,
		-0.585437, 0.809317, -0.047642,
		0.809677, 0.580697, -0.084938,
		39.341324, 34.651295, 37.656391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.578987, 34.536919, 37.196545>,  <38.774548, 34.244804, 37.715847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.578987, 34.536919, 37.196545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.952019, 34.670727, 37.250786>,  <39.175838, 34.751011, 37.283333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.952019, 34.670727, 37.250786>,  <38.578987, 34.536919, 37.196545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.952019, 34.670727, 37.250786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095219, 0.134383, -0.986344,
		-0.348177, 0.932757, 0.093470,
		0.932580, 0.334522, 0.135605,
		39.231792, 34.771084, 37.291466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.664883, 35.083199, 36.732315>,  <38.578987, 34.536919, 37.196545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.664883, 35.083199, 36.732315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.042637, 34.991692, 36.826797>,  <39.269291, 34.936787, 36.883488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.042637, 34.991692, 36.826797>,  <38.664883, 35.083199, 36.732315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.042637, 34.991692, 36.826797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301774, 0.317617, -0.898917,
		0.130622, 0.920208, 0.368991,
		0.944389, -0.228770, 0.236208,
		39.325954, 34.923061, 36.897659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.128979, 35.776436, 36.747051>,  <38.664883, 35.083199, 36.732315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.128979, 35.776436, 36.747051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.333847, 35.441032, 36.672668>,  <39.456768, 35.239788, 36.628040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.333847, 35.441032, 36.672668>,  <39.128979, 35.776436, 36.747051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.333847, 35.441032, 36.672668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541701, 0.483380, -0.687680,
		0.666515, 0.251476, 0.701795,
		0.512169, -0.838513, -0.185955,
		39.487499, 35.189480, 36.616882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.765274, 35.948738, 36.458122>,  <39.128979, 35.776436, 36.747051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.765274, 35.948738, 36.458122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.799583, 35.562897, 36.358383>,  <39.820171, 35.331390, 36.298538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.799583, 35.562897, 36.358383>,  <39.765274, 35.948738, 36.458122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.799583, 35.562897, 36.358383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533270, 0.255853, -0.806327,
		0.841586, -0.063806, 0.536342,
		0.085776, -0.964608, -0.249348,
		39.825317, 35.273514, 36.283577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.471420, 35.890697, 36.350128>,  <39.765274, 35.948738, 36.458122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.471420, 35.890697, 36.350128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.304821, 35.580132, 36.160942>,  <40.204861, 35.393791, 36.047428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.304821, 35.580132, 36.160942>,  <40.471420, 35.890697, 36.350128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.304821, 35.580132, 36.160942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543218, 0.204626, -0.814274,
		0.729000, -0.596072, 0.336538,
		-0.416502, -0.776419, -0.472969,
		40.179871, 35.347206, 36.019051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.973171, 35.589527, 35.988201>,  <40.471420, 35.890697, 36.350128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.973171, 35.589527, 35.988201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.658489, 35.465416, 35.774727>,  <40.469681, 35.390949, 35.646641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.658489, 35.465416, 35.774727>,  <40.973171, 35.589527, 35.988201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.658489, 35.465416, 35.774727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477440, 0.242230, -0.844616,
		0.391345, -0.919266, -0.042422,
		-0.786702, -0.310282, -0.533690,
		40.422478, 35.372330, 35.614620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.299084, 35.072021, 35.520515>,  <40.973171, 35.589527, 35.988201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.299084, 35.072021, 35.520515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.956142, 35.229336, 35.387684>,  <40.750378, 35.323727, 35.307983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.956142, 35.229336, 35.387684>,  <41.299084, 35.072021, 35.520515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.956142, 35.229336, 35.387684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473494, 0.349550, -0.808466,
		-0.201882, -0.850376, -0.485906,
		-0.857349, 0.393289, -0.332080,
		40.698936, 35.347321, 35.288059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.941303, 35.008389, 35.152962>,  <41.299084, 35.072021, 35.520515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.941303, 35.008389, 35.152962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.202862, 35.037567, 35.454185>,  <42.359798, 35.055073, 35.634918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.202862, 35.037567, 35.454185>,  <41.941303, 35.008389, 35.152962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.202862, 35.037567, 35.454185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535127, -0.748215, -0.392190,
		0.534840, 0.659433, -0.528293,
		0.653900, 0.072945, 0.753056,
		42.399033, 35.059452, 35.680103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.655315, 35.198425, 35.007343>,  <41.941303, 35.008389, 35.152962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.655315, 35.198425, 35.007343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.611572, 34.932594, 35.303013>,  <42.585327, 34.773098, 35.480415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.611572, 34.932594, 35.303013>,  <42.655315, 35.198425, 35.007343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.611572, 34.932594, 35.303013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427099, -0.702907, -0.568778,
		0.897567, 0.253499, 0.360709,
		-0.109360, -0.664575, 0.739175,
		42.578766, 34.733223, 35.524765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.297310, 34.955139, 35.173290>,  <42.655315, 35.198425, 35.007343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.297310, 34.955139, 35.173290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.009304, 34.683418, 35.230042>,  <42.836502, 34.520386, 35.264091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.009304, 34.683418, 35.230042>,  <43.297310, 34.955139, 35.173290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.009304, 34.683418, 35.230042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325893, -0.511485, -0.795096,
		0.612680, -0.526241, 0.589655,
		-0.720012, -0.679304, 0.141879,
		42.793301, 34.479626, 35.272606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.610683, 34.313221, 35.016838>,  <43.297310, 34.955139, 35.173290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.610683, 34.313221, 35.016838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.213562, 34.291809, 34.973984>,  <42.975288, 34.278961, 34.948273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.213562, 34.291809, 34.973984>,  <43.610683, 34.313221, 35.016838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.213562, 34.291809, 34.973984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118451, -0.570897, -0.812432,
		-0.017670, -0.819274, 0.573129,
		-0.992802, -0.053532, -0.107131,
		42.915722, 34.275749, 34.941845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.478226, 33.666759, 34.799156>,  <43.610683, 34.313221, 35.016838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.478226, 33.666759, 34.799156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.140560, 33.855068, 34.696575>,  <42.937962, 33.968052, 34.635025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.140560, 33.855068, 34.696575>,  <43.478226, 33.666759, 34.799156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.140560, 33.855068, 34.696575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030856, -0.520250, -0.853456,
		-0.535207, -0.712538, 0.453699,
		-0.844157, 0.470775, -0.256455,
		42.887310, 33.996300, 34.619640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.780388, 33.320316, 34.689137>,  <43.478226, 33.666759, 34.799156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.780388, 33.320316, 34.689137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.858589, 33.628174, 34.446014>,  <42.905510, 33.812889, 34.300140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.858589, 33.628174, 34.446014>,  <42.780388, 33.320316, 34.689137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.858589, 33.628174, 34.446014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069295, -0.629059, -0.774263,
		-0.978253, 0.109251, -0.176313,
		0.195500, 0.769642, -0.607808,
		42.917240, 33.859066, 34.263672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.292175, 33.353874, 34.202171>,  <42.780388, 33.320316, 34.689137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.292175, 33.353874, 34.202171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.652496, 33.482937, 34.085934>,  <42.868690, 33.560375, 34.016190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.652496, 33.482937, 34.085934>,  <42.292175, 33.353874, 34.202171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.652496, 33.482937, 34.085934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025706, -0.707680, -0.706065,
		-0.433462, 0.628557, -0.645776,
		0.900805, 0.322652, -0.290595,
		42.922737, 33.579731, 33.998756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.265125, 33.339218, 33.485233>,  <42.292175, 33.353874, 34.202171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.265125, 33.339218, 33.485233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.654999, 33.406086, 33.544624>,  <42.888924, 33.446205, 33.580257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.654999, 33.406086, 33.544624>,  <42.265125, 33.339218, 33.485233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.654999, 33.406086, 33.544624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221199, -0.624136, -0.749350,
		-0.032598, 0.763222, -0.645313,
		0.974684, 0.167170, 0.148479,
		42.947403, 33.456238, 33.589169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.690746, 33.505287, 32.929558>,  <42.265125, 33.339218, 33.485233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.690746, 33.505287, 32.929558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.962334, 33.309971, 33.148857>,  <43.125286, 33.192780, 33.280437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.962334, 33.309971, 33.148857>,  <42.690746, 33.505287, 32.929558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.962334, 33.309971, 33.148857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159580, -0.630748, -0.759402,
		0.716612, 0.603100, -0.350339,
		0.678971, -0.488290, 0.548244,
		43.166023, 33.163483, 33.313332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.139027, 33.250809, 32.417606>,  <42.690746, 33.505287, 32.929558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.139027, 33.250809, 32.417606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.256187, 33.042397, 32.738289>,  <43.326485, 32.917351, 32.930698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.256187, 33.042397, 32.738289>,  <43.139027, 33.250809, 32.417606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.256187, 33.042397, 32.738289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228568, -0.776017, -0.587839,
		0.928420, 0.355425, -0.108207,
		0.292903, -0.521029, 0.801708,
		43.344059, 32.886089, 32.978802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.896202, 33.049152, 32.364811>,  <43.139027, 33.250809, 32.417606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.896202, 33.049152, 32.364811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.737106, 32.778084, 32.612217>,  <43.641647, 32.615444, 32.760662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.737106, 32.778084, 32.612217>,  <43.896202, 33.049152, 32.364811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.737106, 32.778084, 32.612217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192598, -0.720784, -0.665865,
		0.897055, -0.145717, 0.417203,
		-0.397741, -0.677671, 0.618518,
		43.617783, 32.574783, 32.797771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.345238, 32.511497, 32.334915>,  <43.896202, 33.049152, 32.364811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.345238, 32.511497, 32.334915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.015652, 32.347164, 32.491020>,  <43.817902, 32.248566, 32.584682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.015652, 32.347164, 32.491020>,  <44.345238, 32.511497, 32.334915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.015652, 32.347164, 32.491020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166679, -0.833974, -0.526029,
		0.541577, -0.368379, 0.755640,
		-0.823962, -0.410834, 0.390260,
		43.768463, 32.223915, 32.608097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.445671, 31.739756, 32.556549>,  <44.345238, 32.511497, 32.334915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.445671, 31.739756, 32.556549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.054668, 31.782074, 32.483566>,  <43.820068, 31.807465, 32.439777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.054668, 31.782074, 32.483566>,  <44.445671, 31.739756, 32.556549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.054668, 31.782074, 32.483566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069681, -0.654525, -0.752823,
		-0.199068, -0.748602, 0.632429,
		-0.977505, 0.105795, -0.182458,
		43.761417, 31.813812, 32.428829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.213432, 31.111963, 32.553417>,  <44.445671, 31.739756, 32.556549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.213432, 31.111963, 32.553417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.921032, 31.291870, 32.348148>,  <43.745590, 31.399815, 32.224987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.921032, 31.291870, 32.348148>,  <44.213432, 31.111963, 32.553417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.921032, 31.291870, 32.348148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119274, -0.824678, -0.552884,
		-0.671870, -0.342951, 0.656487,
		-0.731002, 0.449768, -0.513172,
		43.701733, 31.426800, 32.194199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.893257, 30.602928, 32.414333>,  <44.213432, 31.111963, 32.553417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.893257, 30.602928, 32.414333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.745770, 30.885059, 32.172157>,  <43.657276, 31.054338, 32.026852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.745770, 30.885059, 32.172157>,  <43.893257, 30.602928, 32.414333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.745770, 30.885059, 32.172157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040184, -0.662818, -0.747702,
		-0.928671, -0.251365, 0.272739,
		-0.368722, 0.705328, -0.605439,
		43.635151, 31.096659, 31.990526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.311916, 30.262424, 32.088104>,  <43.893257, 30.602928, 32.414333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.311916, 30.262424, 32.088104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.431438, 30.572201, 31.865049>,  <43.503151, 30.758066, 31.731216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.431438, 30.572201, 31.865049>,  <43.311916, 30.262424, 32.088104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.431438, 30.572201, 31.865049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041253, -0.594268, -0.803209,
		-0.953423, 0.216996, -0.209517,
		0.298803, 0.774441, -0.557637,
		43.521080, 30.804533, 31.697758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.980583, 30.135746, 31.455715>,  <43.311916, 30.262424, 32.088104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.980583, 30.135746, 31.455715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.227638, 30.421299, 31.323713>,  <43.375870, 30.592630, 31.244513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.227638, 30.421299, 31.323713>,  <42.980583, 30.135746, 31.455715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.227638, 30.421299, 31.323713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021482, -0.404136, -0.914446,
		-0.786173, 0.571882, -0.234273,
		0.617633, 0.713880, -0.330006,
		43.412930, 30.635464, 31.224712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.747467, 30.286837, 30.670185>,  <42.980583, 30.135746, 31.455715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.747467, 30.286837, 30.670185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.125275, 30.388645, 30.753227>,  <43.351959, 30.449730, 30.803053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.125275, 30.388645, 30.753227>,  <42.747467, 30.286837, 30.670185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.125275, 30.388645, 30.753227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306247, -0.453984, -0.836727,
		-0.118716, 0.853884, -0.506744,
		0.944521, 0.254522, 0.207604,
		43.408630, 30.465002, 30.815508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.953323, 30.555832, 30.115839>,  <42.747467, 30.286837, 30.670185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.953323, 30.555832, 30.115839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.276108, 30.432257, 30.317186>,  <43.469776, 30.358112, 30.437994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.276108, 30.432257, 30.317186>,  <42.953323, 30.555832, 30.115839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.276108, 30.432257, 30.317186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327208, -0.475676, -0.816497,
		0.491687, 0.823583, -0.282762,
		0.806957, -0.308939, 0.503367,
		43.518196, 30.339575, 30.468197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.538704, 30.788622, 29.656984>,  <42.953323, 30.555832, 30.115839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.538704, 30.788622, 29.656984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.715294, 30.529007, 29.904808>,  <43.821247, 30.373238, 30.053503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.715294, 30.529007, 29.904808>,  <43.538704, 30.788622, 29.656984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.715294, 30.529007, 29.904808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570559, -0.329855, -0.752102,
		0.692507, 0.685527, 0.224692,
		0.441471, -0.649037, 0.619560,
		43.847736, 30.334295, 30.090675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.260036, 30.770782, 29.489491>,  <43.538704, 30.788622, 29.656984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.260036, 30.770782, 29.489491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.175240, 30.420927, 29.663874>,  <44.124359, 30.211014, 29.768503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.175240, 30.420927, 29.663874>,  <44.260036, 30.770782, 29.489491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.175240, 30.420927, 29.663874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444722, -0.483574, -0.753909,
		0.870218, 0.034055, 0.491488,
		-0.211997, -0.874641, 0.435960,
		44.111641, 30.158535, 29.794662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.927597, 30.432253, 29.480364>,  <44.260036, 30.770782, 29.489491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.927597, 30.432253, 29.480364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.686447, 30.131044, 29.585812>,  <44.541756, 29.950319, 29.649080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.686447, 30.131044, 29.585812>,  <44.927597, 30.432253, 29.480364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.686447, 30.131044, 29.585812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444501, -0.591408, -0.672797,
		0.662538, -0.288435, 0.691266,
		-0.602879, -0.753022, 0.263620,
		44.505585, 29.905138, 29.664898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.364315, 29.843151, 29.531414>,  <44.927597, 30.432253, 29.480364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.364315, 29.843151, 29.531414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.992332, 29.706411, 29.477278>,  <44.769142, 29.624367, 29.444796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.992332, 29.706411, 29.477278>,  <45.364315, 29.843151, 29.531414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.992332, 29.706411, 29.477278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350947, -0.715595, -0.603954,
		0.109613, -0.609149, 0.785445,
		-0.929958, -0.341850, -0.135340,
		44.713345, 29.603857, 29.436676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.482021, 29.222609, 29.447750>,  <45.364315, 29.843151, 29.531414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.482021, 29.222609, 29.447750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.110985, 29.249168, 29.300688>,  <44.888363, 29.265104, 29.212450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.110985, 29.249168, 29.300688>,  <45.482021, 29.222609, 29.447750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.110985, 29.249168, 29.300688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220251, -0.697698, -0.681694,
		-0.301778, -0.713308, 0.632551,
		-0.927588, 0.066400, -0.367657,
		44.832710, 29.269089, 29.190392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.332302, 28.578428, 29.388395>,  <45.482021, 29.222609, 29.447750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.332302, 28.578428, 29.388395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.101124, 28.760853, 29.117697>,  <44.962418, 28.870308, 28.955276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.101124, 28.760853, 29.117697>,  <45.332302, 28.578428, 29.388395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.101124, 28.760853, 29.117697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330062, -0.627788, -0.704941,
		-0.746349, -0.630787, 0.212300,
		-0.577947, 0.456060, -0.676748,
		44.927738, 28.897671, 28.914673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.107269, 28.093885, 28.926523>,  <45.332302, 28.578428, 29.388395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.107269, 28.093885, 28.926523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.018009, 28.417898, 28.709616>,  <44.964455, 28.612307, 28.579472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.018009, 28.417898, 28.709616>,  <45.107269, 28.093885, 28.926523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.018009, 28.417898, 28.709616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297026, -0.473337, -0.829294,
		-0.928429, -0.346122, -0.134977,
		-0.223147, 0.810032, -0.542267,
		44.951065, 28.660908, 28.546936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.716228, 27.883032, 28.346657>,  <45.107269, 28.093885, 28.926523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.716228, 27.883032, 28.346657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.904369, 28.224094, 28.255665>,  <45.017254, 28.428732, 28.201069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.904369, 28.224094, 28.255665>,  <44.716228, 27.883032, 28.346657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.904369, 28.224094, 28.255665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236880, -0.370302, -0.898201,
		-0.850093, 0.368584, -0.376149,
		0.470352, 0.852656, -0.227481,
		45.045475, 28.479891, 28.187420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.549057, 27.996288, 27.646160>,  <44.716228, 27.883032, 28.346657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.549057, 27.996288, 27.646160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.883400, 28.211454, 27.689976>,  <45.084003, 28.340553, 27.716265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.883400, 28.211454, 27.689976>,  <44.549057, 27.996288, 27.646160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.883400, 28.211454, 27.689976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273821, -0.235595, -0.932479,
		-0.475785, 0.809410, -0.344215,
		0.835853, 0.537913, 0.109541,
		45.134155, 28.372828, 27.722837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.603111, 28.218664, 27.017561>,  <44.549057, 27.996288, 27.646160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.603111, 28.218664, 27.017561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.950047, 28.349167, 27.167912>,  <45.158207, 28.427469, 27.258121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.950047, 28.349167, 27.167912>,  <44.603111, 28.218664, 27.017561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.950047, 28.349167, 27.167912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438605, -0.144038, -0.887062,
		-0.235271, 0.934242, -0.268028,
		0.867337, 0.326258, 0.375875,
		45.210247, 28.447044, 27.280674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.041573, 28.692808, 26.468782>,  <44.603111, 28.218664, 27.017561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.041573, 28.692808, 26.468782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.300350, 28.529896, 26.726645>,  <45.455616, 28.432148, 26.881361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.300350, 28.529896, 26.726645>,  <45.041573, 28.692808, 26.468782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.300350, 28.529896, 26.726645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597709, -0.254110, -0.760376,
		0.473501, 0.877240, 0.079041,
		0.646947, -0.407282, 0.644655,
		45.494434, 28.407711, 26.920042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.642178, 28.576109, 26.131346>,  <45.041573, 28.692808, 26.468782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.642178, 28.576109, 26.131346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.712666, 28.345747, 26.450666>,  <45.754959, 28.207531, 26.642258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.712666, 28.345747, 26.450666>,  <45.642178, 28.576109, 26.131346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.712666, 28.345747, 26.450666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.717275, -0.480287, -0.504818,
		0.674139, 0.661559, 0.328445,
		0.176219, -0.575903, 0.798300,
		45.765530, 28.172976, 26.690157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.420654, 28.603113, 26.370100>,  <45.642178, 28.576109, 26.131346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.420654, 28.603113, 26.370100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.233387, 28.256596, 26.439787>,  <46.121025, 28.048685, 26.481598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.233387, 28.256596, 26.439787>,  <46.420654, 28.603113, 26.370100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.233387, 28.256596, 26.439787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610507, -0.459647, -0.644985,
		0.638824, -0.195605, 0.744072,
		-0.468173, -0.866293, 0.174215,
		46.092934, 27.996708, 26.492052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.679443, 28.927765, 25.705070>,  <46.420654, 28.603113, 26.370100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.679443, 28.927765, 25.705070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.944759, 29.038084, 25.426796>,  <47.103951, 29.104275, 25.259830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.944759, 29.038084, 25.426796>,  <46.679443, 28.927765, 25.705070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.944759, 29.038084, 25.426796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221245, 0.815791, 0.534355,
		0.714909, -0.508350, 0.480089,
		0.663292, 0.275798, -0.695686,
		47.143745, 29.120823, 25.218090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.157528, 29.102726, 26.079277>,  <46.679443, 28.927765, 25.705070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.157528, 29.102726, 26.079277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.198833, 29.285534, 25.725901>,  <47.223618, 29.395218, 25.513874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.198833, 29.285534, 25.725901>,  <47.157528, 29.102726, 26.079277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.198833, 29.285534, 25.725901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326117, 0.823538, 0.464147,
		0.939673, -0.336034, -0.064002,
		0.103262, 0.457018, -0.883443,
		47.229813, 29.422640, 25.460867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.880898, 29.415474, 25.928205>,  <47.157528, 29.102726, 26.079277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.880898, 29.415474, 25.928205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.587597, 29.623930, 25.753502>,  <47.411617, 29.749004, 25.648680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.587597, 29.623930, 25.753502>,  <47.880898, 29.415474, 25.928205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.587597, 29.623930, 25.753502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313421, 0.829064, 0.463056,
		0.603417, 0.202646, -0.771247,
		-0.733249, 0.521141, -0.436758,
		47.367622, 29.780272, 25.622475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.321896, 30.005913, 25.764143>,  <47.880898, 29.415474, 25.928205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.321896, 30.005913, 25.764143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.931423, 30.067532, 25.825247>,  <47.697140, 30.104504, 25.861910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.931423, 30.067532, 25.825247>,  <48.321896, 30.005913, 25.764143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.931423, 30.067532, 25.825247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213295, 0.810153, 0.546037,
		-0.039643, 0.565615, -0.823716,
		-0.976183, 0.154048, 0.152759,
		47.638569, 30.113747, 25.871075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.200066, 30.729948, 25.703377>,  <48.321896, 30.005913, 25.764143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.200066, 30.729948, 25.703377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.873592, 30.588507, 25.886156>,  <47.677708, 30.503641, 25.995825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.873592, 30.588507, 25.886156>,  <48.200066, 30.729948, 25.703377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.873592, 30.588507, 25.886156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072569, 0.847335, 0.526076,
		-0.573212, 0.396217, -0.717245,
		-0.816187, -0.353603, 0.456949,
		47.628735, 30.482426, 26.023241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.935452, 31.307859, 26.004683>,  <48.200066, 30.729948, 25.703377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.935452, 31.307859, 26.004683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.720512, 31.026814, 26.191271>,  <47.591549, 30.858187, 26.303225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.720512, 31.026814, 26.191271>,  <47.935452, 31.307859, 26.004683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.720512, 31.026814, 26.191271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281842, 0.670914, 0.685886,
		-0.794875, 0.237086, -0.558537,
		-0.537345, -0.702613, 0.466472,
		47.559307, 30.816031, 26.331213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.442032, 31.708841, 26.223833>,  <47.935452, 31.307859, 26.004683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.442032, 31.708841, 26.223833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.404034, 31.385918, 26.456806>,  <47.381237, 31.192163, 26.596590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.404034, 31.385918, 26.456806>,  <47.442032, 31.708841, 26.223833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.404034, 31.385918, 26.456806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276364, 0.583467, 0.763668,
		-0.956347, -0.088421, -0.278536,
		-0.094992, -0.807309, 0.582433,
		47.375538, 31.143724, 26.631536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.932865, 31.847059, 26.651981>,  <47.442032, 31.708841, 26.223833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.932865, 31.847059, 26.651981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.082230, 31.526907, 26.839579>,  <47.171848, 31.334816, 26.952137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.082230, 31.526907, 26.839579>,  <46.932865, 31.847059, 26.651981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.082230, 31.526907, 26.839579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445183, 0.288931, 0.847544,
		-0.813865, -0.525269, -0.248427,
		0.373411, -0.800382, 0.468991,
		47.194252, 31.286793, 26.980276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.394066, 31.604664, 27.058483>,  <46.932865, 31.847059, 26.651981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.394066, 31.604664, 27.058483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.706715, 31.447495, 27.252258>,  <46.894302, 31.353193, 27.368525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.706715, 31.447495, 27.252258>,  <46.394066, 31.604664, 27.058483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.706715, 31.447495, 27.252258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423583, 0.235746, 0.874643,
		-0.457874, -0.888838, 0.017826,
		0.781619, -0.392926, 0.484439,
		46.941200, 31.329617, 27.397591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.159634, 31.165195, 27.573360>,  <46.394066, 31.604664, 27.058483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.159634, 31.165195, 27.573360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.514423, 31.312943, 27.684238>,  <46.727299, 31.401590, 27.750765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.514423, 31.312943, 27.684238>,  <46.159634, 31.165195, 27.573360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.514423, 31.312943, 27.684238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392666, 0.287278, 0.873662,
		0.243065, -0.883766, 0.399845,
		0.886980, 0.369362, 0.277198,
		46.780518, 31.423754, 27.767397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.219982, 30.980463, 28.298471>,  <46.159634, 31.165195, 27.573360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.219982, 30.980463, 28.298471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.493729, 31.269804, 28.261805>,  <46.657978, 31.443409, 28.239803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.493729, 31.269804, 28.261805>,  <46.219982, 30.980463, 28.298471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.493729, 31.269804, 28.261805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231131, 0.334457, 0.913629,
		0.691533, -0.604071, 0.396080,
		0.684368, 0.723351, -0.091669,
		46.699039, 31.486809, 28.234304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.267658, 31.134327, 28.933922>,  <46.219982, 30.980463, 28.298471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.267658, 31.134327, 28.933922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.469906, 31.449060, 28.792364>,  <46.591255, 31.637899, 28.707430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.469906, 31.449060, 28.792364>,  <46.267658, 31.134327, 28.933922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.469906, 31.449060, 28.792364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232356, 0.519225, 0.822445,
		0.830877, -0.333617, 0.445357,
		0.505622, 0.786832, -0.353894,
		46.621593, 31.685110, 28.686195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.778099, 31.384710, 29.392853>,  <46.267658, 31.134327, 28.933922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.778099, 31.384710, 29.392853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.708988, 31.707699, 29.167236>,  <46.667522, 31.901491, 29.031866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.708988, 31.707699, 29.167236>,  <46.778099, 31.384710, 29.392853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.708988, 31.707699, 29.167236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143615, 0.545881, 0.825463,
		0.974435, 0.223624, 0.021651,
		-0.172775, 0.807469, -0.564041,
		46.657154, 31.949940, 28.998024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.042934, 31.940193, 29.708061>,  <46.778099, 31.384710, 29.392853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.042934, 31.940193, 29.708061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.796951, 32.132690, 29.458185>,  <46.649361, 32.248188, 29.308260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.796951, 32.132690, 29.458185>,  <47.042934, 31.940193, 29.708061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.796951, 32.132690, 29.458185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318900, 0.572748, 0.755157,
		0.721203, 0.663601, -0.198746,
		-0.614955, 0.481241, -0.624690,
		46.612465, 32.277061, 29.270779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.153069, 32.656471, 29.918932>,  <47.042934, 31.940193, 29.708061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.153069, 32.656471, 29.918932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.795776, 32.655548, 29.739098>,  <46.581402, 32.654995, 29.631197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.795776, 32.655548, 29.739098>,  <47.153069, 32.656471, 29.918932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.795776, 32.655548, 29.739098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337751, 0.663461, 0.667640,
		0.296741, 0.748207, -0.593406,
		-0.893235, -0.002308, -0.449584,
		46.527805, 32.654858, 29.604223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.971664, 33.344860, 29.835480>,  <47.153069, 32.656471, 29.918932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.971664, 33.344860, 29.835480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.630844, 33.135887, 29.822380>,  <46.426353, 33.010502, 29.814520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.630844, 33.135887, 29.822380>,  <46.971664, 33.344860, 29.835480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.630844, 33.135887, 29.822380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415932, 0.637715, 0.648321,
		-0.317821, 0.566024, -0.760662,
		-0.852051, -0.522434, -0.032748,
		46.375229, 32.979156, 29.812555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.564709, 33.844887, 30.020447>,  <46.971664, 33.344860, 29.835480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.564709, 33.844887, 30.020447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.324799, 33.526123, 30.049299>,  <46.180851, 33.334866, 30.066610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.324799, 33.526123, 30.049299>,  <46.564709, 33.844887, 30.020447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.324799, 33.526123, 30.049299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520445, 0.456991, 0.721315,
		-0.607787, 0.395087, -0.688840,
		-0.599776, -0.796910, 0.072133,
		46.144867, 33.287048, 30.070938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.751343, 34.085720, 29.977247>,  <46.564709, 33.844887, 30.020447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.751343, 34.085720, 29.977247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.761215, 33.718479, 30.135475>,  <45.767139, 33.498135, 30.230412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.761215, 33.718479, 30.135475>,  <45.751343, 34.085720, 29.977247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.761215, 33.718479, 30.135475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.575149, 0.310608, 0.756786,
		-0.817676, -0.246188, -0.520382,
		0.024677, -0.918103, 0.395572,
		45.768620, 33.443047, 30.254147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.040535, 33.766026, 30.156708>,  <45.751343, 34.085720, 29.977247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.040535, 33.766026, 30.156708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.302376, 33.586079, 30.399727>,  <45.459480, 33.478111, 30.545538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.302376, 33.586079, 30.399727>,  <45.040535, 33.766026, 30.156708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.302376, 33.586079, 30.399727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513555, 0.325128, 0.794074,
		-0.554761, -0.831810, -0.018204,
		0.654600, -0.449870, 0.607548,
		45.498756, 33.451118, 30.581991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.658997, 33.334660, 30.672144>,  <45.040535, 33.766026, 30.156708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.658997, 33.334660, 30.672144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.022873, 33.388077, 30.829433>,  <45.241199, 33.420128, 30.923807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.022873, 33.388077, 30.829433>,  <44.658997, 33.334660, 30.672144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.022873, 33.388077, 30.829433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413846, 0.212798, 0.885126,
		0.034525, -0.967927, 0.248847,
		0.909692, 0.133543, 0.393225,
		45.295780, 33.428139, 30.947401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.702930, 32.925098, 31.356586>,  <44.658997, 33.334660, 30.672144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.702930, 32.925098, 31.356586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.997627, 33.194145, 31.384315>,  <45.174446, 33.355572, 31.400953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.997627, 33.194145, 31.384315>,  <44.702930, 32.925098, 31.356586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.997627, 33.194145, 31.384315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224681, 0.146816, 0.963309,
		0.637756, -0.725284, 0.259288,
		0.736740, 0.672613, 0.069325,
		45.218651, 33.395927, 31.405113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.079685, 32.698448, 31.928276>,  <44.702930, 32.925098, 31.356586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.079685, 32.698448, 31.928276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.184937, 33.079952, 31.870169>,  <45.248089, 33.308853, 31.835304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.184937, 33.079952, 31.870169>,  <45.079685, 32.698448, 31.928276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.184937, 33.079952, 31.870169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024095, 0.144032, 0.989280,
		0.964460, -0.263808, 0.014918,
		0.263129, 0.953761, -0.145269,
		45.263874, 33.366081, 31.826588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.649639, 32.876125, 32.448921>,  <45.079685, 32.698448, 31.928276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.649639, 32.876125, 32.448921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.535194, 33.236507, 32.318432>,  <45.466526, 33.452736, 32.240139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.535194, 33.236507, 32.318432>,  <45.649639, 32.876125, 32.448921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.535194, 33.236507, 32.318432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082376, 0.362327, 0.928404,
		0.954647, 0.238758, -0.177885,
		-0.286117, 0.900951, -0.326227,
		45.449360, 33.506794, 32.220566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.190189, 33.329029, 32.651100>,  <45.649639, 32.876125, 32.448921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.190189, 33.329029, 32.651100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.876839, 33.571735, 32.597202>,  <45.688828, 33.717358, 32.564865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.876839, 33.571735, 32.597202>,  <46.190189, 33.329029, 32.651100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.876839, 33.571735, 32.597202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207738, 0.459921, 0.863318,
		0.585804, 0.648311, -0.486339,
		-0.783377, 0.606766, -0.134745,
		45.641827, 33.753765, 32.556778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.361275, 33.979431, 32.958885>,  <46.190189, 33.329029, 32.651100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.361275, 33.979431, 32.958885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.966679, 34.031773, 32.919460>,  <45.729919, 34.063179, 32.895805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.966679, 34.031773, 32.919460>,  <46.361275, 33.979431, 32.958885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.966679, 34.031773, 32.919460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041030, 0.385122, 0.921953,
		0.158602, 0.913541, -0.374550,
		-0.986490, 0.130856, -0.098563,
		45.670731, 34.071030, 32.889893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.180794, 34.747559, 33.092728>,  <46.361275, 33.979431, 32.958885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.180794, 34.747559, 33.092728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.864315, 34.521420, 33.186012>,  <45.674427, 34.385738, 33.241982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.864315, 34.521420, 33.186012>,  <46.180794, 34.747559, 33.092728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.864315, 34.521420, 33.186012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049754, 0.320565, 0.945919,
		-0.609529, 0.760015, -0.225503,
		-0.791201, -0.565345, 0.233207,
		45.626953, 34.351814, 33.255974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.798443, 35.177074, 33.496281>,  <46.180794, 34.747559, 33.092728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.798443, 35.177074, 33.496281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.638103, 34.818810, 33.573341>,  <45.541901, 34.603851, 33.619576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.638103, 34.818810, 33.573341>,  <45.798443, 35.177074, 33.496281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.638103, 34.818810, 33.573341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100182, 0.166167, 0.980995,
		-0.910649, 0.412533, 0.023121,
		-0.400851, -0.895659, 0.192648,
		45.517849, 34.550110, 33.631134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.244011, 35.210217, 33.939602>,  <45.798443, 35.177074, 33.496281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.244011, 35.210217, 33.939602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.417057, 34.853313, 33.991329>,  <45.520885, 34.639172, 34.022366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.417057, 34.853313, 33.991329>,  <45.244011, 35.210217, 33.939602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.417057, 34.853313, 33.991329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118002, 0.198233, 0.973026,
		-0.893825, -0.405683, 0.191046,
		0.432612, -0.892259, 0.129314,
		45.546841, 34.585636, 34.030125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.933876, 35.175404, 34.289310>,  <45.244011, 35.210217, 33.939602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.933876, 35.175404, 34.289310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.183155, 35.351776, 34.030945>,  <46.332722, 35.457600, 33.875927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.183155, 35.351776, 34.030945>,  <45.933876, 35.175404, 34.289310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.183155, 35.351776, 34.030945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022351, 0.815526, 0.578289,
		0.781747, -0.374823, 0.498376,
		0.623195, 0.440936, -0.645913,
		46.370113, 35.484058, 33.837170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.485676, 35.404030, 34.762138>,  <45.933876, 35.175404, 34.289310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.485676, 35.404030, 34.762138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.481335, 35.656204, 34.451672>,  <46.478729, 35.807510, 34.265392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.481335, 35.656204, 34.451672>,  <46.485676, 35.404030, 34.762138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.481335, 35.656204, 34.451672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146716, 0.768811, 0.622418,
		0.989119, -0.107123, -0.100837,
		-0.010850, 0.630440, -0.776163,
		46.478081, 35.845337, 34.218822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.017502, 34.984680, 35.110661>,  <46.485676, 35.404030, 34.762138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.017502, 34.984680, 35.110661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.208565, 34.696247, 34.909912>,  <47.323204, 34.523186, 34.789463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.208565, 34.696247, 34.909912>,  <47.017502, 34.984680, 35.110661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.208565, 34.696247, 34.909912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.780270, 0.610728, -0.134866,
		0.403757, -0.327175, 0.854363,
		0.477659, -0.721087, -0.501871,
		47.351864, 34.479919, 34.759350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.698132, 34.689075, 35.432178>,  <47.017502, 34.984680, 35.110661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.698132, 34.689075, 35.432178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.657059, 34.724098, 35.035839>,  <47.632416, 34.745113, 34.798035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.657059, 34.724098, 35.035839>,  <47.698132, 34.689075, 35.432178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.657059, 34.724098, 35.035839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554862, 0.831788, 0.016002,
		0.825581, -0.548144, -0.133996,
		-0.102685, 0.087560, -0.990853,
		47.626255, 34.750366, 34.738583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<37.239937, 40.432781, 43.436756> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.866467, 40.569427, 43.393757>,  <36.642384, 40.651417, 43.367958>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.866467, 40.569427, 43.393757>,  <37.239937, 40.432781, 43.436756>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.866467, 40.569427, 43.393757> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082434, -0.497114, -0.863761,
		-0.348512, -0.797608, 0.492302,
		-0.933672, 0.341614, -0.107500,
		36.586365, 40.671913, 43.361507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.961445, 39.823730, 43.266098>,  <37.239937, 40.432781, 43.436756>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.961445, 39.823730, 43.266098> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.743118, 40.131310, 43.132950>,  <36.612122, 40.315857, 43.053062>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.743118, 40.131310, 43.132950>,  <36.961445, 39.823730, 43.266098>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.743118, 40.131310, 43.132950> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062035, -0.433258, -0.899132,
		-0.835608, -0.470108, 0.284179,
		-0.545812, 0.768951, -0.332871,
		36.579376, 40.361996, 43.033089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.500748, 39.466358, 42.873940>,  <36.961445, 39.823730, 43.266098>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.500748, 39.466358, 42.873940> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.445366, 39.837265, 42.734798>,  <36.412136, 40.059811, 42.651314>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.445366, 39.837265, 42.734798>,  <36.500748, 39.466358, 42.873940>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.445366, 39.837265, 42.734798> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163546, -0.367817, -0.915403,
		-0.976772, -0.069852, 0.202578,
		-0.138455, 0.927271, -0.347850,
		36.403828, 40.115448, 42.630444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.898724, 39.396107, 42.625931>,  <36.500748, 39.466358, 42.873940>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.898724, 39.396107, 42.625931> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.054153, 39.712490, 42.436874>,  <36.147411, 39.902321, 42.323441>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.054153, 39.712490, 42.436874>,  <35.898724, 39.396107, 42.625931>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.054153, 39.712490, 42.436874> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122085, -0.464235, -0.877258,
		-0.913293, 0.398584, -0.083827,
		0.388576, 0.790959, -0.472643,
		36.170727, 39.949780, 42.295082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.424744, 39.572071, 42.039593>,  <35.898724, 39.396107, 42.625931>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.424744, 39.572071, 42.039593> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.759666, 39.760532, 41.928650>,  <35.960621, 39.873608, 41.862083>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.759666, 39.760532, 41.928650>,  <35.424744, 39.572071, 42.039593>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.759666, 39.760532, 41.928650> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073427, -0.405796, -0.911009,
		-0.541775, 0.783163, -0.305182,
		0.837310, 0.471153, -0.277356,
		36.010860, 39.901878, 41.845444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.273849, 40.132713, 41.465477>,  <35.424744, 39.572071, 42.039593>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.273849, 40.132713, 41.465477> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.655067, 40.023411, 41.413269>,  <35.883797, 39.957829, 41.381943>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.655067, 40.023411, 41.413269>,  <35.273849, 40.132713, 41.465477>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.655067, 40.023411, 41.413269> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233533, -0.388807, -0.891230,
		0.192782, 0.879865, -0.434364,
		0.953046, -0.273252, -0.130522,
		35.940983, 39.941437, 41.374111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.420322, 40.409843, 40.828564>,  <35.273849, 40.132713, 41.465477>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.420322, 40.409843, 40.828564> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.712589, 40.143940, 40.890820>,  <35.887951, 39.984398, 40.928173>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.712589, 40.143940, 40.890820>,  <35.420322, 40.409843, 40.828564>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.712589, 40.143940, 40.890820> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083540, -0.313300, -0.945973,
		0.677601, 0.678192, -0.284452,
		0.730669, -0.664755, 0.155636,
		35.931789, 39.944515, 40.937511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.939575, 40.462845, 40.199635>,  <35.420322, 40.409843, 40.828564>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.939575, 40.462845, 40.199635> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.984669, 40.097443, 40.355988>,  <36.011726, 39.878201, 40.449799>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.984669, 40.097443, 40.355988>,  <35.939575, 40.462845, 40.199635>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.984669, 40.097443, 40.355988> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087229, -0.382773, -0.919715,
		0.989789, 0.137781, 0.036532,
		0.112736, -0.913510, 0.390883,
		36.018490, 39.823391, 40.473251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.375916, 40.132698, 39.790424>,  <35.939575, 40.462845, 40.199635>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.375916, 40.132698, 39.790424> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.240845, 39.813652, 39.990337>,  <36.159801, 39.622223, 40.110287>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.240845, 39.813652, 39.990337>,  <36.375916, 40.132698, 39.790424>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.240845, 39.813652, 39.990337> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194977, -0.578729, -0.791869,
		0.920847, -0.169948, 0.350939,
		-0.337675, -0.797616, 0.499785,
		36.139542, 39.574368, 40.140274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.911213, 39.698048, 39.833042>,  <36.375916, 40.132698, 39.790424>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.911213, 39.698048, 39.833042> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.566319, 39.498047, 39.865398>,  <36.359383, 39.378044, 39.884811>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.566319, 39.498047, 39.865398>,  <36.911213, 39.698048, 39.833042>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.566319, 39.498047, 39.865398> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244266, -0.550381, -0.798383,
		0.443714, -0.668637, 0.596693,
		-0.862236, -0.500006, 0.080886,
		36.307648, 39.348045, 39.889664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.121658, 39.116730, 39.741478>,  <36.911213, 39.698048, 39.833042>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.121658, 39.116730, 39.741478> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.731247, 39.044010, 39.693604>,  <36.497002, 39.000378, 39.664879>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.731247, 39.044010, 39.693604>,  <37.121658, 39.116730, 39.741478>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.731247, 39.044010, 39.693604> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211421, -0.661179, -0.719822,
		0.051730, -0.727868, 0.683763,
		-0.976025, -0.181798, -0.119684,
		36.438438, 38.989471, 39.657700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.932755, 38.279621, 39.824139>,  <37.121658, 39.116730, 39.741478>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.932755, 38.279621, 39.824139> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.673931, 38.489170, 39.602554>,  <36.518639, 38.614899, 39.469604>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.673931, 38.489170, 39.602554>,  <36.932755, 38.279621, 39.824139>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.673931, 38.489170, 39.602554> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065254, -0.761949, -0.644341,
		-0.759602, -0.380811, 0.527245,
		-0.647106, 0.523848, -0.553929,
		36.479813, 38.646332, 39.436367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.483536, 37.889851, 39.630730>,  <36.932755, 38.279621, 39.824139>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.483536, 37.889851, 39.630730> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.391773, 38.153111, 39.343895>,  <36.336716, 38.311066, 39.171795>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.391773, 38.153111, 39.343895>,  <36.483536, 37.889851, 39.630730>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.391773, 38.153111, 39.343895> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043511, -0.742928, -0.667955,
		-0.972358, -0.122031, 0.199069,
		-0.229405, 0.658153, -0.717083,
		36.322952, 38.350555, 39.128769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.939835, 37.593624, 39.210674>,  <36.483536, 37.889851, 39.630730>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.939835, 37.593624, 39.210674> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.090839, 37.872211, 38.966572>,  <36.181442, 38.039364, 38.820110>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.090839, 37.872211, 38.966572>,  <35.939835, 37.593624, 39.210674>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.090839, 37.872211, 38.966572> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111629, -0.619989, -0.776629,
		-0.919250, 0.361312, -0.156310,
		0.377516, 0.696468, -0.610258,
		36.204094, 38.081150, 38.783493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.466839, 37.465046, 38.614113>,  <35.939835, 37.593624, 39.210674>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.466839, 37.465046, 38.614113> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.797871, 37.659664, 38.502117>,  <35.996490, 37.776436, 38.434921>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.797871, 37.659664, 38.502117>,  <35.466839, 37.465046, 38.614113>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.797871, 37.659664, 38.502117> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067865, -0.408396, -0.910279,
		-0.557234, 0.772327, -0.304960,
		0.827578, 0.486542, -0.279986,
		36.046143, 37.805626, 38.418121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.514877, 37.093185, 38.035740>,  <35.466839, 37.465046, 38.614113>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.514877, 37.093185, 38.035740> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.794693, 37.374557, 37.985416>,  <35.962582, 37.543381, 37.955223>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.794693, 37.374557, 37.985416>,  <35.514877, 37.093185, 38.035740>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.794693, 37.374557, 37.985416> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010677, -0.165754, -0.986109,
		-0.714510, 0.691169, -0.108442,
		0.699543, 0.703428, -0.125812,
		36.004555, 37.585587, 37.947674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.373161, 37.532856, 37.367199>,  <35.514877, 37.093185, 38.035740>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.373161, 37.532856, 37.367199> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.762291, 37.474510, 37.439133>,  <35.995770, 37.439503, 37.482292>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.762291, 37.474510, 37.439133>,  <35.373161, 37.532856, 37.367199>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.762291, 37.474510, 37.439133> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164506, -0.111214, -0.980087,
		0.162958, 0.983034, -0.084196,
		0.972822, -0.145863, 0.179838,
		36.054138, 37.430752, 37.493084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.710247, 38.053738, 37.073559>,  <35.373161, 37.532856, 37.367199>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.710247, 38.053738, 37.073559> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.995583, 37.775078, 37.104122>,  <36.166782, 37.607883, 37.122459>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.995583, 37.775078, 37.104122>,  <35.710247, 38.053738, 37.073559>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.995583, 37.775078, 37.104122> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093868, -0.013073, -0.995499,
		0.694508, 0.717297, 0.056067,
		0.713335, -0.696645, 0.076411,
		36.209583, 37.566086, 37.127045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.210423, 38.283047, 36.582516>,  <35.710247, 38.053738, 37.073559>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.210423, 38.283047, 36.582516> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.326366, 37.906799, 36.653194>,  <36.395935, 37.681053, 36.695602>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.326366, 37.906799, 36.653194>,  <36.210423, 38.283047, 36.582516>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.326366, 37.906799, 36.653194> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251496, -0.103279, -0.962332,
		0.923433, 0.323385, 0.206624,
		0.289864, -0.940615, 0.176701,
		36.413326, 37.624615, 36.706203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.825714, 38.175797, 36.087940>,  <36.210423, 38.283047, 36.582516>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.825714, 38.175797, 36.087940> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.720463, 37.807087, 36.201851>,  <36.657310, 37.585861, 36.270199>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.720463, 37.807087, 36.201851>,  <36.825714, 38.175797, 36.087940>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.720463, 37.807087, 36.201851> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262875, -0.352514, -0.898126,
		0.928256, -0.161463, 0.335068,
		-0.263130, -0.921772, 0.284779,
		36.641525, 37.530556, 36.287285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.393871, 37.713566, 35.951244>,  <36.825714, 38.175797, 36.087940>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.393871, 37.713566, 35.951244> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.080723, 37.464787, 35.957947>,  <36.892834, 37.315517, 35.961967>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.080723, 37.464787, 35.957947>,  <37.393871, 37.713566, 35.951244>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.080723, 37.464787, 35.957947> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091232, -0.141387, -0.985742,
		0.615454, -0.770184, 0.167430,
		-0.782875, -0.621953, 0.016752,
		36.845860, 37.278202, 35.962971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.600826, 37.044262, 35.571983>,  <37.393871, 37.713566, 35.951244>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.600826, 37.044262, 35.571983> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.202751, 37.083443, 35.570736>,  <36.963905, 37.106953, 35.569988>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.202751, 37.083443, 35.570736>,  <37.600826, 37.044262, 35.571983>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.202751, 37.083443, 35.570736> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020153, -0.235700, -0.971617,
		-0.095910, -0.966877, 0.236539,
		-0.995186, 0.097955, -0.003121,
		36.904194, 37.112827, 35.569801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.199745, 37.506126, 35.550480>,  <37.600826, 37.044262, 35.571983>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.199745, 37.506126, 35.550480> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.599243, 37.505047, 35.530472>,  <38.838943, 37.504398, 35.518467>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.599243, 37.505047, 35.530472>,  <38.199745, 37.506126, 35.550480>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.599243, 37.505047, 35.530472> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048625, 0.292367, 0.955069,
		0.012050, -0.956302, 0.292131,
		0.998744, -0.002696, -0.050023,
		38.898865, 37.504238, 35.515465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.388950, 37.203945, 36.228561>,  <38.199745, 37.506126, 35.550480>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.388950, 37.203945, 36.228561> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.738625, 37.356289, 36.108063>,  <38.948429, 37.447693, 36.035763>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.738625, 37.356289, 36.108063>,  <38.388950, 37.203945, 36.228561>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.738625, 37.356289, 36.108063> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171199, 0.338808, 0.925148,
		0.454415, -0.860323, 0.230978,
		0.874184, 0.380858, -0.301246,
		39.000881, 37.470547, 36.017689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.988468, 36.890377, 36.533901>,  <38.388950, 37.203945, 36.228561>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.988468, 36.890377, 36.533901> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.092930, 37.260265, 36.423134>,  <39.155609, 37.482201, 36.356674>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.092930, 37.260265, 36.423134>,  <38.988468, 36.890377, 36.533901>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.092930, 37.260265, 36.423134> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087506, 0.263016, 0.960815,
		0.961322, -0.275155, -0.012230,
		0.261156, 0.924723, -0.276921,
		39.171276, 37.537682, 36.340057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.610939, 37.014938, 36.898746>,  <38.988468, 36.890377, 36.533901>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.610939, 37.014938, 36.898746> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.439507, 37.365021, 36.809010>,  <39.336647, 37.575069, 36.755165>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.439507, 37.365021, 36.809010>,  <39.610939, 37.014938, 36.898746>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.439507, 37.365021, 36.809010> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191622, 0.330707, 0.924075,
		0.882948, 0.353053, -0.309444,
		-0.428582, 0.875207, -0.224344,
		39.310932, 37.627583, 36.741707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.057659, 37.400612, 37.251305>,  <39.610939, 37.014938, 36.898746>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.057659, 37.400612, 37.251305> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.772465, 37.656246, 37.135918>,  <39.601349, 37.809628, 37.066685>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.772465, 37.656246, 37.135918>,  <40.057659, 37.400612, 37.251305>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.772465, 37.656246, 37.135918> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068958, 0.473315, 0.878190,
		0.697776, 0.606247, -0.381539,
		-0.712989, 0.639090, -0.288463,
		39.558567, 37.847973, 37.049377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.257408, 38.026058, 37.557198>,  <40.057659, 37.400612, 37.251305>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.257408, 38.026058, 37.557198> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.866673, 38.034672, 37.472034>,  <39.632233, 38.039841, 37.420937>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.866673, 38.034672, 37.472034>,  <40.257408, 38.026058, 37.557198>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.866673, 38.034672, 37.472034> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193092, 0.340121, 0.920344,
		0.092235, 0.940135, -0.328084,
		-0.976836, 0.021538, -0.212903,
		39.573624, 38.041134, 37.408165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.013729, 38.700413, 37.767982>,  <40.257408, 38.026058, 37.557198>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.013729, 38.700413, 37.767982> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.683559, 38.474636, 37.764572>,  <39.485458, 38.339169, 37.762527>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.683559, 38.474636, 37.764572>,  <40.013729, 38.700413, 37.767982>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.683559, 38.474636, 37.764572> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298774, 0.424009, 0.854956,
		-0.478962, 0.708250, -0.518630,
		-0.825427, -0.564445, -0.008523,
		39.435932, 38.305302, 37.762016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.386032, 39.181389, 37.711834>,  <40.013729, 38.700413, 37.767982>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.386032, 39.181389, 37.711834> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.265644, 38.831581, 37.863960>,  <39.193413, 38.621696, 37.955238>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.265644, 38.831581, 37.863960>,  <39.386032, 39.181389, 37.711834>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.265644, 38.831581, 37.863960> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405552, 0.478322, 0.778932,
		-0.863102, 0.080195, -0.498621,
		-0.300968, -0.874515, 0.380318,
		39.175354, 38.569225, 37.978054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.821980, 39.331890, 38.106014>,  <39.386032, 39.181389, 37.711834>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.821980, 39.331890, 38.106014> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.909416, 38.965763, 38.241318>,  <38.961880, 38.746086, 38.322498>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.909416, 38.965763, 38.241318>,  <38.821980, 39.331890, 38.106014>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.909416, 38.965763, 38.241318> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406407, 0.229750, 0.884335,
		-0.887159, -0.330777, -0.321769,
		0.218592, -0.915315, 0.338255,
		38.974995, 38.691170, 38.342793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.148228, 38.952827, 38.311367>,  <38.821980, 39.331890, 38.106014>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.148228, 38.952827, 38.311367> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.478897, 38.831684, 38.501057>,  <38.677299, 38.758999, 38.614872>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.478897, 38.831684, 38.501057>,  <38.148228, 38.952827, 38.311367>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.478897, 38.831684, 38.501057> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354914, 0.373338, 0.857120,
		-0.436635, -0.876866, 0.201138,
		0.826671, -0.302862, 0.474225,
		38.726898, 38.740826, 38.643326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.945446, 38.762444, 38.962234>,  <38.148228, 38.952827, 38.311367>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.945446, 38.762444, 38.962234> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.343742, 38.787876, 38.988964>,  <38.582718, 38.803135, 39.005001>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.343742, 38.787876, 38.988964>,  <37.945446, 38.762444, 38.962234>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.343742, 38.787876, 38.988964> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089132, 0.476893, 0.874431,
		0.023733, -0.876659, 0.480527,
		0.995737, 0.063583, 0.066820,
		38.642464, 38.806950, 39.009010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.214264, 38.292000, 39.567886>,  <37.945446, 38.762444, 38.962234>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.214264, 38.292000, 39.567886> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.501461, 38.565231, 39.514393>,  <38.673779, 38.729172, 39.482296>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.501461, 38.565231, 39.514393>,  <38.214264, 38.292000, 39.567886>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.501461, 38.565231, 39.514393> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150043, 0.339506, 0.928560,
		0.679687, -0.646632, 0.346255,
		0.717992, 0.683083, -0.133735,
		38.716858, 38.770157, 39.474274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.580391, 38.301414, 40.244789>,  <38.214264, 38.292000, 39.567886>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.580391, 38.301414, 40.244789> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.731575, 38.637051, 40.088295>,  <38.822285, 38.838432, 39.994396>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.731575, 38.637051, 40.088295>,  <38.580391, 38.301414, 40.244789>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.731575, 38.637051, 40.088295> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080130, 0.450650, 0.889097,
		0.922346, -0.304696, 0.237566,
		0.377964, 0.839092, -0.391240,
		38.844963, 38.888779, 39.970924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.026810, 38.532299, 40.771923>,  <38.580391, 38.301414, 40.244789>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.026810, 38.532299, 40.771923> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.982136, 38.871185, 40.564171>,  <38.955334, 39.074516, 40.439518>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.982136, 38.871185, 40.564171>,  <39.026810, 38.532299, 40.771923>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.982136, 38.871185, 40.564171> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026703, 0.519906, 0.853806,
		0.993385, 0.109222, -0.035440,
		-0.111680, 0.847212, -0.519383,
		38.948631, 39.125347, 40.408356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.514744, 39.064404, 40.980492>,  <39.026810, 38.532299, 40.771923>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.514744, 39.064404, 40.980492> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.217907, 39.275528, 40.815224>,  <39.039803, 39.402203, 40.716064>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.217907, 39.275528, 40.815224>,  <39.514744, 39.064404, 40.980492>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.217907, 39.275528, 40.815224> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030630, 0.642460, 0.765707,
		0.669594, 0.555573, -0.492934,
		-0.742096, 0.527811, -0.413170,
		38.995277, 39.433872, 40.691273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.737446, 39.741623, 40.998901>,  <39.514744, 39.064404, 40.980492>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.737446, 39.741623, 40.998901> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.338318, 39.717812, 40.987556>,  <39.098839, 39.703526, 40.980751>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.338318, 39.717812, 40.987556>,  <39.737446, 39.741623, 40.998901>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.338318, 39.717812, 40.987556> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057870, 0.584462, 0.809354,
		-0.031602, 0.809234, -0.586635,
		-0.997824, -0.059526, -0.028360,
		39.038971, 39.699955, 40.979050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.472412, 40.450722, 41.074120>,  <39.737446, 39.741623, 40.998901>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.472412, 40.450722, 41.074120> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.163540, 40.212513, 41.162750>,  <38.978218, 40.069588, 41.215927>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.163540, 40.212513, 41.162750>,  <39.472412, 40.450722, 41.074120>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.163540, 40.212513, 41.162750> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223980, 0.581441, 0.782151,
		-0.594619, 0.554332, -0.582361,
		-0.772179, -0.595519, 0.221577,
		38.931885, 40.033855, 41.229221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.011093, 40.928940, 41.364204>,  <39.472412, 40.450722, 41.074120>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.011093, 40.928940, 41.364204> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.883503, 40.565792, 41.473042>,  <38.806950, 40.347904, 41.538342>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.883503, 40.565792, 41.473042>,  <39.011093, 40.928940, 41.364204>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.883503, 40.565792, 41.473042> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357362, 0.381105, 0.852673,
		-0.877808, 0.174747, -0.446001,
		-0.318975, -0.907867, 0.272089,
		38.787811, 40.293430, 41.554668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<38.516640, 41.151630, 41.835060> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.581387, 40.766621, 41.922104>,  <38.620235, 40.535614, 41.974331>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.581387, 40.766621, 41.922104>,  <38.516640, 41.151630, 41.835060>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.581387, 40.766621, 41.922104> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106340, 0.202218, 0.973550,
		-0.981067, -0.180723, -0.069623,
		0.161864, -0.962521, 0.217607,
		38.629944, 40.477863, 41.987385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.881142, 40.836502, 42.236763>,  <38.516640, 41.151630, 41.835060>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.881142, 40.836502, 42.236763> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.152657, 40.558456, 42.331470>,  <38.315567, 40.391628, 42.388294>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.152657, 40.558456, 42.331470>,  <37.881142, 40.836502, 42.236763>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.152657, 40.558456, 42.331470> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259479, 0.074585, 0.962864,
		-0.686964, -0.715016, -0.129741,
		0.678786, -0.695119, 0.236769,
		38.356293, 40.349922, 42.402500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.632053, 40.402580, 42.703316>,  <37.881142, 40.836502, 42.236763>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.632053, 40.402580, 42.703316> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.026127, 40.365982, 42.761341>,  <38.262569, 40.344021, 42.796158>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.026127, 40.365982, 42.761341>,  <37.632053, 40.402580, 42.703316>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.026127, 40.365982, 42.761341> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145114, 0.006160, 0.989396,
		-0.091425, -0.995786, -0.007209,
		0.985182, -0.091502, 0.145066,
		38.321682, 40.338531, 42.804859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.802967, 39.769348, 43.182938>,  <37.632053, 40.402580, 42.703316>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.802967, 39.769348, 43.182938> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.123520, 40.007591, 43.205013>,  <38.315849, 40.150536, 43.218258>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.123520, 40.007591, 43.205013>,  <37.802967, 39.769348, 43.182938>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.123520, 40.007591, 43.205013> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050889, -0.024041, 0.998415,
		0.595990, -0.802916, 0.011044,
		0.801378, 0.595607, 0.055188,
		38.363934, 40.186272, 43.221569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.258690, 39.471352, 43.743370>,  <37.802967, 39.769348, 43.182938>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.258690, 39.471352, 43.743370> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.370747, 39.853119, 43.702183>,  <38.437981, 40.082180, 43.677471>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.370747, 39.853119, 43.702183>,  <38.258690, 39.471352, 43.743370>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.370747, 39.853119, 43.702183> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072566, 0.085901, 0.993657,
		0.957211, -0.285841, -0.045194,
		0.280146, 0.954419, -0.102967,
		38.454792, 40.139446, 43.671291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.813347, 39.585670, 44.214294>,  <38.258690, 39.471352, 43.743370>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.813347, 39.585670, 44.214294> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.691872, 39.959190, 44.138626>,  <38.618988, 40.183304, 44.093224>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.691872, 39.959190, 44.138626>,  <38.813347, 39.585670, 44.214294>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.691872, 39.959190, 44.138626> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070400, 0.220002, 0.972956,
		0.950167, 0.282157, -0.132552,
		-0.303688, 0.933802, -0.189175,
		38.600765, 40.239330, 44.081875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.306229, 40.019577, 44.455704>,  <38.813347, 39.585670, 44.214294>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.306229, 40.019577, 44.455704> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.975159, 40.243961, 44.449158>,  <38.776516, 40.378593, 44.445232>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.975159, 40.243961, 44.449158>,  <39.306229, 40.019577, 44.455704>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.975159, 40.243961, 44.449158> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104945, 0.183351, 0.977430,
		0.551302, 0.807281, -0.210626,
		-0.827679, 0.560964, -0.016362,
		38.726856, 40.412251, 44.444248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.485336, 40.672016, 44.759731>,  <39.306229, 40.019577, 44.455704>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.485336, 40.672016, 44.759731> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.087448, 40.655193, 44.797157>,  <38.848713, 40.645100, 44.819611>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.087448, 40.655193, 44.797157>,  <39.485336, 40.672016, 44.759731>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.087448, 40.655193, 44.797157> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093505, 0.003297, 0.995613,
		-0.042186, 0.999110, 0.000654,
		-0.994725, -0.042062, 0.093561,
		38.789032, 40.642574, 44.825226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.365356, 41.162933, 45.316696>,  <39.485336, 40.672016, 44.759731>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.365356, 41.162933, 45.316696> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.009716, 40.985626, 45.271069>,  <38.796329, 40.879242, 45.243694>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.009716, 40.985626, 45.271069>,  <39.365356, 41.162933, 45.316696>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.009716, 40.985626, 45.271069> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155851, 0.058870, 0.986025,
		-0.430354, 0.894456, -0.121425,
		-0.889104, -0.443263, -0.114067,
		38.742985, 40.852646, 45.236847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.839306, 41.509556, 45.640797>,  <39.365356, 41.162933, 45.316696>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.839306, 41.509556, 45.640797> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.671566, 41.146610, 45.629299>,  <38.570923, 40.928841, 45.622398>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.671566, 41.146610, 45.629299>,  <38.839306, 41.509556, 45.640797>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.671566, 41.146610, 45.629299> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089723, 0.009914, 0.995917,
		-0.903379, 0.420220, -0.085569,
		-0.419353, -0.907368, -0.028747,
		38.545761, 40.874401, 45.620674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.252228, 41.520390, 46.098976>,  <38.839306, 41.509556, 45.640797>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.252228, 41.520390, 46.098976> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.345802, 41.132401, 46.072380>,  <38.401947, 40.899605, 46.056423>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.345802, 41.132401, 46.072380>,  <38.252228, 41.520390, 46.098976>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.345802, 41.132401, 46.072380> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026052, -0.074618, 0.996872,
		-0.971902, -0.231476, -0.042726,
		0.233940, -0.969975, -0.066491,
		38.415985, 40.841408, 46.052433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.824982, 41.112202, 46.660187>,  <38.252228, 41.520390, 46.098976>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.824982, 41.112202, 46.660187> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.092735, 40.837044, 46.547955>,  <38.253387, 40.671947, 46.480614>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.092735, 40.837044, 46.547955>,  <37.824982, 41.112202, 46.660187>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.092735, 40.837044, 46.547955> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034650, -0.348361, 0.936720,
		-0.742109, -0.636747, -0.209351,
		0.669383, -0.687894, -0.280585,
		38.293549, 40.630676, 46.463779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.569073, 40.423954, 46.979271>,  <37.824982, 41.112202, 46.660187>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.569073, 40.423954, 46.979271> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.960903, 40.410702, 46.899948>,  <38.196003, 40.402752, 46.852356>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.960903, 40.410702, 46.899948>,  <37.569073, 40.423954, 46.979271>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.960903, 40.410702, 46.899948> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171353, -0.378373, 0.909655,
		-0.105170, -0.925060, -0.364969,
		0.979580, -0.033130, -0.198305,
		38.254776, 40.400761, 46.840458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.755093, 39.804291, 47.264450>,  <37.569073, 40.423954, 46.979271>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.755093, 39.804291, 47.264450> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.083363, 40.031216, 47.237206>,  <38.280327, 40.167370, 47.220860>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.083363, 40.031216, 47.237206>,  <37.755093, 39.804291, 47.264450>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.083363, 40.031216, 47.237206> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231308, -0.220862, 0.947479,
		0.522477, -0.793331, -0.312481,
		0.820679, 0.567315, -0.068108,
		38.329567, 40.201408, 47.216774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.270313, 39.407780, 47.604153>,  <37.755093, 39.804291, 47.264450>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.270313, 39.407780, 47.604153> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.423424, 39.776276, 47.576435>,  <38.515289, 39.997372, 47.559803>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.423424, 39.776276, 47.576435>,  <38.270313, 39.407780, 47.604153>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.423424, 39.776276, 47.576435> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380585, -0.088894, 0.920464,
		0.841806, -0.378705, -0.384636,
		0.382776, 0.921238, -0.069298,
		38.538258, 40.052647, 47.555645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.073364, 39.384956, 47.650673>,  <38.270313, 39.407780, 47.604153>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.073364, 39.384956, 47.650673> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.947620, 39.742214, 47.779343>,  <38.872173, 39.956570, 47.856544>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.947620, 39.742214, 47.779343>,  <39.073364, 39.384956, 47.650673>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.947620, 39.742214, 47.779343> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491051, -0.137011, 0.860289,
		0.812433, 0.428398, -0.395508,
		-0.314357, 0.893142, 0.321677,
		38.853313, 40.010159, 47.875847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.677116, 39.603733, 47.931660>,  <39.073364, 39.384956, 47.650673>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.677116, 39.603733, 47.931660> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.389404, 39.855564, 48.049141>,  <39.216778, 40.006664, 48.119629>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.389404, 39.855564, 48.049141>,  <39.677116, 39.603733, 47.931660>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.389404, 39.855564, 48.049141> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505660, 0.184554, 0.842762,
		0.476383, 0.754697, -0.451100,
		-0.719282, 0.629581, 0.293702,
		39.173618, 40.044437, 48.137253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.065346, 40.119972, 48.197746>,  <39.677116, 39.603733, 47.931660>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.065346, 40.119972, 48.197746> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.707176, 40.120258, 48.375832>,  <39.492275, 40.120430, 48.482685>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.707176, 40.120258, 48.375832>,  <40.065346, 40.119972, 48.197746>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.707176, 40.120258, 48.375832> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443742, -0.079871, 0.892588,
		0.036195, 0.996805, 0.071203,
		-0.895423, 0.000711, 0.445215,
		39.438549, 40.120472, 48.509396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.167419, 40.559990, 48.715481>,  <40.065346, 40.119972, 48.197746>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.167419, 40.559990, 48.715481> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.835865, 40.356201, 48.807907>,  <39.636932, 40.233929, 48.863361>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.835865, 40.356201, 48.807907>,  <40.167419, 40.559990, 48.715481>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.835865, 40.356201, 48.807907> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401456, -0.254063, 0.879935,
		-0.389598, 0.822125, 0.415119,
		-0.828882, -0.509473, 0.231065,
		39.587200, 40.203358, 48.877228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.082996, 40.689171, 49.391972>,  <40.167419, 40.559990, 48.715481>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.082996, 40.689171, 49.391972> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.828632, 40.387012, 49.328716>,  <39.676014, 40.205719, 49.290764>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.828632, 40.387012, 49.328716>,  <40.082996, 40.689171, 49.391972>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.828632, 40.387012, 49.328716> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207584, -0.364764, 0.907665,
		-0.743325, 0.544363, 0.388763,
		-0.635906, -0.755391, -0.158138,
		39.637859, 40.160397, 49.281277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.752357, 40.656425, 49.961483>,  <40.082996, 40.689171, 49.391972>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.752357, 40.656425, 49.961483> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.693604, 40.296478, 49.797207>,  <39.658352, 40.080509, 49.698643>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.693604, 40.296478, 49.797207>,  <39.752357, 40.656425, 49.961483>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.693604, 40.296478, 49.797207> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221448, -0.434568, 0.872990,
		-0.964047, 0.037280, 0.263104,
		-0.146882, -0.899867, -0.410688,
		39.649540, 40.026520, 49.674000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.403275, 40.361668, 50.470455>,  <39.752357, 40.656425, 49.961483>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.403275, 40.361668, 50.470455> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.591148, 40.080791, 50.256420>,  <39.703873, 39.912266, 50.127998>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.591148, 40.080791, 50.256420>,  <39.403275, 40.361668, 50.470455>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.591148, 40.080791, 50.256420> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290518, -0.449408, 0.844768,
		-0.833663, -0.552228, -0.007080,
		0.469686, -0.702195, -0.535086,
		39.732056, 39.870132, 50.095894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.925186, 40.930908, 50.821049>,  <39.403275, 40.361668, 50.470455>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.925186, 40.930908, 50.821049> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.008694, 41.143639, 50.492760>,  <39.058796, 41.271275, 50.295788>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.008694, 41.143639, 50.492760>,  <38.925186, 40.930908, 50.821049>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.008694, 41.143639, 50.492760> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.808967, -0.377660, -0.450495,
		-0.549536, 0.757984, 0.351384,
		0.208765, 0.531821, -0.820721,
		39.071323, 41.303185, 50.246544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.224991, 40.969799, 51.153431>,  <38.925186, 40.930908, 50.821049>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.224991, 40.969799, 51.153431> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.871758, 40.864826, 51.309013>,  <37.659817, 40.801842, 51.402363>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.871758, 40.864826, 51.309013>,  <38.224991, 40.969799, 51.153431>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.871758, 40.864826, 51.309013> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412211, 0.037911, -0.910299,
		0.224149, -0.964204, -0.141657,
		-0.883085, -0.262436, 0.388958,
		37.606831, 40.786095, 51.425701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.974133, 40.492195, 50.680424>,  <38.224991, 40.969799, 51.153431>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.974133, 40.492195, 50.680424> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.665272, 40.649853, 50.879799>,  <37.479958, 40.744446, 50.999424>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.665272, 40.649853, 50.879799>,  <37.974133, 40.492195, 50.680424>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.665272, 40.649853, 50.879799> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425320, 0.262205, -0.866228,
		-0.472109, -0.880852, -0.034825,
		-0.772150, 0.394142, 0.498434,
		37.433628, 40.768097, 51.029327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.405598, 40.242630, 50.311634>,  <37.974133, 40.492195, 50.680424>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.405598, 40.242630, 50.311634> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.287601, 40.570686, 50.507736>,  <37.216805, 40.767521, 50.625397>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.287601, 40.570686, 50.507736>,  <37.405598, 40.242630, 50.311634>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.287601, 40.570686, 50.507736> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514567, 0.295971, -0.804750,
		-0.805111, -0.489657, 0.334711,
		-0.294987, 0.820144, 0.490251,
		37.199104, 40.816730, 50.654812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.740677, 40.205765, 50.190277>,  <37.405598, 40.242630, 50.311634>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.740677, 40.205765, 50.190277> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.840485, 40.578114, 50.297024>,  <36.900368, 40.801521, 50.361073>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.840485, 40.578114, 50.297024>,  <36.740677, 40.205765, 50.190277>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.840485, 40.578114, 50.297024> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372017, 0.346581, -0.861095,
		-0.894060, 0.115581, 0.432779,
		0.249519, 0.930872, 0.266866,
		36.915340, 40.857376, 50.377083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.079422, 40.681450, 50.167423>,  <36.740677, 40.205765, 50.190277>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.079422, 40.681450, 50.167423> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.407616, 40.910088, 50.163696>,  <36.604530, 41.047272, 50.161461>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.407616, 40.910088, 50.163696>,  <36.079422, 40.681450, 50.167423>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.407616, 40.910088, 50.163696> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256510, 0.353537, -0.899563,
		-0.510890, 0.740468, 0.436691,
		0.820484, 0.571593, -0.009318,
		36.653763, 41.081566, 50.160900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.808868, 41.216171, 49.920856>,  <36.079422, 40.681450, 50.167423>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.808868, 41.216171, 49.920856> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.201622, 41.217476, 49.845081>,  <36.437275, 41.218258, 49.799618>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.201622, 41.217476, 49.845081>,  <35.808868, 41.216171, 49.920856>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.201622, 41.217476, 49.845081> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182371, 0.287333, -0.940309,
		0.051366, 0.957825, 0.282723,
		0.981887, 0.003260, -0.189439,
		36.496189, 41.218452, 49.788250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.896835, 41.869915, 49.620281>,  <35.808868, 41.216171, 49.920856>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.896835, 41.869915, 49.620281> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.226002, 41.676685, 49.500652>,  <36.423504, 41.560745, 49.428875>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.226002, 41.676685, 49.500652>,  <35.896835, 41.869915, 49.620281>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.226002, 41.676685, 49.500652> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109323, 0.381920, -0.917706,
		0.557544, 0.787892, 0.261478,
		0.822918, -0.483076, -0.299072,
		36.472878, 41.531761, 49.410931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.216114, 42.303474, 49.117752>,  <35.896835, 41.869915, 49.620281>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.216114, 42.303474, 49.117752> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.357002, 41.934563, 49.054070>,  <36.441536, 41.713215, 49.015862>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.357002, 41.934563, 49.054070>,  <36.216114, 42.303474, 49.117752>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.357002, 41.934563, 49.054070> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221594, 0.083092, -0.971592,
		0.909307, 0.377490, -0.175105,
		0.352217, -0.922278, -0.159206,
		36.462666, 41.657879, 49.006310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.572933, 42.443039, 48.452324>,  <36.216114, 42.303474, 49.117752>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.572933, 42.443039, 48.452324> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.519974, 42.050858, 48.510551>,  <36.488197, 41.815548, 48.545486>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.519974, 42.050858, 48.510551>,  <36.572933, 42.443039, 48.452324>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.519974, 42.050858, 48.510551> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095327, -0.158774, -0.982702,
		0.986602, -0.116235, 0.114486,
		-0.132402, -0.980449, 0.145567,
		36.480251, 41.756721, 48.554222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.016994, 42.172165, 48.056038>,  <36.572933, 42.443039, 48.452324>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.016994, 42.172165, 48.056038> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.755390, 41.875610, 48.116188>,  <36.598427, 41.697678, 48.152279>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.755390, 41.875610, 48.116188>,  <37.016994, 42.172165, 48.056038>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.755390, 41.875610, 48.116188> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070922, -0.257999, -0.963539,
		0.753154, -0.619500, 0.221315,
		-0.654011, -0.741388, 0.150377,
		36.559189, 41.653194, 48.161301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.267384, 41.424088, 47.811882>,  <37.016994, 42.172165, 48.056038>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.267384, 41.424088, 47.811882> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.873943, 41.351982, 47.814194>,  <36.637878, 41.308720, 47.815582>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.873943, 41.351982, 47.814194>,  <37.267384, 41.424088, 47.811882>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.873943, 41.351982, 47.814194> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050608, -0.306617, -0.950486,
		0.173108, -0.934608, 0.310712,
		-0.983602, -0.180261, 0.005779,
		36.578861, 41.297905, 47.815926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.183178, 40.762028, 47.482372>,  <37.267384, 41.424088, 47.811882>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.183178, 40.762028, 47.482372> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.819042, 40.925850, 47.458527>,  <36.600563, 41.024143, 47.444221>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.819042, 40.925850, 47.458527>,  <37.183178, 40.762028, 47.482372>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.819042, 40.925850, 47.458527> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073658, -0.302059, -0.950439,
		-0.407262, -0.860829, 0.305142,
		-0.910336, 0.409554, -0.059610,
		36.545940, 41.048717, 47.440643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.744694, 40.316849, 47.151623>,  <37.183178, 40.762028, 47.482372>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.744694, 40.316849, 47.151623> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.564865, 40.666477, 47.077980>,  <36.456970, 40.876255, 47.033794>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.564865, 40.666477, 47.077980>,  <36.744694, 40.316849, 47.151623>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.564865, 40.666477, 47.077980> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142979, -0.273870, -0.951079,
		-0.881729, -0.401251, 0.248097,
		-0.449567, 0.874067, -0.184109,
		36.429996, 40.928696, 47.022747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.141663, 40.133793, 46.646549>,  <36.744694, 40.316849, 47.151623>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.141663, 40.133793, 46.646549> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.205875, 40.528545, 46.653404>,  <36.244404, 40.765396, 46.657516>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.205875, 40.528545, 46.653404>,  <36.141663, 40.133793, 46.646549>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.205875, 40.528545, 46.653404> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084181, 0.030987, -0.995969,
		-0.983434, 0.158442, 0.088051,
		0.160532, 0.986882, 0.017136,
		36.254036, 40.824612, 46.658546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.685719, 40.421471, 46.125408>,  <36.141663, 40.133793, 46.646549>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.685719, 40.421471, 46.125408> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.963943, 40.707851, 46.149414>,  <36.130878, 40.879681, 46.163818>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.963943, 40.707851, 46.149414>,  <35.685719, 40.421471, 46.125408>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.963943, 40.707851, 46.149414> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001774, 0.085238, -0.996359,
		-0.718465, 0.692922, 0.060558,
		0.695561, 0.715957, 0.060012,
		36.172611, 40.922638, 46.167419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.363049, 40.934982, 45.727631>,  <35.685719, 40.421471, 46.125408>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.363049, 40.934982, 45.727631> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.753750, 41.012909, 45.763409>,  <35.988171, 41.059666, 45.784874>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.753750, 41.012909, 45.763409>,  <35.363049, 40.934982, 45.727631>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.753750, 41.012909, 45.763409> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062446, 0.140569, -0.988100,
		-0.205075, 0.970714, 0.125136,
		0.976752, 0.194820, 0.089444,
		36.046776, 41.071354, 45.790241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.515415, 41.559288, 45.346004>,  <35.363049, 40.934982, 45.727631>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.515415, 41.559288, 45.346004> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.869011, 41.377483, 45.389793>,  <36.081169, 41.268402, 45.416065>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.869011, 41.377483, 45.389793>,  <35.515415, 41.559288, 45.346004>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.869011, 41.377483, 45.389793> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148408, 0.050763, -0.987622,
		0.443326, 0.889294, 0.112327,
		0.883989, -0.454509, 0.109474,
		36.134209, 41.241131, 45.422634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.979145, 41.952694, 44.888248>,  <35.515415, 41.559288, 45.346004>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.979145, 41.952694, 44.888248> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.153099, 41.593304, 44.912315>,  <36.257473, 41.377670, 44.926758>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.153099, 41.593304, 44.912315>,  <35.979145, 41.952694, 44.888248>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.153099, 41.593304, 44.912315> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109527, -0.013547, -0.993892,
		0.893801, 0.438818, 0.092516,
		0.434884, -0.898474, 0.060170,
		36.283566, 41.323761, 44.930367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.420631, 41.966068, 44.399418>,  <35.979145, 41.952694, 44.888248>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.420631, 41.966068, 44.399418> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.422871, 41.573631, 44.476803>,  <36.424213, 41.338169, 44.523235>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.422871, 41.573631, 44.476803>,  <36.420631, 41.966068, 44.399418>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.422871, 41.573631, 44.476803> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057546, -0.192831, -0.979543,
		0.998327, 0.016620, 0.055378,
		0.005601, -0.981091, 0.193465,
		36.424553, 41.279305, 44.534843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.061947, 41.780113, 44.114887>,  <36.420631, 41.966068, 44.399418>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.061947, 41.780113, 44.114887> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.807968, 41.472130, 44.140179>,  <36.655579, 41.287338, 44.155354>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.807968, 41.472130, 44.140179>,  <37.061947, 41.780113, 44.114887>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.807968, 41.472130, 44.140179> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205251, -0.247032, -0.947020,
		0.744790, -0.588331, 0.314889,
		-0.634949, -0.769962, 0.063231,
		36.617485, 41.241142, 44.159149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.347477, 41.133598, 43.803127>,  <37.061947, 41.780113, 44.114887>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.347477, 41.133598, 43.803127> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.961082, 41.030823, 43.791485>,  <36.729244, 40.969158, 43.784500>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.961082, 41.030823, 43.791485>,  <37.347477, 41.133598, 43.803127>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.961082, 41.030823, 43.791485> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143846, -0.440411, -0.886197,
		0.214875, -0.860245, 0.462392,
		-0.965990, -0.256935, -0.029110,
		36.671284, 40.953743, 43.782753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<46.325619, 29.806705, 27.348862> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.328156, 30.156828, 27.155451>,  <46.329678, 30.366901, 27.039404>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.328156, 30.156828, 27.155451>,  <46.325619, 29.806705, 27.348862>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.328156, 30.156828, 27.155451> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237250, -0.468413, -0.851059,
		-0.971428, 0.120116, 0.204695,
		0.006344, 0.875306, -0.483527,
		46.330059, 30.419420, 27.010393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.038334, 29.315006, 27.893194>,  <46.325619, 29.806705, 27.348862>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.038334, 29.315006, 27.893194> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.757854, 29.039293, 27.820305>,  <45.589565, 28.873865, 27.776571>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.757854, 29.039293, 27.820305>,  <46.038334, 29.315006, 27.893194>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.757854, 29.039293, 27.820305> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564287, 0.380329, 0.732755,
		-0.435769, 0.616638, -0.655640,
		-0.701203, -0.689281, -0.182225,
		45.547493, 28.832508, 27.765636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.459721, 29.581751, 27.675531>,  <46.038334, 29.315006, 27.893194>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.459721, 29.581751, 27.675531> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.343338, 29.238190, 27.844116>,  <45.273510, 29.032053, 27.945267>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.343338, 29.238190, 27.844116>,  <45.459721, 29.581751, 27.675531>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.343338, 29.238190, 27.844116> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.657212, 0.499566, 0.564364,
		-0.695282, -0.112786, -0.709832,
		-0.290956, -0.858902, 0.421464,
		45.256050, 28.980518, 27.970556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.791031, 29.800900, 27.913530>,  <45.459721, 29.581751, 27.675531>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.791031, 29.800900, 27.913530> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.843479, 29.447483, 28.093380>,  <44.874947, 29.235434, 28.201290>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.843479, 29.447483, 28.093380>,  <44.791031, 29.800900, 27.913530>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.843479, 29.447483, 28.093380> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491014, 0.336127, 0.803694,
		-0.861228, -0.326150, -0.389760,
		0.131116, -0.883541, 0.449626,
		44.882812, 29.182421, 28.228268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.130920, 29.554609, 28.172895>,  <44.791031, 29.800900, 27.913530>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.130920, 29.554609, 28.172895> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.393051, 29.359055, 28.403212>,  <44.550331, 29.241722, 28.541401>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.393051, 29.359055, 28.403212>,  <44.130920, 29.554609, 28.172895>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.393051, 29.359055, 28.403212> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526814, 0.250455, 0.812243,
		-0.541305, -0.835621, -0.093422,
		0.655329, -0.488887, 0.575789,
		44.589649, 29.212389, 28.575949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.687721, 29.425251, 28.631207>,  <44.130920, 29.554609, 28.172895>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.687721, 29.425251, 28.631207> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.043442, 29.364500, 28.803753>,  <44.256874, 29.328051, 28.907280>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.043442, 29.364500, 28.803753>,  <43.687721, 29.425251, 28.631207>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.043442, 29.364500, 28.803753> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352836, 0.372229, 0.858459,
		-0.290947, -0.915630, 0.277436,
		0.889301, -0.151876, 0.431366,
		44.310234, 29.318937, 28.933163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.548035, 29.103451, 29.168142>,  <43.687721, 29.425251, 28.631207>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.548035, 29.103451, 29.168142> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.904430, 29.267752, 29.245525>,  <44.118267, 29.366333, 29.291956>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.904430, 29.267752, 29.245525>,  <43.548035, 29.103451, 29.168142>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.904430, 29.267752, 29.245525> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324318, 0.277580, 0.904305,
		0.317756, -0.868460, 0.380537,
		0.890982, 0.410763, 0.193454,
		44.171726, 29.390978, 29.303562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.600658, 28.955046, 29.867319>,  <43.548035, 29.103451, 29.168142>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.600658, 28.955046, 29.867319> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.879345, 29.235077, 29.804737>,  <44.046555, 29.403095, 29.767187>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.879345, 29.235077, 29.804737>,  <43.600658, 28.955046, 29.867319>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.879345, 29.235077, 29.804737> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239384, 0.432503, 0.869273,
		0.676229, -0.568181, 0.468919,
		0.696713, 0.700079, -0.156458,
		44.088360, 29.445101, 29.757799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.804737, 29.132154, 30.547461>,  <43.600658, 28.955046, 29.867319>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.804737, 29.132154, 30.547461> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.929527, 29.434494, 30.317204>,  <44.004402, 29.615898, 30.179049>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.929527, 29.434494, 30.317204>,  <43.804737, 29.132154, 30.547461>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.929527, 29.434494, 30.317204> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251784, 0.649993, 0.717018,
		0.916121, -0.078752, 0.393091,
		0.311973, 0.755849, -0.575644,
		44.023121, 29.661249, 30.144510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.316257, 29.462345, 30.915108>,  <43.804737, 29.132154, 30.547461>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.316257, 29.462345, 30.915108> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.175526, 29.729256, 30.652519>,  <44.091087, 29.889402, 30.494967>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.175526, 29.729256, 30.652519>,  <44.316257, 29.462345, 30.915108>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.175526, 29.729256, 30.652519> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117470, 0.664292, 0.738185,
		0.928663, 0.336832, -0.155333,
		-0.351831, 0.667279, -0.656471,
		44.069977, 29.929440, 30.455578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.610020, 30.109764, 31.057297>,  <44.316257, 29.462345, 30.915108>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.610020, 30.109764, 31.057297> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.266590, 30.190262, 30.868679>,  <44.060532, 30.238560, 30.755508>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.266590, 30.190262, 30.868679>,  <44.610020, 30.109764, 31.057297>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.266590, 30.190262, 30.868679> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174592, 0.750001, 0.637978,
		0.482047, 0.630079, -0.608795,
		-0.858573, 0.201245, -0.471543,
		44.009018, 30.250635, 30.727217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.635799, 30.820780, 30.929348>,  <44.610020, 30.109764, 31.057297>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.635799, 30.820780, 30.929348> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.253719, 30.703302, 30.914721>,  <44.024471, 30.632816, 30.905945>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.253719, 30.703302, 30.914721>,  <44.635799, 30.820780, 30.929348>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.253719, 30.703302, 30.914721> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248965, 0.730562, 0.635842,
		-0.160027, 0.616461, -0.770952,
		-0.955200, -0.293692, -0.036568,
		43.967159, 30.615194, 30.903749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.336945, 31.489332, 30.929132>,  <44.635799, 30.820780, 30.929348>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.336945, 31.489332, 30.929132> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.042488, 31.229670, 31.005758>,  <43.865814, 31.073872, 31.051735>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.042488, 31.229670, 31.005758>,  <44.336945, 31.489332, 30.929132>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.042488, 31.229670, 31.005758> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302113, 0.568422, 0.765261,
		-0.605665, 0.505462, -0.614555,
		-0.736138, -0.649156, 0.191566,
		43.821648, 31.034924, 31.063229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.716557, 31.870800, 30.925241>,  <44.336945, 31.489332, 30.929132>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.716557, 31.870800, 30.925241> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.638573, 31.538811, 31.134293>,  <43.591782, 31.339617, 31.259724>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.638573, 31.538811, 31.134293>,  <43.716557, 31.870800, 30.925241>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.638573, 31.538811, 31.134293> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373870, 0.555506, 0.742721,
		-0.906760, -0.050597, -0.418601,
		-0.194956, -0.829971, 0.522628,
		43.580086, 31.289820, 31.291080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.027435, 31.914654, 31.159384>,  <43.716557, 31.870800, 30.925241>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.027435, 31.914654, 31.159384> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.215473, 31.680052, 31.423208>,  <43.328297, 31.539289, 31.581503>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.215473, 31.680052, 31.423208>,  <43.027435, 31.914654, 31.159384>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.215473, 31.680052, 31.423208> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392897, 0.530099, 0.751417,
		-0.790344, -0.612377, 0.018760,
		0.470095, -0.586506, 0.659561,
		43.356503, 31.504101, 31.621077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.570862, 31.929829, 31.721359>,  <43.027435, 31.914654, 31.159384>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.570862, 31.929829, 31.721359> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.918350, 31.772348, 31.841574>,  <43.126842, 31.677860, 31.913702>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.918350, 31.772348, 31.841574>,  <42.570862, 31.929829, 31.721359>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.918350, 31.772348, 31.841574> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107866, 0.441832, 0.890590,
		-0.483413, -0.806092, 0.341362,
		0.868722, -0.393702, 0.300537,
		43.178967, 31.654238, 31.931734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.465656, 31.854694, 32.404251>,  <42.570862, 31.929829, 31.721359>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.465656, 31.854694, 32.404251> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.863228, 31.811556, 32.395508>,  <43.101768, 31.785673, 32.390263>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.863228, 31.811556, 32.395508>,  <42.465656, 31.854694, 32.404251>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.863228, 31.811556, 32.395508> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067493, 0.440601, 0.895162,
		-0.086910, -0.891201, 0.445204,
		0.993927, -0.107847, -0.021858,
		43.161407, 31.779202, 32.388950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.699795, 31.599352, 32.978931>,  <42.465656, 31.854694, 32.404251>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.699795, 31.599352, 32.978931> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.018677, 31.801237, 32.846428>,  <43.210007, 31.922369, 32.766926>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.018677, 31.801237, 32.846428>,  <42.699795, 31.599352, 32.978931>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.018677, 31.801237, 32.846428> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040975, 0.502208, 0.863775,
		0.602324, -0.702175, 0.379680,
		0.797199, 0.504715, -0.331263,
		43.257835, 31.952652, 32.747047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.126930, 31.745087, 33.598824>,  <42.699795, 31.599352, 32.978931>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.126930, 31.745087, 33.598824> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.277458, 32.010437, 33.340115>,  <43.367775, 32.169647, 33.184887>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.277458, 32.010437, 33.340115>,  <43.126930, 31.745087, 33.598824>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.277458, 32.010437, 33.340115> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069590, 0.675880, 0.733719,
		0.923874, -0.321119, 0.208180,
		0.376316, 0.663377, -0.646774,
		43.390354, 32.209450, 33.146084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.648586, 32.037529, 33.883923>,  <43.126930, 31.745087, 33.598824>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.648586, 32.037529, 33.883923> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.542801, 32.321804, 33.623161>,  <43.479328, 32.492371, 33.466705>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.542801, 32.321804, 33.623161>,  <43.648586, 32.037529, 33.883923>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.542801, 32.321804, 33.623161> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125784, 0.695617, 0.707315,
		0.956156, 0.105063, -0.273362,
		-0.264468, 0.710689, -0.651904,
		43.463459, 32.535011, 33.427589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.228271, 32.595253, 33.791283>,  <43.648586, 32.037529, 33.883923>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.228271, 32.595253, 33.791283> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.875210, 32.759159, 33.699188>,  <43.663372, 32.857502, 33.643932>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.875210, 32.759159, 33.699188>,  <44.228271, 32.595253, 33.791283>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.875210, 32.759159, 33.699188> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219877, 0.792923, 0.568267,
		0.415412, 0.450963, -0.789978,
		-0.882659, 0.409763, -0.230234,
		43.610413, 32.882088, 33.630119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.632912, 32.918442, 34.519627>,  <44.228271, 32.595253, 33.791283>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.632912, 32.918442, 34.519627> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.951973, 32.686844, 34.452084>,  <45.143410, 32.547886, 34.411556>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.951973, 32.686844, 34.452084>,  <44.632912, 32.918442, 34.519627>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.951973, 32.686844, 34.452084> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057503, 0.351714, -0.934340,
		0.600364, 0.735573, 0.313841,
		0.797657, -0.578991, -0.168858,
		45.191269, 32.513145, 34.401424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.025547, 33.349369, 33.955017>,  <44.632912, 32.918442, 34.519627>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.025547, 33.349369, 33.955017> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.125462, 33.722397, 33.850773>,  <45.185410, 33.946213, 33.788227>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.125462, 33.722397, 33.850773>,  <45.025547, 33.349369, 33.955017>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.125462, 33.722397, 33.850773> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086469, -0.246588, -0.965255,
		-0.964432, 0.263644, 0.019044,
		0.249788, 0.932570, -0.260614,
		45.200397, 34.002167, 33.772587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.611797, 33.532810, 33.390182>,  <45.025547, 33.349369, 33.955017>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.611797, 33.532810, 33.390182> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.920059, 33.784321, 33.348759>,  <45.105019, 33.935226, 33.323906>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.920059, 33.784321, 33.348759>,  <44.611797, 33.532810, 33.390182>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.920059, 33.784321, 33.348759> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068102, -0.080310, -0.994441,
		-0.633598, 0.773427, -0.019070,
		0.770659, 0.628777, -0.103556,
		45.151257, 33.972954, 33.317692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.372501, 34.031528, 32.953026>,  <44.611797, 33.532810, 33.390182>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.372501, 34.031528, 32.953026> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.769512, 34.060966, 32.914082>,  <45.007717, 34.078629, 32.890713>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.769512, 34.060966, 32.914082>,  <44.372501, 34.031528, 32.953026>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.769512, 34.060966, 32.914082> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088799, -0.111834, -0.989751,
		-0.083728, 0.990998, -0.104462,
		0.992524, 0.073594, -0.097363,
		45.067268, 34.083046, 32.884872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.574047, 34.510212, 32.397095>,  <44.372501, 34.031528, 32.953026>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.574047, 34.510212, 32.397095> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.885532, 34.266911, 32.458572>,  <45.072426, 34.120930, 32.495457>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.885532, 34.266911, 32.458572>,  <44.574047, 34.510212, 32.397095>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.885532, 34.266911, 32.458572> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001352, -0.243347, -0.969938,
		0.627373, 0.755516, -0.188676,
		0.778718, -0.608258, 0.153690,
		45.119148, 34.084435, 32.504681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.017365, 34.637081, 31.847742>,  <44.574047, 34.510212, 32.397095>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.017365, 34.637081, 31.847742> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.140720, 34.280605, 31.980820>,  <45.214733, 34.066719, 32.060665>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.140720, 34.280605, 31.980820>,  <45.017365, 34.637081, 31.847742>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.140720, 34.280605, 31.980820> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243541, -0.264117, -0.933236,
		0.919556, 0.368825, 0.135589,
		0.308389, -0.891185, 0.332694,
		45.233238, 34.013248, 32.080627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.712742, 34.584415, 31.683432>,  <45.017365, 34.637081, 31.847742>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.712742, 34.584415, 31.683432> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.563766, 34.215408, 31.723946>,  <45.474380, 33.994003, 31.748253>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.563766, 34.215408, 31.723946>,  <45.712742, 34.584415, 31.683432>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.563766, 34.215408, 31.723946> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163955, -0.172822, -0.971211,
		0.913461, -0.345108, 0.215616,
		-0.372436, -0.922514, 0.101284,
		45.452034, 33.938656, 31.754332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.281422, 34.168812, 31.427500>,  <45.712742, 34.584415, 31.683432>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.281422, 34.168812, 31.427500> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.942982, 33.955688, 31.421513>,  <45.739918, 33.827816, 31.417919>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.942982, 33.955688, 31.421513>,  <46.281422, 34.168812, 31.427500>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.942982, 33.955688, 31.421513> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227103, -0.334951, -0.914457,
		0.482215, -0.777126, 0.404406,
		-0.846104, -0.532807, -0.014969,
		45.689152, 33.795845, 31.417023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.476223, 33.482944, 31.484358>,  <46.281422, 34.168812, 31.427500>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.476223, 33.482944, 31.484358> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.111862, 33.463516, 31.320454>,  <45.893246, 33.451859, 31.222111>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.111862, 33.463516, 31.320454>,  <46.476223, 33.482944, 31.484358>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.111862, 33.463516, 31.320454> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392907, -0.405434, -0.825377,
		-0.126045, -0.912833, 0.388391,
		-0.910899, -0.048567, -0.409761,
		45.838593, 33.448948, 31.197525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.384541, 32.777542, 31.278191>,  <46.476223, 33.482944, 31.484358>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.384541, 32.777542, 31.278191> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.121803, 32.995129, 31.069324>,  <45.964161, 33.125679, 30.944004>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.121803, 32.995129, 31.069324>,  <46.384541, 32.777542, 31.278191>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.121803, 32.995129, 31.069324> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232420, -0.512726, -0.826495,
		-0.717311, -0.664241, 0.210354,
		-0.656846, 0.543963, -0.522166,
		45.924751, 33.158318, 30.912674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.938755, 32.301231, 30.822096>,  <46.384541, 32.777542, 31.278191>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.938755, 32.301231, 30.822096> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.879368, 32.661575, 30.658920>,  <45.843735, 32.877781, 30.561016>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.879368, 32.661575, 30.658920>,  <45.938755, 32.301231, 30.822096>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.879368, 32.661575, 30.658920> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226701, -0.370520, -0.900734,
		-0.962582, -0.226212, -0.149214,
		-0.148470, 0.900857, -0.407938,
		45.834827, 32.931831, 30.536539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.519775, 32.168621, 30.302780>,  <45.938755, 32.301231, 30.822096>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.519775, 32.168621, 30.302780> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.692196, 32.521416, 30.226580>,  <45.795647, 32.733093, 30.180861>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.692196, 32.521416, 30.226580>,  <45.519775, 32.168621, 30.302780>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.692196, 32.521416, 30.226580> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307324, -0.342001, -0.888024,
		-0.848378, 0.324240, -0.418477,
		0.431053, 0.881989, -0.190499,
		45.821510, 32.786011, 30.169430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.306168, 32.256889, 29.658743>,  <45.519775, 32.168621, 30.302780>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.306168, 32.256889, 29.658743> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.621487, 32.494125, 29.724258>,  <45.810680, 32.636467, 29.763567>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.621487, 32.494125, 29.724258>,  <45.306168, 32.256889, 29.658743>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.621487, 32.494125, 29.724258> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433695, -0.346769, -0.831661,
		-0.436452, 0.726634, -0.530578,
		0.788301, 0.593089, 0.163789,
		45.857975, 32.672050, 29.773396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.393948, 32.455547, 29.017921>,  <45.306168, 32.256889, 29.658743>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.393948, 32.455547, 29.017921> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.748283, 32.500366, 29.198027>,  <45.960884, 32.527260, 29.306089>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.748283, 32.500366, 29.198027>,  <45.393948, 32.455547, 29.017921>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.748283, 32.500366, 29.198027> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463941, -0.198892, -0.863250,
		-0.007175, 0.973595, -0.228172,
		0.885837, 0.112052, 0.450263,
		46.014034, 32.533981, 29.333105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.769161, 32.738556, 28.455101>,  <45.393948, 32.455547, 29.017921>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.769161, 32.738556, 28.455101> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.049042, 32.622055, 28.716051>,  <46.216969, 32.552155, 28.872622>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.049042, 32.622055, 28.716051>,  <45.769161, 32.738556, 28.455101>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.049042, 32.622055, 28.716051> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510940, -0.434242, -0.741872,
		0.499362, 0.852411, -0.155024,
		0.699698, -0.291255, 0.652375,
		46.258953, 32.534679, 28.911764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.445477, 33.013485, 28.266760>,  <45.769161, 32.738556, 28.455101>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.445477, 33.013485, 28.266760> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.504581, 32.685986, 28.488686>,  <46.540047, 32.489487, 28.621841>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.504581, 32.685986, 28.488686>,  <46.445477, 33.013485, 28.266760>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.504581, 32.685986, 28.488686> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479049, -0.431527, -0.764393,
		0.865262, 0.378735, 0.328454,
		0.147765, -0.818746, 0.554816,
		46.548912, 32.440361, 28.655130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.189247, 32.763477, 28.121622>,  <46.445477, 33.013485, 28.266760>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.189247, 32.763477, 28.121622> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.027889, 32.442497, 28.297510>,  <46.931076, 32.249908, 28.403042>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.027889, 32.442497, 28.297510>,  <47.189247, 32.763477, 28.121622>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.027889, 32.442497, 28.297510> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559734, -0.596559, -0.575165,
		0.723857, 0.014106, 0.689806,
		-0.403396, -0.802445, 0.439719,
		46.906872, 32.201763, 28.429426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.726616, 32.324368, 28.208004>,  <47.189247, 32.763477, 28.121622>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.726616, 32.324368, 28.208004> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.406021, 32.085262, 28.214792>,  <47.213665, 31.941799, 28.218866>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.406021, 32.085262, 28.214792>,  <47.726616, 32.324368, 28.208004>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.406021, 32.085262, 28.214792> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445508, -0.615791, -0.649865,
		0.398919, -0.513299, 0.759861,
		-0.801490, -0.597767, 0.016972,
		47.165573, 31.905931, 28.219883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.004589, 31.557348, 28.214602>,  <47.726616, 32.324368, 28.208004>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.004589, 31.557348, 28.214602> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.629913, 31.561005, 28.074587>,  <47.405109, 31.563198, 27.990578>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.629913, 31.561005, 28.074587>,  <48.004589, 31.557348, 28.214602>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.629913, 31.561005, 28.074587> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231440, -0.734002, -0.638496,
		-0.262767, -0.679086, 0.685417,
		-0.936690, 0.009142, -0.350039,
		47.348907, 31.563747, 27.969576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.034550, 30.887272, 27.953588>,  <48.004589, 31.557348, 28.214602>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.034550, 30.887272, 27.953588> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.699139, 31.025684, 27.785242>,  <47.497890, 31.108732, 27.684235>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.699139, 31.025684, 27.785242>,  <48.034550, 30.887272, 27.953588>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.699139, 31.025684, 27.785242> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314703, -0.322973, -0.892553,
		-0.444782, -0.880880, 0.161925,
		-0.838529, 0.346033, -0.420868,
		47.447578, 31.129494, 27.658981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.716480, 30.379271, 27.687332>,  <48.034550, 30.887272, 27.953588>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.716480, 30.379271, 27.687332> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.569447, 30.666164, 27.450533>,  <47.481228, 30.838301, 27.308453>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.569447, 30.666164, 27.450533>,  <47.716480, 30.379271, 27.687332>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.569447, 30.666164, 27.450533> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280746, -0.521285, -0.805881,
		-0.886604, -0.462426, -0.009746,
		-0.367580, 0.717233, -0.591998,
		47.459171, 30.881334, 27.272934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<39.689812, 39.536201, 39.352894> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.376034, 39.292126, 39.397285>,  <39.187767, 39.145679, 39.423920>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.376034, 39.292126, 39.397285>,  <39.689812, 39.536201, 39.352894>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.376034, 39.292126, 39.397285> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339540, -0.572270, -0.746471,
		0.519001, -0.547881, 0.656097,
		-0.784443, -0.610191, 0.110981,
		39.140701, 39.109070, 39.430580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.916222, 38.827320, 39.320499>,  <39.689812, 39.536201, 39.352894>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.916222, 38.827320, 39.320499> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.524200, 38.816521, 39.241734>,  <39.288990, 38.810040, 39.194473>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.524200, 38.816521, 39.241734>,  <39.916222, 38.827320, 39.320499>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.524200, 38.816521, 39.241734> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173228, -0.601766, -0.779660,
		-0.097443, -0.798216, 0.594437,
		-0.980049, -0.027001, -0.196911,
		39.230186, 38.808422, 39.182659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.785954, 38.083027, 39.223488>,  <39.916222, 38.827320, 39.320499>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.785954, 38.083027, 39.223488> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.483463, 38.284519, 39.056450>,  <39.301971, 38.405415, 38.956226>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.483463, 38.284519, 39.056450>,  <39.785954, 38.083027, 39.223488>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.483463, 38.284519, 39.056450> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138251, -0.500793, -0.854455,
		-0.639542, -0.703891, 0.309070,
		-0.756223, 0.503730, -0.417592,
		39.256596, 38.435638, 38.931171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.525730, 37.590015, 38.726486>,  <39.785954, 38.083027, 39.223488>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.525730, 37.590015, 38.726486> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.319935, 37.917332, 38.623959>,  <39.196457, 38.113724, 38.562443>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.319935, 37.917332, 38.623959>,  <39.525730, 37.590015, 38.726486>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.319935, 37.917332, 38.623959> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042703, -0.322996, -0.945436,
		-0.856434, -0.475469, 0.201120,
		-0.514487, 0.818293, -0.256321,
		39.165588, 38.162819, 38.547062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.890572, 37.390453, 38.400158>,  <39.525730, 37.590015, 38.726486>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.890572, 37.390453, 38.400158> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.969940, 37.761055, 38.272266>,  <39.017559, 37.983414, 38.195530>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.969940, 37.761055, 38.272266>,  <38.890572, 37.390453, 38.400158>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.969940, 37.761055, 38.272266> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131602, -0.348449, -0.928043,
		-0.971242, 0.142062, -0.191068,
		0.198417, 0.926499, -0.319733,
		39.029465, 38.039005, 38.176346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.520546, 37.388077, 37.751865>,  <38.890572, 37.390453, 38.400158>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.520546, 37.388077, 37.751865> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.756798, 37.710854, 37.751499>,  <38.898548, 37.904518, 37.751278>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.756798, 37.710854, 37.751499>,  <38.520546, 37.388077, 37.751865>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.756798, 37.710854, 37.751499> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094977, -0.070646, -0.992970,
		-0.801333, 0.586391, -0.118366,
		0.590631, 0.806941, -0.000917,
		38.933987, 37.952934, 37.751225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.293056, 37.974117, 37.281620>,  <38.520546, 37.388077, 37.751865>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.293056, 37.974117, 37.281620> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.688805, 38.024109, 37.311340>,  <38.926254, 38.054104, 37.329174>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.688805, 38.024109, 37.311340>,  <38.293056, 37.974117, 37.281620>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.688805, 38.024109, 37.311340> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065593, 0.072436, -0.995214,
		-0.129763, 0.989511, 0.063468,
		0.989373, 0.124979, 0.074304,
		38.985615, 38.061604, 37.333633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.507259, 38.594746, 36.840027>,  <38.293056, 37.974117, 37.281620>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.507259, 38.594746, 36.840027> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.811817, 38.342712, 36.901043>,  <38.994553, 38.191494, 36.937653>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.811817, 38.342712, 36.901043>,  <38.507259, 38.594746, 36.840027>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.811817, 38.342712, 36.901043> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067788, -0.156623, -0.985329,
		0.644730, 0.760569, -0.076540,
		0.761399, -0.630083, 0.152537,
		39.040237, 38.153687, 36.946804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.059422, 38.832600, 36.483803>,  <38.507259, 38.594746, 36.840027>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.059422, 38.832600, 36.483803> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.131184, 38.446217, 36.558361>,  <39.174240, 38.214386, 36.603096>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.131184, 38.446217, 36.558361>,  <39.059422, 38.832600, 36.483803>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.131184, 38.446217, 36.558361> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139503, -0.162580, -0.976784,
		0.973833, 0.201247, 0.105585,
		0.179409, -0.965954, 0.186400,
		39.185005, 38.156429, 36.614281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.455799, 38.709530, 35.864941>,  <39.059422, 38.832600, 36.483803>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.455799, 38.709530, 35.864941> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.386971, 38.347610, 36.020748>,  <39.345673, 38.130459, 36.114231>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.386971, 38.347610, 36.020748>,  <39.455799, 38.709530, 35.864941>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.386971, 38.347610, 36.020748> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042580, -0.388216, -0.920584,
		0.984164, -0.174990, 0.028274,
		-0.172070, -0.904802, 0.389519,
		39.335350, 38.076168, 36.137604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.954571, 38.269547, 35.535927>,  <39.455799, 38.709530, 35.864941>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.954571, 38.269547, 35.535927> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.667843, 38.018311, 35.657032>,  <39.495808, 37.867569, 35.729694>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.667843, 38.018311, 35.657032>,  <39.954571, 38.269547, 35.535927>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.667843, 38.018311, 35.657032> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019128, -0.451775, -0.891927,
		0.696997, -0.633558, 0.335855,
		-0.716819, -0.628095, 0.302767,
		39.452797, 37.829884, 35.747864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.147968, 37.596947, 35.380661>,  <39.954571, 38.269547, 35.535927>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.147968, 37.596947, 35.380661> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.749756, 37.603870, 35.417778>,  <39.510826, 37.608025, 35.440048>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.749756, 37.603870, 35.417778>,  <40.147968, 37.596947, 35.380661>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.749756, 37.603870, 35.417778> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093475, -0.317275, -0.943715,
		0.013109, -0.948176, 0.317476,
		-0.995535, 0.017305, 0.092790,
		39.451096, 37.609062, 35.445614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.904667, 37.028828, 35.166039>,  <40.147968, 37.596947, 35.380661>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.904667, 37.028828, 35.166039> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.614269, 37.296207, 35.101406>,  <39.440029, 37.456635, 35.062626>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.614269, 37.296207, 35.101406>,  <39.904667, 37.028828, 35.166039>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.614269, 37.296207, 35.101406> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083920, -0.319318, -0.943925,
		-0.682559, -0.671726, 0.287920,
		-0.725996, 0.668446, -0.161582,
		39.396469, 37.496742, 35.052933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.305557, 36.708553, 34.991291>,  <39.904667, 37.028828, 35.166039>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.305557, 36.708553, 34.991291> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.227779, 37.068462, 34.835033>,  <39.181110, 37.284409, 34.741280>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.227779, 37.068462, 34.835033>,  <39.305557, 36.708553, 34.991291>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.227779, 37.068462, 34.835033> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272349, -0.432113, -0.859712,
		-0.942346, -0.060777, 0.329075,
		-0.194449, 0.899769, -0.390647,
		39.169445, 37.338394, 34.717838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.068615, 36.067848, 34.559410>,  <39.305557, 36.708553, 34.991291>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.068615, 36.067848, 34.559410> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.372383, 36.159309, 34.315773>,  <39.554642, 36.214188, 34.169590>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.372383, 36.159309, 34.315773>,  <39.068615, 36.067848, 34.559410>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.372383, 36.159309, 34.315773> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524397, 0.339004, 0.781079,
		0.385087, -0.912574, 0.137537,
		0.759418, 0.228659, -0.609097,
		39.600208, 36.227905, 34.133045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.524895, 35.751953, 34.898418>,  <39.068615, 36.067848, 34.559410>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.524895, 35.751953, 34.898418> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.870403, 35.569035, 34.983063>,  <40.077709, 35.459282, 35.033852>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.870403, 35.569035, 34.983063>,  <39.524895, 35.751953, 34.898418>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.870403, 35.569035, 34.983063> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403581, -0.376412, 0.833928,
		-0.301695, -0.805728, -0.509689,
		0.863772, -0.457293, 0.211615,
		40.129536, 35.431847, 35.046547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.377083, 35.042809, 34.970417>,  <39.524895, 35.751953, 34.898418>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.377083, 35.042809, 34.970417> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.705002, 35.135971, 35.179680>,  <39.901752, 35.191868, 35.305237>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.705002, 35.135971, 35.179680>,  <39.377083, 35.042809, 34.970417>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.705002, 35.135971, 35.179680> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426304, -0.361769, 0.829089,
		0.382365, -0.902705, -0.197285,
		0.819794, 0.232911, 0.523154,
		39.950939, 35.205845, 35.336628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.579494, 34.440495, 35.307133>,  <39.377083, 35.042809, 34.970417>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.579494, 34.440495, 35.307133> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.738636, 34.735580, 35.525303>,  <39.834122, 34.912632, 35.656204>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.738636, 34.735580, 35.525303>,  <39.579494, 34.440495, 35.307133>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.738636, 34.735580, 35.525303> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374165, -0.412347, 0.830644,
		0.837684, -0.534553, 0.111974,
		0.397852, 0.737714, 0.545428,
		39.857990, 34.956894, 35.688931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.871120, 34.074585, 35.912128>,  <39.579494, 34.440495, 35.307133>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.871120, 34.074585, 35.912128> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.837090, 34.457188, 36.023735>,  <39.816673, 34.686749, 36.090698>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.837090, 34.457188, 36.023735>,  <39.871120, 34.074585, 35.912128>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.837090, 34.457188, 36.023735> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226820, -0.291268, 0.929363,
		0.970214, 0.015779, 0.241735,
		-0.085075, 0.956511, 0.279013,
		39.811565, 34.744141, 36.107441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.354622, 34.098087, 36.475143>,  <39.871120, 34.074585, 35.912128>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.354622, 34.098087, 36.475143> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.094055, 34.399471, 36.510822>,  <39.937714, 34.580299, 36.532230>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.094055, 34.399471, 36.510822>,  <40.354622, 34.098087, 36.475143>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.094055, 34.399471, 36.510822> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048308, -0.076138, 0.995926,
		0.757179, 0.653074, 0.013200,
		-0.651419, 0.753457, 0.089199,
		39.898628, 34.625507, 36.537582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.520557, 34.469131, 37.049934>,  <40.354622, 34.098087, 36.475143>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.520557, 34.469131, 37.049934> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.152351, 34.619434, 37.007118>,  <39.931427, 34.709618, 36.981426>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.152351, 34.619434, 37.007118>,  <40.520557, 34.469131, 37.049934>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.152351, 34.619434, 37.007118> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137612, -0.055397, 0.988936,
		0.365669, 0.925061, 0.102702,
		-0.920516, 0.375756, -0.107042,
		39.876198, 34.732162, 36.975006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.467072, 35.039581, 37.591091>,  <40.520557, 34.469131, 37.049934>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.467072, 35.039581, 37.591091> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.092873, 34.953163, 37.479263>,  <39.868351, 34.901310, 37.412167>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.092873, 34.953163, 37.479263>,  <40.467072, 35.039581, 37.591091>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.092873, 34.953163, 37.479263> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307402, 0.107611, 0.945475,
		-0.174184, 0.970434, -0.167085,
		-0.935502, -0.216049, -0.279570,
		39.812222, 34.888348, 37.395393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.117489, 35.628788, 37.831158>,  <40.467072, 35.039581, 37.591091>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.117489, 35.628788, 37.831158> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.849590, 35.341988, 37.753857>,  <39.688850, 35.169907, 37.707474>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.849590, 35.341988, 37.753857>,  <40.117489, 35.628788, 37.831158>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.849590, 35.341988, 37.753857> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408954, 0.138906, 0.901921,
		-0.619833, 0.683093, -0.386252,
		-0.669749, -0.717000, -0.193255,
		39.648666, 35.126888, 37.695881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.517818, 35.941883, 37.884781>,  <40.117489, 35.628788, 37.831158>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.517818, 35.941883, 37.884781> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.445301, 35.553478, 37.947094>,  <39.401791, 35.320435, 37.984482>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.445301, 35.553478, 37.947094>,  <39.517818, 35.941883, 37.884781>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.445301, 35.553478, 37.947094> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343508, 0.210954, 0.915151,
		-0.921486, 0.112394, -0.371794,
		-0.181289, -0.971013, 0.155783,
		39.390915, 35.262173, 37.993828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.858601, 35.877399, 38.265327>,  <39.517818, 35.941883, 37.884781>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.858601, 35.877399, 38.265327> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.050251, 35.533440, 38.335766>,  <39.165241, 35.327065, 38.378029>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.050251, 35.533440, 38.335766>,  <38.858601, 35.877399, 38.265327>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.050251, 35.533440, 38.335766> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261471, 0.051694, 0.963826,
		-0.837900, -0.507834, -0.200072,
		0.479121, -0.859902, 0.176099,
		39.193989, 35.275471, 38.388596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.524555, 35.440575, 38.676754>,  <38.858601, 35.877399, 38.265327>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.524555, 35.440575, 38.676754> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.879375, 35.265572, 38.735722>,  <39.092266, 35.160568, 38.771103>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.879375, 35.265572, 38.735722>,  <38.524555, 35.440575, 38.676754>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.879375, 35.265572, 38.735722> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170166, -0.012997, 0.985330,
		-0.429174, -0.899120, -0.085978,
		0.887048, -0.437509, 0.147422,
		39.145489, 35.134319, 38.779949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.369884, 34.907803, 39.149658>,  <38.524555, 35.440575, 38.676754>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.369884, 34.907803, 39.149658> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.761101, 34.978313, 39.194118>,  <38.995831, 35.020618, 39.220795>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.761101, 34.978313, 39.194118>,  <38.369884, 34.907803, 39.149658>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.761101, 34.978313, 39.194118> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118534, 0.031903, 0.992437,
		0.171398, -0.983823, 0.052097,
		0.978046, 0.176277, 0.111148,
		39.054516, 35.031197, 39.227463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.622135, 34.502716, 39.792625>,  <38.369884, 34.907803, 39.149658>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.622135, 34.502716, 39.792625> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.892975, 34.790012, 39.728550>,  <39.055481, 34.962391, 39.690105>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.892975, 34.790012, 39.728550>,  <38.622135, 34.502716, 39.792625>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.892975, 34.790012, 39.728550> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024987, 0.195115, 0.980462,
		0.735466, -0.667875, 0.114166,
		0.677101, 0.718243, -0.160189,
		39.096104, 35.005486, 39.680492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.682396, 33.993099, 40.349461>,  <38.622135, 34.502716, 39.792625>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.682396, 33.993099, 40.349461> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.356689, 33.849110, 40.531620>,  <38.161266, 33.762718, 40.640915>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.356689, 33.849110, 40.531620>,  <38.682396, 33.993099, 40.349461>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.356689, 33.849110, 40.531620> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300067, -0.410555, -0.861048,
		0.496919, -0.837774, 0.226287,
		-0.814267, -0.359971, 0.455401,
		38.112408, 33.741119, 40.668240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.683342, 33.379414, 40.083138>,  <38.682396, 33.993099, 40.349461>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.683342, 33.379414, 40.083138> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.321209, 33.480659, 40.219551>,  <38.103928, 33.541409, 40.301399>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.321209, 33.480659, 40.219551>,  <38.683342, 33.379414, 40.083138>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.321209, 33.480659, 40.219551> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403199, -0.259978, -0.877406,
		-0.133423, -0.931850, 0.337423,
		-0.905334, 0.253114, 0.341034,
		38.049610, 33.556595, 40.321861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.307297, 32.747860, 39.976616>,  <38.683342, 33.379414, 40.083138>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.307297, 32.747860, 39.976616> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.045322, 33.048969, 40.003155>,  <37.888138, 33.229633, 40.019077>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.045322, 33.048969, 40.003155>,  <38.307297, 32.747860, 39.976616>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.045322, 33.048969, 40.003155> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397575, -0.268576, -0.877383,
		-0.642649, -0.601003, 0.475182,
		-0.654932, 0.752770, 0.066344,
		37.848843, 33.274799, 40.023060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.740490, 32.529861, 39.551193>,  <38.307297, 32.747860, 39.976616>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.740490, 32.529861, 39.551193> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.641571, 32.914989, 39.594681>,  <37.582218, 33.146065, 39.620773>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.641571, 32.914989, 39.594681>,  <37.740490, 32.529861, 39.551193>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.641571, 32.914989, 39.594681> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231143, 0.050346, -0.971616,
		-0.940966, -0.265407, 0.210099,
		-0.247296, 0.962821, 0.108721,
		37.567383, 33.203835, 39.627296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.920036, 32.582466, 39.413822>,  <37.740490, 32.529861, 39.551193>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.920036, 32.582466, 39.413822> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.081532, 32.940388, 39.337582>,  <37.178429, 33.155140, 39.291840>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.081532, 32.940388, 39.337582>,  <36.920036, 32.582466, 39.413822>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.081532, 32.940388, 39.337582> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524361, 0.055607, -0.849678,
		-0.749693, 0.442991, 0.491649,
		0.403739, 0.894799, -0.190599,
		37.202652, 33.208828, 39.280403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.344910, 32.982933, 39.135319>,  <36.920036, 32.582466, 39.413822>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.344910, 32.982933, 39.135319> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.675003, 33.180370, 39.025513>,  <36.873058, 33.298832, 38.959629>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.675003, 33.180370, 39.025513>,  <36.344910, 32.982933, 39.135319>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.675003, 33.180370, 39.025513> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523866, 0.487295, -0.698647,
		-0.211078, 0.720354, 0.660708,
		0.825233, 0.493592, -0.274512,
		36.922573, 33.328449, 38.943157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.069965, 33.629807, 39.054939>,  <36.344910, 32.982933, 39.135319>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.069965, 33.629807, 39.054939> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.415318, 33.631252, 38.853123>,  <36.622528, 33.632118, 38.732033>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.415318, 33.631252, 38.853123>,  <36.069965, 33.629807, 39.054939>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.415318, 33.631252, 38.853123> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473946, 0.348816, -0.808519,
		0.173070, 0.937184, 0.302873,
		0.863378, 0.003615, -0.504544,
		36.674332, 33.632336, 38.701759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.170357, 34.322395, 38.669952>,  <36.069965, 33.629807, 39.054939>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.170357, 34.322395, 38.669952> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.409611, 34.060555, 38.485027>,  <36.553162, 33.903450, 38.374073>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.409611, 34.060555, 38.485027>,  <36.170357, 34.322395, 38.669952>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.409611, 34.060555, 38.485027> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331881, 0.322758, -0.886387,
		0.729448, 0.683608, -0.024199,
		0.598131, -0.654605, -0.462312,
		36.589050, 33.864174, 38.346333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.390396, 34.721004, 38.105648>,  <36.170357, 34.322395, 38.669952>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.390396, 34.721004, 38.105648> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.471840, 34.350948, 37.977482>,  <36.520706, 34.128914, 37.900581>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.471840, 34.350948, 37.977482>,  <36.390396, 34.721004, 38.105648>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.471840, 34.350948, 37.977482> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319545, 0.246551, -0.914933,
		0.925436, 0.288678, -0.245422,
		0.203612, -0.925136, -0.320413,
		36.532925, 34.073406, 37.881359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.907341, 34.747868, 37.492573>,  <36.390396, 34.721004, 38.105648>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.907341, 34.747868, 37.492573> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.707062, 34.401688, 37.485733>,  <36.586895, 34.193977, 37.481628>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.707062, 34.401688, 37.485733>,  <36.907341, 34.747868, 37.492573>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.707062, 34.401688, 37.485733> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224329, 0.148814, -0.963084,
		0.836051, -0.478375, -0.268657,
		-0.500696, -0.865455, -0.017103,
		36.556854, 34.142052, 37.480602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.986576, 34.542755, 36.800743>,  <36.907341, 34.747868, 37.492573>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.986576, 34.542755, 36.800743> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.692795, 34.295723, 36.913303>,  <36.516525, 34.147503, 36.980839>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.692795, 34.295723, 36.913303>,  <36.986576, 34.542755, 36.800743>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.692795, 34.295723, 36.913303> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405085, 0.066253, -0.911875,
		0.544510, -0.783715, -0.298830,
		-0.734449, -0.617577, 0.281396,
		36.472462, 34.110451, 36.997723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.933231, 34.000347, 36.258724>,  <36.986576, 34.542755, 36.800743>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.933231, 34.000347, 36.258724> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.575413, 33.989151, 36.437164>,  <36.360722, 33.982433, 36.544228>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.575413, 33.989151, 36.437164>,  <36.933231, 34.000347, 36.258724>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.575413, 33.989151, 36.437164> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446980, 0.055742, -0.892806,
		0.000116, -0.998053, -0.062371,
		-0.894544, -0.027983, 0.446103,
		36.307049, 33.980755, 36.570995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<39.028133, 34.443787, 44.526611> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.652203, 34.556713, 44.449657>,  <38.426643, 34.624470, 44.403484>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.652203, 34.556713, 44.449657>,  <39.028133, 34.443787, 44.526611>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.652203, 34.556713, 44.449657> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007767, -0.545328, -0.838187,
		-0.341549, -0.789249, 0.510324,
		-0.939832, 0.282318, -0.192387,
		38.370255, 34.641407, 44.391941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.799500, 33.923519, 44.123241>,  <39.028133, 34.443787, 44.526611>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.799500, 33.923519, 44.123241> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.516045, 34.199409, 44.063763>,  <38.345970, 34.364944, 44.028076>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.516045, 34.199409, 44.063763>,  <38.799500, 33.923519, 44.123241>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.516045, 34.199409, 44.063763> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167596, -0.369258, -0.914090,
		-0.685376, -0.622840, 0.377266,
		-0.708640, 0.689724, -0.148695,
		38.303452, 34.406326, 44.019154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.144909, 33.587414, 43.887512>,  <38.799500, 33.923519, 44.123241>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.144909, 33.587414, 43.887512> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.121735, 33.974739, 43.790344>,  <38.107830, 34.207134, 43.732044>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.121735, 33.974739, 43.790344>,  <38.144909, 33.587414, 43.887512>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.121735, 33.974739, 43.790344> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265516, -0.249506, -0.931262,
		-0.962364, 0.010548, 0.271558,
		-0.057933, 0.968316, -0.242916,
		38.104355, 34.265232, 43.717468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.499939, 33.643898, 43.443981>,  <38.144909, 33.587414, 43.887512>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.499939, 33.643898, 43.443981> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.739513, 33.949547, 43.348160>,  <37.883259, 34.132938, 43.290668>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.739513, 33.949547, 43.348160>,  <37.499939, 33.643898, 43.443981>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.739513, 33.949547, 43.348160> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043629, -0.267558, -0.962554,
		-0.799606, 0.586961, -0.126913,
		0.598938, 0.764127, -0.239549,
		37.919193, 34.178783, 43.276295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.166950, 33.956318, 42.880299>,  <37.499939, 33.643898, 43.443981>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.166950, 33.956318, 42.880299> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.552418, 34.062164, 42.865753>,  <37.783699, 34.125671, 42.857025>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.552418, 34.062164, 42.865753>,  <37.166950, 33.956318, 42.880299>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.552418, 34.062164, 42.865753> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015835, -0.079309, -0.996724,
		-0.266637, 0.961086, -0.072237,
		0.963667, 0.264620, -0.036366,
		37.841518, 34.141552, 42.854843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.192093, 34.482540, 42.365181>,  <37.166950, 33.956318, 42.880299>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.192093, 34.482540, 42.365181> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.546219, 34.299896, 42.400318>,  <37.758694, 34.190308, 42.421402>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.546219, 34.299896, 42.400318>,  <37.192093, 34.482540, 42.365181>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.546219, 34.299896, 42.400318> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076736, -0.042858, -0.996130,
		0.458611, 0.888632, -0.002905,
		0.885318, -0.456613, 0.087845,
		37.811813, 34.162910, 42.426670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.591259, 34.752884, 41.865227>,  <37.192093, 34.482540, 42.365181>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.591259, 34.752884, 41.865227> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.780655, 34.410427, 41.948002>,  <37.894295, 34.204952, 41.997669>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.780655, 34.410427, 41.948002>,  <37.591259, 34.752884, 41.865227>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.780655, 34.410427, 41.948002> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118460, -0.170915, -0.978139,
		0.872795, 0.487656, 0.020491,
		0.473493, -0.856142, 0.206942,
		37.922703, 34.153584, 42.010086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.896393, 34.742790, 41.267723>,  <37.591259, 34.752884, 41.865227>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.896393, 34.742790, 41.267723> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.968582, 34.377071, 41.412773>,  <38.011894, 34.157642, 41.499805>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.968582, 34.377071, 41.412773>,  <37.896393, 34.742790, 41.267723>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.968582, 34.377071, 41.412773> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017132, -0.365704, -0.930574,
		0.983431, 0.174154, -0.050336,
		0.180471, -0.914293, 0.362629,
		38.022724, 34.102783, 41.521561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.500607, 34.496914, 40.892960>,  <37.896393, 34.742790, 41.267723>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.500607, 34.496914, 40.892960> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.264496, 34.203220, 41.027107>,  <38.122829, 34.027004, 41.107597>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.264496, 34.203220, 41.027107>,  <38.500607, 34.496914, 40.892960>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.264496, 34.203220, 41.027107> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009025, -0.409441, -0.912292,
		0.807151, -0.541531, 0.235057,
		-0.590276, -0.734236, 0.335368,
		38.087414, 33.982948, 41.127716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.007572, 34.687256, 40.372364>,  <38.500607, 34.496914, 40.892960>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.007572, 34.687256, 40.372364> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.151127, 34.999081, 40.167042>,  <39.237259, 35.186176, 40.043846>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.151127, 34.999081, 40.167042>,  <39.007572, 34.687256, 40.372364>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.151127, 34.999081, 40.167042> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239976, 0.454394, 0.857868,
		0.902006, -0.431056, -0.024002,
		0.358883, 0.779562, -0.513309,
		39.258793, 35.232948, 40.013050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.822674, 34.746979, 40.472294>,  <39.007572, 34.687256, 40.372364>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.822674, 34.746979, 40.472294> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.639000, 35.088966, 40.375813>,  <39.528797, 35.294159, 40.317924>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.639000, 35.088966, 40.375813>,  <39.822674, 34.746979, 40.472294>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.639000, 35.088966, 40.375813> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426557, 0.450376, 0.784353,
		0.779232, 0.257271, -0.571497,
		-0.459180, 0.854970, -0.241206,
		39.501247, 35.345459, 40.303452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.306263, 35.235104, 40.623306>,  <39.822674, 34.746979, 40.472294>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.306263, 35.235104, 40.623306> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.957970, 35.430893, 40.642231>,  <39.748993, 35.548367, 40.653584>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.957970, 35.430893, 40.642231>,  <40.306263, 35.235104, 40.623306>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.957970, 35.430893, 40.642231> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241767, 0.342329, 0.907942,
		0.428216, 0.802016, -0.416416,
		-0.870735, 0.489471, 0.047310,
		39.696751, 35.577736, 40.656425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.405117, 35.858120, 40.904102>,  <40.306263, 35.235104, 40.623306>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.405117, 35.858120, 40.904102> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.006329, 35.853920, 40.934917>,  <39.767056, 35.851398, 40.953407>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.006329, 35.853920, 40.934917>,  <40.405117, 35.858120, 40.904102>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.006329, 35.853920, 40.934917> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059263, 0.538717, 0.840400,
		-0.050324, 0.842422, -0.536464,
		-0.996973, -0.010500, 0.077034,
		39.707237, 35.850769, 40.958027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.250683, 36.507210, 41.201317>,  <40.405117, 35.858120, 40.904102>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.250683, 36.507210, 41.201317> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.925903, 36.291077, 41.289661>,  <39.731033, 36.161396, 41.342667>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.925903, 36.291077, 41.289661>,  <40.250683, 36.507210, 41.201317>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.925903, 36.291077, 41.289661> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037299, 0.329565, 0.943396,
		-0.582533, 0.774229, -0.247437,
		-0.811951, -0.540330, 0.220861,
		39.682320, 36.128979, 41.355919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.850471, 36.893429, 41.681236>,  <40.250683, 36.507210, 41.201317>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.850471, 36.893429, 41.681236> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.677120, 36.537174, 41.736305>,  <39.573109, 36.323421, 41.769348>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.677120, 36.537174, 41.736305>,  <39.850471, 36.893429, 41.681236>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.677120, 36.537174, 41.736305> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031570, 0.167672, 0.985337,
		-0.900657, 0.422681, -0.100784,
		-0.433382, -0.890633, 0.137671,
		39.547104, 36.269985, 41.777607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.256489, 36.996777, 42.175793>,  <39.850471, 36.893429, 41.681236>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.256489, 36.996777, 42.175793> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.382618, 36.617214, 42.180614>,  <39.458294, 36.389477, 42.183506>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.382618, 36.617214, 42.180614>,  <39.256489, 36.996777, 42.175793>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.382618, 36.617214, 42.180614> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182212, 0.073001, 0.980546,
		-0.931329, -0.306988, 0.195921,
		0.315319, -0.948909, 0.012050,
		39.477215, 36.332542, 42.184231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.901428, 36.711617, 42.801579>,  <39.256489, 36.996777, 42.175793>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.901428, 36.711617, 42.801579> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.215427, 36.477299, 42.720963>,  <39.403828, 36.336708, 42.672592>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.215427, 36.477299, 42.720963>,  <38.901428, 36.711617, 42.801579>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.215427, 36.477299, 42.720963> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171580, -0.107012, 0.979341,
		-0.595262, -0.803362, 0.016507,
		0.784999, -0.585796, -0.201541,
		39.450928, 36.301559, 42.660500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.861488, 36.182117, 43.346600>,  <38.901428, 36.711617, 42.801579>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.861488, 36.182117, 43.346600> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.228596, 36.193333, 43.188148>,  <39.448860, 36.200062, 43.093079>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.228596, 36.193333, 43.188148>,  <38.861488, 36.182117, 43.346600>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.228596, 36.193333, 43.188148> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397107, -0.072569, 0.914899,
		-0.003095, -0.996969, -0.077735,
		0.917767, 0.028037, -0.396128,
		39.503925, 36.201744, 43.069309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.166908, 35.513248, 43.570381>,  <38.861488, 36.182117, 43.346600>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.166908, 35.513248, 43.570381> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.443707, 35.794006, 43.502865>,  <39.609783, 35.962460, 43.462357>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.443707, 35.794006, 43.502865>,  <39.166908, 35.513248, 43.570381>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.443707, 35.794006, 43.502865> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341814, -0.112628, 0.932994,
		0.635852, -0.703321, -0.317855,
		0.691993, 0.701894, -0.168790,
		39.651306, 36.004574, 43.452229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.701698, 35.302631, 43.953815>,  <39.166908, 35.513248, 43.570381>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.701698, 35.302631, 43.953815> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.764027, 35.691154, 43.881954>,  <39.801422, 35.924271, 43.838837>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.764027, 35.691154, 43.881954>,  <39.701698, 35.302631, 43.953815>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.764027, 35.691154, 43.881954> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267004, 0.133686, 0.954378,
		0.951015, -0.196680, -0.238513,
		0.155821, 0.971311, -0.179652,
		39.810772, 35.982548, 43.828060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.376492, 35.396969, 44.306553>,  <39.701698, 35.302631, 43.953815>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.376492, 35.396969, 44.306553> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.260979, 35.774441, 44.241959>,  <40.191669, 36.000923, 44.203201>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.260979, 35.774441, 44.241959>,  <40.376492, 35.396969, 44.306553>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.260979, 35.774441, 44.241959> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356506, 0.262535, 0.896649,
		0.888541, 0.201370, -0.412243,
		-0.288786, 0.943677, -0.161483,
		40.174343, 36.057545, 44.193512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.871361, 35.765175, 44.555176>,  <40.376492, 35.396969, 44.306553>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.871361, 35.765175, 44.555176> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.566387, 36.022026, 44.523258>,  <40.383404, 36.176136, 44.504108>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.566387, 36.022026, 44.523258>,  <40.871361, 35.765175, 44.555176>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.566387, 36.022026, 44.523258> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133167, 0.276379, 0.951778,
		0.633219, 0.715039, -0.296230,
		-0.762430, 0.642132, -0.079789,
		40.337658, 36.214664, 44.499321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.132942, 36.360840, 44.905293>,  <40.871361, 35.765175, 44.555176>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.132942, 36.360840, 44.905293> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.735847, 36.408760, 44.900879>,  <40.497589, 36.437511, 44.898232>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.735847, 36.408760, 44.900879>,  <41.132942, 36.360840, 44.905293>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.735847, 36.408760, 44.900879> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046319, 0.465263, 0.883960,
		0.111034, 0.877028, -0.467433,
		-0.992737, 0.119800, -0.011037,
		40.438026, 36.444698, 44.897568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<33.632263, 39.685909, 44.990627> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.891537, 39.392612, 45.072807>,  <34.047100, 39.216633, 45.122116>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.891537, 39.392612, 45.072807>,  <33.632263, 39.685909, 44.990627>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.891537, 39.392612, 45.072807> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039555, -0.237019, -0.970699,
		0.760458, 0.637316, -0.124628,
		0.648182, -0.733246, 0.205452,
		34.085991, 39.172638, 45.134441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.037838, 39.658051, 44.358738>,  <33.632263, 39.685909, 44.990627>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.037838, 39.658051, 44.358738> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.151699, 39.316437, 44.532909>,  <34.220016, 39.111469, 44.637413>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.151699, 39.316437, 44.532909>,  <34.037838, 39.658051, 44.358738>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.151699, 39.316437, 44.532909> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007818, -0.452137, -0.891914,
		0.958598, 0.257291, -0.122025,
		0.284654, -0.854033, 0.435430,
		34.237095, 39.060226, 44.663540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.673267, 39.503361, 43.961918>,  <34.037838, 39.658051, 44.358738>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.673267, 39.503361, 43.961918> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.563534, 39.165825, 44.146389>,  <34.497692, 38.963303, 44.257072>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.563534, 39.165825, 44.146389>,  <34.673267, 39.503361, 43.961918>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.563534, 39.165825, 44.146389> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149860, -0.436199, -0.887284,
		0.949886, -0.312522, -0.006794,
		-0.274333, -0.843837, 0.461174,
		34.481236, 38.912674, 44.284740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.089859, 38.998871, 43.696918>,  <34.673267, 39.503361, 43.961918>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.089859, 38.998871, 43.696918> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.755795, 38.821453, 43.827011>,  <34.555355, 38.715004, 43.905067>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.755795, 38.821453, 43.827011>,  <35.089859, 38.998871, 43.696918>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.755795, 38.821453, 43.827011> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141447, -0.398223, -0.906317,
		0.531502, -0.802926, 0.269844,
		-0.835164, -0.443541, 0.325227,
		34.505245, 38.688393, 43.924580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.178497, 38.283829, 43.528896>,  <35.089859, 38.998871, 43.696918>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.178497, 38.283829, 43.528896> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.791031, 38.341682, 43.609661>,  <34.558552, 38.376396, 43.658119>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.791031, 38.341682, 43.609661>,  <35.178497, 38.283829, 43.528896>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.791031, 38.341682, 43.609661> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237263, -0.298511, -0.924445,
		-0.073437, -0.943383, 0.323474,
		-0.968666, 0.144637, 0.201908,
		34.500431, 38.385075, 43.670235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.793262, 37.635818, 43.292175>,  <35.178497, 38.283829, 43.528896>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.793262, 37.635818, 43.292175> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.512409, 37.920456, 43.302303>,  <34.343899, 38.091240, 43.308380>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.512409, 37.920456, 43.302303>,  <34.793262, 37.635818, 43.292175>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.512409, 37.920456, 43.302303> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321110, -0.284694, -0.903237,
		-0.635533, -0.642322, 0.428394,
		-0.702130, 0.711598, 0.025323,
		34.301769, 38.133934, 43.309902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.241550, 37.345474, 42.837254>,  <34.793262, 37.635818, 43.292175>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.241550, 37.345474, 42.837254> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.180763, 37.740715, 42.846725>,  <34.144291, 37.977859, 42.852409>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.180763, 37.740715, 42.846725>,  <34.241550, 37.345474, 42.837254>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.180763, 37.740715, 42.846725> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290006, -0.021677, -0.956779,
		-0.944881, -0.152270, 0.289850,
		-0.151972, 0.988101, 0.023677,
		34.135170, 38.037144, 42.853828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.659023, 37.501068, 42.396664>,  <34.241550, 37.345474, 42.837254>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.659023, 37.501068, 42.396664> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.853798, 37.847927, 42.438526>,  <33.970661, 38.056042, 42.463642>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.853798, 37.847927, 42.438526>,  <33.659023, 37.501068, 42.396664>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.853798, 37.847927, 42.438526> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202725, 0.228748, -0.952143,
		-0.849585, 0.442418, 0.287178,
		0.486937, 0.867145, 0.104652,
		33.999878, 38.108070, 42.469921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.146011, 37.978069, 42.312332>,  <33.659023, 37.501068, 42.396664>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.146011, 37.978069, 42.312332> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.492710, 38.161114, 42.233002>,  <33.700729, 38.270939, 42.185402>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.492710, 38.161114, 42.233002>,  <33.146011, 37.978069, 42.312332>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.492710, 38.161114, 42.233002> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340616, 0.252658, -0.905618,
		-0.364313, 0.852499, 0.374862,
		0.866751, 0.457612, -0.198328,
		33.752735, 38.298397, 42.173504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.022179, 38.525871, 41.938095>,  <33.146011, 37.978069, 42.312332>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.022179, 38.525871, 41.938095> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.405453, 38.458687, 41.845425>,  <33.635418, 38.418377, 41.789822>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.405453, 38.458687, 41.845425>,  <33.022179, 38.525871, 41.938095>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.405453, 38.458687, 41.845425> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205383, 0.160079, -0.965501,
		0.199252, 0.972710, 0.118889,
		0.958184, -0.167960, -0.231674,
		33.692909, 38.408298, 41.775921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.242481, 38.979568, 41.510384>,  <33.022179, 38.525871, 41.938095>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.242481, 38.979568, 41.510384> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.526398, 38.710697, 41.426125>,  <33.696747, 38.549374, 41.375568>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.526398, 38.710697, 41.426125>,  <33.242481, 38.979568, 41.510384>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.526398, 38.710697, 41.426125> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018257, 0.281390, -0.959420,
		0.704177, 0.684833, 0.187456,
		0.709790, -0.672179, -0.210652,
		33.739334, 38.509045, 41.362930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.401146, 39.254803, 40.993744>,  <33.242481, 38.979568, 41.510384>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.401146, 39.254803, 40.993744> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.606300, 38.911755, 40.978600>,  <33.729393, 38.705925, 40.969513>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.606300, 38.911755, 40.978600>,  <33.401146, 39.254803, 40.993744>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.606300, 38.911755, 40.978600> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024688, 0.029351, -0.999264,
		0.858104, 0.513440, -0.006119,
		0.512882, -0.857624, -0.037862,
		33.760166, 38.654469, 40.967239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.992882, 39.315742, 40.523670>,  <33.401146, 39.254803, 40.993744>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.992882, 39.315742, 40.523670> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.921394, 38.922863, 40.546787>,  <33.878502, 38.687134, 40.560658>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.921394, 38.922863, 40.546787>,  <33.992882, 39.315742, 40.523670>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.921394, 38.922863, 40.546787> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122306, -0.036102, -0.991836,
		0.976268, -0.184330, -0.113677,
		-0.178721, -0.982201, 0.057790,
		33.867779, 38.628204, 40.564125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.535927, 38.924610, 40.084515>,  <33.992882, 39.315742, 40.523670>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.535927, 38.924610, 40.084515> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.215416, 38.686115, 40.104328>,  <34.023109, 38.543018, 40.116219>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.215416, 38.686115, 40.104328>,  <34.535927, 38.924610, 40.084515>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.215416, 38.686115, 40.104328> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019166, -0.057172, -0.998180,
		0.597988, -0.800768, 0.034383,
		-0.801276, -0.596240, 0.049536,
		33.975033, 38.507244, 40.119190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.247261, 38.604027, 40.031261>,  <34.535927, 38.924610, 40.084515>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.247261, 38.604027, 40.031261> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.581409, 38.816513, 39.974751>,  <35.781898, 38.944004, 39.940842>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.581409, 38.816513, 39.974751>,  <35.247261, 38.604027, 40.031261>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.581409, 38.816513, 39.974751> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003852, 0.251360, 0.967886,
		0.549672, -0.809088, 0.207933,
		0.835372, 0.531219, -0.141282,
		35.832020, 38.975880, 39.932365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.602612, 38.509747, 40.688686>,  <35.247261, 38.604027, 40.031261>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.602612, 38.509747, 40.688686> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.787354, 38.828373, 40.532646>,  <35.898201, 39.019547, 40.439022>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.787354, 38.828373, 40.532646>,  <35.602612, 38.509747, 40.688686>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.787354, 38.828373, 40.532646> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174415, 0.349663, 0.920498,
		0.869636, -0.493177, 0.022562,
		0.461857, 0.796563, -0.390097,
		35.925911, 39.067341, 40.415619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.255142, 38.709312, 41.102997>,  <35.602612, 38.509747, 40.688686>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.255142, 38.709312, 41.102997> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.174664, 39.047100, 40.904446>,  <36.126377, 39.249771, 40.785316>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.174664, 39.047100, 40.904446>,  <36.255142, 38.709312, 41.102997>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.174664, 39.047100, 40.904446> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355174, 0.535147, 0.766466,
		0.912891, -0.022086, -0.407605,
		-0.201200, 0.844471, -0.496375,
		36.114304, 39.300442, 40.755531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.891396, 39.078533, 41.084423>,  <36.255142, 38.709312, 41.102997>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.891396, 39.078533, 41.084423> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.573132, 39.319630, 41.060322>,  <36.382172, 39.464287, 41.045860>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.573132, 39.319630, 41.060322>,  <36.891396, 39.078533, 41.084423>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.573132, 39.319630, 41.060322> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323439, 0.506835, 0.799065,
		0.512166, 0.616296, -0.598218,
		-0.795659, 0.602741, -0.060249,
		36.334435, 39.500454, 41.042248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.198151, 39.655659, 41.377819>,  <36.891396, 39.078533, 41.084423>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.198151, 39.655659, 41.377819> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.810833, 39.755516, 41.374264>,  <36.578442, 39.815430, 41.372131>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.810833, 39.755516, 41.374264>,  <37.198151, 39.655659, 41.377819>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.810833, 39.755516, 41.374264> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147990, 0.601943, 0.784706,
		0.201242, 0.758514, -0.619805,
		-0.968298, 0.249641, -0.008883,
		36.520344, 39.830410, 41.371597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.158726, 40.301838, 41.473377>,  <37.198151, 39.655659, 41.377819>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.158726, 40.301838, 41.473377> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.793324, 40.191219, 41.592731>,  <36.574081, 40.124847, 41.664345>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.793324, 40.191219, 41.592731>,  <37.158726, 40.301838, 41.473377>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.793324, 40.191219, 41.592731> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107042, 0.544205, 0.832096,
		-0.392494, 0.792062, -0.467531,
		-0.913505, -0.276547, 0.298381,
		36.519272, 40.108253, 41.682247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.809696, 40.907150, 41.738811>,  <37.158726, 40.301838, 41.473377>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.809696, 40.907150, 41.738811> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.588795, 40.612282, 41.894558>,  <36.456253, 40.435360, 41.988007>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.588795, 40.612282, 41.894558>,  <36.809696, 40.907150, 41.738811>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.588795, 40.612282, 41.894558> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087252, 0.515586, 0.852384,
		-0.829100, 0.436757, -0.349052,
		-0.552250, -0.737166, 0.389365,
		36.423119, 40.391132, 42.011368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.210308, 41.262554, 42.103844>,  <36.809696, 40.907150, 41.738811>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.210308, 41.262554, 42.103844> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.274483, 40.918098, 42.296803>,  <36.312988, 40.711426, 42.412579>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.274483, 40.918098, 42.296803>,  <36.210308, 41.262554, 42.103844>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.274483, 40.918098, 42.296803> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026642, 0.484768, 0.874237,
		-0.986686, -0.153115, 0.054834,
		0.160440, -0.861136, 0.482393,
		36.322617, 40.659756, 42.441521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.760017, 41.339146, 42.668999>,  <36.210308, 41.262554, 42.103844>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.760017, 41.339146, 42.668999> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.002239, 41.036133, 42.766525>,  <36.147572, 40.854324, 42.825043>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.002239, 41.036133, 42.766525>,  <35.760017, 41.339146, 42.668999>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.002239, 41.036133, 42.766525> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109095, 0.224466, 0.968356,
		-0.788293, -0.612989, 0.053282,
		0.605551, -0.757535, 0.243819,
		36.183903, 40.808872, 42.839672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.381264, 41.024967, 43.234074>,  <35.760017, 41.339146, 42.668999>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.381264, 41.024967, 43.234074> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.765362, 40.918118, 43.266502>,  <35.995819, 40.854008, 43.285957>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.765362, 40.918118, 43.266502>,  <35.381264, 41.024967, 43.234074>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.765362, 40.918118, 43.266502> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040908, 0.152615, 0.987439,
		-0.276141, -0.951501, 0.135620,
		0.960246, -0.267125, 0.081067,
		36.053436, 40.837978, 43.290821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.418877, 40.604378, 43.952503>,  <35.381264, 41.024967, 43.234074>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.418877, 40.604378, 43.952503> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.797894, 40.716976, 43.891945>,  <36.025303, 40.784534, 43.855610>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.797894, 40.716976, 43.891945>,  <35.418877, 40.604378, 43.952503>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.797894, 40.716976, 43.891945> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179413, -0.076427, 0.980801,
		0.264523, -0.956513, -0.122922,
		0.947544, 0.281498, -0.151394,
		36.082157, 40.801426, 43.846527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.872868, 40.125778, 44.206367>,  <35.418877, 40.604378, 43.952503>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.872868, 40.125778, 44.206367> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.068748, 40.474148, 44.222771>,  <36.186275, 40.683170, 44.232613>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.068748, 40.474148, 44.222771>,  <35.872868, 40.125778, 44.206367>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.068748, 40.474148, 44.222771> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047181, -0.073436, 0.996183,
		0.870612, -0.485900, -0.077053,
		0.489704, 0.870924, 0.041009,
		36.215660, 40.735424, 44.235073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.321625, 39.971584, 44.735104>,  <35.872868, 40.125778, 44.206367>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.321625, 39.971584, 44.735104> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.345291, 40.365227, 44.668129>,  <36.359493, 40.601414, 44.627945>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.345291, 40.365227, 44.668129>,  <36.321625, 39.971584, 44.735104>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.345291, 40.365227, 44.668129> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189187, 0.153637, 0.969847,
		0.980157, -0.089061, -0.177089,
		0.059168, 0.984106, -0.167438,
		36.363041, 40.660458, 44.617897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.921265, 40.209541, 45.099865>,  <36.321625, 39.971584, 44.735104>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.921265, 40.209541, 45.099865> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.705391, 40.543839, 45.059296>,  <36.575867, 40.744415, 45.034954>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.705391, 40.543839, 45.059296>,  <36.921265, 40.209541, 45.099865>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.705391, 40.543839, 45.059296> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045698, 0.149374, 0.987724,
		0.840629, 0.528420, -0.118805,
		-0.539680, 0.835739, -0.101421,
		36.543488, 40.794559, 45.028870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.492130, 40.613361, 44.838238>,  <36.921265, 40.209541, 45.099865>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.492130, 40.613361, 44.838238> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.892090, 40.611046, 44.843285>,  <38.132065, 40.609657, 44.846313>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.892090, 40.611046, 44.843285>,  <37.492130, 40.613361, 44.838238>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.892090, 40.611046, 44.843285> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012818, 0.035724, -0.999279,
		0.005338, 0.999345, 0.035795,
		0.999904, -0.005793, 0.012618,
		38.192062, 40.609306, 44.847069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.742329, 41.221581, 44.469223>,  <37.492130, 40.613361, 44.838238>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.742329, 41.221581, 44.469223> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.046803, 40.962505, 44.455967>,  <38.229488, 40.807060, 44.448013>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.046803, 40.962505, 44.455967>,  <37.742329, 41.221581, 44.469223>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.046803, 40.962505, 44.455967> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118434, 0.189069, -0.974795,
		0.637630, 0.738074, 0.220625,
		0.761184, -0.647688, -0.033143,
		38.275158, 40.768200, 44.446026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.247089, 41.477234, 43.936047>,  <37.742329, 41.221581, 44.469223>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.247089, 41.477234, 43.936047> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.351208, 41.094162, 43.985195>,  <38.413677, 40.864319, 44.014687>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.351208, 41.094162, 43.985195>,  <38.247089, 41.477234, 43.936047>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.351208, 41.094162, 43.985195> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150472, -0.085470, -0.984913,
		0.953732, 0.274857, 0.121856,
		0.260295, -0.957679, 0.122874,
		38.429295, 40.806858, 44.022057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.830528, 41.368740, 43.471859>,  <38.247089, 41.477234, 43.936047>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.830528, 41.368740, 43.471859> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.714554, 40.992287, 43.541378>,  <38.644970, 40.766415, 43.583088>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.714554, 40.992287, 43.541378>,  <38.830528, 41.368740, 43.471859>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.714554, 40.992287, 43.541378> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158290, -0.226250, -0.961122,
		0.943866, -0.251150, 0.214570,
		-0.289933, -0.941134, 0.173795,
		38.627575, 40.709946, 43.593517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.336800, 40.985683, 43.164330>,  <38.830528, 41.368740, 43.471859>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.336800, 40.985683, 43.164330> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.022007, 40.741756, 43.201794>,  <38.833130, 40.595398, 43.224274>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.022007, 40.741756, 43.201794>,  <39.336800, 40.985683, 43.164330>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.022007, 40.741756, 43.201794> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090849, -0.264695, -0.960043,
		0.610247, -0.747030, 0.263713,
		-0.786985, -0.609822, 0.093663,
		38.785912, 40.558811, 43.229893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.574627, 40.224915, 43.010971>,  <39.336800, 40.985683, 43.164330>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.574627, 40.224915, 43.010971> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.184242, 40.282543, 42.945553>,  <38.950012, 40.317120, 42.906303>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.184242, 40.282543, 42.945553>,  <39.574627, 40.224915, 43.010971>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.184242, 40.282543, 42.945553> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093643, -0.400414, -0.911537,
		-0.196809, -0.904938, 0.377297,
		-0.975960, 0.144067, -0.163547,
		38.891453, 40.325764, 42.896488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.276550, 39.489113, 42.644833>,  <39.574627, 40.224915, 43.010971>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.276550, 39.489113, 42.644833> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.996277, 39.763847, 42.567589>,  <38.828114, 39.928688, 42.521244>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.996277, 39.763847, 42.567589>,  <39.276550, 39.489113, 42.644833>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.996277, 39.763847, 42.567589> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092780, -0.356077, -0.929839,
		-0.707413, -0.633608, 0.313222,
		-0.700684, 0.686841, -0.193108,
		38.786072, 39.969898, 42.509655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.733356, 39.205811, 42.230579>,  <39.276550, 39.489113, 42.644833>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.733356, 39.205811, 42.230579> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.672543, 39.594570, 42.158695>,  <38.636055, 39.827827, 42.115566>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.672543, 39.594570, 42.158695>,  <38.733356, 39.205811, 42.230579>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.672543, 39.594570, 42.158695> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052960, -0.189575, -0.980437,
		-0.986956, -0.139540, 0.080293,
		-0.152031, 0.971900, -0.179712,
		38.626934, 39.886139, 42.104782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.206917, 39.169704, 41.831169>,  <38.733356, 39.205811, 42.230579>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.206917, 39.169704, 41.831169> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.379982, 39.524239, 41.765179>,  <38.483822, 39.736958, 41.725582>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.379982, 39.524239, 41.765179>,  <38.206917, 39.169704, 41.831169>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.379982, 39.524239, 41.765179> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032946, -0.198417, -0.979564,
		-0.900956, 0.418381, -0.115048,
		0.432659, 0.886334, -0.164980,
		38.509781, 39.790138, 41.715683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.848274, 39.367920, 41.341690>,  <38.206917, 39.169704, 41.831169>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.848274, 39.367920, 41.341690> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.187763, 39.577877, 41.315884>,  <38.391457, 39.703850, 41.300400>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.187763, 39.577877, 41.315884>,  <37.848274, 39.367920, 41.341690>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.187763, 39.577877, 41.315884> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116121, -0.303990, -0.945572,
		-0.515937, 0.795033, -0.318954,
		0.848719, 0.524893, -0.064520,
		38.442379, 39.735344, 41.296528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.766823, 39.710636, 40.798679>,  <37.848274, 39.367920, 41.341690>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.766823, 39.710636, 40.798679> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.161419, 39.701641, 40.863579>,  <38.398178, 39.696243, 40.902519>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.161419, 39.701641, 40.863579>,  <37.766823, 39.710636, 40.798679>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.161419, 39.701641, 40.863579> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146491, -0.322003, -0.935336,
		0.073279, 0.946471, -0.314360,
		0.986494, -0.022490, 0.162246,
		38.457367, 39.694893, 40.912254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.964264, 40.063019, 40.192364>,  <37.766823, 39.710636, 40.798679>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.964264, 40.063019, 40.192364> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.286205, 39.884796, 40.349178>,  <38.479370, 39.777863, 40.443268>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.286205, 39.884796, 40.349178>,  <37.964264, 40.063019, 40.192364>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.286205, 39.884796, 40.349178> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258559, -0.331339, -0.907393,
		0.534196, 0.831679, -0.151474,
		0.804849, -0.445561, 0.392038,
		38.527660, 39.751129, 40.466789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.464741, 40.161469, 39.763687>,  <37.964264, 40.063019, 40.192364>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.464741, 40.161469, 39.763687> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.618233, 39.849953, 39.962173>,  <38.710327, 39.663044, 40.081264>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.618233, 39.849953, 39.962173>,  <38.464741, 40.161469, 39.763687>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.618233, 39.849953, 39.962173> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346383, -0.376731, -0.859123,
		0.856021, 0.501551, 0.125199,
		0.383728, -0.778794, 0.496218,
		38.733353, 39.616314, 40.111038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.187260, 39.996899, 39.510250>,  <38.464741, 40.161469, 39.763687>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.187260, 39.996899, 39.510250> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.048634, 39.648380, 39.649235>,  <38.965458, 39.439270, 39.732628>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.048634, 39.648380, 39.649235>,  <39.187260, 39.996899, 39.510250>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.048634, 39.648380, 39.649235> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318317, -0.457679, -0.830183,
		0.882366, -0.177105, 0.435963,
		-0.346561, -0.871300, 0.347465,
		38.944664, 39.386990, 39.753475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<29.421091, 44.088913, 37.536083> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.109093, 44.305038, 37.409805>,  <28.921894, 44.434715, 37.334038>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.109093, 44.305038, 37.409805>,  <29.421091, 44.088913, 37.536083>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.109093, 44.305038, 37.409805> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.604860, -0.780311, 0.158933,
		-0.160464, 0.314917, 0.935456,
		-0.779997, 0.540317, -0.315692,
		28.875093, 44.467133, 37.315098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.946171, 44.125759, 38.084869>,  <29.421091, 44.088913, 37.536083>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.946171, 44.125759, 38.084869> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.786022, 44.119083, 37.718388>,  <28.689934, 44.115078, 37.498501>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.786022, 44.119083, 37.718388>,  <28.946171, 44.125759, 38.084869>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.786022, 44.119083, 37.718388> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520677, -0.818607, 0.242442,
		-0.754054, 0.574111, 0.319058,
		-0.400372, -0.016688, -0.916201,
		28.665911, 44.114079, 37.443527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.217173, 43.866390, 38.228485>,  <28.946171, 44.125759, 38.084869>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.217173, 43.866390, 38.228485> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.287691, 43.830700, 37.836372>,  <28.330002, 43.809284, 37.601105>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.287691, 43.830700, 37.836372>,  <28.217173, 43.866390, 38.228485>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.287691, 43.830700, 37.836372> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428884, -0.903345, 0.005093,
		-0.885990, 0.419531, -0.197523,
		0.176295, -0.089226, -0.980285,
		28.340580, 43.803932, 37.542286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.492012, 43.668671, 37.889496>,  <28.217173, 43.866390, 38.228485>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.492012, 43.668671, 37.889496> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.797102, 43.578091, 37.647182>,  <27.980156, 43.523743, 37.501793>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.797102, 43.578091, 37.647182>,  <27.492012, 43.668671, 37.889496>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.797102, 43.578091, 37.647182> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372247, -0.919692, -0.124892,
		-0.528853, 0.320760, -0.785766,
		0.762723, -0.226450, -0.605784,
		28.025919, 43.510155, 37.465446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.171961, 43.421555, 37.264114>,  <27.492012, 43.668671, 37.889496>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.171961, 43.421555, 37.264114> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.544525, 43.275974, 37.262661>,  <27.768064, 43.188625, 37.261787>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.544525, 43.275974, 37.262661>,  <27.171961, 43.421555, 37.264114>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.544525, 43.275974, 37.262661> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351301, -0.896340, -0.270486,
		0.095183, 0.253211, -0.962717,
		0.931412, -0.363949, -0.003637,
		27.823948, 43.166790, 37.261570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.248562, 43.058773, 36.661232>,  <27.171961, 43.421555, 37.264114>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.248562, 43.058773, 36.661232> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.561878, 42.891403, 36.845135>,  <27.749868, 42.790981, 36.955475>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.561878, 42.891403, 36.845135>,  <27.248562, 43.058773, 36.661232>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.561878, 42.891403, 36.845135> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202806, -0.871105, -0.447264,
		0.587643, 0.257096, -0.767188,
		0.783291, -0.418423, 0.459758,
		27.796865, 42.765877, 36.983063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.623747, 42.794632, 36.113174>,  <27.248562, 43.058773, 36.661232>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.623747, 42.794632, 36.113174> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.767097, 42.582943, 36.420811>,  <27.853107, 42.455929, 36.605392>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.767097, 42.582943, 36.420811>,  <27.623747, 42.794632, 36.113174>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.767097, 42.582943, 36.420811> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096300, -0.840367, -0.533394,
		0.928598, 0.117093, -0.352131,
		0.358376, -0.529218, 0.769087,
		27.874611, 42.424179, 36.651535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.019415, 42.317543, 35.813927>,  <27.623747, 42.794632, 36.113174>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.019415, 42.317543, 35.813927> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.962111, 42.140614, 36.168064>,  <27.927727, 42.034458, 36.380547>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.962111, 42.140614, 36.168064>,  <28.019415, 42.317543, 35.813927>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.962111, 42.140614, 36.168064> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097547, -0.883901, -0.457387,
		0.984866, -0.151889, 0.083483,
		-0.143263, -0.442321, 0.885340,
		27.919132, 42.007915, 36.433666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.388004, 41.769039, 35.840279>,  <28.019415, 42.317543, 35.813927>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.388004, 41.769039, 35.840279> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.109619, 41.678947, 36.113014>,  <27.942587, 41.624893, 36.276657>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.109619, 41.678947, 36.113014>,  <28.388004, 41.769039, 35.840279>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.109619, 41.678947, 36.113014> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063938, -0.926328, -0.371252,
		0.715225, -0.301974, 0.630290,
		-0.695964, -0.225229, 0.681840,
		27.900829, 41.611378, 36.317566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.484924, 41.022320, 35.937431>,  <28.388004, 41.769039, 35.840279>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.484924, 41.022320, 35.937431> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.112572, 41.089344, 36.067284>,  <27.889160, 41.129559, 36.145195>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.112572, 41.089344, 36.067284>,  <28.484924, 41.022320, 35.937431>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.112572, 41.089344, 36.067284> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289131, -0.881074, -0.374316,
		0.223306, -0.442305, 0.868620,
		-0.930880, 0.167559, 0.324633,
		27.833307, 41.139610, 36.164673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.276123, 40.487549, 36.423363>,  <28.484924, 41.022320, 35.937431>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.276123, 40.487549, 36.423363> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.949854, 40.637646, 36.247238>,  <27.754091, 40.727703, 36.141563>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.949854, 40.637646, 36.247238>,  <28.276123, 40.487549, 36.423363>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.949854, 40.637646, 36.247238> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346566, -0.926364, -0.147452,
		-0.463214, 0.032323, 0.885657,
		-0.815674, 0.375241, -0.440306,
		27.705153, 40.750217, 36.115147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.786161, 39.992989, 36.550922>,  <28.276123, 40.487549, 36.423363>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.786161, 39.992989, 36.550922> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.589346, 40.211300, 36.279625>,  <27.471256, 40.342289, 36.116844>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.589346, 40.211300, 36.279625>,  <27.786161, 39.992989, 36.550922>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.589346, 40.211300, 36.279625> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555040, -0.796874, -0.238583,
		-0.670691, 0.259061, 0.695026,
		-0.492040, 0.545783, -0.678246,
		27.441734, 40.375034, 36.076153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.043741, 39.893059, 36.693398>,  <27.786161, 39.992989, 36.550922>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.043741, 39.893059, 36.693398> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.045073, 40.018532, 36.313587>,  <27.045872, 40.093815, 36.085701>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.045073, 40.018532, 36.313587>,  <27.043741, 39.893059, 36.693398>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.045073, 40.018532, 36.313587> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359368, -0.885721, -0.293861,
		-0.933190, 0.342206, 0.109779,
		0.003327, 0.313679, -0.949524,
		27.046070, 40.112637, 36.028728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.413076, 39.648212, 36.418453>,  <27.043741, 39.893059, 36.693398>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.413076, 39.648212, 36.418453> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.636127, 39.706623, 36.091595>,  <26.769958, 39.741669, 35.895481>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.636127, 39.706623, 36.091595>,  <26.413076, 39.648212, 36.418453>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.636127, 39.706623, 36.091595> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317839, -0.871822, -0.372699,
		-0.766830, 0.467548, -0.439740,
		0.557630, 0.146030, -0.817144,
		26.803417, 39.750431, 35.846451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.980427, 39.501026, 35.837128>,  <26.413076, 39.648212, 36.418453>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.980427, 39.501026, 35.837128> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.357727, 39.450611, 35.714233>,  <26.584106, 39.420361, 35.640495>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.357727, 39.450611, 35.714233>,  <25.980427, 39.501026, 35.837128>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.357727, 39.450611, 35.714233> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228106, -0.918291, -0.323588,
		-0.241345, 0.375306, -0.894929,
		0.943250, -0.126042, -0.307235,
		26.640701, 39.412800, 35.622063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.959442, 39.255894, 35.135986>,  <25.980427, 39.501026, 35.837128>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.959442, 39.255894, 35.135986> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.329243, 39.162430, 35.256451>,  <26.551123, 39.106350, 35.328732>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.329243, 39.162430, 35.256451>,  <25.959442, 39.255894, 35.135986>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.329243, 39.162430, 35.256451> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023988, -0.824180, -0.565820,
		0.380426, 0.515876, -0.767560,
		0.924500, -0.233664, 0.301165,
		26.606592, 39.092331, 35.346802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.339506, 38.975834, 34.560005>,  <25.959442, 39.255894, 35.135986>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.339506, 38.975834, 34.560005> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.558338, 38.836197, 34.864330>,  <26.689638, 38.752415, 35.046925>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.558338, 38.836197, 34.864330>,  <26.339506, 38.975834, 34.560005>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.558338, 38.836197, 34.864330> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115178, -0.868854, -0.481485,
		0.829118, 0.351040, -0.435125,
		0.547080, -0.349091, 0.760814,
		26.722462, 38.731468, 35.092575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.569843, 38.383110, 34.221664>,  <26.339506, 38.975834, 34.560005>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.569843, 38.383110, 34.221664> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.692810, 38.331432, 34.598770>,  <26.766590, 38.300426, 34.825035>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.692810, 38.331432, 34.598770>,  <26.569843, 38.383110, 34.221664>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.692810, 38.331432, 34.598770> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057263, -0.991457, -0.117194,
		0.949850, -0.017958, -0.312190,
		0.307419, -0.129194, 0.942763,
		26.785036, 38.292675, 34.881599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.196453, 37.980728, 34.183250>,  <26.569843, 38.383110, 34.221664>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.196453, 37.980728, 34.183250> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.034393, 37.923523, 34.544449>,  <26.937157, 37.889198, 34.761166>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.034393, 37.923523, 34.544449>,  <27.196453, 37.980728, 34.183250>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.034393, 37.923523, 34.544449> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006760, -0.987193, -0.159385,
		0.914225, -0.070679, 0.398996,
		-0.405151, -0.143016, 0.902994,
		26.912848, 37.880619, 34.815346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.683804, 37.516144, 34.553352>,  <27.196453, 37.980728, 34.183250>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.683804, 37.516144, 34.553352> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.316349, 37.486053, 34.708500>,  <27.095875, 37.467999, 34.801590>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.316349, 37.486053, 34.708500>,  <27.683804, 37.516144, 34.553352>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.316349, 37.486053, 34.708500> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028597, -0.991790, -0.124634,
		0.394062, -0.103402, 0.913249,
		-0.918639, -0.075230, 0.387870,
		27.040758, 37.463486, 34.824860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.454651, 37.518272, 34.683514>,  <27.683804, 37.516144, 34.553352>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.454651, 37.518272, 34.683514> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.802189, 37.327255, 34.631271>,  <29.010712, 37.212643, 34.599926>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.802189, 37.327255, 34.631271>,  <28.454651, 37.518272, 34.683514>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.802189, 37.327255, 34.631271> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346710, 0.398579, 0.849074,
		-0.353415, -0.782996, 0.511873,
		0.868844, -0.477547, -0.130609,
		29.062841, 37.183990, 34.592087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.586149, 37.297325, 35.310829>,  <28.454651, 37.518272, 34.683514>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.586149, 37.297325, 35.310829> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.937067, 37.308712, 35.119186>,  <29.147617, 37.315544, 35.004200>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.937067, 37.308712, 35.119186>,  <28.586149, 37.297325, 35.310829>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.937067, 37.308712, 35.119186> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396319, 0.520089, 0.756597,
		0.270716, -0.853638, 0.444989,
		0.877294, 0.028466, -0.479109,
		29.200254, 37.317253, 34.975452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.101032, 37.179794, 35.862537>,  <28.586149, 37.297325, 35.310829>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.101032, 37.179794, 35.862537> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.345417, 37.317451, 35.577358>,  <29.492048, 37.400047, 35.406250>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.345417, 37.317451, 35.577358>,  <29.101032, 37.179794, 35.862537>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.345417, 37.317451, 35.577358> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329566, 0.708257, 0.624306,
		0.719806, -0.616386, 0.319291,
		0.610954, 0.344152, -0.712948,
		29.528706, 37.420696, 35.363476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.704672, 37.276073, 36.192005>,  <29.101032, 37.179794, 35.862537>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.704672, 37.276073, 36.192005> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.750500, 37.525112, 35.882362>,  <29.777996, 37.674538, 35.696575>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.750500, 37.525112, 35.882362>,  <29.704672, 37.276073, 36.192005>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.750500, 37.525112, 35.882362> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329467, 0.711322, 0.620863,
		0.937190, -0.326176, -0.123629,
		0.114571, 0.622599, -0.774109,
		29.784870, 37.711891, 35.650131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.333971, 37.468105, 36.179817>,  <29.704672, 37.276073, 36.192005>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.333971, 37.468105, 36.179817> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.184816, 37.756966, 35.946766>,  <30.095324, 37.930283, 35.806934>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.184816, 37.756966, 35.946766>,  <30.333971, 37.468105, 36.179817>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.184816, 37.756966, 35.946766> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316969, 0.689282, 0.651476,
		0.872059, 0.058249, -0.485921,
		-0.372885, 0.722148, -0.582631,
		30.072950, 37.973610, 35.771976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.829645, 37.919041, 36.066456>,  <30.333971, 37.468105, 36.179817>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.829645, 37.919041, 36.066456> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.514486, 38.145222, 35.968899>,  <30.325392, 38.280930, 35.910362>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.514486, 38.145222, 35.968899>,  <30.829645, 37.919041, 36.066456>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.514486, 38.145222, 35.968899> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390205, 0.764823, 0.512627,
		0.476401, 0.308729, -0.823243,
		-0.787898, 0.565449, -0.243895,
		30.278116, 38.314857, 35.895729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.140734, 38.520100, 36.071274>,  <30.829645, 37.919041, 36.066456>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.140734, 38.520100, 36.071274> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.755928, 38.627888, 36.088764>,  <30.525043, 38.692562, 36.099258>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.755928, 38.627888, 36.088764>,  <31.140734, 38.520100, 36.071274>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.755928, 38.627888, 36.088764> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223456, 0.685264, 0.693168,
		0.156822, 0.676609, -0.719449,
		-0.962016, 0.269469, 0.043728,
		30.467323, 38.708729, 36.101883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.099472, 39.251598, 35.961700>,  <31.140734, 38.520100, 36.071274>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.099472, 39.251598, 35.961700> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.768364, 39.138515, 36.155556>,  <30.569698, 39.070663, 36.271870>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.768364, 39.138515, 36.155556>,  <31.099472, 39.251598, 35.961700>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.768364, 39.138515, 36.155556> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111269, 0.763900, 0.635670,
		-0.549922, 0.580114, -0.600878,
		-0.827771, -0.282709, 0.484634,
		30.520033, 39.053703, 36.300945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.840328, 39.901184, 36.251400>,  <31.099472, 39.251598, 35.961700>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.840328, 39.901184, 36.251400> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.638855, 39.632133, 36.468243>,  <30.517971, 39.470703, 36.598351>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.638855, 39.632133, 36.468243>,  <30.840328, 39.901184, 36.251400>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.638855, 39.632133, 36.468243> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151830, 0.686680, 0.710928,
		-0.850442, 0.275773, -0.447993,
		-0.503683, -0.672622, 0.542111,
		30.487751, 39.430347, 36.630875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.257685, 40.233559, 36.440102>,  <30.840328, 39.901184, 36.251400>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.257685, 40.233559, 36.440102> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.301067, 39.947430, 36.716232>,  <30.327097, 39.775753, 36.881912>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.301067, 39.947430, 36.716232>,  <30.257685, 40.233559, 36.440102>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.301067, 39.947430, 36.716232> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140410, 0.676439, 0.722991,
		-0.984135, -0.175343, -0.027073,
		0.108458, -0.715322, 0.690327,
		30.333605, 39.732834, 36.923332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.601809, 40.349602, 36.877850>,  <30.257685, 40.233559, 36.440102>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.601809, 40.349602, 36.877850> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.869116, 40.138245, 37.087311>,  <30.029501, 40.011429, 37.212990>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.869116, 40.138245, 37.087311>,  <29.601809, 40.349602, 36.877850>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.869116, 40.138245, 37.087311> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144568, 0.598254, 0.788158,
		-0.729739, -0.602404, 0.323405,
		0.668267, -0.528395, 0.523657,
		30.069595, 39.979725, 37.244408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.297985, 40.294098, 37.467793>,  <29.601809, 40.349602, 36.877850>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.297985, 40.294098, 37.467793> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.679243, 40.208763, 37.553585>,  <29.907999, 40.157562, 37.605061>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.679243, 40.208763, 37.553585>,  <29.297985, 40.294098, 37.467793>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.679243, 40.208763, 37.553585> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024517, 0.652184, 0.757664,
		-0.301515, -0.727423, 0.616396,
		0.953147, -0.213335, 0.214478,
		29.965187, 40.144764, 37.617928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.171679, 40.200069, 38.153934>,  <29.297985, 40.294098, 37.467793>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.171679, 40.200069, 38.153934> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.563890, 40.250179, 38.093445>,  <29.799217, 40.280243, 38.057152>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.563890, 40.250179, 38.093445>,  <29.171679, 40.200069, 38.153934>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.563890, 40.250179, 38.093445> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041022, 0.622443, 0.781589,
		0.192041, -0.772575, 0.605185,
		0.980529, 0.125271, -0.151227,
		29.858049, 40.287762, 38.048077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.575733, 40.221275, 38.886921>,  <29.171679, 40.200069, 38.153934>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.575733, 40.221275, 38.886921> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.784304, 40.422321, 38.611099>,  <29.909447, 40.542950, 38.445606>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.784304, 40.422321, 38.611099>,  <29.575733, 40.221275, 38.886921>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.784304, 40.422321, 38.611099> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139102, 0.747232, 0.649842,
		0.841882, -0.434763, 0.319711,
		0.521426, 0.502618, -0.689558,
		29.940731, 40.573105, 38.404232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.089382, 40.403275, 39.362846>,  <29.575733, 40.221275, 38.886921>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.089382, 40.403275, 39.362846> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.063023, 40.644463, 39.044830>,  <30.047207, 40.789177, 38.854023>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.063023, 40.644463, 39.044830>,  <30.089382, 40.403275, 39.362846>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.063023, 40.644463, 39.044830> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019518, 0.797396, 0.603141,
		0.997635, 0.024228, -0.064316,
		-0.065898, 0.602970, -0.795037,
		30.043253, 40.825356, 38.806320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.420725, 40.962074, 39.582951>,  <30.089382, 40.403275, 39.362846>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.420725, 40.962074, 39.582951> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.211538, 41.088478, 39.266308>,  <30.086025, 41.164318, 39.076321>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.211538, 41.088478, 39.266308>,  <30.420725, 40.962074, 39.582951>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.211538, 41.088478, 39.266308> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063493, 0.911712, 0.405895,
		0.849985, 0.262532, -0.456731,
		-0.522968, 0.316005, -0.791610,
		30.054647, 41.183281, 39.028824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.779058, 41.558018, 39.220455>,  <30.420725, 40.962074, 39.582951>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.779058, 41.558018, 39.220455> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.396076, 41.594322, 39.110882>,  <30.166286, 41.616104, 39.045139>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.396076, 41.594322, 39.110882>,  <30.779058, 41.558018, 39.220455>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.396076, 41.594322, 39.110882> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001221, 0.950515, 0.310676,
		0.288573, 0.297125, -0.910188,
		-0.957457, 0.090764, -0.273930,
		30.108839, 41.621552, 39.028702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.778061, 42.278248, 39.106491>,  <30.779058, 41.558018, 39.220455>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.778061, 42.278248, 39.106491> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.394705, 42.164661, 39.094818>,  <30.164692, 42.096508, 39.087814>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.394705, 42.164661, 39.094818>,  <30.778061, 42.278248, 39.106491>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.394705, 42.164661, 39.094818> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284252, 0.939904, 0.189158,
		-0.026288, 0.189581, -0.981513,
		-0.958389, -0.283970, -0.029181,
		30.107187, 42.079472, 39.086063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.385361, 42.596458, 38.491390>,  <30.778061, 42.278248, 39.106491>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.385361, 42.596458, 38.491390> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.097622, 42.493172, 38.749340>,  <29.924978, 42.431198, 38.904110>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.097622, 42.493172, 38.749340>,  <30.385361, 42.596458, 38.491390>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.097622, 42.493172, 38.749340> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482510, 0.853577, -0.196445,
		-0.499727, -0.452471, -0.738609,
		-0.719345, -0.258217, 0.644877,
		29.881819, 42.415707, 38.942802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.733248, 42.910858, 38.238579>,  <30.385361, 42.596458, 38.491390>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.733248, 42.910858, 38.238579> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.682146, 42.850727, 38.630718>,  <29.651485, 42.814648, 38.866001>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.682146, 42.850727, 38.630718>,  <29.733248, 42.910858, 38.238579>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.682146, 42.850727, 38.630718> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293478, 0.949911, 0.107420,
		-0.947391, -0.273987, -0.165475,
		-0.127755, -0.150332, 0.980347,
		29.643820, 42.805626, 38.924824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.135036, 43.148373, 38.290691>,  <29.733248, 42.910858, 38.238579>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.135036, 43.148373, 38.290691> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.300179, 43.149445, 38.655010>,  <29.399263, 43.150089, 38.873600>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.300179, 43.149445, 38.655010>,  <29.135036, 43.148373, 38.290691>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.300179, 43.149445, 38.655010> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419038, 0.888434, 0.187328,
		-0.808678, -0.458996, 0.367917,
		0.412853, 0.002683, 0.910794,
		29.424034, 43.150249, 38.928249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.596478, 43.289051, 38.783211>,  <29.135036, 43.148373, 38.290691>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.596478, 43.289051, 38.783211> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.932598, 43.418324, 38.957314>,  <29.134272, 43.495888, 39.061775>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.932598, 43.418324, 38.957314>,  <28.596478, 43.289051, 38.783211>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.932598, 43.418324, 38.957314> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396573, 0.913865, 0.087072,
		-0.369623, -0.245777, 0.896087,
		0.840303, 0.323180, 0.435254,
		29.184689, 43.515278, 39.087891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<41.032368, 37.065800, 45.018509> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.675396, 36.895596, 45.078518>,  <40.461212, 36.793472, 45.114525>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.675396, 36.895596, 45.078518>,  <41.032368, 37.065800, 45.018509>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.675396, 36.895596, 45.078518> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083753, 0.482969, 0.871623,
		-0.443340, 0.765299, -0.466654,
		-0.892432, -0.425509, 0.150023,
		40.407665, 36.767944, 45.123524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.627583, 37.576725, 45.218815>,  <41.032368, 37.065800, 45.018509>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.627583, 37.576725, 45.218815> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.454258, 37.243767, 45.357010>,  <40.350266, 37.043991, 45.439926>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.454258, 37.243767, 45.357010>,  <40.627583, 37.576725, 45.218815>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.454258, 37.243767, 45.357010> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038840, 0.400231, 0.915591,
		-0.900409, 0.383314, -0.205754,
		-0.433308, -0.832397, 0.345484,
		40.324265, 36.994049, 45.460655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.023113, 37.807274, 45.666634>,  <40.627583, 37.576725, 45.218815>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.023113, 37.807274, 45.666634> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.130306, 37.435524, 45.768188>,  <40.194622, 37.212475, 45.829121>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.130306, 37.435524, 45.768188>,  <40.023113, 37.807274, 45.666634>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.130306, 37.435524, 45.768188> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198174, 0.204713, 0.958551,
		-0.942822, -0.307185, -0.129319,
		0.267979, -0.929371, 0.253884,
		40.210701, 37.156712, 45.844353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.902321, 37.798519, 46.445457>,  <40.023113, 37.807274, 45.666634>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.902321, 37.798519, 46.445457> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.112034, 37.458065, 46.434898>,  <40.237862, 37.253792, 46.428562>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.112034, 37.458065, 46.434898>,  <39.902321, 37.798519, 46.445457>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.112034, 37.458065, 46.434898> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112818, 0.038702, 0.992862,
		-0.844039, -0.523516, 0.116314,
		0.524280, -0.851137, -0.026396,
		40.269318, 37.202724, 46.426979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.543686, 37.424202, 46.915932>,  <39.902321, 37.798519, 46.445457>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.543686, 37.424202, 46.915932> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.910713, 37.267666, 46.887878>,  <40.130932, 37.173744, 46.871048>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.910713, 37.267666, 46.887878>,  <39.543686, 37.424202, 46.915932>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.910713, 37.267666, 46.887878> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095798, 0.046431, 0.994317,
		-0.385860, -0.919074, 0.080094,
		0.917570, -0.391340, -0.070130,
		40.185986, 37.150265, 46.866840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.641579, 36.920120, 47.476662>,  <39.543686, 37.424202, 46.915932>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.641579, 36.920120, 47.476662> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.010109, 37.012012, 47.351192>,  <40.231228, 37.067146, 47.275913>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.010109, 37.012012, 47.351192>,  <39.641579, 36.920120, 47.476662>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.010109, 37.012012, 47.351192> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297324, 0.103540, 0.949146,
		0.250526, -0.967731, 0.027089,
		0.921322, 0.229732, -0.313670,
		40.286507, 37.080933, 47.257092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.089016, 36.570293, 47.982281>,  <39.641579, 36.920120, 47.476662>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.089016, 36.570293, 47.982281> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.313389, 36.847256, 47.800762>,  <40.448013, 37.013435, 47.691853>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.313389, 36.847256, 47.800762>,  <40.089016, 36.570293, 47.982281>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.313389, 36.847256, 47.800762> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436160, 0.218731, 0.872881,
		0.703649, -0.687551, -0.179309,
		0.560930, 0.692409, -0.453792,
		40.481667, 37.054977, 47.664623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.717781, 36.548485, 48.298405>,  <40.089016, 36.570293, 47.982281>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.717781, 36.548485, 48.298405> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.701633, 36.907452, 48.122673>,  <40.691944, 37.122833, 48.017235>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.701633, 36.907452, 48.122673>,  <40.717781, 36.548485, 48.298405>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.701633, 36.907452, 48.122673> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458174, 0.407361, 0.790021,
		0.887946, -0.169399, -0.427617,
		-0.040365, 0.897419, -0.439329,
		40.689526, 37.176678, 47.990875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.306435, 36.843430, 48.615627>,  <40.717781, 36.548485, 48.298405>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.306435, 36.843430, 48.615627> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.070141, 37.143246, 48.496147>,  <40.928364, 37.323135, 48.424461>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.070141, 37.143246, 48.496147>,  <41.306435, 36.843430, 48.615627>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.070141, 37.143246, 48.496147> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229951, 0.511236, 0.828106,
		0.773404, 0.420507, -0.474363,
		-0.590737, 0.749541, -0.298696,
		40.892921, 37.368107, 48.406540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.734367, 37.341015, 48.720417>,  <41.306435, 36.843430, 48.615627>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.734367, 37.341015, 48.720417> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.396915, 37.553722, 48.690701>,  <41.194447, 37.681347, 48.672871>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.396915, 37.553722, 48.690701>,  <41.734367, 37.341015, 48.720417>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.396915, 37.553722, 48.690701> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268887, 0.538172, 0.798793,
		0.464749, 0.653910, -0.597002,
		-0.843628, 0.531764, -0.074287,
		41.143826, 37.713253, 48.668415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.908684, 37.948292, 48.759613>,  <41.734367, 37.341015, 48.720417>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.908684, 37.948292, 48.759613> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.523121, 37.964489, 48.864876>,  <41.291782, 37.974209, 48.928032>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.523121, 37.964489, 48.864876>,  <41.908684, 37.948292, 48.759613>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.523121, 37.964489, 48.864876> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235146, 0.593085, 0.770037,
		-0.124893, 0.804121, -0.581198,
		-0.963903, 0.040494, 0.263158,
		41.233952, 37.976639, 48.943825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.680637, 38.753326, 48.819874>,  <41.908684, 37.948292, 48.759613>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.680637, 38.753326, 48.819874> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.424278, 38.529591, 49.030167>,  <41.270462, 38.395348, 49.156342>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.424278, 38.529591, 49.030167>,  <41.680637, 38.753326, 48.819874>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.424278, 38.529591, 49.030167> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053780, 0.650472, 0.757624,
		-0.765742, 0.513831, -0.386804,
		-0.640895, -0.559342, 0.525727,
		41.232010, 38.361790, 49.187885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.411999, 39.297569, 49.083076>,  <41.680637, 38.753326, 48.819874>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.411999, 39.297569, 49.083076> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.291920, 38.961742, 49.264187>,  <41.219872, 38.760246, 49.372852>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.291920, 38.961742, 49.264187>,  <41.411999, 39.297569, 49.083076>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.291920, 38.961742, 49.264187> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068715, 0.492471, 0.867612,
		-0.951399, 0.229342, -0.205529,
		-0.300197, -0.839568, 0.452777,
		41.201862, 38.709873, 49.400021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.823769, 39.485916, 49.491974>,  <41.411999, 39.297569, 49.083076>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.823769, 39.485916, 49.491974> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.007549, 39.163834, 49.641933>,  <41.117817, 38.970585, 49.731911>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.007549, 39.163834, 49.641933>,  <40.823769, 39.485916, 49.491974>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.007549, 39.163834, 49.641933> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110257, 0.367122, 0.923615,
		-0.881334, -0.465691, 0.079894,
		0.459450, -0.805204, 0.374903,
		41.145386, 38.922272, 49.754406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.305042, 38.851006, 49.417862>,  <40.823769, 39.485916, 49.491974>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.305042, 38.851006, 49.417862> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.124966, 39.155800, 49.604069>,  <40.016918, 39.338676, 49.715794>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.124966, 39.155800, 49.604069>,  <40.305042, 38.851006, 49.417862>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.124966, 39.155800, 49.604069> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.621037, 0.107394, -0.776389,
		-0.641592, -0.638626, 0.424874,
		-0.450193, 0.761987, 0.465513,
		39.989906, 39.384396, 49.743721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.659142, 38.884453, 49.170544>,  <40.305042, 38.851006, 49.417862>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.659142, 38.884453, 49.170544> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.639069, 39.253422, 49.323708>,  <39.627026, 39.474804, 49.415604>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.639069, 39.253422, 49.323708>,  <39.659142, 38.884453, 49.170544>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.639069, 39.253422, 49.323708> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.618595, 0.272289, -0.737020,
		-0.784106, -0.273852, 0.556941,
		-0.050186, 0.922423, 0.382906,
		39.624012, 39.530148, 49.438580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.899860, 39.098843, 49.202766>,  <39.659142, 38.884453, 49.170544>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.899860, 39.098843, 49.202766> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.125443, 39.428802, 49.218250>,  <39.260792, 39.626778, 49.227543>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.125443, 39.428802, 49.218250>,  <38.899860, 39.098843, 49.202766>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.125443, 39.428802, 49.218250> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540806, 0.404341, -0.737589,
		-0.624091, 0.395028, 0.674139,
		0.563951, 0.824901, 0.038712,
		39.294628, 39.676273, 49.229862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.414433, 39.616180, 49.173531>,  <38.899860, 39.098843, 49.202766>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.414433, 39.616180, 49.173531> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.760159, 39.790989, 49.073959>,  <38.967594, 39.895874, 49.014217>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.760159, 39.790989, 49.073959>,  <38.414433, 39.616180, 49.173531>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.760159, 39.790989, 49.073959> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412763, 0.333570, -0.847560,
		-0.287369, 0.835309, 0.468698,
		0.864318, 0.437023, -0.248927,
		39.019455, 39.922096, 48.999283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.249825, 40.286118, 49.022049>,  <38.414433, 39.616180, 49.173531>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.249825, 40.286118, 49.022049> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.607018, 40.216381, 48.856068>,  <38.821335, 40.174538, 48.756481>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.607018, 40.216381, 48.856068>,  <38.249825, 40.286118, 49.022049>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.607018, 40.216381, 48.856068> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310756, 0.428099, -0.848623,
		0.325589, 0.886756, 0.328109,
		0.892985, -0.174340, -0.414949,
		38.874912, 40.164078, 48.731583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.265022, 40.842930, 48.660614>,  <38.249825, 40.286118, 49.022049>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.265022, 40.842930, 48.660614> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.540699, 40.594860, 48.510738>,  <38.706104, 40.446018, 48.420815>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.540699, 40.594860, 48.510738>,  <38.265022, 40.842930, 48.660614>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.540699, 40.594860, 48.510738> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168508, 0.365748, -0.915333,
		0.704710, 0.693980, 0.147567,
		0.689195, -0.620178, -0.374687,
		38.747456, 40.408806, 48.398331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.681965, 41.232201, 48.189838>,  <38.265022, 40.842930, 48.660614>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.681965, 41.232201, 48.189838> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.686886, 40.844368, 48.092052>,  <38.689838, 40.611668, 48.033379>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.686886, 40.844368, 48.092052>,  <38.681965, 41.232201, 48.189838>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.686886, 40.844368, 48.092052> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153082, 0.239777, -0.958683,
		0.988137, 0.049219, -0.145475,
		0.012304, -0.969580, -0.244467,
		38.690578, 40.553493, 48.018711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.188103, 41.183582, 47.588982>,  <38.681965, 41.232201, 48.189838>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.188103, 41.183582, 47.588982> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.978634, 40.843319, 47.570419>,  <38.852955, 40.639160, 47.559284>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.978634, 40.843319, 47.570419>,  <39.188103, 41.183582, 47.588982>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.978634, 40.843319, 47.570419> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048854, 0.024391, -0.998508,
		0.850520, -0.525154, 0.028786,
		-0.523668, -0.850658, -0.046401,
		38.821533, 40.588123, 47.556499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.457352, 40.909809, 47.056625>,  <39.188103, 41.183582, 47.588982>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.457352, 40.909809, 47.056625> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.114750, 40.709316, 47.105881>,  <38.909187, 40.589020, 47.135433>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.114750, 40.709316, 47.105881>,  <39.457352, 40.909809, 47.056625>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.114750, 40.709316, 47.105881> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115163, -0.046980, -0.992235,
		0.503130, -0.864034, -0.017486,
		-0.856504, -0.501236, 0.123142,
		38.857800, 40.558945, 47.142822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.558495, 40.345539, 46.597790>,  <39.457352, 40.909809, 47.056625>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.558495, 40.345539, 46.597790> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.167957, 40.400757, 46.664356>,  <38.933636, 40.433887, 46.704296>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.167957, 40.400757, 46.664356>,  <39.558495, 40.345539, 46.597790>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.167957, 40.400757, 46.664356> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173135, -0.038100, -0.984161,
		-0.129519, -0.989693, 0.061099,
		-0.976345, 0.138046, 0.166415,
		38.875053, 40.442169, 46.714279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.204449, 39.786789, 46.299957>,  <39.558495, 40.345539, 46.597790>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.204449, 39.786789, 46.299957> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.935867, 40.082436, 46.321377>,  <38.774719, 40.259823, 46.334229>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.935867, 40.082436, 46.321377>,  <39.204449, 39.786789, 46.299957>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.935867, 40.082436, 46.321377> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153445, -0.067980, -0.985816,
		-0.724989, -0.670142, 0.159058,
		-0.671450, 0.739113, 0.053546,
		38.734432, 40.304169, 46.337440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.825741, 39.688961, 45.792717>,  <39.204449, 39.786789, 46.299957>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.825741, 39.688961, 45.792717> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.699890, 40.060497, 45.870975>,  <38.624382, 40.283417, 45.917931>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.699890, 40.060497, 45.870975>,  <38.825741, 39.688961, 45.792717>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.699890, 40.060497, 45.870975> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252038, 0.116965, -0.960623,
		-0.915145, -0.351543, 0.197302,
		-0.314623, 0.928836, 0.195642,
		38.605503, 40.339149, 45.929668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.210079, 39.647247, 45.565491>,  <38.825741, 39.688961, 45.792717>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.210079, 39.647247, 45.565491> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.335922, 40.026924, 45.568443>,  <38.411427, 40.254730, 45.570213>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.335922, 40.026924, 45.568443>,  <38.210079, 39.647247, 45.565491>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.335922, 40.026924, 45.568443> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312097, 0.110781, -0.943570,
		-0.896447, 0.294551, 0.331093,
		0.314608, 0.949193, 0.007381,
		38.430305, 40.311684, 45.570656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.674030, 40.035606, 45.342278>,  <38.210079, 39.647247, 45.565491>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.674030, 40.035606, 45.342278> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.003910, 40.257683, 45.299129>,  <38.201839, 40.390926, 45.273239>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.003910, 40.257683, 45.299129>,  <37.674030, 40.035606, 45.342278>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.003910, 40.257683, 45.299129> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217100, 0.134638, -0.966820,
		-0.522243, 0.820755, 0.231567,
		0.824700, 0.555188, -0.107872,
		38.251320, 40.424240, 45.266769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.269123, 40.653389, 45.551739>,  <37.674030, 40.035606, 45.342278>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.269123, 40.653389, 45.551739> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.909130, 40.823536, 45.513580>,  <36.693134, 40.925625, 45.490685>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.909130, 40.823536, 45.513580>,  <37.269123, 40.653389, 45.551739>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.909130, 40.823536, 45.513580> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030567, 0.279862, 0.959554,
		0.434857, 0.860664, -0.264873,
		-0.899981, 0.425365, -0.095392,
		36.639137, 40.951145, 45.484962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.290768, 41.325729, 45.967804>,  <37.269123, 40.653389, 45.551739>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.290768, 41.325729, 45.967804> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.906490, 41.225319, 45.920376>,  <36.675926, 41.165073, 45.891918>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.906490, 41.225319, 45.920376>,  <37.290768, 41.325729, 45.967804>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.906490, 41.225319, 45.920376> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184022, 0.256004, 0.948998,
		-0.207865, 0.933514, -0.292135,
		-0.960691, -0.251023, -0.118573,
		36.618282, 41.150013, 45.884804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.064415, 41.835045, 46.513374>,  <37.290768, 41.325729, 45.967804>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.064415, 41.835045, 46.513374> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.808739, 41.548691, 46.400993>,  <36.655334, 41.376877, 46.333565>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.808739, 41.548691, 46.400993>,  <37.064415, 41.835045, 46.513374>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.808739, 41.548691, 46.400993> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432833, 0.032905, 0.900873,
		-0.635681, 0.697438, -0.330893,
		-0.639191, -0.715889, -0.280957,
		36.616982, 41.333923, 46.316708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.444145, 42.120590, 46.623989>,  <37.064415, 41.835045, 46.513374>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.444145, 42.120590, 46.623989> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.381023, 41.725681, 46.631855>,  <36.343151, 41.488735, 46.636574>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.381023, 41.725681, 46.631855>,  <36.444145, 42.120590, 46.623989>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.381023, 41.725681, 46.631855> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300307, 0.066952, 0.951490,
		-0.940699, 0.144243, -0.307051,
		-0.157803, -0.987275, 0.019664,
		36.333683, 41.429501, 46.637753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.845348, 42.084785, 46.881863>,  <36.444145, 42.120590, 46.623989>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.845348, 42.084785, 46.881863> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.020210, 41.728493, 46.931637>,  <36.125130, 41.514717, 46.961502>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.020210, 41.728493, 46.931637>,  <35.845348, 42.084785, 46.881863>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.020210, 41.728493, 46.931637> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202984, 0.037072, 0.978480,
		-0.876180, -0.453008, -0.164599,
		0.437157, -0.890736, 0.124435,
		36.151356, 41.461273, 46.968967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.405201, 41.664310, 47.310406>,  <35.845348, 42.084785, 46.881863>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.405201, 41.664310, 47.310406> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.761868, 41.489468, 47.357525>,  <35.975868, 41.384563, 47.385796>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.761868, 41.489468, 47.357525>,  <35.405201, 41.664310, 47.310406>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.761868, 41.489468, 47.357525> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052690, 0.158229, 0.985996,
		-0.449625, -0.885382, 0.118056,
		0.891662, -0.437108, 0.117795,
		36.029366, 41.358334, 47.392864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.294266, 41.118568, 47.771137>,  <35.405201, 41.664310, 47.310406>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.294266, 41.118568, 47.771137> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.691460, 41.165085, 47.779751>,  <35.929775, 41.192993, 47.784920>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.691460, 41.165085, 47.779751>,  <35.294266, 41.118568, 47.771137>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.691460, 41.165085, 47.779751> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029086, 0.063615, 0.997551,
		0.114636, -0.991176, 0.066551,
		0.992982, 0.116291, 0.021537,
		35.989353, 41.199970, 47.786213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.470863, 40.251984, 47.727142>,  <35.294266, 41.118568, 47.771137>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.470863, 40.251984, 47.727142> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.127598, 40.054859, 47.784687>,  <34.921638, 39.936584, 47.819214>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.127598, 40.054859, 47.784687>,  <35.470863, 40.251984, 47.727142>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.127598, 40.054859, 47.784687> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046368, -0.204683, -0.977729,
		0.511281, -0.845721, 0.152800,
		-0.858161, -0.492810, 0.143864,
		34.870148, 39.907017, 47.827847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.560333, 39.515606, 47.548279>,  <35.470863, 40.251984, 47.727142>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.560333, 39.515606, 47.548279> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.182941, 39.634476, 47.489574>,  <34.956509, 39.705799, 47.454353>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.182941, 39.634476, 47.489574>,  <35.560333, 39.515606, 47.548279>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.182941, 39.634476, 47.489574> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065562, -0.266699, -0.961547,
		-0.324894, -0.916818, 0.232140,
		-0.943475, 0.297181, -0.146757,
		34.899899, 39.723629, 47.445549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.446503, 38.980595, 47.136845>,  <35.560333, 39.515606, 47.548279>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.446503, 38.980595, 47.136845> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.154678, 39.254028, 47.128292>,  <34.979584, 39.418087, 47.123161>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.154678, 39.254028, 47.128292>,  <35.446503, 38.980595, 47.136845>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.154678, 39.254028, 47.128292> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260473, -0.306626, -0.915497,
		-0.632376, -0.662338, 0.401756,
		-0.729558, 0.683585, -0.021382,
		34.935810, 39.459103, 47.121876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.877914, 38.599453, 46.889004>,  <35.446503, 38.980595, 47.136845>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.877914, 38.599453, 46.889004> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.754864, 38.978348, 46.852982>,  <34.681034, 39.205685, 46.831367>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.754864, 38.978348, 46.852982>,  <34.877914, 38.599453, 46.889004>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.754864, 38.978348, 46.852982> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285462, -0.182159, -0.940920,
		-0.907677, -0.263743, 0.326437,
		-0.307624, 0.947237, -0.090052,
		34.662575, 39.262520, 46.825966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.214504, 38.482052, 46.612671>,  <34.877914, 38.599453, 46.889004>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.214504, 38.482052, 46.612671> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.352348, 38.848366, 46.530121>,  <34.435055, 39.068153, 46.480591>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.352348, 38.848366, 46.530121>,  <34.214504, 38.482052, 46.612671>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.352348, 38.848366, 46.530121> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353362, -0.077123, -0.932302,
		-0.869700, 0.394205, 0.297025,
		0.344611, 0.915781, -0.206371,
		34.455730, 39.123100, 46.468208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.590221, 38.833397, 46.398846>,  <34.214504, 38.482052, 46.612671>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.590221, 38.833397, 46.398846> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.911057, 38.997482, 46.225239>,  <34.103558, 39.095932, 46.121075>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.911057, 38.997482, 46.225239>,  <33.590221, 38.833397, 46.398846>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.911057, 38.997482, 46.225239> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431526, -0.104289, -0.896052,
		-0.412836, 0.906007, 0.093369,
		0.802092, 0.410213, -0.434020,
		34.151684, 39.120544, 46.095032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.426762, 39.362289, 45.897984>,  <33.590221, 38.833397, 46.398846>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.426762, 39.362289, 45.897984> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.792084, 39.251640, 45.778412>,  <34.011276, 39.185249, 45.706669>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.792084, 39.251640, 45.778412>,  <33.426762, 39.362289, 45.897984>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.792084, 39.251640, 45.778412> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301194, 0.035330, -0.952908,
		0.274160, 0.960328, -0.051052,
		0.913301, -0.276626, -0.298931,
		34.066074, 39.168652, 45.688732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<38.654228, 35.941711, 50.899101> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.928185, 36.226799, 50.838497>,  <39.092560, 36.397850, 50.802135>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.928185, 36.226799, 50.838497>,  <38.654228, 35.941711, 50.899101>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.928185, 36.226799, 50.838497> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491318, 0.298173, -0.818352,
		-0.538076, 0.634924, 0.554388,
		0.684895, 0.712716, -0.151510,
		39.133652, 36.440613, 50.793045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.233017, 36.507267, 50.777088>,  <38.654228, 35.941711, 50.899101>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.233017, 36.507267, 50.777088> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.590237, 36.536423, 50.599483>,  <38.804569, 36.553917, 50.492920>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.590237, 36.536423, 50.599483>,  <38.233017, 36.507267, 50.777088>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.590237, 36.536423, 50.599483> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448431, 0.225284, -0.864960,
		0.036984, 0.971563, 0.233876,
		0.893052, 0.072888, -0.444011,
		38.858150, 36.558289, 50.466282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.141354, 37.079601, 50.295673>,  <38.233017, 36.507267, 50.777088>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.141354, 37.079601, 50.295673> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.460129, 36.867340, 50.180233>,  <38.651394, 36.739983, 50.110970>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.460129, 36.867340, 50.180233>,  <38.141354, 37.079601, 50.295673>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.460129, 36.867340, 50.180233> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261358, 0.127819, -0.956742,
		0.544591, 0.837893, -0.036828,
		0.796940, -0.530658, -0.288599,
		38.699211, 36.708141, 50.093655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.193005, 37.315407, 49.560196>,  <38.141354, 37.079601, 50.295673>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.193005, 37.315407, 49.560196> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.431438, 36.995010, 49.582447>,  <38.574497, 36.802773, 49.595798>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.431438, 36.995010, 49.582447>,  <38.193005, 37.315407, 49.560196>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.431438, 36.995010, 49.582447> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106387, -0.147459, -0.983330,
		0.795843, 0.580229, -0.173113,
		0.596084, -0.800993, 0.055626,
		38.610264, 36.754711, 49.599136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.521786, 37.336308, 48.933506>,  <38.193005, 37.315407, 49.560196>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.521786, 37.336308, 48.933506> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.554230, 36.959141, 49.062702>,  <38.573696, 36.732841, 49.140221>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.554230, 36.959141, 49.062702>,  <38.521786, 37.336308, 48.933506>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.554230, 36.959141, 49.062702> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228485, -0.333019, -0.914819,
		0.970163, 0.000402, -0.242454,
		0.081109, -0.942920, 0.322991,
		38.578564, 36.676266, 49.159599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.899715, 36.978104, 48.409512>,  <38.521786, 37.336308, 48.933506>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.899715, 36.978104, 48.409512> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.715736, 36.684128, 48.608833>,  <38.605347, 36.507744, 48.728428>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.715736, 36.684128, 48.608833>,  <38.899715, 36.978104, 48.409512>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.715736, 36.684128, 48.608833> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259414, -0.425489, -0.866985,
		0.849206, -0.528038, 0.005051,
		-0.459951, -0.734938, 0.498308,
		38.577751, 36.463646, 48.758327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.093204, 36.329967, 48.016739>,  <38.899715, 36.978104, 48.409512>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.093204, 36.329967, 48.016739> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.762566, 36.230663, 48.218769>,  <38.564182, 36.171082, 48.339989>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.762566, 36.230663, 48.218769>,  <39.093204, 36.329967, 48.016739>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.762566, 36.230663, 48.218769> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297712, -0.568717, -0.766765,
		0.477600, -0.784175, 0.396192,
		-0.826599, -0.248256, 0.505077,
		38.514587, 36.156185, 48.370293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.069698, 35.589725, 48.053120>,  <39.093204, 36.329967, 48.016739>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.069698, 35.589725, 48.053120> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.703007, 35.741169, 48.104134>,  <38.482994, 35.832035, 48.134743>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.703007, 35.741169, 48.104134>,  <39.069698, 35.589725, 48.053120>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.703007, 35.741169, 48.104134> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329733, -0.536765, -0.776634,
		-0.225585, -0.754014, 0.616907,
		-0.916727, 0.378612, 0.127538,
		38.427990, 35.854752, 48.142395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.614174, 35.020443, 47.926949>,  <39.069698, 35.589725, 48.053120>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.614174, 35.020443, 47.926949> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.380177, 35.341541, 47.880684>,  <38.239777, 35.534199, 47.852924>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.380177, 35.341541, 47.880684>,  <38.614174, 35.020443, 47.926949>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.380177, 35.341541, 47.880684> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345346, -0.375587, -0.860041,
		-0.733837, -0.463175, 0.496942,
		-0.584994, 0.802747, -0.115664,
		38.204678, 35.582367, 47.845985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.041122, 34.686825, 47.554749>,  <38.614174, 35.020443, 47.926949>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.041122, 34.686825, 47.554749> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.016479, 35.081219, 47.492737>,  <38.001694, 35.317856, 47.455528>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.016479, 35.081219, 47.492737>,  <38.041122, 34.686825, 47.554749>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.016479, 35.081219, 47.492737> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576150, -0.161962, -0.801137,
		-0.815019, 0.039968, 0.578054,
		-0.061603, 0.985987, -0.155030,
		37.997997, 35.377014, 47.446228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.314201, 34.753662, 47.379650>,  <38.041122, 34.686825, 47.554749>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.314201, 34.753662, 47.379650> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.530609, 35.054924, 47.229950>,  <37.660454, 35.235680, 47.140129>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.530609, 35.054924, 47.229950>,  <37.314201, 34.753662, 47.379650>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.530609, 35.054924, 47.229950> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370746, -0.185839, -0.909951,
		-0.754882, 0.631050, 0.178686,
		0.541018, 0.753153, -0.374246,
		37.692913, 35.280869, 47.117676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.919605, 35.097702, 46.942211>,  <37.314201, 34.753662, 47.379650>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.919605, 35.097702, 46.942211> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.290241, 35.192120, 46.825104>,  <37.512623, 35.248772, 46.754841>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.290241, 35.192120, 46.825104>,  <36.919605, 35.097702, 46.942211>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.290241, 35.192120, 46.825104> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248689, -0.199391, -0.947838,
		-0.282109, 0.951065, -0.126052,
		0.926590, 0.236046, -0.292769,
		37.568218, 35.262932, 46.737274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.442253, 35.636707, 46.664246>,  <36.919605, 35.097702, 46.942211>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.442253, 35.636707, 46.664246> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.054653, 35.537903, 46.666424>,  <35.822094, 35.478619, 46.667728>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.054653, 35.537903, 46.666424>,  <36.442253, 35.636707, 46.664246>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.054653, 35.537903, 46.666424> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093652, 0.387591, 0.917062,
		-0.228633, 0.888121, -0.398707,
		-0.968997, -0.247011, 0.005442,
		35.763954, 35.463799, 46.668056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.024895, 36.306351, 46.798279>,  <36.442253, 35.636707, 46.664246>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.024895, 36.306351, 46.798279> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.805504, 35.987049, 46.897846>,  <35.673870, 35.795467, 46.957588>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.805504, 35.987049, 46.897846>,  <36.024895, 36.306351, 46.798279>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.805504, 35.987049, 46.897846> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070180, 0.340585, 0.937591,
		-0.833215, 0.496778, -0.242825,
		-0.548477, -0.798256, 0.248917,
		35.640961, 35.747574, 46.972523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.704666, 36.627430, 47.433681>,  <36.024895, 36.306351, 46.798279>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.704666, 36.627430, 47.433681> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.639446, 36.233093, 47.449314>,  <35.600315, 35.996490, 47.458694>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.639446, 36.233093, 47.449314>,  <35.704666, 36.627430, 47.433681>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.639446, 36.233093, 47.449314> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201976, 0.072123, 0.976731,
		-0.965722, 0.151366, -0.210876,
		-0.163052, -0.985843, 0.039079,
		35.590530, 35.937340, 47.461037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.007950, 36.504982, 47.767349>,  <35.704666, 36.627430, 47.433681>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.007950, 36.504982, 47.767349> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.200535, 36.155613, 47.796555>,  <35.316086, 35.945992, 47.814079>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.200535, 36.155613, 47.796555>,  <35.007950, 36.504982, 47.767349>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.200535, 36.155613, 47.796555> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098567, 0.028822, 0.994713,
		-0.870909, -0.486110, -0.072214,
		0.481459, -0.873422, 0.073016,
		35.344971, 35.893585, 47.818459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.584953, 35.948048, 48.241043>,  <35.007950, 36.504982, 47.767349>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.584953, 35.948048, 48.241043> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.971432, 35.845280, 48.232445>,  <35.203320, 35.783619, 48.227287>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.971432, 35.845280, 48.232445>,  <34.584953, 35.948048, 48.241043>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.971432, 35.845280, 48.232445> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008879, -0.116487, 0.993152,
		-0.257663, -0.959387, -0.114830,
		0.966194, -0.256918, -0.021496,
		35.261292, 35.768204, 48.225998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.646523, 35.639313, 48.849922>,  <34.584953, 35.948048, 48.241043>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.646523, 35.639313, 48.849922> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.031834, 35.700340, 48.761539>,  <35.263020, 35.736958, 48.708511>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.031834, 35.700340, 48.761539>,  <34.646523, 35.639313, 48.849922>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.031834, 35.700340, 48.761539> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170465, 0.288330, 0.942235,
		0.207461, -0.945298, 0.251735,
		0.963276, 0.152565, -0.220957,
		35.320816, 35.746109, 48.695251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.950123, 35.497566, 49.406105>,  <34.646523, 35.639313, 48.849922>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.950123, 35.497566, 49.406105> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.230148, 35.709335, 49.214428>,  <35.398163, 35.836395, 49.099422>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.230148, 35.709335, 49.214428>,  <34.950123, 35.497566, 49.406105>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.230148, 35.709335, 49.214428> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384116, 0.286506, 0.877707,
		0.601970, -0.798514, -0.002788,
		0.700063, 0.529424, -0.479190,
		35.440166, 35.868164, 49.070671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.345211, 35.521843, 49.938129>,  <34.950123, 35.497566, 49.406105>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.345211, 35.521843, 49.938129> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.464787, 35.804840, 49.681976>,  <35.536533, 35.974640, 49.528286>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.464787, 35.804840, 49.681976>,  <35.345211, 35.521843, 49.938129>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.464787, 35.804840, 49.681976> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160179, 0.624347, 0.764548,
		0.940733, -0.331128, 0.073315,
		0.298938, 0.707492, -0.640384,
		35.554466, 36.017086, 49.489861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.931767, 35.831619, 50.280727>,  <35.345211, 35.521843, 49.938129>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.931767, 35.831619, 50.280727> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.785732, 36.085712, 50.008495>,  <35.698112, 36.238171, 49.845158>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.785732, 36.085712, 50.008495>,  <35.931767, 35.831619, 50.280727>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.785732, 36.085712, 50.008495> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101443, 0.753829, 0.649192,
		0.925429, 0.167974, -0.339655,
		-0.365089, 0.635237, -0.680576,
		35.676205, 36.276283, 49.804321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.390572, 36.329823, 50.170822>,  <35.931767, 35.831619, 50.280727>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.390572, 36.329823, 50.170822> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.031528, 36.482525, 50.082668>,  <35.816105, 36.574146, 50.029774>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.031528, 36.482525, 50.082668>,  <36.390572, 36.329823, 50.170822>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.031528, 36.482525, 50.082668> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117687, 0.689369, 0.714787,
		0.424800, 0.615660, -0.663708,
		-0.897605, 0.381751, -0.220389,
		35.762245, 36.597050, 50.016552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.496223, 37.032104, 50.234848>,  <36.390572, 36.329823, 50.170822>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.496223, 37.032104, 50.234848> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.098354, 37.013569, 50.198036>,  <35.859631, 37.002445, 50.175949>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.098354, 37.013569, 50.198036>,  <36.496223, 37.032104, 50.234848>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.098354, 37.013569, 50.198036> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100093, 0.646711, 0.756139,
		0.024476, 0.761325, -0.647908,
		-0.994677, -0.046344, -0.092033,
		35.799950, 36.999664, 50.170425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.222328, 37.764042, 50.299107>,  <36.496223, 37.032104, 50.234848>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.222328, 37.764042, 50.299107> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.922695, 37.517910, 50.397285>,  <35.742916, 37.370232, 50.456192>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.922695, 37.517910, 50.397285>,  <36.222328, 37.764042, 50.299107>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.922695, 37.517910, 50.397285> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151137, 0.519460, 0.841022,
		-0.645006, 0.592900, -0.482118,
		-0.749083, -0.615330, 0.245446,
		35.697971, 37.333309, 50.470921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.535999, 38.144287, 50.297539>,  <36.222328, 37.764042, 50.299107>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.535999, 38.144287, 50.297539> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.512226, 37.822479, 50.533913>,  <35.497963, 37.629395, 50.675739>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.512226, 37.822479, 50.533913>,  <35.535999, 38.144287, 50.297539>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.512226, 37.822479, 50.533913> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439743, 0.552552, 0.708034,
		-0.896155, -0.217779, -0.386625,
		-0.059435, -0.804524, 0.590939,
		35.494396, 37.581123, 50.711193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.949146, 38.267677, 50.525002>,  <35.535999, 38.144287, 50.297539>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.949146, 38.267677, 50.525002> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.075783, 37.972691, 50.763634>,  <35.151764, 37.795696, 50.906815>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.075783, 37.972691, 50.763634>,  <34.949146, 38.267677, 50.525002>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.075783, 37.972691, 50.763634> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568534, 0.355921, 0.741680,
		-0.759304, -0.573982, -0.306598,
		0.316586, -0.737472, 0.596581,
		35.170757, 37.751450, 50.942608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.501408, 38.359581, 50.032425>,  <34.949146, 38.267677, 50.525002>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.501408, 38.359581, 50.032425> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.308910, 38.660736, 50.212009>,  <34.193413, 38.841431, 50.319759>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.308910, 38.660736, 50.212009>,  <34.501408, 38.359581, 50.032425>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.308910, 38.660736, 50.212009> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054237, 0.485610, -0.872492,
		-0.874910, -0.444227, -0.192860,
		-0.481239, 0.752891, 0.448958,
		34.164539, 38.886604, 50.346695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.000832, 38.478378, 49.578808>,  <34.501408, 38.359581, 50.032425>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.000832, 38.478378, 49.578808> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.044556, 38.814781, 49.790752>,  <34.070789, 39.016624, 49.917919>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.044556, 38.814781, 49.790752>,  <34.000832, 38.478378, 49.578808>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.044556, 38.814781, 49.790752> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050657, 0.537081, -0.842009,
		-0.992716, 0.065197, 0.101311,
		0.109309, 0.841008, 0.529866,
		34.077347, 39.067085, 49.949711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.502342, 38.952637, 49.347279>,  <34.000832, 38.478378, 49.578808>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.502342, 38.952637, 49.347279> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.791214, 39.172607, 49.515106>,  <33.964539, 39.304588, 49.615803>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.791214, 39.172607, 49.515106>,  <33.502342, 38.952637, 49.347279>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.791214, 39.172607, 49.515106> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190975, 0.424482, -0.885067,
		-0.664820, 0.719305, 0.201530,
		0.722179, 0.549923, 0.419573,
		34.007866, 39.337585, 49.640980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.410381, 39.631916, 49.172981>,  <33.502342, 38.952637, 49.347279>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.410381, 39.631916, 49.172981> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.802128, 39.611519, 49.251209>,  <34.037174, 39.599281, 49.298145>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.802128, 39.611519, 49.251209>,  <33.410381, 39.631916, 49.172981>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.802128, 39.611519, 49.251209> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200712, 0.359098, -0.911462,
		-0.023753, 0.931906, 0.361921,
		0.979362, -0.050992, 0.195574,
		34.095936, 39.596222, 49.309883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.715702, 40.284050, 49.008598>,  <33.410381, 39.631916, 49.172981>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.715702, 40.284050, 49.008598> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.021954, 40.027515, 48.988617>,  <34.205704, 39.873596, 48.976627>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.021954, 40.027515, 48.988617>,  <33.715702, 40.284050, 49.008598>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.021954, 40.027515, 48.988617> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235918, 0.352192, -0.905706,
		0.598455, 0.681653, 0.420952,
		0.765634, -0.641334, -0.049957,
		34.251644, 39.835114, 48.973629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.281330, 40.664761, 48.800041>,  <33.715702, 40.284050, 49.008598>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.281330, 40.664761, 48.800041> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.382214, 40.286469, 48.718071>,  <34.442741, 40.059494, 48.668888>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.382214, 40.286469, 48.718071>,  <34.281330, 40.664761, 48.800041>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.382214, 40.286469, 48.718071> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186496, 0.255305, -0.948704,
		0.949532, 0.201051, 0.240763,
		0.252206, -0.945726, -0.204926,
		34.457874, 40.002750, 48.656593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.991817, 40.619896, 48.346603>,  <34.281330, 40.664761, 48.800041>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.991817, 40.619896, 48.346603> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.799675, 40.272045, 48.300983>,  <34.684391, 40.063335, 48.273613>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.799675, 40.272045, 48.300983>,  <34.991817, 40.619896, 48.346603>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.799675, 40.272045, 48.300983> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026784, 0.115431, -0.992954,
		0.876666, -0.480024, -0.032155,
		-0.480354, -0.869628, -0.114051,
		34.655567, 40.011158, 48.266769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.685463, 40.728436, 48.329292>,  <34.991817, 40.619896, 48.346603>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.685463, 40.728436, 48.329292> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.970783, 41.004787, 48.282154>,  <36.141975, 41.170601, 48.253872>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.970783, 41.004787, 48.282154>,  <35.685463, 40.728436, 48.329292>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.970783, 41.004787, 48.282154> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252347, -0.096303, 0.962833,
		0.653855, -0.716525, -0.243035,
		0.713299, 0.690882, -0.117844,
		36.184772, 41.212051, 48.246799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.402138, 40.489594, 48.576847>,  <35.685463, 40.728436, 48.329292>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.402138, 40.489594, 48.576847> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.414646, 40.888821, 48.598297>,  <36.422150, 41.128357, 48.611168>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.414646, 40.888821, 48.598297>,  <36.402138, 40.489594, 48.576847>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.414646, 40.888821, 48.598297> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507103, -0.062071, 0.859647,
		0.861318, 0.000313, -0.508066,
		0.031267, 0.998072, 0.053622,
		36.424026, 41.188244, 48.614384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.939407, 40.465851, 48.898258>,  <36.402138, 40.489594, 48.576847>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.939407, 40.465851, 48.898258> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.826740, 40.849083, 48.919228>,  <36.759140, 41.079021, 48.931808>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.826740, 40.849083, 48.919228>,  <36.939407, 40.465851, 48.898258>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.826740, 40.849083, 48.919228> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498641, 0.099480, 0.861081,
		0.819767, 0.268684, -0.505757,
		-0.281672, 0.958077, 0.052427,
		36.742237, 41.136505, 48.934956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.476185, 40.814491, 49.089066>,  <36.939407, 40.465851, 48.898258>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.476185, 40.814491, 49.089066> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.173779, 41.057442, 49.186668>,  <36.992336, 41.203213, 49.245228>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.173779, 41.057442, 49.186668>,  <37.476185, 40.814491, 49.089066>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.173779, 41.057442, 49.186668> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277272, -0.040513, 0.959937,
		0.592927, 0.793382, -0.137779,
		-0.756015, 0.607375, 0.244004,
		36.946976, 41.239655, 49.259869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.765087, 41.376289, 49.595345>,  <37.476185, 40.814491, 49.089066>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.765087, 41.376289, 49.595345> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.371223, 41.316689, 49.631672>,  <37.134907, 41.280930, 49.653469>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.371223, 41.316689, 49.631672>,  <37.765087, 41.376289, 49.595345>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.371223, 41.316689, 49.631672> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113409, -0.150896, 0.982023,
		-0.132616, 0.977256, 0.165479,
		-0.984658, -0.148999, 0.090818,
		37.075825, 41.271988, 49.658916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.665878, 41.849674, 50.040733>,  <37.765087, 41.376289, 49.595345>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.665878, 41.849674, 50.040733> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.351219, 41.603703, 50.062847>,  <37.162426, 41.456120, 50.076115>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.351219, 41.603703, 50.062847>,  <37.665878, 41.849674, 50.040733>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.351219, 41.603703, 50.062847> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079021, -0.011475, 0.996807,
		-0.612328, 0.788502, 0.057618,
		-0.786645, -0.614925, 0.055282,
		37.115227, 41.419224, 50.079433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.238930, 42.104244, 50.606659>,  <37.665878, 41.849674, 50.040733>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.238930, 42.104244, 50.606659> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.151443, 41.720238, 50.536758>,  <37.098953, 41.489834, 50.494816>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.151443, 41.720238, 50.536758>,  <37.238930, 42.104244, 50.606659>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.151443, 41.720238, 50.536758> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233887, -0.225446, 0.945765,
		-0.947345, 0.165977, 0.273842,
		-0.218712, -0.960013, -0.174756,
		37.085831, 41.432232, 50.484333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.937141, 41.912136, 51.283466>,  <37.238930, 42.104244, 50.606659>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.937141, 41.912136, 51.283466> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.006073, 41.564510, 51.097980>,  <37.047432, 41.355934, 50.986691>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.006073, 41.564510, 51.097980>,  <36.937141, 41.912136, 51.283466>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.006073, 41.564510, 51.097980> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040207, -0.464157, 0.884840,
		-0.984218, -0.171128, -0.045046,
		0.172329, -0.869065, -0.463713,
		37.057774, 41.303791, 50.958866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.481953, 41.422680, 51.612988>,  <36.937141, 41.912136, 51.283466>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.481953, 41.422680, 51.612988> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.791824, 41.236401, 51.441875>,  <36.977749, 41.124634, 51.339207>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.791824, 41.236401, 51.441875>,  <36.481953, 41.422680, 51.612988>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.791824, 41.236401, 51.441875> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074579, -0.604481, 0.793121,
		-0.627946, -0.646315, -0.433544,
		0.774675, -0.465704, -0.427783,
		37.024227, 41.096691, 51.313541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<35.605637, 37.264076, 35.470795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.991669, 37.179451, 35.532574>,  <36.223289, 37.128674, 35.569641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.991669, 37.179451, 35.532574>,  <35.605637, 37.264076, 35.470795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.991669, 37.179451, 35.532574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117456, 0.177498, 0.977087,
		-0.234133, -0.961111, 0.146451,
		0.965083, -0.211567, 0.154447,
		36.281193, 37.115982, 35.578907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.661190, 36.670410, 35.970192>,  <35.605637, 37.264076, 35.470795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.661190, 36.670410, 35.970192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.020809, 36.845127, 35.982323>,  <36.236580, 36.949959, 35.989601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.020809, 36.845127, 35.982323>,  <35.661190, 36.670410, 35.970192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.020809, 36.845127, 35.982323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079348, 0.094430, 0.992364,
		0.430594, -0.894592, 0.119557,
		0.899051, 0.436793, 0.030323,
		36.290524, 36.976166, 35.991421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.033516, 36.393288, 36.558727>,  <35.661190, 36.670410, 35.970192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.033516, 36.393288, 36.558727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.227840, 36.731937, 36.471813>,  <36.344437, 36.935127, 36.419662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.227840, 36.731937, 36.471813>,  <36.033516, 36.393288, 36.558727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.227840, 36.731937, 36.471813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074253, 0.207723, 0.975365,
		0.870902, -0.489981, 0.038050,
		0.485814, 0.846622, -0.217289,
		36.373585, 36.985924, 36.406628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.710945, 36.389427, 36.919903>,  <36.033516, 36.393288, 36.558727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.710945, 36.389427, 36.919903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.596424, 36.767281, 36.855785>,  <36.527710, 36.993992, 36.817314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.596424, 36.767281, 36.855785>,  <36.710945, 36.389427, 36.919903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.596424, 36.767281, 36.855785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044508, 0.180229, 0.982617,
		0.957105, 0.274193, -0.093644,
		-0.286304, 0.944635, -0.160295,
		36.510532, 37.050671, 36.807697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.220383, 36.802261, 37.290920>,  <36.710945, 36.389427, 36.919903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.220383, 36.802261, 37.290920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.884987, 37.011002, 37.228176>,  <36.683750, 37.136246, 37.190529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.884987, 37.011002, 37.228176>,  <37.220383, 36.802261, 37.290920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.884987, 37.011002, 37.228176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057647, 0.201299, 0.977832,
		0.541859, 0.828945, -0.138704,
		-0.838490, 0.521851, -0.156861,
		36.633438, 37.167557, 37.181118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.312092, 37.339104, 37.797813>,  <37.220383, 36.802261, 37.290920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.312092, 37.339104, 37.797813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.925407, 37.352295, 37.696312>,  <36.693398, 37.360210, 37.635410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.925407, 37.352295, 37.696312>,  <37.312092, 37.339104, 37.797813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.925407, 37.352295, 37.696312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212385, 0.449713, 0.867555,
		0.142722, 0.892564, -0.427737,
		-0.966707, 0.032974, -0.253752,
		36.635395, 37.362186, 37.620186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.153732, 37.681595, 38.360630>,  <37.312092, 37.339104, 37.797813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.153732, 37.681595, 38.360630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.830170, 37.752491, 38.136395>,  <36.636032, 37.795029, 38.001854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.830170, 37.752491, 38.136395>,  <37.153732, 37.681595, 38.360630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.830170, 37.752491, 38.136395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279458, 0.722978, 0.631827,
		0.517281, 0.667748, -0.535288,
		-0.808903, 0.177241, -0.560591,
		36.587498, 37.805664, 37.968216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.216751, 38.346443, 38.222897>,  <37.153732, 37.681595, 38.360630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.216751, 38.346443, 38.222897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.831959, 38.237251, 38.226143>,  <36.601082, 38.171734, 38.228092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.831959, 38.237251, 38.226143>,  <37.216751, 38.346443, 38.222897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.831959, 38.237251, 38.226143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187761, 0.682665, 0.706197,
		-0.198320, 0.677827, -0.707969,
		-0.961985, -0.272982, 0.008117,
		36.543362, 38.155357, 38.228577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.756840, 38.993343, 38.060467>,  <37.216751, 38.346443, 38.222897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.756840, 38.993343, 38.060467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.578663, 38.713558, 38.284016>,  <36.471756, 38.545689, 38.418144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.578663, 38.713558, 38.284016>,  <36.756840, 38.993343, 38.060467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.578663, 38.713558, 38.284016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183641, 0.682329, 0.707604,
		-0.876274, 0.212566, -0.432388,
		-0.445443, -0.699459, 0.558871,
		36.445030, 38.503719, 38.451675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.091988, 39.205166, 38.175575>,  <36.756840, 38.993343, 38.060467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.091988, 39.205166, 38.175575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.180126, 38.960014, 38.479111>,  <36.233009, 38.812923, 38.661232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.180126, 38.960014, 38.479111>,  <36.091988, 39.205166, 38.175575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.180126, 38.960014, 38.479111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457654, 0.622055, 0.635296,
		-0.861395, -0.487269, -0.143418,
		0.220346, -0.612876, 0.758835,
		36.246231, 38.776150, 38.706760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.500778, 39.233727, 38.769951>,  <36.091988, 39.205166, 38.175575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.500778, 39.233727, 38.769951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.806351, 39.071220, 38.970497>,  <35.989693, 38.973717, 39.090824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.806351, 39.071220, 38.970497>,  <35.500778, 39.233727, 38.769951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.806351, 39.071220, 38.970497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407716, 0.298344, 0.862994,
		-0.500183, -0.863678, 0.062272,
		0.763927, -0.406266, 0.501362,
		36.035530, 38.949341, 39.120907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.171131, 38.853790, 39.366634>,  <35.500778, 39.233727, 38.769951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.171131, 38.853790, 39.366634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.559402, 38.905354, 39.447800>,  <35.792366, 38.936291, 39.496498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.559402, 38.905354, 39.447800>,  <35.171131, 38.853790, 39.366634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.559402, 38.905354, 39.447800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235062, 0.332089, 0.913489,
		0.050371, -0.934398, 0.352652,
		0.970674, 0.128908, 0.202914,
		35.850605, 38.944027, 39.508675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.612396, 38.442554, 39.554611>,  <35.171131, 38.853790, 39.366634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.612396, 38.442554, 39.554611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.222591, 38.412231, 39.639069>,  <33.988708, 38.394035, 39.689743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.222591, 38.412231, 39.639069>,  <34.612396, 38.442554, 39.554611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.222591, 38.412231, 39.639069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179253, -0.302785, -0.936050,
		0.134895, -0.950039, 0.281478,
		-0.974511, -0.075812, 0.211142,
		33.930237, 38.389488, 39.702412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.439701, 37.775692, 39.415268>,  <34.612396, 38.442554, 39.554611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.439701, 37.775692, 39.415268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.079052, 37.948681, 39.417759>,  <33.862663, 38.052475, 39.419254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.079052, 37.948681, 39.417759>,  <34.439701, 37.775692, 39.415268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.079052, 37.948681, 39.417759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222624, -0.451696, -0.863950,
		-0.370819, -0.780347, 0.503540,
		-0.901627, 0.432469, 0.006227,
		33.808563, 38.078423, 39.419628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.052631, 37.261597, 39.187325>,  <34.439701, 37.775692, 39.415268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.052631, 37.261597, 39.187325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.796253, 37.564846, 39.139256>,  <33.642426, 37.746796, 39.110413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.796253, 37.564846, 39.139256>,  <34.052631, 37.261597, 39.187325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.796253, 37.564846, 39.139256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348737, -0.427074, -0.834260,
		-0.683796, -0.492803, 0.538116,
		-0.640941, 0.758125, -0.120173,
		33.603970, 37.792282, 39.103203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.394489, 36.949757, 38.988377>,  <34.052631, 37.261597, 39.187325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.394489, 36.949757, 38.988377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.363300, 37.330460, 38.869667>,  <33.344585, 37.558880, 38.798439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.363300, 37.330460, 38.869667>,  <33.394489, 36.949757, 38.988377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.363300, 37.330460, 38.869667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538432, -0.290740, -0.790924,
		-0.839054, 0.098122, 0.535127,
		-0.077975, 0.951758, -0.296778,
		33.339909, 37.615986, 38.780632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.678833, 37.052204, 38.789715>,  <33.394489, 36.949757, 38.988377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.678833, 37.052204, 38.789715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.882301, 37.336990, 38.596069>,  <33.004383, 37.507862, 38.479881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.882301, 37.336990, 38.596069>,  <32.678833, 37.052204, 38.789715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.882301, 37.336990, 38.596069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383572, -0.316002, -0.867765,
		-0.770798, 0.627095, 0.112350,
		0.508668, 0.711965, -0.484110,
		33.034901, 37.550579, 38.450836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.239555, 37.323002, 38.294010>,  <32.678833, 37.052204, 38.789715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.239555, 37.323002, 38.294010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.598614, 37.396698, 38.133865>,  <32.814049, 37.440914, 38.037781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.598614, 37.396698, 38.133865>,  <32.239555, 37.323002, 38.294010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.598614, 37.396698, 38.133865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364824, -0.199017, -0.909558,
		-0.247252, 0.962522, -0.111433,
		0.897647, 0.184237, -0.400359,
		32.867908, 37.451969, 38.013760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.094734, 37.713860, 37.744698>,  <32.239555, 37.323002, 38.294010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.094734, 37.713860, 37.744698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.468639, 37.586952, 37.680759>,  <32.692982, 37.510807, 37.642395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.468639, 37.586952, 37.680759>,  <32.094734, 37.713860, 37.744698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.468639, 37.586952, 37.680759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270068, -0.342293, -0.899944,
		0.230812, 0.884407, -0.405649,
		0.934767, -0.317271, -0.159844,
		32.749069, 37.491772, 37.632805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.260891, 37.897179, 37.084084>,  <32.094734, 37.713860, 37.744698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.260891, 37.897179, 37.084084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.552567, 37.632015, 37.152000>,  <32.727573, 37.472916, 37.192753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.552567, 37.632015, 37.152000>,  <32.260891, 37.897179, 37.084084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.552567, 37.632015, 37.152000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210959, -0.453805, -0.865770,
		0.650983, 0.595490, -0.470758,
		0.729190, -0.662912, 0.169795,
		32.771324, 37.433144, 37.202938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.609558, 37.970230, 36.491516>,  <32.260891, 37.897179, 37.084084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.609558, 37.970230, 36.491516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.669140, 37.608448, 36.651402>,  <32.704891, 37.391380, 36.747334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.669140, 37.608448, 36.651402>,  <32.609558, 37.970230, 36.491516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.669140, 37.608448, 36.651402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094319, -0.415378, -0.904746,
		0.984335, 0.097069, -0.147182,
		0.148959, -0.904455, 0.399715,
		32.713829, 37.337112, 36.771317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.055794, 37.642757, 35.997585>,  <32.609558, 37.970230, 36.491516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.055794, 37.642757, 35.997585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.889702, 37.349361, 36.212833>,  <32.790047, 37.173325, 36.341984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.889702, 37.349361, 36.212833>,  <33.055794, 37.642757, 35.997585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.889702, 37.349361, 36.212833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185605, -0.510779, -0.839438,
		0.890583, -0.448435, 0.075949,
		-0.415226, -0.733492, 0.538123,
		32.765133, 37.129314, 36.374271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.238003, 37.027454, 35.674271>,  <33.055794, 37.642757, 35.997585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.238003, 37.027454, 35.674271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.898380, 36.956486, 35.873322>,  <32.694607, 36.913906, 35.992752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.898380, 36.956486, 35.873322>,  <33.238003, 37.027454, 35.674271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.898380, 36.956486, 35.873322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299144, -0.614922, -0.729646,
		0.435452, -0.768371, 0.469029,
		-0.849055, -0.177418, 0.497623,
		32.643665, 36.903259, 36.022610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.069267, 36.465431, 35.330044>,  <33.238003, 37.027454, 35.674271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.069267, 36.465431, 35.330044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.741123, 36.537540, 35.547119>,  <32.544235, 36.580807, 35.677364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.741123, 36.537540, 35.547119>,  <33.069267, 36.465431, 35.330044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.741123, 36.537540, 35.547119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531519, -0.590449, -0.607337,
		0.210944, -0.786684, 0.580199,
		-0.820360, 0.180273, 0.542689,
		32.495014, 36.591621, 35.709927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.919754, 35.810612, 35.531769>,  <33.069267, 36.465431, 35.330044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.919754, 35.810612, 35.531769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.599724, 36.050121, 35.546455>,  <32.407707, 36.193829, 35.555267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.599724, 36.050121, 35.546455>,  <32.919754, 35.810612, 35.531769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.599724, 36.050121, 35.546455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544425, -0.699027, -0.463641,
		-0.251950, -0.390937, 0.885262,
		-0.800076, 0.598773, 0.036716,
		32.359699, 36.229752, 35.557468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.362362, 35.475533, 35.904568>,  <32.919754, 35.810612, 35.531769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.362362, 35.475533, 35.904568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.263680, 35.720257, 35.603951>,  <32.204472, 35.867092, 35.423580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.263680, 35.720257, 35.603951>,  <32.362362, 35.475533, 35.904568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.263680, 35.720257, 35.603951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559588, -0.723095, -0.404962,
		-0.791201, 0.320650, 0.520754,
		-0.246704, 0.611814, -0.751545,
		32.189667, 35.903801, 35.378487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.835293, 34.946693, 35.933067>,  <32.362362, 35.475533, 35.904568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.835293, 34.946693, 35.933067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.840168, 34.698780, 35.619194>,  <31.843092, 34.550034, 35.430870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.840168, 34.698780, 35.619194>,  <31.835293, 34.946693, 35.933067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.840168, 34.698780, 35.619194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.989954, -0.103075, 0.096788,
		-0.140869, -0.777977, 0.612297,
		0.012187, -0.619780, -0.784681,
		31.843824, 34.512848, 35.383789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.358765, 34.418453, 36.082184>,  <31.835293, 34.946693, 35.933067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.358765, 34.418453, 36.082184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.316452, 34.481026, 35.689381>,  <32.291065, 34.518570, 35.453697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.316452, 34.481026, 35.689381>,  <32.358765, 34.418453, 36.082184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.316452, 34.481026, 35.689381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.994323, 0.028008, -0.102649,
		0.011447, -0.987292, -0.158503,
		-0.105784, 0.156428, -0.982008,
		32.284718, 34.527954, 35.394779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.748653, 34.824047, 36.628670>,  <32.358765, 34.418453, 36.082184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.748653, 34.824047, 36.628670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.066158, 34.580990, 36.639389>,  <33.256660, 34.435154, 36.645821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.066158, 34.580990, 36.639389>,  <32.748653, 34.824047, 36.628670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.066158, 34.580990, 36.639389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105087, -0.093614, 0.990047,
		-0.599085, -0.788675, -0.138163,
		0.793759, -0.607642, 0.026797,
		33.304287, 34.398697, 36.647427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.580498, 34.180023, 37.110905>,  <32.748653, 34.824047, 36.628670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.580498, 34.180023, 37.110905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.976921, 34.203758, 37.063103>,  <33.214775, 34.217999, 37.034420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.976921, 34.203758, 37.063103>,  <32.580498, 34.180023, 37.110905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.976921, 34.203758, 37.063103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123634, -0.071579, 0.989743,
		0.050179, -0.995668, -0.078276,
		0.991058, 0.059342, -0.119507,
		33.274239, 34.221561, 37.027252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.913914, 33.607094, 37.508640>,  <32.580498, 34.180023, 37.110905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.913914, 33.607094, 37.508640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.205452, 33.877502, 37.465225>,  <33.380375, 34.039749, 37.439178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.205452, 33.877502, 37.465225>,  <32.913914, 33.607094, 37.508640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.205452, 33.877502, 37.465225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235456, -0.098624, 0.966868,
		0.642924, -0.730248, -0.231055,
		0.728841, 0.676026, -0.108534,
		33.424103, 34.080311, 37.432667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.555340, 33.375237, 37.709396>,  <32.913914, 33.607094, 37.508640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.555340, 33.375237, 37.709396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.589054, 33.769493, 37.767933>,  <33.609283, 34.006046, 37.803055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.589054, 33.769493, 37.767933>,  <33.555340, 33.375237, 37.709396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.589054, 33.769493, 37.767933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069032, -0.152285, 0.985923,
		0.994048, -0.072993, -0.080876,
		0.084282, 0.985637, 0.146340,
		33.614338, 34.065186, 37.811836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.140690, 33.505592, 38.179077>,  <33.555340, 33.375237, 37.709396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.140690, 33.505592, 38.179077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.929527, 33.843040, 38.218300>,  <33.802830, 34.045509, 38.241833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.929527, 33.843040, 38.218300>,  <34.140690, 33.505592, 38.179077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.929527, 33.843040, 38.218300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198947, 0.010591, 0.979953,
		0.825671, 0.536834, -0.173427,
		-0.527909, 0.843621, 0.098056,
		33.771156, 34.096127, 38.247715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.566757, 34.024052, 38.464729>,  <34.140690, 33.505592, 38.179077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.566757, 34.024052, 38.464729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.187389, 34.125198, 38.541214>,  <33.959770, 34.185886, 38.587105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.187389, 34.125198, 38.541214>,  <34.566757, 34.024052, 38.464729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.187389, 34.125198, 38.541214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259154, 0.270995, 0.927039,
		0.182600, 0.928773, -0.322548,
		-0.948418, 0.252867, 0.191212,
		33.902863, 34.201057, 38.598579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.609905, 34.687336, 38.775890>,  <34.566757, 34.024052, 38.464729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.609905, 34.687336, 38.775890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.264778, 34.519432, 38.888565>,  <34.057701, 34.418690, 38.956169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.264778, 34.519432, 38.888565>,  <34.609905, 34.687336, 38.775890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.264778, 34.519432, 38.888565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123222, 0.365786, 0.922506,
		-0.490273, 0.830662, -0.263881,
		-0.862814, -0.419763, 0.281691,
		34.005936, 34.393501, 38.973072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.496647, 35.081646, 39.433495>,  <34.609905, 34.687336, 38.775890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.496647, 35.081646, 39.433495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.203934, 34.809700, 39.452606>,  <34.028305, 34.646534, 39.464073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.203934, 34.809700, 39.452606>,  <34.496647, 35.081646, 39.433495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.203934, 34.809700, 39.452606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089965, -0.026872, 0.995582,
		-0.675576, 0.732846, 0.080828,
		-0.731781, -0.679863, 0.047777,
		33.984398, 34.605740, 39.466938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.973492, 35.311222, 39.968254>,  <34.496647, 35.081646, 39.433495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.973492, 35.311222, 39.968254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.955177, 34.913803, 39.926762>,  <33.944187, 34.675350, 39.901867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.955177, 34.913803, 39.926762>,  <33.973492, 35.311222, 39.968254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.955177, 34.913803, 39.926762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179461, -0.110334, 0.977558,
		-0.982699, 0.026143, 0.183355,
		-0.045786, -0.993551, -0.103734,
		33.941441, 34.615738, 39.895641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.673084, 35.114178, 40.526833>,  <33.973492, 35.311222, 39.968254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.673084, 35.114178, 40.526833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.819046, 34.758091, 40.417755>,  <33.906624, 34.544437, 40.352310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.819046, 34.758091, 40.417755>,  <33.673084, 35.114178, 40.526833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.819046, 34.758091, 40.417755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068185, -0.266552, 0.961406,
		-0.928546, -0.369412, -0.036566,
		0.364902, -0.890216, -0.272694,
		33.928516, 34.491028, 40.335945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.317345, 34.665070, 40.896065>,  <33.673084, 35.114178, 40.526833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.317345, 34.665070, 40.896065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.664371, 34.489784, 40.802002>,  <33.872585, 34.384613, 40.745564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.664371, 34.489784, 40.802002>,  <33.317345, 34.665070, 40.896065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.664371, 34.489784, 40.802002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122145, -0.270611, 0.954908,
		-0.482094, -0.857167, -0.181246,
		0.867563, -0.438218, -0.235159,
		33.924641, 34.358318, 40.731453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.367313, 34.155842, 41.386166>,  <33.317345, 34.665070, 40.896065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.367313, 34.155842, 41.386166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.731163, 34.207897, 41.228355>,  <33.949471, 34.239132, 41.133667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.731163, 34.207897, 41.228355>,  <33.367313, 34.155842, 41.386166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.731163, 34.207897, 41.228355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411028, -0.143900, 0.900194,
		0.060381, -0.980997, -0.184386,
		0.909621, 0.130142, -0.394529,
		34.004047, 34.246941, 41.109997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.726986, 33.624508, 41.740250>,  <33.367313, 34.155842, 41.386166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.726986, 33.624508, 41.740250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.007778, 33.861683, 41.582439>,  <34.176254, 34.003986, 41.487755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.007778, 33.861683, 41.582439>,  <33.726986, 33.624508, 41.740250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.007778, 33.861683, 41.582439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466423, 0.035880, 0.883834,
		0.538211, -0.804451, -0.251371,
		0.701982, 0.592935, -0.394525,
		34.218372, 34.039562, 41.464081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.473835, 33.361996, 42.033054>,  <33.726986, 33.624508, 41.740250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.473835, 33.361996, 42.033054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.501381, 33.735626, 41.892906>,  <34.517910, 33.959805, 41.808815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.501381, 33.735626, 41.892906>,  <34.473835, 33.361996, 42.033054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.501381, 33.735626, 41.892906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607105, 0.239451, 0.757685,
		0.791632, -0.264890, -0.550592,
		0.068864, 0.934075, -0.350373,
		34.522041, 34.015850, 41.787796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.184860, 33.495937, 41.937710>,  <34.473835, 33.361996, 42.033054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.184860, 33.495937, 41.937710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.007133, 33.851814, 41.979729>,  <34.900497, 34.065338, 42.004940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.007133, 33.851814, 41.979729>,  <35.184860, 33.495937, 41.937710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.007133, 33.851814, 41.979729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535531, 0.169770, 0.827275,
		0.718185, 0.423826, -0.551889,
		-0.444315, 0.889691, 0.105046,
		34.873840, 34.118721, 42.011242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.697605, 33.996704, 42.104122>,  <35.184860, 33.495937, 41.937710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.697605, 33.996704, 42.104122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.360622, 34.182507, 42.213299>,  <35.158432, 34.293987, 42.278805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.360622, 34.182507, 42.213299>,  <35.697605, 33.996704, 42.104122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.360622, 34.182507, 42.213299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469320, 0.383946, 0.795188,
		0.264573, 0.798011, -0.541460,
		-0.842461, 0.464503, 0.272941,
		35.107883, 34.321857, 42.295181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.922001, 34.655170, 42.429081>,  <35.697605, 33.996704, 42.104122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.922001, 34.655170, 42.429081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.553711, 34.626148, 42.582439>,  <35.332737, 34.608734, 42.674454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.553711, 34.626148, 42.582439>,  <35.922001, 34.655170, 42.429081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.553711, 34.626148, 42.582439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311298, 0.455835, 0.833851,
		-0.235268, 0.887102, -0.397113,
		-0.920729, -0.072558, 0.383396,
		35.277493, 34.604382, 42.697460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.909538, 35.171284, 42.955944>,  <35.922001, 34.655170, 42.429081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.909538, 35.171284, 42.955944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.622742, 34.909336, 43.051495>,  <35.450665, 34.752167, 43.108826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.622742, 34.909336, 43.051495>,  <35.909538, 35.171284, 42.955944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.622742, 34.909336, 43.051495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226629, 0.105072, 0.968297,
		-0.659210, 0.748400, 0.073077,
		-0.716995, -0.654872, 0.238874,
		35.407642, 34.712875, 43.123158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.328373, 35.593475, 43.355492>,  <35.909538, 35.171284, 42.955944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.328373, 35.593475, 43.355492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.304508, 35.204739, 43.446671>,  <35.290192, 34.971497, 43.501377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.304508, 35.204739, 43.446671>,  <35.328373, 35.593475, 43.355492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.304508, 35.204739, 43.446671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042110, 0.225696, 0.973287,
		-0.997330, 0.067664, 0.027460,
		-0.059659, -0.971845, 0.227943,
		35.286610, 34.913185, 43.515053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.851269, 35.588810, 43.839573>,  <35.328373, 35.593475, 43.355492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.851269, 35.588810, 43.839573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.052155, 35.247387, 43.895031>,  <35.172688, 35.042534, 43.928307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.052155, 35.247387, 43.895031>,  <34.851269, 35.588810, 43.839573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.052155, 35.247387, 43.895031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054165, 0.191063, 0.980082,
		-0.863043, -0.484705, 0.142188,
		0.502217, -0.853555, 0.138641,
		35.202820, 34.991322, 43.936623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.589348, 35.323086, 44.541416>,  <34.851269, 35.588810, 43.839573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.589348, 35.323086, 44.541416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.919025, 35.113697, 44.454983>,  <35.116833, 34.988064, 44.403122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.919025, 35.113697, 44.454983>,  <34.589348, 35.323086, 44.541416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.919025, 35.113697, 44.454983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183590, -0.113987, 0.976372,
		-0.535730, -0.844386, 0.002157,
		0.824189, -0.523468, -0.216087,
		35.166283, 34.956657, 44.390156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.483704, 34.666367, 44.884155>,  <34.589348, 35.323086, 44.541416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.483704, 34.666367, 44.884155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.870491, 34.744503, 44.818657>,  <35.102562, 34.791386, 44.779358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.870491, 34.744503, 44.818657>,  <34.483704, 34.666367, 44.884155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.870491, 34.744503, 44.818657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152975, 0.069136, 0.985809,
		0.203889, -0.978295, 0.036971,
		0.966969, 0.195340, -0.163751,
		35.160583, 34.803104, 44.769531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.863705, 34.242577, 45.373699>,  <34.483704, 34.666367, 44.884155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.863705, 34.242577, 45.373699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.110771, 34.542156, 45.277733>,  <35.259010, 34.721905, 45.220154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.110771, 34.542156, 45.277733>,  <34.863705, 34.242577, 45.373699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.110771, 34.542156, 45.277733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182333, 0.160370, 0.970070,
		0.765011, -0.642924, -0.037503,
		0.617667, 0.748953, -0.239911,
		35.296070, 34.766842, 45.205761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.523205, 34.147053, 45.691647>,  <34.863705, 34.242577, 45.373699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.523205, 34.147053, 45.691647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.506439, 34.538795, 45.612556>,  <35.496380, 34.773842, 45.565102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.506439, 34.538795, 45.612556>,  <35.523205, 34.147053, 45.691647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.506439, 34.538795, 45.612556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224745, 0.202070, 0.953235,
		0.973516, -0.004482, -0.228577,
		-0.041916, 0.979361, -0.197725,
		35.493866, 34.832603, 45.553238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.045013, 34.412991, 46.117329>,  <35.523205, 34.147053, 45.691647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.045013, 34.412991, 46.117329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.828747, 34.732975, 46.013218>,  <35.698986, 34.924965, 45.950752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.828747, 34.732975, 46.013218>,  <36.045013, 34.412991, 46.117329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.828747, 34.732975, 46.013218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099749, 0.368182, 0.924387,
		0.835303, 0.473822, -0.278859,
		-0.540666, 0.799959, -0.260280,
		35.666546, 34.972961, 45.935135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.382706, 34.985397, 46.374947>,  <36.045013, 34.412991, 46.117329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.382706, 34.985397, 46.374947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.017433, 35.136677, 46.314194>,  <35.798271, 35.227444, 46.277740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.017433, 35.136677, 46.314194>,  <36.382706, 34.985397, 46.374947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.017433, 35.136677, 46.314194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038850, 0.290197, 0.956178,
		0.405702, 0.879063, -0.250309,
		-0.913179, 0.378199, -0.151885,
		35.743481, 35.250137, 46.268627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.835308, 35.453739, 46.111626>,  <36.382706, 34.985397, 46.374947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.835308, 35.453739, 46.111626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.223034, 35.364014, 46.151855>,  <37.455669, 35.310181, 46.175991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.223034, 35.364014, 46.151855>,  <36.835308, 35.453739, 46.111626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.223034, 35.364014, 46.151855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047243, -0.231511, -0.971685,
		0.241243, 0.946619, -0.213809,
		0.969314, -0.224311, 0.100572,
		37.513828, 35.296719, 46.182026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.232170, 35.774250, 45.633656>,  <36.835308, 35.453739, 46.111626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.232170, 35.774250, 45.633656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.500256, 35.493454, 45.730000>,  <37.661106, 35.324974, 45.787807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.500256, 35.493454, 45.730000>,  <37.232170, 35.774250, 45.633656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.500256, 35.493454, 45.730000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143539, -0.195801, -0.970082,
		0.728153, 0.684737, -0.030465,
		0.670216, -0.701995, 0.240860,
		37.701321, 35.282856, 45.802258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.995712, 36.052467, 45.294361>,  <37.232170, 35.774250, 45.633656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.995712, 36.052467, 45.294361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.006092, 35.662128, 45.381130>,  <38.012321, 35.427925, 45.433193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.006092, 35.662128, 45.381130>,  <37.995712, 36.052467, 45.294361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.006092, 35.662128, 45.381130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401144, -0.188593, -0.896391,
		0.915647, 0.110278, 0.386560,
		0.025950, -0.975844, 0.216922,
		38.013878, 35.369377, 45.446205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.498245, 35.772659, 44.867752>,  <37.995712, 36.052467, 45.294361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.498245, 35.772659, 44.867752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.299988, 35.436882, 44.956898>,  <38.181034, 35.235416, 45.010384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.299988, 35.436882, 44.956898>,  <38.498245, 35.772659, 44.867752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.299988, 35.436882, 44.956898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218371, -0.368803, -0.903493,
		0.840625, -0.399144, 0.366105,
		-0.495644, -0.839445, 0.222863,
		38.151295, 35.185047, 45.023758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.949989, 35.223953, 44.628975>,  <38.498245, 35.772659, 44.867752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.949989, 35.223953, 44.628975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.585396, 35.063835, 44.666840>,  <38.366638, 34.967766, 44.689560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.585396, 35.063835, 44.666840>,  <38.949989, 35.223953, 44.628975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.585396, 35.063835, 44.666840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092292, -0.423296, -0.901278,
		0.400849, -0.812763, 0.422772,
		-0.911484, -0.400295, 0.094666,
		38.311951, 34.943748, 44.695240>
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
