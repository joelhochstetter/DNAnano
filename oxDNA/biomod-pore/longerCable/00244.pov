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
	<23.774263, 34.618717, 35.185463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.132294, 34.772629, 35.095325>,  <24.347113, 34.864975, 35.041245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.132294, 34.772629, 35.095325>,  <23.774263, 34.618717, 35.185463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.132294, 34.772629, 35.095325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390143, -0.920489, -0.022094,
		-0.215928, -0.068140, -0.974029,
		0.895078, 0.384781, -0.225344,
		24.400818, 34.888062, 35.027721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.019028, 34.174603, 34.579269>,  <23.774263, 34.618717, 35.185463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.019028, 34.174603, 34.579269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.301500, 34.320839, 34.821804>,  <24.470984, 34.408581, 34.967327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.301500, 34.320839, 34.821804>,  <24.019028, 34.174603, 34.579269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.301500, 34.320839, 34.821804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396293, -0.913761, 0.089405,
		0.586737, 0.177153, -0.790163,
		0.706182, 0.365593, 0.606341,
		24.513355, 34.430515, 35.003708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.105797, 33.982342, 35.368607>,  <24.019028, 34.174603, 34.579269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.105797, 33.982342, 35.368607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.452599, 33.821774, 35.486698>,  <24.660679, 33.725433, 35.557552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.452599, 33.821774, 35.486698>,  <24.105797, 33.982342, 35.368607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.452599, 33.821774, 35.486698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411503, 0.910911, 0.030097,
		-0.281013, 0.095396, 0.954951,
		0.867005, -0.401423, 0.295233,
		24.712700, 33.701347, 35.575268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.408777, 34.532623, 35.829567>,  <24.105797, 33.982342, 35.368607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.408777, 34.532623, 35.829567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.707462, 34.288639, 35.723454>,  <24.886673, 34.142250, 35.659786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.707462, 34.288639, 35.723454>,  <24.408777, 34.532623, 35.829567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.707462, 34.288639, 35.723454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629271, 0.777034, -0.015355,
		0.215498, -0.155467, 0.964049,
		0.746712, -0.609957, -0.265280,
		24.931477, 34.105652, 35.643871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.949219, 34.607861, 36.352936>,  <24.408777, 34.532623, 35.829567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.949219, 34.607861, 36.352936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.090117, 34.505009, 35.992977>,  <25.174656, 34.443298, 35.777004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.090117, 34.505009, 35.992977>,  <24.949219, 34.607861, 36.352936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.090117, 34.505009, 35.992977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599011, 0.800721, 0.005677,
		0.719103, -0.541045, 0.436075,
		0.352246, -0.257131, -0.899893,
		25.195789, 34.427868, 35.723011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.678411, 34.617092, 36.414078>,  <24.949219, 34.607861, 36.352936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.678411, 34.617092, 36.414078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.550127, 34.708054, 36.046288>,  <25.473156, 34.762630, 35.825615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.550127, 34.708054, 36.046288>,  <25.678411, 34.617092, 36.414078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.550127, 34.708054, 36.046288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534603, 0.844805, 0.022466,
		0.781886, -0.484349, -0.392506,
		-0.320709, 0.227400, -0.919475,
		25.453915, 34.776272, 35.770447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.205833, 34.817619, 36.079861>,  <25.678411, 34.617092, 36.414078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.205833, 34.817619, 36.079861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.910259, 34.995991, 35.877823>,  <25.732914, 35.103016, 35.756599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.910259, 34.995991, 35.877823>,  <26.205833, 34.817619, 36.079861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.910259, 34.995991, 35.877823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556078, 0.826930, -0.083453,
		0.380461, -0.342537, -0.859022,
		-0.738936, 0.445933, -0.505091,
		25.688578, 35.129772, 35.726295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.537992, 35.289909, 35.543304>,  <26.205833, 34.817619, 36.079861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.537992, 35.289909, 35.543304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.190596, 35.462826, 35.640331>,  <25.982157, 35.566578, 35.698547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.190596, 35.462826, 35.640331>,  <26.537992, 35.289909, 35.543304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.190596, 35.462826, 35.640331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450311, 0.892612, 0.021531,
		-0.207213, 0.127932, -0.969895,
		-0.868494, 0.432293, 0.242570,
		25.930048, 35.592514, 35.713104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.597052, 35.967304, 35.258427>,  <26.537992, 35.289909, 35.543304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.597052, 35.967304, 35.258427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.306183, 35.997284, 35.531368>,  <26.131660, 36.015270, 35.695133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.306183, 35.997284, 35.531368>,  <26.597052, 35.967304, 35.258427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.306183, 35.997284, 35.531368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275153, 0.942497, 0.189709,
		-0.628896, 0.325703, -0.705980,
		-0.727173, 0.074945, 0.682351,
		26.088032, 36.019768, 35.736073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.314707, 36.569916, 35.169228>,  <26.597052, 35.967304, 35.258427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.314707, 36.569916, 35.169228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.208862, 36.458401, 35.538498>,  <26.145355, 36.391491, 35.760059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.208862, 36.458401, 35.538498>,  <26.314707, 36.569916, 35.169228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.208862, 36.458401, 35.538498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047435, 0.952380, 0.301201,
		-0.963188, 0.123493, -0.238786,
		-0.264611, -0.278786, 0.923179,
		26.129478, 36.374763, 35.815453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.614950, 36.876854, 35.280228>,  <26.314707, 36.569916, 35.169228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.614950, 36.876854, 35.280228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.792864, 36.791924, 35.628269>,  <25.899612, 36.740963, 35.837093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.792864, 36.791924, 35.628269>,  <25.614950, 36.876854, 35.280228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.792864, 36.791924, 35.628269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079281, 0.958345, 0.274387,
		-0.892122, -0.191026, 0.409423,
		0.444784, -0.212328, 0.870106,
		25.926300, 36.728226, 35.889301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.265421, 37.250614, 35.727650>,  <25.614950, 36.876854, 35.280228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.265421, 37.250614, 35.727650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.617990, 37.170116, 35.898571>,  <25.829533, 37.121819, 36.001125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.617990, 37.170116, 35.898571>,  <25.265421, 37.250614, 35.727650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.617990, 37.170116, 35.898571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047239, 0.937715, 0.344179,
		-0.469956, -0.283182, 0.836032,
		0.881425, -0.201243, 0.427307,
		25.882418, 37.109745, 36.026764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.262411, 37.547348, 36.440670>,  <25.265421, 37.250614, 35.727650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.262411, 37.547348, 36.440670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.619934, 37.520859, 36.263256>,  <25.834448, 37.504963, 36.156807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.619934, 37.520859, 36.263256>,  <25.262411, 37.547348, 36.440670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.619934, 37.520859, 36.263256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175478, 0.961825, 0.210002,
		0.412696, -0.265532, 0.871306,
		0.893806, -0.066228, -0.443537,
		25.888077, 37.500992, 36.130196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.612865, 37.891876, 36.963692>,  <25.262411, 37.547348, 36.440670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.612865, 37.891876, 36.963692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.743929, 37.950928, 36.590416>,  <25.822567, 37.986359, 36.366451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.743929, 37.950928, 36.590416>,  <25.612865, 37.891876, 36.963692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.743929, 37.950928, 36.590416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365390, 0.891061, 0.269260,
		0.871281, -0.429203, 0.238020,
		0.327658, 0.147631, -0.933191,
		25.842226, 37.995216, 36.310459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.412771, 37.843674, 36.880314>,  <25.612865, 37.891876, 36.963692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.412771, 37.843674, 36.880314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.200869, 38.074604, 36.631783>,  <26.073727, 38.213161, 36.482662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.200869, 38.074604, 36.631783>,  <26.412771, 37.843674, 36.880314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.200869, 38.074604, 36.631783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560188, 0.788214, 0.254769,
		0.636827, -0.213097, -0.740973,
		-0.529755, 0.577328, -0.621331,
		26.041943, 38.247803, 36.445385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.103724, 37.141010, 37.026909>,  <26.412771, 37.843674, 36.880314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.103724, 37.141010, 37.026909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.340189, 37.016842, 37.324677>,  <26.482069, 36.942341, 37.503338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.340189, 37.016842, 37.324677>,  <26.103724, 37.141010, 37.026909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.340189, 37.016842, 37.324677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.702111, -0.256170, -0.664392,
		0.396942, 0.915431, 0.066514,
		0.591166, -0.310425, 0.744419,
		26.517538, 36.923714, 37.548000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.475206, 36.444981, 37.048050>,  <26.103724, 37.141010, 37.026909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.475206, 36.444981, 37.048050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.307377, 36.542179, 36.698212>,  <26.206680, 36.600498, 36.488308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.307377, 36.542179, 36.698212>,  <26.475206, 36.444981, 37.048050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.307377, 36.542179, 36.698212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100070, -0.970012, -0.221499,
		-0.902189, -0.005414, 0.431306,
		-0.419572, 0.242995, -0.874593,
		26.181505, 36.615078, 36.435833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.877918, 36.014488, 37.018803>,  <26.475206, 36.444981, 37.048050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.877918, 36.014488, 37.018803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.959793, 36.140137, 36.647980>,  <26.008919, 36.215527, 36.425488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.959793, 36.140137, 36.647980>,  <25.877918, 36.014488, 37.018803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.959793, 36.140137, 36.647980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476822, -0.795134, -0.374704,
		-0.854835, 0.518737, -0.012974,
		0.204689, 0.314124, -0.927054,
		26.021200, 36.234375, 36.369865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.215260, 36.027077, 36.712383>,  <25.877918, 36.014488, 37.018803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.215260, 36.027077, 36.712383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.463043, 36.042618, 36.398758>,  <25.611713, 36.051941, 36.210583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.463043, 36.042618, 36.398758>,  <25.215260, 36.027077, 36.712383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.463043, 36.042618, 36.398758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533389, -0.711989, -0.456692,
		-0.575990, 0.701115, -0.420326,
		0.619461, 0.038853, -0.784065,
		25.648882, 36.054276, 36.163540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.921112, 36.307663, 36.073647>,  <25.215260, 36.027077, 36.712383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.921112, 36.307663, 36.073647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.227293, 36.067394, 35.981327>,  <25.411001, 35.923233, 35.925934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.227293, 36.067394, 35.981327>,  <24.921112, 36.307663, 36.073647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.227293, 36.067394, 35.981327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.632815, -0.637613, -0.439312,
		0.116725, 0.482325, -0.868181,
		0.765455, -0.600676, -0.230797,
		25.456930, 35.887192, 35.912086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.772831, 36.146111, 35.397823>,  <24.921112, 36.307663, 36.073647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.772831, 36.146111, 35.397823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.048979, 35.875340, 35.499928>,  <25.214668, 35.712875, 35.561192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.048979, 35.875340, 35.499928>,  <24.772831, 36.146111, 35.397823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.048979, 35.875340, 35.499928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387094, -0.643716, -0.660143,
		0.611185, 0.356931, -0.706437,
		0.690370, -0.676927, 0.255263,
		25.256090, 35.672260, 35.576508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.599836, 35.517002, 35.102631>,  <24.772831, 36.146111, 35.397823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.599836, 35.517002, 35.102631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.954969, 35.401253, 35.245747>,  <25.168049, 35.331802, 35.331615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.954969, 35.401253, 35.245747>,  <24.599836, 35.517002, 35.102631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.954969, 35.401253, 35.245747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173426, -0.930611, -0.322313,
		0.426232, 0.224111, -0.876414,
		0.887834, -0.289373, 0.357789,
		25.221319, 35.314442, 35.353085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.957272, 35.081303, 34.608105>,  <24.599836, 35.517002, 35.102631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.957272, 35.081303, 34.608105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.102919, 34.990814, 34.969490>,  <25.190308, 34.936523, 35.186321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.102919, 34.990814, 34.969490>,  <24.957272, 35.081303, 34.608105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.102919, 34.990814, 34.969490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190015, -0.967694, -0.165719,
		0.911763, -0.111330, -0.395340,
		0.364118, -0.226217, 0.903462,
		25.212154, 34.922951, 35.240528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.514259, 34.620121, 34.502888>,  <24.957272, 35.081303, 34.608105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.514259, 34.620121, 34.502888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.318653, 34.580872, 34.849583>,  <25.201290, 34.557320, 35.057598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.318653, 34.580872, 34.849583>,  <25.514259, 34.620121, 34.502888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.318653, 34.580872, 34.849583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251053, -0.935774, -0.247586,
		0.835366, -0.338670, 0.432974,
		-0.489016, -0.098126, 0.866738,
		25.171947, 34.551434, 35.109604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.724651, 33.860580, 34.695156>,  <25.514259, 34.620121, 34.502888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.724651, 33.860580, 34.695156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.612677, 34.030865, 35.039341>,  <25.545492, 34.133038, 35.245853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.612677, 34.030865, 35.039341>,  <25.724651, 33.860580, 34.695156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.612677, 34.030865, 35.039341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496020, -0.831535, 0.250029,
		0.821948, -0.356815, 0.443942,
		-0.279939, 0.425715, 0.860466,
		25.528694, 34.158581, 35.297482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.003206, 33.533131, 35.278316>,  <25.724651, 33.860580, 34.695156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.003206, 33.533131, 35.278316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.663887, 33.692131, 35.418251>,  <25.460297, 33.787533, 35.502213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.663887, 33.692131, 35.418251>,  <26.003206, 33.533131, 35.278316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.663887, 33.692131, 35.418251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340584, -0.915459, 0.214330,
		0.405456, 0.062667, 0.911964,
		-0.848297, 0.397502, 0.349835,
		25.409397, 33.811382, 35.523201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.893267, 33.123920, 35.845802>,  <26.003206, 33.533131, 35.278316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.893267, 33.123920, 35.845802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.542393, 33.290306, 35.749866>,  <25.331869, 33.390137, 35.692303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.542393, 33.290306, 35.749866>,  <25.893267, 33.123920, 35.845802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.542393, 33.290306, 35.749866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470325, -0.844913, 0.254787,
		-0.096665, 0.336299, 0.936781,
		-0.877183, 0.415962, -0.239843,
		25.279238, 33.415096, 35.677914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.545467, 32.774887, 35.836651>,  <25.893267, 33.123920, 35.845802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.545467, 32.774887, 35.836651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.839905, 33.040787, 35.887684>,  <27.016567, 33.200325, 35.918304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.839905, 33.040787, 35.887684>,  <26.545467, 32.774887, 35.836651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.839905, 33.040787, 35.887684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537575, 0.688660, -0.486581,
		-0.411312, 0.289586, 0.864270,
		0.736095, 0.664746, 0.127580,
		27.060734, 33.240211, 35.925957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.796148, 32.479702, 35.216354>,  <26.545467, 32.774887, 35.836651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.796148, 32.479702, 35.216354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.617842, 32.270447, 34.925804>,  <26.510859, 32.144894, 34.751472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.617842, 32.270447, 34.925804>,  <26.796148, 32.479702, 35.216354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.617842, 32.270447, 34.925804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.841578, -0.031582, 0.539211,
		-0.305021, 0.851663, -0.426183,
		-0.445767, -0.523137, -0.726375,
		26.484112, 32.113506, 34.707893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.304022, 32.343266, 35.699924>,  <26.796148, 32.479702, 35.216354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.304022, 32.343266, 35.699924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.516653, 32.517075, 35.990746>,  <27.644232, 32.621361, 36.165237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.516653, 32.517075, 35.990746>,  <27.304022, 32.343266, 35.699924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.516653, 32.517075, 35.990746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.785057, -0.575008, -0.230329,
		0.317980, 0.693219, -0.646789,
		0.531577, 0.434527, 0.727057,
		27.676126, 32.647434, 36.208862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.047646, 32.611397, 35.290901>,  <27.304022, 32.343266, 35.699924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.047646, 32.611397, 35.290901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.121738, 32.249462, 35.137554>,  <28.166193, 32.032303, 35.045547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.121738, 32.249462, 35.137554>,  <28.047646, 32.611397, 35.290901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.121738, 32.249462, 35.137554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.695857, -0.396233, 0.598985,
		-0.693882, 0.155817, -0.703028,
		0.185231, -0.904832, -0.383365,
		28.177307, 31.978012, 35.022545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.676498, 32.712463, 35.498951>,  <28.047646, 32.611397, 35.290901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.676498, 32.712463, 35.498951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.879993, 32.734451, 35.155285>,  <29.002090, 32.747643, 34.949085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.879993, 32.734451, 35.155285>,  <28.676498, 32.712463, 35.498951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.879993, 32.734451, 35.155285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.857241, -0.059824, -0.511428,
		-0.079510, 0.996695, 0.016686,
		0.508739, 0.054967, -0.859164,
		29.032616, 32.750942, 34.897537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.323622, 33.241451, 35.156654>,  <28.676498, 32.712463, 35.498951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.323622, 33.241451, 35.156654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.537479, 33.041416, 34.884163>,  <28.665794, 32.921394, 34.720669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.537479, 33.041416, 34.884163>,  <28.323622, 33.241451, 35.156654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.537479, 33.041416, 34.884163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.761942, 0.063398, -0.644535,
		0.365512, 0.863651, -0.347143,
		0.534645, -0.500088, -0.681224,
		28.697872, 32.891388, 34.679794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.258701, 33.607071, 34.609669>,  <28.323622, 33.241451, 35.156654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.258701, 33.607071, 34.609669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.361692, 33.238457, 34.493412>,  <28.423487, 33.017288, 34.423656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.361692, 33.238457, 34.493412>,  <28.258701, 33.607071, 34.609669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.361692, 33.238457, 34.493412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.736466, 0.007568, -0.676433,
		0.625558, 0.388214, -0.676733,
		0.257480, -0.921538, -0.290640,
		28.438936, 32.961994, 34.406219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.180220, 33.632248, 33.876019>,  <28.258701, 33.607071, 34.609669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.180220, 33.632248, 33.876019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.143484, 33.241043, 33.950905>,  <28.121443, 33.006321, 33.995838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.143484, 33.241043, 33.950905>,  <28.180220, 33.632248, 33.876019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.143484, 33.241043, 33.950905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.844262, -0.023216, -0.535427,
		0.528003, -0.207233, -0.823570,
		-0.091838, -0.978016, 0.187217,
		28.115932, 32.947639, 34.007069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.176769, 33.292992, 33.271896>,  <28.180220, 33.632248, 33.876019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.176769, 33.292992, 33.271896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.189144, 32.911133, 33.390350>,  <28.196569, 32.682018, 33.461422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.189144, 32.911133, 33.390350>,  <28.176769, 33.292992, 33.271896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.189144, 32.911133, 33.390350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.998900, -0.039977, -0.024510,
		0.035237, -0.295054, -0.954831,
		0.030939, -0.954644, 0.296138,
		28.198425, 32.624741, 33.479191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.024466, 32.693035, 32.798885>,  <28.176769, 33.292992, 33.271896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.024466, 32.693035, 32.798885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.919907, 32.621246, 33.178246>,  <27.857170, 32.578175, 33.405861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.919907, 32.621246, 33.178246>,  <28.024466, 32.693035, 32.798885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.919907, 32.621246, 33.178246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.954584, 0.193606, -0.226466,
		-0.142972, -0.964525, -0.221925,
		-0.261398, -0.179467, 0.948400,
		27.841488, 32.567406, 33.462765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.499619, 32.461479, 32.575287>,  <28.024466, 32.693035, 32.798885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.499619, 32.461479, 32.575287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.444006, 32.543514, 32.962814>,  <27.410639, 32.592735, 33.195332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.444006, 32.543514, 32.962814>,  <27.499619, 32.461479, 32.575287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.444006, 32.543514, 32.962814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.984353, 0.078328, -0.157841,
		-0.108258, -0.975603, 0.190994,
		-0.139030, 0.205093, 0.968818,
		27.402296, 32.605042, 33.253460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.921408, 32.022060, 32.818241>,  <27.499619, 32.461479, 32.575287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.921408, 32.022060, 32.818241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.968882, 32.341171, 33.054707>,  <26.997366, 32.532639, 33.196587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.968882, 32.341171, 33.054707>,  <26.921408, 32.022060, 32.818241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.968882, 32.341171, 33.054707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.992724, 0.083157, 0.087087,
		0.020316, -0.597197, 0.801838,
		0.118686, 0.797773, 0.591162,
		27.004488, 32.580502, 33.232056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.465672, 32.647575, 32.692898>,  <26.921408, 32.022060, 32.818241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.465672, 32.647575, 32.692898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.365602, 32.963627, 32.916725>,  <26.305561, 33.153255, 33.051022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.365602, 32.963627, 32.916725>,  <26.465672, 32.647575, 32.692898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.365602, 32.963627, 32.916725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.691073, -0.259060, 0.674763,
		0.678109, 0.555509, -0.481225,
		-0.250170, 0.790125, 0.559569,
		26.290552, 33.200665, 33.084595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.944681, 33.158905, 32.872826>,  <26.465672, 32.647575, 32.692898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.944681, 33.158905, 32.872826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.690964, 33.175354, 33.181625>,  <26.538733, 33.185223, 33.366905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.690964, 33.175354, 33.181625>,  <26.944681, 33.158905, 32.872826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.690964, 33.175354, 33.181625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.725025, -0.314980, 0.612476,
		0.268349, 0.948207, 0.169977,
		-0.634293, 0.041120, 0.771998,
		26.500675, 33.187691, 33.413223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.144791, 33.558662, 33.408356>,  <26.944681, 33.158905, 32.872826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.144791, 33.558662, 33.408356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.925098, 33.253487, 33.544750>,  <26.793283, 33.070381, 33.626587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.925098, 33.253487, 33.544750>,  <27.144791, 33.558662, 33.408356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.925098, 33.253487, 33.544750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.785342, -0.331767, 0.522656,
		-0.285628, 0.554847, 0.781385,
		-0.549232, -0.762939, 0.340982,
		26.760328, 33.024605, 33.647045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.179363, 33.436756, 34.177692>,  <27.144791, 33.558662, 33.408356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.179363, 33.436756, 34.177692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.117323, 33.106750, 33.960327>,  <27.080099, 32.908749, 33.829910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.117323, 33.106750, 33.960327>,  <27.179363, 33.436756, 34.177692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.117323, 33.106750, 33.960327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.891938, -0.353436, 0.282010,
		-0.424723, -0.440948, 0.790680,
		-0.155103, -0.825014, -0.543410,
		27.070791, 32.859245, 33.797302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.244339, 32.794628, 34.565876>,  <27.179363, 33.436756, 34.177692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.244339, 32.794628, 34.565876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.278425, 32.676506, 34.185238>,  <27.298878, 32.605633, 33.956856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.278425, 32.676506, 34.185238>,  <27.244339, 32.794628, 34.565876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.278425, 32.676506, 34.185238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.915139, -0.354502, 0.191963,
		-0.394030, -0.887201, 0.240031,
		0.085218, -0.295301, -0.951596,
		27.303991, 32.587917, 33.899757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.579157, 32.197620, 34.654667>,  <27.244339, 32.794628, 34.565876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.579157, 32.197620, 34.654667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.663441, 32.315567, 34.281860>,  <27.714012, 32.386337, 34.058178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.663441, 32.315567, 34.281860>,  <27.579157, 32.197620, 34.654667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.663441, 32.315567, 34.281860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.977415, -0.047796, 0.205853,
		0.016154, -0.954341, -0.298283,
		0.210711, 0.294872, -0.932015,
		27.726654, 32.404030, 34.002254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.043205, 31.741781, 34.312778>,  <27.579157, 32.197620, 34.654667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.043205, 31.741781, 34.312778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.105591, 32.112175, 34.175243>,  <28.143023, 32.334412, 34.092720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.105591, 32.112175, 34.175243>,  <28.043205, 31.741781, 34.312778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.105591, 32.112175, 34.175243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.968105, -0.074198, 0.239305,
		0.196081, -0.370196, -0.908024,
		0.155963, 0.925986, -0.343840,
		28.152380, 32.389969, 34.072090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.751558, 31.792540, 33.895641>,  <28.043205, 31.741781, 34.312778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.751558, 31.792540, 33.895641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.674726, 32.168999, 34.006886>,  <28.628628, 32.394875, 34.073631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.674726, 32.168999, 34.006886>,  <28.751558, 31.792540, 33.895641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.674726, 32.168999, 34.006886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.980332, 0.170918, 0.098674,
		0.045333, 0.291593, -0.955467,
		-0.192080, 0.941148, 0.278110,
		28.617102, 32.451344, 34.090317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.305464, 32.148731, 33.745846>,  <28.751558, 31.792540, 33.895641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.305464, 32.148731, 33.745846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.130474, 32.393436, 34.009472>,  <29.025480, 32.540260, 34.167648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.130474, 32.393436, 34.009472>,  <29.305464, 32.148731, 33.745846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.130474, 32.393436, 34.009472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.886075, 0.168355, 0.431888,
		0.153254, 0.772922, -0.615715,
		-0.437475, 0.611758, 0.659066,
		28.999231, 32.576965, 34.207191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.579937, 32.886787, 33.746437>,  <29.305464, 32.148731, 33.745846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.579937, 32.886787, 33.746437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.423418, 32.820343, 34.108498>,  <29.329506, 32.780476, 34.325733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.423418, 32.820343, 34.108498>,  <29.579937, 32.886787, 33.746437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.423418, 32.820343, 34.108498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.867326, 0.262214, 0.423070,
		-0.307620, 0.950605, 0.041471,
		-0.391299, -0.166114, 0.905147,
		29.306028, 32.770508, 34.380043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.804890, 33.408527, 34.179245>,  <29.579937, 32.886787, 33.746437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.804890, 33.408527, 34.179245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.705812, 33.098797, 34.412163>,  <29.646366, 32.912960, 34.551914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.705812, 33.098797, 34.412163>,  <29.804890, 33.408527, 34.179245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.705812, 33.098797, 34.412163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.752731, 0.224581, 0.618837,
		-0.609954, 0.591593, 0.527232,
		-0.247694, -0.774326, 0.582295,
		29.631504, 32.866501, 34.586853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.853168, 33.623768, 34.945679>,  <29.804890, 33.408527, 34.179245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.853168, 33.623768, 34.945679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.891443, 33.233734, 34.865627>,  <29.914408, 32.999714, 34.817596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.891443, 33.233734, 34.865627>,  <29.853168, 33.623768, 34.945679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.891443, 33.233734, 34.865627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.749958, -0.061579, 0.658613,
		-0.654528, -0.213106, 0.725382,
		0.095686, -0.975087, -0.200126,
		29.920149, 32.941208, 34.805588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.849791, 33.335411, 35.571480>,  <29.853168, 33.623768, 34.945679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.849791, 33.335411, 35.571480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.046562, 33.098991, 35.315769>,  <30.164625, 32.957138, 35.162342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.046562, 33.098991, 35.315769>,  <29.849791, 33.335411, 35.571480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.046562, 33.098991, 35.315769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.705751, -0.159258, 0.690328,
		-0.509827, -0.790758, 0.338791,
		0.491927, -0.591049, -0.639272,
		30.194141, 32.921677, 35.123989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.986532, 32.552654, 35.780560>,  <29.849791, 33.335411, 35.571480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.986532, 32.552654, 35.780560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.271368, 32.773861, 35.607540>,  <30.442268, 32.906586, 35.503727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.271368, 32.773861, 35.607540>,  <29.986532, 32.552654, 35.780560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.271368, 32.773861, 35.607540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555988, -0.067959, 0.828407,
		0.428728, -0.830394, -0.355863,
		0.712088, 0.553017, -0.432553,
		30.484995, 32.939766, 35.477776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.482225, 32.149273, 35.469894>,  <29.986532, 32.552654, 35.780560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.482225, 32.149273, 35.469894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.613619, 32.494026, 35.624428>,  <30.692455, 32.700878, 35.717148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.613619, 32.494026, 35.624428>,  <30.482225, 32.149273, 35.469894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.613619, 32.494026, 35.624428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410503, -0.498660, 0.763430,
		0.850638, -0.092182, -0.517607,
		0.328485, 0.861882, 0.386338,
		30.712164, 32.752590, 35.740330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.152794, 32.038872, 35.204941>,  <30.482225, 32.149273, 35.469894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.152794, 32.038872, 35.204941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.528465, 32.131203, 35.306660>,  <31.753868, 32.186600, 35.367691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.528465, 32.131203, 35.306660>,  <31.152794, 32.038872, 35.204941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.528465, 32.131203, 35.306660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317356, 0.866327, 0.385697,
		-0.131272, -0.442939, 0.886889,
		0.939177, 0.230828, 0.254294,
		31.810219, 32.200451, 35.382946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.140087, 32.247070, 35.971939>,  <31.152794, 32.038872, 35.204941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.140087, 32.247070, 35.971939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.475876, 32.392742, 35.810616>,  <31.677349, 32.480145, 35.713821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.475876, 32.392742, 35.810616>,  <31.140087, 32.247070, 35.971939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.475876, 32.392742, 35.810616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204674, 0.899441, 0.386153,
		0.503380, -0.241619, 0.829595,
		0.839474, 0.364179, -0.403308,
		31.727718, 32.501995, 35.689625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.560335, 32.647728, 36.481949>,  <31.140087, 32.247070, 35.971939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.560335, 32.647728, 36.481949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.677385, 32.779118, 36.122734>,  <31.747616, 32.857952, 35.907204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.677385, 32.779118, 36.122734>,  <31.560335, 32.647728, 36.481949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.677385, 32.779118, 36.122734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083788, 0.944346, 0.318105,
		0.952550, -0.017840, 0.303860,
		0.292624, 0.328471, -0.898041,
		31.765173, 32.877659, 35.853321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.098415, 33.161392, 36.556858>,  <31.560335, 32.647728, 36.481949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.098415, 33.161392, 36.556858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.921127, 33.213306, 36.202072>,  <31.814754, 33.244453, 35.989201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.921127, 33.213306, 36.202072>,  <32.098415, 33.161392, 36.556858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.921127, 33.213306, 36.202072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105597, 0.990133, 0.092114,
		0.890172, -0.052835, -0.452552,
		-0.443220, 0.129785, -0.886968,
		31.788162, 33.252243, 35.935982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.398563, 33.773052, 36.360405>,  <32.098415, 33.161392, 36.556858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.398563, 33.773052, 36.360405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.060963, 33.709148, 36.155609>,  <31.858400, 33.670807, 36.032734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.060963, 33.709148, 36.155609>,  <32.398563, 33.773052, 36.360405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.060963, 33.709148, 36.155609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153466, 0.986629, -0.054879,
		0.513908, 0.032254, -0.857239,
		-0.844006, -0.159760, -0.511987,
		31.807760, 33.661221, 36.002014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.771904, 34.205635, 36.549931>,  <32.398563, 33.773052, 36.360405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.771904, 34.205635, 36.549931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.597836, 34.354256, 36.221889>,  <31.493395, 34.443428, 36.025066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.597836, 34.354256, 36.221889>,  <31.771904, 34.205635, 36.549931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.597836, 34.354256, 36.221889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235775, -0.832060, -0.502083,
		-0.868928, -0.411852, 0.274484,
		-0.435171, 0.371557, -0.820105,
		31.467283, 34.465721, 35.975857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.128244, 33.680962, 36.237270>,  <31.771904, 34.205635, 36.549931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.128244, 33.680962, 36.237270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.345406, 33.921196, 36.002476>,  <31.475702, 34.065338, 35.861599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.345406, 33.921196, 36.002476>,  <31.128244, 33.680962, 36.237270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.345406, 33.921196, 36.002476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468354, -0.796700, -0.381986,
		-0.697065, -0.067534, -0.713820,
		0.542904, 0.600590, -0.586982,
		31.508276, 34.101372, 35.826382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.015467, 33.601543, 35.473488>,  <31.128244, 33.680962, 36.237270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.015467, 33.601543, 35.473488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.394285, 33.718784, 35.525940>,  <31.621576, 33.789127, 35.557411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.394285, 33.718784, 35.525940>,  <31.015467, 33.601543, 35.473488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.394285, 33.718784, 35.525940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321077, -0.869103, -0.376258,
		0.003681, 0.398435, -0.917189,
		0.947046, 0.293104, 0.131128,
		31.678398, 33.806717, 35.565277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.494137, 33.592594, 34.872108>,  <31.015467, 33.601543, 35.473488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.494137, 33.592594, 34.872108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.686304, 33.513512, 35.213894>,  <31.801603, 33.466061, 35.418964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.686304, 33.513512, 35.213894>,  <31.494137, 33.592594, 34.872108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.686304, 33.513512, 35.213894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156495, -0.939300, -0.305328,
		0.862966, 0.280404, -0.420314,
		0.480416, -0.197710, 0.854465,
		31.830429, 33.454197, 35.470234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.085815, 33.263237, 34.669182>,  <31.494137, 33.592594, 34.872108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.085815, 33.263237, 34.669182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.008076, 33.152447, 35.045589>,  <31.961432, 33.085972, 35.271435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.008076, 33.152447, 35.045589>,  <32.085815, 33.263237, 34.669182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.008076, 33.152447, 35.045589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074535, -0.960706, -0.267374,
		0.978096, 0.018174, 0.207358,
		-0.194351, -0.276973, 0.941017,
		31.949770, 33.069355, 35.327896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.726955, 33.038895, 34.955055>,  <32.085815, 33.263237, 34.669182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.726955, 33.038895, 34.955055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.444847, 32.863117, 35.177582>,  <32.275581, 32.757652, 35.311096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.444847, 32.863117, 35.177582>,  <32.726955, 33.038895, 34.955055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.444847, 32.863117, 35.177582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354998, -0.898153, -0.259416,
		0.613657, 0.014534, 0.789439,
		-0.705267, -0.439442, 0.556317,
		32.233269, 32.731285, 35.344479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.081852, 32.621399, 35.379669>,  <32.726955, 33.038895, 34.955055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.081852, 32.621399, 35.379669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.706635, 32.490940, 35.332851>,  <32.481503, 32.412666, 35.304760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.706635, 32.490940, 35.332851>,  <33.081852, 32.621399, 35.379669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.706635, 32.490940, 35.332851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345855, -0.902051, -0.258242,
		-0.021358, -0.282724, 0.958963,
		-0.938045, -0.326147, -0.117048,
		32.425220, 32.393097, 35.297737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.240410, 31.984217, 35.588173>,  <33.081852, 32.621399, 35.379669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.240410, 31.984217, 35.588173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.913467, 32.015648, 35.359875>,  <32.717300, 32.034508, 35.222897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.913467, 32.015648, 35.359875>,  <33.240410, 31.984217, 35.588173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.913467, 32.015648, 35.359875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354133, -0.712883, -0.605300,
		-0.454437, -0.696867, 0.554855,
		-0.817360, 0.078578, -0.570744,
		32.668259, 32.039223, 35.188652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.005001, 31.276485, 35.300632>,  <33.240410, 31.984217, 35.588173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.005001, 31.276485, 35.300632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.900558, 31.582567, 35.065247>,  <32.837894, 31.766216, 34.924015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.900558, 31.582567, 35.065247>,  <33.005001, 31.276485, 35.300632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.900558, 31.582567, 35.065247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491411, -0.419339, -0.763328,
		-0.830867, -0.488485, -0.266538,
		-0.261105, 0.765204, -0.588462,
		32.822227, 31.812128, 34.888706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.874123, 30.967485, 34.561386>,  <33.005001, 31.276485, 35.300632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.874123, 30.967485, 34.561386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.929520, 31.360641, 34.512814>,  <32.962757, 31.596535, 34.483669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.929520, 31.360641, 34.512814>,  <32.874123, 30.967485, 34.561386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.929520, 31.360641, 34.512814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521595, -0.176622, -0.834712,
		-0.841878, 0.052263, -0.537131,
		0.138494, 0.982890, -0.121434,
		32.971069, 31.655508, 34.476383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.688587, 31.134830, 33.960182>,  <32.874123, 30.967485, 34.561386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.688587, 31.134830, 33.960182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.930035, 31.442772, 34.043095>,  <33.074905, 31.627537, 34.092842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.930035, 31.442772, 34.043095>,  <32.688587, 31.134830, 33.960182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.930035, 31.442772, 34.043095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562221, -0.226687, -0.795312,
		-0.565285, 0.596607, -0.569661,
		0.603623, 0.769853, 0.207282,
		33.111122, 31.673727, 34.105278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.736088, 31.472540, 33.375599>,  <32.688587, 31.134830, 33.960182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.736088, 31.472540, 33.375599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.053074, 31.590900, 33.588932>,  <33.243263, 31.661917, 33.716930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.053074, 31.590900, 33.588932>,  <32.736088, 31.472540, 33.375599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.053074, 31.590900, 33.588932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587311, -0.134339, -0.798135,
		-0.164523, 0.945724, -0.280245,
		0.792464, 0.295902, 0.533332,
		33.290813, 31.679670, 33.748932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.243488, 31.422394, 32.847145>,  <32.736088, 31.472540, 33.375599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.243488, 31.422394, 32.847145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.468307, 31.501944, 33.168282>,  <33.603199, 31.549673, 33.360962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.468307, 31.501944, 33.168282>,  <33.243488, 31.422394, 32.847145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.468307, 31.501944, 33.168282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.826899, -0.156671, -0.540086,
		0.018373, 0.967421, -0.252505,
		0.562051, 0.198873, 0.802838,
		33.636921, 31.561605, 33.409134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.532829, 31.989193, 32.699219>,  <33.243488, 31.422394, 32.847145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.532829, 31.989193, 32.699219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.757465, 31.778048, 32.954082>,  <33.892246, 31.651360, 33.107002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.757465, 31.778048, 32.954082>,  <33.532829, 31.989193, 32.699219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.757465, 31.778048, 32.954082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.705882, -0.096107, -0.701779,
		0.431679, 0.843875, 0.318636,
		0.561590, -0.527863, 0.637164,
		33.925941, 31.619688, 33.145233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.222744, 32.382515, 32.895267>,  <33.532829, 31.989193, 32.699219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.222744, 32.382515, 32.895267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.288910, 31.994110, 32.964283>,  <34.328609, 31.761066, 33.005692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.288910, 31.994110, 32.964283>,  <34.222744, 32.382515, 32.895267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.288910, 31.994110, 32.964283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.700380, -0.007511, -0.713731,
		0.694337, 0.238911, 0.678835,
		0.165420, -0.971012, 0.172544,
		34.338535, 31.702806, 33.016045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.894444, 32.445126, 32.765705>,  <34.222744, 32.382515, 32.895267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.894444, 32.445126, 32.765705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.818672, 32.052563, 32.778114>,  <34.773209, 31.817026, 32.785561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.818672, 32.052563, 32.778114>,  <34.894444, 32.445126, 32.765705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.818672, 32.052563, 32.778114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453472, -0.115459, -0.883760,
		0.870908, -0.153340, 0.466911,
		-0.189425, -0.981405, 0.031019,
		34.761845, 31.758141, 32.787418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.562126, 32.115761, 32.541695>,  <34.894444, 32.445126, 32.765705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.562126, 32.115761, 32.541695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.269588, 31.844950, 32.508797>,  <35.094067, 31.682463, 32.489056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.269588, 31.844950, 32.508797>,  <35.562126, 32.115761, 32.541695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.269588, 31.844950, 32.508797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363337, -0.284719, -0.887086,
		0.577167, -0.678649, 0.454218,
		-0.731344, -0.677031, -0.082248,
		35.050186, 31.641840, 32.484123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.882442, 31.506653, 32.259880>,  <35.562126, 32.115761, 32.541695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.882442, 31.506653, 32.259880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.492027, 31.448071, 32.195511>,  <35.257778, 31.412920, 32.156891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.492027, 31.448071, 32.195511>,  <35.882442, 31.506653, 32.259880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.492027, 31.448071, 32.195511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185259, -0.171459, -0.967616,
		0.114125, -0.974244, 0.194484,
		-0.976040, -0.146459, -0.160920,
		35.199215, 31.404133, 32.147236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.792408, 30.824846, 31.841427>,  <35.882442, 31.506653, 32.259880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.792408, 30.824846, 31.841427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.459152, 31.029617, 31.757704>,  <35.259201, 31.152481, 31.707470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.459152, 31.029617, 31.757704>,  <35.792408, 30.824846, 31.841427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.459152, 31.029617, 31.757704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073820, -0.272137, -0.959423,
		-0.548118, -0.814782, 0.188937,
		-0.833137, 0.511929, -0.209310,
		35.209209, 31.183195, 31.694910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.396320, 30.426231, 31.438583>,  <35.792408, 30.824846, 31.841427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.396320, 30.426231, 31.438583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.270256, 30.793465, 31.342422>,  <35.194618, 31.013805, 31.284725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.270256, 30.793465, 31.342422>,  <35.396320, 30.426231, 31.438583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.270256, 30.793465, 31.342422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017837, -0.258996, -0.965714,
		-0.948871, -0.300067, 0.098001,
		-0.315161, 0.918085, -0.240402,
		35.175709, 31.068890, 31.270302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.870609, 30.279516, 31.058674>,  <35.396320, 30.426231, 31.438583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.870609, 30.279516, 31.058674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.947800, 30.656961, 30.951080>,  <34.994114, 30.883429, 30.886524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.947800, 30.656961, 30.951080>,  <34.870609, 30.279516, 31.058674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.947800, 30.656961, 30.951080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173180, -0.237080, -0.955930,
		-0.965799, 0.231057, 0.117663,
		0.192979, 0.943613, -0.268986,
		35.005692, 30.940046, 30.870384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.195900, 30.545994, 30.581009>,  <34.870609, 30.279516, 31.058674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.195900, 30.545994, 30.581009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.502125, 30.792416, 30.506826>,  <34.685860, 30.940269, 30.462317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.502125, 30.792416, 30.506826>,  <34.195900, 30.545994, 30.581009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.502125, 30.792416, 30.506826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216884, -0.024264, -0.975896,
		-0.605704, 0.787330, 0.115037,
		0.765561, 0.616054, -0.185456,
		34.731792, 30.977232, 30.451189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.825134, 31.034945, 30.145306>,  <34.195900, 30.545994, 30.581009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.825134, 31.034945, 30.145306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.218868, 31.032787, 30.074806>,  <34.455109, 31.031492, 30.032507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.218868, 31.032787, 30.074806>,  <33.825134, 31.034945, 30.145306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.218868, 31.032787, 30.074806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176139, 0.016342, -0.984230,
		0.008187, 0.999852, 0.015136,
		0.984331, -0.005392, -0.176246,
		34.514168, 31.031170, 30.021933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.005634, 31.582088, 29.677687>,  <33.825134, 31.034945, 30.145306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.005634, 31.582088, 29.677687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.282825, 31.294222, 29.660437>,  <34.449139, 31.121502, 29.650087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.282825, 31.294222, 29.660437>,  <34.005634, 31.582088, 29.677687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.282825, 31.294222, 29.660437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117987, -0.054197, -0.991535,
		0.711238, 0.692201, -0.122469,
		0.692979, -0.719667, -0.043124,
		34.490719, 31.078321, 29.647499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.089165, 31.607975, 28.949043>,  <34.005634, 31.582088, 29.677687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.089165, 31.607975, 28.949043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.325436, 31.300491, 29.047174>,  <34.467197, 31.116001, 29.106052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.325436, 31.300491, 29.047174>,  <34.089165, 31.607975, 28.949043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.325436, 31.300491, 29.047174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110959, -0.378526, -0.918916,
		0.799244, 0.515560, -0.308881,
		0.590675, -0.768711, 0.245328,
		34.502640, 31.069878, 29.120773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.712811, 31.519873, 28.494652>,  <34.089165, 31.607975, 28.949043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.712811, 31.519873, 28.494652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.657154, 31.162640, 28.665787>,  <34.623760, 30.948299, 28.768467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.657154, 31.162640, 28.665787>,  <34.712811, 31.519873, 28.494652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.657154, 31.162640, 28.665787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010389, -0.430699, -0.902436,
		0.990218, -0.130011, 0.050650,
		-0.139142, -0.893082, 0.427836,
		34.615410, 30.894714, 28.794138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.175869, 31.046883, 28.241339>,  <34.712811, 31.519873, 28.494652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.175869, 31.046883, 28.241339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.906136, 30.800354, 28.404028>,  <34.744297, 30.652437, 28.501642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.906136, 30.800354, 28.404028>,  <35.175869, 31.046883, 28.241339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.906136, 30.800354, 28.404028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021844, -0.567206, -0.823286,
		0.738106, -0.546283, 0.395948,
		-0.674332, -0.616321, 0.406725,
		34.703835, 30.615458, 28.526045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.348530, 30.376997, 28.065243>,  <35.175869, 31.046883, 28.241339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.348530, 30.376997, 28.065243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.968815, 30.296690, 28.162024>,  <34.740986, 30.248507, 28.220093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.968815, 30.296690, 28.162024>,  <35.348530, 30.376997, 28.065243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.968815, 30.296690, 28.162024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101586, -0.532417, -0.840364,
		0.297537, -0.822329, 0.485023,
		-0.949290, -0.200768, 0.241951,
		34.684029, 30.236460, 28.234610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.266048, 29.576694, 27.965843>,  <35.348530, 30.376997, 28.065243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.266048, 29.576694, 27.965843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.906448, 29.751244, 27.951000>,  <34.690689, 29.855972, 27.942095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.906448, 29.751244, 27.951000>,  <35.266048, 29.576694, 27.965843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.906448, 29.751244, 27.951000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192324, -0.469495, -0.861734,
		-0.393457, -0.767564, 0.506001,
		-0.899001, 0.436372, -0.037105,
		34.636749, 29.882154, 27.939869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.782101, 28.986565, 27.825640>,  <35.266048, 29.576694, 27.965843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.782101, 28.986565, 27.825640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.609188, 29.334665, 27.731150>,  <34.505440, 29.543526, 27.674456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.609188, 29.334665, 27.731150>,  <34.782101, 28.986565, 27.825640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.609188, 29.334665, 27.731150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241241, -0.364024, -0.899605,
		-0.868872, -0.331892, 0.367300,
		-0.432278, 0.870249, -0.236224,
		34.479504, 29.595739, 27.660282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.156357, 28.778316, 27.424547>,  <34.782101, 28.986565, 27.825640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.156357, 28.778316, 27.424547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.191044, 29.169838, 27.350332>,  <34.211857, 29.404751, 27.305803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.191044, 29.169838, 27.350332>,  <34.156357, 28.778316, 27.424547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.191044, 29.169838, 27.350332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121780, -0.174425, -0.977111,
		-0.988761, 0.107331, 0.104072,
		0.086722, 0.978803, -0.185535,
		34.217060, 29.463478, 27.294672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.512394, 29.055651, 27.011049>,  <34.156357, 28.778316, 27.424547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.512394, 29.055651, 27.011049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.838028, 29.278793, 26.946474>,  <34.033409, 29.412678, 26.907728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.838028, 29.278793, 26.946474>,  <33.512394, 29.055651, 27.011049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.838028, 29.278793, 26.946474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045934, -0.215263, -0.975475,
		-0.578926, 0.801536, -0.149618,
		0.814085, 0.557855, -0.161439,
		34.082253, 29.446150, 26.898043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.367981, 29.522169, 26.491537>,  <33.512394, 29.055651, 27.011049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.367981, 29.522169, 26.491537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.767303, 29.509518, 26.471970>,  <34.006897, 29.501926, 26.460228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.767303, 29.509518, 26.471970>,  <33.367981, 29.522169, 26.491537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.767303, 29.509518, 26.471970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050721, -0.058921, -0.996973,
		0.028649, 0.997762, -0.060425,
		0.998302, -0.031627, -0.048920,
		34.066795, 29.500031, 26.457294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.436161, 29.869911, 25.818655>,  <33.367981, 29.522169, 26.491537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.436161, 29.869911, 25.818655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.786991, 29.709269, 25.924068>,  <33.997490, 29.612883, 25.987316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.786991, 29.709269, 25.924068>,  <33.436161, 29.869911, 25.818655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.786991, 29.709269, 25.924068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135278, -0.319906, -0.937742,
		0.460910, 0.858121, -0.226253,
		0.877076, -0.401608, 0.263533,
		34.050114, 29.588787, 26.003128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.921268, 29.996244, 25.268459>,  <33.436161, 29.869911, 25.818655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.921268, 29.996244, 25.268459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.092918, 29.690540, 25.461021>,  <34.195908, 29.507118, 25.576559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.092918, 29.690540, 25.461021>,  <33.921268, 29.996244, 25.268459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.092918, 29.690540, 25.461021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255189, -0.408677, -0.876277,
		0.866445, 0.498886, 0.019656,
		0.429129, -0.764262, 0.481406,
		34.221657, 29.461262, 25.605444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.407909, 29.928335, 24.774942>,  <33.921268, 29.996244, 25.268459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.407909, 29.928335, 24.774942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.389961, 29.592875, 24.992069>,  <34.379192, 29.391598, 25.122345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.389961, 29.592875, 24.992069>,  <34.407909, 29.928335, 24.774942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.389961, 29.592875, 24.992069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090044, -0.544547, -0.833882,
		0.994926, 0.011462, 0.099949,
		-0.044869, -0.838652, 0.542817,
		34.376499, 29.341278, 25.154915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.905369, 29.519922, 24.470469>,  <34.407909, 29.928335, 24.774942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.905369, 29.519922, 24.470469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.637169, 29.285769, 24.652786>,  <34.476250, 29.145275, 24.762177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.637169, 29.285769, 24.652786>,  <34.905369, 29.519922, 24.470469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.637169, 29.285769, 24.652786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056282, -0.652720, -0.755506,
		0.739769, -0.480916, 0.470597,
		-0.670503, -0.585386, 0.455795,
		34.436020, 29.110153, 24.789524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.211121, 28.926432, 24.374889>,  <34.905369, 29.519922, 24.470469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.211121, 28.926432, 24.374889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.822479, 28.859016, 24.441317>,  <34.589294, 28.818567, 24.481173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.822479, 28.859016, 24.441317>,  <35.211121, 28.926432, 24.374889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.822479, 28.859016, 24.441317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037150, -0.584498, -0.810544,
		0.233674, -0.793699, 0.561640,
		-0.971605, -0.168538, 0.166067,
		34.530998, 28.808455, 24.491137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.103233, 28.228725, 24.222841>,  <35.211121, 28.926432, 24.374889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.103233, 28.228725, 24.222841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.740589, 28.392595, 24.182384>,  <34.523003, 28.490917, 24.158110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.740589, 28.392595, 24.182384>,  <35.103233, 28.228725, 24.222841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.740589, 28.392595, 24.182384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077687, -0.397636, -0.914249,
		-0.414767, -0.821005, 0.392325,
		-0.906605, 0.409679, -0.101145,
		34.468605, 28.515497, 24.152042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.759876, 27.793901, 23.777954>,  <35.103233, 28.228725, 24.222841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.759876, 27.793901, 23.777954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.551079, 28.132347, 23.734858>,  <34.425800, 28.335415, 23.709000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.551079, 28.132347, 23.734858>,  <34.759876, 27.793901, 23.777954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.551079, 28.132347, 23.734858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090701, -0.180664, -0.979354,
		-0.848111, -0.501447, 0.171049,
		-0.521997, 0.846115, -0.107742,
		34.394478, 28.386181, 23.702536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.079437, 27.722094, 23.393988>,  <34.759876, 27.793901, 23.777954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.079437, 27.722094, 23.393988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.168701, 28.109758, 23.352180>,  <34.222260, 28.342358, 23.327097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.168701, 28.109758, 23.352180>,  <34.079437, 27.722094, 23.393988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.168701, 28.109758, 23.352180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320582, -0.028288, -0.946799,
		-0.920558, 0.244795, 0.304383,
		0.223161, 0.969162, -0.104517,
		34.235649, 28.400507, 23.320826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.657360, 27.963547, 22.911905>,  <34.079437, 27.722094, 23.393988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.657360, 27.963547, 22.911905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.903740, 28.278658, 22.910690>,  <34.051567, 28.467726, 22.909962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.903740, 28.278658, 22.910690>,  <33.657360, 27.963547, 22.911905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.903740, 28.278658, 22.910690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222610, 0.170356, -0.959908,
		-0.755679, 0.591931, 0.280299,
		0.615950, 0.787780, -0.003035,
		34.088524, 28.514992, 22.909781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.261909, 28.364683, 22.529022>,  <33.657360, 27.963547, 22.911905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.261909, 28.364683, 22.529022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.629585, 28.522186, 22.531563>,  <33.850193, 28.616688, 22.533087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.629585, 28.522186, 22.531563>,  <33.261909, 28.364683, 22.529022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.629585, 28.522186, 22.531563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059667, 0.155196, -0.986080,
		-0.389263, 0.906018, 0.166150,
		0.919192, 0.393758, 0.006353,
		33.905342, 28.640314, 22.533468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.119331, 29.076801, 22.353016>,  <33.261909, 28.364683, 22.529022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.119331, 29.076801, 22.353016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.485504, 28.955019, 22.247719>,  <33.705208, 28.881948, 22.184540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.485504, 28.955019, 22.247719>,  <33.119331, 29.076801, 22.353016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.485504, 28.955019, 22.247719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176081, 0.285184, -0.942160,
		0.361920, 0.908832, 0.207456,
		0.915429, -0.304457, -0.263242,
		33.760132, 28.863682, 22.168747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.372047, 29.608723, 21.895912>,  <33.119331, 29.076801, 22.353016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.372047, 29.608723, 21.895912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.621407, 29.305197, 21.820475>,  <33.771023, 29.123081, 21.775211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.621407, 29.305197, 21.820475>,  <33.372047, 29.608723, 21.895912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.621407, 29.305197, 21.820475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001868, 0.242645, -0.970113,
		0.781900, 0.604417, 0.152683,
		0.623401, -0.758817, -0.188595,
		33.808426, 29.077551, 21.763897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.764336, 29.943981, 21.472820>,  <33.372047, 29.608723, 21.895912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.764336, 29.943981, 21.472820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.791248, 29.548496, 21.419270>,  <33.807396, 29.311205, 21.387140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.791248, 29.548496, 21.419270>,  <33.764336, 29.943981, 21.472820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.791248, 29.548496, 21.419270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020416, 0.135516, -0.990565,
		0.997525, 0.063909, 0.029303,
		0.067277, -0.988712, -0.133875,
		33.811432, 29.251883, 21.379107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.224453, 29.859526, 20.838928>,  <33.764336, 29.943981, 21.472820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.224453, 29.859526, 20.838928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.050415, 29.499601, 20.851753>,  <33.945992, 29.283648, 20.859449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.050415, 29.499601, 20.851753>,  <34.224453, 29.859526, 20.838928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.050415, 29.499601, 20.851753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040727, -0.015907, -0.999044,
		0.899461, -0.435989, -0.029725,
		-0.435099, -0.899812, 0.032065,
		33.919884, 29.229658, 20.861372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.477032, 29.431446, 20.323099>,  <34.224453, 29.859526, 20.838928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.477032, 29.431446, 20.323099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.145611, 29.228619, 20.418083>,  <33.946758, 29.106922, 20.475073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.145611, 29.228619, 20.418083>,  <34.477032, 29.431446, 20.323099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.145611, 29.228619, 20.418083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223623, -0.089128, -0.970592,
		0.513322, -0.857285, -0.039545,
		-0.828549, -0.507069, 0.237460,
		33.897045, 29.076498, 20.489321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.442364, 28.926928, 19.825438>,  <34.477032, 29.431446, 20.323099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.442364, 28.926928, 19.825438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.069332, 28.962242, 19.965439>,  <33.845512, 28.983431, 20.049440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.069332, 28.962242, 19.965439>,  <34.442364, 28.926928, 19.825438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.069332, 28.962242, 19.965439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344661, 0.070358, -0.936087,
		-0.107270, -0.993607, -0.035185,
		-0.932578, 0.088287, 0.350005,
		33.789558, 28.988729, 20.070440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.991856, 28.507292, 19.406979>,  <34.442364, 28.926928, 19.825438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.991856, 28.507292, 19.406979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.762802, 28.792229, 19.569294>,  <33.625370, 28.963190, 19.666683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.762802, 28.792229, 19.569294>,  <33.991856, 28.507292, 19.406979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.762802, 28.792229, 19.569294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434674, 0.155862, -0.886998,
		-0.695093, -0.684307, 0.220386,
		-0.572629, 0.712342, 0.405789,
		33.591015, 29.005932, 19.691031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.313122, 28.408701, 19.122694>,  <33.991856, 28.507292, 19.406979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.313122, 28.408701, 19.122694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.332153, 28.789734, 19.242908>,  <33.343571, 29.018354, 19.315037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.332153, 28.789734, 19.242908>,  <33.313122, 28.408701, 19.122694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.332153, 28.789734, 19.242908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149664, 0.304279, -0.940752,
		-0.987592, -0.000220, 0.157044,
		0.047578, 0.952583, 0.300537,
		33.346428, 29.075508, 19.333069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.741581, 28.805401, 18.870604>,  <33.313122, 28.408701, 19.122694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.741581, 28.805401, 18.870604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.083984, 29.010429, 18.897503>,  <33.289425, 29.133446, 18.913643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.083984, 29.010429, 18.897503>,  <32.741581, 28.805401, 18.870604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.083984, 29.010429, 18.897503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098947, 0.290128, -0.951859,
		-0.507407, 0.808143, 0.299069,
		0.856007, 0.512572, 0.067250,
		33.340786, 29.164202, 18.917677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.821384, 29.501648, 18.652672>,  <32.741581, 28.805401, 18.870604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.821384, 29.501648, 18.652672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.834583, 29.867697, 18.491941>,  <32.842503, 30.087326, 18.395502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.834583, 29.867697, 18.491941>,  <32.821384, 29.501648, 18.652672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.834583, 29.867697, 18.491941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239240, -0.383128, -0.892176,
		-0.970400, 0.125569, 0.206292,
		0.032994, 0.915121, -0.401828,
		32.844482, 30.142233, 18.371393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.155457, 29.518253, 18.148434>,  <32.821384, 29.501648, 18.652672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.155457, 29.518253, 18.148434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.404308, 29.806549, 18.026131>,  <32.553619, 29.979527, 17.952749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.404308, 29.806549, 18.026131>,  <32.155457, 29.518253, 18.148434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.404308, 29.806549, 18.026131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259583, -0.178552, -0.949071,
		-0.738625, 0.669818, 0.076008,
		0.622133, 0.720738, -0.305756,
		32.590950, 30.022770, 17.934404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.800247, 29.816227, 17.656219>,  <32.155457, 29.518253, 18.148434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.800247, 29.816227, 17.656219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.182655, 29.918188, 17.598179>,  <32.412098, 29.979364, 17.563354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.182655, 29.918188, 17.598179>,  <31.800247, 29.816227, 17.656219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.182655, 29.918188, 17.598179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131035, -0.071424, -0.988802,
		-0.262410, 0.964326, -0.034881,
		0.956018, 0.254901, -0.145103,
		32.469460, 29.994658, 17.554647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.876003, 29.464209, 16.974630>,  <31.800247, 29.816227, 17.656219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.876003, 29.464209, 16.974630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.194595, 29.433807, 16.734682>,  <32.385750, 29.415565, 16.590714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.194595, 29.433807, 16.734682>,  <31.876003, 29.464209, 16.974630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.194595, 29.433807, 16.734682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230423, 0.955362, 0.184900,
		0.559039, -0.285493, 0.778440,
		0.796480, -0.076004, -0.599869,
		32.433540, 29.411007, 16.554722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.564728, 29.415630, 17.331192>,  <31.876003, 29.464209, 16.974630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.564728, 29.415630, 17.331192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.567295, 29.622202, 16.988668>,  <32.568836, 29.746145, 16.783155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.567295, 29.622202, 16.988668>,  <32.564728, 29.415630, 17.331192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.567295, 29.622202, 16.988668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325872, 0.808498, 0.490038,
		0.945392, -0.282192, -0.163099,
		0.006419, 0.516428, -0.856306,
		32.569221, 29.777130, 16.731777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.273815, 29.589010, 17.313650>,  <32.564728, 29.415630, 17.331192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.273815, 29.589010, 17.313650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.994606, 29.844479, 17.184114>,  <32.827080, 29.997759, 17.106394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.994606, 29.844479, 17.184114>,  <33.273815, 29.589010, 17.313650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.994606, 29.844479, 17.184114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255127, 0.644370, 0.720900,
		0.669088, 0.420582, -0.612725,
		-0.698019, 0.638668, -0.323838,
		32.785202, 30.036079, 17.086964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.592659, 30.265503, 17.283590>,  <33.273815, 29.589010, 17.313650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.592659, 30.265503, 17.283590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.198055, 30.279352, 17.347588>,  <32.961292, 30.287661, 17.385986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.198055, 30.279352, 17.347588>,  <33.592659, 30.265503, 17.283590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.198055, 30.279352, 17.347588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147457, 0.612347, 0.776716,
		-0.071079, 0.789831, -0.609192,
		-0.986511, 0.034621, 0.159991,
		32.902103, 30.289738, 17.395584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.434097, 30.925777, 17.446642>,  <33.592659, 30.265503, 17.283590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.434097, 30.925777, 17.446642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.155708, 30.682901, 17.599974>,  <32.988674, 30.537176, 17.691973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.155708, 30.682901, 17.599974>,  <33.434097, 30.925777, 17.446642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.155708, 30.682901, 17.599974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044859, 0.496026, 0.867148,
		-0.716666, 0.620707, -0.317982,
		-0.695972, -0.607191, 0.383330,
		32.946918, 30.500744, 17.714973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.886650, 31.305054, 17.733828>,  <33.434097, 30.925777, 17.446642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.886650, 31.305054, 17.733828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.861519, 30.961258, 17.936739>,  <32.846439, 30.754980, 18.058485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.861519, 30.961258, 17.936739>,  <32.886650, 31.305054, 17.733828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.861519, 30.961258, 17.936739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131759, 0.510977, 0.849437,
		-0.989289, -0.013470, -0.145349,
		-0.062828, -0.859489, 0.507278,
		32.842670, 30.703411, 18.088923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.241673, 31.265955, 18.162695>,  <32.886650, 31.305054, 17.733828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.241673, 31.265955, 18.162695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.528416, 31.039185, 18.325035>,  <32.700462, 30.903122, 18.422440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.528416, 31.039185, 18.325035>,  <32.241673, 31.265955, 18.162695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.528416, 31.039185, 18.325035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148467, 0.444622, 0.883328,
		-0.681231, -0.693474, 0.234559,
		0.716855, -0.566926, 0.405848,
		32.743473, 30.869106, 18.446789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.910234, 31.141161, 18.767372>,  <32.241673, 31.265955, 18.162695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.910234, 31.141161, 18.767372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.272758, 30.997126, 18.855860>,  <32.490273, 30.910704, 18.908953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.272758, 30.997126, 18.855860>,  <31.910234, 31.141161, 18.767372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.272758, 30.997126, 18.855860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073964, 0.380229, 0.921930,
		-0.416091, -0.851917, 0.317971,
		0.906310, -0.360089, 0.221221,
		32.544651, 30.889099, 18.922226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.899797, 30.745111, 19.380499>,  <31.910234, 31.141161, 18.767372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.899797, 30.745111, 19.380499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.271927, 30.885952, 19.339472>,  <32.495205, 30.970457, 19.314856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.271927, 30.885952, 19.339472>,  <31.899797, 30.745111, 19.380499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.271927, 30.885952, 19.339472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040618, 0.376882, 0.925370,
		0.364460, -0.856737, 0.364926,
		0.930333, 0.352083, -0.102559,
		32.551025, 30.991583, 19.308702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.073605, 30.715317, 20.094402>,  <31.899797, 30.745111, 19.380499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.073605, 30.715317, 20.094402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.353333, 30.952297, 19.934427>,  <32.521168, 31.094486, 19.838442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.353333, 30.952297, 19.934427>,  <32.073605, 30.715317, 20.094402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.353333, 30.952297, 19.934427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053802, 0.514291, 0.855926,
		0.712781, -0.620084, 0.327779,
		0.699320, 0.592452, -0.399939,
		32.563129, 31.130033, 19.814445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.666290, 30.578936, 20.444998>,  <32.073605, 30.715317, 20.094402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.666290, 30.578936, 20.444998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.693146, 30.939461, 20.273825>,  <32.709259, 31.155777, 20.171122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.693146, 30.939461, 20.273825>,  <32.666290, 30.578936, 20.444998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.693146, 30.939461, 20.273825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027302, 0.427079, 0.903802,
		0.997370, -0.072365, 0.004066,
		0.067140, 0.901314, -0.427931,
		32.713287, 31.209854, 20.145445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.119446, 30.934355, 20.868176>,  <32.666290, 30.578936, 20.444998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.119446, 30.934355, 20.868176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.003475, 31.257086, 20.662275>,  <32.933891, 31.450724, 20.538734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.003475, 31.257086, 20.662275>,  <33.119446, 30.934355, 20.868176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.003475, 31.257086, 20.662275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054750, 0.522991, 0.850578,
		0.955480, 0.274792, -0.107457,
		-0.289931, 0.806827, -0.514752,
		32.916496, 31.499134, 20.507849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.529659, 31.533073, 21.079416>,  <33.119446, 30.934355, 20.868176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.529659, 31.533073, 21.079416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.207253, 31.703485, 20.915060>,  <33.013809, 31.805733, 20.816446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.207253, 31.703485, 20.915060>,  <33.529659, 31.533073, 21.079416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.207253, 31.703485, 20.915060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036717, 0.656876, 0.753104,
		0.590748, 0.622104, -0.513812,
		-0.806020, 0.426029, -0.410890,
		32.965446, 31.831295, 20.791794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.692505, 32.229858, 21.092199>,  <33.529659, 31.533073, 21.079416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.692505, 32.229858, 21.092199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.294907, 32.189175, 21.076057>,  <33.056347, 32.164764, 21.066372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.294907, 32.189175, 21.076057>,  <33.692505, 32.229858, 21.092199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.294907, 32.189175, 21.076057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092045, 0.577755, 0.811004,
		-0.059176, 0.809848, -0.583648,
		-0.993995, -0.101714, -0.040354,
		32.996708, 32.158661, 21.063951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.420902, 32.886765, 21.155977>,  <33.692505, 32.229858, 21.092199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.420902, 32.886765, 21.155977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.095348, 32.667923, 21.234234>,  <32.900017, 32.536617, 21.281187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.095348, 32.667923, 21.234234>,  <33.420902, 32.886765, 21.155977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.095348, 32.667923, 21.234234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245098, 0.628564, 0.738129,
		-0.526806, 0.552798, -0.645670,
		-0.813881, -0.547103, 0.195641,
		32.851185, 32.503792, 21.292927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.896500, 33.380005, 21.406193>,  <33.420902, 32.886765, 21.155977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.896500, 33.380005, 21.406193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.754051, 33.029388, 21.535723>,  <32.668583, 32.819019, 21.613440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.754051, 33.029388, 21.535723>,  <32.896500, 33.380005, 21.406193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.754051, 33.029388, 21.535723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238717, 0.420382, 0.875382,
		-0.903434, 0.234439, -0.358951,
		-0.356121, -0.876537, 0.323823,
		32.647217, 32.766426, 21.632870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.498913, 33.598286, 21.940060>,  <32.896500, 33.380005, 21.406193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.498913, 33.598286, 21.940060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.509281, 33.206806, 22.021519>,  <32.515503, 32.971916, 22.070395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.509281, 33.206806, 22.021519>,  <32.498913, 33.598286, 21.940060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.509281, 33.206806, 22.021519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100366, 0.200141, 0.974613,
		-0.994613, -0.045705, -0.093040,
		0.025924, -0.978700, 0.203650,
		32.517059, 32.913197, 22.082613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.212097, 33.603256, 22.529699>,  <32.498913, 33.598286, 21.940060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.212097, 33.603256, 22.529699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.356419, 33.230217, 22.533531>,  <32.443012, 33.006393, 22.535830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.356419, 33.230217, 22.533531>,  <32.212097, 33.603256, 22.529699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.356419, 33.230217, 22.533531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157895, -0.050959, 0.986140,
		-0.919180, -0.357313, -0.165638,
		0.360801, -0.932594, 0.009578,
		32.464661, 32.950439, 22.536404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.731363, 33.094757, 22.861511>,  <32.212097, 33.603256, 22.529699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.731363, 33.094757, 22.861511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.116566, 32.998245, 22.909512>,  <32.347687, 32.940338, 22.938313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.116566, 32.998245, 22.909512>,  <31.731363, 33.094757, 22.861511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.116566, 32.998245, 22.909512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140024, -0.067559, 0.987841,
		-0.230240, -0.968101, -0.098845,
		0.963007, -0.241281, 0.120003,
		32.405468, 32.925861, 22.945513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.748821, 32.648499, 23.392939>,  <31.731363, 33.094757, 22.861511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.748821, 32.648499, 23.392939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.135788, 32.747021, 23.369480>,  <32.367970, 32.806133, 23.355406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.135788, 32.747021, 23.369480>,  <31.748821, 32.648499, 23.392939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.135788, 32.747021, 23.369480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076846, -0.064945, 0.994925,
		0.241243, -0.967015, -0.081757,
		0.967417, 0.246302, -0.058644,
		32.426014, 32.820911, 23.351887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.124352, 32.190037, 23.868483>,  <31.748821, 32.648499, 23.392939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.124352, 32.190037, 23.868483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.345371, 32.512981, 23.785669>,  <32.477982, 32.706749, 23.735981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.345371, 32.512981, 23.785669>,  <32.124352, 32.190037, 23.868483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.345371, 32.512981, 23.785669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240426, 0.083443, 0.967074,
		0.798052, -0.584130, -0.148004,
		0.552547, 0.807360, -0.207031,
		32.511135, 32.755188, 23.723560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.700474, 32.010242, 24.153885>,  <32.124352, 32.190037, 23.868483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.700474, 32.010242, 24.153885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.692596, 32.408669, 24.119322>,  <32.687870, 32.647724, 24.098583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.692596, 32.408669, 24.119322>,  <32.700474, 32.010242, 24.153885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.692596, 32.408669, 24.119322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036603, 0.087084, 0.995528,
		0.999136, 0.016439, -0.038173,
		-0.019690, 0.996065, -0.086407,
		32.686691, 32.707489, 24.093399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.078880, 32.173092, 24.727907>,  <32.700474, 32.010242, 24.153885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.078880, 32.173092, 24.727907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.946865, 32.543095, 24.652599>,  <32.867657, 32.765095, 24.607414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.946865, 32.543095, 24.652599>,  <33.078880, 32.173092, 24.727907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.946865, 32.543095, 24.652599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027445, 0.208763, 0.977581,
		0.943570, 0.317467, -0.094286,
		-0.330034, 0.925004, -0.188270,
		32.847855, 32.820595, 24.596119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.577579, 32.632118, 24.973207>,  <33.078880, 32.173092, 24.727907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.577579, 32.632118, 24.973207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.228157, 32.826801, 24.971649>,  <33.018505, 32.943611, 24.970715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.228157, 32.826801, 24.971649>,  <33.577579, 32.632118, 24.973207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.228157, 32.826801, 24.971649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146846, 0.271173, 0.951263,
		0.464045, 0.830409, -0.308356,
		-0.873555, 0.486710, -0.003894,
		32.966091, 32.972813, 24.970482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.706123, 33.333515, 25.207281>,  <33.577579, 32.632118, 24.973207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.706123, 33.333515, 25.207281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.312866, 33.281029, 25.258228>,  <33.076912, 33.249538, 25.288795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.312866, 33.281029, 25.258228>,  <33.706123, 33.333515, 25.207281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.312866, 33.281029, 25.258228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089240, 0.263665, 0.960477,
		-0.159612, 0.955648, -0.247510,
		-0.983138, -0.131216, 0.127366,
		33.017925, 33.241665, 25.296438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.453598, 33.795708, 25.713900>,  <33.706123, 33.333515, 25.207281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.453598, 33.795708, 25.713900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.160721, 33.523304, 25.718330>,  <32.984997, 33.359859, 25.720989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.160721, 33.523304, 25.718330>,  <33.453598, 33.795708, 25.713900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.160721, 33.523304, 25.718330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124810, 0.150140, 0.980755,
		-0.669568, 0.716716, -0.194928,
		-0.732189, -0.681012, 0.011075,
		32.941063, 33.319000, 25.721653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.813931, 34.167858, 25.965263>,  <33.453598, 33.795708, 25.713900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.813931, 34.167858, 25.965263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.779537, 33.775352, 26.034225>,  <32.758900, 33.539848, 26.075602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.779537, 33.775352, 26.034225>,  <32.813931, 34.167858, 25.965263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.779537, 33.775352, 26.034225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469755, 0.192532, 0.861546,
		-0.878600, -0.006907, -0.477509,
		-0.085985, -0.981266, 0.172403,
		32.753742, 33.480972, 26.085947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.154209, 34.020485, 26.349209>,  <32.813931, 34.167858, 25.965263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.154209, 34.020485, 26.349209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.343781, 33.673923, 26.412127>,  <32.457523, 33.465988, 26.449877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.343781, 33.673923, 26.412127>,  <32.154209, 34.020485, 26.349209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.343781, 33.673923, 26.412127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126251, 0.109929, 0.985889,
		-0.871464, -0.487102, -0.057285,
		0.473931, -0.866399, 0.157296,
		32.485958, 33.414005, 26.459316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.686403, 33.530941, 26.682404>,  <32.154209, 34.020485, 26.349209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.686403, 33.530941, 26.682404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.064396, 33.424103, 26.757946>,  <32.291191, 33.360001, 26.803270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.064396, 33.424103, 26.757946>,  <31.686403, 33.530941, 26.682404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.064396, 33.424103, 26.757946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177233, 0.067198, 0.981872,
		-0.274948, -0.961323, 0.016162,
		0.944982, -0.267100, 0.188854,
		32.347889, 33.343975, 26.814602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.644339, 33.261448, 27.336864>,  <31.686403, 33.530941, 26.682404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.644339, 33.261448, 27.336864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.040833, 33.295570, 27.296513>,  <32.278728, 33.316044, 27.272301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.040833, 33.295570, 27.296513>,  <31.644339, 33.261448, 27.336864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.040833, 33.295570, 27.296513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088414, 0.139037, 0.986332,
		0.098160, -0.986607, 0.130277,
		0.991236, 0.085300, -0.100878,
		32.338203, 33.321163, 27.266249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.788010, 32.871197, 27.882021>,  <31.644339, 33.261448, 27.336864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.788010, 32.871197, 27.882021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.084602, 33.124615, 27.793638>,  <32.262558, 33.276665, 27.740608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.084602, 33.124615, 27.793638>,  <31.788010, 32.871197, 27.882021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.084602, 33.124615, 27.793638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052581, 0.273426, 0.960455,
		0.668910, -0.723777, 0.169428,
		0.741481, 0.633549, -0.220955,
		32.307045, 33.314678, 27.727352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.374886, 32.768150, 28.353504>,  <31.788010, 32.871197, 27.882021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.374886, 32.768150, 28.353504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.492161, 33.121838, 28.208067>,  <32.562527, 33.334049, 28.120804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.492161, 33.121838, 28.208067>,  <32.374886, 32.768150, 28.353504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.492161, 33.121838, 28.208067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040775, 0.368395, 0.928775,
		0.955184, -0.287134, 0.071956,
		0.293191, 0.884217, -0.363593,
		32.580120, 33.387104, 28.098989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.021492, 33.067867, 28.780809>,  <32.374886, 32.768150, 28.353504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.021492, 33.067867, 28.780809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.853687, 33.376900, 28.590174>,  <32.753006, 33.562317, 28.475792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.853687, 33.376900, 28.590174>,  <33.021492, 33.067867, 28.780809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.853687, 33.376900, 28.590174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119905, 0.473258, 0.872725,
		0.899796, 0.423263, -0.105901,
		-0.419511, 0.772577, -0.476587,
		32.727833, 33.608673, 28.447197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.430420, 33.659996, 29.064386>,  <33.021492, 33.067867, 28.780809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.430420, 33.659996, 29.064386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.072605, 33.776386, 28.928656>,  <32.857918, 33.846222, 28.847218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.072605, 33.776386, 28.928656>,  <33.430420, 33.659996, 29.064386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.072605, 33.776386, 28.928656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129095, 0.558601, 0.819329,
		0.427953, 0.776723, -0.462124,
		-0.894534, 0.290977, -0.339326,
		32.804245, 33.863678, 28.826859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.464378, 34.361004, 29.080673>,  <33.430420, 33.659996, 29.064386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.464378, 34.361004, 29.080673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.074032, 34.273888, 29.086931>,  <32.839825, 34.221619, 29.090687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.074032, 34.273888, 29.086931>,  <33.464378, 34.361004, 29.080673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.074032, 34.273888, 29.086931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148104, 0.712866, 0.685484,
		-0.160446, 0.666625, -0.727920,
		-0.975870, -0.217791, 0.015647,
		32.781269, 34.208549, 29.091625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.965347, 35.003872, 29.184723>,  <33.464378, 34.361004, 29.080673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.965347, 35.003872, 29.184723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.732155, 34.694195, 29.283325>,  <32.592239, 34.508389, 29.342487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.732155, 34.694195, 29.283325>,  <32.965347, 35.003872, 29.184723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.732155, 34.694195, 29.283325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206654, 0.434709, 0.876540,
		-0.785766, 0.460063, -0.413416,
		-0.582979, -0.774190, 0.246506,
		32.557262, 34.461937, 29.357277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.427452, 35.343124, 29.541222>,  <32.965347, 35.003872, 29.184723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.427452, 35.343124, 29.541222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.372475, 34.956978, 29.629934>,  <32.339489, 34.725292, 29.683163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.372475, 34.956978, 29.629934>,  <32.427452, 35.343124, 29.541222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.372475, 34.956978, 29.629934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048745, 0.230227, 0.971916,
		-0.989310, 0.122770, -0.078699,
		-0.137440, -0.965362, 0.221781,
		32.331242, 34.667370, 29.696468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.852476, 35.328472, 30.095814>,  <32.427452, 35.343124, 29.541222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.852476, 35.328472, 30.095814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.089222, 35.006607, 30.114662>,  <32.231270, 34.813488, 30.125971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.089222, 35.006607, 30.114662>,  <31.852476, 35.328472, 30.095814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.089222, 35.006607, 30.114662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034928, 0.032804, 0.998851,
		-0.805281, -0.592830, -0.008690,
		0.591864, -0.804659, 0.047123,
		32.266781, 34.765209, 30.128799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.684389, 35.089172, 30.709055>,  <31.852476, 35.328472, 30.095814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.684389, 35.089172, 30.709055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.008831, 34.863918, 30.645824>,  <32.203495, 34.728767, 30.607885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.008831, 34.863918, 30.645824>,  <31.684389, 35.089172, 30.709055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.008831, 34.863918, 30.645824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031908, -0.227256, 0.973312,
		-0.584031, -0.794501, -0.166359,
		0.811104, -0.563136, -0.158076,
		32.252163, 34.694977, 30.598402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.564384, 34.303616, 31.007442>,  <31.684389, 35.089172, 30.709055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.564384, 34.303616, 31.007442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.954113, 34.388779, 30.978132>,  <32.187950, 34.439877, 30.960546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.954113, 34.388779, 30.978132>,  <31.564384, 34.303616, 31.007442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.954113, 34.388779, 30.978132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124981, -0.240688, 0.962522,
		0.187290, -0.946964, -0.261116,
		0.974322, 0.212905, -0.073274,
		32.246410, 34.452648, 30.956150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.905270, 33.751526, 31.356483>,  <31.564384, 34.303616, 31.007442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.905270, 33.751526, 31.356483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.168255, 34.052914, 31.358776>,  <32.326046, 34.233746, 31.360151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.168255, 34.052914, 31.358776>,  <31.905270, 33.751526, 31.356483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.168255, 34.052914, 31.358776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147356, -0.136031, 0.979685,
		0.738939, -0.643261, -0.200463,
		0.657462, 0.753466, 0.005730,
		32.365494, 34.278954, 31.360495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.441475, 33.464981, 31.662432>,  <31.905270, 33.751526, 31.356483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.441475, 33.464981, 31.662432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.485859, 33.859478, 31.711460>,  <32.512489, 34.096176, 31.740877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.485859, 33.859478, 31.711460>,  <32.441475, 33.464981, 31.662432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.485859, 33.859478, 31.711460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267438, -0.148414, 0.952077,
		0.957166, -0.072858, -0.280225,
		0.110955, 0.986238, 0.122572,
		32.519146, 34.155350, 31.748232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.058701, 33.526340, 32.115574>,  <32.441475, 33.464981, 31.662432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.058701, 33.526340, 32.115574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.855923, 33.871025, 32.124092>,  <32.734257, 34.077835, 32.129204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.855923, 33.871025, 32.124092>,  <33.058701, 33.526340, 32.115574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.855923, 33.871025, 32.124092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116696, 0.044127, 0.992187,
		0.854042, 0.505471, -0.122929,
		-0.506946, 0.861715, 0.021300,
		32.703838, 34.129539, 32.130482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.450050, 33.936897, 32.582462>,  <33.058701, 33.526340, 32.115574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.450050, 33.936897, 32.582462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.087543, 34.104309, 32.558765>,  <32.870037, 34.204758, 32.544548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.087543, 34.104309, 32.558765>,  <33.450050, 33.936897, 32.582462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.087543, 34.104309, 32.558765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082843, -0.038422, 0.995822,
		0.414503, 0.907391, 0.069492,
		-0.906269, 0.418528, -0.059245,
		32.815662, 34.229866, 32.540993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.446499, 34.441448, 33.032379>,  <33.450050, 33.936897, 32.582462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.446499, 34.441448, 33.032379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.061367, 34.364506, 32.956528>,  <32.830288, 34.318340, 32.911015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.061367, 34.364506, 32.956528>,  <33.446499, 34.441448, 33.032379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.061367, 34.364506, 32.956528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170680, -0.110880, 0.979068,
		-0.209355, 0.975041, 0.073927,
		-0.962829, -0.192354, -0.189633,
		32.772518, 34.306801, 32.899639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.075344, 34.495125, 32.622505>,  <33.446499, 34.441448, 33.032379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.075344, 34.495125, 32.622505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.431755, 34.673309, 32.587559>,  <34.645603, 34.780220, 32.566589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.431755, 34.673309, 32.587559>,  <34.075344, 34.495125, 32.622505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.431755, 34.673309, 32.587559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072686, -0.049979, -0.996102,
		-0.448095, 0.893904, -0.012153,
		0.891026, 0.445465, -0.087370,
		34.699062, 34.806950, 32.561348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.001362, 35.084919, 32.171535>,  <34.075344, 34.495125, 32.622505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.001362, 35.084919, 32.171535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.388042, 34.983112, 32.160820>,  <34.620049, 34.922028, 32.154388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.388042, 34.983112, 32.160820>,  <34.001362, 35.084919, 32.171535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.388042, 34.983112, 32.160820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018303, 0.035658, -0.999196,
		0.255266, 0.966411, 0.029812,
		0.966698, -0.254515, -0.026790,
		34.678051, 34.906757, 32.152782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.272770, 35.625103, 31.887712>,  <34.001362, 35.084919, 32.171535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.272770, 35.625103, 31.887712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.539017, 35.336624, 31.810955>,  <34.698765, 35.163536, 31.764900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.539017, 35.336624, 31.810955>,  <34.272770, 35.625103, 31.887712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.539017, 35.336624, 31.810955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018022, 0.241521, -0.970228,
		0.746074, 0.649261, 0.147764,
		0.665619, -0.721199, -0.191894,
		34.738701, 35.120266, 31.753387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.708588, 35.949009, 31.522667>,  <34.272770, 35.625103, 31.887712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.708588, 35.949009, 31.522667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.793808, 35.565460, 31.447645>,  <34.844940, 35.335331, 31.402632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.793808, 35.565460, 31.447645>,  <34.708588, 35.949009, 31.522667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.793808, 35.565460, 31.447645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101344, 0.212613, -0.971866,
		0.971771, 0.188050, 0.142474,
		0.213051, -0.958871, -0.187554,
		34.857723, 35.277798, 31.391378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.092876, 36.033669, 30.946653>,  <34.708588, 35.949009, 31.522667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.092876, 36.033669, 30.946653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.028164, 35.639137, 30.934143>,  <34.989338, 35.402416, 30.926638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.028164, 35.639137, 30.934143>,  <35.092876, 36.033669, 30.946653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.028164, 35.639137, 30.934143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083670, 0.017867, -0.996334,
		0.983273, -0.163806, 0.079636,
		-0.161782, -0.986331, -0.031273,
		34.979630, 35.343239, 30.924761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.752251, 35.668564, 30.573490>,  <35.092876, 36.033669, 30.946653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.752251, 35.668564, 30.573490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.452480, 35.406788, 30.533358>,  <35.272617, 35.249722, 30.509277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.452480, 35.406788, 30.533358>,  <35.752251, 35.668564, 30.573490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.452480, 35.406788, 30.533358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100461, 0.037383, -0.994238,
		0.654421, -0.755188, 0.037730,
		-0.749427, -0.654441, -0.100331,
		35.227654, 35.210457, 30.503258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.043034, 35.152008, 30.247282>,  <35.752251, 35.668564, 30.573490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.043034, 35.152008, 30.247282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.649658, 35.142899, 30.175350>,  <35.413635, 35.137432, 30.132191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.649658, 35.142899, 30.175350>,  <36.043034, 35.152008, 30.247282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.649658, 35.142899, 30.175350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178104, 0.063062, -0.981989,
		0.033697, -0.997750, -0.057962,
		-0.983435, -0.022767, -0.179829,
		35.354630, 35.136066, 30.121401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.917419, 34.504005, 29.764727>,  <36.043034, 35.152008, 30.247282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.917419, 34.504005, 29.764727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.601246, 34.744728, 29.719044>,  <35.411541, 34.889164, 29.691635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.601246, 34.744728, 29.719044>,  <35.917419, 34.504005, 29.764727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.601246, 34.744728, 29.719044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111715, -0.041687, -0.992865,
		-0.602277, -0.797551, -0.034280,
		-0.790432, 0.601809, -0.114205,
		35.364117, 34.925270, 29.684782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.517132, 34.155472, 29.284754>,  <35.917419, 34.504005, 29.764727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.517132, 34.155472, 29.284754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.414307, 34.542023, 29.282290>,  <35.352612, 34.773952, 29.280811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.414307, 34.542023, 29.282290>,  <35.517132, 34.155472, 29.284754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.414307, 34.542023, 29.282290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002473, -0.007034, -0.999972,
		-0.966392, -0.257040, 0.004198,
		-0.257063, 0.966375, -0.006162,
		35.337189, 34.831936, 29.280441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.979313, 34.162159, 28.896980>,  <35.517132, 34.155472, 29.284754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.979313, 34.162159, 28.896980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.039478, 34.556343, 28.865372>,  <35.075577, 34.792854, 28.846407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.039478, 34.556343, 28.865372>,  <34.979313, 34.162159, 28.896980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.039478, 34.556343, 28.865372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057496, -0.071077, -0.995813,
		-0.986950, 0.154328, 0.045969,
		0.150415, 0.985460, -0.079022,
		35.084602, 34.851982, 28.841665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.455219, 34.502705, 28.571194>,  <34.979313, 34.162159, 28.896980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.455219, 34.502705, 28.571194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.773888, 34.735447, 28.505756>,  <34.965088, 34.875092, 28.466494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.773888, 34.735447, 28.505756>,  <34.455219, 34.502705, 28.571194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.773888, 34.735447, 28.505756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122167, -0.110062, -0.986388,
		-0.591942, 0.805809, -0.016599,
		0.796668, 0.581857, -0.163594,
		35.012886, 34.910004, 28.456678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.208836, 34.940357, 28.056746>,  <34.455219, 34.502705, 28.571194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.208836, 34.940357, 28.056746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.603848, 34.996586, 28.028410>,  <34.840855, 35.030323, 28.011410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.603848, 34.996586, 28.028410>,  <34.208836, 34.940357, 28.056746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.603848, 34.996586, 28.028410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049572, -0.149398, -0.987534,
		-0.149398, 0.978735, -0.140567,
		0.987534, 0.140567, -0.070838,
		34.900108, 35.038757, 28.007158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.327091, 35.473640, 27.566996>,  <34.208836, 34.940357, 28.056746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.327091, 35.473640, 27.566996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.703972, 35.340046, 27.577639>,  <34.930099, 35.259888, 27.584024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.703972, 35.340046, 27.577639>,  <34.327091, 35.473640, 27.566996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.703972, 35.340046, 27.577639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120272, 0.263036, -0.957260,
		0.312715, 0.905132, 0.288002,
		0.942202, -0.333989, 0.026607,
		34.986633, 35.239849, 27.585621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.792538, 36.016964, 27.203653>,  <34.327091, 35.473640, 27.566996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.792538, 36.016964, 27.203653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.960693, 35.654068, 27.198236>,  <35.061584, 35.436329, 27.194986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.960693, 35.654068, 27.198236>,  <34.792538, 36.016964, 27.203653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.960693, 35.654068, 27.198236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006248, 0.012031, -0.999908,
		0.907324, 0.420433, -0.000611,
		0.420387, -0.907244, -0.013543,
		35.086811, 35.381893, 27.194174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.375427, 36.085663, 26.793392>,  <34.792538, 36.016964, 27.203653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.375427, 36.085663, 26.793392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.294289, 35.694004, 26.789040>,  <35.245605, 35.459007, 26.786428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.294289, 35.694004, 26.789040>,  <35.375427, 36.085663, 26.793392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.294289, 35.694004, 26.789040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096881, -0.009012, -0.995255,
		0.974406, -0.202938, 0.096689,
		-0.202846, -0.979150, -0.010880,
		35.233437, 35.400261, 26.785776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.934849, 35.758614, 26.433376>,  <35.375427, 36.085663, 26.793392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.934849, 35.758614, 26.433376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.632729, 35.496593, 26.425116>,  <35.451454, 35.339382, 26.420158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.632729, 35.496593, 26.425116>,  <35.934849, 35.758614, 26.433376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.632729, 35.496593, 26.425116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123250, -0.111023, -0.986146,
		0.643683, -0.747384, 0.164591,
		-0.755302, -0.655051, -0.020651,
		35.406139, 35.300079, 26.418921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.206921, 35.371536, 25.931087>,  <35.934849, 35.758614, 26.433376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.206921, 35.371536, 25.931087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.822071, 35.262905, 25.940527>,  <35.591160, 35.197727, 25.946190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.822071, 35.262905, 25.940527>,  <36.206921, 35.371536, 25.931087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.822071, 35.262905, 25.940527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027598, -0.183160, -0.982696,
		0.271203, -0.944826, 0.183718,
		-0.962126, -0.271581, 0.023598,
		35.533432, 35.181431, 25.947607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.182468, 34.669609, 25.545721>,  <36.206921, 35.371536, 25.931087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.182468, 34.669609, 25.545721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.809231, 34.806946, 25.588530>,  <35.585289, 34.889347, 25.614214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.809231, 34.806946, 25.588530>,  <36.182468, 34.669609, 25.545721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.809231, 34.806946, 25.588530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187989, -0.211966, -0.959026,
		-0.306590, -0.914979, 0.262329,
		-0.933093, 0.343343, 0.107019,
		35.529305, 34.909950, 25.620636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.762562, 34.146523, 25.270842>,  <36.182468, 34.669609, 25.545721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.762562, 34.146523, 25.270842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.529816, 34.471779, 25.264797>,  <35.390167, 34.666935, 25.261171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.529816, 34.471779, 25.264797>,  <35.762562, 34.146523, 25.270842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.529816, 34.471779, 25.264797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244280, -0.192462, -0.950413,
		-0.775731, -0.549323, 0.310622,
		-0.581866, 0.813144, -0.015110,
		35.355255, 34.715721, 25.260263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.159428, 33.879421, 25.075327>,  <35.762562, 34.146523, 25.270842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.159428, 33.879421, 25.075327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.147335, 34.268864, 24.984844>,  <35.140079, 34.502529, 24.930555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.147335, 34.268864, 24.984844>,  <35.159428, 33.879421, 25.075327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.147335, 34.268864, 24.984844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.596214, -0.199206, -0.777718,
		-0.802256, 0.111354, 0.586503,
		-0.030233, 0.973611, -0.226205,
		35.138264, 34.560947, 24.916983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.440556, 33.939144, 24.952551>,  <35.159428, 33.879421, 25.075327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.440556, 33.939144, 24.952551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.648384, 34.231892, 24.776182>,  <34.773083, 34.407539, 24.670361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.648384, 34.231892, 24.776182>,  <34.440556, 33.939144, 24.952551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.648384, 34.231892, 24.776182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273405, -0.346505, -0.897321,
		-0.809504, 0.586772, 0.020063,
		0.519570, 0.731870, -0.440923,
		34.804256, 34.451454, 24.643906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.988117, 34.227512, 24.417742>,  <34.440556, 33.939144, 24.952551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.988117, 34.227512, 24.417742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.356258, 34.333122, 24.302334>,  <34.577145, 34.396488, 24.233089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.356258, 34.333122, 24.302334>,  <33.988117, 34.227512, 24.417742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.356258, 34.333122, 24.302334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213829, -0.277984, -0.936484,
		-0.327455, 0.923590, -0.199389,
		0.920353, 0.264021, -0.288518,
		34.632366, 34.412327, 24.215778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.851776, 34.383686, 23.712498>,  <33.988117, 34.227512, 24.417742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.851776, 34.383686, 23.712498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.251064, 34.392899, 23.690504>,  <34.490639, 34.398426, 23.677307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.251064, 34.392899, 23.690504>,  <33.851776, 34.383686, 23.712498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.251064, 34.392899, 23.690504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035397, -0.513116, -0.857589,
		-0.047968, 0.858010, -0.511388,
		0.998222, 0.023036, -0.054984,
		34.550529, 34.399811, 23.674009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.970039, 34.620277, 23.049036>,  <33.851776, 34.383686, 23.712498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.970039, 34.620277, 23.049036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.293888, 34.428028, 23.183800>,  <34.488197, 34.312679, 23.264658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.293888, 34.428028, 23.183800>,  <33.970039, 34.620277, 23.049036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.293888, 34.428028, 23.183800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055809, -0.508367, -0.859330,
		0.584287, 0.714539, -0.384764,
		0.809626, -0.480622, 0.336910,
		34.536777, 34.283840, 23.284872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.472141, 34.609303, 22.535749>,  <33.970039, 34.620277, 23.049036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.472141, 34.609303, 22.535749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.571739, 34.302166, 22.771856>,  <34.631500, 34.117882, 22.913521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.571739, 34.302166, 22.771856>,  <34.472141, 34.609303, 22.535749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.571739, 34.302166, 22.771856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248351, -0.538464, -0.805219,
		0.936120, 0.347093, 0.056617,
		0.248999, -0.767843, 0.590268,
		34.646439, 34.071812, 22.948936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.116634, 34.288425, 22.194448>,  <34.472141, 34.609303, 22.535749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.116634, 34.288425, 22.194448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.964382, 34.013023, 22.441376>,  <34.873032, 33.847782, 22.589531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.964382, 34.013023, 22.441376>,  <35.116634, 34.288425, 22.194448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.964382, 34.013023, 22.441376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253354, -0.719668, -0.646444,
		0.889344, -0.089656, 0.448363,
		-0.380630, -0.688506, 0.617317,
		34.850193, 33.806473, 22.626572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.584702, 33.700764, 22.429996>,  <35.116634, 34.288425, 22.194448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.584702, 33.700764, 22.429996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.212162, 33.557014, 22.453485>,  <34.988640, 33.470764, 22.467579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.212162, 33.557014, 22.453485>,  <35.584702, 33.700764, 22.429996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.212162, 33.557014, 22.453485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287600, -0.824874, -0.486692,
		0.223343, -0.436389, 0.871598,
		-0.931345, -0.359371, 0.058724,
		34.932758, 33.449203, 22.471102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.693352, 33.074688, 22.585896>,  <35.584702, 33.700764, 22.429996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.693352, 33.074688, 22.585896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.317150, 33.059620, 22.450819>,  <35.091431, 33.050579, 22.369772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.317150, 33.059620, 22.450819>,  <35.693352, 33.074688, 22.585896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.317150, 33.059620, 22.450819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239938, -0.777339, -0.581527,
		-0.240593, -0.627953, 0.740128,
		-0.940502, -0.037673, -0.337692,
		35.035000, 33.048317, 22.349512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.537941, 32.318920, 22.574745>,  <35.693352, 33.074688, 22.585896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.537941, 32.318920, 22.574745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.292141, 32.524033, 22.334929>,  <35.144661, 32.647099, 22.191038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.292141, 32.524033, 22.334929>,  <35.537941, 32.318920, 22.574745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.292141, 32.524033, 22.334929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025574, -0.746607, -0.664773,
		-0.788505, -0.423834, 0.445673,
		-0.614496, 0.512779, -0.599543,
		35.107792, 32.677868, 22.155066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.102139, 31.871918, 22.417244>,  <35.537941, 32.318920, 22.574745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.102139, 31.871918, 22.417244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.092770, 32.119148, 22.102938>,  <35.087151, 32.267487, 21.914354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.092770, 32.119148, 22.102938>,  <35.102139, 31.871918, 22.417244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.092770, 32.119148, 22.102938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077423, -0.782502, -0.617817,
		-0.996723, -0.075304, -0.029529,
		-0.023417, 0.618078, -0.785768,
		35.085743, 32.304573, 21.867207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.902931, 31.509733, 21.864368>,  <35.102139, 31.871918, 22.417244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.902931, 31.509733, 21.864368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.079525, 31.799372, 21.652412>,  <35.185482, 31.973154, 21.525240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.079525, 31.799372, 21.652412>,  <34.902931, 31.509733, 21.864368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.079525, 31.799372, 21.652412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159368, -0.644445, -0.747858,
		-0.883004, 0.245720, -0.399908,
		0.441482, 0.724094, -0.529888,
		35.211971, 32.016602, 21.493446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.693203, 31.408937, 21.182430>,  <34.902931, 31.509733, 21.864368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.693203, 31.408937, 21.182430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.001598, 31.657633, 21.127262>,  <35.186634, 31.806850, 21.094162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.001598, 31.657633, 21.127262>,  <34.693203, 31.408937, 21.182430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.001598, 31.657633, 21.127262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192319, -0.433755, -0.880267,
		-0.607119, 0.652150, -0.453991,
		0.770987, 0.621738, -0.137920,
		35.232895, 31.844154, 21.085886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.652649, 31.518064, 20.498549>,  <34.693203, 31.408937, 21.182430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.652649, 31.518064, 20.498549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.017857, 31.645468, 20.600491>,  <35.236980, 31.721910, 20.661655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.017857, 31.645468, 20.600491>,  <34.652649, 31.518064, 20.498549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.017857, 31.645468, 20.600491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389758, -0.496800, -0.775421,
		-0.120365, 0.807305, -0.577728,
		0.913017, 0.318508, 0.254857,
		35.291763, 31.741020, 20.676949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.931675, 31.733389, 19.927883>,  <34.652649, 31.518064, 20.498549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.931675, 31.733389, 19.927883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.254814, 31.674196, 20.156088>,  <35.448696, 31.638680, 20.293011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.254814, 31.674196, 20.156088>,  <34.931675, 31.733389, 19.927883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.254814, 31.674196, 20.156088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396751, -0.579275, -0.712060,
		0.435856, 0.801587, -0.409254,
		0.807848, -0.147984, 0.570511,
		35.497169, 31.629801, 20.327242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.543674, 31.814445, 19.489323>,  <34.931675, 31.733389, 19.927883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.543674, 31.814445, 19.489323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.653473, 31.597794, 19.807138>,  <35.719353, 31.467802, 19.997828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.653473, 31.597794, 19.807138>,  <35.543674, 31.814445, 19.489323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.653473, 31.597794, 19.807138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405708, -0.683897, -0.606371,
		0.871812, 0.488794, 0.032021,
		0.274491, -0.541632, 0.794537,
		35.735821, 31.435305, 20.045500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.210247, 31.802511, 19.452271>,  <35.543674, 31.814445, 19.489323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.210247, 31.802511, 19.452271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.118904, 31.469213, 19.653688>,  <36.064098, 31.269234, 19.774540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.118904, 31.469213, 19.653688>,  <36.210247, 31.802511, 19.452271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.118904, 31.469213, 19.653688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365737, -0.552747, -0.748804,
		0.902270, 0.013172, 0.430970,
		-0.228354, -0.833245, 0.503544,
		36.050400, 31.219240, 19.804752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.852711, 31.475456, 19.520142>,  <36.210247, 31.802511, 19.452271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.852711, 31.475456, 19.520142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.553898, 31.211132, 19.491102>,  <36.374611, 31.052538, 19.473679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.553898, 31.211132, 19.491102>,  <36.852711, 31.475456, 19.520142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.553898, 31.211132, 19.491102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455910, -0.429773, -0.779385,
		0.483825, -0.615325, 0.622325,
		-0.747034, -0.660810, -0.072598,
		36.329788, 31.012890, 19.469322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.149101, 30.845903, 19.683819>,  <36.852711, 31.475456, 19.520142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.149101, 30.845903, 19.683819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.840717, 30.829672, 19.429583>,  <36.655689, 30.819933, 19.277040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.840717, 30.829672, 19.429583>,  <37.149101, 30.845903, 19.683819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.840717, 30.829672, 19.429583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552395, -0.539316, -0.635608,
		-0.316992, -0.841125, 0.438206,
		-0.770957, -0.040581, -0.635592,
		36.609428, 30.817497, 19.238905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.479649, 30.657801, 19.018129>,  <37.149101, 30.845903, 19.683819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.479649, 30.657801, 19.018129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.874062, 30.673641, 18.953424>,  <38.110710, 30.683146, 18.914602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.874062, 30.673641, 18.953424>,  <37.479649, 30.657801, 19.018129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.874062, 30.673641, 18.953424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132861, 0.398593, 0.907453,
		0.100410, -0.916273, 0.387766,
		0.986035, 0.039599, -0.161760,
		38.169872, 30.685520, 18.904896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.809494, 30.435398, 19.633120>,  <37.479649, 30.657801, 19.018129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.809494, 30.435398, 19.633120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.090260, 30.635038, 19.429857>,  <38.258717, 30.754822, 19.307899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.090260, 30.635038, 19.429857>,  <37.809494, 30.435398, 19.633120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.090260, 30.635038, 19.429857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299121, 0.440918, 0.846237,
		0.646411, -0.745983, 0.160194,
		0.701911, 0.499100, -0.508154,
		38.300835, 30.784769, 19.277411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.393715, 30.295504, 20.034595>,  <37.809494, 30.435398, 19.633120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.393715, 30.295504, 20.034595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.464653, 30.614708, 19.804213>,  <38.507217, 30.806231, 19.665983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.464653, 30.614708, 19.804213>,  <38.393715, 30.295504, 20.034595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.464653, 30.614708, 19.804213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144890, 0.557687, 0.817308,
		0.973425, -0.228397, -0.016721,
		0.177345, 0.798011, -0.575958,
		38.517857, 30.854111, 19.631426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.952728, 30.616503, 20.301155>,  <38.393715, 30.295504, 20.034595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.952728, 30.616503, 20.301155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.847366, 30.927639, 20.072914>,  <38.784149, 31.114321, 19.935970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.847366, 30.927639, 20.072914>,  <38.952728, 30.616503, 20.301155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.847366, 30.927639, 20.072914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264473, 0.627053, 0.732706,
		0.927725, 0.042086, -0.370884,
		-0.263401, 0.777839, -0.570602,
		38.768345, 31.160990, 19.901733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.508541, 31.094498, 20.351355>,  <38.952728, 30.616503, 20.301155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.508541, 31.094498, 20.351355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.195538, 31.320312, 20.246298>,  <39.007736, 31.455801, 20.183264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.195538, 31.320312, 20.246298>,  <39.508541, 31.094498, 20.351355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.195538, 31.320312, 20.246298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247772, 0.669315, 0.700447,
		0.571218, 0.483030, -0.663621,
		-0.782508, 0.564535, -0.262643,
		38.960785, 31.489674, 20.167505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.740318, 31.760448, 20.331964>,  <39.508541, 31.094498, 20.351355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.740318, 31.760448, 20.331964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.343132, 31.790592, 20.368502>,  <39.104820, 31.808678, 20.390423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.343132, 31.790592, 20.368502>,  <39.740318, 31.760448, 20.331964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.343132, 31.790592, 20.368502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116161, 0.769636, 0.627827,
		-0.022989, 0.634020, -0.772975,
		-0.992964, 0.075357, 0.091342,
		39.045242, 31.813200, 20.395905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.606342, 32.371250, 20.204334>,  <39.740318, 31.760448, 20.331964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.606342, 32.371250, 20.204334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.281631, 32.270153, 20.414911>,  <39.086807, 32.209496, 20.541258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.281631, 32.270153, 20.414911>,  <39.606342, 32.371250, 20.204334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.281631, 32.270153, 20.414911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137965, 0.792963, 0.593443,
		-0.567440, 0.554373, -0.608837,
		-0.811775, -0.252745, 0.526443,
		39.038097, 32.194328, 20.572844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.450558, 33.016296, 20.454905>,  <39.606342, 32.371250, 20.204334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.450558, 33.016296, 20.454905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.236530, 32.761917, 20.677353>,  <39.108112, 32.609291, 20.810822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.236530, 32.761917, 20.677353>,  <39.450558, 33.016296, 20.454905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.236530, 32.761917, 20.677353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021323, 0.668240, 0.743640,
		-0.844537, 0.386044, -0.371118,
		-0.535073, -0.635944, 0.556122,
		39.076008, 32.571133, 20.844189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.924740, 33.446625, 20.845844>,  <39.450558, 33.016296, 20.454905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.924740, 33.446625, 20.845844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.923824, 33.096939, 21.040060>,  <38.923275, 32.887127, 21.156590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.923824, 33.096939, 21.040060>,  <38.924740, 33.446625, 20.845844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.923824, 33.096939, 21.040060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239873, 0.471843, 0.848425,
		-0.970802, -0.114528, -0.210779,
		-0.002286, -0.874212, 0.485538,
		38.923138, 32.834675, 21.185722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.289047, 33.434391, 21.135487>,  <38.924740, 33.446625, 20.845844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.289047, 33.434391, 21.135487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.539577, 33.195839, 21.336306>,  <38.689896, 33.052708, 21.456797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.539577, 33.195839, 21.336306>,  <38.289047, 33.434391, 21.135487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.539577, 33.195839, 21.336306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345231, 0.365229, 0.864537,
		-0.698954, -0.714801, 0.022863,
		0.626322, -0.596378, 0.502050,
		38.727474, 33.016926, 21.486921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.915874, 33.153751, 21.775017>,  <38.289047, 33.434391, 21.135487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.915874, 33.153751, 21.775017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.294403, 33.094387, 21.889874>,  <38.521519, 33.058769, 21.958788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.294403, 33.094387, 21.889874>,  <37.915874, 33.153751, 21.775017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.294403, 33.094387, 21.889874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137677, 0.618667, 0.773496,
		-0.292437, -0.771509, 0.565026,
		0.946323, -0.148408, 0.287140,
		38.578300, 33.049866, 21.976015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.895451, 32.766010, 22.364435>,  <37.915874, 33.153751, 21.775017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.895451, 32.766010, 22.364435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.261822, 32.926525, 22.367455>,  <38.481644, 33.022835, 22.369267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.261822, 32.926525, 22.367455>,  <37.895451, 32.766010, 22.364435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.261822, 32.926525, 22.367455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135078, 0.290497, 0.947294,
		0.377940, -0.868668, 0.320277,
		0.915924, 0.401282, 0.007547,
		38.536598, 33.046909, 22.369719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.035664, 32.640327, 23.007990>,  <37.895451, 32.766010, 22.364435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.035664, 32.640327, 23.007990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.318958, 32.898556, 22.893698>,  <38.488934, 33.053493, 22.825123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.318958, 32.898556, 22.893698>,  <38.035664, 32.640327, 23.007990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.318958, 32.898556, 22.893698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066850, 0.341585, 0.937470,
		0.702802, -0.683053, 0.198767,
		0.708237, 0.645569, -0.285729,
		38.531429, 33.092228, 22.807980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.568726, 32.647076, 23.550285>,  <38.035664, 32.640327, 23.007990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.568726, 32.647076, 23.550285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.642525, 32.978336, 23.338579>,  <38.686806, 33.177094, 23.211555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.642525, 32.978336, 23.338579>,  <38.568726, 32.647076, 23.550285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.642525, 32.978336, 23.338579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064323, 0.527183, 0.847314,
		0.980725, -0.190375, 0.043997,
		0.184502, 0.828152, -0.529267,
		38.697876, 33.226784, 23.179798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.063385, 32.959206, 23.894783>,  <38.568726, 32.647076, 23.550285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.063385, 32.959206, 23.894783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.884243, 33.250004, 23.686590>,  <38.776756, 33.424484, 23.561674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.884243, 33.250004, 23.686590>,  <39.063385, 32.959206, 23.894783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.884243, 33.250004, 23.686590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143628, 0.516071, 0.844418,
		0.882494, 0.452934, -0.126709,
		-0.447856, 0.726995, -0.520484,
		38.749886, 33.468102, 23.530445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.356594, 33.557720, 24.231888>,  <39.063385, 32.959206, 23.894783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.356594, 33.557720, 24.231888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.015873, 33.676590, 24.059326>,  <38.811440, 33.747913, 23.955790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.015873, 33.676590, 24.059326>,  <39.356594, 33.557720, 24.231888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.015873, 33.676590, 24.059326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288077, 0.422090, 0.859565,
		0.437535, 0.856461, -0.273929,
		-0.851807, 0.297177, -0.431406,
		38.760330, 33.765743, 23.929905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.258373, 34.244980, 24.401812>,  <39.356594, 33.557720, 24.231888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.258373, 34.244980, 24.401812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.893299, 34.126659, 24.289017>,  <38.674255, 34.055668, 24.221340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.893299, 34.126659, 24.289017>,  <39.258373, 34.244980, 24.401812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.893299, 34.126659, 24.289017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394841, 0.460259, 0.795149,
		-0.105416, 0.837058, -0.536863,
		-0.912682, -0.295797, -0.281986,
		38.619495, 34.037922, 24.204420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.769390, 34.900970, 24.449471>,  <39.258373, 34.244980, 24.401812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.769390, 34.900970, 24.449471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.539745, 34.574669, 24.477579>,  <38.401958, 34.378887, 24.494444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.539745, 34.574669, 24.477579>,  <38.769390, 34.900970, 24.449471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.539745, 34.574669, 24.477579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378916, 0.340794, 0.860397,
		-0.725820, 0.467339, -0.504757,
		-0.574116, -0.815753, 0.070273,
		38.367512, 34.329945, 24.498661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.189087, 35.154301, 24.615355>,  <38.769390, 34.900970, 24.449471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.189087, 35.154301, 24.615355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.163982, 34.770214, 24.724207>,  <38.148922, 34.539764, 24.789518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.163982, 34.770214, 24.724207>,  <38.189087, 35.154301, 24.615355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.163982, 34.770214, 24.724207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440292, 0.271336, 0.855874,
		-0.895659, -0.066103, -0.439802,
		-0.062758, -0.960212, 0.272130,
		38.145153, 34.482151, 24.805845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.522743, 35.096611, 24.896441>,  <38.189087, 35.154301, 24.615355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.522743, 35.096611, 24.896441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.708027, 34.775448, 25.046518>,  <37.819195, 34.582748, 25.136564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.708027, 34.775448, 25.046518>,  <37.522743, 35.096611, 24.896441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.708027, 34.775448, 25.046518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375113, 0.205939, 0.903814,
		-0.802951, -0.559393, -0.205790,
		0.463207, -0.802912, 0.375194,
		37.846989, 34.534573, 25.159077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.043446, 34.763592, 25.278128>,  <37.522743, 35.096611, 24.896441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.043446, 34.763592, 25.278128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.377140, 34.615299, 25.441397>,  <37.577358, 34.526321, 25.539358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.377140, 34.615299, 25.441397>,  <37.043446, 34.763592, 25.278128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.377140, 34.615299, 25.441397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452259, -0.036555, 0.891137,
		-0.315455, -0.928019, -0.198164,
		0.834236, -0.370735, 0.408174,
		37.627411, 34.504078, 25.563848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.809486, 34.193474, 25.742701>,  <37.043446, 34.763592, 25.278128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.809486, 34.193474, 25.742701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.171314, 34.309258, 25.867901>,  <37.388409, 34.378727, 25.943022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.171314, 34.309258, 25.867901>,  <36.809486, 34.193474, 25.742701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.171314, 34.309258, 25.867901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360527, 0.127514, 0.923992,
		0.227551, -0.948657, 0.219705,
		0.904567, 0.289464, 0.313000,
		37.442684, 34.396095, 25.961802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.941288, 33.884495, 26.449667>,  <36.809486, 34.193474, 25.742701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.941288, 33.884495, 26.449667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.184063, 34.201164, 26.421694>,  <37.329727, 34.391167, 26.404909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.184063, 34.201164, 26.421694>,  <36.941288, 33.884495, 26.449667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.184063, 34.201164, 26.421694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079704, 0.148181, 0.985743,
		0.790746, -0.592707, 0.153035,
		0.606934, 0.791670, -0.069933,
		37.366142, 34.438663, 26.400715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.368591, 33.779232, 27.030460>,  <36.941288, 33.884495, 26.449667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.368591, 33.779232, 27.030460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.447948, 34.152695, 26.911179>,  <37.495564, 34.376774, 26.839609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.447948, 34.152695, 26.911179>,  <37.368591, 33.779232, 27.030460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.447948, 34.152695, 26.911179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099613, 0.283468, 0.953794,
		0.975048, -0.218927, -0.036768,
		0.198389, 0.933658, -0.298203,
		37.507465, 34.432793, 26.821718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.068199, 33.972145, 27.311146>,  <37.368591, 33.779232, 27.030460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.068199, 33.972145, 27.311146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.871960, 34.313263, 27.239525>,  <37.754215, 34.517933, 27.196552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.871960, 34.313263, 27.239525>,  <38.068199, 33.972145, 27.311146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.871960, 34.313263, 27.239525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176329, 0.298387, 0.938016,
		0.853359, 0.428617, -0.296760,
		-0.490598, 0.852791, -0.179054,
		37.724781, 34.569099, 27.185808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.506218, 34.480713, 27.382050>,  <38.068199, 33.972145, 27.311146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.506218, 34.480713, 27.382050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.145649, 34.648331, 27.425579>,  <37.929306, 34.748901, 27.451696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.145649, 34.648331, 27.425579>,  <38.506218, 34.480713, 27.382050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.145649, 34.648331, 27.425579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253471, 0.307025, 0.917327,
		0.350988, 0.854482, -0.382974,
		-0.901421, 0.419043, 0.108824,
		37.875221, 34.774044, 27.458227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.647968, 35.110916, 27.701509>,  <38.506218, 34.480713, 27.382050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.647968, 35.110916, 27.701509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.270283, 35.021313, 27.798082>,  <38.043671, 34.967552, 27.856026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.270283, 35.021313, 27.798082>,  <38.647968, 35.110916, 27.701509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.270283, 35.021313, 27.798082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130011, 0.420007, 0.898160,
		-0.302598, 0.879440, -0.367451,
		-0.944210, -0.224009, 0.241430,
		37.987019, 34.954109, 27.870512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.389820, 35.646599, 28.132734>,  <38.647968, 35.110916, 27.701509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.389820, 35.646599, 28.132734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.126015, 35.357040, 28.213739>,  <37.967731, 35.183304, 28.262342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.126015, 35.357040, 28.213739>,  <38.389820, 35.646599, 28.132734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.126015, 35.357040, 28.213739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039603, 0.302496, 0.952328,
		-0.750648, 0.620054, -0.228169,
		-0.659514, -0.723899, 0.202512,
		37.928162, 35.139870, 28.274492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.848431, 35.972866, 28.500654>,  <38.389820, 35.646599, 28.132734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.848431, 35.972866, 28.500654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.816532, 35.587387, 28.602575>,  <37.797394, 35.356098, 28.663729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.816532, 35.587387, 28.602575>,  <37.848431, 35.972866, 28.500654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.816532, 35.587387, 28.602575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286175, 0.266991, 0.920228,
		-0.954853, 0.000470, -0.297079,
		-0.079750, -0.963699, 0.254803,
		37.792606, 35.298279, 28.679016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.109280, 35.930096, 28.814718>,  <37.848431, 35.972866, 28.500654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.109280, 35.930096, 28.814718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.364090, 35.638237, 28.914167>,  <37.516975, 35.463123, 28.973837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.364090, 35.638237, 28.914167>,  <37.109280, 35.930096, 28.814718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.364090, 35.638237, 28.914167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234625, 0.123695, 0.964184,
		-0.734266, -0.672545, -0.092396,
		0.637028, -0.729645, 0.248621,
		37.555199, 35.419342, 28.988754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.868412, 35.674187, 29.467199>,  <37.109280, 35.930096, 28.814718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.868412, 35.674187, 29.467199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.237080, 35.519371, 29.477924>,  <37.458282, 35.426483, 29.484360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.237080, 35.519371, 29.477924>,  <36.868412, 35.674187, 29.467199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.237080, 35.519371, 29.477924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019948, 0.021747, 0.999565,
		-0.387454, -0.921807, 0.012323,
		0.921673, -0.387039, 0.026815,
		37.513580, 35.403259, 29.485970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.819210, 35.223412, 29.972380>,  <36.868412, 35.674187, 29.467199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.819210, 35.223412, 29.972380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.210506, 35.289345, 29.921976>,  <37.445282, 35.328903, 29.891733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.210506, 35.289345, 29.921976>,  <36.819210, 35.223412, 29.972380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.210506, 35.289345, 29.921976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105495, 0.127820, 0.986171,
		0.178662, -0.978004, 0.107650,
		0.978239, 0.164835, -0.126011,
		37.503979, 35.338795, 29.884172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.156548, 34.919689, 30.590248>,  <36.819210, 35.223412, 29.972380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.156548, 34.919689, 30.590248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.441238, 35.156757, 30.439411>,  <37.612053, 35.298996, 30.348909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.441238, 35.156757, 30.439411>,  <37.156548, 34.919689, 30.590248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.441238, 35.156757, 30.439411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354792, 0.160027, 0.921148,
		0.606278, -0.789391, -0.096379,
		0.711723, 0.592667, -0.377090,
		37.654755, 35.334557, 30.326284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.821236, 34.749168, 30.984484>,  <37.156548, 34.919689, 30.590248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.821236, 34.749168, 30.984484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.872669, 35.112858, 30.826099>,  <37.903530, 35.331070, 30.731070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.872669, 35.112858, 30.826099>,  <37.821236, 34.749168, 30.984484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.872669, 35.112858, 30.826099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320172, 0.339833, 0.884310,
		0.938593, -0.240482, -0.247411,
		0.128582, 0.909221, -0.395960,
		37.911243, 35.385624, 30.707312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.454536, 34.976994, 31.273829>,  <37.821236, 34.749168, 30.984484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.454536, 34.976994, 31.273829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.304230, 35.326088, 31.149160>,  <38.214046, 35.535545, 31.074360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.304230, 35.326088, 31.149160>,  <38.454536, 34.976994, 31.273829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.304230, 35.326088, 31.149160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487325, 0.472151, 0.734566,
		0.788235, 0.124140, -0.602723,
		-0.375766, 0.872733, -0.311669,
		38.191502, 35.587906, 31.055660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.050598, 35.358353, 31.173677>,  <38.454536, 34.976994, 31.273829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.050598, 35.358353, 31.173677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.758358, 35.628635, 31.212965>,  <38.583015, 35.790806, 31.236538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.758358, 35.628635, 31.212965>,  <39.050598, 35.358353, 31.173677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.758358, 35.628635, 31.212965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599504, 0.565943, 0.565954,
		0.326832, 0.472368, -0.818565,
		-0.730600, 0.675705, 0.098218,
		38.539177, 35.831348, 31.242430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.463451, 36.030296, 31.332165>,  <39.050598, 35.358353, 31.173677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.463451, 36.030296, 31.332165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.082897, 36.116817, 31.419872>,  <38.854565, 36.168732, 31.472496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.082897, 36.116817, 31.419872>,  <39.463451, 36.030296, 31.332165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.082897, 36.116817, 31.419872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302741, 0.525702, 0.794975,
		0.056685, 0.822709, -0.565629,
		-0.951386, 0.216302, 0.219268,
		38.797482, 36.181709, 31.485653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.498981, 36.746689, 31.353222>,  <39.463451, 36.030296, 31.332165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.498981, 36.746689, 31.353222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.205471, 36.604645, 31.584904>,  <39.029366, 36.519421, 31.723913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.205471, 36.604645, 31.584904>,  <39.498981, 36.746689, 31.353222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.205471, 36.604645, 31.584904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449946, 0.384765, 0.805918,
		-0.509044, 0.851972, -0.122552,
		-0.733773, -0.355106, 0.579204,
		38.985340, 36.498112, 31.758665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.313068, 37.256458, 31.787590>,  <39.498981, 36.746689, 31.353222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.313068, 37.256458, 31.787590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.156696, 36.932095, 31.961761>,  <39.062874, 36.737476, 32.066265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.156696, 36.932095, 31.961761>,  <39.313068, 37.256458, 31.787590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.156696, 36.932095, 31.961761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521357, 0.194771, 0.830813,
		-0.758523, 0.551807, 0.346631,
		-0.390935, -0.810909, 0.435427,
		39.039417, 36.688824, 32.092388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.034901, 37.537277, 32.340931>,  <39.313068, 37.256458, 31.787590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.034901, 37.537277, 32.340931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.085434, 37.144810, 32.399387>,  <39.115753, 36.909328, 32.434460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.085434, 37.144810, 32.399387>,  <39.034901, 37.537277, 32.340931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.085434, 37.144810, 32.399387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497280, 0.190111, 0.846505,
		-0.858342, -0.034273, 0.511932,
		0.126336, -0.981164, 0.146137,
		39.123337, 36.850460, 32.443230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.641026, 37.181953, 32.876514>,  <39.034901, 37.537277, 32.340931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.641026, 37.181953, 32.876514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.016289, 37.045246, 32.854439>,  <39.241447, 36.963223, 32.841194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.016289, 37.045246, 32.854439>,  <38.641026, 37.181953, 32.876514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.016289, 37.045246, 32.854439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187797, 0.368471, 0.910473,
		-0.290837, -0.864536, 0.409868,
		0.938161, -0.341771, -0.055192,
		39.297737, 36.942715, 32.837883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.731346, 36.883675, 33.512192>,  <38.641026, 37.181953, 32.876514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.731346, 36.883675, 33.512192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.090401, 36.975510, 33.361702>,  <39.305832, 37.030609, 33.271408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.090401, 36.975510, 33.361702>,  <38.731346, 36.883675, 33.512192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.090401, 36.975510, 33.361702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279664, 0.363058, 0.888807,
		0.340646, -0.903039, 0.261687,
		0.897635, 0.229584, -0.376222,
		39.359692, 37.044388, 33.248837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.175476, 36.616646, 34.042679>,  <38.731346, 36.883675, 33.512192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.175476, 36.616646, 34.042679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.374035, 36.888435, 33.826569>,  <39.493172, 37.051510, 33.696903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.374035, 36.888435, 33.826569>,  <39.175476, 36.616646, 34.042679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.374035, 36.888435, 33.826569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359393, 0.405670, 0.840398,
		0.790204, -0.611346, -0.042824,
		0.496401, 0.679477, -0.540276,
		39.522957, 37.092278, 33.664486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.923111, 36.506523, 34.162178>,  <39.175476, 36.616646, 34.042679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.923111, 36.506523, 34.162178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.875843, 36.888115, 34.051933>,  <39.847481, 37.117069, 33.985786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.875843, 36.888115, 34.051933>,  <39.923111, 36.506523, 34.162178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.875843, 36.888115, 34.051933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354669, 0.299797, 0.885625,
		0.927494, 0.006904, -0.373774,
		-0.118171, 0.953978, -0.275611,
		39.840393, 37.174309, 33.969250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.603027, 36.797913, 34.255711>,  <39.923111, 36.506523, 34.162178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.603027, 36.797913, 34.255711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.382267, 37.129395, 34.218521>,  <40.249809, 37.328285, 34.196205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.382267, 37.129395, 34.218521>,  <40.603027, 36.797913, 34.255711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.382267, 37.129395, 34.218521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490853, 0.412971, 0.767149,
		0.674140, 0.377755, -0.634695,
		-0.551905, 0.828707, -0.092978,
		40.216694, 37.378006, 34.190628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.120110, 37.351704, 34.325207>,  <40.603027, 36.797913, 34.255711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.120110, 37.351704, 34.325207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.750565, 37.496166, 34.375877>,  <40.528839, 37.582844, 34.406281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.750565, 37.496166, 34.375877>,  <41.120110, 37.351704, 34.325207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.750565, 37.496166, 34.375877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337806, 0.613880, 0.713469,
		0.179910, 0.701938, -0.689141,
		-0.923861, 0.361156, 0.126676,
		40.473408, 37.604511, 34.413879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.096695, 38.211117, 34.202583>,  <41.120110, 37.351704, 34.325207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.096695, 38.211117, 34.202583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.803291, 38.068970, 34.434334>,  <40.627247, 37.983681, 34.573383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.803291, 38.068970, 34.434334>,  <41.096695, 38.211117, 34.202583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.803291, 38.068970, 34.434334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239932, 0.662166, 0.709907,
		-0.635920, 0.659736, -0.400443,
		-0.733511, -0.355365, 0.579377,
		40.583237, 37.962360, 34.608147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.996208, 38.734108, 34.561481>,  <41.096695, 38.211117, 34.202583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.996208, 38.734108, 34.561481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.802162, 38.445667, 34.759346>,  <40.685734, 38.272602, 34.878063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.802162, 38.445667, 34.759346>,  <40.996208, 38.734108, 34.561481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.802162, 38.445667, 34.759346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229128, 0.441094, 0.867719,
		-0.843900, 0.534280, -0.048755,
		-0.485111, -0.721097, 0.494658,
		40.656628, 38.229340, 34.907742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.298885, 38.840786, 35.240429>,  <40.996208, 38.734108, 34.561481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.298885, 38.840786, 35.240429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.990917, 38.591438, 35.295025>,  <40.806137, 38.441830, 35.327782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.990917, 38.591438, 35.295025>,  <41.298885, 38.840786, 35.240429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.990917, 38.591438, 35.295025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109384, 0.339644, 0.934172,
		-0.628693, 0.704310, -0.329686,
		-0.769923, -0.623369, 0.136491,
		40.759941, 38.404427, 35.335972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.592884, 39.132534, 35.443382>,  <41.298885, 38.840786, 35.240429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.592884, 39.132534, 35.443382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.676006, 38.775429, 35.603279>,  <40.725880, 38.561165, 35.699215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.676006, 38.775429, 35.603279>,  <40.592884, 39.132534, 35.443382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.676006, 38.775429, 35.603279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021278, 0.412689, 0.910623,
		-0.977938, -0.180729, 0.104756,
		0.207808, -0.892762, 0.399739,
		40.738350, 38.507599, 35.723202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.139175, 38.977837, 35.962490>,  <40.592884, 39.132534, 35.443382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.139175, 38.977837, 35.962490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.486996, 38.795956, 36.039574>,  <40.695686, 38.686829, 36.085823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.486996, 38.795956, 36.039574>,  <40.139175, 38.977837, 35.962490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.486996, 38.795956, 36.039574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000162, 0.390483, 0.920610,
		-0.493850, -0.800482, 0.339617,
		0.869547, -0.454699, 0.192711,
		40.747860, 38.659546, 36.097385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.136253, 38.566204, 36.676308>,  <40.139175, 38.977837, 35.962490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.136253, 38.566204, 36.676308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.524868, 38.607903, 36.591217>,  <40.758038, 38.632919, 36.540165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.524868, 38.607903, 36.591217>,  <40.136253, 38.566204, 36.676308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.524868, 38.607903, 36.591217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201223, 0.110711, 0.973269,
		0.125015, -0.988370, 0.086582,
		0.971535, 0.104251, -0.212724,
		40.816330, 38.639175, 36.527401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.510010, 38.231075, 37.306679>,  <40.136253, 38.566204, 36.676308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.510010, 38.231075, 37.306679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.767052, 38.471287, 37.116341>,  <40.921276, 38.615414, 37.002140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.767052, 38.471287, 37.116341>,  <40.510010, 38.231075, 37.306679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.767052, 38.471287, 37.116341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383364, 0.285713, 0.878294,
		0.663396, -0.746815, -0.046621,
		0.642603, 0.600529, -0.475843,
		40.959831, 38.651447, 36.973587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.258690, 38.133175, 37.411472>,  <40.510010, 38.231075, 37.306679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.258690, 38.133175, 37.411472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.182026, 38.520073, 37.344898>,  <41.136028, 38.752213, 37.304955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.182026, 38.520073, 37.344898>,  <41.258690, 38.133175, 37.411472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.182026, 38.520073, 37.344898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176230, 0.200738, 0.963663,
		0.965509, 0.155367, -0.208932,
		-0.191662, 0.967246, -0.166434,
		41.124527, 38.810246, 37.294968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.818974, 38.466881, 37.610001>,  <41.258690, 38.133175, 37.411472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.818974, 38.466881, 37.610001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.501617, 38.709324, 37.632538>,  <41.311203, 38.854790, 37.646061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.501617, 38.709324, 37.632538>,  <41.818974, 38.466881, 37.610001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.501617, 38.709324, 37.632538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061956, -0.011667, 0.998011,
		0.605556, 0.795299, -0.028295,
		-0.793387, 0.606105, 0.056339,
		41.263603, 38.891155, 37.649441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.978336, 38.969505, 38.114288>,  <41.818974, 38.466881, 37.610001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.978336, 38.969505, 38.114288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.581360, 39.011490, 38.088833>,  <41.343174, 39.036682, 38.073559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.581360, 39.011490, 38.088833>,  <41.978336, 38.969505, 38.114288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.581360, 39.011490, 38.088833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046486, 0.158434, 0.986275,
		0.113602, 0.981775, -0.152357,
		-0.992438, 0.104961, -0.063637,
		41.283627, 39.042976, 38.069740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.869061, 39.473728, 38.454994>,  <41.978336, 38.969505, 38.114288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.869061, 39.473728, 38.454994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.510311, 39.296822, 38.453644>,  <41.295059, 39.190678, 38.452831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.510311, 39.296822, 38.453644>,  <41.869061, 39.473728, 38.454994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.510311, 39.296822, 38.453644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034240, 0.061811, 0.997500,
		-0.440954, 0.894750, -0.070580,
		-0.896876, -0.442269, -0.003380,
		41.241249, 39.164143, 38.452629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.632389, 39.663082, 39.063705>,  <41.869061, 39.473728, 38.454994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.632389, 39.663082, 39.063705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.369694, 39.375675, 38.972122>,  <41.212074, 39.203232, 38.917171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.369694, 39.375675, 38.972122>,  <41.632389, 39.663082, 39.063705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.369694, 39.375675, 38.972122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093990, -0.223248, 0.970220,
		-0.748235, 0.658703, 0.079083,
		-0.656742, -0.718520, -0.228954,
		41.172672, 39.160118, 38.903435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.138203, 39.740906, 39.554138>,  <41.632389, 39.663082, 39.063705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.138203, 39.740906, 39.554138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.094028, 39.363808, 39.428253>,  <41.067524, 39.137550, 39.352722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.094028, 39.363808, 39.428253>,  <41.138203, 39.740906, 39.554138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.094028, 39.363808, 39.428253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088378, -0.306078, 0.947895,
		-0.989946, 0.132493, -0.049516,
		-0.110434, -0.942742, -0.314710,
		41.060898, 39.080986, 39.333839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.482861, 39.420040, 39.716671>,  <41.138203, 39.740906, 39.554138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.482861, 39.420040, 39.716671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.767429, 39.139603, 39.697289>,  <40.938171, 38.971340, 39.685661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.767429, 39.139603, 39.697289>,  <40.482861, 39.420040, 39.716671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.767429, 39.139603, 39.697289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091165, -0.160434, 0.982828,
		-0.696824, -0.694791, -0.178052,
		0.711425, -0.701090, -0.048453,
		40.980858, 38.929276, 39.682751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.329056, 38.934608, 40.214184>,  <40.482861, 39.420040, 39.716671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.329056, 38.934608, 40.214184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.711597, 38.853191, 40.130314>,  <40.941120, 38.804340, 40.079990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.711597, 38.853191, 40.130314>,  <40.329056, 38.934608, 40.214184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.711597, 38.853191, 40.130314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189994, -0.112063, 0.975369,
		-0.222028, -0.972631, -0.068499,
		0.956350, -0.203544, -0.209676,
		40.998501, 38.792130, 40.067410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.577599, 38.522694, 40.807804>,  <40.329056, 38.934608, 40.214184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.577599, 38.522694, 40.807804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.911156, 38.584713, 40.595924>,  <41.111290, 38.621925, 40.468796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.911156, 38.584713, 40.595924>,  <40.577599, 38.522694, 40.807804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.911156, 38.584713, 40.595924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550311, -0.306899, 0.776512,
		-0.042167, -0.939028, -0.341246,
		0.833894, 0.155048, -0.529698,
		41.161324, 38.631229, 40.437016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.346916, 38.482250, 41.016708>,  <40.577599, 38.522694, 40.807804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.346916, 38.482250, 41.016708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.369396, 38.180134, 40.755516>,  <41.382885, 37.998863, 40.598801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.369396, 38.180134, 40.755516>,  <41.346916, 38.482250, 41.016708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.369396, 38.180134, 40.755516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151645, 0.639966, -0.753291,
		0.986836, 0.141357, -0.078569,
		0.056201, -0.755289, -0.652977,
		41.386257, 37.953548, 40.559624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.807919, 38.600124, 40.381741>,  <41.346916, 38.482250, 41.016708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.807919, 38.600124, 40.381741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.530739, 38.332485, 40.274311>,  <41.364433, 38.171902, 40.209854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.530739, 38.332485, 40.274311>,  <41.807919, 38.600124, 40.381741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.530739, 38.332485, 40.274311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126642, 0.479668, -0.868263,
		0.709781, -0.567646, -0.417120,
		-0.692945, -0.669101, -0.268572,
		41.322857, 38.131756, 40.193741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.028980, 38.323589, 39.771503>,  <41.807919, 38.600124, 40.381741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.028980, 38.323589, 39.771503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.631336, 38.301949, 39.809071>,  <41.392750, 38.288963, 39.831612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.631336, 38.301949, 39.809071>,  <42.028980, 38.323589, 39.771503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.631336, 38.301949, 39.809071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106868, 0.344713, -0.932605,
		0.018083, -0.937147, -0.348465,
		-0.994109, -0.054104, 0.093918,
		41.333103, 38.285717, 39.837246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.606991, 37.805565, 39.387764>,  <42.028980, 38.323589, 39.771503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.606991, 37.805565, 39.387764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.391636, 38.134285, 39.462364>,  <41.262421, 38.331516, 39.507122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.391636, 38.134285, 39.462364>,  <41.606991, 37.805565, 39.387764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.391636, 38.134285, 39.462364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085640, 0.273522, -0.958046,
		-0.838332, -0.499832, -0.217641,
		-0.538391, 0.821799, 0.186496,
		41.230118, 38.380825, 39.518314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.013210, 37.865589, 38.878887>,  <41.606991, 37.805565, 39.387764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.013210, 37.865589, 38.878887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.036591, 38.235714, 39.028759>,  <41.050617, 38.457787, 39.118683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.036591, 38.235714, 39.028759>,  <41.013210, 37.865589, 38.878887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.036591, 38.235714, 39.028759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090625, 0.378691, -0.921075,
		-0.994169, 0.019879, 0.105989,
		0.058447, 0.925309, 0.374682,
		41.054123, 38.513306, 39.141163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.431652, 38.150921, 38.732304>,  <41.013210, 37.865589, 38.878887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.431652, 38.150921, 38.732304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.667675, 38.469849, 38.783085>,  <40.809288, 38.661205, 38.813553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.667675, 38.469849, 38.783085>,  <40.431652, 38.150921, 38.732304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.667675, 38.469849, 38.783085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080852, 0.214809, -0.973304,
		-0.803302, 0.564042, 0.191214,
		0.590058, 0.797317, 0.126953,
		40.844692, 38.709045, 38.821171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.067375, 38.583035, 38.462906>,  <40.431652, 38.150921, 38.732304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.067375, 38.583035, 38.462906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.433952, 38.743092, 38.461311>,  <40.653900, 38.839127, 38.460354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.433952, 38.743092, 38.461311>,  <40.067375, 38.583035, 38.462906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.433952, 38.743092, 38.461311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121677, 0.269156, -0.955380,
		-0.381211, 0.876039, 0.295354,
		0.916446, 0.400139, -0.003988,
		40.708885, 38.863132, 38.460114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.045643, 39.031467, 37.843746>,  <40.067375, 38.583035, 38.462906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.045643, 39.031467, 37.843746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.426243, 39.097340, 37.947689>,  <40.654602, 39.136864, 38.010056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.426243, 39.097340, 37.947689>,  <40.045643, 39.031467, 37.843746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.426243, 39.097340, 37.947689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255435, 0.047846, -0.965641,
		-0.171458, 0.985185, 0.003460,
		0.951501, 0.164683, 0.259855,
		40.711693, 39.146744, 38.025646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.297012, 39.715149, 37.660774>,  <40.045643, 39.031467, 37.843746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.297012, 39.715149, 37.660774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.591122, 39.444141, 37.668247>,  <40.767586, 39.281536, 37.672729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.591122, 39.444141, 37.668247>,  <40.297012, 39.715149, 37.660774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.591122, 39.444141, 37.668247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115038, 0.097583, -0.988557,
		0.667940, 0.729006, 0.149690,
		0.735270, -0.677516, 0.018684,
		40.811703, 39.240887, 37.673851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.834728, 40.047768, 37.222542>,  <40.297012, 39.715149, 37.660774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.834728, 40.047768, 37.222542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.882793, 39.651875, 37.253479>,  <40.911633, 39.414337, 37.272041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.882793, 39.651875, 37.253479>,  <40.834728, 40.047768, 37.222542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.882793, 39.651875, 37.253479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160821, -0.057469, -0.985309,
		0.979642, 0.130836, 0.152265,
		0.120163, -0.989737, 0.077341,
		40.918842, 39.354954, 37.276680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.358025, 39.757500, 36.653847>,  <40.834728, 40.047768, 37.222542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.358025, 39.757500, 36.653847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.353325, 39.432446, 36.886909>,  <41.350506, 39.237415, 37.026749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.353325, 39.432446, 36.886909>,  <41.358025, 39.757500, 36.653847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.353325, 39.432446, 36.886909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008515, -0.582598, -0.812716,
		0.999895, -0.014510, -0.000075,
		-0.011749, -0.812631, 0.582660,
		41.349800, 39.188656, 37.061707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.950821, 39.276718, 36.476845>,  <41.358025, 39.757500, 36.653847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.950821, 39.276718, 36.476845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.641117, 39.073147, 36.627319>,  <41.455296, 38.951004, 36.717606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.641117, 39.073147, 36.627319>,  <41.950821, 39.276718, 36.476845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.641117, 39.073147, 36.627319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044172, -0.549508, -0.834320,
		0.631330, -0.662594, 0.402979,
		-0.774255, -0.508931, 0.376189,
		41.408840, 38.920467, 36.740177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.063961, 38.631149, 36.261406>,  <41.950821, 39.276718, 36.476845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.063961, 38.631149, 36.261406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.678909, 38.664032, 36.364624>,  <41.447880, 38.683762, 36.426556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.678909, 38.664032, 36.364624>,  <42.063961, 38.631149, 36.261406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.678909, 38.664032, 36.364624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252253, -0.618891, -0.743870,
		0.098550, -0.781163, 0.616500,
		-0.962630, 0.082205, 0.258042,
		41.390121, 38.688694, 36.442036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.826962, 37.958900, 36.310513>,  <42.063961, 38.631149, 36.261406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.826962, 37.958900, 36.310513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.514256, 38.198227, 36.240246>,  <41.326633, 38.341824, 36.198086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.514256, 38.198227, 36.240246>,  <41.826962, 37.958900, 36.310513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.514256, 38.198227, 36.240246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294001, -0.602092, -0.742326,
		-0.549915, -0.528679, 0.646601,
		-0.781765, 0.598318, -0.175667,
		41.279728, 38.377724, 36.187546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.263382, 37.504772, 36.352959>,  <41.826962, 37.958900, 36.310513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.263382, 37.504772, 36.352959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.156212, 37.839531, 36.162037>,  <41.091911, 38.040386, 36.047485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.156212, 37.839531, 36.162037>,  <41.263382, 37.504772, 36.352959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.156212, 37.839531, 36.162037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444755, -0.546907, -0.709285,
		-0.854640, 0.022248, 0.518744,
		-0.267925, 0.836897, -0.477304,
		41.075836, 38.090599, 36.018845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.429722, 37.413376, 36.257000>,  <41.263382, 37.504772, 36.352959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.429722, 37.413376, 36.257000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.607567, 37.634449, 35.975048>,  <40.714275, 37.767094, 35.805878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.607567, 37.634449, 35.975048>,  <40.429722, 37.413376, 36.257000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.607567, 37.634449, 35.975048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467705, -0.527896, -0.708927,
		-0.763918, 0.644875, 0.023784,
		0.444614, 0.552686, -0.704880,
		40.740952, 37.800255, 35.763584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.070251, 37.171696, 35.568806>,  <40.429722, 37.413376, 36.257000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.070251, 37.171696, 35.568806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.283451, 37.460686, 35.392647>,  <40.411369, 37.634079, 35.286953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.283451, 37.460686, 35.392647>,  <40.070251, 37.171696, 35.568806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.283451, 37.460686, 35.392647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263676, -0.352744, -0.897801,
		-0.803984, 0.594646, 0.002488,
		0.532996, 0.722473, -0.440395,
		40.443348, 37.677429, 35.260529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.561111, 37.710003, 35.259941>,  <40.070251, 37.171696, 35.568806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.561111, 37.710003, 35.259941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.906639, 37.754368, 35.063362>,  <40.113956, 37.780987, 34.945415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.906639, 37.754368, 35.063362>,  <39.561111, 37.710003, 35.259941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.906639, 37.754368, 35.063362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482891, -0.095858, -0.870418,
		-0.143645, 0.989197, -0.029247,
		0.863819, 0.110908, -0.491443,
		40.165783, 37.787640, 34.915928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.271400, 38.091076, 34.678604>,  <39.561111, 37.710003, 35.259941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.271400, 38.091076, 34.678604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.642384, 37.967159, 34.594837>,  <39.864975, 37.892811, 34.544579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.642384, 37.967159, 34.594837>,  <39.271400, 38.091076, 34.678604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.642384, 37.967159, 34.594837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285569, -0.225262, -0.931508,
		0.241396, 0.923737, -0.297386,
		0.927458, -0.309787, -0.209413,
		39.920620, 37.874222, 34.532013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.483807, 38.426167, 33.982204>,  <39.271400, 38.091076, 34.678604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.483807, 38.426167, 33.982204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.720234, 38.110794, 34.050346>,  <39.862091, 37.921570, 34.091232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.720234, 38.110794, 34.050346>,  <39.483807, 38.426167, 33.982204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.720234, 38.110794, 34.050346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211684, -0.355411, -0.910425,
		0.778351, 0.502060, -0.376969,
		0.591067, -0.788428, 0.170356,
		39.897552, 37.874264, 34.101452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.019257, 38.389935, 33.509094>,  <39.483807, 38.426167, 33.982204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.019257, 38.389935, 33.509094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.952602, 38.013130, 33.625607>,  <39.912609, 37.787048, 33.695515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.952602, 38.013130, 33.625607>,  <40.019257, 38.389935, 33.509094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.952602, 38.013130, 33.625607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186867, -0.259890, -0.947385,
		0.968150, -0.212297, -0.132725,
		-0.166633, -0.942012, 0.291284,
		39.902611, 37.730526, 33.712994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.228199, 37.911587, 32.965607>,  <40.019257, 38.389935, 33.509094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.228199, 37.911587, 32.965607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.013100, 37.654114, 33.183414>,  <39.884041, 37.499630, 33.314098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.013100, 37.654114, 33.183414>,  <40.228199, 37.911587, 32.965607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.013100, 37.654114, 33.183414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213680, -0.520709, -0.826561,
		0.815578, -0.560834, 0.142468,
		-0.537749, -0.643682, 0.544518,
		39.851776, 37.461010, 33.346771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.561600, 37.278553, 32.746040>,  <40.228199, 37.911587, 32.965607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.561600, 37.278553, 32.746040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.204300, 37.204777, 32.910030>,  <39.989918, 37.160511, 33.008427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.204300, 37.204777, 32.910030>,  <40.561600, 37.278553, 32.746040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.204300, 37.204777, 32.910030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274071, -0.499464, -0.821840,
		0.356351, -0.846473, 0.395597,
		-0.893252, -0.184443, 0.409978,
		39.936325, 37.149445, 33.033024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.487957, 36.543350, 32.748127>,  <40.561600, 37.278553, 32.746040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.487957, 36.543350, 32.748127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.123158, 36.707417, 32.750462>,  <39.904278, 36.805855, 32.751862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.123158, 36.707417, 32.750462>,  <40.487957, 36.543350, 32.748127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.123158, 36.707417, 32.750462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222456, -0.482569, -0.847137,
		-0.344644, -0.773883, 0.531343,
		-0.911994, 0.410161, 0.005840,
		39.849560, 36.830463, 32.752213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.090237, 36.217892, 33.086346>,  <40.487957, 36.543350, 32.748127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.090237, 36.217892, 33.086346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.246868, 35.887569, 32.924007>,  <41.340847, 35.689377, 32.826603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.246868, 35.887569, 32.924007>,  <41.090237, 36.217892, 33.086346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.246868, 35.887569, 32.924007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.713544, -0.005960, 0.700586,
		-0.580965, -0.563927, 0.586913,
		0.391581, -0.825803, -0.405849,
		41.364342, 35.639828, 32.802254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.325356, 35.600582, 33.521049>,  <41.090237, 36.217892, 33.086346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.325356, 35.600582, 33.521049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.564541, 35.612087, 33.200645>,  <41.708054, 35.618992, 33.008404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.564541, 35.612087, 33.200645>,  <41.325356, 35.600582, 33.521049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.564541, 35.612087, 33.200645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.747892, 0.339395, 0.570498,
		0.288267, -0.940204, 0.181434,
		0.597962, 0.028763, -0.801008,
		41.743931, 35.620716, 32.960342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.982548, 35.097801, 33.833923>,  <41.325356, 35.600582, 33.521049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.982548, 35.097801, 33.833923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.055294, 34.841438, 33.535618>,  <41.098942, 34.687622, 33.356632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.055294, 34.841438, 33.535618>,  <40.982548, 35.097801, 33.833923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.055294, 34.841438, 33.535618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.982661, 0.090595, 0.161774,
		-0.036118, -0.762256, 0.646267,
		0.181862, -0.640904, -0.745767,
		41.109852, 34.649166, 33.311890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.413879, 34.475422, 33.946865>,  <40.982548, 35.097801, 33.833923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.413879, 34.475422, 33.946865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.456516, 34.580563, 33.563293>,  <41.482098, 34.643646, 33.333149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.456516, 34.580563, 33.563293>,  <41.413879, 34.475422, 33.946865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.456516, 34.580563, 33.563293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.986825, 0.090099, 0.134385,
		0.121722, -0.960620, -0.249785,
		0.106587, 0.262851, -0.958931,
		41.488491, 34.659416, 33.275616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.037830, 34.091370, 33.712006>,  <41.413879, 34.475422, 33.946865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.037830, 34.091370, 33.712006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.006912, 34.389919, 33.447598>,  <41.988361, 34.569050, 33.288952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.006912, 34.389919, 33.447598>,  <42.037830, 34.091370, 33.712006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.006912, 34.389919, 33.447598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.996043, 0.086986, -0.018254,
		0.043875, -0.659817, -0.750145,
		-0.077296, 0.746375, -0.661022,
		41.983723, 34.613831, 33.249290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.399685, 33.898762, 33.105869>,  <42.037830, 34.091370, 33.712006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.399685, 33.898762, 33.105869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.401234, 34.286270, 33.205036>,  <42.402164, 34.518776, 33.264534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.401234, 34.286270, 33.205036>,  <42.399685, 33.898762, 33.105869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.401234, 34.286270, 33.205036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.985891, -0.045185, 0.161175,
		0.167344, 0.243793, -0.955281,
		0.003871, 0.968774, 0.247914,
		42.402393, 34.576904, 33.279411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.838444, 34.407452, 32.730534>,  <42.399685, 33.898762, 33.105869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.838444, 34.407452, 32.730534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.841511, 34.541340, 33.107449>,  <42.843353, 34.621674, 33.333599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.841511, 34.541340, 33.107449>,  <42.838444, 34.407452, 32.730534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.841511, 34.541340, 33.107449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.993778, 0.102159, -0.044380,
		-0.111118, 0.936764, -0.331853,
		0.007672, 0.334719, 0.942287,
		42.843811, 34.641754, 33.390133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.057522, 35.113319, 32.851635>,  <42.838444, 34.407452, 32.730534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.057522, 35.113319, 32.851635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.142567, 34.851337, 33.141693>,  <43.193596, 34.694149, 33.315727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.142567, 34.851337, 33.141693>,  <43.057522, 35.113319, 32.851635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.142567, 34.851337, 33.141693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.974965, 0.191642, -0.112771,
		-0.065108, 0.730965, 0.679302,
		0.212614, -0.654953, 0.725142,
		43.206352, 34.654850, 33.359238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.620129, 35.796688, 32.835148>,  <43.057522, 35.113319, 32.851635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.620129, 35.796688, 32.835148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.799023, 35.587898, 32.544624>,  <42.906357, 35.462624, 32.370312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.799023, 35.587898, 32.544624>,  <42.620129, 35.796688, 32.835148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.799023, 35.587898, 32.544624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545078, 0.802887, -0.241376,
		0.709136, -0.287943, 0.643595,
		0.447232, -0.521978, -0.726308,
		42.933193, 35.431305, 32.326733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.234577, 36.208736, 32.552170>,  <42.620129, 35.796688, 32.835148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.234577, 36.208736, 32.552170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.454006, 35.964413, 32.323792>,  <43.585663, 35.817818, 32.186764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.454006, 35.964413, 32.323792>,  <43.234577, 36.208736, 32.552170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.454006, 35.964413, 32.323792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.827485, 0.494409, 0.266135,
		0.119727, -0.618447, 0.776652,
		0.548574, -0.610805, -0.570950,
		43.618580, 35.781170, 32.152508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.998394, 36.158142, 32.747952>,  <43.234577, 36.208736, 32.552170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.998394, 36.158142, 32.747952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.067051, 36.266853, 33.126724>,  <44.108246, 36.332081, 33.353989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.067051, 36.266853, 33.126724>,  <43.998394, 36.158142, 32.747952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.067051, 36.266853, 33.126724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.981126, -0.134053, -0.139362,
		0.089064, 0.952979, -0.289653,
		0.171638, 0.271774, 0.946931,
		44.118542, 36.348385, 33.410805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.604740, 36.610836, 32.689495>,  <43.998394, 36.158142, 32.747952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.604740, 36.610836, 32.689495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.567265, 36.451458, 33.054455>,  <44.544781, 36.355831, 33.273430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.567265, 36.451458, 33.054455>,  <44.604740, 36.610836, 32.689495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.567265, 36.451458, 33.054455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.976593, 0.141446, 0.162049,
		-0.193622, 0.906220, 0.375867,
		-0.093687, -0.398445, 0.912395,
		44.539158, 36.331924, 33.328175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.270649, 36.413811, 32.497463>,  <44.604740, 36.610836, 32.689495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.270649, 36.413811, 32.497463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.290340, 36.409424, 32.896954>,  <45.302155, 36.406792, 33.136646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.290340, 36.409424, 32.896954>,  <45.270649, 36.413811, 32.497463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.290340, 36.409424, 32.896954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.788316, -0.613578, -0.045595,
		0.613297, 0.789558, -0.021566,
		0.049232, -0.010963, 0.998727,
		45.305111, 36.406136, 33.196571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.947720, 36.637836, 32.612228>,  <45.270649, 36.413811, 32.497463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.947720, 36.637836, 32.612228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.779133, 36.408157, 32.892986>,  <45.677979, 36.270348, 33.061440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.779133, 36.408157, 32.892986>,  <45.947720, 36.637836, 32.612228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.779133, 36.408157, 32.892986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.829873, -0.556273, 0.043248,
		0.365612, 0.600711, 0.710967,
		-0.421471, -0.574200, 0.701895,
		45.652691, 36.235897, 33.103554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.961735, 36.761589, 33.319714>,  <45.947720, 36.637836, 32.612228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.961735, 36.761589, 33.319714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.967232, 36.390957, 33.169376>,  <45.970528, 36.168579, 33.079174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.967232, 36.390957, 33.169376>,  <45.961735, 36.761589, 33.319714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.967232, 36.390957, 33.169376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.943558, -0.112384, 0.311557,
		-0.330921, -0.358910, 0.872740,
		0.013739, -0.926582, -0.375843,
		45.971352, 36.112984, 33.056622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.193722, 36.231018, 33.780422>,  <45.961735, 36.761589, 33.319714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.193722, 36.231018, 33.780422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.264030, 36.112991, 33.404755>,  <46.306217, 36.042175, 33.179352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.264030, 36.112991, 33.404755>,  <46.193722, 36.231018, 33.780422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.264030, 36.112991, 33.404755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.933429, -0.253141, 0.254227,
		-0.312755, -0.921335, 0.230927,
		0.175771, -0.295064, -0.939171,
		46.316761, 36.024471, 33.123005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.278175, 35.501701, 33.951637>,  <46.193722, 36.231018, 33.780422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.278175, 35.501701, 33.951637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.488781, 35.719719, 33.690651>,  <46.615147, 35.850529, 33.534058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.488781, 35.719719, 33.690651>,  <46.278175, 35.501701, 33.951637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.488781, 35.719719, 33.690651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.849427, -0.369238, 0.377011,
		-0.035430, -0.752725, -0.657382,
		0.526516, 0.545040, -0.652466,
		46.646736, 35.883232, 33.494911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.993790, 35.456501, 33.741886>,  <46.278175, 35.501701, 33.951637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.993790, 35.456501, 33.741886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.216812, 35.643166, 34.016506>,  <47.350628, 35.755165, 34.181278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.216812, 35.643166, 34.016506>,  <46.993790, 35.456501, 33.741886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.216812, 35.643166, 34.016506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426402, -0.548600, 0.719180,
		0.712256, -0.693733, -0.106892,
		0.557559, 0.466661, 0.686553,
		47.384079, 35.783165, 34.222473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.092560, 34.930683, 34.164223>,  <46.993790, 35.456501, 33.741886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.092560, 34.930683, 34.164223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.215782, 35.232258, 34.396320>,  <47.289715, 35.413204, 34.535580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.215782, 35.232258, 34.396320>,  <47.092560, 34.930683, 34.164223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.215782, 35.232258, 34.396320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069448, -0.590454, 0.804078,
		0.948829, -0.288000, -0.129536,
		0.308060, 0.753937, 0.580241,
		47.308201, 35.458439, 34.570393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.636246, 34.778164, 34.584702>,  <47.092560, 34.930683, 34.164223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.636246, 34.778164, 34.584702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.431232, 35.058891, 34.782597>,  <47.308224, 35.227329, 34.901333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.431232, 35.058891, 34.782597>,  <47.636246, 34.778164, 34.584702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.431232, 35.058891, 34.782597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105183, -0.623139, 0.775006,
		0.852204, 0.345175, 0.393196,
		-0.512528, 0.701820, 0.494735,
		47.277473, 35.269436, 34.931019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.948494, 35.132217, 35.179913>,  <47.636246, 34.778164, 34.584702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.948494, 35.132217, 35.179913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.552742, 35.091396, 35.221310>,  <47.315292, 35.066902, 35.246147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.552742, 35.091396, 35.221310>,  <47.948494, 35.132217, 35.179913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.552742, 35.091396, 35.221310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143541, -0.574233, 0.806010,
		-0.022832, 0.812306, 0.582785,
		-0.989381, -0.102057, 0.103488,
		47.255928, 35.060780, 35.252357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<38.281624, 29.812883, 26.739037> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.887424, 29.796671, 26.673128>,  <37.650906, 29.786943, 26.633583>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.887424, 29.796671, 26.673128>,  <38.281624, 29.812883, 26.739037>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.887424, 29.796671, 26.673128> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159662, 0.550289, 0.819567,
		0.057453, 0.833990, -0.548781,
		-0.985498, -0.040533, -0.164772,
		37.591774, 29.784512, 26.623697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.974289, 30.551022, 26.878016>,  <38.281624, 29.812883, 26.739037>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.974289, 30.551022, 26.878016> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.701725, 30.263285, 26.932030>,  <37.538189, 30.090643, 26.964437>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.701725, 30.263285, 26.932030>,  <37.974289, 30.551022, 26.878016>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.701725, 30.263285, 26.932030> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349705, 0.482060, 0.803321,
		-0.642956, 0.500166, -0.580036,
		-0.681406, -0.719341, 0.135033,
		37.497303, 30.047482, 26.972540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.396744, 30.955772, 26.986259>,  <37.974289, 30.551022, 26.878016>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.396744, 30.955772, 26.986259> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.304768, 30.591789, 27.124308>,  <37.249580, 30.373400, 27.207136>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.304768, 30.591789, 27.124308>,  <37.396744, 30.955772, 26.986259>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.304768, 30.591789, 27.124308> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398700, 0.411577, 0.819538,
		-0.887787, 0.050847, -0.457438,
		-0.229942, -0.909955, 0.345120,
		37.235786, 30.318802, 27.227844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.718441, 30.985857, 27.367069>,  <37.396744, 30.955772, 26.986259>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.718441, 30.985857, 27.367069> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.890736, 30.654478, 27.510260>,  <36.994110, 30.455650, 27.596174>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.890736, 30.654478, 27.510260>,  <36.718441, 30.985857, 27.367069>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.890736, 30.654478, 27.510260> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164188, 0.318101, 0.933731,
		-0.887418, -0.460963, 0.000996,
		0.430733, -0.828447, 0.357974,
		37.019955, 30.405945, 27.617651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.236431, 30.834387, 27.856583>,  <36.718441, 30.985857, 27.367069>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.236431, 30.834387, 27.856583> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.578438, 30.648495, 27.948648>,  <36.783642, 30.536961, 28.003887>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.578438, 30.648495, 27.948648>,  <36.236431, 30.834387, 27.856583>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.578438, 30.648495, 27.948648> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138323, 0.223374, 0.964868,
		-0.499815, -0.856814, 0.126705,
		0.855016, -0.464729, 0.230162,
		36.834942, 30.509075, 28.017696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.055874, 30.604767, 28.459417>,  <36.236431, 30.834387, 27.856583>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.055874, 30.604767, 28.459417> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.448792, 30.529905, 28.462624>,  <36.684544, 30.484987, 28.464548>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.448792, 30.529905, 28.462624>,  <36.055874, 30.604767, 28.459417>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.448792, 30.529905, 28.462624> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028597, 0.192108, 0.980957,
		-0.185131, -0.963363, 0.194059,
		0.982298, -0.187155, 0.008016,
		36.743481, 30.473759, 28.465029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.201122, 30.014557, 28.938543>,  <36.055874, 30.604767, 28.459417>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.201122, 30.014557, 28.938543> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.516685, 30.258558, 28.908808>,  <36.706024, 30.404959, 28.890966>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.516685, 30.258558, 28.908808>,  <36.201122, 30.014557, 28.938543>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.516685, 30.258558, 28.908808> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072822, 0.212918, 0.974353,
		0.610184, -0.763259, 0.212394,
		0.788905, 0.610002, -0.074337,
		36.753357, 30.441559, 28.886507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.583576, 29.850668, 29.523212>,  <36.201122, 30.014557, 28.938543>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.583576, 29.850668, 29.523212> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.732422, 30.203478, 29.407583>,  <36.821732, 30.415163, 29.338205>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.732422, 30.203478, 29.407583>,  <36.583576, 29.850668, 29.523212>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.732422, 30.203478, 29.407583> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091486, 0.275067, 0.957062,
		0.923666, -0.382586, 0.021665,
		0.372118, 0.882024, -0.289071,
		36.844059, 30.468084, 29.320862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.305561, 29.937452, 29.843985>,  <36.583576, 29.850668, 29.523212>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.305561, 29.937452, 29.843985> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.159718, 30.298344, 29.751858>,  <37.072212, 30.514877, 29.696583>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.159718, 30.298344, 29.751858>,  <37.305561, 29.937452, 29.843985>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.159718, 30.298344, 29.751858> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317171, 0.352886, 0.880269,
		0.875477, 0.247908, -0.414827,
		-0.364612, 0.902227, -0.230315,
		37.050335, 30.569012, 29.682764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.746052, 30.317123, 30.221722>,  <37.305561, 29.937452, 29.843985>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.746052, 30.317123, 30.221722> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.459255, 30.582214, 30.135260>,  <37.287178, 30.741268, 30.083384>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.459255, 30.582214, 30.135260>,  <37.746052, 30.317123, 30.221722>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.459255, 30.582214, 30.135260> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233431, 0.520441, 0.821371,
		0.656839, 0.538457, -0.527851,
		-0.716988, 0.662726, -0.216153,
		37.244160, 30.781033, 30.070414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.042950, 30.944302, 30.273487>,  <37.746052, 30.317123, 30.221722>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.042950, 30.944302, 30.273487> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.651871, 31.004908, 30.331665>,  <37.417225, 31.041271, 30.366571>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.651871, 31.004908, 30.331665>,  <38.042950, 30.944302, 30.273487>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.651871, 31.004908, 30.331665> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209095, 0.637009, 0.741956,
		0.019769, 0.755819, -0.654482,
		-0.977695, 0.151516, 0.145445,
		37.358562, 31.050362, 30.375299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.034653, 31.753084, 30.474382>,  <38.042950, 30.944302, 30.273487>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.034653, 31.753084, 30.474382> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.689083, 31.592400, 30.595879>,  <37.481739, 31.495989, 30.668776>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.689083, 31.592400, 30.595879>,  <38.034653, 31.753084, 30.474382>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.689083, 31.592400, 30.595879> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091575, 0.467760, 0.879099,
		-0.495221, 0.787293, -0.367324,
		-0.863928, -0.401710, 0.303741,
		37.429905, 31.471886, 30.687000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.823265, 32.264103, 30.864079>,  <38.034653, 31.753084, 30.474382>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.823265, 32.264103, 30.864079> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.591499, 31.950392, 30.952791>,  <37.452438, 31.762165, 31.006020>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.591499, 31.950392, 30.952791>,  <37.823265, 32.264103, 30.864079>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.591499, 31.950392, 30.952791> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094934, 0.335207, 0.937349,
		-0.809485, 0.522060, -0.268679,
		-0.579415, -0.784277, 0.221784,
		37.417675, 31.715109, 31.019327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.327881, 32.670029, 30.988325>,  <37.823265, 32.264103, 30.864079>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.327881, 32.670029, 30.988325> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.340622, 32.317566, 31.177025>,  <37.348267, 32.106087, 31.290245>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.340622, 32.317566, 31.177025>,  <37.327881, 32.670029, 30.988325>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.340622, 32.317566, 31.177025> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223107, 0.453809, 0.862717,
		-0.974273, -0.132733, -0.182136,
		0.031856, -0.881158, 0.471748,
		37.350178, 32.053219, 31.318550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.752022, 32.648846, 31.240004>,  <37.327881, 32.670029, 30.988325>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.752022, 32.648846, 31.240004> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.988934, 32.412540, 31.459166>,  <37.131081, 32.270756, 31.590662>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.988934, 32.412540, 31.459166>,  <36.752022, 32.648846, 31.240004>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.988934, 32.412540, 31.459166> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248012, 0.513322, 0.821578,
		-0.766609, -0.622494, 0.157516,
		0.592284, -0.590763, 0.547904,
		37.166618, 32.235310, 31.623537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.394794, 32.620537, 31.796080>,  <36.752022, 32.648846, 31.240004>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.394794, 32.620537, 31.796080> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.747284, 32.475010, 31.916800>,  <36.958778, 32.387695, 31.989231>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.747284, 32.475010, 31.916800>,  <36.394794, 32.620537, 31.796080>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.747284, 32.475010, 31.916800> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019902, 0.609339, 0.792660,
		-0.472280, -0.704517, 0.529723,
		0.881224, -0.363815, 0.301800,
		37.011650, 32.365864, 32.007339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.353531, 32.294224, 32.482552>,  <36.394794, 32.620537, 31.796080>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.353531, 32.294224, 32.482552> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.732319, 32.412254, 32.431671>,  <36.959591, 32.483074, 32.401142>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.732319, 32.412254, 32.431671>,  <36.353531, 32.294224, 32.482552>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.732319, 32.412254, 32.431671> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022254, 0.455140, 0.890142,
		0.320554, -0.840106, 0.437569,
		0.946969, 0.295076, -0.127201,
		37.016411, 32.500778, 32.393509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.564129, 32.236217, 33.125237>,  <36.353531, 32.294224, 32.482552>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.564129, 32.236217, 33.125237> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.838467, 32.466133, 32.946697>,  <37.003071, 32.604084, 32.839573>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.838467, 32.466133, 32.946697>,  <36.564129, 32.236217, 33.125237>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.838467, 32.466133, 32.946697> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045160, 0.578534, 0.814407,
		0.726342, -0.578717, 0.370829,
		0.685849, 0.574791, -0.446348,
		37.044220, 32.638569, 32.812794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.992298, 32.484085, 33.706749>,  <36.564129, 32.236217, 33.125237>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.992298, 32.484085, 33.706749> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.076378, 32.703056, 33.382740>,  <37.126827, 32.834438, 33.188335>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.076378, 32.703056, 33.382740>,  <36.992298, 32.484085, 33.706749>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.076378, 32.703056, 33.382740> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281711, 0.759479, 0.586371,
		0.936191, -0.351449, 0.005427,
		0.210201, 0.547427, -0.810024,
		37.139439, 32.867283, 33.139732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.680252, 32.719471, 33.783516>,  <36.992298, 32.484085, 33.706749>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.680252, 32.719471, 33.783516> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.443153, 32.949329, 33.557800>,  <37.300892, 33.087246, 33.422371>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.443153, 32.949329, 33.557800>,  <37.680252, 32.719471, 33.783516>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.443153, 32.949329, 33.557800> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107103, 0.750667, 0.651941,
		0.798232, 0.326001, -0.506505,
		-0.592751, 0.574649, -0.564291,
		37.265327, 33.121723, 33.388512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.294720, 33.241375, 33.814899>,  <37.680252, 32.719471, 33.783516>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.294720, 33.241375, 33.814899> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.597832, 33.034393, 33.655899>,  <38.779701, 32.910202, 33.560501>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.597832, 33.034393, 33.655899>,  <38.294720, 33.241375, 33.814899>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.597832, 33.034393, 33.655899> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.636729, -0.453262, -0.623803,
		0.142621, 0.725805, -0.672954,
		0.757783, -0.517457, -0.397496,
		38.825165, 32.879158, 33.536652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.952641, 33.342018, 33.667564>,  <38.294720, 33.241375, 33.814899>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.952641, 33.342018, 33.667564> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.095406, 33.702522, 33.569302>,  <39.181065, 33.918823, 33.510345>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.095406, 33.702522, 33.569302>,  <38.952641, 33.342018, 33.667564>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.095406, 33.702522, 33.569302> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385689, -0.381690, -0.839974,
		-0.850798, 0.205052, -0.483835,
		0.356913, 0.901258, -0.245655,
		39.202480, 33.972900, 33.495605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.687832, 33.559063, 32.963501>,  <38.952641, 33.342018, 33.667564>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.687832, 33.559063, 32.963501> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.019924, 33.771103, 33.032440>,  <39.219181, 33.898327, 33.073803>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.019924, 33.771103, 33.032440>,  <38.687832, 33.559063, 32.963501>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.019924, 33.771103, 33.032440> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321584, -0.202958, -0.924874,
		-0.455297, 0.823287, -0.338975,
		0.830234, 0.530101, 0.172349,
		39.268993, 33.930134, 33.084145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.708565, 33.992821, 32.458599>,  <38.687832, 33.559063, 32.963501>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.708565, 33.992821, 32.458599> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.089085, 33.973213, 32.580338>,  <39.317398, 33.961449, 32.653381>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.089085, 33.973213, 32.580338>,  <38.708565, 33.992821, 32.458599>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.089085, 33.973213, 32.580338> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288667, -0.204792, -0.935271,
		0.108170, 0.977578, -0.180670,
		0.951299, -0.049015, 0.304347,
		39.374474, 33.958508, 32.671642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.125565, 34.439877, 32.143143>,  <38.708565, 33.992821, 32.458599>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.125565, 34.439877, 32.143143> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.399918, 34.167583, 32.246044>,  <39.564529, 34.004208, 32.307785>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.399918, 34.167583, 32.246044>,  <39.125565, 34.439877, 32.143143>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.399918, 34.167583, 32.246044> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174024, -0.189816, -0.966274,
		0.706600, 0.707516, -0.011728,
		0.685880, -0.680728, 0.257249,
		39.605682, 33.963364, 32.323219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.617500, 34.598305, 31.645136>,  <39.125565, 34.439877, 32.143143>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.617500, 34.598305, 31.645136> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.672142, 34.228298, 31.786947>,  <39.704926, 34.006294, 31.872034>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.672142, 34.228298, 31.786947>,  <39.617500, 34.598305, 31.645136>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.672142, 34.228298, 31.786947> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047874, -0.351302, -0.935037,
		0.989469, 0.144699, -0.003703,
		0.136600, -0.925013, 0.354530,
		39.713123, 33.950794, 31.893307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.034138, 34.319778, 31.243900>,  <39.617500, 34.598305, 31.645136>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.034138, 34.319778, 31.243900> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.915638, 33.983818, 31.425802>,  <39.844536, 33.782242, 31.534943>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.915638, 33.983818, 31.425802>,  <40.034138, 34.319778, 31.243900>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.915638, 33.983818, 31.425802> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130974, -0.507354, -0.851726,
		0.946087, -0.192765, 0.260310,
		-0.296252, -0.839901, 0.454754,
		39.826763, 33.731850, 31.562229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.598984, 34.016270, 31.113621>,  <40.034138, 34.319778, 31.243900>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.598984, 34.016270, 31.113621> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.277142, 33.787563, 31.177744>,  <40.084038, 33.650341, 31.216217>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.277142, 33.787563, 31.177744>,  <40.598984, 34.016270, 31.113621>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.277142, 33.787563, 31.177744> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151487, -0.458672, -0.875598,
		0.574166, -0.680224, 0.455664,
		-0.804603, -0.571766, 0.160309,
		40.035759, 33.616035, 31.225836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.757793, 33.306099, 31.063511>,  <40.598984, 34.016270, 31.113621>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.757793, 33.306099, 31.063511> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.371021, 33.315239, 30.961899>,  <40.138958, 33.320721, 30.900932>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.371021, 33.315239, 30.961899>,  <40.757793, 33.306099, 31.063511>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.371021, 33.315239, 30.961899> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199530, -0.552640, -0.809183,
		-0.158875, -0.833107, 0.529803,
		-0.966926, 0.022847, -0.254031,
		40.080944, 33.322094, 30.885689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.696388, 32.683800, 30.695652>,  <40.757793, 33.306099, 31.063511>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.696388, 32.683800, 30.695652> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.320702, 32.796684, 30.617443>,  <40.095291, 32.864414, 30.570517>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.320702, 32.796684, 30.617443>,  <40.696388, 32.683800, 30.695652>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.320702, 32.796684, 30.617443> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052570, -0.444573, -0.894199,
		-0.339274, -0.850125, 0.402715,
		-0.939218, 0.282208, -0.195523,
		40.038937, 32.881348, 30.558786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.301155, 32.131237, 30.409370>,  <40.696388, 32.683800, 30.695652>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.301155, 32.131237, 30.409370> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.076927, 32.439774, 30.288837>,  <39.942390, 32.624893, 30.216518>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.076927, 32.439774, 30.288837>,  <40.301155, 32.131237, 30.409370>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.076927, 32.439774, 30.288837> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060218, -0.324948, -0.943813,
		-0.825915, -0.547218, 0.135708,
		-0.560569, 0.771337, -0.301332,
		39.908756, 32.671173, 30.198439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.690750, 31.792309, 29.929716>,  <40.301155, 32.131237, 30.409370>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.690750, 31.792309, 29.929716> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.800438, 32.171070, 29.862570>,  <39.866249, 32.398327, 29.822283>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.800438, 32.171070, 29.862570>,  <39.690750, 31.792309, 29.929716>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.800438, 32.171070, 29.862570> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154747, -0.215731, -0.964113,
		-0.949134, 0.238403, -0.205688,
		0.274221, 0.946902, -0.167866,
		39.882706, 32.455139, 29.812210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.311970, 32.002052, 29.368507>,  <39.690750, 31.792309, 29.929716>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.311970, 32.002052, 29.368507> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.611351, 32.267246, 29.375116>,  <39.790981, 32.426361, 29.379082>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.611351, 32.267246, 29.375116>,  <39.311970, 32.002052, 29.368507>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.611351, 32.267246, 29.375116> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072518, -0.057050, -0.995734,
		-0.659210, 0.746459, -0.090777,
		0.748453, 0.662981, 0.016524,
		39.835888, 32.466141, 29.380074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.181400, 32.592442, 28.883091>,  <39.311970, 32.002052, 29.368507>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.181400, 32.592442, 28.883091> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.574524, 32.563339, 28.950966>,  <39.810398, 32.545879, 28.991692>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.574524, 32.563339, 28.950966>,  <39.181400, 32.592442, 28.883091>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.574524, 32.563339, 28.950966> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169113, -0.014046, -0.985497,
		0.074080, 0.997251, -0.001501,
		0.982809, -0.072752, 0.169689,
		39.869366, 32.541515, 29.001873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.526566, 33.005142, 28.364506>,  <39.181400, 32.592442, 28.883091>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.526566, 33.005142, 28.364506> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.814495, 32.759312, 28.493595>,  <39.987255, 32.611813, 28.571049>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.814495, 32.759312, 28.493595>,  <39.526566, 33.005142, 28.364506>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.814495, 32.759312, 28.493595> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357347, -0.070499, -0.931307,
		0.595107, 0.785704, 0.168869,
		0.719827, -0.614573, 0.322723,
		40.030441, 32.574940, 28.590412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.055695, 33.129326, 27.869244>,  <39.526566, 33.005142, 28.364506>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.055695, 33.129326, 27.869244> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.135067, 32.778278, 28.043785>,  <40.182690, 32.567650, 28.148510>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.135067, 32.778278, 28.043785>,  <40.055695, 33.129326, 27.869244>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.135067, 32.778278, 28.043785> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494846, -0.294587, -0.817524,
		0.846021, 0.378153, 0.375831,
		0.198435, -0.877621, 0.436354,
		40.194599, 32.514992, 28.174692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.713806, 33.065109, 27.740709>,  <40.055695, 33.129326, 27.869244>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.713806, 33.065109, 27.740709> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.571175, 32.701054, 27.825090>,  <40.485596, 32.482620, 27.875719>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.571175, 32.701054, 27.825090>,  <40.713806, 33.065109, 27.740709>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.571175, 32.701054, 27.825090> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156253, -0.280709, -0.946988,
		0.921107, -0.304710, 0.242306,
		-0.356575, -0.910139, 0.210951,
		40.464203, 32.428013, 27.888376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.180286, 32.605827, 27.394566>,  <40.713806, 33.065109, 27.740709>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.180286, 32.605827, 27.394566> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.850338, 32.381332, 27.421667>,  <40.652367, 32.246635, 27.437927>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.850338, 32.381332, 27.421667>,  <41.180286, 32.605827, 27.394566>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.850338, 32.381332, 27.421667> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205375, -0.409173, -0.889044,
		0.526692, -0.719434, 0.452781,
		-0.824874, -0.561242, 0.067754,
		40.602875, 32.212959, 27.441994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.390957, 31.921518, 27.189150>,  <41.180286, 32.605827, 27.394566>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.390957, 31.921518, 27.189150> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.992241, 31.926311, 27.157492>,  <40.753010, 31.929188, 27.138496>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.992241, 31.926311, 27.157492>,  <41.390957, 31.921518, 27.189150>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.992241, 31.926311, 27.157492> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056426, -0.596144, -0.800892,
		-0.056778, -0.802788, 0.593556,
		-0.996791, 0.011981, -0.079146,
		40.693203, 31.929907, 27.133747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.190399, 31.196482, 27.059021>,  <41.390957, 31.921518, 27.189150>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.190399, 31.196482, 27.059021> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.877720, 31.415979, 26.940474>,  <40.690113, 31.547678, 26.869345>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.877720, 31.415979, 26.940474>,  <41.190399, 31.196482, 27.059021>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.877720, 31.415979, 26.940474> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027402, -0.444525, -0.895347,
		-0.623061, -0.708008, 0.332446,
		-0.781693, 0.548746, -0.296367,
		40.643211, 31.580603, 26.851562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<40.865818, 30.644730, 26.624887> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.644989, 30.971815, 26.559702>,  <40.512489, 31.168066, 26.520592>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.644989, 30.971815, 26.559702>,  <40.865818, 30.644730, 26.624887>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.644989, 30.971815, 26.559702> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344343, -0.401603, -0.848612,
		-0.759368, -0.412384, 0.503289,
		-0.552077, 0.817713, -0.162963,
		40.479366, 31.217129, 26.510813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.084541, 30.515427, 26.548742>,  <40.865818, 30.644730, 26.624887>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.084541, 30.515427, 26.548742> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.186180, 30.847355, 26.350014>,  <40.247162, 31.046513, 26.230776>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.186180, 30.847355, 26.350014>,  <40.084541, 30.515427, 26.548742>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.186180, 30.847355, 26.350014> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305117, -0.418674, -0.855345,
		-0.917789, 0.368931, 0.146808,
		0.254099, 0.829820, -0.496822,
		40.262409, 31.096300, 26.200968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.505627, 30.814445, 26.288824>,  <40.084541, 30.515427, 26.548742>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.505627, 30.814445, 26.288824> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.807785, 30.952507, 26.066027>,  <39.989082, 31.035343, 25.932348>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.807785, 30.952507, 26.066027>,  <39.505627, 30.814445, 26.288824>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.807785, 30.952507, 26.066027> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537720, -0.159252, -0.827947,
		-0.374469, 0.924937, 0.065296,
		0.755400, 0.345152, -0.556993,
		40.034405, 31.056053, 25.898930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.149914, 30.863758, 25.704021>,  <39.505627, 30.814445, 26.288824>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.149914, 30.863758, 25.704021> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.525074, 30.923347, 25.578705>,  <39.750172, 30.959101, 25.503515>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.525074, 30.923347, 25.578705>,  <39.149914, 30.863758, 25.704021>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.525074, 30.923347, 25.578705> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296735, -0.123300, -0.946966,
		-0.179700, 0.981124, -0.071438,
		0.937900, 0.148972, -0.313291,
		39.806442, 30.968039, 25.484718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.093506, 31.411446, 25.294464>,  <39.149914, 30.863758, 25.704021>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.093506, 31.411446, 25.294464> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.418736, 31.194948, 25.208704>,  <39.613873, 31.065050, 25.157248>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.418736, 31.194948, 25.208704>,  <39.093506, 31.411446, 25.294464>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.418736, 31.194948, 25.208704> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451597, -0.353974, -0.819000,
		0.367387, 0.762730, -0.532231,
		0.813072, -0.541244, -0.214401,
		39.662659, 31.032576, 25.144384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.140770, 31.508354, 24.665476>,  <39.093506, 31.411446, 25.294464>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.140770, 31.508354, 24.665476> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.377594, 31.189753, 24.714542>,  <39.519688, 30.998592, 24.743982>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.377594, 31.189753, 24.714542>,  <39.140770, 31.508354, 24.665476>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.377594, 31.189753, 24.714542> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371897, -0.405069, -0.835232,
		0.714954, 0.448888, -0.536042,
		0.592059, -0.796504, 0.122666,
		39.555210, 30.950802, 24.751343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.777180, 31.442316, 24.055082>,  <39.140770, 31.508354, 24.665476>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.777180, 31.442316, 24.055082> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.698811, 31.085669, 24.218363>,  <39.651791, 30.871679, 24.316330>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.698811, 31.085669, 24.218363>,  <39.777180, 31.442316, 24.055082>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.698811, 31.085669, 24.218363> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005396, -0.415280, -0.909678,
		0.980604, -0.180429, 0.076552,
		-0.195923, -0.891621, 0.408199,
		39.640034, 30.818182, 24.340822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.178413, 31.023811, 23.621836>,  <39.777180, 31.442316, 24.055082>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.178413, 31.023811, 23.621836> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.926815, 30.778761, 23.813276>,  <39.775856, 30.631731, 23.928141>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.926815, 30.778761, 23.813276>,  <40.178413, 31.023811, 23.621836>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.926815, 30.778761, 23.813276> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009874, -0.609288, -0.792888,
		0.777350, -0.503445, 0.377188,
		-0.628992, -0.612626, 0.478601,
		39.738117, 30.594973, 23.956856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.368855, 30.420996, 23.538406>,  <40.178413, 31.023811, 23.621836>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.368855, 30.420996, 23.538406> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.986179, 30.338608, 23.620701>,  <39.756573, 30.289175, 23.670076>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.986179, 30.338608, 23.620701>,  <40.368855, 30.420996, 23.538406>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.986179, 30.338608, 23.620701> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006363, -0.691735, -0.722123,
		0.291051, -0.692155, 0.660463,
		-0.956686, -0.205972, 0.205735,
		39.699173, 30.276815, 23.682421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.236618, 29.672009, 23.647909>,  <40.368855, 30.420996, 23.538406>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.236618, 29.672009, 23.647909> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.889008, 29.836826, 23.538353>,  <39.680443, 29.935717, 23.472620>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.889008, 29.836826, 23.538353>,  <40.236618, 29.672009, 23.647909>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.889008, 29.836826, 23.538353> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100196, -0.688660, -0.718128,
		-0.484518, -0.596628, 0.639748,
		-0.869024, 0.412046, -0.273888,
		39.628300, 29.960440, 23.456186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.062908, 29.117771, 23.341892>,  <40.236618, 29.672009, 23.647909>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.062908, 29.117771, 23.341892> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.779247, 29.374949, 23.226151>,  <39.609051, 29.529255, 23.156706>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.779247, 29.374949, 23.226151>,  <40.062908, 29.117771, 23.341892>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.779247, 29.374949, 23.226151> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242132, -0.607525, -0.756496,
		-0.662179, -0.466405, 0.586503,
		-0.709148, 0.642947, -0.289358,
		39.566502, 29.567833, 23.139343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.464359, 28.746347, 23.164682>,  <40.062908, 29.117771, 23.341892>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.464359, 28.746347, 23.164682> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.428391, 29.095541, 22.972927>,  <39.406811, 29.305058, 22.857874>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.428391, 29.095541, 22.972927>,  <39.464359, 28.746347, 23.164682>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.428391, 29.095541, 22.972927> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284587, -0.483793, -0.827620,
		-0.954424, 0.062007, 0.291943,
		-0.089922, 0.872983, -0.479390,
		39.401413, 29.357435, 22.829109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.873348, 28.696037, 22.830622>,  <39.464359, 28.746347, 23.164682>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.873348, 28.696037, 22.830622> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.070541, 28.987980, 22.641188>,  <39.188858, 29.163145, 22.527527>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.070541, 28.987980, 22.641188>,  <38.873348, 28.696037, 22.830622>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.070541, 28.987980, 22.641188> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322778, -0.352059, -0.878561,
		-0.807952, 0.585975, 0.062023,
		0.492979, 0.729855, -0.473587,
		39.218433, 29.206936, 22.499111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.429291, 29.081291, 22.439432>,  <38.873348, 28.696037, 22.830622>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.429291, 29.081291, 22.439432> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.781925, 29.148378, 22.262943>,  <38.993507, 29.188631, 22.157049>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.781925, 29.148378, 22.262943>,  <38.429291, 29.081291, 22.439432>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.781925, 29.148378, 22.262943> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366960, -0.344417, -0.864128,
		-0.296896, 0.923714, -0.242087,
		0.881586, 0.167720, -0.441222,
		39.046402, 29.198694, 22.130577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.138077, 29.231243, 21.856464>,  <38.429291, 29.081291, 22.439432>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.138077, 29.231243, 21.856464> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.529491, 29.187130, 21.786840>,  <38.764339, 29.160662, 21.745066>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.529491, 29.187130, 21.786840>,  <38.138077, 29.231243, 21.856464>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.529491, 29.187130, 21.786840> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203076, -0.372978, -0.905344,
		0.034921, 0.921263, -0.387369,
		0.978540, -0.110281, -0.174062,
		38.823055, 29.154045, 21.734621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.338654, 29.604300, 21.226633>,  <38.138077, 29.231243, 21.856464>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.338654, 29.604300, 21.226633> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.612244, 29.324476, 21.309378>,  <38.776398, 29.156582, 21.359024>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.612244, 29.324476, 21.309378>,  <38.338654, 29.604300, 21.226633>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.612244, 29.324476, 21.309378> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139972, -0.152447, -0.978350,
		0.715948, 0.698125, -0.006352,
		0.683978, -0.699558, 0.206862,
		38.817436, 29.114609, 21.371437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.030949, 29.671877, 20.711924>,  <38.338654, 29.604300, 21.226633>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.030949, 29.671877, 20.711924> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.997547, 29.287474, 20.817366>,  <38.977509, 29.056831, 20.880630>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.997547, 29.287474, 20.817366>,  <39.030949, 29.671877, 20.711924>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.997547, 29.287474, 20.817366> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222235, -0.275826, -0.935164,
		0.971411, -0.019503, 0.236602,
		-0.083499, -0.961010, 0.263607,
		38.972496, 28.999170, 20.896448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.357418, 29.367935, 20.137445>,  <39.030949, 29.671877, 20.711924>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.357418, 29.367935, 20.137445> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.231735, 29.036032, 20.321957>,  <39.156326, 28.836889, 20.432663>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.231735, 29.036032, 20.321957>,  <39.357418, 29.367935, 20.137445>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.231735, 29.036032, 20.321957> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036600, -0.496109, -0.867488,
		0.948650, -0.255686, 0.186249,
		-0.314204, -0.829759, 0.461276,
		39.137474, 28.787104, 20.460339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.862728, 28.747416, 20.079359>,  <39.357418, 29.367935, 20.137445>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.862728, 28.747416, 20.079359> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.501144, 28.590420, 20.147251>,  <39.284195, 28.496222, 20.187986>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.501144, 28.590420, 20.147251>,  <39.862728, 28.747416, 20.079359>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.501144, 28.590420, 20.147251> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077453, -0.540636, -0.837683,
		0.420544, -0.744086, 0.519113,
		-0.903960, -0.392490, 0.169729,
		39.229958, 28.472673, 20.198170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.877186, 28.083364, 19.817535>,  <39.862728, 28.747416, 20.079359>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.877186, 28.083364, 19.817535> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.485062, 28.159575, 19.838314>,  <39.249786, 28.205301, 19.850782>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.485062, 28.159575, 19.838314>,  <39.877186, 28.083364, 19.817535>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.485062, 28.159575, 19.838314> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143299, -0.505291, -0.850968,
		-0.135883, -0.841654, 0.522642,
		-0.980307, 0.190526, 0.051948,
		39.190971, 28.216732, 19.853899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.542473, 27.455828, 19.734728>,  <39.877186, 28.083364, 19.817535>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.542473, 27.455828, 19.734728> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.253719, 27.716700, 19.642168>,  <39.080467, 27.873222, 19.586632>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.253719, 27.716700, 19.642168>,  <39.542473, 27.455828, 19.734728>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.253719, 27.716700, 19.642168> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199197, -0.516070, -0.833062,
		-0.662724, -0.555280, 0.502455,
		-0.721885, 0.652178, -0.231402,
		39.037155, 27.912354, 19.572748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.936573, 27.016176, 19.519300>,  <39.542473, 27.455828, 19.734728>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.936573, 27.016176, 19.519300> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.913738, 27.385952, 19.368486>,  <38.900040, 27.607817, 19.277998>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.913738, 27.385952, 19.368486>,  <38.936573, 27.016176, 19.519300>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.913738, 27.385952, 19.368486> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136567, -0.381332, -0.914295,
		-0.988985, -0.000700, 0.148015,
		-0.057083, 0.924438, -0.377036,
		38.896614, 27.663284, 19.255375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.324303, 27.166574, 19.033520>,  <38.936573, 27.016176, 19.519300>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.324303, 27.166574, 19.033520> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.584190, 27.441660, 18.903954>,  <38.740124, 27.606710, 18.826214>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.584190, 27.441660, 18.903954>,  <38.324303, 27.166574, 19.033520>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.584190, 27.441660, 18.903954> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211287, -0.245946, -0.945975,
		-0.730224, 0.683054, -0.014490,
		0.649715, 0.687712, -0.323916,
		38.779106, 27.647974, 18.806778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.562126, 27.009081, 19.045086>,  <38.324303, 27.166574, 19.033520>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.562126, 27.009081, 19.045086> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.284172, 27.233601, 18.865276>,  <37.117397, 27.368313, 18.757391>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.284172, 27.233601, 18.865276>,  <37.562126, 27.009081, 19.045086>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.284172, 27.233601, 18.865276> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416030, 0.196085, 0.887958,
		0.586556, 0.804048, 0.097261,
		-0.694889, 0.561301, -0.449523,
		37.075706, 27.401991, 18.730419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.524128, 27.815224, 19.194084>,  <37.562126, 27.009081, 19.045086>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.524128, 27.815224, 19.194084> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.163536, 27.658123, 19.121338>,  <36.947182, 27.563864, 19.077690>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.163536, 27.658123, 19.121338>,  <37.524128, 27.815224, 19.194084>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.163536, 27.658123, 19.121338> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321079, 0.325087, 0.889509,
		-0.290233, 0.860271, -0.419164,
		-0.901484, -0.392749, -0.181865,
		36.893089, 27.540298, 19.066778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.038654, 28.343550, 19.335684>,  <37.524128, 27.815224, 19.194084>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.038654, 28.343550, 19.335684> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.865715, 27.986784, 19.388697>,  <36.761951, 27.772724, 19.420504>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.865715, 27.986784, 19.388697>,  <37.038654, 28.343550, 19.335684>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.865715, 27.986784, 19.388697> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394864, 0.319411, 0.861428,
		-0.810651, 0.320108, -0.490282,
		-0.432351, -0.891912, 0.132532,
		36.736012, 27.719210, 19.428455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.348434, 28.522453, 19.498842>,  <37.038654, 28.343550, 19.335684>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.348434, 28.522453, 19.498842> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.412922, 28.148146, 19.624283>,  <36.451614, 27.923561, 19.699547>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.412922, 28.148146, 19.624283>,  <36.348434, 28.522453, 19.498842>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.412922, 28.148146, 19.624283> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413417, 0.224500, 0.882432,
		-0.896155, -0.271917, -0.350667,
		0.161223, -0.935768, 0.313601,
		36.461288, 27.867414, 19.718363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.649887, 28.430490, 19.876129>,  <36.348434, 28.522453, 19.498842>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.649887, 28.430490, 19.876129> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.909840, 28.153942, 20.002405>,  <36.065811, 27.988012, 20.078171>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.909840, 28.153942, 20.002405>,  <35.649887, 28.430490, 19.876129>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.909840, 28.153942, 20.002405> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283961, 0.164412, 0.944635,
		-0.704998, -0.703542, -0.089475,
		0.649880, -0.691373, 0.315689,
		36.104805, 27.946529, 20.097113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.388271, 28.085129, 20.441402>,  <35.649887, 28.430490, 19.876129>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.388271, 28.085129, 20.441402> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.781918, 28.030422, 20.486687>,  <36.018105, 27.997599, 20.513857>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.781918, 28.030422, 20.486687>,  <35.388271, 28.085129, 20.441402>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.781918, 28.030422, 20.486687> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119056, -0.035300, 0.992260,
		-0.131717, -0.989973, -0.051023,
		0.984112, -0.136772, 0.113213,
		36.077152, 27.989391, 20.520651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.490788, 27.615511, 21.043409>,  <35.388271, 28.085129, 20.441402>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.490788, 27.615511, 21.043409> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.842789, 27.800779, 21.001318>,  <36.053989, 27.911940, 20.976063>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.842789, 27.800779, 21.001318>,  <35.490788, 27.615511, 21.043409>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.842789, 27.800779, 21.001318> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174676, -0.109564, 0.978511,
		0.441687, -0.879472, -0.177321,
		0.880001, 0.463169, -0.105229,
		36.106789, 27.939730, 20.969749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.922916, 27.259052, 21.561838>,  <35.490788, 27.615511, 21.043409>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.922916, 27.259052, 21.561838> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.121365, 27.596762, 21.480776>,  <36.240433, 27.799387, 21.432138>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.121365, 27.596762, 21.480776>,  <35.922916, 27.259052, 21.561838>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.121365, 27.596762, 21.480776> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301232, 0.051541, 0.952157,
		0.814325, -0.533430, -0.228752,
		0.496119, 0.844272, -0.202658,
		36.270199, 27.850044, 21.419979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.627789, 27.206970, 21.874521>,  <35.922916, 27.259052, 21.561838>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.627789, 27.206970, 21.874521> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.535378, 27.592609, 21.822147>,  <36.479931, 27.823994, 21.790722>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.535378, 27.592609, 21.822147>,  <36.627789, 27.206970, 21.874521>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.535378, 27.592609, 21.822147> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119271, 0.161625, 0.979618,
		0.965610, 0.210699, -0.152328,
		-0.231024, 0.964097, -0.130937,
		36.466072, 27.881838, 21.782866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.205345, 27.558453, 22.195395>,  <36.627789, 27.206970, 21.874521>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.205345, 27.558453, 22.195395> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.898380, 27.813175, 22.165577>,  <36.714203, 27.966009, 22.147686>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.898380, 27.813175, 22.165577>,  <37.205345, 27.558453, 22.195395>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.898380, 27.813175, 22.165577> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251312, 0.405724, 0.878766,
		0.589849, 0.655641, -0.471395,
		-0.767412, 0.636806, -0.074546,
		36.668156, 28.004217, 22.143213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.583588, 28.061687, 22.627026>,  <37.205345, 27.558453, 22.195395>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.583588, 28.061687, 22.627026> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.212276, 28.193697, 22.558458>,  <36.989491, 28.272903, 22.517319>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.212276, 28.193697, 22.558458>,  <37.583588, 28.061687, 22.627026>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.212276, 28.193697, 22.558458> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108394, 0.681033, 0.724186,
		0.355740, 0.653665, -0.667960,
		-0.928278, 0.330025, -0.171417,
		36.933792, 28.292704, 22.507032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.646908, 28.857016, 22.538534>,  <37.583588, 28.061687, 22.627026>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.646908, 28.857016, 22.538534> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.281689, 28.741644, 22.653881>,  <37.062557, 28.672421, 22.723089>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.281689, 28.741644, 22.653881>,  <37.646908, 28.857016, 22.538534>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.281689, 28.741644, 22.653881> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113148, 0.500148, 0.858516,
		-0.391848, 0.816492, -0.424023,
		-0.913046, -0.288430, 0.288366,
		37.007774, 28.655115, 22.740391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.348442, 29.474279, 22.737062>,  <37.646908, 28.857016, 22.538534>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.348442, 29.474279, 22.737062> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.148331, 29.177652, 22.915857>,  <37.028263, 28.999676, 23.023134>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.148331, 29.177652, 22.915857>,  <37.348442, 29.474279, 22.737062>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.148331, 29.177652, 22.915857> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111198, 0.456931, 0.882525,
		-0.858692, 0.491215, -0.146134,
		-0.500283, -0.741567, 0.446985,
		36.998245, 28.955183, 23.049953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.051136, 29.834339, 23.165684>,  <37.348442, 29.474279, 22.737062>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.051136, 29.834339, 23.165684> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.003483, 29.476128, 23.337189>,  <36.974892, 29.261200, 23.440092>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.003483, 29.476128, 23.337189>,  <37.051136, 29.834339, 23.165684>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.003483, 29.476128, 23.337189> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076314, 0.438818, 0.895329,
		-0.989941, 0.073942, -0.120619,
		-0.119133, -0.895528, 0.428761,
		36.967743, 29.207470, 23.465816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.599182, 29.875528, 23.684879>,  <37.051136, 29.834339, 23.165684>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.599182, 29.875528, 23.684879> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.787342, 29.537817, 23.787577>,  <36.900238, 29.335190, 23.849195>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.787342, 29.537817, 23.787577>,  <36.599182, 29.875528, 23.684879>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.787342, 29.537817, 23.787577> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019194, 0.281088, 0.959490,
		-0.882245, -0.456272, 0.116019,
		0.470400, -0.844278, 0.256746,
		36.928463, 29.284534, 23.864601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.314011, 29.686440, 24.211164>,  <36.599182, 29.875528, 23.684879>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.314011, 29.686440, 24.211164> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.674000, 29.512482, 24.223246>,  <36.889992, 29.408106, 24.230495>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.674000, 29.512482, 24.223246>,  <36.314011, 29.686440, 24.211164>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.674000, 29.512482, 24.223246> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054062, 0.180087, 0.982164,
		-0.432579, -0.882289, 0.185584,
		0.899974, -0.434897, 0.030204,
		36.943993, 29.382013, 24.232307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.260254, 29.222631, 24.780674>,  <36.314011, 29.686440, 24.211164>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.260254, 29.222631, 24.780674> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.654858, 29.258511, 24.725904>,  <36.891621, 29.280037, 24.693043>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.654858, 29.258511, 24.725904>,  <36.260254, 29.222631, 24.780674>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.654858, 29.258511, 24.725904> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135397, 0.022929, 0.990526,
		0.091988, -0.995705, 0.010475,
		0.986512, 0.089698, -0.136924,
		36.950809, 29.285419, 24.684828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.551441, 28.770113, 25.219532>,  <36.260254, 29.222631, 24.780674>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.551441, 28.770113, 25.219532> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.851723, 29.027571, 25.159986>,  <37.031891, 29.182045, 25.124260>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.851723, 29.027571, 25.159986>,  <36.551441, 28.770113, 25.219532>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.851723, 29.027571, 25.159986> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142206, 0.062614, 0.987855,
		0.645149, -0.762758, -0.044526,
		0.750707, 0.643645, -0.148864,
		37.076935, 29.220665, 25.115328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.056892, 28.481344, 25.635002>,  <36.551441, 28.770113, 25.219532>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.056892, 28.481344, 25.635002> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.149014, 28.860151, 25.545452>,  <37.204285, 29.087435, 25.491722>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.149014, 28.860151, 25.545452>,  <37.056892, 28.481344, 25.635002>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.149014, 28.860151, 25.545452> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263337, 0.160825, 0.951204,
		0.936811, -0.278019, -0.212346,
		0.230302, 0.947017, -0.223875,
		37.218105, 29.144257, 25.478289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.748947, 28.598770, 25.948408>,  <37.056892, 28.481344, 25.635002>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.748947, 28.598770, 25.948408> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.578686, 28.956799, 25.895247>,  <37.476528, 29.171616, 25.863350>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.578686, 28.956799, 25.895247>,  <37.748947, 28.598770, 25.948408>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.578686, 28.956799, 25.895247> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162056, 0.219905, 0.961967,
		0.890257, 0.387926, -0.238656,
		-0.425654, 0.895073, -0.132906,
		37.450989, 29.225321, 25.855375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.088242, 28.995960, 26.431339>,  <37.748947, 28.598770, 25.948408>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.088242, 28.995960, 26.431339> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.779678, 29.232260, 26.336733>,  <37.594540, 29.374041, 26.279970>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.779678, 29.232260, 26.336733>,  <38.088242, 28.995960, 26.431339>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.779678, 29.232260, 26.336733> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082948, 0.275157, 0.957814,
		0.630907, 0.758487, -0.163257,
		-0.771411, 0.590750, -0.236514,
		37.548256, 29.409485, 26.265779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<41.118057, 32.568722, 29.313747> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.730469, 32.573494, 29.214994>,  <40.497917, 32.576359, 29.155743>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.730469, 32.573494, 29.214994>,  <41.118057, 32.568722, 29.313747>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.730469, 32.573494, 29.214994> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216049, 0.444292, 0.869441,
		0.120063, 0.895802, -0.427929,
		-0.968972, 0.011934, -0.246880,
		40.439777, 32.577072, 29.140930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.895905, 33.280689, 29.447945>,  <41.118057, 32.568722, 29.313747>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.895905, 33.280689, 29.447945> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.573895, 33.046490, 29.409742>,  <40.380688, 32.905968, 29.386822>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.573895, 33.046490, 29.409742>,  <40.895905, 33.280689, 29.447945>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.573895, 33.046490, 29.409742> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349940, 0.338674, 0.873408,
		-0.479038, 0.736537, -0.477532,
		-0.805025, -0.585503, -0.095506,
		40.332386, 32.870838, 29.381090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.285015, 33.667355, 29.730501>,  <40.895905, 33.280689, 29.447945>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.285015, 33.667355, 29.730501> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.150318, 33.290741, 29.734892>,  <40.069500, 33.064774, 29.737526>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.150318, 33.290741, 29.734892>,  <40.285015, 33.667355, 29.730501>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.150318, 33.290741, 29.734892> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525432, 0.197572, 0.827579,
		-0.781361, 0.272914, -0.561242,
		-0.336744, -0.941533, 0.010977,
		40.049294, 33.008282, 29.738186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.522335, 33.829086, 29.757332>,  <40.285015, 33.667355, 29.730501>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.522335, 33.829086, 29.757332> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.631874, 33.468418, 29.891191>,  <39.697598, 33.252018, 29.971508>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.631874, 33.468418, 29.891191>,  <39.522335, 33.829086, 29.757332>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.631874, 33.468418, 29.891191> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329060, 0.239114, 0.913534,
		-0.903730, -0.360288, -0.231225,
		0.273846, -0.901675, 0.334651,
		39.714027, 33.197914, 29.991587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.060970, 33.606529, 30.192219>,  <39.522335, 33.829086, 29.757332>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.060970, 33.606529, 30.192219> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.352531, 33.360111, 30.311680>,  <39.527466, 33.212261, 30.383356>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.352531, 33.360111, 30.311680>,  <39.060970, 33.606529, 30.192219>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.352531, 33.360111, 30.311680> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346809, 0.043861, 0.936910,
		-0.590280, -0.786487, -0.181681,
		0.728899, -0.616048, 0.298651,
		39.571201, 33.175297, 30.401276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.805031, 33.176964, 30.774918>,  <39.060970, 33.606529, 30.192219>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.805031, 33.176964, 30.774918> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.202751, 33.200603, 30.810408>,  <39.441383, 33.214787, 30.831701>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.202751, 33.200603, 30.810408>,  <38.805031, 33.176964, 30.774918>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.202751, 33.200603, 30.810408> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100601, 0.244698, 0.964366,
		0.035285, -0.967796, 0.249249,
		0.994301, 0.059102, 0.088728,
		39.501041, 33.218334, 30.837027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.874077, 32.873917, 31.446932>,  <38.805031, 33.176964, 30.774918>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.874077, 32.873917, 31.446932> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.227318, 33.054970, 31.397516>,  <39.439262, 33.163601, 31.367867>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.227318, 33.054970, 31.397516>,  <38.874077, 32.873917, 31.446932>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.227318, 33.054970, 31.397516> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073139, 0.127279, 0.989167,
		0.463450, -0.882568, 0.079295,
		0.883100, 0.452630, -0.123538,
		39.492249, 33.190758, 31.360455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.433002, 32.583080, 31.881910>,  <38.874077, 32.873917, 31.446932>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.433002, 32.583080, 31.881910> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.592468, 32.942371, 31.807882>,  <39.688148, 33.157948, 31.763466>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.592468, 32.942371, 31.807882>,  <39.433002, 32.583080, 31.881910>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.592468, 32.942371, 31.807882> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093189, 0.240433, 0.966182,
		0.912351, -0.367933, 0.179556,
		0.398661, 0.898230, -0.185072,
		39.712067, 33.211842, 31.752361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.064972, 32.708961, 32.320736>,  <39.433002, 32.583080, 31.881910>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.064972, 32.708961, 32.320736> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.975899, 33.077663, 32.193748>,  <39.922455, 33.298885, 32.117558>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.975899, 33.077663, 32.193748>,  <40.064972, 32.708961, 32.320736>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.975899, 33.077663, 32.193748> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118244, 0.348776, 0.929717,
		0.967694, 0.169490, -0.186657,
		-0.222679, 0.921753, -0.317468,
		39.909096, 33.354191, 32.098507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.501045, 33.120472, 32.708160>,  <40.064972, 32.708961, 32.320736>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.501045, 33.120472, 32.708160> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.205963, 33.362263, 32.587894>,  <40.028915, 33.507339, 32.515736>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.205963, 33.362263, 32.587894>,  <40.501045, 33.120472, 32.708160>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.205963, 33.362263, 32.587894> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047569, 0.490777, 0.869986,
		0.673447, 0.627489, -0.390802,
		-0.737703, 0.604480, -0.300663,
		39.984653, 33.543606, 32.497696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.509357, 33.699100, 33.215832>,  <40.501045, 33.120472, 32.708160>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.509357, 33.699100, 33.215832> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.179287, 33.836544, 33.036491>,  <39.981247, 33.919010, 32.928886>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.179287, 33.836544, 33.036491>,  <40.509357, 33.699100, 33.215832>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.179287, 33.836544, 33.036491> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275366, 0.448331, 0.850396,
		0.493217, 0.825185, -0.275331,
		-0.825173, 0.343613, -0.448352,
		39.931736, 33.939629, 32.901985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.410683, 34.443356, 33.424114>,  <40.509357, 33.699100, 33.215832>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.410683, 34.443356, 33.424114> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.053841, 34.303936, 33.309109>,  <39.839737, 34.220284, 33.240105>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.053841, 34.303936, 33.309109>,  <40.410683, 34.443356, 33.424114>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.053841, 34.303936, 33.309109> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440580, 0.529935, 0.724609,
		-0.100197, 0.773100, -0.626320,
		-0.892104, -0.348548, -0.287515,
		39.786209, 34.199371, 33.222855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.982044, 35.032097, 33.494850>,  <40.410683, 34.443356, 33.424114>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.982044, 35.032097, 33.494850> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.765541, 34.696033, 33.508572>,  <39.635639, 34.494396, 33.516804>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.765541, 34.696033, 33.508572>,  <39.982044, 35.032097, 33.494850>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.765541, 34.696033, 33.508572> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548345, 0.383604, 0.743078,
		-0.637460, 0.383389, -0.668324,
		-0.541260, -0.840155, 0.034303,
		39.603165, 34.443989, 33.518864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.203506, 35.140663, 33.357220>,  <39.982044, 35.032097, 33.494850>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.203506, 35.140663, 33.357220> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.240158, 34.817421, 33.589970>,  <39.262150, 34.623478, 33.729618>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.240158, 34.817421, 33.589970>,  <39.203506, 35.140663, 33.357220>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.240158, 34.817421, 33.589970> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.610663, 0.415961, 0.673845,
		-0.786572, -0.417073, -0.455363,
		0.091630, -0.808101, 0.581874,
		39.267647, 34.574989, 33.764530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.279049, 35.627399, 32.778503>,  <39.203506, 35.140663, 33.357220>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.279049, 35.627399, 32.778503> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.200867, 36.010162, 32.692604>,  <39.153957, 36.239822, 32.641064>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.200867, 36.010162, 32.692604>,  <39.279049, 35.627399, 32.778503>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.200867, 36.010162, 32.692604> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.623679, -0.290273, -0.725786,
		-0.756850, -0.007923, 0.653541,
		-0.195455, 0.956911, -0.214752,
		39.142231, 36.297237, 32.628178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.496319, 35.685116, 32.703667>,  <39.279049, 35.627399, 32.778503>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.496319, 35.685116, 32.703667> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.677254, 35.975391, 32.496296>,  <38.785816, 36.149555, 32.371876>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.677254, 35.975391, 32.496296>,  <38.496319, 35.685116, 32.703667>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.677254, 35.975391, 32.496296> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.562879, -0.218590, -0.797110,
		-0.691777, 0.652375, 0.309599,
		0.452339, 0.725690, -0.518424,
		38.812954, 36.193100, 32.340767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.991901, 36.164906, 32.478298>,  <38.496319, 35.685116, 32.703667>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.991901, 36.164906, 32.478298> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.308945, 36.200386, 32.237000>,  <38.499172, 36.221676, 32.092220>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.308945, 36.200386, 32.237000>,  <37.991901, 36.164906, 32.478298>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.308945, 36.200386, 32.237000> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583413, -0.177206, -0.792608,
		-0.177206, 0.980168, -0.088704,
		0.792608, 0.088704, -0.603245,
		38.546726, 36.226997, 32.056026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.631340, 36.396935, 31.984411>,  <37.991901, 36.164906, 32.478298>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.631340, 36.396935, 31.984411> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.994278, 36.321850, 31.833952>,  <38.212040, 36.276798, 31.743677>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.994278, 36.321850, 31.833952>,  <37.631340, 36.396935, 31.984411>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.994278, 36.321850, 31.833952> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418066, -0.309112, -0.854207,
		0.044070, 0.932317, -0.358946,
		0.907347, -0.187708, -0.376148,
		38.266483, 36.265537, 31.721107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.598904, 36.706284, 31.348509>,  <37.631340, 36.396935, 31.984411>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.598904, 36.706284, 31.348509> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.883209, 36.426441, 31.319241>,  <38.053795, 36.258533, 31.301680>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.883209, 36.426441, 31.319241>,  <37.598904, 36.706284, 31.348509>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.883209, 36.426441, 31.319241> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541205, -0.477438, -0.692206,
		0.449339, 0.531600, -0.717980,
		0.710768, -0.699610, -0.073173,
		38.096439, 36.216557, 31.297289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.715778, 36.755379, 30.681438>,  <37.598904, 36.706284, 31.348509>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.715778, 36.755379, 30.681438> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.817364, 36.387524, 30.801287>,  <37.878315, 36.166809, 30.873196>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.817364, 36.387524, 30.801287>,  <37.715778, 36.755379, 30.681438>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.817364, 36.387524, 30.801287> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346719, -0.375749, -0.859418,
		0.902934, 0.114373, -0.414280,
		0.253959, -0.919637, 0.299621,
		37.893551, 36.111633, 30.891172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.156971, 36.520443, 30.101131>,  <37.715778, 36.755379, 30.681438>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.156971, 36.520443, 30.101131> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.074310, 36.178738, 30.291931>,  <38.024715, 35.973713, 30.406410>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.074310, 36.178738, 30.291931>,  <38.156971, 36.520443, 30.101131>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.074310, 36.178738, 30.291931> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072105, -0.472898, -0.878162,
		0.975755, -0.215863, 0.036126,
		-0.206647, -0.854266, 0.476997,
		38.012318, 35.922459, 30.435030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.593567, 36.044964, 29.840723>,  <38.156971, 36.520443, 30.101131>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.593567, 36.044964, 29.840723> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.290340, 35.823761, 29.979008>,  <38.108406, 35.691040, 30.061979>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.290340, 35.823761, 29.979008>,  <38.593567, 36.044964, 29.840723>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.290340, 35.823761, 29.979008> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000003, -0.530088, -0.847943,
		0.652179, -0.642797, 0.401839,
		-0.758065, -0.553009, 0.345714,
		38.062920, 35.657860, 30.082722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.775692, 35.386848, 29.674303>,  <38.593567, 36.044964, 29.840723>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.775692, 35.386848, 29.674303> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.379971, 35.381550, 29.732418>,  <38.142540, 35.378368, 29.767286>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.379971, 35.381550, 29.732418>,  <38.775692, 35.386848, 29.674303>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.379971, 35.381550, 29.732418> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114773, -0.544092, -0.831139,
		0.090061, -0.838921, 0.536750,
		-0.989300, -0.013249, 0.145287,
		38.083179, 35.377575, 29.776005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.591366, 34.777843, 29.334642>,  <38.775692, 35.386848, 29.674303>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.591366, 34.777843, 29.334642> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.244099, 34.966251, 29.397150>,  <38.035736, 35.079296, 29.434654>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.244099, 34.966251, 29.397150>,  <38.591366, 34.777843, 29.334642>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.244099, 34.966251, 29.397150> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363877, -0.390067, -0.845837,
		-0.337447, -0.791196, 0.510037,
		-0.868172, 0.471016, 0.156272,
		37.983646, 35.107555, 29.444031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.120918, 34.280216, 29.251760>,  <38.591366, 34.777843, 29.334642>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.120918, 34.280216, 29.251760> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.930012, 34.625771, 29.187353>,  <37.815468, 34.833103, 29.148708>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.930012, 34.625771, 29.187353>,  <38.120918, 34.280216, 29.251760>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.930012, 34.625771, 29.187353> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270738, -0.318870, -0.908308,
		-0.836016, -0.389907, 0.386070,
		-0.477261, 0.863884, -0.161017,
		37.786835, 34.884937, 29.139048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.452995, 34.098656, 28.928774>,  <38.120918, 34.280216, 29.251760>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.452995, 34.098656, 28.928774> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.571827, 34.472870, 28.852329>,  <37.643127, 34.697399, 28.806463>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.571827, 34.472870, 28.852329>,  <37.452995, 34.098656, 28.928774>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.571827, 34.472870, 28.852329> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207051, -0.132270, -0.969347,
		-0.932133, 0.327547, 0.154407,
		0.297083, 0.935531, -0.191112,
		37.660954, 34.753529, 28.794996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.003014, 34.288300, 28.522938>,  <37.452995, 34.098656, 28.928774>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.003014, 34.288300, 28.522938> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.280422, 34.570518, 28.464647>,  <37.446869, 34.739849, 28.429672>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.280422, 34.570518, 28.464647>,  <37.003014, 34.288300, 28.522938>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.280422, 34.570518, 28.464647> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236761, 0.032162, -0.971035,
		-0.680422, 0.707935, 0.189351,
		0.693520, 0.705545, -0.145728,
		37.488480, 34.782181, 28.420929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.687725, 34.753685, 28.072739>,  <37.003014, 34.288300, 28.522938>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.687725, 34.753685, 28.072739> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.080162, 34.811234, 28.020960>,  <37.315624, 34.845760, 27.989893>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.080162, 34.811234, 28.020960>,  <36.687725, 34.753685, 28.072739>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.080162, 34.811234, 28.020960> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115745, -0.099867, -0.988246,
		-0.155103, 0.984545, -0.081327,
		0.981094, 0.143867, -0.129446,
		37.374489, 34.854393, 27.982126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.191715, 35.249207, 28.083780>,  <36.687725, 34.753685, 28.072739>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.191715, 35.249207, 28.083780> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.797955, 35.191540, 28.043442>,  <35.561699, 35.156940, 28.019238>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.797955, 35.191540, 28.043442>,  <36.191715, 35.249207, 28.083780>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.797955, 35.191540, 28.043442> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143045, 0.322103, 0.935835,
		-0.102433, 0.935663, -0.337701,
		-0.984401, -0.144167, -0.100848,
		35.502636, 35.148289, 28.013187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.771252, 35.867584, 28.226145>,  <36.191715, 35.249207, 28.083780>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.771252, 35.867584, 28.226145> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.539276, 35.548992, 28.294598>,  <35.400093, 35.357838, 28.335670>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.539276, 35.548992, 28.294598>,  <35.771252, 35.867584, 28.226145>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.539276, 35.548992, 28.294598> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202664, 0.344517, 0.916644,
		-0.789050, 0.496913, -0.361216,
		-0.579937, -0.796484, 0.171134,
		35.365295, 35.310047, 28.345938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.234165, 36.159706, 28.665346>,  <35.771252, 35.867584, 28.226145>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.234165, 36.159706, 28.665346> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.248901, 35.764641, 28.726233>,  <35.257744, 35.527603, 28.762764>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.248901, 35.764641, 28.726233>,  <35.234165, 36.159706, 28.665346>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.248901, 35.764641, 28.726233> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123531, 0.146650, 0.981445,
		-0.991657, -0.054959, -0.116604,
		0.036839, -0.987661, 0.152215,
		35.259953, 35.468342, 28.771896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.949272, 36.100727, 29.305742>,  <35.234165, 36.159706, 28.665346>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.949272, 36.100727, 29.305742> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.028805, 35.711372, 29.260160>,  <35.076523, 35.477760, 29.232811>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.028805, 35.711372, 29.260160>,  <34.949272, 36.100727, 29.305742>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.028805, 35.711372, 29.260160> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253573, -0.163411, 0.953414,
		-0.946661, -0.160674, -0.279316,
		0.198832, -0.973386, -0.113952,
		35.088455, 35.419357, 29.225975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.326744, 35.655525, 29.529100>,  <34.949272, 36.100727, 29.305742>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.326744, 35.655525, 29.529100> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.657242, 35.439606, 29.593513>,  <34.855541, 35.310055, 29.632162>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.657242, 35.439606, 29.593513>,  <34.326744, 35.655525, 29.529100>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.657242, 35.439606, 29.593513> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324657, -0.222714, 0.919237,
		-0.460338, -0.811799, -0.359266,
		0.826248, -0.539798, 0.161033,
		34.905117, 35.277668, 29.641823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.068577, 35.115757, 29.909414>,  <34.326744, 35.655525, 29.529100>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.068577, 35.115757, 29.909414> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.462345, 35.100311, 29.978022>,  <34.698608, 35.091045, 30.019186>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.462345, 35.100311, 29.978022>,  <34.068577, 35.115757, 29.909414>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.462345, 35.100311, 29.978022> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175455, -0.277757, 0.944493,
		0.011171, -0.959875, -0.280206,
		0.984424, -0.038612, 0.171517,
		34.757671, 35.088726, 30.029476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.148975, 34.496601, 30.322598>,  <34.068577, 35.115757, 29.909414>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.148975, 34.496601, 30.322598> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.489216, 34.699623, 30.377529>,  <34.693359, 34.821438, 30.410488>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.489216, 34.699623, 30.377529>,  <34.148975, 34.496601, 30.322598>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.489216, 34.699623, 30.377529> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071242, -0.147521, 0.986490,
		0.520958, -0.848896, -0.089323,
		0.850604, 0.507556, 0.137329,
		34.744396, 34.851891, 30.418728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.533279, 34.086628, 30.813967>,  <34.148975, 34.496601, 30.322598>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.533279, 34.086628, 30.813967> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.666538, 34.460732, 30.861794>,  <34.746494, 34.685196, 30.890490>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.666538, 34.460732, 30.861794>,  <34.533279, 34.086628, 30.813967>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.666538, 34.460732, 30.861794> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003612, -0.125547, 0.992081,
		0.942867, -0.330944, -0.038448,
		0.333150, 0.935262, 0.119569,
		34.766483, 34.741310, 30.897665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.031261, 33.959785, 31.244701>,  <34.533279, 34.086628, 30.813967>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.031261, 33.959785, 31.244701> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.984287, 34.356594, 31.263063>,  <34.956100, 34.594677, 31.274080>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.984287, 34.356594, 31.263063>,  <35.031261, 33.959785, 31.244701>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.984287, 34.356594, 31.263063> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228009, -0.018053, 0.973492,
		0.966551, 0.124791, -0.224069,
		-0.117438, 0.992019, 0.045903,
		34.949055, 34.654202, 31.276834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.652832, 34.223087, 31.523495>,  <35.031261, 33.959785, 31.244701>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.652832, 34.223087, 31.523495> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.372543, 34.497856, 31.600569>,  <35.204369, 34.662716, 31.646812>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.372543, 34.497856, 31.600569>,  <35.652832, 34.223087, 31.523495>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.372543, 34.497856, 31.600569> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255497, -0.010546, 0.966752,
		0.666114, 0.726656, -0.168117,
		-0.700723, 0.686921, 0.192683,
		35.162327, 34.703934, 31.658373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.947166, 34.595039, 32.041046>,  <35.652832, 34.223087, 31.523495>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.947166, 34.595039, 32.041046> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.562046, 34.694164, 32.084122>,  <35.330975, 34.753639, 32.109966>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.562046, 34.694164, 32.084122>,  <35.947166, 34.595039, 32.041046>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.562046, 34.694164, 32.084122> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130592, 0.077876, 0.988373,
		0.236541, 0.965674, -0.107342,
		-0.962805, 0.247808, 0.107688,
		35.273205, 34.768505, 32.116428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.920952, 35.271046, 32.402275>,  <35.947166, 34.595039, 32.041046>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.920952, 35.271046, 32.402275> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.566727, 35.097759, 32.469337>,  <35.354191, 34.993786, 32.509575>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.566727, 35.097759, 32.469337>,  <35.920952, 35.271046, 32.402275>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.566727, 35.097759, 32.469337> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089948, 0.194169, 0.976836,
		-0.455735, 0.880126, -0.132981,
		-0.885559, -0.433217, 0.167655,
		35.301060, 34.967793, 32.519634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<35.336205, 35.497192, 24.070007> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.182674, 35.174828, 24.250311>,  <35.090557, 34.981407, 24.358494>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.182674, 35.174828, 24.250311>,  <35.336205, 35.497192, 24.070007>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.182674, 35.174828, 24.250311> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172525, 0.416965, 0.892399,
		-0.907147, 0.420290, -0.021001,
		-0.383823, -0.805913, 0.450759,
		35.067528, 34.933052, 24.385538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.907310, 35.793045, 24.506563>,  <35.336205, 35.497192, 24.070007>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.907310, 35.793045, 24.506563> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.995834, 35.425049, 24.635952>,  <35.048950, 35.204250, 24.713585>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.995834, 35.425049, 24.635952>,  <34.907310, 35.793045, 24.506563>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.995834, 35.425049, 24.635952> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141258, 0.358442, 0.922803,
		-0.964918, -0.158536, 0.209284,
		0.221314, -0.919992, 0.323472,
		35.062229, 35.149052, 24.732994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.748325, 35.823925, 25.150219>,  <34.907310, 35.793045, 24.506563>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.748325, 35.823925, 25.150219> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.952702, 35.480110, 25.155018>,  <35.075325, 35.273823, 25.157898>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.952702, 35.480110, 25.155018>,  <34.748325, 35.823925, 25.150219>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.952702, 35.480110, 25.155018> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197040, 0.130690, 0.971646,
		-0.836730, -0.494086, 0.236137,
		0.510937, -0.859534, 0.011997,
		35.105984, 35.222248, 25.158617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.329651, 35.388855, 25.627428>,  <34.748325, 35.823925, 25.150219>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.329651, 35.388855, 25.627428> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.707947, 35.261227, 25.602846>,  <34.934925, 35.184650, 25.588097>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.707947, 35.261227, 25.602846>,  <34.329651, 35.388855, 25.627428>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.707947, 35.261227, 25.602846> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034679, -0.088935, 0.995434,
		-0.323077, -0.943549, -0.073044,
		0.945737, -0.319069, -0.061454,
		34.991669, 35.165504, 25.584410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.325447, 34.781559, 25.974337>,  <34.329651, 35.388855, 25.627428>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.325447, 34.781559, 25.974337> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.690567, 34.944874, 25.978516>,  <34.909637, 35.042862, 25.981024>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.690567, 34.944874, 25.978516>,  <34.325447, 34.781559, 25.974337>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.690567, 34.944874, 25.978516> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117963, -0.288047, 0.950323,
		0.391010, -0.866218, -0.311091,
		0.912795, 0.408284, 0.010448,
		34.964405, 35.067360, 25.981649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.633781, 34.301514, 26.447725>,  <34.325447, 34.781559, 25.974337>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.633781, 34.301514, 26.447725> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.882736, 34.612606, 26.412476>,  <35.032108, 34.799263, 26.391327>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.882736, 34.612606, 26.412476>,  <34.633781, 34.301514, 26.447725>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.882736, 34.612606, 26.412476> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240286, -0.082704, 0.967172,
		0.744911, -0.623134, -0.238352,
		0.622391, 0.777730, -0.088123,
		35.069454, 34.845924, 26.386038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.141869, 34.040241, 26.823015>,  <34.633781, 34.301514, 26.447725>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.141869, 34.040241, 26.823015> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.172081, 34.438633, 26.803783>,  <35.190208, 34.677670, 26.792244>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.172081, 34.438633, 26.803783>,  <35.141869, 34.040241, 26.823015>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.172081, 34.438633, 26.803783> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092711, 0.040995, 0.994849,
		0.992824, -0.079596, -0.089242,
		0.075528, 0.995984, -0.048080,
		35.194740, 34.737427, 26.789360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.810482, 34.334671, 27.183807>,  <35.141869, 34.040241, 26.823015>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.810482, 34.334671, 27.183807> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.602486, 34.676311, 27.179375>,  <35.477688, 34.881294, 27.176714>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.602486, 34.676311, 27.179375>,  <35.810482, 34.334671, 27.183807>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.602486, 34.676311, 27.179375> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231459, 0.153382, 0.960677,
		0.822214, 0.496979, -0.277446,
		-0.519991, 0.854100, -0.011083,
		35.446487, 34.932541, 27.176050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.177940, 34.767487, 27.538855>,  <35.810482, 34.334671, 27.183807>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.177940, 34.767487, 27.538855> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.800171, 34.896164, 27.565899>,  <35.573509, 34.973370, 27.582127>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.800171, 34.896164, 27.565899>,  <36.177940, 34.767487, 27.538855>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.800171, 34.896164, 27.565899> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111517, 0.120058, 0.986484,
		0.309229, 0.939201, -0.149260,
		-0.944426, 0.321695, 0.067612,
		35.516842, 34.992672, 27.586182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.749073, 35.323570, 27.592943>,  <36.177940, 34.767487, 27.538855>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.749073, 35.323570, 27.592943> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.114208, 35.163147, 27.562258>,  <37.333290, 35.066895, 27.543846>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.114208, 35.163147, 27.562258>,  <36.749073, 35.323570, 27.592943>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.114208, 35.163147, 27.562258> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001363, 0.184882, -0.982760,
		0.408326, 0.897202, 0.168220,
		0.912835, -0.401057, -0.076715,
		37.388058, 35.042831, 27.539244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.006035, 35.604256, 26.976933>,  <36.749073, 35.323570, 27.592943>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.006035, 35.604256, 26.976933> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.251614, 35.298393, 27.055281>,  <37.398960, 35.114876, 27.102289>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.251614, 35.298393, 27.055281>,  <37.006035, 35.604256, 26.976933>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.251614, 35.298393, 27.055281> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161772, -0.120987, -0.979383,
		0.772592, 0.632976, 0.049421,
		0.613947, -0.764659, 0.195872,
		37.435799, 35.068996, 27.114042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.593914, 35.704926, 26.525496>,  <37.006035, 35.604256, 26.976933>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.593914, 35.704926, 26.525496> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.580360, 35.316990, 26.622044>,  <37.572227, 35.084229, 26.679974>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.580360, 35.316990, 26.622044>,  <37.593914, 35.704926, 26.525496>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.580360, 35.316990, 26.622044> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261348, -0.241705, -0.934492,
		0.964650, 0.031416, 0.261656,
		-0.033886, -0.969841, 0.241371,
		37.570194, 35.026039, 26.694454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.269382, 35.423721, 26.313931>,  <37.593914, 35.704926, 26.525496>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.269382, 35.423721, 26.313931> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.005413, 35.123898, 26.334560>,  <37.847031, 34.944004, 26.346939>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.005413, 35.123898, 26.334560>,  <38.269382, 35.423721, 26.313931>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.005413, 35.123898, 26.334560> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265695, -0.297029, -0.917159,
		0.702786, -0.591550, 0.395171,
		-0.659922, -0.749561, 0.051576,
		37.807438, 34.899029, 26.350033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.646492, 34.837044, 26.071737>,  <38.269382, 35.423721, 26.313931>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.646492, 34.837044, 26.071737> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.271488, 34.697868, 26.069740>,  <38.046486, 34.614365, 26.068542>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.271488, 34.697868, 26.069740>,  <38.646492, 34.837044, 26.071737>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.271488, 34.697868, 26.069740> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175998, -0.461747, -0.869376,
		0.300181, -0.815923, 0.494126,
		-0.937505, -0.347936, -0.004993,
		37.990238, 34.593487, 26.068243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.760181, 34.096077, 26.011353>,  <38.646492, 34.837044, 26.071737>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.760181, 34.096077, 26.011353> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.401512, 34.212440, 25.877878>,  <38.186310, 34.282257, 25.797794>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.401512, 34.212440, 25.877878>,  <38.760181, 34.096077, 26.011353>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.401512, 34.212440, 25.877878> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146594, -0.516119, -0.843879,
		-0.417709, -0.805603, 0.420147,
		-0.896677, 0.290904, -0.333684,
		38.132511, 34.299713, 25.777773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.352962, 33.578308, 25.793945>,  <38.760181, 34.096077, 26.011353>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.352962, 33.578308, 25.793945> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.197735, 33.885567, 25.590239>,  <38.104599, 34.069920, 25.468014>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.197735, 33.885567, 25.590239>,  <38.352962, 33.578308, 25.793945>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.197735, 33.885567, 25.590239> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144685, -0.494946, -0.856793,
		-0.910202, -0.406180, 0.080935,
		-0.388071, 0.768145, -0.509269,
		38.081314, 34.116009, 25.437458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.032646, 33.241653, 25.127590>,  <38.352962, 33.578308, 25.793945>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.032646, 33.241653, 25.127590> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.035988, 33.628269, 25.025036>,  <38.037994, 33.860237, 24.963503>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.035988, 33.628269, 25.025036>,  <38.032646, 33.241653, 25.127590>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.035988, 33.628269, 25.025036> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242102, -0.250721, -0.937297,
		-0.970215, -0.054238, -0.236096,
		0.008357, 0.966539, -0.256385,
		38.038494, 33.918232, 24.948120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.644699, 33.293625, 24.485592>,  <38.032646, 33.241653, 25.127590>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.644699, 33.293625, 24.485592> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.872459, 33.622448, 24.485619>,  <38.009117, 33.819740, 24.485636>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.872459, 33.622448, 24.485619>,  <37.644699, 33.293625, 24.485592>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.872459, 33.622448, 24.485619> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245115, -0.169701, -0.954526,
		-0.784665, 0.543527, -0.298127,
		0.569403, 0.822058, 0.000068,
		38.043282, 33.869064, 24.485640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.405556, 33.595959, 23.917953>,  <37.644699, 33.293625, 24.485592>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.405556, 33.595959, 23.917953> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.766354, 33.749813, 23.996407>,  <37.982830, 33.842125, 24.043478>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.766354, 33.749813, 23.996407>,  <37.405556, 33.595959, 23.917953>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.766354, 33.749813, 23.996407> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299383, -0.229872, -0.926028,
		-0.311101, 0.893987, -0.322497,
		0.901990, 0.384638, 0.196131,
		38.036949, 33.865204, 24.055246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.616913, 34.114323, 23.363953>,  <37.405556, 33.595959, 23.917953>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.616913, 34.114323, 23.363953> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.961185, 34.001232, 23.533321>,  <38.167751, 33.933376, 23.634943>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.961185, 34.001232, 23.533321>,  <37.616913, 34.114323, 23.363953>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.961185, 34.001232, 23.533321> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407499, -0.116043, -0.905803,
		0.305232, 0.952155, 0.015335,
		0.860685, -0.282729, 0.423422,
		38.219391, 33.916412, 23.660349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.075111, 34.439190, 22.952442>,  <37.616913, 34.114323, 23.363953>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.075111, 34.439190, 22.952442> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.278088, 34.135529, 23.115507>,  <38.399876, 33.953331, 23.213346>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.278088, 34.135529, 23.115507>,  <38.075111, 34.439190, 22.952442>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.278088, 34.135529, 23.115507> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392769, -0.217318, -0.893591,
		0.766963, 0.613567, 0.187894,
		0.507445, -0.759150, 0.407665,
		38.430321, 33.907784, 23.237806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.707542, 34.398285, 22.566799>,  <38.075111, 34.439190, 22.952442>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.707542, 34.398285, 22.566799> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.730820, 34.055901, 22.772299>,  <38.744785, 33.850468, 22.895599>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.730820, 34.055901, 22.772299>,  <38.707542, 34.398285, 22.566799>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.730820, 34.055901, 22.772299> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367533, -0.460107, -0.808221,
		0.928188, 0.235856, 0.287818,
		0.058196, -0.855964, 0.513751,
		38.748280, 33.799110, 22.926424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.315403, 34.112469, 22.470003>,  <38.707542, 34.398285, 22.566799>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.315403, 34.112469, 22.470003> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.094757, 33.791828, 22.562225>,  <38.962368, 33.599445, 22.617558>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.094757, 33.791828, 22.562225>,  <39.315403, 34.112469, 22.470003>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.094757, 33.791828, 22.562225> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222188, -0.407639, -0.885699,
		0.803960, -0.437339, 0.402966,
		-0.551616, -0.801601, 0.230554,
		38.929272, 33.551350, 22.631392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<34.323540, 28.221560, 25.847031> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.369823, 28.564642, 25.646652>,  <34.397594, 28.770493, 25.526424>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.369823, 28.564642, 25.646652>,  <34.323540, 28.221560, 25.847031>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.369823, 28.564642, 25.646652> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026989, 0.501435, 0.864775,
		0.992917, -0.113580, 0.034870,
		0.115707, 0.857708, -0.500948,
		34.404537, 28.821955, 25.496368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.751148, 28.479527, 26.282578>,  <34.323540, 28.221560, 25.847031>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.751148, 28.479527, 26.282578> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.603107, 28.783352, 26.068628>,  <34.514282, 28.965647, 25.940258>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.603107, 28.783352, 26.068628>,  <34.751148, 28.479527, 26.282578>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.603107, 28.783352, 26.068628> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047787, 0.590561, 0.805577,
		0.927761, 0.272586, -0.254866,
		-0.370102, 0.759562, -0.534873,
		34.492077, 29.011221, 25.908167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.176907, 29.071056, 26.269430>,  <34.751148, 28.479527, 26.282578>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.176907, 29.071056, 26.269430> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.812050, 29.221083, 26.203316>,  <34.593136, 29.311098, 26.163647>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.812050, 29.221083, 26.203316>,  <35.176907, 29.071056, 26.269430>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.812050, 29.221083, 26.203316> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062136, 0.525143, 0.848742,
		0.405134, 0.763905, -0.502311,
		-0.912143, 0.375066, -0.165287,
		34.538406, 29.333603, 26.153730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.346928, 29.736464, 26.484154>,  <35.176907, 29.071056, 26.269430>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.346928, 29.736464, 26.484154> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.953201, 29.666649, 26.494452>,  <34.716965, 29.624760, 26.500631>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.953201, 29.666649, 26.494452>,  <35.346928, 29.736464, 26.484154>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.953201, 29.666649, 26.494452> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036585, 0.344689, 0.938004,
		-0.172591, 0.922348, -0.345668,
		-0.984314, -0.174538, 0.025747,
		34.657906, 29.614288, 26.502176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.972836, 30.340120, 26.660160>,  <35.346928, 29.736464, 26.484154>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.972836, 30.340120, 26.660160> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.725986, 30.034334, 26.734732>,  <34.577877, 29.850863, 26.779474>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.725986, 30.034334, 26.734732>,  <34.972836, 30.340120, 26.660160>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.725986, 30.034334, 26.734732> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141825, 0.341109, 0.929263,
		-0.773983, 0.547026, -0.318925,
		-0.617119, -0.764465, 0.186431,
		34.540852, 29.804995, 26.790661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.463772, 30.702154, 26.955784>,  <34.972836, 30.340120, 26.660160>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.463772, 30.702154, 26.955784> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.376419, 30.321398, 27.041769>,  <34.324009, 30.092943, 27.093361>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.376419, 30.321398, 27.041769>,  <34.463772, 30.702154, 26.955784>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.376419, 30.321398, 27.041769> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045197, 0.229909, 0.972162,
		-0.974816, 0.202586, -0.093230,
		-0.218381, -0.951893, 0.214963,
		34.310905, 30.035830, 27.106258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.836613, 30.711969, 27.361259>,  <34.463772, 30.702154, 26.955784>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.836613, 30.711969, 27.361259> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.039814, 30.376074, 27.437962>,  <34.161736, 30.174536, 27.483982>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.039814, 30.376074, 27.437962>,  <33.836613, 30.711969, 27.361259>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.039814, 30.376074, 27.437962> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044017, 0.197020, 0.979411,
		-0.860229, -0.505985, 0.063125,
		0.508004, -0.839739, 0.191754,
		34.192215, 30.124151, 27.495487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.476601, 30.450464, 27.879650>,  <33.836613, 30.711969, 27.361259>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.476601, 30.450464, 27.879650> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.837173, 30.277769, 27.892441>,  <34.053516, 30.174152, 27.900114>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.837173, 30.277769, 27.892441>,  <33.476601, 30.450464, 27.879650>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.837173, 30.277769, 27.892441> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097275, 0.273965, 0.956808,
		-0.421848, -0.859388, 0.288958,
		0.901433, -0.431736, 0.031974,
		34.107605, 30.148249, 27.902033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.428207, 30.070950, 28.391930>,  <33.476601, 30.450464, 27.879650>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.428207, 30.070950, 28.391930> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.821182, 30.128555, 28.344486>,  <34.056969, 30.163118, 28.316021>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.821182, 30.128555, 28.344486>,  <33.428207, 30.070950, 28.391930>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.821182, 30.128555, 28.344486> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043408, 0.441849, 0.896038,
		0.181449, -0.885454, 0.427840,
		0.982442, 0.144013, -0.118609,
		34.115913, 30.171759, 28.308903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.739658, 29.878210, 28.954668>,  <33.428207, 30.070950, 28.391930>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.739658, 29.878210, 28.954668> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.051270, 30.085682, 28.813761>,  <34.238235, 30.210165, 28.729216>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.051270, 30.085682, 28.813761>,  <33.739658, 29.878210, 28.954668>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.051270, 30.085682, 28.813761> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296952, 0.189614, 0.935877,
		0.552215, -0.833678, -0.006309,
		0.779024, 0.518679, -0.352269,
		34.284977, 30.241285, 28.708080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.376270, 29.775625, 29.375126>,  <33.739658, 29.878210, 28.954668>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.376270, 29.775625, 29.375126> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.434288, 30.128792, 29.196501>,  <34.469097, 30.340693, 29.089325>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.434288, 30.128792, 29.196501>,  <34.376270, 29.775625, 29.375126>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.434288, 30.128792, 29.196501> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414404, 0.355632, 0.837732,
		0.898461, -0.306566, -0.314303,
		0.145043, 0.882917, -0.446564,
		34.477802, 30.393667, 29.062532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.098953, 29.980469, 29.488550>,  <34.376270, 29.775625, 29.375126>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.098953, 29.980469, 29.488550> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.919991, 30.320250, 29.376650>,  <34.812614, 30.524118, 29.309509>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.919991, 30.320250, 29.376650>,  <35.098953, 29.980469, 29.488550>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.919991, 30.320250, 29.376650> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473169, 0.490272, 0.731946,
		0.758906, 0.195109, -0.621285,
		-0.447408, 0.849450, -0.279751,
		34.785767, 30.575085, 29.292725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.566109, 30.498940, 29.502636>,  <35.098953, 29.980469, 29.488550>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.566109, 30.498940, 29.502636> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.215584, 30.687704, 29.541374>,  <35.005268, 30.800962, 29.564617>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.215584, 30.687704, 29.541374>,  <35.566109, 30.498940, 29.502636>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.215584, 30.687704, 29.541374> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311337, 0.401361, 0.861382,
		0.367628, 0.784988, -0.498641,
		-0.876310, 0.471914, 0.096844,
		34.952690, 30.829279, 29.570427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.807129, 31.185308, 29.707117>,  <35.566109, 30.498940, 29.502636>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.807129, 31.185308, 29.707117> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.422131, 31.134373, 29.802944>,  <35.191132, 31.103811, 29.860441>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.422131, 31.134373, 29.802944>,  <35.807129, 31.185308, 29.707117>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.422131, 31.134373, 29.802944> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186816, 0.329266, 0.925572,
		-0.196745, 0.935611, -0.293127,
		-0.962492, -0.127341, 0.239569,
		35.133385, 31.096170, 29.874815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.353394, 31.701900, 29.788275>,  <35.807129, 31.185308, 29.707117>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.353394, 31.701900, 29.788275> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.626068, 31.420513, 29.868704>,  <36.789673, 31.251680, 29.916962>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.626068, 31.420513, 29.868704>,  <36.353394, 31.701900, 29.788275>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.626068, 31.420513, 29.868704> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011869, -0.285420, -0.958329,
		0.731544, 0.650897, -0.202917,
		0.681691, -0.703469, 0.201072,
		36.830574, 31.209473, 29.929026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.821720, 31.767836, 29.293720>,  <36.353394, 31.701900, 29.788275>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.821720, 31.767836, 29.293720> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.872448, 31.394529, 29.428141>,  <36.902885, 31.170546, 29.508793>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.872448, 31.394529, 29.428141>,  <36.821720, 31.767836, 29.293720>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.872448, 31.394529, 29.428141> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077522, -0.347075, -0.934628,
		0.988892, 0.092475, -0.116364,
		0.126816, -0.933267, 0.336050,
		36.910492, 31.114550, 29.528955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.344574, 31.562828, 28.837772>,  <36.821720, 31.767836, 29.293720>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.344574, 31.562828, 28.837772> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.203354, 31.228415, 29.005774>,  <37.118622, 31.027765, 29.106573>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.203354, 31.228415, 29.005774>,  <37.344574, 31.562828, 28.837772>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.203354, 31.228415, 29.005774> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075578, -0.472926, -0.877855,
		0.932548, -0.278182, 0.230152,
		-0.353048, -0.836036, 0.420001,
		37.097439, 30.977604, 29.131773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.878647, 31.151154, 28.814278>,  <37.344574, 31.562828, 28.837772>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.878647, 31.151154, 28.814278> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.530830, 30.954899, 28.836792>,  <37.322140, 30.837147, 28.850300>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.530830, 30.954899, 28.836792>,  <37.878647, 31.151154, 28.814278>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.530830, 30.954899, 28.836792> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274518, -0.574944, -0.770766,
		0.410526, -0.654764, 0.634628,
		-0.869545, -0.490636, 0.056285,
		37.269966, 30.807709, 28.853678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.072365, 30.536917, 28.543203>,  <37.878647, 31.151154, 28.814278>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.072365, 30.536917, 28.543203> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.674541, 30.513046, 28.509062>,  <37.435848, 30.498724, 28.488577>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.674541, 30.513046, 28.509062>,  <38.072365, 30.536917, 28.543203>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.674541, 30.513046, 28.509062> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102171, -0.400151, -0.910736,
		0.020196, -0.914504, 0.404072,
		-0.994562, -0.059678, -0.085355,
		37.376171, 30.495144, 28.483456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.983753, 29.939157, 28.150728>,  <38.072365, 30.536917, 28.543203>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.983753, 29.939157, 28.150728> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.612831, 30.088284, 28.137365>,  <37.390278, 30.177759, 28.129347>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.612831, 30.088284, 28.137365>,  <37.983753, 29.939157, 28.150728>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.612831, 30.088284, 28.137365> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115568, -0.370060, -0.921792,
		-0.356028, -0.850917, 0.386243,
		-0.927301, 0.372821, -0.033412,
		37.334641, 30.200127, 28.127342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.589943, 29.349895, 28.015373>,  <37.983753, 29.939157, 28.150728>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.589943, 29.349895, 28.015373> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.391491, 29.676586, 27.897516>,  <37.272419, 29.872601, 27.826803>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.391491, 29.676586, 27.897516>,  <37.589943, 29.349895, 28.015373>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.391491, 29.676586, 27.897516> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066758, -0.374228, -0.924930,
		-0.865680, -0.439213, 0.240188,
		-0.496126, 0.816728, -0.294641,
		37.242653, 29.921604, 27.809124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.002140, 29.102390, 27.662739>,  <37.589943, 29.349895, 28.015373>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.002140, 29.102390, 27.662739> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.072212, 29.471754, 27.526134>,  <37.114254, 29.693373, 27.444172>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.072212, 29.471754, 27.526134>,  <37.002140, 29.102390, 27.662739>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.072212, 29.471754, 27.526134> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061204, -0.356419, -0.932319,
		-0.982632, 0.142422, -0.118954,
		0.175181, 0.923408, -0.341512,
		37.124767, 29.748775, 27.423681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.557796, 29.186277, 27.089357>,  <37.002140, 29.102390, 27.662739>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.557796, 29.186277, 27.089357> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.838451, 29.467274, 27.041670>,  <37.006844, 29.635872, 27.013058>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.838451, 29.467274, 27.041670>,  <36.557796, 29.186277, 27.089357>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.838451, 29.467274, 27.041670> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050949, -0.216349, -0.974986,
		-0.710710, 0.678013, -0.187590,
		0.701638, 0.702490, -0.119217,
		37.048943, 29.678020, 27.005905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.323841, 29.688404, 26.491123>,  <36.557796, 29.186277, 27.089357>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.323841, 29.688404, 26.491123> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.719887, 29.716249, 26.539822>,  <36.957516, 29.732956, 26.569040>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.719887, 29.716249, 26.539822>,  <36.323841, 29.688404, 26.491123>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.719887, 29.716249, 26.539822> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119757, 0.032067, -0.992285,
		-0.072979, 0.997059, 0.023413,
		0.990117, 0.069612, 0.121745,
		37.016922, 29.737133, 26.576345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.501579, 30.187330, 25.999868>,  <36.323841, 29.688404, 26.491123>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.501579, 30.187330, 25.999868> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.816704, 29.955343, 26.082802>,  <37.005779, 29.816151, 26.132563>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.816704, 29.955343, 26.082802>,  <36.501579, 30.187330, 25.999868>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.816704, 29.955343, 26.082802> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286460, 0.047022, -0.956938,
		0.545242, 0.813283, 0.203181,
		0.787815, -0.579965, 0.207335,
		37.053047, 29.781353, 26.145002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.959122, 30.518076, 25.689556>,  <36.501579, 30.187330, 25.999868>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.959122, 30.518076, 25.689556> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.089306, 30.142235, 25.731928>,  <37.167416, 29.916731, 25.757351>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.089306, 30.142235, 25.731928>,  <36.959122, 30.518076, 25.689556>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.089306, 30.142235, 25.731928> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363593, 0.020948, -0.931323,
		0.872855, 0.341624, 0.348451,
		0.325461, -0.939603, 0.105928,
		37.186943, 29.860353, 25.763706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.565285, 30.367218, 25.211479>,  <36.959122, 30.518076, 25.689556>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.565285, 30.367218, 25.211479> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.432434, 29.994371, 25.269239>,  <37.352722, 29.770664, 25.303896>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.432434, 29.994371, 25.269239>,  <37.565285, 30.367218, 25.211479>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.432434, 29.994371, 25.269239> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190380, -0.216185, -0.957611,
		0.923821, -0.290560, 0.249258,
		-0.332130, -0.932115, 0.144399,
		37.332794, 29.714737, 25.312559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.095890, 29.983049, 24.783394>,  <37.565285, 30.367218, 25.211479>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.095890, 29.983049, 24.783394> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.787041, 29.747044, 24.877806>,  <37.601730, 29.605440, 24.934454>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.787041, 29.747044, 24.877806>,  <38.095890, 29.983049, 24.783394>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.787041, 29.747044, 24.877806> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071495, -0.288413, -0.954833,
		0.631438, -0.754124, 0.180508,
		-0.772123, -0.590013, 0.236031,
		37.555405, 29.570040, 24.948614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.836773, 29.864471, 24.538860>,  <38.095890, 29.983049, 24.783394>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.836773, 29.864471, 24.538860> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.126312, 30.068876, 24.353428>,  <39.300037, 30.191519, 24.242168>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.126312, 30.068876, 24.353428>,  <38.836773, 29.864471, 24.538860>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.126312, 30.068876, 24.353428> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318713, 0.348272, 0.881549,
		0.611933, -0.785860, 0.089231,
		0.723851, 0.511010, -0.463583,
		39.343468, 30.222179, 24.214354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.491833, 29.685612, 24.879353>,  <38.836773, 29.864471, 24.538860>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.491833, 29.685612, 24.879353> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.563065, 30.032763, 24.693848>,  <39.605804, 30.241053, 24.582544>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.563065, 30.032763, 24.693848>,  <39.491833, 29.685612, 24.879353>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.563065, 30.032763, 24.693848> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543644, 0.306069, 0.781519,
		0.820207, -0.391292, -0.417313,
		0.178076, 0.867878, -0.463764,
		39.616486, 30.293125, 24.554718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.261875, 29.908230, 24.991827>,  <39.491833, 29.685612, 24.879353>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.261875, 29.908230, 24.991827> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.068768, 30.240833, 24.881903>,  <39.952904, 30.440395, 24.815948>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.068768, 30.240833, 24.881903>,  <40.261875, 29.908230, 24.991827>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.068768, 30.240833, 24.881903> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521056, 0.524947, 0.673001,
		0.703869, 0.181715, -0.686694,
		-0.482772, 0.831511, -0.274810,
		39.923935, 30.490286, 24.799459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.807735, 30.363176, 24.937834>,  <40.261875, 29.908230, 24.991827>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.807735, 30.363176, 24.937834> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.463623, 30.560076, 24.990915>,  <40.257156, 30.678215, 25.022764>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.463623, 30.560076, 24.990915>,  <40.807735, 30.363176, 24.937834>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.463623, 30.560076, 24.990915> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440372, 0.586322, 0.679926,
		0.256884, 0.643366, -0.721173,
		-0.860281, 0.492246, 0.132704,
		40.205540, 30.707750, 25.030727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.031422, 31.016153, 24.978546>,  <40.807735, 30.363176, 24.937834>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.031422, 31.016153, 24.978546> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.663105, 31.040949, 25.132589>,  <40.442116, 31.055826, 25.225016>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.663105, 31.040949, 25.132589>,  <41.031422, 31.016153, 24.978546>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.663105, 31.040949, 25.132589> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362403, 0.501124, 0.785836,
		-0.144276, 0.863153, -0.483893,
		-0.920787, 0.061987, 0.385109,
		40.386868, 31.059546, 25.248121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.016163, 31.662640, 25.280787>,  <41.031422, 31.016153, 24.978546>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.016163, 31.662640, 25.280787> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.681610, 31.517773, 25.445370>,  <40.480877, 31.430853, 25.544119>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.681610, 31.517773, 25.445370>,  <41.016163, 31.662640, 25.280787>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.681610, 31.517773, 25.445370> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193226, 0.507653, 0.839614,
		-0.512957, 0.781744, -0.354613,
		-0.836384, -0.362166, 0.411458,
		40.430695, 31.409122, 25.568808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.674889, 32.225113, 25.689507>,  <41.016163, 31.662640, 25.280787>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.674889, 32.225113, 25.689507> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.534458, 31.882044, 25.839781>,  <40.450199, 31.676201, 25.929945>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.534458, 31.882044, 25.839781>,  <40.674889, 32.225113, 25.689507>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.534458, 31.882044, 25.839781> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032351, 0.412095, 0.910566,
		-0.935789, 0.307521, -0.172422,
		-0.351072, -0.857676, 0.375686,
		40.429138, 31.624741, 25.952486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.101631, 32.405563, 26.179060>,  <40.674889, 32.225113, 25.689507>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.101631, 32.405563, 26.179060> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.216900, 32.037083, 26.283630>,  <40.286060, 31.815994, 26.346373>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.216900, 32.037083, 26.283630>,  <40.101631, 32.405563, 26.179060>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.216900, 32.037083, 26.283630> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018554, 0.278328, 0.960307,
		-0.957398, -0.271885, 0.097299,
		0.288174, -0.921201, 0.261427,
		40.303352, 31.760723, 26.362059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.565269, 32.210491, 26.613792>,  <40.101631, 32.405563, 26.179060>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.565269, 32.210491, 26.613792> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.893993, 31.995205, 26.688580>,  <40.091228, 31.866034, 26.733452>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.893993, 31.995205, 26.688580>,  <39.565269, 32.210491, 26.613792>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.893993, 31.995205, 26.688580> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041019, 0.271410, 0.961589,
		-0.568287, -0.797911, 0.200969,
		0.821808, -0.538215, 0.186968,
		40.140537, 31.833740, 26.744671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.358913, 31.817387, 27.183025>,  <39.565269, 32.210491, 26.613792>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.358913, 31.817387, 27.183025> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.756489, 31.859890, 27.171787>,  <39.995033, 31.885391, 27.165045>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.756489, 31.859890, 27.171787>,  <39.358913, 31.817387, 27.183025>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.756489, 31.859890, 27.171787> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008601, 0.179640, 0.983695,
		0.109567, -0.977977, 0.177638,
		0.993942, 0.106252, -0.028094,
		40.054672, 31.891768, 27.163359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.611824, 31.423431, 27.709425>,  <39.358913, 31.817387, 27.183025>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.611824, 31.423431, 27.709425> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.912548, 31.675762, 27.632660>,  <40.092983, 31.827162, 27.586601>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.912548, 31.675762, 27.632660>,  <39.611824, 31.423431, 27.709425>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.912548, 31.675762, 27.632660> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145117, 0.125619, 0.981408,
		0.643208, -0.765686, 0.002898,
		0.751814, 0.630828, -0.191913,
		40.138092, 31.865011, 27.575087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.109776, 31.219053, 28.160160>,  <39.611824, 31.423431, 27.709425>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.109776, 31.219053, 28.160160> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.188633, 31.601809, 28.074837>,  <40.235947, 31.831461, 28.023643>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.188633, 31.601809, 28.074837>,  <40.109776, 31.219053, 28.160160>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.188633, 31.601809, 28.074837> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052861, 0.206887, 0.976936,
		0.978949, -0.203872, -0.009796,
		0.197143, 0.956888, -0.213308,
		40.247776, 31.888874, 28.010845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.642994, 31.423817, 28.709206>,  <40.109776, 31.219053, 28.160160>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.642994, 31.423817, 28.709206> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.491550, 31.756290, 28.546337>,  <40.400684, 31.955774, 28.448616>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.491550, 31.756290, 28.546337>,  <40.642994, 31.423817, 28.709206>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.491550, 31.756290, 28.546337> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143023, 0.382094, 0.912989,
		0.914439, 0.403902, -0.025786,
		-0.378610, 0.831184, -0.407169,
		40.377968, 32.005646, 28.424187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.065929, 31.880564, 29.002932>,  <40.642994, 31.423817, 28.709206>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.065929, 31.880564, 29.002932> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.750942, 32.091675, 28.875589>,  <40.561951, 32.218342, 28.799185>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.750942, 32.091675, 28.875589>,  <41.065929, 31.880564, 29.002932>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.750942, 32.091675, 28.875589> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046289, 0.464411, 0.884409,
		0.614617, 0.711179, -0.341278,
		-0.787467, 0.527775, -0.318354,
		40.514702, 32.250008, 28.780083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<39.777161, 33.593090, 22.305357> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.405663, 33.447384, 22.332922>,  <39.182766, 33.359959, 22.349461>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.405663, 33.447384, 22.332922>,  <39.777161, 33.593090, 22.305357>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.405663, 33.447384, 22.332922> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241943, -0.736398, -0.631808,
		0.280893, -0.570114, 0.772055,
		-0.928742, -0.364264, 0.068913,
		39.127041, 33.338104, 22.353596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.806278, 32.775070, 22.187216>,  <39.777161, 33.593090, 22.305357>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.806278, 32.775070, 22.187216> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.419659, 32.865276, 22.138340>,  <39.187687, 32.919399, 22.109015>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.419659, 32.865276, 22.138340>,  <39.806278, 32.775070, 22.187216>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.419659, 32.865276, 22.138340> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035390, -0.589083, -0.807297,
		-0.254041, -0.775965, 0.577357,
		-0.966546, 0.225519, -0.122189,
		39.129696, 32.932934, 22.101683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.451687, 32.173611, 22.219707>,  <39.806278, 32.775070, 22.187216>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.451687, 32.173611, 22.219707> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.216015, 32.414906, 22.004683>,  <39.074612, 32.559685, 21.875668>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.216015, 32.414906, 22.004683>,  <39.451687, 32.173611, 22.219707>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.216015, 32.414906, 22.004683> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075607, -0.703536, -0.706627,
		-0.804457, -0.375687, 0.460117,
		-0.589179, 0.603239, -0.537560,
		39.039261, 32.595879, 21.843414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.036861, 31.762922, 21.885786>,  <39.451687, 32.173611, 22.219707>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.036861, 31.762922, 21.885786> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.984314, 32.095116, 21.669254>,  <38.952785, 32.294434, 21.539335>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.984314, 32.095116, 21.669254>,  <39.036861, 31.762922, 21.885786>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.984314, 32.095116, 21.669254> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199299, -0.557039, -0.806218,
		-0.971093, 0.001973, 0.238694,
		-0.131371, 0.830484, -0.541330,
		38.944904, 32.344261, 21.506855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.417301, 31.720890, 21.618807>,  <39.036861, 31.762922, 21.885786>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.417301, 31.720890, 21.618807> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.617207, 31.979147, 21.387848>,  <38.737148, 32.134102, 21.249271>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.617207, 31.979147, 21.387848>,  <38.417301, 31.720890, 21.618807>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.617207, 31.979147, 21.387848> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273122, -0.515143, -0.812423,
		-0.821976, 0.563717, -0.081109,
		0.499759, 0.645640, -0.577399,
		38.767136, 32.172840, 21.214628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.932438, 31.879839, 21.137621>,  <38.417301, 31.720890, 21.618807>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.932438, 31.879839, 21.137621> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.261650, 31.990311, 20.939087>,  <38.459179, 32.056595, 20.819967>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.261650, 31.990311, 20.939087>,  <37.932438, 31.879839, 21.137621>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.261650, 31.990311, 20.939087> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303898, -0.524124, -0.795575,
		-0.479863, 0.805616, -0.347438,
		0.823029, 0.276181, -0.496333,
		38.508560, 32.073166, 20.790188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.764584, 32.076740, 20.493719>,  <37.932438, 31.879839, 21.137621>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.764584, 32.076740, 20.493719> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.154186, 31.997339, 20.450083>,  <38.387947, 31.949699, 20.423901>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.154186, 31.997339, 20.450083>,  <37.764584, 32.076740, 20.493719>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.154186, 31.997339, 20.450083> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186230, -0.427679, -0.884539,
		0.128925, 0.881866, -0.453530,
		0.974011, -0.198500, -0.109091,
		38.446388, 31.937790, 20.417355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.985664, 32.299561, 19.817766>,  <37.764584, 32.076740, 20.493719>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.985664, 32.299561, 19.817766> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.288498, 32.055630, 19.911528>,  <38.470196, 31.909271, 19.967785>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.288498, 32.055630, 19.911528>,  <37.985664, 32.299561, 19.817766>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.288498, 32.055630, 19.911528> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121144, -0.483603, -0.866863,
		0.641993, 0.627887, -0.440003,
		0.757079, -0.609824, 0.234405,
		38.515621, 31.872683, 19.981850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.369156, 32.152206, 19.162535>,  <37.985664, 32.299561, 19.817766>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.369156, 32.152206, 19.162535> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.512489, 31.845774, 19.375969>,  <38.598488, 31.661913, 19.504028>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.512489, 31.845774, 19.375969>,  <38.369156, 32.152206, 19.162535>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.512489, 31.845774, 19.375969> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047920, -0.585877, -0.808982,
		0.932363, 0.264316, -0.246651,
		0.358334, -0.766084, 0.533584,
		38.619991, 31.615948, 19.536045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.745186, 31.873781, 18.750570>,  <38.369156, 32.152206, 19.162535>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.745186, 31.873781, 18.750570> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.682945, 31.584368, 19.019579>,  <38.645599, 31.410719, 19.180984>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.682945, 31.584368, 19.019579>,  <38.745186, 31.873781, 18.750570>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.682945, 31.584368, 19.019579> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024209, -0.683401, -0.729641,
		0.987523, -0.097254, 0.123856,
		-0.155604, -0.723536, 0.672520,
		38.636265, 31.367308, 19.221334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.251183, 31.431984, 18.612934>,  <38.745186, 31.873781, 18.750570>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.251183, 31.431984, 18.612934> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.957626, 31.249710, 18.814428>,  <38.781490, 31.140347, 18.935326>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.957626, 31.249710, 18.814428>,  <39.251183, 31.431984, 18.612934>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.957626, 31.249710, 18.814428> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151058, -0.613535, -0.775085,
		0.662253, -0.644924, 0.381436,
		-0.733895, -0.455683, 0.503737,
		38.737457, 31.113005, 18.965549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.413921, 30.774324, 18.526644>,  <39.251183, 31.431984, 18.612934>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.413921, 30.774324, 18.526644> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.026840, 30.768064, 18.627291>,  <38.794594, 30.764309, 18.687679>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.026840, 30.768064, 18.627291>,  <39.413921, 30.774324, 18.526644>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.026840, 30.768064, 18.627291> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192346, -0.599361, -0.777026,
		0.162970, -0.800325, 0.576992,
		-0.967700, -0.015650, 0.251618,
		38.736530, 30.763371, 18.702776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.231609, 30.103621, 18.641144>,  <39.413921, 30.774324, 18.526644>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.231609, 30.103621, 18.641144> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.893543, 30.292072, 18.540161>,  <38.690704, 30.405144, 18.479572>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.893543, 30.292072, 18.540161>,  <39.231609, 30.103621, 18.641144>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.893543, 30.292072, 18.540161> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143312, -0.654759, -0.742126,
		-0.514936, -0.591039, 0.620898,
		-0.845164, 0.471129, -0.252456,
		38.639996, 30.433411, 18.464424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.695469, 29.626160, 18.511345>,  <39.231609, 30.103621, 18.641144>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.695469, 29.626160, 18.511345> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.622837, 29.946541, 18.283133>,  <38.579258, 30.138769, 18.146204>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.622837, 29.946541, 18.283133>,  <38.695469, 29.626160, 18.511345>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.622837, 29.946541, 18.283133> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168590, -0.596942, -0.784371,
		-0.968817, -0.046239, 0.243424,
		-0.181579, 0.800951, -0.570532,
		38.568363, 30.186827, 18.111973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.474045, 28.835152, 18.813560>,  <38.695469, 29.626160, 18.511345>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.474045, 28.835152, 18.813560> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.570999, 28.471382, 18.948730>,  <38.629173, 28.253120, 19.029833>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.570999, 28.471382, 18.948730>,  <38.474045, 28.835152, 18.813560>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.570999, 28.471382, 18.948730> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159353, 0.380903, 0.910780,
		-0.957003, -0.166912, 0.237246,
		0.242388, -0.909425, 0.337927,
		38.643715, 28.198555, 19.050108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.115749, 28.753931, 19.380102>,  <38.474045, 28.835152, 18.813560>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.115749, 28.753931, 19.380102> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.383942, 28.465536, 19.450115>,  <38.544857, 28.292500, 19.492123>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.383942, 28.465536, 19.450115>,  <38.115749, 28.753931, 19.380102>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.383942, 28.465536, 19.450115> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101907, 0.323174, 0.940837,
		-0.734895, -0.612975, 0.290155,
		0.670480, -0.720986, 0.175032,
		38.585087, 28.249241, 19.502625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.932281, 28.311117, 20.042803>,  <38.115749, 28.753931, 19.380102>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.932281, 28.311117, 20.042803> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.324684, 28.267763, 19.978460>,  <38.560127, 28.241751, 19.939856>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.324684, 28.267763, 19.978460>,  <37.932281, 28.311117, 20.042803>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.324684, 28.267763, 19.978460> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189003, 0.347765, 0.918334,
		-0.043595, -0.931296, 0.361646,
		0.981008, -0.108387, -0.160856,
		38.618988, 28.235247, 19.930202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.166626, 27.860189, 20.568502>,  <37.932281, 28.311117, 20.042803>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.166626, 27.860189, 20.568502> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.491699, 28.053787, 20.438702>,  <38.686741, 28.169945, 20.360821>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.491699, 28.053787, 20.438702>,  <38.166626, 27.860189, 20.568502>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.491699, 28.053787, 20.438702> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217483, 0.264717, 0.939482,
		0.540604, -0.834072, 0.109870,
		0.812679, 0.483993, -0.324504,
		38.735504, 28.198984, 20.341351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.639755, 27.741148, 21.064638>,  <38.166626, 27.860189, 20.568502>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.639755, 27.741148, 21.064638> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.775116, 28.064968, 20.872755>,  <38.856331, 28.259260, 20.757626>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.775116, 28.064968, 20.872755>,  <38.639755, 27.741148, 21.064638>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.775116, 28.064968, 20.872755> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283345, 0.398461, 0.872321,
		0.897331, -0.431113, -0.094544,
		0.338397, 0.809549, -0.479706,
		38.876637, 28.307833, 20.728844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.261284, 27.824312, 21.382490>,  <38.639755, 27.741148, 21.064638>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.261284, 27.824312, 21.382490> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.159260, 28.177917, 21.225792>,  <39.098045, 28.390081, 21.131773>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.159260, 28.177917, 21.225792>,  <39.261284, 27.824312, 21.382490>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.159260, 28.177917, 21.225792> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104118, 0.427900, 0.897809,
		0.961302, 0.188211, -0.201183,
		-0.255064, 0.884013, -0.391745,
		39.082741, 28.443121, 21.108269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.714027, 28.295452, 21.716516>,  <39.261284, 27.824312, 21.382490>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.714027, 28.295452, 21.716516> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.467045, 28.563059, 21.551029>,  <39.318855, 28.723623, 21.451736>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.467045, 28.563059, 21.551029>,  <39.714027, 28.295452, 21.716516>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.467045, 28.563059, 21.551029> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100159, 0.588542, 0.802238,
		0.780204, 0.453908, -0.430406,
		-0.617454, 0.669019, -0.413720,
		39.281807, 28.763765, 21.426912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.044662, 28.927879, 21.444429>,  <39.714027, 28.295452, 21.716516>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.044662, 28.927879, 21.444429> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.669163, 29.001890, 21.560715>,  <39.443863, 29.046297, 21.630486>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.669163, 29.001890, 21.560715>,  <40.044662, 28.927879, 21.444429>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.669163, 29.001890, 21.560715> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344593, 0.509788, 0.788272,
		-0.002353, 0.840168, -0.542321,
		-0.938749, 0.185025, 0.290715,
		39.387539, 29.057398, 21.647930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.133766, 29.585621, 21.676300>,  <40.044662, 28.927879, 21.444429>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.133766, 29.585621, 21.676300> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.767944, 29.476770, 21.795986>,  <39.548450, 29.411459, 21.867798>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.767944, 29.476770, 21.795986>,  <40.133766, 29.585621, 21.676300>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.767944, 29.476770, 21.795986> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131049, 0.500508, 0.855756,
		-0.382634, 0.821850, -0.422082,
		-0.914558, -0.272128, 0.299214,
		39.493576, 29.395132, 21.885750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.784626, 30.213425, 21.887083>,  <40.133766, 29.585621, 21.676300>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.784626, 30.213425, 21.887083> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.619659, 29.897816, 22.069227>,  <39.520679, 29.708450, 22.178514>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.619659, 29.897816, 22.069227>,  <39.784626, 30.213425, 21.887083>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.619659, 29.897816, 22.069227> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043875, 0.482067, 0.875035,
		-0.909938, 0.380858, -0.164194,
		-0.412417, -0.789024, 0.455361,
		39.495934, 29.661108, 22.205835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.287643, 30.524357, 22.344957>,  <39.784626, 30.213425, 21.887083>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.287643, 30.524357, 22.344957> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.351337, 30.153528, 22.480709>,  <39.389553, 29.931030, 22.562160>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.351337, 30.153528, 22.480709>,  <39.287643, 30.524357, 22.344957>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.351337, 30.153528, 22.480709> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004791, 0.343037, 0.939310,
		-0.987230, -0.151194, 0.050181,
		0.159232, -0.927074, 0.339381,
		39.399109, 29.875406, 22.582523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.716446, 30.481890, 22.680620>,  <39.287643, 30.524357, 22.344957>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.716446, 30.481890, 22.680620> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.987545, 30.221882, 22.818102>,  <39.150204, 30.065878, 22.900591>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.987545, 30.221882, 22.818102>,  <38.716446, 30.481890, 22.680620>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.987545, 30.221882, 22.818102> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229676, 0.256899, 0.938750,
		-0.698503, -0.715176, 0.024819,
		0.677748, -0.650020, 0.343704,
		39.190868, 30.026876, 22.921213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.447964, 30.426384, 23.364090>,  <38.716446, 30.481890, 22.680620>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.447964, 30.426384, 23.364090> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.807133, 30.251238, 23.381990>,  <39.022636, 30.146151, 23.392731>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.807133, 30.251238, 23.381990>,  <38.447964, 30.426384, 23.364090>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.807133, 30.251238, 23.381990> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072661, 0.247740, 0.966098,
		-0.434108, -0.864233, 0.254268,
		0.897926, -0.437866, 0.044749,
		39.076511, 30.119879, 23.395414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.439259, 30.038845, 23.973383>,  <38.447964, 30.426384, 23.364090>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.439259, 30.038845, 23.973383> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.815578, 30.117727, 23.863110>,  <39.041370, 30.165056, 23.796946>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.815578, 30.117727, 23.863110>,  <38.439259, 30.038845, 23.973383>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.815578, 30.117727, 23.863110> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175949, 0.411033, 0.894479,
		0.289710, -0.890034, 0.352003,
		0.940803, 0.197205, -0.275681,
		39.097820, 30.176889, 23.780405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.248970, 29.388264, 24.409958>,  <38.439259, 30.038845, 23.973383>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.248970, 29.388264, 24.409958> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.866158, 29.344843, 24.517525>,  <37.636471, 29.318790, 24.582064>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.866158, 29.344843, 24.517525>,  <38.248970, 29.388264, 24.409958>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.866158, 29.344843, 24.517525> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196016, -0.441264, -0.875707,
		0.213721, -0.890788, 0.401024,
		-0.957027, -0.108550, 0.268916,
		37.579048, 29.312279, 24.598200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.074879, 28.694986, 24.255388>,  <38.248970, 29.388264, 24.409958>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.074879, 28.694986, 24.255388> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.721092, 28.875761, 24.301815>,  <37.508820, 28.984226, 24.329672>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.721092, 28.875761, 24.301815>,  <38.074879, 28.694986, 24.255388>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.721092, 28.875761, 24.301815> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391002, -0.582118, -0.712921,
		-0.254631, -0.675937, 0.691572,
		-0.884466, 0.451938, 0.116067,
		37.455753, 29.011343, 24.336636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.508598, 28.171829, 24.261919>,  <38.074879, 28.694986, 24.255388>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.508598, 28.171829, 24.261919> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.350975, 28.512373, 24.123413>,  <37.256401, 28.716700, 24.040310>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.350975, 28.512373, 24.123413>,  <37.508598, 28.171829, 24.261919>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.350975, 28.512373, 24.123413> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411177, -0.500249, -0.762027,
		-0.821980, -0.157907, 0.547188,
		-0.394060, 0.851361, -0.346267,
		37.232758, 28.767782, 24.019533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.963806, 27.927378, 24.007822>,  <37.508598, 28.171829, 24.261919>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.963806, 27.927378, 24.007822> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.940441, 28.292578, 23.846319>,  <36.926422, 28.511698, 23.749418>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.940441, 28.292578, 23.846319>,  <36.963806, 27.927378, 24.007822>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.940441, 28.292578, 23.846319> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364687, -0.396011, -0.842721,
		-0.929296, 0.098017, 0.356093,
		-0.058416, 0.912999, -0.403757,
		36.922916, 28.566477, 23.725193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.447151, 27.923727, 23.647104>,  <36.963806, 27.927378, 24.007822>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.447151, 27.923727, 23.647104> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.627640, 28.233570, 23.469847>,  <36.735935, 28.419476, 23.363491>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.627640, 28.233570, 23.469847>,  <36.447151, 27.923727, 23.647104>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.627640, 28.233570, 23.469847> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423313, -0.251366, -0.870414,
		-0.785622, 0.580342, 0.214479,
		0.451225, 0.774608, -0.443145,
		36.763008, 28.465952, 23.336903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.880573, 28.227396, 23.291761>,  <36.447151, 27.923727, 23.647104>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.880573, 28.227396, 23.291761> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.203880, 28.380463, 23.112757>,  <36.397865, 28.472303, 23.005354>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.203880, 28.380463, 23.112757>,  <35.880573, 28.227396, 23.291761>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.203880, 28.380463, 23.112757> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307722, -0.373452, -0.875123,
		-0.502006, 0.845044, -0.184094,
		0.808268, 0.382668, -0.447513,
		36.446362, 28.495262, 22.978502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.699749, 28.688538, 22.727350>,  <35.880573, 28.227396, 23.291761>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.699749, 28.688538, 22.727350> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.061726, 28.548475, 22.630621>,  <36.278912, 28.464437, 22.572582>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.061726, 28.548475, 22.630621>,  <35.699749, 28.688538, 22.727350>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.061726, 28.548475, 22.630621> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306622, -0.142483, -0.941107,
		0.295080, 0.925791, -0.236304,
		0.904937, -0.350158, -0.241824,
		36.333206, 28.443428, 22.558073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.089607, 29.044806, 22.393335>,  <35.699749, 28.688538, 22.727350>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.089607, 29.044806, 22.393335> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.703815, 28.956783, 22.451792>,  <34.472340, 28.903971, 22.486866>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.703815, 28.956783, 22.451792>,  <35.089607, 29.044806, 22.393335>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.703815, 28.956783, 22.451792> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140178, 0.042553, 0.989211,
		-0.223898, 0.974559, -0.010195,
		-0.964479, -0.220054, 0.146140,
		34.414471, 28.890768, 22.495634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.946953, 29.524944, 22.839890>,  <35.089607, 29.044806, 22.393335>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.946953, 29.524944, 22.839890> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.668953, 29.239059, 22.871271>,  <34.502151, 29.067528, 22.890100>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.668953, 29.239059, 22.871271>,  <34.946953, 29.524944, 22.839890>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.668953, 29.239059, 22.871271> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159404, -0.046761, 0.986105,
		-0.701115, 0.697852, 0.146427,
		-0.695003, -0.714714, 0.078455,
		34.460453, 29.024645, 22.894808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.435757, 29.672771, 23.383318>,  <34.946953, 29.524944, 22.839890>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.435757, 29.672771, 23.383318> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.370773, 29.279425, 23.350836>,  <34.331783, 29.043417, 23.331347>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.370773, 29.279425, 23.350836>,  <34.435757, 29.672771, 23.383318>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.370773, 29.279425, 23.350836> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056718, -0.072855, 0.995728,
		-0.985084, 0.166367, -0.043939,
		-0.162455, -0.983369, -0.081204,
		34.322037, 28.984413, 23.326475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.799931, 29.541578, 23.819475>,  <34.435757, 29.672771, 23.383318>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.799931, 29.541578, 23.819475> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.921932, 29.163290, 23.774609>,  <33.995132, 28.936317, 23.747688>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.921932, 29.163290, 23.774609>,  <33.799931, 29.541578, 23.819475>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.921932, 29.163290, 23.774609> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019486, -0.123950, 0.992097,
		-0.952152, -0.300408, -0.056234,
		0.305005, -0.945722, -0.112166,
		34.013435, 28.879574, 23.740959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.328884, 29.132427, 24.191652>,  <33.799931, 29.541578, 23.819475>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.328884, 29.132427, 24.191652> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.680443, 28.946543, 24.148596>,  <33.891376, 28.835012, 24.122763>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.680443, 28.946543, 24.148596>,  <33.328884, 29.132427, 24.191652>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.680443, 28.946543, 24.148596> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050746, -0.133285, 0.989778,
		-0.474307, -0.875374, -0.093561,
		0.878896, -0.464711, -0.107640,
		33.944111, 28.807129, 24.116304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.269062, 28.582561, 24.620951>,  <33.328884, 29.132427, 24.191652>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.269062, 28.582561, 24.620951> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.657116, 28.676025, 24.594894>,  <33.889950, 28.732103, 24.579262>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.657116, 28.676025, 24.594894>,  <33.269062, 28.582561, 24.620951>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.657116, 28.676025, 24.594894> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061578, 0.022509, 0.997848,
		0.234624, -0.972058, 0.007448,
		0.970134, 0.233661, -0.065139,
		33.948154, 28.746124, 24.575354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.588951, 28.253557, 25.332685>,  <33.269062, 28.582561, 24.620951>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.588951, 28.253557, 25.332685> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.835079, 28.520811, 25.165361>,  <33.982754, 28.681164, 25.064966>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.835079, 28.520811, 25.165361>,  <33.588951, 28.253557, 25.332685>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.835079, 28.520811, 25.165361> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257378, 0.331297, 0.907744,
		0.745079, -0.666213, 0.031890,
		0.615316, 0.668134, -0.418311,
		34.019672, 28.721251, 25.039867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<36.108681, 29.617367, 19.412533> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.271645, 29.962738, 19.531534>,  <36.369423, 30.169960, 19.602936>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.271645, 29.962738, 19.531534>,  <36.108681, 29.617367, 19.412533>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.271645, 29.962738, 19.531534> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.680279, 0.069586, 0.729642,
		0.609291, -0.499651, 0.615722,
		0.407412, 0.863427, 0.297504,
		36.393867, 30.221766, 19.620785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.709969, 30.072105, 19.782476>,  <36.108681, 29.617367, 19.412533>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.709969, 30.072105, 19.782476> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.961964, 30.374521, 19.853489>,  <36.113163, 30.555971, 19.896095>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.961964, 30.374521, 19.853489>,  <35.709969, 30.072105, 19.782476>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.961964, 30.374521, 19.853489> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.594445, 0.322348, 0.736700,
		0.499748, -0.569645, 0.652500,
		0.629990, 0.756040, 0.177530,
		36.150959, 30.601334, 19.906748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.668808, 30.222418, 20.588369>,  <35.709969, 30.072105, 19.782476>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.668808, 30.222418, 20.588369> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.821583, 30.528034, 20.380383>,  <35.913246, 30.711405, 20.255590>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.821583, 30.528034, 20.380383>,  <35.668808, 30.222418, 20.588369>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.821583, 30.528034, 20.380383> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419210, 0.644635, 0.639303,
		0.823643, -0.026198, 0.566503,
		0.381936, 0.764041, -0.519967,
		35.936165, 30.757246, 20.224392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.995861, 30.656332, 21.029955>,  <35.668808, 30.222418, 20.588369>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.995861, 30.656332, 21.029955> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.937317, 30.912960, 20.728767>,  <35.902191, 31.066936, 20.548054>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.937317, 30.912960, 20.728767>,  <35.995861, 30.656332, 21.029955>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.937317, 30.912960, 20.728767> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310050, 0.693063, 0.650794,
		0.939386, 0.328710, 0.097481,
		-0.146362, 0.641571, -0.752970,
		35.893410, 31.105431, 20.502876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.377808, 31.250843, 21.213715>,  <35.995861, 30.656332, 21.029955>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.377808, 31.250843, 21.213715> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.120037, 31.380430, 20.936657>,  <35.965374, 31.458183, 20.770422>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.120037, 31.380430, 20.936657>,  <36.377808, 31.250843, 21.213715>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.120037, 31.380430, 20.936657> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262700, 0.756885, 0.598426,
		0.718125, 0.567600, -0.402650,
		-0.644426, 0.323969, -0.692646,
		35.926708, 31.477621, 20.728863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.521515, 31.986839, 21.201094>,  <36.377808, 31.250843, 21.213715>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.521515, 31.986839, 21.201094> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.162811, 31.904205, 21.044556>,  <35.947590, 31.854626, 20.950632>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.162811, 31.904205, 21.044556>,  <36.521515, 31.986839, 21.201094>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.162811, 31.904205, 21.044556> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393197, 0.777728, 0.490445,
		0.203042, 0.593685, -0.778660,
		-0.896755, -0.206585, -0.391347,
		35.893784, 31.842230, 20.927151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.296738, 32.604683, 20.936626>,  <36.521515, 31.986839, 21.201094>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.296738, 32.604683, 20.936626> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.978474, 32.372238, 21.005020>,  <35.787514, 32.232773, 21.046057>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.978474, 32.372238, 21.005020>,  <36.296738, 32.604683, 20.936626>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.978474, 32.372238, 21.005020> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421216, 0.733632, 0.533255,
		-0.435320, 0.352268, -0.828495,
		-0.795659, -0.581112, 0.170984,
		35.739777, 32.197906, 21.056314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.633213, 33.025799, 20.814342>,  <36.296738, 32.604683, 20.936626>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.633213, 33.025799, 20.814342> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.502605, 32.711693, 21.024769>,  <35.424240, 32.523228, 21.151024>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.502605, 32.711693, 21.024769>,  <35.633213, 33.025799, 20.814342>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.502605, 32.711693, 21.024769> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369083, 0.618312, 0.693879,
		-0.870151, 0.032404, -0.491719,
		-0.326520, -0.785264, 0.526066,
		35.404648, 32.476112, 21.182589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.991936, 33.130783, 20.883034>,  <35.633213, 33.025799, 20.814342>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.991936, 33.130783, 20.883034> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.071484, 32.894547, 21.195868>,  <35.119213, 32.752804, 21.383568>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.071484, 32.894547, 21.195868>,  <34.991936, 33.130783, 20.883034>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.071484, 32.894547, 21.195868> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.584043, 0.569414, 0.578499,
		-0.786985, -0.571816, -0.231691,
		0.198867, -0.590588, 0.782086,
		35.131145, 32.717369, 21.430492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.327744, 33.090153, 21.240911>,  <34.991936, 33.130783, 20.883034>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.327744, 33.090153, 21.240911> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.597637, 32.973755, 21.512220>,  <34.759575, 32.903915, 21.675007>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.597637, 32.973755, 21.512220>,  <34.327744, 33.090153, 21.240911>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.597637, 32.973755, 21.512220> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422146, 0.601672, 0.678074,
		-0.605415, -0.743850, 0.283125,
		0.674733, -0.290996, 0.678275,
		34.800056, 32.886456, 21.715702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.877003, 33.118095, 21.765432>,  <34.327744, 33.090153, 21.240911>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.877003, 33.118095, 21.765432> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.224613, 33.078182, 21.959276>,  <34.433178, 33.054234, 22.075583>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.224613, 33.078182, 21.959276>,  <33.877003, 33.118095, 21.765432>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.224613, 33.078182, 21.959276> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323559, 0.626384, 0.709192,
		-0.374313, -0.773102, 0.512057,
		0.869022, -0.099779, 0.484608,
		34.485321, 33.048248, 22.104658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.734268, 32.897739, 22.512604>,  <33.877003, 33.118095, 21.765432>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.734268, 32.897739, 22.512604> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.090149, 33.080318, 22.508951>,  <34.303677, 33.189865, 22.506760>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.090149, 33.080318, 22.508951>,  <33.734268, 32.897739, 22.512604>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.090149, 33.080318, 22.508951> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272044, 0.546113, 0.792309,
		0.366636, -0.702435, 0.610052,
		0.889702, 0.456450, -0.009131,
		34.357059, 33.217255, 22.506212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.613564, 32.405293, 23.019258>,  <33.734268, 32.897739, 22.512604>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.613564, 32.405293, 23.019258> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.251659, 32.574429, 22.998817>,  <33.034515, 32.675911, 22.986553>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.251659, 32.574429, 22.998817>,  <33.613564, 32.405293, 23.019258>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.251659, 32.574429, 22.998817> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105829, -0.339402, -0.934669,
		-0.412562, -0.840244, 0.351827,
		-0.904761, 0.422843, -0.051102,
		32.980232, 32.701279, 22.983488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.172523, 31.933081, 22.716412>,  <33.613564, 32.405293, 23.019258>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.172523, 31.933081, 22.716412> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.943024, 32.256153, 22.662054>,  <32.805325, 32.449997, 22.629440>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.943024, 32.256153, 22.662054>,  <33.172523, 31.933081, 22.716412>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.943024, 32.256153, 22.662054> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301127, -0.362320, -0.882070,
		-0.761667, -0.465163, 0.451094,
		-0.573747, 0.807680, -0.135894,
		32.770901, 32.498459, 22.621286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.706589, 31.649658, 22.308329>,  <33.172523, 31.933081, 22.716412>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.706589, 31.649658, 22.308329> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.629616, 32.036293, 22.240585>,  <32.583431, 32.268272, 22.199940>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.629616, 32.036293, 22.240585>,  <32.706589, 31.649658, 22.308329>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.629616, 32.036293, 22.240585> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254117, -0.215781, -0.942795,
		-0.947836, -0.138392, 0.287150,
		-0.192436, 0.966585, -0.169358,
		32.571884, 32.326267, 22.189777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.038284, 31.665356, 22.048162>,  <32.706589, 31.649658, 22.308329>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.038284, 31.665356, 22.048162> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.256969, 31.976809, 21.924978>,  <32.388180, 32.163681, 21.851068>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.256969, 31.976809, 21.924978>,  <32.038284, 31.665356, 22.048162>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.256969, 31.976809, 21.924978> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127166, -0.286313, -0.949660,
		-0.827610, 0.558349, -0.057514,
		0.546709, 0.778634, -0.307958,
		32.420982, 32.210400, 21.832590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.785534, 31.775017, 21.464685>,  <32.038284, 31.665356, 22.048162>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.785534, 31.775017, 21.464685> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.109283, 32.004818, 21.415924>,  <32.303532, 32.142696, 21.386667>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.109283, 32.004818, 21.415924>,  <31.785534, 31.775017, 21.464685>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.109283, 32.004818, 21.415924> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027163, -0.243968, -0.969403,
		-0.586664, 0.781299, -0.213067,
		0.809375, 0.574501, -0.121905,
		32.352097, 32.177170, 21.379353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.708696, 32.176598, 20.878033>,  <31.785534, 31.775017, 21.464685>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.708696, 32.176598, 20.878033> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.104813, 32.154152, 20.928907>,  <32.342484, 32.140682, 20.959433>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.104813, 32.154152, 20.928907>,  <31.708696, 32.176598, 20.878033>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.104813, 32.154152, 20.928907> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098740, -0.360080, -0.927681,
		0.097857, 0.931232, -0.351043,
		0.990290, -0.056118, 0.127186,
		32.401901, 32.137318, 20.967064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.941956, 32.325584, 20.267586>,  <31.708696, 32.176598, 20.878033>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.941956, 32.325584, 20.267586> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.283997, 32.189796, 20.424332>,  <32.489220, 32.108322, 20.518379>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.283997, 32.189796, 20.424332>,  <31.941956, 32.325584, 20.267586>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.283997, 32.189796, 20.424332> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294905, -0.303166, -0.906158,
		0.426417, 0.890420, -0.159125,
		0.855102, -0.339475, 0.391864,
		32.540527, 32.087955, 20.541891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.491817, 32.586063, 19.879847>,  <31.941956, 32.325584, 20.267586>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.491817, 32.586063, 19.879847> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.623966, 32.251446, 20.054684>,  <32.703255, 32.050674, 20.159586>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.623966, 32.251446, 20.054684>,  <32.491817, 32.586063, 19.879847>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.623966, 32.251446, 20.054684> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213240, -0.384969, -0.897958,
		0.919446, 0.389868, 0.051200,
		0.330375, -0.836542, 0.437094,
		32.723080, 32.000484, 20.185812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.119305, 32.385487, 19.556557>,  <32.491817, 32.586063, 19.879847>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.119305, 32.385487, 19.556557> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.973171, 32.049805, 19.717684>,  <32.885490, 31.848394, 19.814360>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.973171, 32.049805, 19.717684>,  <33.119305, 32.385487, 19.556557>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.973171, 32.049805, 19.717684> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235887, -0.502066, -0.832038,
		0.900494, -0.208952, 0.381379,
		-0.365333, -0.839207, 0.402819,
		32.863571, 31.798042, 19.838530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.570251, 31.879635, 19.338621>,  <33.119305, 32.385487, 19.556557>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.570251, 31.879635, 19.338621> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.269890, 31.656010, 19.479242>,  <33.089672, 31.521835, 19.563616>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.269890, 31.656010, 19.479242>,  <33.570251, 31.879635, 19.338621>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.269890, 31.656010, 19.479242> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209618, -0.706566, -0.675888,
		0.626260, -0.433836, 0.647754,
		-0.750905, -0.559062, 0.351554,
		33.044617, 31.488291, 19.584709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.786747, 31.291618, 19.319929>,  <33.570251, 31.879635, 19.338621>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.786747, 31.291618, 19.319929> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.398281, 31.196337, 19.324024>,  <33.165203, 31.139168, 19.326481>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.398281, 31.196337, 19.324024>,  <33.786747, 31.291618, 19.319929>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.398281, 31.196337, 19.324024> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132601, -0.575302, -0.807121,
		0.198148, -0.782487, 0.590298,
		-0.971161, -0.238204, 0.010236,
		33.106934, 31.124876, 19.327095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.811939, 30.543957, 19.137577>,  <33.786747, 31.291618, 19.319929>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.811939, 30.543957, 19.137577> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.432510, 30.651993, 19.071527>,  <33.204853, 30.716814, 19.031898>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.432510, 30.651993, 19.071527>,  <33.811939, 30.543957, 19.137577>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.432510, 30.651993, 19.071527> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034298, -0.606220, -0.794557,
		-0.314703, -0.748030, 0.584305,
		-0.948570, 0.270090, -0.165124,
		33.147938, 30.733021, 19.021990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.361259, 29.930609, 19.153828>,  <33.811939, 30.543957, 19.137577>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.361259, 29.930609, 19.153828> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.217129, 30.225565, 18.925293>,  <33.130650, 30.402538, 18.788172>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.217129, 30.225565, 18.925293>,  <33.361259, 29.930609, 19.153828>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.217129, 30.225565, 18.925293> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085436, -0.583816, -0.807378,
		-0.928906, -0.339731, 0.147363,
		-0.360325, 0.737389, -0.571335,
		33.109032, 30.446781, 18.753893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.047318, 30.201754, 19.851574>,  <33.361259, 29.930609, 19.153828>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.047318, 30.201754, 19.851574> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.188347, 29.866373, 19.685349>,  <33.272964, 29.665146, 19.585613>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.188347, 29.866373, 19.685349>,  <33.047318, 30.201754, 19.851574>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.188347, 29.866373, 19.685349> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069142, -0.419525, 0.905107,
		-0.933225, -0.347854, -0.089943,
		0.352578, -0.838449, -0.415562,
		33.294121, 29.614838, 19.560680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.795597, 29.819349, 20.318861>,  <33.047318, 30.201754, 19.851574>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.795597, 29.819349, 20.318861> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.043350, 29.566362, 20.132811>,  <33.192001, 29.414570, 20.021179>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.043350, 29.566362, 20.132811>,  <32.795597, 29.819349, 20.318861>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.043350, 29.566362, 20.132811> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165286, -0.474124, 0.864804,
		-0.767489, -0.612528, -0.189128,
		0.619387, -0.632467, -0.465128,
		33.229168, 29.376621, 19.993273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.529850, 29.211161, 20.565451>,  <32.795597, 29.819349, 20.318861>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.529850, 29.211161, 20.565451> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.903538, 29.156345, 20.433716>,  <33.127750, 29.123455, 20.354675>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.903538, 29.156345, 20.433716>,  <32.529850, 29.211161, 20.565451>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.903538, 29.156345, 20.433716> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216388, -0.516263, 0.828642,
		-0.283580, -0.845395, -0.452648,
		0.934216, -0.137039, -0.329336,
		33.183804, 29.115234, 20.334915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.736263, 28.550232, 20.773441>,  <32.529850, 29.211161, 20.565451>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.736263, 28.550232, 20.773441> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.084412, 28.729069, 20.690908>,  <33.293301, 28.836370, 20.641390>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.084412, 28.729069, 20.690908>,  <32.736263, 28.550232, 20.773441>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.084412, 28.729069, 20.690908> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326003, -0.209168, 0.921939,
		0.369032, -0.869689, -0.327806,
		0.870366, 0.447090, -0.206331,
		33.345520, 28.863195, 20.629009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.217125, 28.124815, 21.031919>,  <32.736263, 28.550232, 20.773441>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.217125, 28.124815, 21.031919> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.423332, 28.463507, 20.979321>,  <33.547058, 28.666721, 20.947762>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.423332, 28.463507, 20.979321>,  <33.217125, 28.124815, 21.031919>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.423332, 28.463507, 20.979321> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487625, -0.163704, 0.857568,
		0.704601, -0.506212, -0.497278,
		0.515518, 0.846729, -0.131496,
		33.577988, 28.717525, 20.939873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.993790, 27.976374, 21.086662>,  <33.217125, 28.124815, 21.031919>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.993790, 27.976374, 21.086662> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.935604, 28.359762, 21.184786>,  <33.900692, 28.589794, 21.243660>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.935604, 28.359762, 21.184786>,  <33.993790, 27.976374, 21.086662>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.935604, 28.359762, 21.184786> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328197, -0.187157, 0.925882,
		0.933341, 0.215196, -0.287342,
		-0.145468, 0.958469, 0.245308,
		33.891964, 28.647303, 21.258379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.613922, 28.171410, 21.394873>,  <33.993790, 27.976374, 21.086662>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.613922, 28.171410, 21.394873> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.347404, 28.444763, 21.514229>,  <34.187492, 28.608776, 21.585842>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.347404, 28.444763, 21.514229>,  <34.613922, 28.171410, 21.394873>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.347404, 28.444763, 21.514229> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339840, -0.077896, 0.937252,
		0.663748, 0.725890, -0.180340,
		-0.666294, 0.683385, 0.298390,
		34.147518, 28.649778, 21.603746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.971626, 28.555412, 21.837492>,  <34.613922, 28.171410, 21.394873>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.971626, 28.555412, 21.837492> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.596008, 28.631386, 21.952120>,  <34.370640, 28.676970, 22.020897>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.596008, 28.631386, 21.952120>,  <34.971626, 28.555412, 21.837492>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.596008, 28.631386, 21.952120> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301120, 0.052147, 0.952159,
		0.165905, 0.980411, -0.106162,
		-0.939043, 0.189935, 0.286570,
		34.314297, 28.688366, 22.038092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.731476, 28.920496, 21.921909>,  <34.971626, 28.555412, 21.837492>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.731476, 28.920496, 21.921909> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.031673, 28.669790, 22.005747>,  <36.211792, 28.519367, 22.056049>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.031673, 28.669790, 22.005747>,  <35.731476, 28.920496, 21.921909>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.031673, 28.669790, 22.005747> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131865, -0.168750, -0.976798,
		0.647592, 0.760716, -0.043997,
		0.750490, -0.626765, 0.209593,
		36.256821, 28.481760, 22.068624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.268284, 29.162643, 21.579912>,  <35.731476, 28.920496, 21.921909>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.268284, 29.162643, 21.579912> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.361507, 28.778389, 21.640390>,  <36.417442, 28.547836, 21.676678>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.361507, 28.778389, 21.640390>,  <36.268284, 29.162643, 21.579912>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.361507, 28.778389, 21.640390> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123279, -0.125037, -0.984463,
		0.964616, 0.248080, 0.089285,
		0.233062, -0.960636, 0.151196,
		36.431427, 28.490198, 21.685749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.864986, 28.958138, 21.150202>,  <36.268284, 29.162643, 21.579912>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.864986, 28.958138, 21.150202> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.677376, 28.611822, 21.219975>,  <36.564812, 28.404034, 21.261837>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.677376, 28.611822, 21.219975>,  <36.864986, 28.958138, 21.150202>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.677376, 28.611822, 21.219975> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018967, -0.207330, -0.978087,
		0.882982, -0.455438, 0.113664,
		-0.469024, -0.865789, 0.174430,
		36.536667, 28.352085, 21.272303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.263134, 28.458317, 20.842714>,  <36.864986, 28.958138, 21.150202>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.263134, 28.458317, 20.842714> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.900658, 28.296415, 20.891695>,  <36.683170, 28.199274, 20.921083>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.900658, 28.296415, 20.891695>,  <37.263134, 28.458317, 20.842714>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.900658, 28.296415, 20.891695> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006740, -0.303355, -0.952854,
		0.422817, -0.862641, 0.277625,
		-0.906190, -0.404754, 0.122450,
		36.628799, 28.174990, 20.928431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.294212, 27.763416, 20.667477>,  <37.263134, 28.458317, 20.842714>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.294212, 27.763416, 20.667477> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.898510, 27.817160, 20.644409>,  <36.661091, 27.849405, 20.630569>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.898510, 27.817160, 20.644409>,  <37.294212, 27.763416, 20.667477>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.898510, 27.817160, 20.644409> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027821, -0.560193, -0.827894,
		-0.143538, -0.817393, 0.557911,
		-0.989254, 0.134356, -0.057668,
		36.601734, 27.857466, 20.627110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.034035, 27.073669, 20.522535>,  <37.294212, 27.763416, 20.667477>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.034035, 27.073669, 20.522535> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.780827, 27.355425, 20.394087>,  <36.628902, 27.524479, 20.317019>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.780827, 27.355425, 20.394087>,  <37.034035, 27.073669, 20.522535>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.780827, 27.355425, 20.394087> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039720, -0.443818, -0.895236,
		-0.773114, -0.553949, 0.308925,
		-0.633022, 0.704390, -0.321119,
		36.590919, 27.566742, 20.297750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.477005, 26.704369, 20.211185>,  <37.034035, 27.073669, 20.522535>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.477005, 26.704369, 20.211185> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.472919, 27.066498, 20.041344>,  <36.470470, 27.283775, 19.939440>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.472919, 27.066498, 20.041344>,  <36.477005, 26.704369, 20.211185>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.472919, 27.066498, 20.041344> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102170, -0.421458, -0.901074,
		-0.994714, -0.052582, -0.088194,
		-0.010210, 0.905322, -0.424603,
		36.469856, 27.338095, 19.913963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.160027, 26.569899, 19.558828>,  <36.477005, 26.704369, 20.211185>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.160027, 26.569899, 19.558828> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.315456, 26.934042, 19.501900>,  <36.408714, 27.152529, 19.467743>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.315456, 26.934042, 19.501900>,  <36.160027, 26.569899, 19.558828>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.315456, 26.934042, 19.501900> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142358, -0.211917, -0.966864,
		-0.910355, 0.355436, -0.211942,
		0.388572, 0.910361, -0.142321,
		36.432030, 27.207150, 19.459204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.787014, 26.855406, 19.097353>,  <36.160027, 26.569899, 19.558828>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.787014, 26.855406, 19.097353> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.163548, 26.990280, 19.091795>,  <36.389469, 27.071205, 19.088461>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.163548, 26.990280, 19.091795>,  <35.787014, 26.855406, 19.097353>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.163548, 26.990280, 19.091795> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061549, -0.212021, -0.975325,
		-0.331812, 0.917253, -0.220337,
		0.941335, 0.337186, -0.013895,
		36.445950, 27.091436, 19.087627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<36.337368, 33.562599, 33.869415> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.659901, 33.788902, 33.800423>,  <36.853420, 33.924683, 33.759026>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.659901, 33.788902, 33.800423>,  <36.337368, 33.562599, 33.869415>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.659901, 33.788902, 33.800423> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210063, -0.546537, -0.810661,
		-0.552906, 0.617428, -0.559534,
		0.806330, 0.565757, -0.172485,
		36.901798, 33.958630, 33.748676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.294586, 33.703526, 33.142483>,  <36.337368, 33.562599, 33.869415>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.294586, 33.703526, 33.142483> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.676186, 33.726715, 33.260147>,  <36.905144, 33.740627, 33.330746>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.676186, 33.726715, 33.260147>,  <36.294586, 33.703526, 33.142483>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.676186, 33.726715, 33.260147> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266610, -0.612855, -0.743860,
		0.137159, 0.788066, -0.600116,
		0.953995, 0.057970, 0.294165,
		36.962383, 33.744106, 33.348396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.648914, 33.889790, 32.564701>,  <36.294586, 33.703526, 33.142483>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.648914, 33.889790, 32.564701> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.856354, 33.677097, 32.832527>,  <36.980816, 33.549480, 32.993225>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.856354, 33.677097, 32.832527>,  <36.648914, 33.889790, 32.564701>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.856354, 33.677097, 32.832527> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342861, -0.588058, -0.732553,
		0.783267, 0.609467, -0.122654,
		0.518594, -0.531731, 0.669569,
		37.011932, 33.517578, 33.033398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.301208, 33.822666, 32.277996>,  <36.648914, 33.889790, 32.564701>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.301208, 33.822666, 32.277996> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.246681, 33.521320, 32.535324>,  <37.213966, 33.340511, 32.689720>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.246681, 33.521320, 32.535324>,  <37.301208, 33.822666, 32.277996>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.246681, 33.521320, 32.535324> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214748, -0.656410, -0.723193,
		0.967110, 0.039568, 0.251264,
		-0.136316, -0.753366, 0.643318,
		37.205788, 33.295311, 32.728321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.922379, 33.415539, 32.181259>,  <37.301208, 33.822666, 32.277996>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.922379, 33.415539, 32.181259> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.666771, 33.174572, 32.372570>,  <37.513409, 33.029991, 32.487358>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.666771, 33.174572, 32.372570>,  <37.922379, 33.415539, 32.181259>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.666771, 33.174572, 32.372570> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294715, -0.766098, -0.571172,
		0.710493, -0.224032, 0.667090,
		-0.639017, -0.602415, 0.478281,
		37.475067, 32.993847, 32.516056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.232254, 32.750175, 32.137444>,  <37.922379, 33.415539, 32.181259>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.232254, 32.750175, 32.137444> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.854015, 32.674976, 32.243649>,  <37.627071, 32.629856, 32.307369>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.854015, 32.674976, 32.243649>,  <38.232254, 32.750175, 32.137444>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.854015, 32.674976, 32.243649> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016010, -0.788246, -0.615152,
		0.324936, -0.585939, 0.742356,
		-0.945600, -0.188000, 0.265511,
		37.570335, 32.618576, 32.323303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.252449, 32.046131, 32.414551>,  <38.232254, 32.750175, 32.137444>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.252449, 32.046131, 32.414551> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.880402, 32.135361, 32.297852>,  <37.657173, 32.188900, 32.227833>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.880402, 32.135361, 32.297852>,  <38.252449, 32.046131, 32.414551>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.880402, 32.135361, 32.297852> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000166, -0.794644, -0.607076,
		-0.367261, -0.564603, 0.739150,
		-0.930118, 0.223078, -0.291748,
		37.601368, 32.202286, 32.210327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.806545, 31.408859, 32.367996>,  <38.252449, 32.046131, 32.414551>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.806545, 31.408859, 32.367996> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.623611, 31.669231, 32.125629>,  <37.513851, 31.825455, 31.980209>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.623611, 31.669231, 32.125629>,  <37.806545, 31.408859, 32.367996>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.623611, 31.669231, 32.125629> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144535, -0.726691, -0.671588,
		-0.877472, -0.219563, 0.426421,
		-0.457332, 0.650932, -0.605916,
		37.486412, 31.864511, 31.943855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.513103, 30.924656, 31.867498>,  <37.806545, 31.408859, 32.367996>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.513103, 30.924656, 31.867498> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.416924, 31.286310, 31.726233>,  <37.359215, 31.503302, 31.641472>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.416924, 31.286310, 31.726233>,  <37.513103, 30.924656, 31.867498>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.416924, 31.286310, 31.726233> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493343, -0.427175, -0.757717,
		-0.835941, -0.007960, 0.548762,
		-0.240448, 0.904134, -0.353166,
		37.344788, 31.557550, 31.620283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.802502, 30.821211, 31.642305>,  <37.513103, 30.924656, 31.867498>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.802502, 30.821211, 31.642305> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.995750, 31.095062, 31.423994>,  <37.111698, 31.259373, 31.293007>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.995750, 31.095062, 31.423994>,  <36.802502, 30.821211, 31.642305>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.995750, 31.095062, 31.423994> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375684, -0.400957, -0.835521,
		-0.790856, 0.608700, 0.063493,
		0.483123, 0.684630, -0.545778,
		37.140686, 31.300451, 31.260262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.300629, 30.925655, 31.114738>,  <36.802502, 30.821211, 31.642305>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.300629, 30.925655, 31.114738> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.636051, 31.088449, 30.969862>,  <36.837307, 31.186125, 30.882936>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.636051, 31.088449, 30.969862>,  <36.300629, 30.925655, 31.114738>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.636051, 31.088449, 30.969862> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267062, -0.272388, -0.924382,
		-0.474865, 0.871877, -0.119724,
		0.838559, 0.406983, -0.362193,
		36.887619, 31.210545, 30.861204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.115311, 31.392252, 30.544661>,  <36.300629, 30.925655, 31.114738>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.115311, 31.392252, 30.544661> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.491302, 31.261360, 30.505974>,  <36.716900, 31.182825, 30.482761>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.491302, 31.261360, 30.505974>,  <36.115311, 31.392252, 30.544661>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.491302, 31.261360, 30.505974> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250467, -0.469182, -0.846838,
		0.231733, 0.820237, -0.522983,
		0.939982, -0.327230, -0.096717,
		36.773296, 31.163191, 30.476959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.673462, 31.781200, 30.149963>,  <36.115311, 31.392252, 30.544661>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.673462, 31.781200, 30.149963> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.367992, 31.538845, 30.239141>,  <35.184711, 31.393433, 30.292648>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.367992, 31.538845, 30.239141>,  <35.673462, 31.781200, 30.149963>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.367992, 31.538845, 30.239141> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069246, 0.266466, 0.961354,
		-0.641881, 0.749596, -0.161536,
		-0.763671, -0.605889, 0.222946,
		35.138889, 31.357079, 30.306025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.193310, 32.172474, 30.423782>,  <35.673462, 31.781200, 30.149963>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.193310, 32.172474, 30.423782> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.158371, 31.797522, 30.558655>,  <35.137409, 31.572550, 30.639578>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.158371, 31.797522, 30.558655>,  <35.193310, 32.172474, 30.423782>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.158371, 31.797522, 30.558655> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147584, 0.346916, 0.926212,
		-0.985185, 0.031137, -0.168644,
		-0.087345, -0.937380, 0.337181,
		35.132168, 31.516308, 30.659809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.560596, 32.126686, 30.880966>,  <35.193310, 32.172474, 30.423782>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.560596, 32.126686, 30.880966> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.747551, 31.789631, 30.987936>,  <34.859722, 31.587399, 31.052118>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.747551, 31.789631, 30.987936>,  <34.560596, 32.126686, 30.880966>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.747551, 31.789631, 30.987936> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252321, 0.162765, 0.953856,
		-0.847281, -0.513294, -0.136541,
		0.467385, -0.842636, 0.267423,
		34.887768, 31.536840, 31.068163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.151630, 31.909580, 31.492611>,  <34.560596, 32.126686, 30.880966>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.151630, 31.909580, 31.492611> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.460423, 31.661337, 31.547586>,  <34.645699, 31.512390, 31.580572>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.460423, 31.661337, 31.547586>,  <34.151630, 31.909580, 31.492611>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.460423, 31.661337, 31.547586> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270984, -0.125735, 0.954337,
		-0.574989, -0.773973, -0.265240,
		0.771981, -0.620609, 0.137438,
		34.692017, 31.475155, 31.588818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.884460, 31.367237, 31.841944>,  <34.151630, 31.909580, 31.492611>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.884460, 31.367237, 31.841944> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.279198, 31.364307, 31.906538>,  <34.516041, 31.362551, 31.945295>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.279198, 31.364307, 31.906538>,  <33.884460, 31.367237, 31.841944>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.279198, 31.364307, 31.906538> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161537, -0.082581, 0.983406,
		0.006139, -0.996557, -0.082677,
		0.986848, -0.007318, 0.161488,
		34.575253, 31.362110, 31.954985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.171341, 30.727947, 32.291004>,  <33.884460, 31.367237, 31.841944>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.171341, 30.727947, 32.291004> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.462673, 30.994677, 32.354088>,  <34.637474, 31.154715, 32.391937>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.462673, 30.994677, 32.354088>,  <34.171341, 30.727947, 32.291004>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.462673, 30.994677, 32.354088> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108387, -0.115153, 0.987417,
		0.676596, -0.736263, -0.011594,
		0.728334, 0.666825, 0.157714,
		34.681175, 31.194725, 32.401402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.679138, 30.442772, 32.720757>,  <34.171341, 30.727947, 32.291004>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.679138, 30.442772, 32.720757> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.691936, 30.840738, 32.758945>,  <34.699615, 31.079519, 32.781860>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.691936, 30.840738, 32.758945>,  <34.679138, 30.442772, 32.720757>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.691936, 30.840738, 32.758945> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388945, -0.075604, 0.918154,
		0.920705, -0.066509, 0.384549,
		0.031992, 0.994917, 0.095477,
		34.701534, 31.139214, 32.787590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.648487, 30.518978, 33.458549>,  <34.679138, 30.442772, 32.720757>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.648487, 30.518978, 33.458549> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.549355, 30.884741, 33.330524>,  <34.489876, 31.104198, 33.253712>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.549355, 30.884741, 33.330524>,  <34.648487, 30.518978, 33.458549>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.549355, 30.884741, 33.330524> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523336, 0.151659, 0.838522,
		0.815292, 0.375308, 0.440957,
		-0.247829, 0.914409, -0.320058,
		34.475006, 31.159063, 33.234509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.477501, 30.875025, 34.065697>,  <34.648487, 30.518978, 33.458549>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.477501, 30.875025, 34.065697> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.346519, 31.120443, 33.778271>,  <34.267929, 31.267694, 33.605816>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.346519, 31.120443, 33.778271>,  <34.477501, 30.875025, 34.065697>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.346519, 31.120443, 33.778271> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.737961, 0.308858, 0.600016,
		0.590073, 0.726750, 0.351636,
		-0.327456, 0.613547, -0.718562,
		34.248283, 31.304508, 33.562702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.568409, 31.495289, 34.352009>,  <34.477501, 30.875025, 34.065697>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.568409, 31.495289, 34.352009> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.289894, 31.529335, 34.066929>,  <34.122784, 31.549763, 33.895882>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.289894, 31.529335, 34.066929>,  <34.568409, 31.495289, 34.352009>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.289894, 31.529335, 34.066929> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.611066, 0.450602, 0.650812,
		0.376536, 0.888658, -0.261739,
		-0.696290, 0.085115, -0.712696,
		34.081009, 31.554869, 33.853119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.265789, 32.025269, 34.642208>,  <34.568409, 31.495289, 34.352009>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.265789, 32.025269, 34.642208> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.998592, 31.980703, 34.347897>,  <33.838276, 31.953964, 34.171310>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.998592, 31.980703, 34.347897>,  <34.265789, 32.025269, 34.642208>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.998592, 31.980703, 34.347897> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.710471, 0.389649, 0.586007,
		0.221408, 0.914199, -0.339438,
		-0.667989, -0.111414, -0.735783,
		33.798195, 31.947279, 34.127163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.938469, 32.678509, 34.441933>,  <34.265789, 32.025269, 34.642208>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.938469, 32.678509, 34.441933> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.690933, 32.375118, 34.360203>,  <33.542412, 32.193085, 34.311165>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.690933, 32.375118, 34.360203>,  <33.938469, 32.678509, 34.441933>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.690933, 32.375118, 34.360203> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.706759, 0.424096, 0.566246,
		-0.342831, 0.494825, -0.798508,
		-0.618837, -0.758480, -0.204329,
		33.505283, 32.147575, 34.298904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.204151, 32.931618, 34.347908>,  <33.938469, 32.678509, 34.441933>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.204151, 32.931618, 34.347908> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.153435, 32.538422, 34.401058>,  <33.123005, 32.302505, 34.432949>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.153435, 32.538422, 34.401058>,  <33.204151, 32.931618, 34.347908>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.153435, 32.538422, 34.401058> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.766939, 0.182103, 0.615340,
		-0.629070, -0.023889, -0.776982,
		-0.126791, -0.982989, 0.132877,
		33.115398, 32.243526, 34.440922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.458080, 32.848331, 34.177181>,  <33.204151, 32.931618, 34.347908>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.458080, 32.848331, 34.177181> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.601948, 32.552990, 34.405384>,  <32.688267, 32.375786, 34.542305>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.601948, 32.552990, 34.405384>,  <32.458080, 32.848331, 34.177181>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.601948, 32.552990, 34.405384> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.613076, 0.273924, 0.741015,
		-0.703404, -0.616283, -0.354143,
		0.359667, -0.738350, 0.570507,
		32.709846, 32.331486, 34.576538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.276623, 33.188133, 33.515301>,  <32.458080, 32.848331, 34.177181>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.276623, 33.188133, 33.515301> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.272396, 33.587418, 33.538849>,  <32.269859, 33.826988, 33.552979>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.272396, 33.587418, 33.538849>,  <32.276623, 33.188133, 33.515301>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.272396, 33.587418, 33.538849> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170801, 0.059811, -0.983488,
		-0.985249, -0.000338, -0.171127,
		-0.010568, 0.998210, 0.058871,
		32.269226, 33.886879, 33.556511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.847372, 33.516972, 32.945900>,  <32.276623, 33.188133, 33.515301>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.847372, 33.516972, 32.945900> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.048340, 33.839268, 33.071346>,  <32.168922, 34.032646, 33.146614>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.048340, 33.839268, 33.071346>,  <31.847372, 33.516972, 32.945900>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.048340, 33.839268, 33.071346> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030887, 0.345765, -0.937813,
		-0.864072, 0.480863, 0.148833,
		0.502421, 0.805741, 0.313617,
		32.199066, 34.080990, 33.165432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.491159, 34.102463, 32.607479>,  <31.847372, 33.516972, 32.945900>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.491159, 34.102463, 32.607479> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.875580, 34.155357, 32.704556>,  <32.106232, 34.187096, 32.762802>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.875580, 34.155357, 32.704556>,  <31.491159, 34.102463, 32.607479>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.875580, 34.155357, 32.704556> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181545, 0.360049, -0.915099,
		-0.208390, 0.923514, 0.322018,
		0.961049, 0.132237, 0.242690,
		32.163895, 34.195030, 32.777363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.627762, 34.671127, 32.387646>,  <31.491159, 34.102463, 32.607479>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.627762, 34.671127, 32.387646> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.995371, 34.515945, 32.415615>,  <32.215935, 34.422836, 32.432396>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.995371, 34.515945, 32.415615>,  <31.627762, 34.671127, 32.387646>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.995371, 34.515945, 32.415615> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271335, 0.493879, -0.826112,
		0.285960, 0.778188, 0.559151,
		0.919024, -0.387952, 0.069920,
		32.271076, 34.399559, 32.436592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.169014, 35.284576, 32.062702>,  <31.627762, 34.671127, 32.387646>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.169014, 35.284576, 32.062702> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.333656, 34.920258, 32.075523>,  <32.432442, 34.701668, 32.083218>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.333656, 34.920258, 32.075523>,  <32.169014, 35.284576, 32.062702>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.333656, 34.920258, 32.075523> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220840, 0.065554, -0.973105,
		0.884200, 0.407615, 0.228123,
		0.411607, -0.910798, 0.032055,
		32.457138, 34.647018, 32.085140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.881145, 35.372898, 31.789398>,  <32.169014, 35.284576, 32.062702>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.881145, 35.372898, 31.789398> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.743156, 34.999077, 31.754507>,  <32.660362, 34.774784, 31.733572>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.743156, 34.999077, 31.754507>,  <32.881145, 35.372898, 31.789398>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.743156, 34.999077, 31.754507> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203162, 0.016385, -0.979008,
		0.916362, -0.355452, 0.184212,
		-0.344972, -0.934551, -0.087229,
		32.639664, 34.718712, 31.728338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.278622, 35.195370, 31.319784>,  <32.881145, 35.372898, 31.789398>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.278622, 35.195370, 31.319784> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.995644, 34.912838, 31.329765>,  <32.825855, 34.743320, 31.335754>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.995644, 34.912838, 31.329765>,  <33.278622, 35.195370, 31.319784>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.995644, 34.912838, 31.329765> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063515, 0.028371, -0.997577,
		0.703910, -0.707315, -0.064933,
		-0.707444, -0.706329, 0.024954,
		32.783409, 34.700939, 31.337252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.543541, 34.543934, 30.920874>,  <33.278622, 35.195370, 31.319784>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.543541, 34.543934, 30.920874> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.143936, 34.533161, 30.935051>,  <32.904175, 34.526695, 30.943558>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.143936, 34.533161, 30.935051>,  <33.543541, 34.543934, 30.920874>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.143936, 34.533161, 30.935051> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032196, -0.112760, -0.993101,
		0.030749, -0.993257, 0.111781,
		-0.999008, -0.026938, 0.035446,
		32.844234, 34.525082, 30.945684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.352768, 34.053059, 30.494015>,  <33.543541, 34.543934, 30.920874>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.352768, 34.053059, 30.494015> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.012173, 34.261578, 30.516722>,  <32.807816, 34.386688, 30.530346>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.012173, 34.261578, 30.516722>,  <33.352768, 34.053059, 30.494015>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.012173, 34.261578, 30.516722> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222740, -0.261557, -0.939135,
		-0.474723, -0.812302, 0.338826,
		-0.851484, 0.521299, 0.056765,
		32.756729, 34.417969, 30.533751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.852055, 33.655262, 30.301434>,  <33.352768, 34.053059, 30.494015>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.852055, 33.655262, 30.301434> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.695747, 34.017693, 30.236532>,  <32.601963, 34.235149, 30.197592>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.695747, 34.017693, 30.236532>,  <32.852055, 33.655262, 30.301434>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.695747, 34.017693, 30.236532> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234639, -0.268497, -0.934266,
		-0.890081, -0.327012, 0.317521,
		-0.390769, 0.906075, -0.162254,
		32.578518, 34.289516, 30.187857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.263229, 33.391319, 30.054712>,  <32.852055, 33.655262, 30.301434>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.263229, 33.391319, 30.054712> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.296925, 33.776073, 29.950647>,  <32.317142, 34.006924, 29.888208>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.296925, 33.776073, 29.950647>,  <32.263229, 33.391319, 30.054712>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.296925, 33.776073, 29.950647> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175699, -0.242660, -0.954068,
		-0.980833, 0.126080, 0.148560,
		0.084240, 0.961884, -0.260161,
		32.322197, 34.064640, 29.872599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.857965, 33.474327, 29.608963>,  <32.263229, 33.391319, 30.054712>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.857965, 33.474327, 29.608963> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.094723, 33.785221, 29.523581>,  <32.236778, 33.971760, 29.472351>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.094723, 33.785221, 29.523581>,  <31.857965, 33.474327, 29.608963>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.094723, 33.785221, 29.523581> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176216, -0.133638, -0.975237,
		-0.786518, 0.614851, 0.057862,
		0.591893, 0.777238, -0.213456,
		32.272289, 34.018391, 29.459543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.563095, 33.892818, 29.047138>,  <31.857965, 33.474327, 29.608963>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.563095, 33.892818, 29.047138> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.952969, 33.979980, 29.067173>,  <32.186893, 34.032276, 29.079193>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.952969, 33.979980, 29.067173>,  <31.563095, 33.892818, 29.047138>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.952969, 33.979980, 29.067173> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099387, -0.221590, -0.970062,
		-0.200280, 0.950482, -0.237637,
		0.974685, 0.217902, 0.050086,
		32.245373, 34.045353, 29.082199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.691290, 34.325729, 28.376247>,  <31.563095, 33.892818, 29.047138>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.691290, 34.325729, 28.376247> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.028481, 34.166306, 28.520769>,  <32.230793, 34.070652, 28.607483>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.028481, 34.166306, 28.520769>,  <31.691290, 34.325729, 28.376247>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.028481, 34.166306, 28.520769> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265978, -0.275001, -0.923921,
		0.467599, 0.874942, -0.125810,
		0.842975, -0.398562, 0.361305,
		32.281372, 34.046738, 28.629160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.254429, 34.636993, 27.936707>,  <31.691290, 34.325729, 28.376247>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.254429, 34.636993, 27.936707> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.402683, 34.304348, 28.102135>,  <32.491634, 34.104759, 28.201391>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.402683, 34.304348, 28.102135>,  <32.254429, 34.636993, 27.936707>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.402683, 34.304348, 28.102135> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332026, -0.297222, -0.895219,
		0.867403, 0.469117, 0.165958,
		0.370636, -0.831618, 0.413571,
		32.513874, 34.054863, 28.226206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.840340, 34.593395, 27.620506>,  <32.254429, 34.636993, 27.936707>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.840340, 34.593395, 27.620506> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.751110, 34.227947, 27.756472>,  <32.697575, 34.008678, 27.838051>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.751110, 34.227947, 27.756472>,  <32.840340, 34.593395, 27.620506>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.751110, 34.227947, 27.756472> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316883, -0.397725, -0.861046,
		0.921860, -0.084360, 0.378231,
		-0.223069, -0.913618, 0.339915,
		32.684189, 33.953861, 27.858446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.300304, 34.078190, 27.334335>,  <32.840340, 34.593395, 27.620506>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.300304, 34.078190, 27.334335> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.014912, 33.831985, 27.468258>,  <32.843678, 33.684265, 27.548611>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.014912, 33.831985, 27.468258>,  <33.300304, 34.078190, 27.334335>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.014912, 33.831985, 27.468258> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113049, -0.572696, -0.811936,
		0.691493, -0.541453, 0.478191,
		-0.713483, -0.615507, 0.334805,
		32.800865, 33.647335, 27.568699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.592037, 33.434429, 27.221678>,  <33.300304, 34.078190, 27.334335>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.592037, 33.434429, 27.221678> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.192551, 33.414234, 27.223534>,  <32.952858, 33.402119, 27.224648>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.192551, 33.414234, 27.223534>,  <33.592037, 33.434429, 27.221678>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.192551, 33.414234, 27.223534> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020511, -0.486023, -0.873705,
		0.046364, -0.872487, 0.486434,
		-0.998714, -0.050485, 0.004638,
		32.892937, 33.399090, 27.224924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.491505, 32.753448, 27.049906>,  <33.592037, 33.434429, 27.221678>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.491505, 32.753448, 27.049906> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.147575, 32.945683, 26.980930>,  <32.941216, 33.061024, 26.939545>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.147575, 32.945683, 26.980930>,  <33.491505, 32.753448, 27.049906>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.147575, 32.945683, 26.980930> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050148, -0.415575, -0.908175,
		-0.508123, -0.772223, 0.381422,
		-0.859824, 0.480592, -0.172438,
		32.889629, 33.089859, 26.929199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.065197, 32.283756, 26.726614>,  <33.491505, 32.753448, 27.049906>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.065197, 32.283756, 26.726614> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.909939, 32.642445, 26.641539>,  <32.816784, 32.857658, 26.590494>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.909939, 32.642445, 26.641539>,  <33.065197, 32.283756, 26.726614>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.909939, 32.642445, 26.641539> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021486, -0.239524, -0.970653,
		-0.921348, -0.372185, 0.112237,
		-0.388145, 0.896720, -0.212688,
		32.793495, 32.911461, 26.577732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.580296, 32.215145, 26.245935>,  <33.065197, 32.283756, 26.726614>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.580296, 32.215145, 26.245935> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.630993, 32.608936, 26.197361>,  <32.661411, 32.845211, 26.168217>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.630993, 32.608936, 26.197361>,  <32.580296, 32.215145, 26.245935>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.630993, 32.608936, 26.197361> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188277, -0.096321, -0.977381,
		-0.973903, 0.146742, 0.173146,
		0.126746, 0.984474, -0.121435,
		32.669018, 32.904278, 26.160931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.991100, 32.503658, 25.908203>,  <32.580296, 32.215145, 26.245935>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.991100, 32.503658, 25.908203> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.302040, 32.747032, 25.844286>,  <32.488605, 32.893059, 25.805935>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.302040, 32.747032, 25.844286>,  <31.991100, 32.503658, 25.908203>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.302040, 32.747032, 25.844286> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231737, 0.040815, -0.971922,
		-0.584832, 0.792552, 0.172725,
		0.777348, 0.608437, -0.159793,
		32.535244, 32.929562, 25.796349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.743862, 32.980247, 25.478861>,  <31.991100, 32.503658, 25.908203>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.743862, 32.980247, 25.478861> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.128235, 33.081146, 25.433285>,  <32.358860, 33.141685, 25.405939>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.128235, 33.081146, 25.433285>,  <31.743862, 32.980247, 25.478861>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.128235, 33.081146, 25.433285> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146309, 0.113480, -0.982708,
		-0.234954, 0.960986, 0.145952,
		0.960932, 0.252246, -0.113938,
		32.416515, 33.156818, 25.399103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.797598, 33.500603, 24.855413>,  <31.743862, 32.980247, 25.478861>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.797598, 33.500603, 24.855413> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.171448, 33.365829, 24.900930>,  <32.395760, 33.284966, 24.928240>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.171448, 33.365829, 24.900930>,  <31.797598, 33.500603, 24.855413>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.171448, 33.365829, 24.900930> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090386, -0.084407, -0.992324,
		0.343952, 0.937737, -0.048435,
		0.934627, -0.336934, 0.113790,
		32.451836, 33.264748, 24.935068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.222759, 33.930653, 24.383341>,  <31.797598, 33.500603, 24.855413>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.222759, 33.930653, 24.383341> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.427364, 33.592743, 24.446217>,  <32.550129, 33.389996, 24.483942>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.427364, 33.592743, 24.446217>,  <32.222759, 33.930653, 24.383341>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.427364, 33.592743, 24.446217> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200944, -0.060257, -0.977748,
		0.835450, 0.531717, 0.138930,
		0.511513, -0.844776, 0.157187,
		32.580818, 33.339310, 24.493372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.794075, 33.967510, 23.980217>,  <32.222759, 33.930653, 24.383341>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.794075, 33.967510, 23.980217> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.740486, 33.574879, 24.034706>,  <32.708332, 33.339298, 24.067400>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.740486, 33.574879, 24.034706>,  <32.794075, 33.967510, 23.980217>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.740486, 33.574879, 24.034706> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010439, -0.136058, -0.990646,
		0.990930, -0.134139, 0.007981,
		-0.133970, -0.981578, 0.136224,
		32.700294, 33.280407, 24.075573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.357540, 33.713005, 23.537041>,  <32.794075, 33.967510, 23.980217>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.357540, 33.713005, 23.537041> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.107304, 33.408020, 23.603111>,  <32.957161, 33.225029, 23.642754>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.107304, 33.408020, 23.603111>,  <33.357540, 33.713005, 23.537041>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.107304, 33.408020, 23.603111> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076888, -0.270951, -0.959518,
		0.776350, -0.587569, 0.228129,
		-0.625594, -0.762462, 0.165176,
		32.919624, 33.179283, 23.652664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.641689, 33.155674, 23.348881>,  <33.357540, 33.713005, 23.537041>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.641689, 33.155674, 23.348881> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.258038, 33.042484, 23.348969>,  <33.027847, 32.974571, 23.349022>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.258038, 33.042484, 23.348969>,  <33.641689, 33.155674, 23.348881>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.258038, 33.042484, 23.348969> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114959, -0.390360, -0.913457,
		0.258567, -0.876098, 0.406935,
		-0.959129, -0.282970, 0.000219,
		32.970299, 32.957592, 23.349033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.370514, 32.874535, 23.408407>,  <33.641689, 33.155674, 23.348881>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.370514, 32.874535, 23.408407> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.542362, 33.158428, 23.185083>,  <34.645470, 33.328762, 23.051088>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.542362, 33.158428, 23.185083>,  <34.370514, 32.874535, 23.408407>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.542362, 33.158428, 23.185083> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047401, 0.635150, 0.770933,
		0.901764, -0.304744, 0.306516,
		0.429621, 0.709729, -0.558310,
		34.671249, 33.371346, 23.017590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.931934, 33.116894, 23.676025>,  <34.370514, 32.874535, 23.408407>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.931934, 33.116894, 23.676025> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.861523, 33.431484, 23.439222>,  <34.819275, 33.620239, 23.297140>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.861523, 33.431484, 23.439222>,  <34.931934, 33.116894, 23.676025>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.861523, 33.431484, 23.439222> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029915, 0.605395, 0.795363,
		0.983931, 0.122295, -0.130093,
		-0.176027, 0.786474, -0.592008,
		34.808716, 33.667427, 23.261620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.533802, 33.574638, 23.766144>,  <34.931934, 33.116894, 23.676025>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.533802, 33.574638, 23.766144> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.241848, 33.801308, 23.613224>,  <35.066677, 33.937309, 23.521471>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.241848, 33.801308, 23.613224>,  <35.533802, 33.574638, 23.766144>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.241848, 33.801308, 23.613224> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200399, 0.712080, 0.672891,
		0.653537, 0.414520, -0.633296,
		-0.729884, 0.566670, -0.382301,
		35.022884, 33.971310, 23.498533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.792267, 34.196884, 23.744518>,  <35.533802, 33.574638, 23.766144>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.792267, 34.196884, 23.744518> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.400906, 34.272335, 23.710688>,  <35.166088, 34.317604, 23.690390>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.400906, 34.272335, 23.710688>,  <35.792267, 34.196884, 23.744518>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.400906, 34.272335, 23.710688> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049060, 0.609322, 0.791404,
		0.200814, 0.770161, -0.605415,
		-0.978400, 0.188627, -0.084576,
		35.107384, 34.328922, 23.685314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.738796, 34.959919, 23.809042>,  <35.792267, 34.196884, 23.744518>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.738796, 34.959919, 23.809042> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.402550, 34.777412, 23.925787>,  <35.200802, 34.667908, 23.995834>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.402550, 34.777412, 23.925787>,  <35.738796, 34.959919, 23.809042>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.402550, 34.777412, 23.925787> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084414, 0.421912, 0.902699,
		-0.535014, 0.783460, -0.316150,
		-0.840615, -0.456269, 0.291864,
		35.150364, 34.640533, 24.013346>
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
