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
	<24.381966, 34.549454, 35.169395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.310444, 34.939499, 35.116962>,  <24.267530, 35.173527, 35.085503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.310444, 34.939499, 35.116962>,  <24.381966, 34.549454, 35.169395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.310444, 34.939499, 35.116962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.849417, 0.085757, -0.520708,
		-0.496508, -0.204451, -0.843611,
		-0.178805, 0.975113, -0.131085,
		24.256802, 35.232033, 35.077637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.475534, 34.655457, 34.425610>,  <24.381966, 34.549454, 35.169395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.475534, 34.655457, 34.425610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.538641, 35.000263, 34.618294>,  <24.576504, 35.207146, 34.733906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.538641, 35.000263, 34.618294>,  <24.475534, 34.655457, 34.425610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.538641, 35.000263, 34.618294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.789781, 0.182676, -0.585556,
		-0.592753, 0.472826, -0.651981,
		0.157765, 0.862012, 0.481711,
		24.585970, 35.258865, 34.762806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.605782, 35.263119, 33.979324>,  <24.475534, 34.655457, 34.425610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.605782, 35.263119, 33.979324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.788860, 35.283272, 34.334396>,  <24.898708, 35.295364, 34.547440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.788860, 35.283272, 34.334396>,  <24.605782, 35.263119, 33.979324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.788860, 35.283272, 34.334396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.855055, 0.248721, -0.454993,
		-0.243709, 0.967264, 0.070757,
		0.457697, 0.050385, 0.887680,
		24.926168, 35.298386, 34.600700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.029741, 35.871353, 33.829868>,  <24.605782, 35.263119, 33.979324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.029741, 35.871353, 33.829868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.183371, 35.663994, 34.135483>,  <25.275549, 35.539577, 34.318851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.183371, 35.663994, 34.135483>,  <25.029741, 35.871353, 33.829868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.183371, 35.663994, 34.135483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.923156, 0.200867, -0.327775,
		0.016448, 0.831215, 0.555708,
		0.384075, -0.518396, 0.764037,
		25.298594, 35.508476, 34.364693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.604254, 36.346825, 34.213276>,  <25.029741, 35.871353, 33.829868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.604254, 36.346825, 34.213276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.696909, 35.964363, 34.284950>,  <25.752502, 35.734886, 34.327953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.696909, 35.964363, 34.284950>,  <25.604254, 36.346825, 34.213276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.696909, 35.964363, 34.284950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.960111, 0.195046, -0.200360,
		0.156627, 0.218447, 0.963197,
		0.231636, -0.956158, 0.179184,
		25.766399, 35.677517, 34.338707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.089138, 36.439049, 34.704082>,  <25.604254, 36.346825, 34.213276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.089138, 36.439049, 34.704082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.109093, 36.105389, 34.484375>,  <26.121065, 35.905193, 34.352551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.109093, 36.105389, 34.484375>,  <26.089138, 36.439049, 34.704082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.109093, 36.105389, 34.484375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.964284, 0.183465, -0.191039,
		0.260128, -0.520123, 0.813514,
		0.049887, -0.834154, -0.549271,
		26.124060, 35.855141, 34.319595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.703735, 36.032768, 34.979450>,  <26.089138, 36.439049, 34.704082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.703735, 36.032768, 34.979450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.643269, 35.892296, 34.609840>,  <26.606989, 35.808014, 34.388073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.643269, 35.892296, 34.609840>,  <26.703735, 36.032768, 34.979450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.643269, 35.892296, 34.609840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.960523, 0.168664, -0.221241,
		0.233545, -0.920992, 0.311819,
		-0.151169, -0.351179, -0.924024,
		26.597918, 35.786942, 34.332634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.255707, 35.575706, 34.654007>,  <26.703735, 36.032768, 34.979450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.255707, 35.575706, 34.654007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.064404, 35.785061, 34.371918>,  <26.949621, 35.910675, 34.202663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.064404, 35.785061, 34.371918>,  <27.255707, 35.575706, 34.654007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.064404, 35.785061, 34.371918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.869932, 0.392394, -0.298740,
		0.120369, -0.756369, -0.642975,
		-0.478258, 0.523385, -0.705222,
		26.920927, 35.942078, 34.160351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.731678, 35.579803, 34.090824>,  <27.255707, 35.575706, 34.654007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.731678, 35.579803, 34.090824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.480766, 35.881832, 34.014519>,  <27.330219, 36.063049, 33.968735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.480766, 35.881832, 34.014519>,  <27.731678, 35.579803, 34.090824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.480766, 35.881832, 34.014519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.778314, 0.599190, -0.187611,
		-0.027356, -0.266157, -0.963541,
		-0.627279, 0.755070, -0.190763,
		27.292583, 36.108353, 33.957291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.841604, 35.778267, 33.449196>,  <27.731678, 35.579803, 34.090824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.841604, 35.778267, 33.449196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.680706, 36.097813, 33.628090>,  <27.584167, 36.289539, 33.735424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.680706, 36.097813, 33.628090>,  <27.841604, 35.778267, 33.449196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.680706, 36.097813, 33.628090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.832905, 0.522111, -0.183492,
		-0.380089, 0.298692, -0.875394,
		-0.402245, 0.798864, 0.447231,
		27.560032, 36.337471, 33.762260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.870375, 36.354156, 32.942604>,  <27.841604, 35.778267, 33.449196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.870375, 36.354156, 32.942604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.862343, 36.517239, 33.307762>,  <27.857523, 36.615089, 33.526855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.862343, 36.517239, 33.307762>,  <27.870375, 36.354156, 32.942604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.862343, 36.517239, 33.307762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.947001, 0.300548, -0.113399,
		-0.320601, 0.862232, -0.392135,
		-0.020079, 0.407708, 0.912891,
		27.856319, 36.639553, 33.581631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.502125, 36.968254, 33.020020>,  <27.870375, 36.354156, 32.942604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.502125, 36.968254, 33.020020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.681095, 36.977108, 32.662399>,  <27.788477, 36.982422, 32.447826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.681095, 36.977108, 32.662399>,  <27.502125, 36.968254, 33.020020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.681095, 36.977108, 32.662399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442081, 0.863538, 0.242624,
		0.777415, -0.503798, 0.376583,
		0.447427, 0.022139, -0.894046,
		27.815323, 36.983749, 32.394184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.261587, 36.993614, 32.953632>,  <27.502125, 36.968254, 33.020020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.261587, 36.993614, 32.953632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.103550, 37.205311, 32.653282>,  <28.008728, 37.332329, 32.473072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.103550, 37.205311, 32.653282>,  <28.261587, 36.993614, 32.953632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.103550, 37.205311, 32.653282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517382, 0.803603, 0.294174,
		0.759091, -0.272262, -0.591316,
		-0.395091, 0.529240, -0.750871,
		27.985023, 37.364082, 32.428020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.870157, 37.027695, 33.468094>,  <28.261587, 36.993614, 32.953632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.870157, 37.027695, 33.468094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.789495, 37.307861, 33.741955>,  <28.741098, 37.475964, 33.906269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.789495, 37.307861, 33.741955>,  <28.870157, 37.027695, 33.468094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.789495, 37.307861, 33.741955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.733511, -0.571222, 0.368331,
		0.649074, -0.427922, 0.628956,
		-0.201656, 0.700420, 0.684650,
		28.728998, 37.517986, 33.947350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.806805, 36.733837, 34.166519>,  <28.870157, 37.027695, 33.468094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.806805, 36.733837, 34.166519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.561348, 37.044796, 34.111248>,  <28.414074, 37.231373, 34.078087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.561348, 37.044796, 34.111248>,  <28.806805, 36.733837, 34.166519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.561348, 37.044796, 34.111248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.770547, -0.551409, 0.319696,
		0.172339, 0.302653, 0.937390,
		-0.613642, 0.777400, -0.138179,
		28.377254, 37.278015, 34.069794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.285358, 36.630787, 34.684349>,  <28.806805, 36.733837, 34.166519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.285358, 36.630787, 34.684349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.165413, 36.835167, 34.362103>,  <28.093445, 36.957794, 34.168755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.165413, 36.835167, 34.362103>,  <28.285358, 36.630787, 34.684349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.165413, 36.835167, 34.362103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.859495, -0.511127, -0.004256,
		-0.413945, 0.691143, 0.592427,
		-0.299864, 0.510950, -0.805613,
		28.075453, 36.988453, 34.120419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.596041, 36.976192, 34.786495>,  <28.285358, 36.630787, 34.684349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.596041, 36.976192, 34.786495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.651258, 36.924473, 34.393715>,  <27.684389, 36.893440, 34.158047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.651258, 36.924473, 34.393715>,  <27.596041, 36.976192, 34.786495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.651258, 36.924473, 34.393715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.927468, -0.364718, -0.082361,
		-0.347485, 0.922097, -0.170269,
		0.138045, -0.129299, -0.981950,
		27.692673, 36.885681, 34.099129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.028162, 37.346043, 34.340340>,  <27.596041, 36.976192, 34.786495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.028162, 37.346043, 34.340340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.188843, 37.032448, 34.151028>,  <27.285252, 36.844292, 34.037441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.188843, 37.032448, 34.151028>,  <27.028162, 37.346043, 34.340340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.188843, 37.032448, 34.151028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.890542, -0.454895, -0.002319,
		-0.213476, 0.422409, -0.880908,
		0.401700, -0.783990, -0.473283,
		27.309353, 36.797253, 34.009045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.504913, 37.153774, 33.739788>,  <27.028162, 37.346043, 34.340340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.504913, 37.153774, 33.739788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.736485, 36.833790, 33.802910>,  <26.875427, 36.641800, 33.840782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.736485, 36.833790, 33.802910>,  <26.504913, 37.153774, 33.739788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.736485, 36.833790, 33.802910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.784375, -0.599247, -0.160185,
		0.222705, -0.031042, -0.974391,
		0.578929, -0.799962, 0.157804,
		26.910164, 36.593800, 33.850250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.231716, 36.697777, 33.327526>,  <26.504913, 37.153774, 33.739788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.231716, 36.697777, 33.327526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.445608, 36.455383, 33.563103>,  <26.573942, 36.309948, 33.704449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.445608, 36.455383, 33.563103>,  <26.231716, 36.697777, 33.327526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.445608, 36.455383, 33.563103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.822271, -0.533781, 0.197353,
		0.194773, -0.589799, -0.783709,
		0.534728, -0.605983, 0.588941,
		26.606026, 36.273590, 33.739784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.010635, 35.944000, 33.264545>,  <26.231716, 36.697777, 33.327526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.010635, 35.944000, 33.264545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.192362, 35.967918, 33.620079>,  <26.301397, 35.982269, 33.833397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.192362, 35.967918, 33.620079>,  <26.010635, 35.944000, 33.264545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.192362, 35.967918, 33.620079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.716180, -0.568853, 0.404341,
		0.529793, -0.820262, -0.215613,
		0.454318, 0.059799, 0.888830,
		26.328657, 35.985859, 33.886726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.397604, 35.299984, 33.152580>,  <26.010635, 35.944000, 33.264545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.397604, 35.299984, 33.152580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.452299, 35.461849, 33.514256>,  <26.485117, 35.558968, 33.731258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.452299, 35.461849, 33.514256>,  <26.397604, 35.299984, 33.152580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.452299, 35.461849, 33.514256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.854923, -0.412876, 0.314069,
		0.500408, -0.815955, 0.289498,
		0.136739, 0.404661, 0.904186,
		26.493320, 35.583248, 33.785511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.339327, 34.715645, 33.704002>,  <26.397604, 35.299984, 33.152580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.339327, 34.715645, 33.704002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.247505, 35.064445, 33.876938>,  <26.192413, 35.273727, 33.980701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.247505, 35.064445, 33.876938>,  <26.339327, 34.715645, 33.704002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.247505, 35.064445, 33.876938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.840194, -0.401765, 0.364225,
		0.491304, -0.279642, 0.824876,
		-0.229553, 0.872001, 0.432342,
		26.178638, 35.326046, 34.006641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.682981, 34.552647, 34.041988>,  <26.339327, 34.715645, 33.704002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.682981, 34.552647, 34.041988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.944227, 34.833950, 34.154324>,  <26.100975, 35.002731, 34.221725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.944227, 34.833950, 34.154324>,  <25.682981, 34.552647, 34.041988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.944227, 34.833950, 34.154324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.720589, 0.463159, 0.515980,
		0.232791, -0.539367, 0.809254,
		0.653116, 0.703255, 0.280842,
		26.140162, 35.044926, 34.238575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.028193, 34.531712, 34.798782>,  <25.682981, 34.552647, 34.041988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.028193, 34.531712, 34.798782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.948305, 34.891979, 34.644428>,  <25.900373, 35.108139, 34.551815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.948305, 34.891979, 34.644428>,  <26.028193, 34.531712, 34.798782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.948305, 34.891979, 34.644428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.762507, 0.104472, 0.638490,
		0.615383, 0.421755, 0.665902,
		-0.199718, 0.900671, -0.385882,
		25.888390, 35.162182, 34.528664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.911459, 34.923817, 35.371281>,  <26.028193, 34.531712, 34.798782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.911459, 34.923817, 35.371281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.705734, 35.082680, 35.067242>,  <25.582300, 35.177998, 34.884819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.705734, 35.082680, 35.067242>,  <25.911459, 34.923817, 35.371281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.705734, 35.082680, 35.067242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.764725, 0.188782, 0.616082,
		0.388174, 0.898125, 0.206623,
		-0.514312, 0.397157, -0.760099,
		25.551441, 35.201828, 34.839211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.601919, 35.492760, 35.636997>,  <25.911459, 34.923817, 35.371281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.601919, 35.492760, 35.636997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.387381, 35.430679, 35.305157>,  <25.258657, 35.393429, 35.106052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.387381, 35.430679, 35.305157>,  <25.601919, 35.492760, 35.636997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.387381, 35.430679, 35.305157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.843581, 0.067736, 0.532712,
		-0.026484, 0.985558, -0.167257,
		-0.536348, -0.155204, -0.829604,
		25.226477, 35.384117, 35.056274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.089838, 35.508545, 36.252541>,  <25.601919, 35.492760, 35.636997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.089838, 35.508545, 36.252541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.462837, 35.600880, 36.141426>,  <26.686636, 35.656281, 36.074757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.462837, 35.600880, 36.141426>,  <26.089838, 35.508545, 36.252541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.462837, 35.600880, 36.141426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325310, -0.202615, 0.923645,
		0.156924, -0.951663, -0.264030,
		0.932496, 0.230834, -0.277791,
		26.742586, 35.670128, 36.058090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.554047, 34.885036, 36.444962>,  <26.089838, 35.508545, 36.252541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.554047, 34.885036, 36.444962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.713827, 35.251049, 36.422462>,  <26.809696, 35.470657, 36.408962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.713827, 35.251049, 36.422462>,  <26.554047, 34.885036, 36.444962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.713827, 35.251049, 36.422462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421492, -0.128821, 0.897636,
		0.814115, -0.382270, -0.437134,
		0.399451, 0.915027, -0.056248,
		26.833662, 35.525558, 36.405586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.237438, 34.868237, 36.590298>,  <26.554047, 34.885036, 36.444962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.237438, 34.868237, 36.590298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.153933, 35.244091, 36.698742>,  <27.103828, 35.469604, 36.763809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.153933, 35.244091, 36.698742>,  <27.237438, 34.868237, 36.590298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.153933, 35.244091, 36.698742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347691, -0.187800, 0.918609,
		0.914073, 0.286036, -0.287497,
		-0.208764, 0.939635, 0.271115,
		27.091303, 35.525982, 36.780075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.741617, 35.059929, 37.130379>,  <27.237438, 34.868237, 36.590298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.741617, 35.059929, 37.130379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.434254, 35.315456, 37.145679>,  <27.249836, 35.468773, 37.154861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.434254, 35.315456, 37.145679>,  <27.741617, 35.059929, 37.130379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.434254, 35.315456, 37.145679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116203, 0.080493, 0.989958,
		0.629322, 0.765137, -0.136084,
		-0.768408, 0.638816, 0.038255,
		27.203732, 35.507103, 37.157158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.909441, 35.347527, 37.729584>,  <27.741617, 35.059929, 37.130379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.909441, 35.347527, 37.729584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.532558, 35.477287, 37.696095>,  <27.306429, 35.555145, 37.676003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.532558, 35.477287, 37.696095>,  <27.909441, 35.347527, 37.729584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.532558, 35.477287, 37.696095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115548, -0.080081, 0.990068,
		0.314474, 0.942524, 0.112937,
		-0.942207, 0.324401, -0.083723,
		27.249897, 35.574608, 37.670979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.886230, 35.962967, 38.168068>,  <27.909441, 35.347527, 37.729584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.886230, 35.962967, 38.168068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.521519, 35.803467, 38.128761>,  <27.302691, 35.707767, 38.105175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.521519, 35.803467, 38.128761>,  <27.886230, 35.962967, 38.168068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.521519, 35.803467, 38.128761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042383, -0.146644, 0.988281,
		-0.408484, 0.905260, 0.116807,
		-0.911781, -0.398747, -0.098269,
		27.247984, 35.683842, 38.099281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.390902, 36.384449, 38.626411>,  <27.886230, 35.962967, 38.168068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.390902, 36.384449, 38.626411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.254759, 36.018711, 38.538662>,  <27.173073, 35.799267, 38.486012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.254759, 36.018711, 38.538662>,  <27.390902, 36.384449, 38.626411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.254759, 36.018711, 38.538662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047260, -0.249638, 0.967185,
		-0.939107, 0.318822, 0.128179,
		-0.340358, -0.914348, -0.219370,
		27.152651, 35.744408, 38.472851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.917027, 36.157860, 39.214020>,  <27.390902, 36.384449, 38.626411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.917027, 36.157860, 39.214020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.969475, 35.832397, 38.987473>,  <27.000944, 35.637119, 38.851543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.969475, 35.832397, 38.987473>,  <26.917027, 36.157860, 39.214020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.969475, 35.832397, 38.987473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214941, -0.581043, 0.784978,
		-0.967785, 0.018810, -0.251073,
		0.131119, -0.813656, -0.566368,
		27.008810, 35.588303, 38.817562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.341208, 36.482056, 38.914829>,  <26.917027, 36.157860, 39.214020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.341208, 36.482056, 38.914829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.368656, 36.084846, 38.876461>,  <26.385126, 35.846523, 38.853439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.368656, 36.084846, 38.876461>,  <26.341208, 36.482056, 38.914829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.368656, 36.084846, 38.876461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027906, -0.094204, 0.995162,
		-0.997252, -0.070968, 0.021247,
		0.068623, -0.993020, -0.095925,
		26.389242, 35.786942, 38.847683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.736814, 36.037991, 39.216091>,  <26.341208, 36.482056, 38.914829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.736814, 36.037991, 39.216091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.057144, 35.799923, 39.242805>,  <26.249342, 35.657082, 39.258835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.057144, 35.799923, 39.242805>,  <25.736814, 36.037991, 39.216091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.057144, 35.799923, 39.242805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080260, 0.003860, 0.996766,
		-0.593499, -0.803594, -0.044677,
		0.800823, -0.595166, 0.066788,
		26.297392, 35.621372, 39.262840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.549763, 35.372986, 39.593689>,  <25.736814, 36.037991, 39.216091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.549763, 35.372986, 39.593689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.944696, 35.419285, 39.637096>,  <26.181656, 35.447063, 39.663139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.944696, 35.419285, 39.637096>,  <25.549763, 35.372986, 39.593689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.944696, 35.419285, 39.637096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088591, -0.165230, 0.982268,
		0.131626, -0.979439, -0.152883,
		0.987333, 0.115748, 0.108518,
		26.240896, 35.454010, 39.669651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.721542, 34.980728, 40.243641>,  <25.549763, 35.372986, 39.593689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.721542, 34.980728, 40.243641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.065033, 35.173229, 40.173222>,  <26.271128, 35.288731, 40.130970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.065033, 35.173229, 40.173222>,  <25.721542, 34.980728, 40.243641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.065033, 35.173229, 40.173222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291393, -0.175992, 0.940275,
		0.421524, -0.858735, -0.291362,
		0.858724, 0.481250, -0.176045,
		26.322651, 35.317604, 40.120407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.859005, 35.272011, 40.861000>,  <25.721542, 34.980728, 40.243641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.859005, 35.272011, 40.861000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.213753, 35.317310, 41.040169>,  <26.426601, 35.344490, 41.147671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.213753, 35.317310, 41.040169>,  <25.859005, 35.272011, 40.861000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.213753, 35.317310, 41.040169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409316, 0.257064, -0.875430,
		-0.214289, 0.959735, 0.181627,
		0.886871, 0.113252, 0.447922,
		26.479815, 35.351288, 41.174545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.060667, 35.845943, 40.702496>,  <25.859005, 35.272011, 40.861000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.060667, 35.845943, 40.702496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.393208, 35.631729, 40.761898>,  <26.592731, 35.503201, 40.797539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.393208, 35.631729, 40.761898>,  <26.060667, 35.845943, 40.702496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.393208, 35.631729, 40.761898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319214, 0.241416, -0.916417,
		0.454925, 0.809269, 0.371653,
		0.831351, -0.535538, 0.148503,
		26.642612, 35.471069, 40.806450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.756939, 36.113228, 40.644341>,  <26.060667, 35.845943, 40.702496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.756939, 36.113228, 40.644341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.764299, 35.725044, 40.548111>,  <26.768715, 35.492134, 40.490376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.764299, 35.725044, 40.548111>,  <26.756939, 36.113228, 40.644341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.764299, 35.725044, 40.548111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215072, 0.238821, -0.946947,
		0.976425, -0.034317, 0.213113,
		0.018399, -0.970457, -0.240571,
		26.769819, 35.433907, 40.475941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.238213, 36.063137, 40.041790>,  <26.756939, 36.113228, 40.644341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.238213, 36.063137, 40.041790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.027325, 35.723248, 40.042839>,  <26.900791, 35.519314, 40.043468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.027325, 35.723248, 40.042839>,  <27.238213, 36.063137, 40.041790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.027325, 35.723248, 40.042839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115073, 0.068338, -0.991004,
		0.841900, -0.522780, -0.133810,
		-0.527221, -0.849724, 0.002624,
		26.869158, 35.468330, 40.043625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.506733, 35.691837, 39.606071>,  <27.238213, 36.063137, 40.041790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.506733, 35.691837, 39.606071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.124146, 35.581654, 39.644619>,  <26.894592, 35.515541, 39.667747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.124146, 35.581654, 39.644619>,  <27.506733, 35.691837, 39.606071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.124146, 35.581654, 39.644619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107308, 0.024902, -0.993914,
		0.271389, -0.960988, -0.053378,
		-0.956469, -0.275465, 0.096364,
		26.837204, 35.499016, 39.673527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.397303, 34.959976, 39.294247>,  <27.506733, 35.691837, 39.606071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.397303, 34.959976, 39.294247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.053772, 35.164692, 39.303127>,  <26.847654, 35.287521, 39.308456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.053772, 35.164692, 39.303127>,  <27.397303, 34.959976, 39.294247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.053772, 35.164692, 39.303127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129864, -0.175596, -0.975860,
		-0.495535, -0.840975, 0.217269,
		-0.858825, 0.511788, 0.022199,
		26.796124, 35.318230, 39.309788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.771441, 34.570377, 38.969215>,  <27.397303, 34.959976, 39.294247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.771441, 34.570377, 38.969215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.738983, 34.967209, 38.930866>,  <26.719509, 35.205307, 38.907856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.738983, 34.967209, 38.930866>,  <26.771441, 34.570377, 38.969215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.738983, 34.967209, 38.930866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088662, -0.088625, -0.992111,
		-0.992751, -0.089003, -0.080769,
		-0.081143, 0.992081, -0.095874,
		26.714640, 35.264832, 38.902103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.276159, 34.802197, 38.443630>,  <26.771441, 34.570377, 38.969215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.276159, 34.802197, 38.443630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.557568, 35.086403, 38.449619>,  <26.726412, 35.256927, 38.453213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.557568, 35.086403, 38.449619>,  <26.276159, 34.802197, 38.443630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.557568, 35.086403, 38.449619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022350, -0.001064, -0.999750,
		-0.710325, 0.703677, -0.016629,
		0.703519, 0.710519, 0.014972,
		26.768623, 35.299557, 38.454109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.993059, 35.470573, 38.078117>,  <26.276159, 34.802197, 38.443630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.993059, 35.470573, 38.078117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.385235, 35.545437, 38.053749>,  <26.620541, 35.590355, 38.039127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.385235, 35.545437, 38.053749>,  <25.993059, 35.470573, 38.078117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.385235, 35.545437, 38.053749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106837, 0.246081, -0.963343,
		-0.165304, 0.951008, 0.261262,
		0.980439, 0.187157, -0.060925,
		26.679367, 35.601585, 38.035473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.057861, 36.071655, 37.697620>,  <25.993059, 35.470573, 38.078117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.057861, 36.071655, 37.697620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.432928, 35.932800, 37.690971>,  <26.657969, 35.849487, 37.686981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.432928, 35.932800, 37.690971>,  <26.057861, 36.071655, 37.697620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.432928, 35.932800, 37.690971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076825, 0.253674, -0.964234,
		0.338937, 0.902854, 0.264530,
		0.937667, -0.347137, -0.016618,
		26.714228, 35.828659, 37.685986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.337833, 36.546024, 37.366112>,  <26.057861, 36.071655, 37.697620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.337833, 36.546024, 37.366112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.609091, 36.258785, 37.303558>,  <26.771845, 36.086441, 37.266026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.609091, 36.258785, 37.303558>,  <26.337833, 36.546024, 37.366112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.609091, 36.258785, 37.303558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114493, 0.313410, -0.942691,
		0.725957, 0.621375, 0.294754,
		0.678143, -0.718100, -0.156379,
		26.812534, 36.043354, 37.256645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.965128, 36.766605, 36.987354>,  <26.337833, 36.546024, 37.366112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.965128, 36.766605, 36.987354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.980436, 36.370972, 36.930447>,  <26.989622, 36.133591, 36.896301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.980436, 36.370972, 36.930447>,  <26.965128, 36.766605, 36.987354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.980436, 36.370972, 36.930447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009201, 0.142715, -0.989721,
		0.999225, 0.036569, 0.014562,
		0.038271, -0.989088, -0.142268,
		26.991919, 36.074245, 36.887768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.363937, 36.790569, 36.410595>,  <26.965128, 36.766605, 36.987354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.363937, 36.790569, 36.410595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.138123, 36.462135, 36.444347>,  <27.002634, 36.265076, 36.464600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.138123, 36.462135, 36.444347>,  <27.363937, 36.790569, 36.410595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.138123, 36.462135, 36.444347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280611, 0.094774, -0.955131,
		0.776243, -0.562888, -0.283908,
		-0.564539, -0.821082, 0.084385,
		26.968761, 36.215813, 36.469662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.841463, 36.831974, 35.914314>,  <27.363937, 36.790569, 36.410595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.841463, 36.831974, 35.914314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.047459, 37.112988, 36.110779>,  <28.171057, 37.281593, 36.228657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.047459, 37.112988, 36.110779>,  <27.841463, 36.831974, 35.914314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.047459, 37.112988, 36.110779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.835648, -0.539126, -0.105054,
		0.190992, 0.464536, -0.864713,
		0.514990, 0.702531, 0.491157,
		28.201956, 37.323746, 36.258125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.369461, 36.938011, 35.568768>,  <27.841463, 36.831974, 35.914314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.369461, 36.938011, 35.568768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.465460, 37.073372, 35.932720>,  <28.523060, 37.154587, 36.151093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.465460, 37.073372, 35.932720>,  <28.369461, 36.938011, 35.568768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.465460, 37.073372, 35.932720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.870136, -0.490559, -0.047066,
		0.430425, 0.803018, -0.412186,
		0.239997, 0.338399, 0.909883,
		28.537458, 37.174892, 36.205685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.083380, 37.161217, 35.537392>,  <28.369461, 36.938011, 35.568768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.083380, 37.161217, 35.537392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.023602, 37.091484, 35.926704>,  <28.987736, 37.049644, 36.160294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.023602, 37.091484, 35.926704>,  <29.083380, 37.161217, 35.537392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.023602, 37.091484, 35.926704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.864760, -0.500327, 0.043165,
		0.479434, 0.848105, 0.225525,
		-0.149445, -0.174330, 0.973281,
		28.978767, 37.039185, 36.218689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.745144, 37.029629, 35.747677>,  <29.083380, 37.161217, 35.537392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.745144, 37.029629, 35.747677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.523849, 36.927975, 36.065002>,  <29.391073, 36.866982, 36.255398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.523849, 36.927975, 36.065002>,  <29.745144, 37.029629, 35.747677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.523849, 36.927975, 36.065002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.691138, -0.671668, 0.266813,
		0.465038, 0.695900, 0.547232,
		-0.553234, -0.254135, 0.793314,
		29.357880, 36.851734, 36.302998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.229095, 37.244453, 36.351196>,  <29.745144, 37.029629, 35.747677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.229095, 37.244453, 36.351196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.982195, 36.934792, 36.407330>,  <29.834055, 36.748997, 36.441010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.982195, 36.934792, 36.407330>,  <30.229095, 37.244453, 36.351196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.982195, 36.934792, 36.407330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.782722, -0.586160, 0.209196,
		-0.079691, 0.238969, 0.967752,
		-0.617249, -0.774151, 0.140335,
		29.797020, 36.702545, 36.449429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.565159, 36.901249, 36.832375>,  <30.229095, 37.244453, 36.351196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.565159, 36.901249, 36.832375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.303232, 36.666527, 36.641850>,  <30.146076, 36.525696, 36.527534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.303232, 36.666527, 36.641850>,  <30.565159, 36.901249, 36.832375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.303232, 36.666527, 36.641850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.753661, -0.554231, -0.353304,
		-0.056670, -0.590330, 0.805170,
		-0.654816, -0.586804, -0.476317,
		30.106787, 36.490486, 36.498955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.701385, 36.096977, 36.994972>,  <30.565159, 36.901249, 36.832375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.701385, 36.096977, 36.994972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.555250, 36.204716, 36.638550>,  <30.467569, 36.269360, 36.424698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.555250, 36.204716, 36.638550>,  <30.701385, 36.096977, 36.994972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.555250, 36.204716, 36.638550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.604596, -0.659185, -0.447146,
		-0.707809, -0.702087, 0.077975,
		-0.365335, 0.269351, -0.891056,
		30.445650, 36.285522, 36.371235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.418098, 35.462124, 36.531189>,  <30.701385, 36.096977, 36.994972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.418098, 35.462124, 36.531189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.589289, 35.771133, 36.343555>,  <30.692003, 35.956539, 36.230976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.589289, 35.771133, 36.343555>,  <30.418098, 35.462124, 36.531189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.589289, 35.771133, 36.343555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.705303, -0.610020, -0.361141,
		-0.565142, -0.176289, -0.805938,
		0.427974, 0.772527, -0.469085,
		30.717680, 36.002892, 36.202831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.796541, 35.158249, 35.992393>,  <30.418098, 35.462124, 36.531189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.796541, 35.158249, 35.992393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.932188, 35.534546, 35.991852>,  <31.013577, 35.760323, 35.991528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.932188, 35.534546, 35.991852>,  <30.796541, 35.158249, 35.992393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.932188, 35.534546, 35.991852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.783991, -0.283406, -0.552304,
		-0.519960, 0.186235, -0.833642,
		0.339118, 0.940743, -0.001354,
		31.033924, 35.816769, 35.991447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.949480, 35.345444, 35.313480>,  <30.796541, 35.158249, 35.992393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.949480, 35.345444, 35.313480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.165796, 35.608234, 35.523594>,  <31.295586, 35.765911, 35.649662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.165796, 35.608234, 35.523594>,  <30.949480, 35.345444, 35.313480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.165796, 35.608234, 35.523594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.800746, -0.210855, -0.560666,
		-0.257586, 0.723823, -0.640101,
		0.540791, 0.656979, 0.525285,
		31.328033, 35.805328, 35.681179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.294445, 35.817268, 34.854488>,  <30.949480, 35.345444, 35.313480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.294445, 35.817268, 34.854488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.509737, 35.741714, 35.183033>,  <31.638912, 35.696381, 35.380157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.509737, 35.741714, 35.183033>,  <31.294445, 35.817268, 34.854488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.509737, 35.741714, 35.183033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.736704, -0.367921, -0.567364,
		0.409361, 0.910471, -0.058875,
		0.538230, -0.188883, 0.821360,
		31.671206, 35.685051, 35.429440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.894016, 35.527103, 34.548332>,  <31.294445, 35.817268, 34.854488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.894016, 35.527103, 34.548332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.985529, 35.567978, 34.935574>,  <32.040436, 35.592503, 35.167919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.985529, 35.567978, 34.935574>,  <31.894016, 35.527103, 34.548332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.985529, 35.567978, 34.935574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.859995, -0.487198, -0.151810,
		0.456143, 0.867292, -0.199345,
		0.228784, 0.102189, 0.968099,
		32.054165, 35.598633, 35.226002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.606373, 35.838333, 34.653103>,  <31.894016, 35.527103, 34.548332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.606373, 35.838333, 34.653103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.510990, 35.564278, 34.928410>,  <32.453762, 35.399845, 35.093594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.510990, 35.564278, 34.928410>,  <32.606373, 35.838333, 34.653103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.510990, 35.564278, 34.928410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.952008, -0.304943, 0.026271,
		0.191885, 0.661505, 0.724977,
		-0.238455, -0.685143, 0.688272,
		32.439453, 35.358734, 35.134892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.052036, 35.922211, 35.212349>,  <32.606373, 35.838333, 34.653103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.052036, 35.922211, 35.212349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.923050, 35.555775, 35.117027>,  <32.845657, 35.335911, 35.059834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.923050, 35.555775, 35.117027>,  <33.052036, 35.922211, 35.212349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.923050, 35.555775, 35.117027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.930354, -0.260312, -0.258222,
		0.174522, -0.304976, 0.936233,
		-0.322464, -0.916094, -0.238305,
		32.826309, 35.280945, 35.045536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.513531, 35.613281, 35.550323>,  <33.052036, 35.922211, 35.212349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.513531, 35.613281, 35.550323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.339554, 35.371864, 35.283020>,  <33.235168, 35.227016, 35.122639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.339554, 35.371864, 35.283020>,  <33.513531, 35.613281, 35.550323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.339554, 35.371864, 35.283020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.895397, -0.368461, -0.250002,
		-0.095340, -0.707091, 0.700666,
		-0.434942, -0.603539, -0.668256,
		33.209072, 35.190804, 35.082542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.698330, 34.874729, 35.644661>,  <33.513531, 35.613281, 35.550323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.698330, 34.874729, 35.644661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.629498, 34.972538, 35.262959>,  <33.588200, 35.031223, 35.033939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.629498, 34.972538, 35.262959>,  <33.698330, 34.874729, 35.644661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.629498, 34.972538, 35.262959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.910668, -0.329863, -0.248746,
		-0.375596, -0.911812, -0.165914,
		-0.172081, 0.244521, -0.954252,
		33.577873, 35.045895, 34.976685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.816013, 34.296116, 35.063927>,  <33.698330, 34.874729, 35.644661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.816013, 34.296116, 35.063927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.863029, 34.642418, 34.869343>,  <33.891239, 34.850201, 34.752590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.863029, 34.642418, 34.869343>,  <33.816013, 34.296116, 35.063927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.863029, 34.642418, 34.869343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.790526, -0.378054, -0.481813,
		-0.601043, -0.327927, -0.728842,
		0.117542, 0.865759, -0.486462,
		33.898293, 34.902145, 34.723404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.870312, 34.108547, 34.354836>,  <33.816013, 34.296116, 35.063927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.870312, 34.108547, 34.354836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.026329, 34.474247, 34.398689>,  <34.119938, 34.693665, 34.425003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.026329, 34.474247, 34.398689>,  <33.870312, 34.108547, 34.354836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.026329, 34.474247, 34.398689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.740113, -0.240438, -0.628030,
		-0.547815, 0.326100, -0.770427,
		0.390040, 0.914248, 0.109635,
		34.143341, 34.748520, 34.431580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.103737, 34.375118, 33.767986>,  <33.870312, 34.108547, 34.354836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.103737, 34.375118, 33.767986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.313816, 34.598564, 34.024773>,  <34.439865, 34.732632, 34.178844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.313816, 34.598564, 34.024773>,  <34.103737, 34.375118, 33.767986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.313816, 34.598564, 34.024773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.752735, 0.046913, -0.656650,
		-0.396929, 0.828101, -0.395848,
		0.525202, 0.558612, 0.641962,
		34.471378, 34.766148, 34.217361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.382298, 34.863899, 33.356224>,  <34.103737, 34.375118, 33.767986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.382298, 34.863899, 33.356224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.608414, 34.876411, 33.685944>,  <34.744083, 34.883919, 33.883778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.608414, 34.876411, 33.685944>,  <34.382298, 34.863899, 33.356224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.608414, 34.876411, 33.685944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.811786, -0.198538, -0.549169,
		0.146476, 0.979594, -0.137624,
		0.565286, 0.031281, 0.824301,
		34.778000, 34.885796, 33.933235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.051186, 35.286011, 33.241211>,  <34.382298, 34.863899, 33.356224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.051186, 35.286011, 33.241211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.109432, 35.052971, 33.561054>,  <35.144379, 34.913147, 33.752960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.109432, 35.052971, 33.561054>,  <35.051186, 35.286011, 33.241211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.109432, 35.052971, 33.561054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.775504, -0.434642, -0.457909,
		0.614321, 0.686778, 0.388518,
		0.145615, -0.582600, 0.799608,
		35.153118, 34.878189, 33.800938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.794044, 35.207737, 33.374413>,  <35.051186, 35.286011, 33.241211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.794044, 35.207737, 33.374413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.635399, 34.903103, 33.579422>,  <35.540211, 34.720322, 33.702427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.635399, 34.903103, 33.579422>,  <35.794044, 35.207737, 33.374413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.635399, 34.903103, 33.579422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.623270, -0.633308, -0.458755,
		0.673967, 0.137492, 0.725854,
		-0.396614, -0.761589, 0.512524,
		35.516415, 34.674625, 33.733177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.374573, 34.816132, 33.575996>,  <35.794044, 35.207737, 33.374413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.374573, 34.816132, 33.575996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.070248, 34.559502, 33.615063>,  <35.887653, 34.405521, 33.638500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.070248, 34.559502, 33.615063>,  <36.374573, 34.816132, 33.575996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.070248, 34.559502, 33.615063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567006, -0.730365, -0.380883,
		0.315696, -0.234406, 0.919451,
		-0.760816, -0.641577, 0.097664,
		35.842003, 34.367027, 33.644363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.740547, 34.170551, 33.715004>,  <36.374573, 34.816132, 33.575996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.740547, 34.170551, 33.715004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.382988, 34.074184, 33.563793>,  <36.168453, 34.016365, 33.473068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.382988, 34.074184, 33.563793>,  <36.740547, 34.170551, 33.715004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.382988, 34.074184, 33.563793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442096, -0.613220, -0.654608,
		-0.074107, -0.752277, 0.654665,
		-0.893901, -0.240914, -0.378023,
		36.114819, 34.001911, 33.450386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.757889, 33.440575, 33.685169>,  <36.740547, 34.170551, 33.715004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.757889, 33.440575, 33.685169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.469757, 33.575539, 33.442757>,  <36.296879, 33.656517, 33.297310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.469757, 33.575539, 33.442757>,  <36.757889, 33.440575, 33.685169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.469757, 33.575539, 33.442757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294313, -0.642487, -0.707525,
		-0.628100, -0.688013, 0.363495,
		-0.720326, 0.337415, -0.606037,
		36.253658, 33.676762, 33.260944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.526379, 32.846794, 33.340366>,  <36.757889, 33.440575, 33.685169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.526379, 32.846794, 33.340366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.414463, 33.136818, 33.088650>,  <36.347313, 33.310833, 32.937618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.414463, 33.136818, 33.088650>,  <36.526379, 32.846794, 33.340366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.414463, 33.136818, 33.088650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097128, -0.630731, -0.769899,
		-0.955136, -0.276532, 0.106049,
		-0.279790, 0.725057, -0.629293,
		36.330524, 33.354336, 32.899860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.172832, 32.563385, 32.897339>,  <36.526379, 32.846794, 33.340366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.172832, 32.563385, 32.897339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.228550, 32.910126, 32.705856>,  <36.261978, 33.118172, 32.590965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.228550, 32.910126, 32.705856>,  <36.172832, 32.563385, 32.897339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.228550, 32.910126, 32.705856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043717, -0.488331, -0.871563,
		-0.989286, 0.100474, -0.105917,
		0.139292, 0.866855, -0.478706,
		36.270336, 33.170181, 32.562244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.629971, 32.582413, 32.403725>,  <36.172832, 32.563385, 32.897339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.629971, 32.582413, 32.403725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.946301, 32.795414, 32.283035>,  <36.136101, 32.923214, 32.210621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.946301, 32.795414, 32.283035>,  <35.629971, 32.582413, 32.403725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.946301, 32.795414, 32.283035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016784, -0.511659, -0.859024,
		-0.611807, 0.674277, -0.413572,
		0.790829, 0.532499, -0.301720,
		36.183548, 32.955162, 32.192520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.472622, 32.660187, 31.745420>,  <35.629971, 32.582413, 32.403725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.472622, 32.660187, 31.745420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.859241, 32.762589, 31.751596>,  <36.091213, 32.824028, 31.755302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.859241, 32.762589, 31.751596>,  <35.472622, 32.660187, 31.745420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.859241, 32.762589, 31.751596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128029, -0.429462, -0.893964,
		-0.222226, 0.866040, -0.447874,
		0.966553, 0.256003, 0.015440,
		36.149208, 32.839390, 31.756229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.579613, 32.963100, 31.092899>,  <35.472622, 32.660187, 31.745420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.579613, 32.963100, 31.092899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.924702, 32.813385, 31.228907>,  <36.131756, 32.723557, 31.310511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.924702, 32.813385, 31.228907>,  <35.579613, 32.963100, 31.092899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.924702, 32.813385, 31.228907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150737, -0.451486, -0.879454,
		0.482684, 0.809980, -0.333089,
		0.862725, -0.374289, 0.340019,
		36.183517, 32.701099, 31.330912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.107273, 33.129162, 30.553635>,  <35.579613, 32.963100, 31.092899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.107273, 33.129162, 30.553635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.254765, 32.833401, 30.778963>,  <36.343258, 32.655945, 30.914160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.254765, 32.833401, 30.778963>,  <36.107273, 33.129162, 30.553635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.254765, 32.833401, 30.778963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113348, -0.565734, -0.816760,
		0.922601, 0.365014, -0.124792,
		0.368728, -0.739399, 0.563320,
		36.365383, 32.611580, 30.947960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.629257, 32.905514, 30.187023>,  <36.107273, 33.129162, 30.553635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.629257, 32.905514, 30.187023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.537907, 32.609962, 30.440605>,  <36.483097, 32.432632, 30.592754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.537907, 32.609962, 30.440605>,  <36.629257, 32.905514, 30.187023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.537907, 32.609962, 30.440605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219990, -0.673486, -0.705706,
		0.948393, -0.021702, 0.316354,
		-0.228375, -0.738881, 0.633955,
		36.469395, 32.388298, 30.630793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.154297, 32.392342, 30.011639>,  <36.629257, 32.905514, 30.187023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.154297, 32.392342, 30.011639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.886562, 32.170609, 30.209505>,  <36.725922, 32.037567, 30.328224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.886562, 32.170609, 30.209505>,  <37.154297, 32.392342, 30.011639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.886562, 32.170609, 30.209505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174544, -0.764501, -0.620542,
		0.722163, -0.329012, 0.608467,
		-0.669339, -0.554337, 0.494667,
		36.685760, 32.004307, 30.357904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.482864, 31.735994, 30.264999>,  <37.154297, 32.392342, 30.011639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.482864, 31.735994, 30.264999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.091507, 31.653980, 30.254429>,  <36.856693, 31.604773, 30.248087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.091507, 31.653980, 30.254429>,  <37.482864, 31.735994, 30.264999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.091507, 31.653980, 30.254429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190864, -0.846773, -0.496535,
		0.079428, -0.490852, 0.867614,
		-0.978398, -0.205036, -0.026428,
		36.797989, 31.592470, 30.246500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.563957, 31.004538, 30.159250>,  <37.482864, 31.735994, 30.264999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.563957, 31.004538, 30.159250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.187458, 31.098421, 30.062113>,  <36.961559, 31.154751, 30.003830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.187458, 31.098421, 30.062113>,  <37.563957, 31.004538, 30.159250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.187458, 31.098421, 30.062113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063493, -0.829200, -0.555334,
		-0.331707, -0.507286, 0.795382,
		-0.941244, 0.234709, -0.242842,
		36.905087, 31.168835, 29.989260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.294201, 30.387640, 30.123236>,  <37.563957, 31.004538, 30.159250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.294201, 30.387640, 30.123236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.021282, 30.610666, 29.934093>,  <36.857533, 30.744482, 29.820608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.021282, 30.610666, 29.934093>,  <37.294201, 30.387640, 30.123236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.021282, 30.610666, 29.934093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099202, -0.711423, -0.695727,
		-0.724323, -0.427776, 0.540707,
		-0.682287, 0.557570, -0.472864,
		36.816593, 30.777935, 29.792236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.681446, 29.857597, 29.897726>,  <37.294201, 30.387640, 30.123236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.681446, 29.857597, 29.897726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.638027, 30.178879, 29.663433>,  <36.611977, 30.371647, 29.522858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.638027, 30.178879, 29.663433>,  <36.681446, 29.857597, 29.897726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.638027, 30.178879, 29.663433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095678, -0.594920, -0.798070,
		-0.989476, -0.030588, 0.141427,
		-0.108549, 0.803202, -0.585733,
		36.605461, 30.419840, 29.487713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.189419, 29.685879, 29.319420>,  <36.681446, 29.857597, 29.897726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.189419, 29.685879, 29.319420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.381271, 30.005701, 29.174831>,  <36.496384, 30.197596, 29.088079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.381271, 30.005701, 29.174831>,  <36.189419, 29.685879, 29.319420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.381271, 30.005701, 29.174831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097361, -0.457895, -0.883659,
		-0.872051, 0.388639, -0.297467,
		0.479633, 0.799558, -0.361469,
		36.525162, 30.245569, 29.066391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.903469, 29.651789, 28.595295>,  <36.189419, 29.685879, 29.319420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.903469, 29.651789, 28.595295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.222980, 29.891932, 28.579683>,  <36.414688, 30.036018, 28.570316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.222980, 29.891932, 28.579683>,  <35.903469, 29.651789, 28.595295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.222980, 29.891932, 28.579683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207655, -0.336010, -0.918682,
		-0.564652, 0.725719, -0.393065,
		0.798778, 0.600358, -0.039030,
		36.462616, 30.072039, 28.567974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.914703, 29.930389, 27.949940>,  <35.903469, 29.651789, 28.595295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.914703, 29.930389, 27.949940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.295967, 29.941286, 28.070431>,  <36.524727, 29.947824, 28.142725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.295967, 29.941286, 28.070431>,  <35.914703, 29.930389, 27.949940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.295967, 29.941286, 28.070431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283310, -0.429150, -0.857651,
		0.105906, 0.902822, -0.416768,
		0.953163, 0.027244, 0.301228,
		36.581917, 29.949459, 28.160799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.309898, 30.242466, 27.403143>,  <35.914703, 29.930389, 27.949940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.309898, 30.242466, 27.403143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.533039, 30.022614, 27.651884>,  <36.666924, 29.890701, 27.801128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.533039, 30.022614, 27.651884>,  <36.309898, 30.242466, 27.403143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.533039, 30.022614, 27.651884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447242, -0.432088, -0.783119,
		0.699123, 0.714985, 0.004777,
		0.557854, -0.549633, 0.621854,
		36.700394, 29.857723, 27.838440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.899288, 30.317633, 27.136082>,  <36.309898, 30.242466, 27.403143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.899288, 30.317633, 27.136082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.914589, 29.991081, 27.366581>,  <36.923771, 29.795151, 27.504881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.914589, 29.991081, 27.366581>,  <36.899288, 30.317633, 27.136082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.914589, 29.991081, 27.366581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573984, -0.454096, -0.681424,
		0.817972, 0.356826, 0.451217,
		0.038254, -0.816378, 0.576250,
		36.926064, 29.746168, 27.539455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.578835, 30.218651, 27.173550>,  <36.899288, 30.317633, 27.136082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.578835, 30.218651, 27.173550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.395710, 29.870890, 27.247900>,  <37.285835, 29.662233, 27.292511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.395710, 29.870890, 27.247900>,  <37.578835, 30.218651, 27.173550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.395710, 29.870890, 27.247900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480982, -0.418038, -0.770649,
		0.747708, -0.263408, 0.609549,
		-0.457810, -0.869402, 0.185876,
		37.258366, 29.610069, 27.303663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.159046, 29.715736, 27.126076>,  <37.578835, 30.218651, 27.173550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.159046, 29.715736, 27.126076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.833225, 29.485632, 27.096188>,  <37.637733, 29.347569, 27.078255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.833225, 29.485632, 27.096188>,  <38.159046, 29.715736, 27.126076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.833225, 29.485632, 27.096188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483637, -0.602323, -0.635061,
		0.320319, -0.553427, 0.768840,
		-0.814549, -0.575262, -0.074722,
		37.588860, 29.313053, 27.073771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.384636, 28.990213, 27.269064>,  <38.159046, 29.715736, 27.126076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.384636, 28.990213, 27.269064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.037964, 28.953678, 27.072891>,  <37.829960, 28.931757, 26.955189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.037964, 28.953678, 27.072891>,  <38.384636, 28.990213, 27.269064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.037964, 28.953678, 27.072891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435275, -0.618751, -0.653974,
		-0.243720, -0.780259, 0.576017,
		-0.866681, -0.091339, -0.490430,
		37.777958, 28.926277, 26.925762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.291168, 28.256163, 27.116135>,  <38.384636, 28.990213, 27.269064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.291168, 28.256163, 27.116135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.036007, 28.418066, 26.854067>,  <37.882908, 28.515207, 26.696825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.036007, 28.418066, 26.854067>,  <38.291168, 28.256163, 27.116135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.036007, 28.418066, 26.854067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368063, -0.587054, -0.721039,
		-0.676468, -0.701098, 0.225507,
		-0.637903, 0.404759, -0.655172,
		37.844635, 28.539494, 26.657516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.908009, 27.780127, 26.723618>,  <38.291168, 28.256163, 27.116135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.908009, 27.780127, 26.723618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.909374, 28.120752, 26.513924>,  <37.910194, 28.325129, 26.388107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.909374, 28.120752, 26.513924>,  <37.908009, 27.780127, 26.723618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.909374, 28.120752, 26.513924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423603, -0.476111, -0.770635,
		-0.905841, -0.219438, -0.362351,
		0.003413, 0.851566, -0.524236,
		37.910397, 28.376223, 26.356653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.710423, 27.599888, 26.010315>,  <37.908009, 27.780127, 26.723618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.710423, 27.599888, 26.010315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.896999, 27.953705, 26.008474>,  <38.008945, 28.165995, 26.007370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.896999, 27.953705, 26.008474>,  <37.710423, 27.599888, 26.010315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.896999, 27.953705, 26.008474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422251, -0.227227, -0.877537,
		-0.777264, 0.407374, -0.479486,
		0.466438, 0.884542, -0.004601,
		38.036930, 28.219067, 26.007093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.761547, 27.719194, 25.368181>,  <37.710423, 27.599888, 26.010315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.761547, 27.719194, 25.368181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.030090, 27.976652, 25.515154>,  <38.191216, 28.131126, 25.603336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.030090, 27.976652, 25.515154>,  <37.761547, 27.719194, 25.368181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.030090, 27.976652, 25.515154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558511, -0.113482, -0.821698,
		-0.487185, 0.756864, -0.435669,
		0.671354, 0.643645, 0.367430,
		38.231495, 28.169746, 25.625383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.839039, 28.241575, 24.877932>,  <37.761547, 27.719194, 25.368181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.839039, 28.241575, 24.877932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.173706, 28.283024, 25.093061>,  <38.374504, 28.307894, 25.222139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.173706, 28.283024, 25.093061>,  <37.839039, 28.241575, 24.877932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.173706, 28.283024, 25.093061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503522, 0.240901, -0.829718,
		-0.215540, 0.965002, 0.149377,
		0.836665, 0.103622, 0.537823,
		38.424706, 28.314110, 25.254408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.224735, 28.732338, 24.597214>,  <37.839039, 28.241575, 24.877932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.224735, 28.732338, 24.597214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.517612, 28.579826, 24.822962>,  <38.693340, 28.488319, 24.958410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.517612, 28.579826, 24.822962>,  <38.224735, 28.732338, 24.597214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.517612, 28.579826, 24.822962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.639867, 0.101167, -0.761797,
		0.233360, 0.918909, 0.318041,
		0.732197, -0.381277, 0.564372,
		38.737270, 28.465443, 24.992273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.691990, 29.157875, 24.504213>,  <38.224735, 28.732338, 24.597214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.691990, 29.157875, 24.504213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.868103, 28.828222, 24.646738>,  <38.973770, 28.630430, 24.732252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.868103, 28.828222, 24.646738>,  <38.691990, 29.157875, 24.504213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.868103, 28.828222, 24.646738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565397, -0.053796, -0.823063,
		0.697482, 0.563834, 0.442278,
		0.440278, -0.824134, 0.356312,
		39.000187, 28.580982, 24.753632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.405712, 29.339046, 24.493845>,  <38.691990, 29.157875, 24.504213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.405712, 29.339046, 24.493845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.376812, 28.940861, 24.469099>,  <39.359470, 28.701948, 24.454252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.376812, 28.940861, 24.469099>,  <39.405712, 29.339046, 24.493845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.376812, 28.940861, 24.469099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499283, 0.017597, -0.866260,
		0.863421, -0.093477, 0.495748,
		-0.072251, -0.995466, -0.061865,
		39.355137, 28.642221, 24.450539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.062035, 29.089314, 24.461617>,  <39.405712, 29.339046, 24.493845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.062035, 29.089314, 24.461617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.832073, 28.801704, 24.305416>,  <39.694096, 28.629139, 24.211697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.832073, 28.801704, 24.305416>,  <40.062035, 29.089314, 24.461617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.832073, 28.801704, 24.305416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617231, -0.067805, -0.783855,
		0.537131, -0.691672, 0.482784,
		-0.574906, -0.719022, -0.390501,
		39.659603, 28.585999, 24.188265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.517555, 28.589039, 24.072403>,  <40.062035, 29.089314, 24.461617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.517555, 28.589039, 24.072403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.148418, 28.500774, 23.946119>,  <39.926937, 28.447815, 23.870350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.148418, 28.500774, 23.946119>,  <40.517555, 28.589039, 24.072403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.148418, 28.500774, 23.946119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357855, -0.187965, -0.914663,
		0.142489, -0.957067, 0.252427,
		-0.922842, -0.220662, -0.315708,
		39.871567, 28.434576, 23.851406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.641872, 28.041256, 23.559080>,  <40.517555, 28.589039, 24.072403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.641872, 28.041256, 23.559080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.278675, 28.187160, 23.476614>,  <40.060757, 28.274702, 23.427135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.278675, 28.187160, 23.476614>,  <40.641872, 28.041256, 23.559080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.278675, 28.187160, 23.476614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038560, -0.417213, -0.907990,
		-0.417213, -0.832396, 0.364760,
		0.907990, -0.364760, 0.206164,
		40.006279, 28.296589, 23.414764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.330612, 27.500706, 23.212910>,  <40.641872, 28.041256, 23.559080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.330612, 27.500706, 23.212910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.159046, 27.846064, 23.106638>,  <40.056107, 28.053278, 23.042875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.159046, 27.846064, 23.106638>,  <40.330612, 27.500706, 23.212910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.159046, 27.846064, 23.106638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008840, -0.290081, -0.956961,
		-0.903303, -0.412801, 0.116787,
		-0.428912, 0.863394, -0.265680,
		40.030373, 28.105082, 23.026934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.739677, 27.352270, 22.675821>,  <40.330612, 27.500706, 23.212910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.739677, 27.352270, 22.675821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.886578, 27.722153, 22.635731>,  <39.974716, 27.944082, 22.611677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.886578, 27.722153, 22.635731>,  <39.739677, 27.352270, 22.675821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.886578, 27.722153, 22.635731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112129, -0.150984, -0.982156,
		-0.923338, 0.349460, -0.159136,
		0.367252, 0.924706, -0.100225,
		39.996754, 27.999565, 22.605663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.314644, 27.815184, 22.259861>,  <39.739677, 27.352270, 22.675821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.314644, 27.815184, 22.259861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.709167, 27.878773, 22.242331>,  <39.945881, 27.916925, 22.231812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.709167, 27.878773, 22.242331>,  <39.314644, 27.815184, 22.259861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.709167, 27.878773, 22.242331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031157, -0.081344, -0.996199,
		-0.161934, 0.983926, -0.075277,
		0.986310, 0.158973, -0.043828,
		40.005062, 27.926464, 22.229181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.743912, 27.553637, 21.986591>,  <39.314644, 27.815184, 22.259861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.743912, 27.553637, 21.986591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.701275, 27.234222, 22.223564>,  <38.675694, 27.042574, 22.365747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.701275, 27.234222, 22.223564>,  <38.743912, 27.553637, 21.986591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.701275, 27.234222, 22.223564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058260, -0.599819, -0.798012,
		0.992594, -0.050550, 0.110462,
		-0.106597, -0.798538, 0.592431,
		38.669296, 26.994661, 22.401293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.957935, 27.698704, 21.366264>,  <38.743912, 27.553637, 21.986591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.957935, 27.698704, 21.366264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.622231, 27.912033, 21.323923>,  <38.420807, 28.040031, 21.298517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.622231, 27.912033, 21.323923>,  <38.957935, 27.698704, 21.366264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.622231, 27.912033, 21.323923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323944, 0.334091, -0.885124,
		-0.436694, -0.777140, -0.453157,
		-0.839261, 0.533326, -0.105854,
		38.370453, 28.072031, 21.292168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.441315, 27.391533, 20.783123>,  <38.957935, 27.698704, 21.366264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.441315, 27.391533, 20.783123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.523708, 27.775890, 20.857155>,  <38.573143, 28.006504, 20.901575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.523708, 27.775890, 20.857155>,  <38.441315, 27.391533, 20.783123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.523708, 27.775890, 20.857155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.670581, -0.000863, -0.741836,
		-0.712666, 0.276917, -0.644534,
		0.205983, 0.960893, 0.185081,
		38.585503, 28.064157, 20.912680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.543377, 27.904324, 20.124504>,  <38.441315, 27.391533, 20.783123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.543377, 27.904324, 20.124504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.773815, 27.953300, 20.447769>,  <38.912079, 27.982687, 20.641727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.773815, 27.953300, 20.447769>,  <38.543377, 27.904324, 20.124504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.773815, 27.953300, 20.447769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.802747, -0.271022, -0.531172,
		0.153992, 0.954754, -0.254423,
		0.576093, 0.122441, 0.808161,
		38.946644, 27.990032, 20.690218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.133743, 28.261602, 19.810907>,  <38.543377, 27.904324, 20.124504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.133743, 28.261602, 19.810907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.219753, 28.086515, 20.160116>,  <39.271358, 27.981462, 20.369642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.219753, 28.086515, 20.160116>,  <39.133743, 28.261602, 19.810907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.219753, 28.086515, 20.160116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.943862, -0.136402, -0.300865,
		0.250776, 0.888705, 0.383815,
		0.215027, -0.437718, 0.873021,
		39.284260, 27.955200, 20.422022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.743721, 28.553762, 20.121151>,  <39.133743, 28.261602, 19.810907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.743721, 28.553762, 20.121151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.649521, 28.173983, 20.204178>,  <39.593002, 27.946114, 20.253994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.649521, 28.173983, 20.204178>,  <39.743721, 28.553762, 20.121151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.649521, 28.173983, 20.204178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.915654, -0.288344, -0.280064,
		0.325757, 0.124103, 0.937273,
		-0.235500, -0.949450, 0.207565,
		39.578869, 27.889147, 20.266447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.218613, 28.506315, 20.708591>,  <39.743721, 28.553762, 20.121151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.218613, 28.506315, 20.708591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.066113, 28.241936, 20.450043>,  <39.974613, 28.083307, 20.294914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.066113, 28.241936, 20.450043>,  <40.218613, 28.506315, 20.708591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.066113, 28.241936, 20.450043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.918504, -0.191491, -0.345950,
		0.104881, -0.725587, 0.680091,
		-0.381248, -0.660950, -0.646371,
		39.951736, 28.043652, 20.256132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.267567, 29.179302, 20.938803>,  <40.218613, 28.506315, 20.708591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.267567, 29.179302, 20.938803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.159008, 29.099432, 21.315413>,  <40.093872, 29.051510, 21.541378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.159008, 29.099432, 21.315413>,  <40.267567, 29.179302, 20.938803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.159008, 29.099432, 21.315413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.639408, 0.768572, -0.021319,
		-0.719374, -0.607806, -0.336264,
		-0.271401, -0.199674, 0.941527,
		40.077587, 29.039530, 21.597870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.714844, 29.592276, 20.999012>,  <40.267567, 29.179302, 20.938803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.714844, 29.592276, 20.999012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.791630, 29.514297, 21.383749>,  <39.837704, 29.467510, 21.614592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.791630, 29.514297, 21.383749>,  <39.714844, 29.592276, 20.999012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.791630, 29.514297, 21.383749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317331, 0.915094, 0.248804,
		-0.928682, -0.352985, 0.113806,
		0.191967, -0.194945, 0.961844,
		39.849220, 29.455814, 21.672302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.126438, 29.815157, 21.312141>,  <39.714844, 29.592276, 20.999012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.126438, 29.815157, 21.312141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.437084, 29.830023, 21.563692>,  <39.623474, 29.838942, 21.714622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.437084, 29.830023, 21.563692>,  <39.126438, 29.815157, 21.312141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.437084, 29.830023, 21.563692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318341, 0.884578, 0.340854,
		-0.543621, -0.464910, 0.698810,
		0.776618, 0.037165, 0.628875,
		39.670071, 29.841173, 21.752354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.892166, 30.160070, 21.878239>,  <39.126438, 29.815157, 21.312141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.892166, 30.160070, 21.878239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.288399, 30.166761, 21.932594>,  <39.526138, 30.170776, 21.965208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.288399, 30.166761, 21.932594>,  <38.892166, 30.160070, 21.878239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.288399, 30.166761, 21.932594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093687, 0.806577, 0.583657,
		-0.099839, -0.590892, 0.800549,
		0.990583, 0.016729, 0.135887,
		39.585575, 30.171780, 21.973360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.930874, 30.080172, 22.514841>,  <38.892166, 30.160070, 21.878239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.930874, 30.080172, 22.514841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.263927, 30.251265, 22.374121>,  <39.463760, 30.353920, 22.289688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.263927, 30.251265, 22.374121>,  <38.930874, 30.080172, 22.514841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.263927, 30.251265, 22.374121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064017, 0.705296, 0.706016,
		0.550109, -0.565333, 0.614637,
		0.832636, 0.427733, -0.351799,
		39.513718, 30.379585, 22.268581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.457157, 30.106354, 22.992952>,  <38.930874, 30.080172, 22.514841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.457157, 30.106354, 22.992952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.515400, 30.420080, 22.751740>,  <39.550346, 30.608316, 22.607012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.515400, 30.420080, 22.751740>,  <39.457157, 30.106354, 22.992952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.515400, 30.420080, 22.751740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013554, 0.611052, 0.791475,
		0.989249, -0.107073, 0.099605,
		0.145609, 0.784316, -0.603031,
		39.559082, 30.655375, 22.570829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.709686, 30.623129, 23.467896>,  <39.457157, 30.106354, 22.992952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.709686, 30.623129, 23.467896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.680595, 30.852341, 23.141375>,  <39.663143, 30.989868, 22.945461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.680595, 30.852341, 23.141375>,  <39.709686, 30.623129, 23.467896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.680595, 30.852341, 23.141375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133980, 0.816665, 0.561345,
		0.988312, -0.068545, -0.136165,
		-0.072723, 0.573027, -0.816303,
		39.658779, 31.024248, 22.896484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.330494, 30.959291, 23.325722>,  <39.709686, 30.623129, 23.467896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.330494, 30.959291, 23.325722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.020687, 31.173376, 23.190861>,  <39.834805, 31.301826, 23.109943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.020687, 31.173376, 23.190861>,  <40.330494, 30.959291, 23.325722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.020687, 31.173376, 23.190861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208411, 0.719157, 0.662855,
		0.597235, 0.443125, -0.668543,
		-0.774516, 0.535213, -0.337153,
		39.788334, 31.333941, 23.089714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.442402, 31.543716, 23.614992>,  <40.330494, 30.959291, 23.325722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.442402, 31.543716, 23.614992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.086597, 31.649122, 23.465685>,  <39.873116, 31.712366, 23.376101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.086597, 31.649122, 23.465685>,  <40.442402, 31.543716, 23.614992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.086597, 31.649122, 23.465685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104768, 0.677541, 0.727985,
		0.444737, 0.686658, -0.575073,
		-0.889513, 0.263513, -0.373267,
		39.819744, 31.728176, 23.353704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.403477, 32.129700, 23.896839>,  <40.442402, 31.543716, 23.614992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.403477, 32.129700, 23.896839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.025215, 32.043869, 23.799109>,  <39.798260, 31.992371, 23.740469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.025215, 32.043869, 23.799109>,  <40.403477, 32.129700, 23.896839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.025215, 32.043869, 23.799109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323333, 0.540555, 0.776696,
		-0.034591, 0.813484, -0.580558,
		-0.945653, -0.214580, -0.244328,
		39.741520, 31.979494, 23.725811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.960129, 32.816261, 24.010229>,  <40.403477, 32.129700, 23.896839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.960129, 32.816261, 24.010229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.691483, 32.524433, 23.958614>,  <39.530293, 32.349335, 23.927645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.691483, 32.524433, 23.958614>,  <39.960129, 32.816261, 24.010229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.691483, 32.524433, 23.958614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485345, 0.301647, 0.820640,
		-0.559792, 0.613786, -0.556686,
		-0.671620, -0.729572, -0.129039,
		39.489998, 32.305561, 23.919903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.256763, 33.153168, 24.090330>,  <39.960129, 32.816261, 24.010229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.256763, 33.153168, 24.090330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.243633, 32.762428, 24.174891>,  <39.235756, 32.527985, 24.225628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.243633, 32.762428, 24.174891>,  <39.256763, 33.153168, 24.090330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.243633, 32.762428, 24.174891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500776, 0.199123, 0.842361,
		-0.864954, -0.078218, -0.495718,
		-0.032821, -0.976848, 0.211402,
		39.233788, 32.469376, 24.238312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.647781, 33.021553, 24.429083>,  <39.256763, 33.153168, 24.090330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.647781, 33.021553, 24.429083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.835243, 32.683559, 24.532124>,  <38.947720, 32.480762, 24.593948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.835243, 32.683559, 24.532124>,  <38.647781, 33.021553, 24.429083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.835243, 32.683559, 24.532124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.586944, -0.079922, 0.805673,
		-0.660194, -0.528784, -0.533415,
		0.468659, -0.844985, 0.257602,
		38.975842, 32.430065, 24.609404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.092964, 32.600510, 24.564459>,  <38.647781, 33.021553, 24.429083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.092964, 32.600510, 24.564459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.432632, 32.461720, 24.723715>,  <38.636433, 32.378445, 24.819267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.432632, 32.461720, 24.723715>,  <38.092964, 32.600510, 24.564459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.432632, 32.461720, 24.723715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438375, -0.042696, 0.897778,
		-0.294512, -0.936900, -0.188363,
		0.849171, -0.346980, 0.398139,
		38.687382, 32.357624, 24.843157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.905655, 32.100254, 24.959398>,  <38.092964, 32.600510, 24.564459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.905655, 32.100254, 24.959398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.249496, 32.224697, 25.121527>,  <38.455803, 32.299362, 25.218803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.249496, 32.224697, 25.121527>,  <37.905655, 32.100254, 24.959398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.249496, 32.224697, 25.121527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455867, 0.108673, 0.883389,
		0.230782, -0.944141, 0.235240,
		0.859608, 0.311109, 0.405322,
		38.507378, 32.318031, 25.243124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.050648, 31.833319, 25.638273>,  <37.905655, 32.100254, 24.959398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.050648, 31.833319, 25.638273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.316776, 32.128990, 25.680166>,  <38.476452, 32.306393, 25.705301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.316776, 32.128990, 25.680166>,  <38.050648, 31.833319, 25.638273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.316776, 32.128990, 25.680166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467281, 0.302902, 0.830601,
		0.582239, -0.601553, 0.546930,
		0.665317, 0.739179, 0.104733,
		38.516373, 32.350742, 25.711586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.255531, 31.878466, 26.385962>,  <38.050648, 31.833319, 25.638273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.255531, 31.878466, 26.385962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.341553, 32.233505, 26.223030>,  <38.393166, 32.446529, 26.125271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.341553, 32.233505, 26.223030>,  <38.255531, 31.878466, 26.385962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.341553, 32.233505, 26.223030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463539, 0.459882, 0.757390,
		0.859583, 0.025932, 0.510337,
		0.215054, 0.887601, -0.407328,
		38.406071, 32.499786, 26.100832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.520393, 32.256565, 26.918217>,  <38.255531, 31.878466, 26.385962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.520393, 32.256565, 26.918217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.393265, 32.517330, 26.642826>,  <38.316990, 32.673790, 26.477592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.393265, 32.517330, 26.642826>,  <38.520393, 32.256565, 26.918217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.393265, 32.517330, 26.642826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514799, 0.491128, 0.702691,
		0.796225, 0.577754, 0.179516,
		-0.317818, 0.651915, -0.688476,
		38.297920, 32.712906, 26.436283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.725086, 32.906929, 27.166594>,  <38.520393, 32.256565, 26.918217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.725086, 32.906929, 27.166594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.412521, 32.975674, 26.926641>,  <38.224983, 33.016922, 26.782669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.412521, 32.975674, 26.926641>,  <38.725086, 32.906929, 27.166594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.412521, 32.975674, 26.926641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428264, 0.551485, 0.715859,
		0.453854, 0.816289, -0.357336,
		-0.781413, 0.171862, -0.599881,
		38.178097, 33.027233, 26.746677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.515255, 33.571781, 27.371201>,  <38.725086, 32.906929, 27.166594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.515255, 33.571781, 27.371201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.205360, 33.431793, 27.160561>,  <38.019424, 33.347801, 27.034176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.205360, 33.431793, 27.160561>,  <38.515255, 33.571781, 27.371201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.205360, 33.431793, 27.160561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.632282, 0.432955, 0.642472,
		0.003146, 0.830704, -0.556706,
		-0.774732, -0.349974, -0.526601,
		37.972942, 33.326801, 27.002581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.131569, 34.130539, 27.231607>,  <38.515255, 33.571781, 27.371201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.131569, 34.130539, 27.231607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.875160, 33.826786, 27.187010>,  <37.721313, 33.644535, 27.160252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.875160, 33.826786, 27.187010>,  <38.131569, 34.130539, 27.231607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.875160, 33.826786, 27.187010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.680387, 0.494990, 0.540425,
		-0.355200, 0.422283, -0.833972,
		-0.641020, -0.759383, -0.111495,
		37.682854, 33.598972, 27.153561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.469322, 34.400047, 26.952692>,  <38.131569, 34.130539, 27.231607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.469322, 34.400047, 26.952692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.406063, 34.064915, 27.161703>,  <37.368107, 33.863834, 27.287109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.406063, 34.064915, 27.161703>,  <37.469322, 34.400047, 26.952692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.406063, 34.064915, 27.161703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.670591, 0.479563, 0.565975,
		-0.724773, -0.260891, -0.637683,
		-0.158152, -0.837828, 0.522526,
		37.358616, 33.813568, 27.318460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.788692, 34.568417, 27.210268>,  <37.469322, 34.400047, 26.952692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.788692, 34.568417, 27.210268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.848083, 34.214024, 27.385992>,  <36.883717, 34.001389, 27.491426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.848083, 34.214024, 27.385992>,  <36.788692, 34.568417, 27.210268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.848083, 34.214024, 27.385992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.709337, 0.214117, 0.671561,
		-0.689054, -0.411332, -0.596667,
		0.148478, -0.885980, 0.439311,
		36.892628, 33.948231, 27.517786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.192463, 34.305042, 27.252882>,  <36.788692, 34.568417, 27.210268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.192463, 34.305042, 27.252882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.398869, 34.102356, 27.529135>,  <36.522713, 33.980743, 27.694885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.398869, 34.102356, 27.529135>,  <36.192463, 34.305042, 27.252882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.398869, 34.102356, 27.529135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.725190, 0.170680, 0.667060,
		-0.455888, -0.845047, -0.279395,
		0.516010, -0.506719, 0.690630,
		36.553673, 33.950340, 27.736324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.711594, 33.707588, 27.625139>,  <36.192463, 34.305042, 27.252882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.711594, 33.707588, 27.625139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.022659, 33.783489, 27.864885>,  <36.209297, 33.829029, 28.008734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.022659, 33.783489, 27.864885>,  <35.711594, 33.707588, 27.625139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.022659, 33.783489, 27.864885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.628433, 0.207607, 0.749648,
		0.017815, -0.959632, 0.280694,
		0.777660, 0.189752, 0.599366,
		36.255959, 33.840416, 28.044695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.669212, 33.284149, 28.277048>,  <35.711594, 33.707588, 27.625139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.669212, 33.284149, 28.277048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.904781, 33.595795, 28.362989>,  <36.046124, 33.782780, 28.414555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.904781, 33.595795, 28.362989>,  <35.669212, 33.284149, 28.277048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.904781, 33.595795, 28.362989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.612319, 0.256624, 0.747803,
		0.527483, -0.571955, 0.628195,
		0.588920, 0.779109, 0.214854,
		36.081459, 33.829529, 28.427446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.731636, 33.229477, 28.994671>,  <35.669212, 33.284149, 28.277048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.731636, 33.229477, 28.994671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.829159, 33.604000, 28.893570>,  <35.887672, 33.828712, 28.832909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.829159, 33.604000, 28.893570>,  <35.731636, 33.229477, 28.994671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.829159, 33.604000, 28.893570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.574875, 0.349420, 0.739882,
		0.781075, -0.035083, 0.623450,
		0.243803, 0.936309, -0.252755,
		35.902298, 33.884892, 28.817743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.933399, 33.471569, 29.573914>,  <35.731636, 33.229477, 28.994671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.933399, 33.471569, 29.573914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.837219, 33.784721, 29.344379>,  <35.779510, 33.972610, 29.206659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.837219, 33.784721, 29.344379>,  <35.933399, 33.471569, 29.573914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.837219, 33.784721, 29.344379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489917, 0.412470, 0.768017,
		0.837953, 0.465800, 0.284367,
		-0.240450, 0.782879, -0.573834,
		35.765083, 34.019585, 29.172230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.029175, 34.050129, 29.978588>,  <35.933399, 33.471569, 29.573914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.029175, 34.050129, 29.978588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.797436, 34.212605, 29.695923>,  <35.658394, 34.310089, 29.526325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.797436, 34.212605, 29.695923>,  <36.029175, 34.050129, 29.978588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.797436, 34.212605, 29.695923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442599, 0.571252, 0.691215,
		0.684447, 0.713218, -0.151171,
		-0.579344, 0.406191, -0.706661,
		35.623634, 34.334461, 29.483925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.078487, 34.764725, 30.161520>,  <36.029175, 34.050129, 29.978588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.078487, 34.764725, 30.161520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.784603, 34.711979, 29.895344>,  <35.608273, 34.680332, 29.735638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.784603, 34.711979, 29.895344>,  <36.078487, 34.764725, 30.161520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.784603, 34.711979, 29.895344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.578130, 0.634917, 0.512491,
		0.354919, 0.761244, -0.542716,
		-0.734710, -0.131868, -0.665442,
		35.564190, 34.672421, 29.695711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.753700, 35.451920, 29.998020>,  <36.078487, 34.764725, 30.161520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.753700, 35.451920, 29.998020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.482174, 35.171745, 29.909842>,  <35.319260, 35.003639, 29.856934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.482174, 35.171745, 29.909842>,  <35.753700, 35.451920, 29.998020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.482174, 35.171745, 29.909842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.672354, 0.472177, 0.570078,
		-0.295215, 0.535195, -0.791463,
		-0.678814, -0.700439, -0.220447,
		35.278530, 34.961613, 29.843708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.221218, 35.801510, 29.817268>,  <35.753700, 35.451920, 29.998020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.221218, 35.801510, 29.817268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.055096, 35.449741, 29.910337>,  <34.955421, 35.238682, 29.966179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.055096, 35.449741, 29.910337>,  <35.221218, 35.801510, 29.817268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.055096, 35.449741, 29.910337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.698552, 0.472148, 0.537681,
		-0.582704, 0.060771, -0.810409,
		-0.415308, -0.879422, 0.232671,
		34.930504, 35.185913, 29.980139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.393280, 35.810406, 29.753984>,  <35.221218, 35.801510, 29.817268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.393280, 35.810406, 29.753984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.499760, 35.514431, 30.001089>,  <34.563648, 35.336845, 30.149351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.499760, 35.514431, 30.001089>,  <34.393280, 35.810406, 29.753984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.499760, 35.514431, 30.001089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.588647, 0.382713, 0.712057,
		-0.763305, -0.553189, -0.333687,
		0.266196, -0.739941, 0.617760,
		34.579617, 35.292450, 30.186417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.813847, 35.804733, 30.106869>,  <34.393280, 35.810406, 29.753984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.813847, 35.804733, 30.106869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.067093, 35.586609, 30.326614>,  <34.219040, 35.455734, 30.458462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.067093, 35.586609, 30.326614>,  <33.813847, 35.804733, 30.106869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.067093, 35.586609, 30.326614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356566, 0.424481, 0.832272,
		-0.687042, -0.722808, 0.074305,
		0.633114, -0.545312, 0.549365,
		34.257027, 35.423016, 30.491425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.400509, 35.547138, 30.630283>,  <33.813847, 35.804733, 30.106869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.400509, 35.547138, 30.630283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.784012, 35.554298, 30.743748>,  <34.014114, 35.558594, 30.811827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.784012, 35.554298, 30.743748>,  <33.400509, 35.547138, 30.630283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.784012, 35.554298, 30.743748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244235, 0.562331, 0.790021,
		-0.145373, -0.826718, 0.543510,
		0.958758, 0.017897, 0.283662,
		34.071640, 35.559666, 30.828846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.388023, 35.397919, 31.371796>,  <33.400509, 35.547138, 30.630283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.388023, 35.397919, 31.371796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.747002, 35.568520, 31.326735>,  <33.962387, 35.670879, 31.299698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.747002, 35.568520, 31.326735>,  <33.388023, 35.397919, 31.371796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.747002, 35.568520, 31.326735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201010, 0.622707, 0.756195,
		0.392667, -0.655999, 0.644576,
		0.897445, 0.426499, -0.112654,
		34.016235, 35.696468, 31.292938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.740650, 35.503162, 32.115292>,  <33.388023, 35.397919, 31.371796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.740650, 35.503162, 32.115292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.905048, 35.781849, 31.880117>,  <34.003689, 35.949062, 31.739014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.905048, 35.781849, 31.880117>,  <33.740650, 35.503162, 32.115292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.905048, 35.781849, 31.880117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051869, 0.626002, 0.778094,
		0.910160, -0.350290, 0.221147,
		0.410997, 0.696720, -0.587932,
		34.028347, 35.990864, 31.703737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.126949, 35.801704, 32.567509>,  <33.740650, 35.503162, 32.115292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.126949, 35.801704, 32.567509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.150520, 36.064098, 32.266521>,  <34.164661, 36.221535, 32.085930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.150520, 36.064098, 32.266521>,  <34.126949, 35.801704, 32.567509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.150520, 36.064098, 32.266521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044065, 0.754754, 0.654526,
		0.997289, -0.005411, 0.073381,
		0.058926, 0.655986, -0.752470,
		34.168198, 36.260895, 32.040779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.571686, 36.347290, 32.881561>,  <34.126949, 35.801704, 32.567509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.571686, 36.347290, 32.881561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.406246, 36.539585, 32.572285>,  <34.306984, 36.654961, 32.386719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.406246, 36.539585, 32.572285>,  <34.571686, 36.347290, 32.881561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.406246, 36.539585, 32.572285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104000, 0.818732, 0.564678,
		0.904500, 0.313962, -0.288630,
		-0.413598, 0.480734, -0.773196,
		34.282166, 36.683804, 32.340324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.942734, 36.978642, 32.822788>,  <34.571686, 36.347290, 32.881561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.942734, 36.978642, 32.822788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.595562, 37.048195, 32.636684>,  <34.387260, 37.089928, 32.525021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.595562, 37.048195, 32.636684>,  <34.942734, 36.978642, 32.822788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.595562, 37.048195, 32.636684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124873, 0.830245, 0.543231,
		0.480735, 0.529584, -0.698881,
		-0.867929, 0.173879, -0.465259,
		34.335182, 37.100357, 32.497108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.965923, 37.624805, 32.563141>,  <34.942734, 36.978642, 32.822788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.965923, 37.624805, 32.563141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.577850, 37.534973, 32.599606>,  <34.345005, 37.481071, 32.621483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.577850, 37.534973, 32.599606>,  <34.965923, 37.624805, 32.563141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.577850, 37.534973, 32.599606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150712, 0.853518, 0.498792,
		-0.189826, 0.470180, -0.861915,
		-0.970182, -0.224584, 0.091158,
		34.286797, 37.467598, 32.626953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.994324, 38.145409, 31.920015>,  <34.965923, 37.624805, 32.563141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.994324, 38.145409, 31.920015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.230663, 38.203747, 32.237411>,  <35.372467, 38.238750, 32.427849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.230663, 38.203747, 32.237411>,  <34.994324, 38.145409, 31.920015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.230663, 38.203747, 32.237411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.767331, -0.405374, -0.496865,
		0.249194, 0.902442, -0.351427,
		0.590851, 0.145845, 0.793489,
		35.407917, 38.247501, 32.475460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.584229, 38.528820, 31.689465>,  <34.994324, 38.145409, 31.920015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.584229, 38.528820, 31.689465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.718609, 38.367287, 32.029831>,  <35.799236, 38.270367, 32.234051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.718609, 38.367287, 32.029831>,  <35.584229, 38.528820, 31.689465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.718609, 38.367287, 32.029831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.857575, -0.242441, -0.453638,
		0.389490, 0.882123, 0.264869,
		0.335950, -0.403832, 0.850915,
		35.819393, 38.246136, 32.285107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.238888, 38.873005, 31.886263>,  <35.584229, 38.528820, 31.689465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.238888, 38.873005, 31.886263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.238537, 38.518200, 32.070961>,  <36.238327, 38.305317, 32.181782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.238537, 38.518200, 32.070961>,  <36.238888, 38.873005, 31.886263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.238537, 38.518200, 32.070961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.916299, -0.185637, -0.354873,
		0.400494, 0.422787, 0.812930,
		-0.000874, -0.887012, 0.461746,
		36.238274, 38.252098, 32.209484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.916855, 38.776657, 32.182026>,  <36.238888, 38.873005, 31.886263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.916855, 38.776657, 32.182026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.771782, 38.404076, 32.170364>,  <36.684738, 38.180527, 32.163368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.771782, 38.404076, 32.170364>,  <36.916855, 38.776657, 32.182026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.771782, 38.404076, 32.170364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.888994, -0.336431, -0.310650,
		0.279549, -0.138584, 0.950077,
		-0.362687, -0.931455, -0.029152,
		36.662975, 38.124638, 32.161617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.413673, 38.413757, 32.583286>,  <36.916855, 38.776657, 32.182026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.413673, 38.413757, 32.583286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.229618, 38.139801, 32.357300>,  <37.119186, 37.975426, 32.221706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.229618, 38.139801, 32.357300>,  <37.413673, 38.413757, 32.583286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.229618, 38.139801, 32.357300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.887501, -0.337055, -0.314223,
		0.024784, -0.645998, 0.762937,
		-0.460139, -0.684895, -0.564970,
		37.091576, 37.934334, 32.187809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.864529, 37.735661, 32.593861>,  <37.413673, 38.413757, 32.583286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.864529, 37.735661, 32.593861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.626759, 37.675079, 32.277954>,  <37.484097, 37.638733, 32.088409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.626759, 37.675079, 32.277954>,  <37.864529, 37.735661, 32.593861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.626759, 37.675079, 32.277954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.786365, -0.314896, -0.531479,
		-0.168200, -0.936965, 0.306277,
		-0.594423, -0.151451, -0.789762,
		37.448433, 37.629642, 32.041027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.902527, 37.033817, 32.305058>,  <37.864529, 37.735661, 32.593861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.902527, 37.033817, 32.305058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.796917, 37.264629, 31.995911>,  <37.733551, 37.403118, 31.810421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.796917, 37.264629, 31.995911>,  <37.902527, 37.033817, 32.305058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.796917, 37.264629, 31.995911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.787842, -0.333241, -0.517934,
		-0.556416, -0.745645, -0.366626,
		-0.264020, 0.577030, -0.772871,
		37.717712, 37.437737, 31.764050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.051228, 36.578175, 31.651279>,  <37.902527, 37.033817, 32.305058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.051228, 36.578175, 31.651279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.002377, 36.941288, 31.490770>,  <37.973064, 37.159157, 31.394464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.002377, 36.941288, 31.490770>,  <38.051228, 36.578175, 31.651279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.002377, 36.941288, 31.490770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505413, -0.291072, -0.812302,
		-0.854192, -0.302011, -0.423256,
		-0.122126, 0.907781, -0.401272,
		37.965740, 37.213623, 31.370388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.922825, 36.430485, 30.976959>,  <38.051228, 36.578175, 31.651279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.922825, 36.430485, 30.976959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.970097, 36.823120, 30.916922>,  <37.998459, 37.058701, 30.880899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.970097, 36.823120, 30.916922>,  <37.922825, 36.430485, 30.976959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.970097, 36.823120, 30.916922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502861, -0.189496, -0.843340,
		-0.856251, 0.024186, -0.515994,
		0.118175, 0.981584, -0.150094,
		38.005550, 37.117596, 30.871893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.737602, 36.573357, 30.259666>,  <37.922825, 36.430485, 30.976959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.737602, 36.573357, 30.259666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.010372, 36.840057, 30.379948>,  <38.174034, 37.000076, 30.452116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.010372, 36.840057, 30.379948>,  <37.737602, 36.573357, 30.259666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.010372, 36.840057, 30.379948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527141, -0.163005, -0.833997,
		-0.507052, 0.727237, -0.462629,
		0.681924, 0.666750, 0.300705,
		38.214951, 37.040081, 30.470160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.942425, 36.932796, 29.612705>,  <37.737602, 36.573357, 30.259666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.942425, 36.932796, 29.612705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.218300, 37.045040, 29.879717>,  <38.383823, 37.112385, 30.039923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.218300, 37.045040, 29.879717>,  <37.942425, 36.932796, 29.612705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.218300, 37.045040, 29.879717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.722192, -0.199537, -0.662287,
		-0.052646, 0.938853, -0.340270,
		0.689686, 0.280607, 0.667527,
		38.425205, 37.129223, 30.079975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.368778, 37.458282, 29.309059>,  <37.942425, 36.932796, 29.612705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.368778, 37.458282, 29.309059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.576405, 37.273563, 29.596760>,  <38.700981, 37.162731, 29.769381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.576405, 37.273563, 29.596760>,  <38.368778, 37.458282, 29.309059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.576405, 37.273563, 29.596760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.659739, -0.318552, -0.680639,
		0.543433, 0.827811, 0.139315,
		0.519062, -0.461793, 0.719251,
		38.732124, 37.135025, 29.812534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.061710, 37.597198, 29.179947>,  <38.368778, 37.458282, 29.309059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.061710, 37.597198, 29.179947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.079514, 37.272354, 29.412668>,  <39.090195, 37.077446, 29.552301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.079514, 37.272354, 29.412668>,  <39.061710, 37.597198, 29.179947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.079514, 37.272354, 29.412668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.698472, -0.391083, -0.599325,
		0.714252, 0.433051, 0.549829,
		0.044509, -0.812109, 0.581805,
		39.092865, 37.028721, 29.587210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.745941, 37.379776, 29.153776>,  <39.061710, 37.597198, 29.179947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.745941, 37.379776, 29.153776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.586121, 37.051113, 29.316376>,  <39.490227, 36.853916, 29.413937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.586121, 37.051113, 29.316376>,  <39.745941, 37.379776, 29.153776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.586121, 37.051113, 29.316376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453971, -0.562588, -0.690945,
		0.796411, -0.091528, 0.597789,
		-0.399550, -0.821655, 0.406500,
		39.466255, 36.804615, 29.438326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.241550, 36.934635, 29.273680>,  <39.745941, 37.379776, 29.153776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.241550, 36.934635, 29.273680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.918316, 36.700638, 29.246029>,  <39.724373, 36.560242, 29.229439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.918316, 36.700638, 29.246029>,  <40.241550, 36.934635, 29.273680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.918316, 36.700638, 29.246029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516906, -0.647928, -0.559462,
		0.282489, -0.487828, 0.825968,
		-0.808089, -0.584990, -0.069129,
		39.675888, 36.525143, 29.225290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.515991, 36.245056, 29.357037>,  <40.241550, 36.934635, 29.273680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.515991, 36.245056, 29.357037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.162033, 36.183430, 29.181210>,  <39.949657, 36.146454, 29.075714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.162033, 36.183430, 29.181210>,  <40.515991, 36.245056, 29.357037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.162033, 36.183430, 29.181210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362196, -0.820970, -0.441386,
		-0.292867, -0.549791, 0.782278,
		-0.884897, -0.154070, -0.439567,
		39.896564, 36.137207, 29.049339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.592953, 35.549889, 29.155531>,  <40.515991, 36.245056, 29.357037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.592953, 35.549889, 29.155531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.299809, 35.715199, 28.939339>,  <40.123920, 35.814384, 28.809624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.299809, 35.715199, 28.939339>,  <40.592953, 35.549889, 29.155531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.299809, 35.715199, 28.939339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065129, -0.748125, -0.660354,
		-0.677249, -0.519151, 0.521359,
		-0.732866, 0.413269, -0.540479,
		40.079948, 35.839180, 28.777195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.279610, 34.980892, 28.920679>,  <40.592953, 35.549889, 29.155531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.279610, 34.980892, 28.920679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.157452, 35.270119, 28.672840>,  <40.084156, 35.443657, 28.524137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.157452, 35.270119, 28.672840>,  <40.279610, 34.980892, 28.920679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.157452, 35.270119, 28.672840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047621, -0.661468, -0.748460,
		-0.951033, -0.199074, 0.236445,
		-0.305399, 0.723070, -0.619597,
		40.065830, 35.487041, 28.486961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.472755, 34.765415, 28.585840>,  <40.279610, 34.980892, 28.920679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.472755, 34.765415, 28.585840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.674671, 35.020729, 28.353367>,  <39.795822, 35.173920, 28.213882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.674671, 35.020729, 28.353367>,  <39.472755, 34.765415, 28.585840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.674671, 35.020729, 28.353367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063498, -0.643978, -0.762405,
		-0.860902, 0.421761, -0.284546,
		0.504794, 0.638287, -0.581183,
		39.826111, 35.212215, 28.179012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.207222, 34.607254, 28.009800>,  <39.472755, 34.765415, 28.585840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.207222, 34.607254, 28.009800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.549789, 34.791023, 27.915586>,  <39.755329, 34.901283, 27.859058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.549789, 34.791023, 27.915586>,  <39.207222, 34.607254, 28.009800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.549789, 34.791023, 27.915586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119330, -0.620010, -0.775466,
		-0.502299, 0.636019, -0.585812,
		0.856421, 0.459420, -0.235534,
		39.806717, 34.928848, 27.844927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.282566, 34.810226, 27.280607>,  <39.207222, 34.607254, 28.009800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.282566, 34.810226, 27.280607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.667690, 34.814041, 27.388607>,  <39.898766, 34.816330, 27.453407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.667690, 34.814041, 27.388607>,  <39.282566, 34.810226, 27.280607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.667690, 34.814041, 27.388607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214461, -0.634760, -0.742352,
		0.164306, 0.772651, -0.613200,
		0.962814, 0.009535, 0.269998,
		39.956535, 34.816902, 27.469606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.716618, 34.827892, 26.693872>,  <39.282566, 34.810226, 27.280607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.716618, 34.827892, 26.693872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.983269, 34.693775, 26.960161>,  <40.143261, 34.613304, 27.119934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.983269, 34.693775, 26.960161>,  <39.716618, 34.827892, 26.693872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.983269, 34.693775, 26.960161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307927, -0.689469, -0.655602,
		0.678812, 0.642037, -0.356375,
		0.666630, -0.335293, 0.665720,
		40.183258, 34.593189, 27.159878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.335575, 34.783054, 26.369883>,  <39.716618, 34.827892, 26.693872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.335575, 34.783054, 26.369883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.383476, 34.534782, 26.679829>,  <40.412216, 34.385818, 26.865795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.383476, 34.534782, 26.679829>,  <40.335575, 34.783054, 26.369883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.383476, 34.534782, 26.679829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262894, -0.732796, -0.627613,
		0.957364, 0.278867, 0.075417,
		0.119755, -0.620680, 0.774864,
		40.419403, 34.348579, 26.912289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.054703, 34.485550, 26.283882>,  <40.335575, 34.783054, 26.369883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.054703, 34.485550, 26.283882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.847713, 34.229111, 26.510588>,  <40.723522, 34.075249, 26.646612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.847713, 34.229111, 26.510588>,  <41.054703, 34.485550, 26.283882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.847713, 34.229111, 26.510588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413494, -0.767218, -0.490305,
		0.749165, -0.019364, 0.662101,
		-0.517470, -0.641094, 0.566766,
		40.692471, 34.036781, 26.680616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.557224, 33.963951, 26.393888>,  <41.054703, 34.485550, 26.283882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.557224, 33.963951, 26.393888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.216930, 33.811607, 26.538773>,  <41.012753, 33.720200, 26.625704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.216930, 33.811607, 26.538773>,  <41.557224, 33.963951, 26.393888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.216930, 33.811607, 26.538773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243813, -0.896478, -0.369978,
		0.465624, -0.226441, 0.855523,
		-0.850735, -0.380858, 0.362212,
		40.961712, 33.697350, 26.647436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.809868, 33.380222, 26.740372>,  <41.557224, 33.963951, 26.393888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.809868, 33.380222, 26.740372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.421665, 33.318172, 26.666563>,  <41.188744, 33.280941, 26.622278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.421665, 33.318172, 26.666563>,  <41.809868, 33.380222, 26.740372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.421665, 33.318172, 26.666563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217199, -0.894756, -0.390175,
		-0.104575, -0.418746, 0.902062,
		-0.970510, -0.155125, -0.184520,
		41.130512, 33.271637, 26.611208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.558689, 32.754848, 26.940039>,  <41.809868, 33.380222, 26.740372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.558689, 32.754848, 26.940039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.309269, 32.848293, 26.641613>,  <41.159618, 32.904362, 26.462557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.309269, 32.848293, 26.641613>,  <41.558689, 32.754848, 26.940039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.309269, 32.848293, 26.641613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286010, -0.819987, -0.495802,
		-0.727588, -0.522539, 0.444487,
		-0.623550, 0.233612, -0.746064,
		41.122204, 32.918377, 26.417793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.357277, 32.145435, 26.778612>,  <41.558689, 32.754848, 26.940039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.357277, 32.145435, 26.778612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.259960, 32.375648, 26.466312>,  <41.201569, 32.513775, 26.278933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.259960, 32.375648, 26.466312>,  <41.357277, 32.145435, 26.778612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.259960, 32.375648, 26.466312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345347, -0.700789, -0.624204,
		-0.906390, -0.421496, -0.028260,
		-0.243295, 0.575532, -0.780750,
		41.186974, 32.548309, 26.232088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.198803, 31.608059, 26.324606>,  <41.357277, 32.145435, 26.778612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.198803, 31.608059, 26.324606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.230984, 31.928051, 26.086763>,  <41.250294, 32.120045, 25.944057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.230984, 31.928051, 26.086763>,  <41.198803, 31.608059, 26.324606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.230984, 31.928051, 26.086763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216194, -0.596347, -0.773066,
		-0.973030, -0.066353, -0.220931,
		0.080456, 0.799980, -0.594608,
		41.255119, 32.168045, 25.908381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.741535, 31.578985, 25.592855>,  <41.198803, 31.608059, 26.324606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.741535, 31.578985, 25.592855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.051781, 31.827271, 25.547005>,  <41.237926, 31.976242, 25.519495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.051781, 31.827271, 25.547005>,  <40.741535, 31.578985, 25.592855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.051781, 31.827271, 25.547005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251589, -0.470556, -0.845742,
		-0.578901, 0.627130, -0.521134,
		0.775613, 0.620713, -0.114626,
		41.284466, 32.013485, 25.512617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.834244, 31.606110, 24.877991>,  <40.741535, 31.578985, 25.592855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.834244, 31.606110, 24.877991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.180229, 31.757576, 25.009714>,  <41.387821, 31.848455, 25.088749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.180229, 31.757576, 25.009714>,  <40.834244, 31.606110, 24.877991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.180229, 31.757576, 25.009714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478063, -0.422212, -0.770190,
		-0.152605, 0.823620, -0.546225,
		0.864967, 0.378665, 0.329311,
		41.439720, 31.871176, 25.108507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.272217, 31.754902, 24.196583>,  <40.834244, 31.606110, 24.877991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.272217, 31.754902, 24.196583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.514885, 31.709843, 24.511356>,  <41.660484, 31.682808, 24.700220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.514885, 31.709843, 24.511356>,  <41.272217, 31.754902, 24.196583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.514885, 31.709843, 24.511356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.696639, -0.401521, -0.594538,
		0.382943, 0.908896, -0.165116,
		0.606671, -0.112648, 0.786932,
		41.696888, 31.676048, 24.747437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.864433, 31.917803, 23.943823>,  <41.272217, 31.754902, 24.196583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.864433, 31.917803, 23.943823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.955776, 31.687424, 24.257801>,  <42.010582, 31.549196, 24.446188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.955776, 31.687424, 24.257801>,  <41.864433, 31.917803, 23.943823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.955776, 31.687424, 24.257801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.704321, -0.458899, -0.541612,
		0.672151, 0.676532, 0.300860,
		0.228354, -0.575947, 0.784945,
		42.024281, 31.514639, 24.493284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.537224, 31.962191, 24.114819>,  <41.864433, 31.917803, 23.943823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.537224, 31.962191, 24.114819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.462799, 31.614916, 24.298834>,  <42.418144, 31.406551, 24.409243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.462799, 31.614916, 24.298834>,  <42.537224, 31.962191, 24.114819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.462799, 31.614916, 24.298834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.738997, -0.432216, -0.516791,
		0.647505, 0.243809, 0.722007,
		-0.186064, -0.868186, 0.460036,
		42.406979, 31.354460, 24.436844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.167446, 31.669060, 24.224401>,  <42.537224, 31.962191, 24.114819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.167446, 31.669060, 24.224401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.930382, 31.352150, 24.282442>,  <42.788143, 31.162004, 24.317266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.930382, 31.352150, 24.282442>,  <43.167446, 31.669060, 24.224401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.930382, 31.352150, 24.282442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.640486, -0.572802, -0.511542,
		0.488397, -0.210235, 0.846918,
		-0.592660, -0.792275, 0.145102,
		42.752583, 31.114468, 24.325972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.573605, 31.058840, 24.304672>,  <43.167446, 31.669060, 24.224401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.573605, 31.058840, 24.304672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.219872, 30.889353, 24.226267>,  <43.007633, 30.787661, 24.179224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.219872, 30.889353, 24.226267>,  <43.573605, 31.058840, 24.304672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.219872, 30.889353, 24.226267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463253, -0.744319, -0.481025,
		0.057921, -0.516190, 0.854513,
		-0.884331, -0.423718, -0.196015,
		42.954571, 30.762238, 24.167461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.717583, 30.269073, 24.446896>,  <43.573605, 31.058840, 24.304672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.717583, 30.269073, 24.446896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.389328, 30.251423, 24.219000>,  <43.192375, 30.240833, 24.082262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.389328, 30.251423, 24.219000>,  <43.717583, 30.269073, 24.446896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.389328, 30.251423, 24.219000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361422, -0.812351, -0.457667,
		-0.442634, -0.581496, 0.682596,
		-0.820640, -0.044126, -0.569740,
		43.143135, 30.238186, 24.048079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.383133, 29.556623, 24.478369>,  <43.717583, 30.269073, 24.446896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.383133, 29.556623, 24.478369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.340607, 29.770100, 24.142780>,  <43.315090, 29.898186, 23.941427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.340607, 29.770100, 24.142780>,  <43.383133, 29.556623, 24.478369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.340607, 29.770100, 24.142780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341445, -0.772851, -0.534899,
		-0.933870, -0.343329, -0.100062,
		-0.106314, 0.533691, -0.838970,
		43.308712, 29.930206, 23.891088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.603107, 28.911491, 24.965181>,  <43.383133, 29.556623, 24.478369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.603107, 28.911491, 24.965181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.950500, 28.799511, 25.128822>,  <44.158936, 28.732323, 25.227007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.950500, 28.799511, 25.128822>,  <43.603107, 28.911491, 24.965181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.950500, 28.799511, 25.128822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078428, 0.737277, 0.671023,
		-0.489474, -0.614857, 0.618357,
		0.868484, -0.279951, 0.409100,
		44.211044, 28.715525, 25.251553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.404278, 28.621500, 25.666712>,  <43.603107, 28.911491, 24.965181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.404278, 28.621500, 25.666712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.771706, 28.778757, 25.650362>,  <43.992161, 28.873112, 25.640553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.771706, 28.778757, 25.650362>,  <43.404278, 28.621500, 25.666712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.771706, 28.778757, 25.650362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214802, 0.583318, 0.783326,
		0.331803, -0.710759, 0.620265,
		0.918568, 0.393144, -0.040874,
		44.047276, 28.896700, 25.638100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.534286, 28.919930, 26.299961>,  <43.404278, 28.621500, 25.666712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.534286, 28.919930, 26.299961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.846786, 29.095013, 26.121948>,  <44.034286, 29.200064, 26.015141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.846786, 29.095013, 26.121948>,  <43.534286, 28.919930, 26.299961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.846786, 29.095013, 26.121948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092307, 0.786121, 0.611141,
		0.617351, -0.436376, 0.654563,
		0.781254, 0.437709, -0.445032,
		44.081161, 29.226326, 25.988438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.054501, 29.176197, 26.780012>,  <43.534286, 28.919930, 26.299961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.054501, 29.176197, 26.780012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.115726, 29.403860, 26.456869>,  <44.152462, 29.540457, 26.262983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.115726, 29.403860, 26.456869>,  <44.054501, 29.176197, 26.780012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.115726, 29.403860, 26.456869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183354, 0.819652, 0.542726,
		0.971058, 0.065053, 0.229816,
		0.153063, 0.569156, -0.807857,
		44.161644, 29.574606, 26.214512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.427101, 29.748533, 27.022524>,  <44.054501, 29.176197, 26.780012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.427101, 29.748533, 27.022524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.238098, 29.867077, 26.690521>,  <44.124695, 29.938204, 26.491320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.238098, 29.867077, 26.690521>,  <44.427101, 29.748533, 27.022524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.238098, 29.867077, 26.690521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387289, 0.776142, 0.497605,
		0.791671, 0.556574, -0.251957,
		-0.472508, 0.296359, -0.830004,
		44.096344, 29.955984, 26.441521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.671356, 30.423409, 26.905558>,  <44.427101, 29.748533, 27.022524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.671356, 30.423409, 26.905558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.319382, 30.383419, 26.719780>,  <44.108196, 30.359425, 26.608313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.319382, 30.383419, 26.719780>,  <44.671356, 30.423409, 26.905558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.319382, 30.383419, 26.719780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308177, 0.864135, 0.397866,
		0.361568, 0.493230, -0.791197,
		-0.879941, -0.099973, -0.464445,
		44.055401, 30.353428, 26.580446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.545185, 31.155697, 26.681265>,  <44.671356, 30.423409, 26.905558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.545185, 31.155697, 26.681265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.209522, 30.938793, 26.664425>,  <44.008125, 30.808651, 26.654322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.209522, 30.938793, 26.664425>,  <44.545185, 31.155697, 26.681265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.209522, 30.938793, 26.664425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533754, 0.806176, 0.255318,
		-0.104509, 0.236723, -0.965940,
		-0.839157, -0.542257, -0.042099,
		43.957775, 30.776115, 26.651794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.071095, 31.671791, 26.422277>,  <44.545185, 31.155697, 26.681265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.071095, 31.671791, 26.422277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.862495, 31.378832, 26.597382>,  <43.737335, 31.203056, 26.702444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.862495, 31.378832, 26.597382>,  <44.071095, 31.671791, 26.422277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.862495, 31.378832, 26.597382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.662491, 0.670879, 0.333208,
		-0.537726, -0.116247, -0.835067,
		-0.521494, -0.732399, 0.437762,
		43.706047, 31.159113, 26.728710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.442829, 31.779894, 26.307512>,  <44.071095, 31.671791, 26.422277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.442829, 31.779894, 26.307512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.449356, 31.556820, 26.639469>,  <43.453274, 31.422976, 26.838644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.449356, 31.556820, 26.639469>,  <43.442829, 31.779894, 26.307512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.449356, 31.556820, 26.639469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564410, 0.679982, 0.468045,
		-0.825334, -0.476038, -0.303666,
		0.016320, -0.557685, 0.829892,
		43.454250, 31.389515, 26.888437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.749222, 31.851032, 26.573812>,  <43.442829, 31.779894, 26.307512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.749222, 31.851032, 26.573812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.952084, 31.721569, 26.893322>,  <43.073799, 31.643890, 27.085028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.952084, 31.721569, 26.893322>,  <42.749222, 31.851032, 26.573812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.952084, 31.721569, 26.893322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.560084, 0.580658, 0.590882,
		-0.655059, -0.747049, 0.113206,
		0.507152, -0.323658, 0.798775,
		43.104229, 31.624472, 27.132956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.239292, 31.711647, 27.078932>,  <42.749222, 31.851032, 26.573812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.239292, 31.711647, 27.078932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.558620, 31.728552, 27.319229>,  <42.750217, 31.738695, 27.463408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.558620, 31.728552, 27.319229>,  <42.239292, 31.711647, 27.078932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.558620, 31.728552, 27.319229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566925, 0.389257, 0.726000,
		-0.203160, -0.920159, 0.334713,
		0.798325, 0.042263, 0.600742,
		42.798119, 31.741230, 27.499453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.997841, 31.487242, 27.693556>,  <42.239292, 31.711647, 27.078932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.997841, 31.487242, 27.693556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.328548, 31.692888, 27.784899>,  <42.526974, 31.816277, 27.839705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.328548, 31.692888, 27.784899>,  <41.997841, 31.487242, 27.693556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.328548, 31.692888, 27.784899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500046, 0.485670, 0.716993,
		0.257709, -0.706973, 0.658616,
		0.826765, 0.514114, 0.228357,
		42.576576, 31.847122, 27.853405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.072769, 31.352991, 28.408403>,  <41.997841, 31.487242, 27.693556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.072769, 31.352991, 28.408403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.246147, 31.693668, 28.290596>,  <42.350174, 31.898075, 28.219912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.246147, 31.693668, 28.290596>,  <42.072769, 31.352991, 28.408403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.246147, 31.693668, 28.290596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493380, 0.497759, 0.713311,
		0.754121, -0.163874, 0.635961,
		0.433448, 0.851693, -0.294518,
		42.376183, 31.949177, 28.202240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.266960, 31.673811, 28.976587>,  <42.072769, 31.352991, 28.408403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.266960, 31.673811, 28.976587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.260319, 31.968214, 28.705879>,  <42.256336, 32.144855, 28.543455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.260319, 31.968214, 28.705879>,  <42.266960, 31.673811, 28.976587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.260319, 31.968214, 28.705879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272282, 0.647955, 0.711349,
		0.962074, 0.196081, 0.189645,
		-0.016601, 0.736008, -0.676770,
		42.255337, 32.189018, 28.502848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.382900, 32.201866, 29.425295>,  <42.266960, 31.673811, 28.976587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.382900, 32.201866, 29.425295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.247051, 32.366367, 29.086939>,  <42.165543, 32.465069, 28.883926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.247051, 32.366367, 29.086939>,  <42.382900, 32.201866, 29.425295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.247051, 32.366367, 29.086939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455223, 0.715121, 0.530447,
		0.823060, 0.565220, -0.055661,
		-0.339624, 0.411252, -0.845889,
		42.145164, 32.489742, 28.833172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.578705, 32.878098, 29.465652>,  <42.382900, 32.201866, 29.425295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.578705, 32.878098, 29.465652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.280636, 32.880138, 29.198914>,  <42.101795, 32.881363, 29.038870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.280636, 32.880138, 29.198914>,  <42.578705, 32.878098, 29.465652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.280636, 32.880138, 29.198914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414542, 0.779747, 0.469200,
		0.522366, 0.626074, -0.578935,
		-0.745177, 0.005101, -0.666847,
		42.057083, 32.881668, 28.998859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.605232, 33.565037, 29.193472>,  <42.578705, 32.878098, 29.465652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.605232, 33.565037, 29.193472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.234364, 33.437740, 29.114397>,  <42.011845, 33.361362, 29.066952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.234364, 33.437740, 29.114397>,  <42.605232, 33.565037, 29.193472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.234364, 33.437740, 29.114397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374314, 0.809051, 0.453129,
		0.015734, 0.494124, -0.869249,
		-0.927169, -0.318243, -0.197687,
		41.956215, 33.342266, 29.055092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.240681, 34.115032, 28.924030>,  <42.605232, 33.565037, 29.193472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.240681, 34.115032, 28.924030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.960400, 33.860504, 29.053093>,  <41.792229, 33.707787, 29.130531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.960400, 33.860504, 29.053093>,  <42.240681, 34.115032, 28.924030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.960400, 33.860504, 29.053093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414494, 0.731179, 0.541823,
		-0.580693, 0.245919, -0.776092,
		-0.700706, -0.636319, 0.322659,
		41.750187, 33.669609, 29.149891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.563530, 34.484135, 28.805914>,  <42.240681, 34.115032, 28.924030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.563530, 34.484135, 28.805914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.490211, 34.196487, 29.074026>,  <41.446220, 34.023899, 29.234894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.490211, 34.196487, 29.074026>,  <41.563530, 34.484135, 28.805914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.490211, 34.196487, 29.074026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489303, 0.658111, 0.572252,
		-0.852633, -0.223076, -0.472497,
		-0.183299, -0.719116, 0.670279,
		41.435223, 33.980751, 29.275110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.919235, 34.589504, 29.077217>,  <41.563530, 34.484135, 28.805914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.919235, 34.589504, 29.077217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.051083, 34.330826, 29.352358>,  <41.130192, 34.175617, 29.517443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.051083, 34.330826, 29.352358>,  <40.919235, 34.589504, 29.077217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.051083, 34.330826, 29.352358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509574, 0.491472, 0.706250,
		-0.794788, -0.583302, -0.167543,
		0.329614, -0.646695, 0.687852,
		41.149967, 34.136818, 29.558714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.257492, 34.415134, 29.536472>,  <40.919235, 34.589504, 29.077217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.257492, 34.415134, 29.536472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.600445, 34.340332, 29.728271>,  <40.806217, 34.295448, 29.843351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.600445, 34.340332, 29.728271>,  <40.257492, 34.415134, 29.536472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.600445, 34.340332, 29.728271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366225, 0.432919, 0.823687,
		-0.361621, -0.881821, 0.302691,
		0.857385, -0.187010, 0.479497,
		40.857662, 34.284229, 29.872120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.059860, 34.069180, 30.170193>,  <40.257492, 34.415134, 29.536472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.059860, 34.069180, 30.170193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.412010, 34.230530, 30.269974>,  <40.623302, 34.327339, 30.329844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.412010, 34.230530, 30.269974>,  <40.059860, 34.069180, 30.170193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.412010, 34.230530, 30.269974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430343, 0.458330, 0.777649,
		0.199348, -0.791976, 0.577092,
		0.880378, 0.403370, 0.249454,
		40.676125, 34.351540, 30.344810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.316528, 34.003036, 30.921806>,  <40.059860, 34.069180, 30.170193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.316528, 34.003036, 30.921806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.550133, 34.299351, 30.789038>,  <40.690296, 34.477139, 30.709375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.550133, 34.299351, 30.789038>,  <40.316528, 34.003036, 30.921806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.550133, 34.299351, 30.789038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308232, 0.580642, 0.753556,
		0.750953, -0.337772, 0.567433,
		0.584006, 0.740786, -0.331923,
		40.725334, 34.521587, 30.689461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.398540, 34.469875, 31.454821>,  <40.316528, 34.003036, 30.921806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.398540, 34.469875, 31.454821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.517529, 34.715603, 31.162485>,  <40.588921, 34.863037, 30.987083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.517529, 34.715603, 31.162485>,  <40.398540, 34.469875, 31.454821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.517529, 34.715603, 31.162485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249850, 0.788907, 0.561428,
		0.921459, 0.015592, 0.388163,
		0.297471, 0.614315, -0.730841,
		40.606770, 34.899899, 30.943233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.727688, 34.876217, 31.812967>,  <40.398540, 34.469875, 31.454821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.727688, 34.876217, 31.812967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.667469, 35.075573, 31.471455>,  <40.631336, 35.195187, 31.266546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.667469, 35.075573, 31.471455>,  <40.727688, 34.876217, 31.812967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.667469, 35.075573, 31.471455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125382, 0.847027, 0.516551,
		0.980620, 0.184814, -0.065027,
		-0.150546, 0.498387, -0.853784,
		40.622307, 35.225090, 31.215319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.109550, 35.391479, 31.770605>,  <40.727688, 34.876217, 31.812967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.109550, 35.391479, 31.770605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.805779, 35.489830, 31.529671>,  <40.623516, 35.548840, 31.385111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.805779, 35.489830, 31.529671>,  <41.109550, 35.391479, 31.770605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.805779, 35.489830, 31.529671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162397, 0.824884, 0.541473,
		0.629990, 0.509030, -0.586516,
		-0.759434, 0.245875, -0.602334,
		40.577950, 35.563591, 31.348970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.145466, 36.053669, 31.627541>,  <41.109550, 35.391479, 31.770605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.145466, 36.053669, 31.627541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.766548, 36.006577, 31.508364>,  <40.539196, 35.978321, 31.436857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.766548, 36.006577, 31.508364>,  <41.145466, 36.053669, 31.627541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.766548, 36.006577, 31.508364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232432, 0.892609, 0.386297,
		0.220467, 0.435189, -0.872929,
		-0.947296, -0.117731, -0.297943,
		40.482361, 35.971256, 31.418982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.063934, 36.610523, 31.291613>,  <41.145466, 36.053669, 31.627541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.063934, 36.610523, 31.291613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.685898, 36.506523, 31.370813>,  <40.459076, 36.444122, 31.418333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.685898, 36.506523, 31.370813>,  <41.063934, 36.610523, 31.291613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.685898, 36.506523, 31.370813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172920, 0.911938, 0.372112,
		-0.277312, 0.317441, -0.906824,
		-0.945091, -0.259999, 0.198000,
		40.402370, 36.428524, 31.430214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.609451, 37.189869, 31.160372>,  <41.063934, 36.610523, 31.291613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.609451, 37.189869, 31.160372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.420429, 36.930927, 31.399580>,  <40.307014, 36.775562, 31.543104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.420429, 36.930927, 31.399580>,  <40.609451, 37.189869, 31.160372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.420429, 36.930927, 31.399580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339794, 0.759931, 0.554117,
		-0.813162, 0.058648, -0.579076,
		-0.472555, -0.647353, 0.598019,
		40.278664, 36.736721, 31.578985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.940365, 37.584835, 31.448759>,  <40.609451, 37.189869, 31.160372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.940365, 37.584835, 31.448759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.034248, 37.287144, 31.698889>,  <40.090580, 37.108528, 31.848967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.034248, 37.287144, 31.698889>,  <39.940365, 37.584835, 31.448759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.034248, 37.287144, 31.698889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229459, 0.582695, 0.779625,
		-0.944594, -0.326474, -0.034005,
		0.234712, -0.744232, 0.625323,
		40.104664, 37.063873, 31.886486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.480740, 37.675629, 31.986231>,  <39.940365, 37.584835, 31.448759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.480740, 37.675629, 31.986231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.739395, 37.412762, 32.141148>,  <39.894588, 37.255043, 32.234097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.739395, 37.412762, 32.141148>,  <39.480740, 37.675629, 31.986231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.739395, 37.412762, 32.141148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068598, 0.455569, 0.887553,
		-0.759706, -0.600494, 0.249509,
		0.646639, -0.657164, 0.387291,
		39.933388, 37.215614, 32.257336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.145264, 37.351658, 32.494720>,  <39.480740, 37.675629, 31.986231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.145264, 37.351658, 32.494720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.534031, 37.295094, 32.569950>,  <39.767292, 37.261154, 32.615086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.534031, 37.295094, 32.569950>,  <39.145264, 37.351658, 32.494720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.534031, 37.295094, 32.569950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104213, 0.457909, 0.882869,
		-0.210969, -0.877679, 0.430315,
		0.971922, -0.141413, 0.188070,
		39.825607, 37.252670, 32.626369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.249660, 36.985878, 33.179657>,  <39.145264, 37.351658, 32.494720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.249660, 36.985878, 33.179657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.592045, 37.173100, 33.091793>,  <39.797478, 37.285435, 33.039074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.592045, 37.173100, 33.091793>,  <39.249660, 36.985878, 33.179657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.592045, 37.173100, 33.091793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019000, 0.396073, 0.918022,
		0.516689, -0.789966, 0.330131,
		0.855962, 0.468059, -0.219656,
		39.848835, 37.313519, 33.025898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.815243, 36.672928, 33.675606>,  <39.249660, 36.985878, 33.179657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.815243, 36.672928, 33.675606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.932835, 37.031139, 33.541977>,  <40.003387, 37.246067, 33.461800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.932835, 37.031139, 33.541977>,  <39.815243, 36.672928, 33.675606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.932835, 37.031139, 33.541977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124440, 0.310678, 0.942334,
		0.947677, -0.318596, -0.020108,
		0.293977, 0.895531, -0.334069,
		40.021027, 37.299797, 33.441757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.341484, 36.834358, 34.164047>,  <39.815243, 36.672928, 33.675606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.341484, 36.834358, 34.164047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.222851, 37.179604, 34.000549>,  <40.151672, 37.386753, 33.902451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.222851, 37.179604, 34.000549>,  <40.341484, 36.834358, 34.164047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.222851, 37.179604, 34.000549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072243, 0.447052, 0.891585,
		0.952272, 0.234896, -0.194941,
		-0.296579, 0.863115, -0.408746,
		40.133877, 37.438538, 33.877926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.916092, 37.267216, 34.207138>,  <40.341484, 36.834358, 34.164047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.916092, 37.267216, 34.207138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.587189, 37.494160, 34.189281>,  <40.389847, 37.630325, 34.178566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.587189, 37.494160, 34.189281>,  <40.916092, 37.267216, 34.207138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.587189, 37.494160, 34.189281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323914, 0.531050, 0.782985,
		0.467940, 0.629357, -0.620437,
		-0.822260, 0.567358, -0.044642,
		40.340511, 37.664368, 34.175888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.269028, 37.907513, 34.229290>,  <40.916092, 37.267216, 34.207138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.269028, 37.907513, 34.229290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.876671, 37.921741, 34.305805>,  <40.641258, 37.930279, 34.351715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.876671, 37.921741, 34.305805>,  <41.269028, 37.907513, 34.229290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.876671, 37.921741, 34.305805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184305, 0.484932, 0.854911,
		-0.062351, 0.873828, -0.482221,
		-0.980889, 0.035571, 0.191287,
		40.582405, 37.932411, 34.363190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.133381, 38.580376, 34.400539>,  <41.269028, 37.907513, 34.229290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.133381, 38.580376, 34.400539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.819016, 38.401424, 34.571278>,  <40.630398, 38.294052, 34.673721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.819016, 38.401424, 34.571278>,  <41.133381, 38.580376, 34.400539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.819016, 38.401424, 34.571278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068171, 0.623417, 0.778912,
		-0.614573, 0.641252, -0.459451,
		-0.785909, -0.447377, 0.426850,
		40.583244, 38.267212, 34.699333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.879818, 38.999153, 34.778439>,  <41.133381, 38.580376, 34.400539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.879818, 38.999153, 34.778439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.677902, 38.704140, 34.957874>,  <40.556755, 38.527130, 35.065536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.677902, 38.704140, 34.957874>,  <40.879818, 38.999153, 34.778439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.677902, 38.704140, 34.957874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033595, 0.502481, 0.863935,
		-0.862590, 0.451174, -0.228869,
		-0.504788, -0.737533, 0.448592,
		40.526466, 38.482880, 35.092453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.324806, 39.310757, 35.123367>,  <40.879818, 38.999153, 34.778439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.324806, 39.310757, 35.123367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.375694, 38.955429, 35.299870>,  <40.406227, 38.742233, 35.405773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.375694, 38.955429, 35.299870>,  <40.324806, 39.310757, 35.123367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.375694, 38.955429, 35.299870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234326, 0.459198, 0.856871,
		-0.963798, -0.005611, 0.266575,
		0.127219, -0.888316, 0.441259,
		40.413860, 38.688934, 35.432247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.989586, 39.324688, 35.724110>,  <40.324806, 39.310757, 35.123367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.989586, 39.324688, 35.724110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.233765, 39.016552, 35.797787>,  <40.380272, 38.831669, 35.841995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.233765, 39.016552, 35.797787>,  <39.989586, 39.324688, 35.724110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.233765, 39.016552, 35.797787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132151, 0.328353, 0.935265,
		-0.780956, -0.546586, 0.302243,
		0.610445, -0.770343, 0.184197,
		40.416897, 38.785450, 35.853046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.782093, 38.933342, 36.361172>,  <39.989586, 39.324688, 35.724110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.782093, 38.933342, 36.361172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.170082, 38.846497, 36.317326>,  <40.402874, 38.794388, 36.291019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.170082, 38.846497, 36.317326>,  <39.782093, 38.933342, 36.361172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.170082, 38.846497, 36.317326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171716, 0.292161, 0.940827,
		-0.172241, -0.931399, 0.320670,
		0.969973, -0.217113, -0.109614,
		40.461075, 38.781364, 36.284443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.973316, 38.431667, 36.930332>,  <39.782093, 38.933342, 36.361172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.973316, 38.431667, 36.930332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.304436, 38.605125, 36.787949>,  <40.503105, 38.709198, 36.702518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.304436, 38.605125, 36.787949>,  <39.973316, 38.431667, 36.930332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.304436, 38.605125, 36.787949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238234, 0.302731, 0.922821,
		0.507935, -0.848709, 0.147291,
		0.827796, 0.433643, -0.355959,
		40.552776, 38.735218, 36.681160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.327465, 38.539429, 37.617836>,  <39.973316, 38.431667, 36.930332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.327465, 38.539429, 37.617836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.596046, 38.682590, 37.358280>,  <40.757195, 38.768486, 37.202549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.596046, 38.682590, 37.358280>,  <40.327465, 38.539429, 37.617836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.596046, 38.682590, 37.358280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471798, 0.468774, 0.746765,
		0.571450, -0.807563, 0.145904,
		0.671456, 0.357902, -0.648887,
		40.797482, 38.789963, 37.163612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.057125, 38.393990, 37.851852>,  <40.327465, 38.539429, 37.617836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.057125, 38.393990, 37.851852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.019707, 38.717484, 37.619576>,  <40.997253, 38.911579, 37.480209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.019707, 38.717484, 37.619576>,  <41.057125, 38.393990, 37.851852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.019707, 38.717484, 37.619576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423155, 0.560243, 0.712087,
		0.901215, -0.179107, -0.394629,
		-0.093549, 0.808732, -0.580690,
		40.991642, 38.960102, 37.445370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.773144, 38.795700, 37.894314>,  <41.057125, 38.393990, 37.851852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.773144, 38.795700, 37.894314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.456314, 39.025814, 37.812656>,  <41.266216, 39.163883, 37.763660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.456314, 39.025814, 37.812656>,  <41.773144, 38.795700, 37.894314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.456314, 39.025814, 37.812656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186725, 0.546732, 0.816221,
		0.581169, 0.608387, -0.540470,
		-0.792071, 0.575282, -0.204142,
		41.218693, 39.198399, 37.751415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.055195, 39.405014, 38.243229>,  <41.773144, 38.795700, 37.894314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.055195, 39.405014, 38.243229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.670933, 39.488068, 38.169437>,  <41.440376, 39.537899, 38.125164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.670933, 39.488068, 38.169437>,  <42.055195, 39.405014, 38.243229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.670933, 39.488068, 38.169437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047658, 0.531112, 0.845960,
		0.273633, 0.821466, -0.500319,
		-0.960653, 0.207638, -0.184479,
		41.382736, 39.550358, 38.114094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.925308, 40.095589, 38.142071>,  <42.055195, 39.405014, 38.243229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.925308, 40.095589, 38.142071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.566582, 39.989277, 38.283539>,  <41.351345, 39.925488, 38.368420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.566582, 39.989277, 38.283539>,  <41.925308, 40.095589, 38.142071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.566582, 39.989277, 38.283539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067873, 0.707307, 0.703641,
		-0.437172, 0.655039, -0.616282,
		-0.896813, -0.265783, 0.353675,
		41.297539, 39.909542, 38.389641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.708057, 40.823429, 38.306671>,  <41.925308, 40.095589, 38.142071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.708057, 40.823429, 38.306671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.546127, 40.532547, 38.528408>,  <41.448967, 40.358017, 38.661449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.546127, 40.532547, 38.528408>,  <41.708057, 40.823429, 38.306671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.546127, 40.532547, 38.528408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119849, 0.558810, 0.820590,
		-0.906505, 0.398635, -0.139068,
		-0.404828, -0.727201, 0.554340,
		41.424679, 40.314388, 38.694710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.159271, 41.104504, 38.663410>,  <41.708057, 40.823429, 38.306671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.159271, 41.104504, 38.663410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.281887, 40.786854, 38.873325>,  <41.355457, 40.596264, 38.999275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.281887, 40.786854, 38.873325>,  <41.159271, 41.104504, 38.663410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.281887, 40.786854, 38.873325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381009, 0.607600, 0.696889,
		-0.872277, -0.013675, 0.488821,
		0.306537, -0.794125, 0.524786,
		41.373848, 40.548615, 39.030762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.834957, 41.148163, 39.410511>,  <41.159271, 41.104504, 38.663410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.834957, 41.148163, 39.410511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.174816, 40.937225, 39.411327>,  <41.378731, 40.810661, 39.411816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.174816, 40.937225, 39.411327>,  <40.834957, 41.148163, 39.410511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.174816, 40.937225, 39.411327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330015, 0.534720, 0.777924,
		-0.411322, -0.660290, 0.628356,
		0.849650, -0.527344, 0.002037,
		41.429710, 40.779022, 39.411938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.116081, 41.275730, 40.143505>,  <40.834957, 41.148163, 39.410511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.116081, 41.275730, 40.143505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.417370, 41.034836, 40.037697>,  <41.598145, 40.890301, 39.974213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.417370, 41.034836, 40.037697>,  <41.116081, 41.275730, 40.143505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.417370, 41.034836, 40.037697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500918, 0.264553, 0.824071,
		-0.426303, -0.753212, 0.500937,
		0.753224, -0.602232, -0.264517,
		41.643337, 40.854168, 39.958344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.326462, 40.959217, 40.674759>,  <41.116081, 41.275730, 40.143505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.326462, 40.959217, 40.674759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.634422, 40.955437, 40.419521>,  <41.819199, 40.953171, 40.266376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.634422, 40.955437, 40.419521>,  <41.326462, 40.959217, 40.674759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.634422, 40.955437, 40.419521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531836, 0.562140, 0.633364,
		0.352717, -0.826988, 0.437814,
		0.769898, -0.009447, -0.638098,
		41.865391, 40.952602, 40.228092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.967979, 40.742092, 41.026714>,  <41.326462, 40.959217, 40.674759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.967979, 40.742092, 41.026714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.058784, 40.951469, 40.698208>,  <42.113266, 41.077095, 40.501102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.058784, 40.951469, 40.698208>,  <41.967979, 40.742092, 41.026714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.058784, 40.951469, 40.698208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634135, 0.560573, 0.532571,
		0.739147, -0.641693, -0.204675,
		0.227011, 0.523439, -0.821266,
		42.126888, 41.108501, 40.451828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.683743, 40.747017, 40.971127>,  <41.967979, 40.742092, 41.026714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.683743, 40.747017, 40.971127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.529335, 41.066833, 40.787071>,  <42.436691, 41.258724, 40.676640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.529335, 41.066833, 40.787071>,  <42.683743, 40.747017, 40.971127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.529335, 41.066833, 40.787071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.672267, 0.585386, 0.453189,
		0.631701, -0.134396, -0.763474,
		-0.386020, 0.799538, -0.460139,
		42.413528, 41.306694, 40.649029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.232967, 41.096798, 40.708164>,  <42.683743, 40.747017, 40.971127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.232967, 41.096798, 40.708164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.916061, 41.339352, 40.735363>,  <42.725918, 41.484882, 40.751682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.916061, 41.339352, 40.735363>,  <43.232967, 41.096798, 40.708164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.916061, 41.339352, 40.735363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580199, 0.714137, 0.391634,
		0.188919, 0.349729, -0.917605,
		-0.792262, 0.606381, 0.067998,
		42.678383, 41.521267, 40.755764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.608471, 41.728149, 40.783615>,  <43.232967, 41.096798, 40.708164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.608471, 41.728149, 40.783615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.233910, 41.817814, 40.891609>,  <43.009171, 41.871613, 40.956406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.233910, 41.817814, 40.891609>,  <43.608471, 41.728149, 40.783615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.233910, 41.817814, 40.891609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349527, 0.664147, 0.660863,
		-0.031174, 0.713205, -0.700261,
		-0.936408, 0.224158, 0.269989,
		42.952988, 41.885063, 40.972607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.658955, 42.329906, 40.616089>,  <43.608471, 41.728149, 40.783615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.658955, 42.329906, 40.616089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.356010, 42.283566, 40.873146>,  <43.174244, 42.255760, 41.027378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.356010, 42.283566, 40.873146>,  <43.658955, 42.329906, 40.616089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.356010, 42.283566, 40.873146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411258, 0.679813, 0.607225,
		-0.507223, 0.724177, -0.467217,
		-0.757358, -0.115852, 0.642641,
		43.128803, 42.248810, 41.065937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.525543, 42.992817, 40.821095>,  <43.658955, 42.329906, 40.616089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.525543, 42.992817, 40.821095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.368526, 42.756889, 41.103378>,  <43.274319, 42.615334, 41.272747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.368526, 42.756889, 41.103378>,  <43.525543, 42.992817, 40.821095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.368526, 42.756889, 41.103378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297783, 0.644463, 0.704267,
		-0.870194, 0.486601, -0.077339,
		-0.392539, -0.589819, 0.705710,
		43.250763, 42.579945, 41.315090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.057659, 43.403423, 41.296879>,  <43.525543, 42.992817, 40.821095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.057659, 43.403423, 41.296879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.236370, 43.084724, 41.459644>,  <43.343597, 42.893505, 41.557304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.236370, 43.084724, 41.459644>,  <43.057659, 43.403423, 41.296879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.236370, 43.084724, 41.459644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273203, 0.554615, 0.785979,
		-0.851909, -0.239989, 0.465464,
		0.446780, -0.796748, 0.406916,
		43.370403, 42.845699, 41.581718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.798077, 43.439289, 42.001957>,  <43.057659, 43.403423, 41.296879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.798077, 43.439289, 42.001957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.160316, 43.338337, 41.865604>,  <43.377659, 43.277767, 41.783791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.160316, 43.338337, 41.865604>,  <42.798077, 43.439289, 42.001957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.160316, 43.338337, 41.865604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382450, 0.833381, 0.399008,
		0.183384, -0.491711, 0.851229,
		0.905595, -0.252381, -0.340884,
		43.431995, 43.262623, 41.763340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.918098, 44.149261, 42.275471>,  <42.798077, 43.439289, 42.001957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.918098, 44.149261, 42.275471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.046085, 43.959927, 42.603756>,  <43.122879, 43.846325, 42.800728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.046085, 43.959927, 42.603756>,  <42.918098, 44.149261, 42.275471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.046085, 43.959927, 42.603756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039950, -0.872226, -0.487469,
		0.946585, 0.123188, -0.297996,
		0.319970, -0.473336, 0.820715,
		43.142075, 43.817924, 42.849972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.609692, 43.719765, 42.154591>,  <42.918098, 44.149261, 42.275471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.609692, 43.719765, 42.154591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.366795, 43.561260, 42.430050>,  <43.221058, 43.466156, 42.595325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.366795, 43.561260, 42.430050>,  <43.609692, 43.719765, 42.154591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.366795, 43.561260, 42.430050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019177, -0.859187, -0.511302,
		0.794287, -0.323689, 0.514133,
		-0.607239, -0.396261, 0.688649,
		43.184624, 43.442383, 42.636646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.985138, 43.150707, 42.361069>,  <43.609692, 43.719765, 42.154591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.985138, 43.150707, 42.361069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.588566, 43.128300, 42.408287>,  <43.350624, 43.114857, 42.436619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.588566, 43.128300, 42.408287>,  <43.985138, 43.150707, 42.361069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.588566, 43.128300, 42.408287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017892, -0.836735, -0.547316,
		0.129435, -0.544736, 0.828559,
		-0.991427, -0.056017, 0.118049,
		43.291138, 43.111496, 42.443703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.911160, 42.382694, 42.342297>,  <43.985138, 43.150707, 42.361069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.911160, 42.382694, 42.342297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.575047, 42.589214, 42.276131>,  <43.373379, 42.713127, 42.236431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.575047, 42.589214, 42.276131>,  <43.911160, 42.382694, 42.342297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.575047, 42.589214, 42.276131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301881, -0.699014, -0.648265,
		-0.450328, -0.494789, 0.743229,
		-0.840281, 0.516298, -0.165418,
		43.322964, 42.744102, 42.226505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.364010, 41.890293, 42.356003>,  <43.911160, 42.382694, 42.342297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.364010, 41.890293, 42.356003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.239918, 42.206062, 42.144131>,  <43.165462, 42.395523, 42.017006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.239918, 42.206062, 42.144131>,  <43.364010, 41.890293, 42.356003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.239918, 42.206062, 42.144131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494044, -0.609904, -0.619627,
		-0.812206, 0.069461, 0.579221,
		-0.310229, 0.789425, -0.529684,
		43.146851, 42.442890, 41.985226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.666836, 41.856762, 42.225574>,  <43.364010, 41.890293, 42.356003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.666836, 41.856762, 42.225574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.817707, 42.086952, 41.935314>,  <42.908230, 42.225067, 41.761158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.817707, 42.086952, 41.935314>,  <42.666836, 41.856762, 42.225574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.817707, 42.086952, 41.935314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476660, -0.551158, -0.684850,
		-0.794062, 0.604197, 0.066423,
		0.377175, 0.575474, -0.725650,
		42.930859, 42.259594, 41.717621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.115341, 41.942833, 41.848003>,  <42.666836, 41.856762, 42.225574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.115341, 41.942833, 41.848003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.405556, 42.076000, 41.607086>,  <42.579685, 42.155899, 41.462536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.405556, 42.076000, 41.607086>,  <42.115341, 41.942833, 41.848003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.405556, 42.076000, 41.607086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447802, -0.436179, -0.780526,
		-0.522557, 0.836012, -0.167385,
		0.725539, 0.332914, -0.602296,
		42.623219, 42.175873, 41.426395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.735664, 42.212650, 41.309635>,  <42.115341, 41.942833, 41.848003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.735664, 42.212650, 41.309635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.105465, 42.148098, 41.171501>,  <42.327343, 42.109367, 41.088619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.105465, 42.148098, 41.171501>,  <41.735664, 42.212650, 41.309635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.105465, 42.148098, 41.171501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379986, -0.461997, -0.801355,
		-0.030223, 0.872075, -0.488438,
		0.924498, -0.161380, -0.345339,
		42.382816, 42.099686, 41.067898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.779671, 42.373505, 40.548397>,  <41.735664, 42.212650, 41.309635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.779671, 42.373505, 40.548397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.076691, 42.117817, 40.628414>,  <42.254902, 41.964405, 40.676422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.076691, 42.117817, 40.628414>,  <41.779671, 42.373505, 40.548397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.076691, 42.117817, 40.628414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319735, -0.600721, -0.732738,
		0.588550, 0.480134, -0.650446,
		0.742549, -0.639223, 0.200039,
		42.299454, 41.926048, 40.688427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.889114, 42.291542, 39.959476>,  <41.779671, 42.373505, 40.548397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.889114, 42.291542, 39.959476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.077572, 41.998241, 40.155586>,  <42.190647, 41.822262, 40.273251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.077572, 41.998241, 40.155586>,  <41.889114, 42.291542, 39.959476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.077572, 41.998241, 40.155586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277779, -0.650891, -0.706527,
		0.837174, 0.196690, -0.510346,
		0.471146, -0.733249, 0.490273,
		42.218914, 41.778267, 40.302670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.248650, 41.984436, 39.465809>,  <41.889114, 42.291542, 39.959476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.248650, 41.984436, 39.465809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.201626, 41.720314, 39.762505>,  <42.173412, 41.561840, 39.940521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.201626, 41.720314, 39.762505>,  <42.248650, 41.984436, 39.465809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.201626, 41.720314, 39.762505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304979, -0.686816, -0.659752,
		0.945075, -0.303775, -0.120637,
		-0.117561, -0.660307, 0.741737,
		42.166359, 41.522221, 39.985027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.444031, 41.400223, 39.133030>,  <42.248650, 41.984436, 39.465809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.444031, 41.400223, 39.133030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.240700, 41.297176, 39.461720>,  <42.118702, 41.235348, 39.658932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.240700, 41.297176, 39.461720>,  <42.444031, 41.400223, 39.133030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.240700, 41.297176, 39.461720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311183, -0.834779, -0.454213,
		0.802973, -0.486597, 0.344178,
		-0.508331, -0.257618, 0.821725,
		42.088200, 41.219891, 39.708237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.577713, 40.712215, 39.334129>,  <42.444031, 41.400223, 39.133030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.577713, 40.712215, 39.334129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.205872, 40.795322, 39.455902>,  <41.982769, 40.845184, 39.528965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.205872, 40.795322, 39.455902>,  <42.577713, 40.712215, 39.334129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.205872, 40.795322, 39.455902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326507, -0.847409, -0.418679,
		0.170991, -0.488603, 0.855587,
		-0.929600, 0.207764, 0.304432,
		41.926991, 40.857651, 39.547230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.378738, 40.073742, 39.700844>,  <42.577713, 40.712215, 39.334129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.378738, 40.073742, 39.700844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.053364, 40.271206, 39.577805>,  <41.858139, 40.389687, 39.503979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.053364, 40.271206, 39.577805>,  <42.378738, 40.073742, 39.700844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.053364, 40.271206, 39.577805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364371, -0.844695, -0.392076,
		-0.453382, -0.206848, 0.866982,
		-0.813436, 0.493664, -0.307600,
		41.809334, 40.419304, 39.485523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.788776, 39.602367, 39.795254>,  <42.378738, 40.073742, 39.700844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.788776, 39.602367, 39.795254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.666100, 39.886406, 39.541733>,  <41.592495, 40.056828, 39.389618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.666100, 39.886406, 39.541733>,  <41.788776, 39.602367, 39.795254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.666100, 39.886406, 39.541733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542847, -0.677469, -0.496340,
		-0.781831, 0.191838, 0.593244,
		-0.306687, 0.710094, -0.633805,
		41.574093, 40.099434, 39.351593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.139587, 39.325607, 39.545029>,  <41.788776, 39.602367, 39.795254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.139587, 39.325607, 39.545029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.229679, 39.610622, 39.279228>,  <41.283733, 39.781631, 39.119747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.229679, 39.610622, 39.279228>,  <41.139587, 39.325607, 39.545029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.229679, 39.610622, 39.279228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.640392, -0.405741, -0.652129,
		-0.734280, 0.572424, 0.364915,
		0.225233, 0.712534, -0.664504,
		41.297249, 39.824383, 39.079876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.763458, 39.160721, 38.973278>,  <41.139587, 39.325607, 39.545029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.763458, 39.160721, 38.973278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.905365, 39.522331, 38.877876>,  <40.990509, 39.739296, 38.820637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.905365, 39.522331, 38.877876>,  <40.763458, 39.160721, 38.973278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.905365, 39.522331, 38.877876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453526, -0.056676, -0.889439,
		-0.817592, 0.423708, 0.389892,
		0.354764, 0.904024, -0.238501,
		41.011795, 39.793537, 38.806328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.188335, 39.346012, 38.679790>,  <40.763458, 39.160721, 38.973278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.188335, 39.346012, 38.679790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.525974, 39.543816, 38.596882>,  <40.728558, 39.662498, 38.547134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.525974, 39.543816, 38.596882>,  <40.188335, 39.346012, 38.679790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.525974, 39.543816, 38.596882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161288, -0.134500, -0.977699,
		-0.511363, 0.858701, -0.033772,
		0.844094, 0.494512, -0.207276,
		40.779202, 39.692169, 38.534698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.094475, 39.694881, 37.999401>,  <40.188335, 39.346012, 38.679790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.094475, 39.694881, 37.999401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.492199, 39.655888, 38.016563>,  <40.730835, 39.632492, 38.026863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.492199, 39.655888, 38.016563>,  <40.094475, 39.694881, 37.999401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.492199, 39.655888, 38.016563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002287, -0.383220, -0.923654,
		0.106490, 0.918498, -0.380817,
		0.994311, -0.097489, 0.042910,
		40.790493, 39.626640, 38.029438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.351814, 40.095036, 37.323193>,  <40.094475, 39.694881, 37.999401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.351814, 40.095036, 37.323193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.632259, 39.844303, 37.459145>,  <40.800526, 39.693863, 37.540714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.632259, 39.844303, 37.459145>,  <40.351814, 40.095036, 37.323193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.632259, 39.844303, 37.459145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038763, -0.442446, -0.895957,
		0.711993, 0.641344, -0.285908,
		0.701116, -0.626833, 0.339879,
		40.842594, 39.656254, 37.561108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.000126, 40.116604, 36.842636>,  <40.351814, 40.095036, 37.323193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.000126, 40.116604, 36.842636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.986645, 39.756870, 37.017017>,  <40.978558, 39.541031, 37.121647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.986645, 39.756870, 37.017017>,  <41.000126, 40.116604, 36.842636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.986645, 39.756870, 37.017017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201608, -0.433353, -0.878385,
		0.978886, 0.058290, 0.195917,
		-0.033700, -0.899337, 0.435955,
		40.976536, 39.487068, 37.147804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.400177, 39.728115, 36.405659>,  <41.000126, 40.116604, 36.842636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.400177, 39.728115, 36.405659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.223362, 39.447773, 36.629585>,  <41.117271, 39.279568, 36.763943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.223362, 39.447773, 36.629585>,  <41.400177, 39.728115, 36.405659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.223362, 39.447773, 36.629585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090379, -0.655729, -0.749568,
		0.892431, -0.280742, 0.353201,
		-0.442039, -0.700859, 0.559819,
		41.090752, 39.237514, 36.797531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.750992, 39.083950, 36.333473>,  <41.400177, 39.728115, 36.405659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.750992, 39.083950, 36.333473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.374668, 39.008579, 36.446171>,  <41.148876, 38.963356, 36.513790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.374668, 39.008579, 36.446171>,  <41.750992, 39.083950, 36.333473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.374668, 39.008579, 36.446171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109030, -0.618823, -0.777927,
		0.320929, -0.762597, 0.561650,
		-0.940806, -0.188422, 0.281744,
		41.092426, 38.952053, 36.530693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.669479, 38.456024, 36.061356>,  <41.750992, 39.083950, 36.333473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.669479, 38.456024, 36.061356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.295341, 38.566387, 36.149902>,  <41.070858, 38.632603, 36.203030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.295341, 38.566387, 36.149902>,  <41.669479, 38.456024, 36.061356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.295341, 38.566387, 36.149902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351216, -0.649807, -0.674091,
		-0.042138, -0.708257, 0.704696,
		-0.935346, 0.275905, 0.221370,
		41.014736, 38.649158, 36.216312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.326942, 37.855885, 36.060959>,  <41.669479, 38.456024, 36.061356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.326942, 37.855885, 36.060959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.058914, 38.147804, 36.006706>,  <40.898098, 38.322956, 35.974155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.058914, 38.147804, 36.006706>,  <41.326942, 37.855885, 36.060959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.058914, 38.147804, 36.006706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327272, -0.454455, -0.828471,
		-0.666260, -0.510742, 0.543360,
		-0.670068, 0.729803, -0.135633,
		40.857895, 38.366745, 35.966015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.436790, 37.378994, 36.616993>,  <41.326942, 37.855885, 36.060959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.436790, 37.378994, 36.616993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.651100, 37.199501, 36.903091>,  <41.779686, 37.091805, 37.074753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.651100, 37.199501, 36.903091>,  <41.436790, 37.378994, 36.616993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.651100, 37.199501, 36.903091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.740484, -0.157350, -0.653395,
		0.405746, 0.879703, 0.247977,
		0.535775, -0.448735, 0.715250,
		41.811832, 37.064880, 37.117668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.094456, 37.586895, 36.536274>,  <41.436790, 37.378994, 36.616993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.094456, 37.586895, 36.536274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.183235, 37.245193, 36.724312>,  <42.236504, 37.040173, 36.837135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.183235, 37.245193, 36.724312>,  <42.094456, 37.586895, 36.536274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.183235, 37.245193, 36.724312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.757227, -0.152724, -0.635045,
		0.614283, 0.496922, 0.612964,
		0.221953, -0.854251, 0.470098,
		42.249821, 36.988918, 36.865341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.817734, 37.517704, 36.661739>,  <42.094456, 37.586895, 36.536274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.817734, 37.517704, 36.661739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.624386, 37.171642, 36.608273>,  <42.508377, 36.964005, 36.576191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.624386, 37.171642, 36.608273>,  <42.817734, 37.517704, 36.661739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.624386, 37.171642, 36.608273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599037, -0.215539, -0.771167,
		0.638366, -0.452831, 0.622442,
		-0.483368, -0.865152, -0.133670,
		42.479374, 36.912098, 36.568172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.385574, 37.099636, 36.488628>,  <42.817734, 37.517704, 36.661739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.385574, 37.099636, 36.488628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.045441, 36.928337, 36.366291>,  <42.841362, 36.825558, 36.292889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.045441, 36.928337, 36.366291>,  <43.385574, 37.099636, 36.488628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.045441, 36.928337, 36.366291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485801, -0.415368, -0.769069,
		0.202316, -0.802542, 0.561244,
		-0.850332, -0.428248, -0.305841,
		42.790340, 36.799862, 36.274540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.712234, 36.607967, 36.080826>,  <43.385574, 37.099636, 36.488628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.712234, 36.607967, 36.080826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.318459, 36.543087, 36.053768>,  <43.082195, 36.504158, 36.037533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.318459, 36.543087, 36.053768>,  <43.712234, 36.607967, 36.080826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.318459, 36.543087, 36.053768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152112, -0.593649, -0.790217,
		0.088019, -0.788208, 0.609083,
		-0.984436, -0.162202, -0.067644,
		43.023129, 36.494427, 36.033474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.566219, 35.818012, 36.008492>,  <43.712234, 36.607967, 36.080826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.566219, 35.818012, 36.008492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.237534, 35.986229, 35.854641>,  <43.040321, 36.087158, 35.762329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.237534, 35.986229, 35.854641>,  <43.566219, 35.818012, 36.008492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.237534, 35.986229, 35.854641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004806, -0.679990, -0.733205,
		-0.569884, -0.600635, 0.560777,
		-0.821711, 0.420537, -0.384629,
		42.991020, 36.112389, 35.739254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.027676, 35.305157, 35.783554>,  <43.566219, 35.818012, 36.008492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.027676, 35.305157, 35.783554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.986401, 35.630856, 35.555042>,  <42.961636, 35.826275, 35.417934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.986401, 35.630856, 35.555042>,  <43.027676, 35.305157, 35.783554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.986401, 35.630856, 35.555042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023742, -0.576197, -0.816966,
		-0.994378, -0.070740, 0.078790,
		-0.103191, 0.814244, -0.571278,
		42.955444, 35.875130, 35.383659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.629913, 35.010876, 35.222820>,  <43.027676, 35.305157, 35.783554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.629913, 35.010876, 35.222820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.877411, 35.304859, 35.111832>,  <43.025909, 35.481251, 35.045238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.877411, 35.304859, 35.111832>,  <42.629913, 35.010876, 35.222820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.877411, 35.304859, 35.111832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314154, -0.555211, -0.770096,
		-0.720044, 0.389325, -0.574424,
		0.618744, 0.734960, -0.277469,
		43.063034, 35.525349, 35.028591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.579605, 35.150070, 34.492287>,  <42.629913, 35.010876, 35.222820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.579605, 35.150070, 34.492287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.941719, 35.258263, 34.623310>,  <43.158989, 35.323177, 34.701923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.941719, 35.258263, 34.623310>,  <42.579605, 35.150070, 34.492287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.941719, 35.258263, 34.623310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411332, -0.365554, -0.834971,
		-0.106100, 0.890625, -0.442188,
		0.905289, 0.270477, 0.327557,
		43.213306, 35.339405, 34.721577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.963219, 35.368744, 33.932652>,  <42.579605, 35.150070, 34.492287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.963219, 35.368744, 33.932652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.243538, 35.290199, 34.206974>,  <43.411728, 35.243073, 34.371567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.243538, 35.290199, 34.206974>,  <42.963219, 35.368744, 33.932652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.243538, 35.290199, 34.206974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593355, -0.373216, -0.713190,
		0.395993, 0.906727, -0.145039,
		0.700799, -0.196358, 0.685802,
		43.453777, 35.231293, 34.412716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.636288, 35.544220, 33.764637>,  <42.963219, 35.368744, 33.932652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.636288, 35.544220, 33.764637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.744255, 35.302315, 34.064346>,  <43.809036, 35.157173, 34.244171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.744255, 35.302315, 34.064346>,  <43.636288, 35.544220, 33.764637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.744255, 35.302315, 34.064346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.710201, -0.400423, -0.579030,
		0.650201, 0.688424, 0.321420,
		0.269915, -0.604759, 0.749275,
		43.825230, 35.120888, 34.289127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.231838, 35.266975, 33.386383>,  <43.636288, 35.544220, 33.764637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.231838, 35.266975, 33.386383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.374306, 35.079498, 33.709736>,  <44.459785, 34.967014, 33.903748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.374306, 35.079498, 33.709736>,  <44.231838, 35.266975, 33.386383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.374306, 35.079498, 33.709736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.716532, -0.418295, -0.558221,
		0.599774, 0.778048, 0.186849,
		0.356165, -0.468690, 0.808379,
		44.481155, 34.938892, 33.952248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.708401, 35.867279, 33.667259>,  <44.231838, 35.266975, 33.386383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.708401, 35.867279, 33.667259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.747452, 36.256081, 33.581772>,  <44.770882, 36.489361, 33.530479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.747452, 36.256081, 33.581772>,  <44.708401, 35.867279, 33.667259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.747452, 36.256081, 33.581772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.919299, -0.005809, 0.393516,
		0.381258, -0.234889, -0.894130,
		0.097626, 0.972005, -0.213719,
		44.776741, 36.547684, 33.517654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.313778, 36.001099, 33.168861>,  <44.708401, 35.867279, 33.667259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.313778, 36.001099, 33.168861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.196667, 36.266075, 33.444672>,  <45.126400, 36.425060, 33.610157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.196667, 36.266075, 33.444672>,  <45.313778, 36.001099, 33.168861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.196667, 36.266075, 33.444672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.875431, -0.104330, 0.471950,
		0.384577, 0.741814, -0.549374,
		-0.292782, 0.662440, 0.689530,
		45.108833, 36.464806, 33.651531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.881138, 36.573109, 33.172337>,  <45.313778, 36.001099, 33.168861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.881138, 36.573109, 33.172337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.704510, 36.437241, 33.504517>,  <45.598534, 36.355721, 33.703823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.704510, 36.437241, 33.504517>,  <45.881138, 36.573109, 33.172337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.704510, 36.437241, 33.504517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.894445, -0.239463, 0.377658,
		0.070583, 0.909551, 0.409554,
		-0.441572, -0.339667, 0.830446,
		45.572037, 36.335339, 33.753651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.195663, 36.954227, 33.762630>,  <45.881138, 36.573109, 33.172337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.195663, 36.954227, 33.762630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.073856, 36.594299, 33.887585>,  <46.000771, 36.378342, 33.962559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.073856, 36.594299, 33.887585>,  <46.195663, 36.954227, 33.762630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.073856, 36.594299, 33.887585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.924231, -0.199824, 0.325371,
		-0.230354, 0.387801, 0.892495,
		-0.304522, -0.899822, 0.312388,
		45.982498, 36.324352, 33.981300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.497475, 36.818790, 34.470627>,  <46.195663, 36.954227, 33.762630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.497475, 36.818790, 34.470627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.435024, 36.478107, 34.270542>,  <46.397556, 36.273697, 34.150490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.435024, 36.478107, 34.270542>,  <46.497475, 36.818790, 34.470627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.435024, 36.478107, 34.270542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.859543, -0.366652, 0.356022,
		-0.486632, -0.374371, 0.789326,
		-0.156123, -0.851712, -0.500213,
		46.388187, 36.222595, 34.120480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.428730, 36.248524, 34.907948>,  <46.497475, 36.818790, 34.470627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.428730, 36.248524, 34.907948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.547897, 36.098667, 34.556747>,  <46.619396, 36.008755, 34.346027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.547897, 36.098667, 34.556747>,  <46.428730, 36.248524, 34.907948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.547897, 36.098667, 34.556747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.761577, -0.461266, 0.455230,
		-0.575542, -0.804287, 0.147901,
		0.297913, -0.374642, -0.878004,
		46.637272, 35.986275, 34.293346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.463383, 35.406746, 34.826107>,  <46.428730, 36.248524, 34.907948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.463383, 35.406746, 34.826107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.717636, 35.588108, 34.576180>,  <46.870190, 35.696926, 34.426224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.717636, 35.588108, 34.576180>,  <46.463383, 35.406746, 34.826107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.717636, 35.588108, 34.576180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.770402, -0.320648, 0.551059,
		0.049506, -0.831631, -0.553117,
		0.635633, 0.453404, -0.624816,
		46.908325, 35.724129, 34.388733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.850056, 34.842976, 34.652187>,  <46.463383, 35.406746, 34.826107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.850056, 34.842976, 34.652187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.057316, 35.177551, 34.580765>,  <47.181671, 35.378296, 34.537910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.057316, 35.177551, 34.580765>,  <46.850056, 34.842976, 34.652187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.057316, 35.177551, 34.580765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.807319, -0.409382, 0.425020,
		0.282409, -0.364375, -0.887399,
		0.518152, 0.836443, -0.178553,
		47.212761, 35.428486, 34.527199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.552689, 34.692844, 34.664116>,  <46.850056, 34.842976, 34.652187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.552689, 34.692844, 34.664116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.534157, 35.086281, 34.733852>,  <47.523037, 35.322342, 34.775696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.534157, 35.086281, 34.733852>,  <47.552689, 34.692844, 34.664116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.534157, 35.086281, 34.733852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.895846, -0.036301, 0.442880,
		0.441943, 0.176705, -0.879467,
		-0.046334, 0.983594, 0.174343,
		47.520256, 35.381359, 34.786156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<40.425045, 29.638699, 31.280022> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.140911, 29.595140, 31.001865>,  <39.970432, 29.569006, 30.834970>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.140911, 29.595140, 31.001865>,  <40.425045, 29.638699, 31.280022>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.140911, 29.595140, 31.001865> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.603070, 0.603604, 0.521507,
		0.362952, 0.789813, -0.494430,
		-0.710333, -0.108894, -0.695392,
		39.927811, 29.562471, 30.793247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.203716, 30.319216, 31.098873>,  <40.425045, 29.638699, 31.280022>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.203716, 30.319216, 31.098873> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.905045, 30.077801, 30.987003>,  <39.725842, 29.932951, 30.919882>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.905045, 30.077801, 30.987003>,  <40.203716, 30.319216, 31.098873>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.905045, 30.077801, 30.987003> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.651095, 0.577025, 0.493070,
		-0.136209, 0.550256, -0.823812,
		-0.746675, -0.603540, -0.279673,
		39.681042, 29.896738, 30.903101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.851204, 30.729933, 30.657524>,  <40.203716, 30.319216, 31.098873>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.851204, 30.729933, 30.657524> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.617317, 30.455963, 30.831413>,  <39.476986, 30.291582, 30.935747>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.617317, 30.455963, 30.831413>,  <39.851204, 30.729933, 30.657524>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.617317, 30.455963, 30.831413> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554621, 0.728589, 0.401939,
		-0.592033, -0.006088, -0.805890,
		-0.584716, -0.684925, 0.434725,
		39.441902, 30.250486, 30.961830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.097824, 30.992908, 30.519825>,  <39.851204, 30.729933, 30.657524>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.097824, 30.992908, 30.519825> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.076759, 30.714649, 30.806404>,  <39.064121, 30.547693, 30.978352>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.076759, 30.714649, 30.806404>,  <39.097824, 30.992908, 30.519825>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.076759, 30.714649, 30.806404> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531139, 0.627059, 0.569814,
		-0.845646, -0.350524, -0.402511,
		-0.052665, -0.695650, 0.716448,
		39.060959, 30.505955, 31.021338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.472996, 30.967253, 30.728600>,  <39.097824, 30.992908, 30.519825>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.472996, 30.967253, 30.728600> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.661560, 30.813808, 31.046244>,  <38.774700, 30.721743, 31.236830>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.661560, 30.813808, 31.046244>,  <38.472996, 30.967253, 30.728600>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.661560, 30.813808, 31.046244> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541558, 0.584757, 0.603965,
		-0.696049, -0.714775, 0.067915,
		0.471413, -0.383609, 0.794112,
		38.802982, 30.698725, 31.284477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.898991, 31.012869, 31.159286>,  <38.472996, 30.967253, 30.728600>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.898991, 31.012869, 31.159286> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.233280, 30.952715, 31.370552>,  <38.433853, 30.916622, 31.497311>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.233280, 30.952715, 31.370552>,  <37.898991, 31.012869, 31.159286>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.233280, 30.952715, 31.370552> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343551, 0.607151, 0.716478,
		-0.428422, -0.780226, 0.455743,
		0.835720, -0.150384, 0.528164,
		38.483997, 30.907600, 31.529001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.658005, 30.950056, 31.802788>,  <37.898991, 31.012869, 31.159286>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.658005, 30.950056, 31.802788> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.047329, 31.024902, 31.855925>,  <38.280926, 31.069809, 31.887806>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.047329, 31.024902, 31.855925>,  <37.658005, 30.950056, 31.802788>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.047329, 31.024902, 31.855925> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229469, 0.789428, 0.569340,
		0.001662, -0.584630, 0.811298,
		0.973315, 0.187114, 0.132843,
		38.339325, 31.081038, 31.895777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.715672, 31.103889, 32.578327>,  <37.658005, 30.950056, 31.802788>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.715672, 31.103889, 32.578327> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.046192, 31.251362, 32.408012>,  <38.244507, 31.339846, 32.305824>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.046192, 31.251362, 32.408012>,  <37.715672, 31.103889, 32.578327>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.046192, 31.251362, 32.408012> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050330, 0.801295, 0.596149,
		0.560973, -0.471169, 0.680668,
		0.826303, 0.368681, -0.425791,
		38.294083, 31.361967, 32.280273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.217602, 31.434853, 33.123089>,  <37.715672, 31.103889, 32.578327>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.217602, 31.434853, 33.123089> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.318203, 31.606831, 32.776241>,  <38.378563, 31.710016, 32.568134>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.318203, 31.606831, 32.776241>,  <38.217602, 31.434853, 33.123089>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.318203, 31.606831, 32.776241> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050077, 0.888936, 0.455285,
		0.966560, -0.157929, 0.202042,
		0.251505, 0.429943, -0.867119,
		38.393654, 31.735813, 32.516106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.691715, 31.860441, 33.357403>,  <38.217602, 31.434853, 33.123089>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.691715, 31.860441, 33.357403> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.571205, 31.999136, 33.002098>,  <38.498898, 32.082352, 32.788914>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.571205, 31.999136, 33.002098>,  <38.691715, 31.860441, 33.357403>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.571205, 31.999136, 33.002098> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035188, 0.934952, 0.353025,
		0.952888, 0.075101, -0.293879,
		-0.301275, 0.346735, -0.888261,
		38.480824, 32.103157, 32.735619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.195564, 32.429214, 33.058170>,  <38.691715, 31.860441, 33.357403>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.195564, 32.429214, 33.058170> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.809650, 32.462223, 32.958260>,  <38.578102, 32.482029, 32.898312>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.809650, 32.462223, 32.958260>,  <39.195564, 32.429214, 33.058170>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.809650, 32.462223, 32.958260> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052302, 0.870393, 0.489572,
		0.257806, 0.485393, -0.835422,
		-0.964780, 0.082521, -0.249780,
		38.520218, 32.486980, 32.883327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.207592, 33.071377, 32.921425>,  <39.195564, 32.429214, 33.058170>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.207592, 33.071377, 32.921425> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.814426, 33.002895, 32.948448>,  <38.578526, 32.961807, 32.964661>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.814426, 33.002895, 32.948448>,  <39.207592, 33.071377, 32.921425>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.814426, 33.002895, 32.948448> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146471, 0.949893, 0.276133,
		-0.111444, 0.261521, -0.958742,
		-0.982917, -0.171201, 0.067555,
		38.519550, 32.951534, 32.968716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.933075, 33.669003, 32.707825>,  <39.207592, 33.071377, 32.921425>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.933075, 33.669003, 32.707825> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.653053, 33.505051, 32.941719>,  <38.485039, 33.406681, 33.082058>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.653053, 33.505051, 32.941719>,  <38.933075, 33.669003, 32.707825>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.653053, 33.505051, 32.941719> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073216, 0.855747, 0.512187,
		-0.710322, 0.315749, -0.629083,
		-0.700059, -0.409877, 0.584738,
		38.443035, 33.382088, 33.117142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.547764, 34.235935, 32.855515>,  <38.933075, 33.669003, 32.707825>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.547764, 34.235935, 32.855515> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.418411, 33.975433, 33.130119>,  <38.340801, 33.819134, 33.294880>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.418411, 33.975433, 33.130119>,  <38.547764, 34.235935, 32.855515>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.418411, 33.975433, 33.130119> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314692, 0.758210, 0.571040,
		-0.892409, -0.031376, -0.450134,
		-0.323379, -0.651255, 0.686508,
		38.321396, 33.780056, 33.336071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.988983, 34.594776, 33.170078>,  <38.547764, 34.235935, 32.855515>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.988983, 34.594776, 33.170078> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.087605, 34.321915, 33.445435>,  <38.146778, 34.158199, 33.610649>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.087605, 34.321915, 33.445435>,  <37.988983, 34.594776, 33.170078>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.087605, 34.321915, 33.445435> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383960, 0.583432, 0.715669,
		-0.889824, -0.440763, -0.118074,
		0.246552, -0.682155, 0.688387,
		38.161572, 34.117268, 33.651951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.493347, 34.718765, 33.576195>,  <37.988983, 34.594776, 33.170078>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.493347, 34.718765, 33.576195> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.758762, 34.523937, 33.803345>,  <37.918011, 34.407040, 33.939636>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.758762, 34.523937, 33.803345>,  <37.493347, 34.718765, 33.576195>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.758762, 34.523937, 33.803345> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221271, 0.597327, 0.770869,
		-0.714675, -0.637154, 0.288574,
		0.663535, -0.487068, 0.567878,
		37.957825, 34.377815, 33.973709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.208179, 34.607960, 34.298363>,  <37.493347, 34.718765, 33.576195>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.208179, 34.607960, 34.298363> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.601955, 34.559723, 34.349483>,  <37.838223, 34.530781, 34.380157>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.601955, 34.559723, 34.349483>,  <37.208179, 34.607960, 34.298363>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.601955, 34.559723, 34.349483> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017007, 0.658521, 0.752371,
		-0.174891, -0.742838, 0.646224,
		0.984441, -0.120593, 0.127803,
		37.897289, 34.523544, 34.387825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.420246, 34.457802, 35.092548>,  <37.208179, 34.607960, 34.298363>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.420246, 34.457802, 35.092548> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.739391, 34.607586, 34.903576>,  <37.930878, 34.697456, 34.790192>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.739391, 34.607586, 34.903576>,  <37.420246, 34.457802, 35.092548>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.739391, 34.607586, 34.903576> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094672, 0.696127, 0.711649,
		0.595361, -0.612524, 0.519962,
		0.797861, 0.374462, -0.472436,
		37.978748, 34.719925, 34.761845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.943180, 34.677090, 35.529716>,  <37.420246, 34.457802, 35.092548>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.943180, 34.677090, 35.529716> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.082867, 34.901520, 35.229515>,  <38.166679, 35.036179, 35.049397>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.082867, 34.901520, 35.229515>,  <37.943180, 34.677090, 35.529716>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.082867, 34.901520, 35.229515> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217401, 0.730557, 0.647320,
		0.911475, -0.389212, 0.133142,
		0.349213, 0.561071, -0.750500,
		38.187630, 35.069839, 35.004364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.346088, 34.997292, 35.864586>,  <37.943180, 34.677090, 35.529716>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.346088, 34.997292, 35.864586> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.366203, 35.226379, 35.537304>,  <38.378273, 35.363834, 35.340935>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.366203, 35.226379, 35.537304>,  <38.346088, 34.997292, 35.864586>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.366203, 35.226379, 35.537304> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184528, 0.799810, 0.571186,
		0.981540, -0.179706, -0.065463,
		0.050287, 0.572721, -0.818206,
		38.381290, 35.398197, 35.291843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.011803, 35.328495, 35.840290>,  <38.346088, 34.997292, 35.864586>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.011803, 35.328495, 35.840290> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.744587, 35.547176, 35.638363>,  <38.584259, 35.678387, 35.517204>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.744587, 35.547176, 35.638363>,  <39.011803, 35.328495, 35.840290>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.744587, 35.547176, 35.638363> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241120, 0.800837, 0.548199,
		0.703979, 0.244495, -0.666810,
		-0.668038, 0.546702, -0.504820,
		38.544174, 35.711185, 35.486916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.293213, 35.934444, 35.524250>,  <39.011803, 35.328495, 35.840290>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.293213, 35.934444, 35.524250> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.901630, 36.014900, 35.538063>,  <38.666683, 36.063175, 35.546352>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.901630, 36.014900, 35.538063>,  <39.293213, 35.934444, 35.524250>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.901630, 36.014900, 35.538063> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199226, 0.905139, 0.375543,
		0.044278, 0.374520, -0.926161,
		-0.978953, 0.201144, 0.034537,
		38.607944, 36.075245, 35.548424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.495834, 36.129318, 36.139507>,  <39.293213, 35.934444, 35.524250>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.495834, 36.129318, 36.139507> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.824738, 36.176495, 36.362213>,  <40.022079, 36.204800, 36.495834>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.824738, 36.176495, 36.362213>,  <39.495834, 36.129318, 36.139507>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.824738, 36.176495, 36.362213> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488733, -0.647592, -0.584607,
		0.291607, 0.752805, -0.590128,
		0.822257, 0.117939, 0.556763,
		40.071415, 36.211876, 36.529243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.029305, 36.260239, 35.696331>,  <39.495834, 36.129318, 36.139507>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.029305, 36.260239, 35.696331> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.195648, 36.103291, 36.024506>,  <40.295452, 36.009121, 36.221409>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.195648, 36.103291, 36.024506>,  <40.029305, 36.260239, 35.696331>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.195648, 36.103291, 36.024506> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385174, -0.741242, -0.549728,
		0.823836, 0.544617, -0.157120,
		0.415855, -0.392367, 0.820434,
		40.320404, 35.985580, 36.270638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.727562, 35.922764, 35.440151>,  <40.029305, 36.260239, 35.696331>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.727562, 35.922764, 35.440151> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.665489, 35.746750, 35.793938>,  <40.628246, 35.641140, 36.006210>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.665489, 35.746750, 35.793938>,  <40.727562, 35.922764, 35.440151>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.665489, 35.746750, 35.793938> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336825, -0.865235, -0.371372,
		0.928691, 0.240280, 0.282487,
		-0.155185, -0.440038, 0.884468,
		40.618935, 35.614738, 36.059277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.365322, 35.562798, 35.623985>,  <40.727562, 35.922764, 35.440151>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.365322, 35.562798, 35.623985> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.076576, 35.370041, 35.822655>,  <40.903328, 35.254387, 35.941856>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.076576, 35.370041, 35.822655>,  <41.365322, 35.562798, 35.623985>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.076576, 35.370041, 35.822655> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300901, -0.864875, -0.401809,
		0.623188, -0.140604, 0.769329,
		-0.721869, -0.481894, 0.496672,
		40.860016, 35.225471, 35.971657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.661541, 35.004654, 35.814602>,  <41.365322, 35.562798, 35.623985>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.661541, 35.004654, 35.814602> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.271954, 34.915001, 35.828217>,  <41.038200, 34.861210, 35.836384>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.271954, 34.915001, 35.828217>,  <41.661541, 35.004654, 35.814602>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.271954, 34.915001, 35.828217> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197729, -0.913307, -0.356053,
		0.110885, -0.340054, 0.933845,
		-0.973965, -0.224130, 0.034034,
		40.979763, 34.847763, 35.838428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.599464, 34.404537, 36.107929>,  <41.661541, 35.004654, 35.814602>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.599464, 34.404537, 36.107929> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.251732, 34.423965, 35.911194>,  <41.043095, 34.435623, 35.793152>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.251732, 34.423965, 35.911194>,  <41.599464, 34.404537, 36.107929>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.251732, 34.423965, 35.911194> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098310, -0.958278, -0.268399,
		-0.484359, -0.281680, 0.828283,
		-0.869328, 0.048573, -0.491842,
		40.990932, 34.438538, 35.763641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.426357, 33.697750, 36.079720>,  <41.599464, 34.404537, 36.107929>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.426357, 33.697750, 36.079720> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.163795, 33.856426, 35.823040>,  <41.006260, 33.951630, 35.669033>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.163795, 33.856426, 35.823040>,  <41.426357, 33.697750, 36.079720>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.163795, 33.856426, 35.823040> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216252, -0.913837, -0.343711,
		-0.722754, -0.086843, 0.685628,
		-0.656401, 0.396687, -0.641699,
		40.966877, 33.975433, 35.630531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.748592, 33.366676, 36.108585>,  <41.426357, 33.697750, 36.079720>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.748592, 33.366676, 36.108585> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.774204, 33.514423, 35.737755>,  <40.789574, 33.603073, 35.515259>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.774204, 33.514423, 35.737755>,  <40.748592, 33.366676, 36.108585>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.774204, 33.514423, 35.737755> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017135, -0.929250, -0.369053,
		-0.997801, 0.007746, -0.065831,
		0.064032, 0.369369, -0.927074,
		40.793415, 33.625233, 35.459633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.368420, 32.915195, 35.665398>,  <40.748592, 33.366676, 36.108585>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.368420, 32.915195, 35.665398> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.607826, 33.130886, 35.428413>,  <40.751469, 33.260300, 35.286221>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.607826, 33.130886, 35.428413>,  <40.368420, 32.915195, 35.665398>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.607826, 33.130886, 35.428413> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263114, -0.830840, -0.490384,
		-0.756672, 0.137616, -0.639147,
		0.598514, 0.539229, -0.592464,
		40.787380, 33.292656, 35.250675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.205406, 32.802307, 34.992310>,  <40.368420, 32.915195, 35.665398>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.205406, 32.802307, 34.992310> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.574989, 32.949085, 34.949120>,  <40.796738, 33.037151, 34.923206>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.574989, 32.949085, 34.949120>,  <40.205406, 32.802307, 34.992310>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.574989, 32.949085, 34.949120> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206968, -0.717007, -0.665632,
		-0.321664, 0.592668, -0.738428,
		0.923957, 0.366941, -0.107972,
		40.852177, 33.059166, 34.916729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.339836, 32.733665, 34.364086>,  <40.205406, 32.802307, 34.992310>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.339836, 32.733665, 34.364086> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.711147, 32.789341, 34.502029>,  <40.933933, 32.822746, 34.584793>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.711147, 32.789341, 34.502029>,  <40.339836, 32.733665, 34.364086>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.711147, 32.789341, 34.502029> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367696, -0.482296, -0.795104,
		0.055656, 0.864880, -0.498884,
		0.928279, 0.139185, 0.344856,
		40.989632, 32.831097, 34.605488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.784935, 32.884331, 33.753704>,  <40.339836, 32.733665, 34.364086>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.784935, 32.884331, 33.753704> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.051105, 32.780899, 34.033802>,  <41.210808, 32.718842, 34.201859>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.051105, 32.780899, 34.033802>,  <40.784935, 32.884331, 33.753704>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.051105, 32.780899, 34.033802> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526329, -0.502672, -0.685784,
		0.529320, 0.824899, -0.198397,
		0.665431, -0.258577, 0.700242,
		41.250736, 32.703327, 34.243874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.429070, 33.014893, 33.496792>,  <40.784935, 32.884331, 33.753704>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.429070, 33.014893, 33.496792> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.465202, 32.720013, 33.764637>,  <41.486881, 32.543083, 33.925343>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.465202, 32.720013, 33.764637>,  <41.429070, 33.014893, 33.496792>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.465202, 32.720013, 33.764637> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611992, -0.489347, -0.621294,
		0.785689, 0.465917, 0.406958,
		0.090327, -0.737198, 0.669611,
		41.492302, 32.498852, 33.965519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.042030, 32.687546, 33.228065>,  <41.429070, 33.014893, 33.496792>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.042030, 32.687546, 33.228065> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.912800, 32.415997, 33.491810>,  <41.835262, 32.253067, 33.650055>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.912800, 32.415997, 33.491810>,  <42.042030, 32.687546, 33.228065>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.912800, 32.415997, 33.491810> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388981, -0.730406, -0.561427,
		0.862736, 0.075092, 0.500048,
		-0.323079, -0.678873, 0.659357,
		41.815876, 32.212334, 33.689617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.597267, 32.195419, 33.287350>,  <42.042030, 32.687546, 33.228065>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.597267, 32.195419, 33.287350> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.239689, 32.034260, 33.365875>,  <42.025143, 31.937565, 33.412991>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.239689, 32.034260, 33.365875>,  <42.597267, 32.195419, 33.287350>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.239689, 32.034260, 33.365875> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276696, -0.840715, -0.465443,
		0.352569, -0.361761, 0.863032,
		-0.893943, -0.402898, 0.196312,
		41.971504, 31.913391, 33.424770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.784492, 31.530762, 33.447762>,  <42.597267, 32.195419, 33.287350>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.784492, 31.530762, 33.447762> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.389473, 31.520380, 33.385712>,  <42.152462, 31.514151, 33.348480>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.389473, 31.520380, 33.385712>,  <42.784492, 31.530762, 33.447762>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.389473, 31.520380, 33.385712> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124246, -0.733506, -0.668230,
		-0.096442, -0.679187, 0.727602,
		-0.987553, -0.025957, -0.155127,
		42.093208, 31.512592, 33.339172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.610027, 30.906097, 33.603729>,  <42.784492, 31.530762, 33.447762>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.610027, 30.906097, 33.603729> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.336254, 31.059811, 33.355896>,  <42.171989, 31.152039, 33.207195>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.336254, 31.059811, 33.355896>,  <42.610027, 30.906097, 33.603729>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.336254, 31.059811, 33.355896> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211825, -0.708345, -0.673333,
		-0.697617, -0.592099, 0.403422,
		-0.684442, 0.384274, -0.619575,
		42.130924, 31.175097, 33.170021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.386219, 30.248972, 33.239643>,  <42.610027, 30.906097, 33.603729>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.386219, 30.248972, 33.239643> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.232620, 30.535557, 33.006668>,  <42.140461, 30.707508, 32.866882>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.232620, 30.535557, 33.006668>,  <42.386219, 30.248972, 33.239643>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.232620, 30.535557, 33.006668> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002707, -0.631664, -0.775238,
		-0.923332, -0.296109, 0.244494,
		-0.383993, 0.716464, -0.582434,
		42.117424, 30.750496, 32.831940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<41.990597, 29.842354, 32.665329> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.030281, 30.215542, 32.526924>,  <42.054092, 30.439455, 32.443882>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.030281, 30.215542, 32.526924>,  <41.990597, 29.842354, 32.665329>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.030281, 30.215542, 32.526924> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046695, -0.351713, -0.934943,
		-0.993970, 0.076601, -0.078459,
		0.099213, 0.932969, -0.346015,
		42.060043, 30.495432, 32.423119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.650543, 29.773203, 32.047421>,  <41.990597, 29.842354, 32.665329>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.650543, 29.773203, 32.047421> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.870159, 30.107306, 32.035416>,  <42.001930, 30.307768, 32.028214>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.870159, 30.107306, 32.035416>,  <41.650543, 29.773203, 32.047421>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.870159, 30.107306, 32.035416> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247995, -0.197095, -0.948500,
		-0.798156, 0.513323, -0.315352,
		0.549041, 0.835256, -0.030011,
		42.034870, 30.357882, 32.026413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.585983, 30.131590, 31.407637>,  <41.650543, 29.773203, 32.047421>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.585983, 30.131590, 31.407637> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.939434, 30.285711, 31.514021>,  <42.151505, 30.378183, 31.577852>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.939434, 30.285711, 31.514021>,  <41.585983, 30.131590, 31.407637>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.939434, 30.285711, 31.514021> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376359, -0.246691, -0.893027,
		-0.278476, 0.889204, -0.362997,
		0.883631, 0.385304, 0.265963,
		42.204525, 30.401302, 31.593809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.733074, 30.519032, 30.837103>,  <41.585983, 30.131590, 31.407637>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.733074, 30.519032, 30.837103> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.073223, 30.434399, 31.029812>,  <42.277313, 30.383619, 31.145437>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.073223, 30.434399, 31.029812>,  <41.733074, 30.519032, 30.837103>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.073223, 30.434399, 31.029812> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361113, -0.431272, -0.826803,
		0.382710, 0.877062, -0.290336,
		0.850371, -0.211582, 0.481770,
		42.328335, 30.370924, 31.174343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.244976, 30.867929, 30.471457>,  <41.733074, 30.519032, 30.837103>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.244976, 30.867929, 30.471457> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.406067, 30.546301, 30.646397>,  <42.502724, 30.353323, 30.751360>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.406067, 30.546301, 30.646397>,  <42.244976, 30.867929, 30.471457>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.406067, 30.546301, 30.646397> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373754, -0.291702, -0.880465,
		0.835534, 0.518050, 0.183049,
		0.402729, -0.804073, 0.437350,
		42.526886, 30.305079, 30.777601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.934631, 30.786163, 30.104309>,  <42.244976, 30.867929, 30.471457>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.934631, 30.786163, 30.104309> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.886841, 30.435265, 30.290283>,  <42.858166, 30.224726, 30.401869>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.886841, 30.435265, 30.290283>,  <42.934631, 30.786163, 30.104309>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.886841, 30.435265, 30.290283> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380398, -0.473002, -0.794712,
		0.917073, 0.081915, 0.390214,
		-0.119473, -0.877245, 0.464938,
		42.850998, 30.172091, 30.429764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.545742, 30.293383, 30.095047>,  <42.934631, 30.786163, 30.104309>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.545742, 30.293383, 30.095047> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.247368, 30.043812, 30.188257>,  <43.068344, 29.894070, 30.244183>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.247368, 30.043812, 30.188257>,  <43.545742, 30.293383, 30.095047>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.247368, 30.043812, 30.188257> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334044, -0.653165, -0.679551,
		0.576193, -0.429059, 0.695636,
		-0.745933, -0.623926, 0.233025,
		43.023586, 29.856634, 30.258165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.860706, 29.623749, 30.004572>,  <43.545742, 30.293383, 30.095047>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.860706, 29.623749, 30.004572> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.473637, 29.523474, 29.993563>,  <43.241394, 29.463308, 29.986958>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.473637, 29.523474, 29.993563>,  <43.860706, 29.623749, 30.004572>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.473637, 29.523474, 29.993563> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204396, -0.715655, -0.667878,
		0.147733, -0.651915, 0.743762,
		-0.967676, -0.250689, -0.027523,
		43.183334, 29.448267, 29.985306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.808937, 28.856955, 30.173878>,  <43.860706, 29.623749, 30.004572>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.808937, 28.856955, 30.173878> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.472809, 28.954538, 29.980240>,  <43.271133, 29.013088, 29.864058>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.472809, 28.954538, 29.980240>,  <43.808937, 28.856955, 30.173878>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.472809, 28.954538, 29.980240> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145595, -0.758627, -0.635049,
		-0.522173, -0.604126, 0.601969,
		-0.840320, 0.243962, -0.484093,
		43.220715, 29.027727, 29.835012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.491920, 28.154818, 30.066277>,  <43.808937, 28.856955, 30.173878>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.491920, 28.154818, 30.066277> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.329407, 28.427732, 29.823158>,  <43.231899, 28.591480, 29.677286>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.329407, 28.427732, 29.823158>,  <43.491920, 28.154818, 30.066277>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.329407, 28.427732, 29.823158> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084178, -0.634394, -0.768412,
		-0.909860, -0.363359, 0.200312,
		-0.406287, 0.682286, -0.607797,
		43.207520, 28.632418, 29.640820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.963272, 27.820169, 29.683430>,  <43.491920, 28.154818, 30.066277>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.963272, 27.820169, 29.683430> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.107182, 28.124640, 29.467587>,  <43.193527, 28.307322, 29.338079>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.107182, 28.124640, 29.467587>,  <42.963272, 27.820169, 29.683430>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.107182, 28.124640, 29.467587> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149635, -0.617918, -0.771872,
		-0.920964, 0.196951, -0.336206,
		0.359769, 0.761175, -0.539610,
		43.215111, 28.352993, 29.305704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.772297, 27.558226, 29.020857>,  <42.963272, 27.820169, 29.683430>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.772297, 27.558226, 29.020857> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.038071, 27.851936, 28.965191>,  <43.197536, 28.028162, 28.931791>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.038071, 27.851936, 28.965191>,  <42.772297, 27.558226, 29.020857>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.038071, 27.851936, 28.965191> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170654, -0.330357, -0.928300,
		-0.727601, 0.593047, -0.344807,
		0.664435, 0.734275, -0.139163,
		43.237400, 28.072220, 28.923443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.634785, 28.017168, 28.350811>,  <42.772297, 27.558226, 29.020857>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.634785, 28.017168, 28.350811> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.029617, 28.047144, 28.407469>,  <43.266518, 28.065128, 28.441463>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.029617, 28.047144, 28.407469>,  <42.634785, 28.017168, 28.350811>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.029617, 28.047144, 28.407469> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155776, -0.241395, -0.957843,
		-0.037586, 0.967529, -0.249949,
		0.987077, 0.074938, 0.141645,
		43.325741, 28.069626, 28.449963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.766438, 28.198471, 27.680279>,  <42.634785, 28.017168, 28.350811>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.766438, 28.198471, 27.680279> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.129997, 28.138065, 27.835760>,  <43.348133, 28.101822, 27.929049>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.129997, 28.138065, 27.835760>,  <42.766438, 28.198471, 27.680279>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.129997, 28.138065, 27.835760> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348729, -0.235861, -0.907060,
		0.228659, 0.959982, -0.161712,
		0.908902, -0.151013, 0.388705,
		43.402668, 28.092762, 27.952372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.210320, 28.354401, 27.151268>,  <42.766438, 28.198471, 27.680279>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.210320, 28.354401, 27.151268> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.430000, 28.130526, 27.399502>,  <43.561810, 27.996201, 27.548443>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.430000, 28.130526, 27.399502>,  <43.210320, 28.354401, 27.151268>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.430000, 28.130526, 27.399502> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442884, -0.434812, -0.784087,
		0.708681, 0.705471, 0.009075,
		0.549205, -0.559686, 0.620585,
		43.594761, 27.962620, 27.585678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.797417, 28.393709, 26.887798>,  <43.210320, 28.354401, 27.151268>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.797417, 28.393709, 26.887798> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.791470, 28.060602, 27.109169>,  <43.787903, 27.860739, 27.241991>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.791470, 28.060602, 27.109169>,  <43.797417, 28.393709, 26.887798>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.791470, 28.060602, 27.109169> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295308, -0.532454, -0.793276,
		0.955287, 0.151638, 0.253838,
		-0.014866, -0.832766, 0.553426,
		43.787010, 27.810772, 27.275196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.512299, 28.069330, 26.846220>,  <43.797417, 28.393709, 26.887798>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.512299, 28.069330, 26.846220> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.260166, 27.779398, 26.957436>,  <44.108887, 27.605438, 27.024166>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.260166, 27.779398, 26.957436>,  <44.512299, 28.069330, 26.846220>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.260166, 27.779398, 26.957436> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287085, -0.550392, -0.783997,
		0.721297, -0.414354, 0.555015,
		-0.630328, -0.724831, 0.278041,
		44.071068, 27.561949, 27.040848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.854527, 27.429214, 26.637819>,  <44.512299, 28.069330, 26.846220>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.854527, 27.429214, 26.637819> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.480778, 27.292883, 26.679354>,  <44.256527, 27.211084, 26.704275>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.480778, 27.292883, 26.679354>,  <44.854527, 27.429214, 26.637819>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.480778, 27.292883, 26.679354> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072395, -0.466965, -0.881307,
		0.348865, -0.815952, 0.460993,
		-0.934373, -0.340831, 0.103837,
		44.200466, 27.190634, 26.710505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.955597, 26.738771, 26.451124>,  <44.854527, 27.429214, 26.637819>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.955597, 26.738771, 26.451124> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.563591, 26.812109, 26.420237>,  <44.328388, 26.856112, 26.401705>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.563591, 26.812109, 26.420237>,  <44.955597, 26.738771, 26.451124>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.563591, 26.812109, 26.420237> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021491, -0.483434, -0.875117,
		-0.197777, -0.855965, 0.477711,
		-0.980012, 0.183344, -0.077217,
		44.269588, 26.867113, 26.397072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.809418, 26.190884, 26.034092>,  <44.955597, 26.738771, 26.451124>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.809418, 26.190884, 26.034092> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.478149, 26.414511, 26.018251>,  <44.279388, 26.548687, 26.008747>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.478149, 26.414511, 26.018251>,  <44.809418, 26.190884, 26.034092>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.478149, 26.414511, 26.018251> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298694, -0.500044, -0.812858,
		-0.474242, -0.661363, 0.581115,
		-0.828177, 0.559067, -0.039597,
		44.229698, 26.582232, 26.006372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.257298, 25.742434, 25.876265>,  <44.809418, 26.190884, 26.034092>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.257298, 25.742434, 25.876265> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.133842, 26.108227, 25.771601>,  <44.059769, 26.327702, 25.708801>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.133842, 26.108227, 25.771601>,  <44.257298, 25.742434, 25.876265>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.133842, 26.108227, 25.771601> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170931, -0.323936, -0.930509,
		-0.935696, -0.242462, 0.256292,
		-0.308636, 0.914482, -0.261661,
		44.041252, 26.382572, 25.693102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.772511, 25.585777, 25.311207>,  <44.257298, 25.742434, 25.876265>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.772511, 25.585777, 25.311207> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.844227, 25.973370, 25.243174>,  <43.887257, 26.205925, 25.202354>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.844227, 25.973370, 25.243174>,  <43.772511, 25.585777, 25.311207>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.844227, 25.973370, 25.243174> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063268, -0.183883, -0.980910,
		-0.981760, 0.165107, -0.094274,
		0.179290, 0.968982, -0.170083,
		43.898014, 26.264065, 25.192148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.175446, 25.921076, 25.064842>,  <43.772511, 25.585777, 25.311207>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.175446, 25.921076, 25.064842> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.472340, 26.118385, 24.883394>,  <43.650475, 26.236771, 24.774527>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.472340, 26.118385, 24.883394>,  <43.175446, 25.921076, 25.064842>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.472340, 26.118385, 24.883394> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368891, -0.264372, -0.891082,
		-0.559471, 0.828727, -0.014262,
		0.742234, 0.493274, -0.453618,
		43.695011, 26.266367, 24.747309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.890320, 26.481932, 24.542612>,  <43.175446, 25.921076, 25.064842>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.890320, 26.481932, 24.542612> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.256245, 26.350048, 24.449303>,  <43.475800, 26.270918, 24.393316>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.256245, 26.350048, 24.449303>,  <42.890320, 26.481932, 24.542612>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.256245, 26.350048, 24.449303> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324657, -0.256721, -0.910325,
		0.240257, 0.908508, -0.341893,
		0.914809, -0.329710, -0.233274,
		43.530685, 26.251135, 24.379320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.678593, 26.758083, 23.835499>,  <42.890320, 26.481932, 24.542612>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.678593, 26.758083, 23.835499> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.326721, 26.568144, 23.825008>,  <42.115601, 26.454180, 23.818714>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.326721, 26.568144, 23.825008>,  <42.678593, 26.758083, 23.835499>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.326721, 26.568144, 23.825008> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238650, 0.393069, 0.888000,
		-0.411357, 0.787411, -0.459096,
		-0.879677, -0.474848, -0.026224,
		42.062817, 26.425690, 23.817141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.169724, 27.292820, 23.931583>,  <42.678593, 26.758083, 23.835499>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.169724, 27.292820, 23.931583> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.008450, 26.938974, 24.025301>,  <41.911686, 26.726665, 24.081532>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.008450, 26.938974, 24.025301>,  <42.169724, 27.292820, 23.931583>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.008450, 26.938974, 24.025301> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422361, 0.407011, 0.809909,
		-0.811820, 0.227587, -0.537729,
		-0.403186, -0.884616, 0.234296,
		41.887493, 26.673590, 24.095591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.572456, 27.401270, 24.038610>,  <42.169724, 27.292820, 23.931583>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.572456, 27.401270, 24.038610> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.606415, 27.053947, 24.234095>,  <41.626789, 26.845554, 24.351385>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.606415, 27.053947, 24.234095>,  <41.572456, 27.401270, 24.038610>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.606415, 27.053947, 24.234095> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.587453, 0.352549, 0.728429,
		-0.804793, -0.348934, -0.480160,
		0.084894, -0.868306, 0.488711,
		41.631882, 26.793455, 24.380709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.904949, 27.260164, 24.313679>,  <41.572456, 27.401270, 24.038610>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.904949, 27.260164, 24.313679> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.134007, 27.020533, 24.537531>,  <41.271442, 26.876755, 24.671843>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.134007, 27.020533, 24.537531>,  <40.904949, 27.260164, 24.313679>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.134007, 27.020533, 24.537531> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465733, 0.324052, 0.823458,
		-0.674664, -0.732186, -0.093444,
		0.572644, -0.599077, 0.559630,
		41.305801, 26.840809, 24.705420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.452679, 26.897655, 24.763445>,  <40.904949, 27.260164, 24.313679>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.452679, 26.897655, 24.763445> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.809898, 26.857149, 24.938814>,  <41.024231, 26.832846, 25.044035>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.809898, 26.857149, 24.938814>,  <40.452679, 26.897655, 24.763445>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.809898, 26.857149, 24.938814> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405430, 0.241552, 0.881634,
		-0.195181, -0.965089, 0.174661,
		0.893046, -0.101265, 0.438423,
		41.077812, 26.826769, 25.070341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.331490, 26.645441, 25.416306>,  <40.452679, 26.897655, 24.763445>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.331490, 26.645441, 25.416306> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.711807, 26.751400, 25.480574>,  <40.939999, 26.814976, 25.519135>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.711807, 26.751400, 25.480574>,  <40.331490, 26.645441, 25.416306>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.711807, 26.751400, 25.480574> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268078, 0.443459, 0.855265,
		0.155305, -0.856256, 0.492652,
		0.950797, 0.264896, 0.160672,
		40.997047, 26.830870, 25.528774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.540039, 26.397648, 26.052610>,  <40.331490, 26.645441, 25.416306>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.540039, 26.397648, 26.052610> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.773373, 26.712234, 25.971424>,  <40.913372, 26.900986, 25.922712>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.773373, 26.712234, 25.971424>,  <40.540039, 26.397648, 26.052610>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.773373, 26.712234, 25.971424> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293865, 0.437309, 0.849944,
		0.757210, -0.436155, 0.486211,
		0.583332, 0.786467, -0.202964,
		40.948372, 26.948175, 25.910536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.964546, 26.474169, 26.553074>,  <40.540039, 26.397648, 26.052610>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.964546, 26.474169, 26.553074> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.926937, 26.835733, 26.386169>,  <40.904373, 27.052671, 26.286026>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.926937, 26.835733, 26.386169>,  <40.964546, 26.474169, 26.553074>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.926937, 26.835733, 26.386169> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165365, 0.399118, 0.901864,
		0.981740, 0.153795, 0.111949,
		-0.094021, 0.903909, -0.417263,
		40.898731, 27.106907, 26.260990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.409454, 26.884277, 26.985598>,  <40.964546, 26.474169, 26.553074>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.409454, 26.884277, 26.985598> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.199326, 27.170050, 26.800720>,  <41.073250, 27.341515, 26.689795>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.199326, 27.170050, 26.800720>,  <41.409454, 26.884277, 26.985598>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.199326, 27.170050, 26.800720> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116388, 0.598404, 0.792695,
		0.842906, 0.362626, -0.397506,
		-0.525321, 0.714433, -0.462193,
		41.041729, 27.384380, 26.662062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.824486, 27.538528, 26.998631>,  <41.409454, 26.884277, 26.985598>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.824486, 27.538528, 26.998631> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.443615, 27.648449, 26.945190>,  <41.215092, 27.714401, 26.913126>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.443615, 27.648449, 26.945190>,  <41.824486, 27.538528, 26.998631>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.443615, 27.648449, 26.945190> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114917, 0.727201, 0.676737,
		0.283122, 0.629019, -0.724001,
		-0.952174, 0.274799, -0.133601,
		41.157963, 27.730888, 26.905109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.859856, 28.245605, 27.048056>,  <41.824486, 27.538528, 26.998631>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.859856, 28.245605, 27.048056> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.469952, 28.171883, 27.098438>,  <41.236008, 28.127649, 27.128668>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.469952, 28.171883, 27.098438>,  <41.859856, 28.245605, 27.048056>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.469952, 28.171883, 27.098438> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049383, 0.728287, 0.683491,
		-0.217704, 0.660022, -0.719010,
		-0.974765, -0.184305, 0.125957,
		41.177521, 28.116590, 27.136225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.644520, 28.824823, 27.150412>,  <41.859856, 28.245605, 27.048056>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.644520, 28.824823, 27.150412> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.349113, 28.610575, 27.314220>,  <41.171871, 28.482025, 27.412506>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.349113, 28.610575, 27.314220>,  <41.644520, 28.824823, 27.150412>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.349113, 28.610575, 27.314220> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150265, 0.722861, 0.674457,
		-0.657281, 0.436558, -0.614328,
		-0.738514, -0.535619, 0.409523,
		41.127560, 28.449888, 27.437077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.074677, 29.257597, 27.320099>,  <41.644520, 28.824823, 27.150412>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.074677, 29.257597, 27.320099> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.988617, 28.949429, 27.560152>,  <40.936981, 28.764526, 27.704184>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.988617, 28.949429, 27.560152>,  <41.074677, 29.257597, 27.320099>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.988617, 28.949429, 27.560152> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214865, 0.636811, 0.740476,
		-0.952650, 0.030368, -0.302548,
		-0.215152, -0.770422, 0.600133,
		40.924072, 28.718302, 27.740192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.475960, 29.431055, 27.747396>,  <41.074677, 29.257597, 27.320099>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.475960, 29.431055, 27.747396> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.617321, 29.111546, 27.942154>,  <40.702137, 28.919840, 28.059008>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.617321, 29.111546, 27.942154>,  <40.475960, 29.431055, 27.747396>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.617321, 29.111546, 27.942154> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384057, 0.350704, 0.854111,
		-0.852999, -0.488838, -0.182837,
		0.353401, -0.798776, 0.486893,
		40.723343, 28.871912, 28.088223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.964985, 29.170914, 28.173458>,  <40.475960, 29.431055, 27.747396>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.964985, 29.170914, 28.173458> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.273579, 28.987206, 28.349586>,  <40.458736, 28.876982, 28.455263>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.273579, 28.987206, 28.349586>,  <39.964985, 29.170914, 28.173458>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.273579, 28.987206, 28.349586> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308214, 0.335665, 0.890131,
		-0.556610, -0.822436, 0.117407,
		0.771485, -0.459269, 0.440321,
		40.505024, 28.849424, 28.481684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.615402, 28.969509, 28.770346>,  <39.964985, 29.170914, 28.173458>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.615402, 28.969509, 28.770346> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.007641, 28.910255, 28.821718>,  <40.242985, 28.874702, 28.852541>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.007641, 28.910255, 28.821718>,  <39.615402, 28.969509, 28.770346>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.007641, 28.910255, 28.821718> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124001, 0.038788, 0.991524,
		-0.151862, -0.988206, 0.019666,
		0.980593, -0.148136, 0.128429,
		40.301819, 28.865814, 28.860247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.778793, 28.346970, 29.145489>,  <39.615402, 28.969509, 28.770346>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.778793, 28.346970, 29.145489> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.076504, 28.603397, 29.220406>,  <40.255131, 28.757254, 29.265356>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.076504, 28.603397, 29.220406>,  <39.778793, 28.346970, 29.145489>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.076504, 28.603397, 29.220406> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279323, 0.044059, 0.959186,
		0.606652, -0.766218, 0.211857,
		0.744280, 0.641069, 0.187293,
		40.299789, 28.795717, 29.276594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.058037, 28.174877, 29.847666>,  <39.778793, 28.346970, 29.145489>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.058037, 28.174877, 29.847666> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.205791, 28.543346, 29.798689>,  <40.294445, 28.764429, 29.769302>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.205791, 28.543346, 29.798689>,  <40.058037, 28.174877, 29.847666>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.205791, 28.543346, 29.798689> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324587, 0.251357, 0.911846,
		0.870746, -0.297078, 0.391849,
		0.369383, 0.921175, -0.122441,
		40.316608, 28.819698, 29.761957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.350574, 28.373983, 30.456879>,  <40.058037, 28.174877, 29.847666>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.350574, 28.373983, 30.456879> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.314022, 28.728971, 30.276192>,  <40.292091, 28.941963, 30.167780>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.314022, 28.728971, 30.276192>,  <40.350574, 28.373983, 30.456879>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.314022, 28.728971, 30.276192> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521148, 0.343917, 0.781106,
		0.848560, 0.306793, 0.431074,
		-0.091384, 0.887468, -0.451718,
		40.286606, 28.995213, 30.140676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.340981, 28.802185, 31.061304>,  <40.350574, 28.373983, 30.456879>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.340981, 28.802185, 31.061304> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.229637, 29.031633, 30.753155>,  <40.162830, 29.169302, 30.568264>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.229637, 29.031633, 30.753155>,  <40.340981, 28.802185, 31.061304>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.229637, 29.031633, 30.753155> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.686325, 0.442315, 0.577335,
		0.671919, 0.689433, 0.270568,
		-0.278357, 0.573620, -0.770375,
		40.146130, 29.203720, 30.522041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<42.087860, 32.262264, 35.169331> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.835350, 32.397968, 34.890362>,  <41.683842, 32.479389, 34.722980>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.835350, 32.397968, 34.890362>,  <42.087860, 32.262264, 35.169331>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.835350, 32.397968, 34.890362> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326615, 0.699321, 0.635824,
		0.703429, 0.629169, -0.330658,
		-0.631277, 0.339259, -0.697419,
		41.645966, 32.499744, 34.681137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.100967, 32.920372, 35.257694>,  <42.087860, 32.262264, 35.169331>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.100967, 32.920372, 35.257694> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.759701, 32.878716, 35.053242>,  <41.554939, 32.853722, 34.930569>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.759701, 32.878716, 35.053242>,  <42.100967, 32.920372, 35.257694>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.759701, 32.878716, 35.053242> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374345, 0.804635, 0.460899,
		0.363278, 0.584565, -0.725474,
		-0.853168, -0.104143, -0.511135,
		41.503750, 32.847473, 34.899902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.094273, 33.480202, 34.808701>,  <42.100967, 32.920372, 35.257694>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.094273, 33.480202, 34.808701> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.721203, 33.349342, 34.869492>,  <41.497360, 33.270828, 34.905968>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.721203, 33.349342, 34.869492>,  <42.094273, 33.480202, 34.808701>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.721203, 33.349342, 34.869492> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276718, 0.919145, 0.280356,
		-0.231408, 0.219425, -0.947788,
		-0.932672, -0.327147, 0.151979,
		41.441402, 33.251198, 34.915085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.549805, 34.003311, 34.475498>,  <42.094273, 33.480202, 34.808701>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.549805, 34.003311, 34.475498> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.318920, 33.767040, 34.701038>,  <41.180389, 33.625275, 34.836361>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.318920, 33.767040, 34.701038>,  <41.549805, 34.003311, 34.475498>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.318920, 33.767040, 34.701038> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.573569, 0.784746, 0.234932,
		-0.581248, -0.187801, -0.791759,
		-0.577208, -0.590682, 0.563848,
		41.145756, 33.589836, 34.870193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.903393, 34.349926, 34.407806>,  <41.549805, 34.003311, 34.475498>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.903393, 34.349926, 34.407806> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.873249, 34.097454, 34.716591>,  <40.855164, 33.945969, 34.901863>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.873249, 34.097454, 34.716591>,  <40.903393, 34.349926, 34.407806>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.873249, 34.097454, 34.716591> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422470, 0.721461, 0.548647,
		-0.903239, -0.284788, -0.321023,
		-0.075357, -0.631182, 0.771966,
		40.850643, 33.908100, 34.948181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.294071, 34.453300, 34.642746>,  <40.903393, 34.349926, 34.407806>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.294071, 34.453300, 34.642746> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.516811, 34.326218, 34.949726>,  <40.650455, 34.249966, 35.133915>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.516811, 34.326218, 34.949726>,  <40.294071, 34.453300, 34.642746>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.516811, 34.326218, 34.949726> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224561, 0.831964, 0.507354,
		-0.799685, -0.454858, 0.391930,
		0.556846, -0.317711, 0.767452,
		40.683865, 34.230904, 35.179962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.819813, 34.403259, 35.252151>,  <40.294071, 34.453300, 34.642746>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.819813, 34.403259, 35.252151> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.194244, 34.422920, 35.391491>,  <40.418903, 34.434715, 35.475094>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.194244, 34.422920, 35.391491>,  <39.819813, 34.403259, 35.252151>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.194244, 34.422920, 35.391491> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286422, 0.681411, 0.673529,
		-0.204266, -0.730249, 0.651929,
		0.936076, 0.049148, 0.348348,
		40.475067, 34.437664, 35.495995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.723034, 34.443089, 36.032333>,  <39.819813, 34.403259, 35.252151>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.723034, 34.443089, 36.032333> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.093601, 34.578003, 35.965424>,  <40.315941, 34.658951, 35.925278>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.093601, 34.578003, 35.965424>,  <39.723034, 34.443089, 36.032333>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.093601, 34.578003, 35.965424> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067425, 0.585759, 0.807675,
		0.370401, -0.736969, 0.565402,
		0.926421, 0.337286, -0.167276,
		40.371529, 34.679188, 35.915241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.895321, 34.649895, 36.633675>,  <39.723034, 34.443089, 36.032333>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.895321, 34.649895, 36.633675> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.190350, 34.812923, 36.418312>,  <40.367367, 34.910740, 36.289097>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.190350, 34.812923, 36.418312>,  <39.895321, 34.649895, 36.633675>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.190350, 34.812923, 36.418312> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021653, 0.782631, 0.622109,
		0.674924, -0.470507, 0.568419,
		0.737569, 0.407569, -0.538405,
		40.411621, 34.935196, 36.256790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.237621, 35.071720, 37.167953>,  <39.895321, 34.649895, 36.633675>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.237621, 35.071720, 37.167953> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.395710, 35.237999, 36.840294>,  <40.490562, 35.337765, 36.643700>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.395710, 35.237999, 36.840294>,  <40.237621, 35.071720, 37.167953>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.395710, 35.237999, 36.840294> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020246, 0.887588, 0.460194,
		0.918364, -0.198462, 0.342375,
		0.395219, 0.415694, -0.819146,
		40.514275, 35.362705, 36.594551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.882530, 35.456844, 37.323696>,  <40.237621, 35.071720, 37.167953>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.882530, 35.456844, 37.323696> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.691013, 35.622883, 37.014256>,  <40.576103, 35.722507, 36.828590>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.691013, 35.622883, 37.014256>,  <40.882530, 35.456844, 37.323696>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.691013, 35.622883, 37.014256> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063169, 0.862591, 0.501943,
		0.875651, 0.289195, -0.386783,
		-0.478795, 0.415095, -0.773597,
		40.547375, 35.747410, 36.782177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.143333, 36.095520, 37.233959>,  <40.882530, 35.456844, 37.323696>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.143333, 36.095520, 37.233959> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.781754, 36.095856, 37.062908>,  <40.564804, 36.096058, 36.960278>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.781754, 36.095856, 37.062908>,  <41.143333, 36.095520, 37.233959>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.781754, 36.095856, 37.062908> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262401, 0.788514, 0.556230,
		0.337657, 0.615017, -0.712560,
		-0.903954, 0.000838, -0.427629,
		40.510567, 36.096107, 36.934620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.974144, 36.824352, 37.149487>,  <41.143333, 36.095520, 37.233959>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.974144, 36.824352, 37.149487> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.638264, 36.607136, 37.150089>,  <40.436733, 36.476807, 37.150452>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.638264, 36.607136, 37.150089>,  <40.974144, 36.824352, 37.149487>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.638264, 36.607136, 37.150089> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502880, 0.778640, 0.375276,
		-0.204965, 0.314362, -0.926912,
		-0.839703, -0.543043, 0.001508,
		40.386353, 36.444221, 37.150543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.489628, 37.265377, 36.762131>,  <40.974144, 36.824352, 37.149487>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.489628, 37.265377, 36.762131> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.304722, 37.004707, 37.002674>,  <40.193779, 36.848305, 37.146999>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.304722, 37.004707, 37.002674>,  <40.489628, 37.265377, 36.762131>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.304722, 37.004707, 37.002674> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.611941, 0.725241, 0.315522,
		-0.641746, -0.222139, -0.734041,
		-0.462267, -0.651674, 0.601357,
		40.166042, 36.809204, 37.183083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.614296, 37.573521, 36.069405>,  <40.489628, 37.265377, 36.762131>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.614296, 37.573521, 36.069405> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.559586, 37.910141, 35.860374>,  <40.526760, 38.112114, 35.734955>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.559586, 37.910141, 35.860374>,  <40.614296, 37.573521, 36.069405>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.559586, 37.910141, 35.860374> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314425, -0.537138, -0.782700,
		-0.939378, 0.057259, 0.338070,
		-0.136774, 0.841549, -0.522579,
		40.518555, 38.162605, 35.703602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.955185, 37.468243, 35.667355>,  <40.614296, 37.573521, 36.069405>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.955185, 37.468243, 35.667355> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.123451, 37.790867, 35.501217>,  <40.224411, 37.984440, 35.401535>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.123451, 37.790867, 35.501217>,  <39.955185, 37.468243, 35.667355>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.123451, 37.790867, 35.501217> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176697, -0.376210, -0.909530,
		-0.889843, 0.455996, -0.015743,
		0.420665, 0.806557, -0.415341,
		40.249649, 38.032833, 35.376614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.504105, 37.711079, 35.113525>,  <39.955185, 37.468243, 35.667355>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.504105, 37.711079, 35.113525> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.838833, 37.896236, 34.996586>,  <40.039669, 38.007332, 34.926422>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.838833, 37.896236, 34.996586>,  <39.504105, 37.711079, 35.113525>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.838833, 37.896236, 34.996586> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199967, -0.238671, -0.950289,
		-0.509658, 0.853678, -0.107161,
		0.836816, 0.462894, -0.292348,
		40.089878, 38.035103, 34.908882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.333401, 38.171303, 34.592289>,  <39.504105, 37.711079, 35.113525>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.333401, 38.171303, 34.592289> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.717720, 38.085293, 34.522282>,  <39.948311, 38.033688, 34.480278>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.717720, 38.085293, 34.522282>,  <39.333401, 38.171303, 34.592289>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.717720, 38.085293, 34.522282> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213314, -0.170064, -0.962068,
		0.177103, 0.961687, -0.209265,
		0.960797, -0.215025, -0.175022,
		40.005959, 38.020786, 34.469776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.436760, 38.523495, 34.010548>,  <39.333401, 38.171303, 34.592289>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.436760, 38.523495, 34.010548> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.729362, 38.252613, 34.042294>,  <39.904922, 38.090084, 34.061340>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.729362, 38.252613, 34.042294>,  <39.436760, 38.523495, 34.010548>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.729362, 38.252613, 34.042294> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178991, -0.303036, -0.936019,
		0.657924, 0.670497, -0.342885,
		0.731504, -0.677203, 0.079361,
		39.948814, 38.049454, 34.066101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.794403, 38.625038, 33.376305>,  <39.436760, 38.523495, 34.010548>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.794403, 38.625038, 33.376305> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.921799, 38.269829, 33.508957>,  <39.998234, 38.056702, 33.588547>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.921799, 38.269829, 33.508957>,  <39.794403, 38.625038, 33.376305>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.921799, 38.269829, 33.508957> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101192, -0.315997, -0.943348,
		0.942511, 0.334001, -0.010779,
		0.318485, -0.888025, 0.331629,
		40.017345, 38.003422, 33.608444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.359379, 38.409885, 32.903542>,  <39.794403, 38.625038, 33.376305>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.359379, 38.409885, 32.903542> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.268272, 38.065659, 33.085770>,  <40.213608, 37.859123, 33.195107>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.268272, 38.065659, 33.085770>,  <40.359379, 38.409885, 32.903542>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.268272, 38.065659, 33.085770> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269050, -0.505275, -0.819945,
		0.935806, -0.064187, 0.346622,
		-0.227769, -0.860568, 0.455570,
		40.199944, 37.807487, 33.222439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.919373, 37.917938, 32.741650>,  <40.359379, 38.409885, 32.903542>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.919373, 37.917938, 32.741650> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.585793, 37.721447, 32.842224>,  <40.385643, 37.603554, 32.902569>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.585793, 37.721447, 32.842224>,  <40.919373, 37.917938, 32.741650>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.585793, 37.721447, 32.842224> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234144, -0.727569, -0.644841,
		0.499702, -0.478893, 0.721775,
		-0.833951, -0.491227, 0.251438,
		40.335606, 37.574078, 32.917656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.094597, 37.218937, 32.765572>,  <40.919373, 37.917938, 32.741650>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.094597, 37.218937, 32.765572> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.696297, 37.238663, 32.734436>,  <40.457317, 37.250500, 32.715755>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.696297, 37.238663, 32.734436>,  <41.094597, 37.218937, 32.765572>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.696297, 37.238663, 32.734436> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011790, -0.769571, -0.638452,
		-0.091385, -0.636654, 0.765716,
		-0.995745, 0.049317, -0.077834,
		40.397572, 37.253456, 32.711086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.833885, 36.503433, 32.874851>,  <41.094597, 37.218937, 32.765572>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.833885, 36.503433, 32.874851> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.572807, 36.728680, 32.672112>,  <40.416161, 36.863827, 32.550468>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.572807, 36.728680, 32.672112>,  <40.833885, 36.503433, 32.874851>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.572807, 36.728680, 32.672112> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184808, -0.767126, -0.614299,
		-0.734739, -0.307277, 0.604764,
		-0.652691, 0.563115, -0.506850,
		40.376999, 36.897614, 32.520058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.278370, 36.069031, 32.677116>,  <40.833885, 36.503433, 32.874851>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.278370, 36.069031, 32.677116> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.239635, 36.371861, 32.418674>,  <40.216393, 36.553558, 32.263607>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.239635, 36.371861, 32.418674>,  <40.278370, 36.069031, 32.677116>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.239635, 36.371861, 32.418674> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295225, -0.641795, -0.707773,
		-0.950508, 0.122208, 0.285658,
		-0.096838, 0.757077, -0.646110,
		40.210583, 36.598984, 32.224842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.565372, 36.099972, 32.425091>,  <40.278370, 36.069031, 32.677116>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.565372, 36.099972, 32.425091> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.826092, 36.257366, 32.165756>,  <39.982521, 36.351803, 32.010155>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.826092, 36.257366, 32.165756>,  <39.565372, 36.099972, 32.425091>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.826092, 36.257366, 32.165756> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198192, -0.736791, -0.646420,
		-0.732041, 0.549827, -0.402250,
		0.651794, 0.393484, -0.648333,
		40.021629, 36.375412, 31.971256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.252583, 35.926346, 31.746145>,  <39.565372, 36.099972, 32.425091>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.252583, 35.926346, 31.746145> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.604504, 36.087799, 31.645733>,  <39.815659, 36.184673, 31.585485>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.604504, 36.087799, 31.645733>,  <39.252583, 35.926346, 31.746145>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.604504, 36.087799, 31.645733> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126925, -0.708437, -0.694267,
		-0.458071, 0.578959, -0.674520,
		0.879807, 0.403637, -0.251031,
		39.868446, 36.208889, 31.570423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.244881, 35.889393, 31.037979>,  <39.252583, 35.926346, 31.746145>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.244881, 35.889393, 31.037979> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.630138, 35.923546, 31.140015>,  <39.861294, 35.944038, 31.201237>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.630138, 35.923546, 31.140015>,  <39.244881, 35.889393, 31.037979>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.630138, 35.923546, 31.140015> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236191, -0.722267, -0.650034,
		0.128743, 0.686324, -0.715810,
		0.963140, 0.085380, 0.255091,
		39.919079, 35.949162, 31.216541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.497917, 36.551929, 30.721968>,  <39.244881, 35.889393, 31.037979>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.497917, 36.551929, 30.721968> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.262554, 36.719738, 30.445480>,  <39.121338, 36.820423, 30.279587>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.262554, 36.719738, 30.445480>,  <39.497917, 36.551929, 30.721968>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.262554, 36.719738, 30.445480> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.562453, 0.401785, 0.722645,
		0.580883, 0.813987, -0.000453,
		-0.588405, 0.419517, -0.691219,
		39.086033, 36.845592, 30.238115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.465958, 37.338223, 30.819880>,  <39.497917, 36.551929, 30.721968>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.465958, 37.338223, 30.819880> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.145718, 37.263065, 30.592291>,  <38.953571, 37.217972, 30.455738>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.145718, 37.263065, 30.592291>,  <39.465958, 37.338223, 30.819880>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.145718, 37.263065, 30.592291> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.593097, 0.383597, 0.707877,
		0.085255, 0.904186, -0.418546,
		-0.800605, -0.187889, -0.568973,
		38.905537, 37.206699, 30.421598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.022747, 37.882675, 30.997061>,  <39.465958, 37.338223, 30.819880>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.022747, 37.882675, 30.997061> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.771690, 37.627113, 30.819134>,  <38.621056, 37.473778, 30.712378>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.771690, 37.627113, 30.819134>,  <39.022747, 37.882675, 30.997061>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.771690, 37.627113, 30.819134> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.775211, 0.460448, 0.432477,
		-0.071496, 0.616269, -0.784283,
		-0.627643, -0.638905, -0.444819,
		38.583397, 37.435440, 30.685688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.481136, 38.300343, 30.856712>,  <39.022747, 37.882675, 30.997061>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.481136, 38.300343, 30.856712> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.298836, 37.944324, 30.852451>,  <38.189453, 37.730713, 30.849894>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.298836, 37.944324, 30.852451>,  <38.481136, 38.300343, 30.856712>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.298836, 37.944324, 30.852451> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.753087, 0.379189, 0.537658,
		-0.474499, 0.253063, -0.843096,
		-0.455754, -0.890042, -0.010654,
		38.162109, 37.677311, 30.849255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.766838, 38.387009, 30.992802>,  <38.481136, 38.300343, 30.856712>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.766838, 38.387009, 30.992802> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.817253, 37.995644, 31.058304>,  <37.847500, 37.760822, 31.097605>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.817253, 37.995644, 31.058304>,  <37.766838, 38.387009, 30.992802>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.817253, 37.995644, 31.058304> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.788367, 0.001413, 0.615204,
		-0.602157, -0.206638, -0.771173,
		0.126035, -0.978416, 0.163757,
		37.855064, 37.702118, 31.107431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.165283, 37.981693, 30.757549>,  <37.766838, 38.387009, 30.992802>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.165283, 37.981693, 30.757549> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.330505, 37.812023, 31.079906>,  <37.429638, 37.710220, 31.273321>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.330505, 37.812023, 31.079906>,  <37.165283, 37.981693, 30.757549>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.330505, 37.812023, 31.079906> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.853065, 0.129606, 0.505453,
		-0.318848, -0.896258, -0.308313,
		0.413058, -0.424174, 0.805891,
		37.454422, 37.684772, 31.321674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.661892, 37.562798, 30.964399>,  <37.165283, 37.981693, 30.757549>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.661892, 37.562798, 30.964399> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.905937, 37.570774, 31.281225>,  <37.052364, 37.575558, 31.471321>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.905937, 37.570774, 31.281225>,  <36.661892, 37.562798, 30.964399>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.905937, 37.570774, 31.281225> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.771666, 0.241688, 0.588318,
		-0.179702, -0.970149, 0.162843,
		0.610114, 0.019938, 0.792063,
		37.088970, 37.576756, 31.518845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.582825, 37.031536, 31.426647>,  <36.661892, 37.562798, 30.964399>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.582825, 37.031536, 31.426647> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.736485, 37.318783, 31.658764>,  <36.828682, 37.491131, 31.798035>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.736485, 37.318783, 31.658764>,  <36.582825, 37.031536, 31.426647>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.736485, 37.318783, 31.658764> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.894605, 0.134109, 0.426260,
		0.228282, -0.682877, 0.693949,
		0.384148, 0.718118, 0.580291,
		36.851730, 37.534218, 31.832851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.222496, 36.921638, 32.068756>,  <36.582825, 37.031536, 31.426647>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.222496, 36.921638, 32.068756> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.350189, 37.298805, 32.106712>,  <36.426807, 37.525105, 32.129486>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.350189, 37.298805, 32.106712>,  <36.222496, 36.921638, 32.068756>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.350189, 37.298805, 32.106712> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.819773, 0.224527, 0.526839,
		0.475458, -0.245975, 0.844652,
		0.319236, 0.942913, 0.094891,
		36.445961, 37.581680, 32.135181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.234238, 37.108829, 32.858345>,  <36.222496, 36.921638, 32.068756>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.234238, 37.108829, 32.858345> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.227867, 37.445107, 32.641838>,  <36.224045, 37.646873, 32.511932>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.227867, 37.445107, 32.641838>,  <36.234238, 37.108829, 32.858345>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.227867, 37.445107, 32.641838> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.723039, 0.364224, 0.586988,
		0.690623, 0.400712, 0.602054,
		-0.015931, 0.840696, -0.541272,
		36.223087, 37.697315, 32.479458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.183189, 37.681000, 33.422440>,  <36.234238, 37.108829, 32.858345>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.183189, 37.681000, 33.422440> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.100979, 37.876289, 33.083172>,  <36.051651, 37.993462, 32.879612>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.100979, 37.876289, 33.083172>,  <36.183189, 37.681000, 33.422440>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.100979, 37.876289, 33.083172> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.808410, 0.403767, 0.428306,
		0.551573, 0.773699, 0.311700,
		-0.205525, 0.488223, -0.848173,
		36.039322, 38.022755, 32.828720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.107971, 38.454731, 33.539318>,  <36.183189, 37.681000, 33.422440>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.107971, 38.454731, 33.539318> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.878407, 38.355782, 33.227055>,  <35.740669, 38.296413, 33.039696>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.878407, 38.355782, 33.227055>,  <36.107971, 38.454731, 33.539318>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.878407, 38.355782, 33.227055> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.770094, 0.487262, 0.411742,
		0.278531, 0.837485, -0.470148,
		-0.573913, -0.247375, -0.780660,
		35.706234, 38.281570, 32.992855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<41.181644, 35.036980, 27.855854> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.816017, 34.942566, 27.723938>,  <40.596642, 34.885918, 27.644789>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.816017, 34.942566, 27.723938>,  <41.181644, 35.036980, 27.855854>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.816017, 34.942566, 27.723938> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387321, 0.749178, 0.537322,
		0.120244, 0.618885, -0.776224,
		-0.914070, -0.236038, -0.329791,
		40.541798, 34.871754, 27.625000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.920521, 35.619644, 27.628565>,  <41.181644, 35.036980, 27.855854>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.920521, 35.619644, 27.628565> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.576534, 35.424839, 27.689596>,  <40.370144, 35.307957, 27.726215>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.576534, 35.424839, 27.689596>,  <40.920521, 35.619644, 27.628565>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.576534, 35.424839, 27.689596> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364789, 0.795656, 0.483591,
		-0.356912, 0.360214, -0.861893,
		-0.859967, -0.487009, 0.152577,
		40.318542, 35.278736, 27.735369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.357876, 36.090645, 27.367153>,  <40.920521, 35.619644, 27.628565>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.357876, 36.090645, 27.367153> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.193058, 35.837330, 27.629194>,  <40.094166, 35.685341, 27.786419>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.193058, 35.837330, 27.629194>,  <40.357876, 36.090645, 27.367153>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.193058, 35.837330, 27.629194> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247765, 0.769759, 0.588288,
		-0.876830, 0.080090, -0.474083,
		-0.412046, -0.633290, 0.655105,
		40.069443, 35.647343, 27.825726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.777782, 36.398617, 27.599977>,  <40.357876, 36.090645, 27.367153>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.777782, 36.398617, 27.599977> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.832767, 36.125397, 27.886906>,  <39.865757, 35.961464, 28.059063>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.832767, 36.125397, 27.886906>,  <39.777782, 36.398617, 27.599977>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.832767, 36.125397, 27.886906> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270279, 0.670847, 0.690589,
		-0.952919, -0.288804, -0.092400,
		0.137458, -0.683049, 0.717321,
		39.874004, 35.920483, 28.102102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.151047, 36.388641, 27.982206>,  <39.777782, 36.398617, 27.599977>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.151047, 36.388641, 27.982206> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.433704, 36.242443, 28.224550>,  <39.603298, 36.154724, 28.369957>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.433704, 36.242443, 28.224550>,  <39.151047, 36.388641, 27.982206>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.433704, 36.242443, 28.224550> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473810, 0.391509, 0.788812,
		-0.525508, -0.844472, 0.103482,
		0.706644, -0.365496, 0.605860,
		39.645699, 36.132793, 28.406309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.791348, 35.880024, 28.394133>,  <39.151047, 36.388641, 27.982206>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.791348, 35.880024, 28.394133> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.121582, 35.967442, 28.602230>,  <39.319721, 36.019894, 28.727089>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.121582, 35.967442, 28.602230>,  <38.791348, 35.880024, 28.394133>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.121582, 35.967442, 28.602230> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548752, 0.525760, 0.649960,
		-0.131475, -0.822079, 0.553986,
		0.825582, 0.218548, 0.520242,
		39.369255, 36.033005, 28.758303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.544201, 35.877613, 29.071680>,  <38.791348, 35.880024, 28.394133>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.544201, 35.877613, 29.071680> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.898926, 36.058456, 29.109953>,  <39.111763, 36.166962, 29.132915>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.898926, 36.058456, 29.109953>,  <38.544201, 35.877613, 29.071680>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.898926, 36.058456, 29.109953> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361577, 0.549890, 0.752917,
		0.287789, -0.702293, 0.651123,
		0.886815, 0.452112, 0.095681,
		39.164970, 36.194092, 29.138657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.689850, 35.769608, 29.731691>,  <38.544201, 35.877613, 29.071680>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.689850, 35.769608, 29.731691> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.915195, 36.087234, 29.640408>,  <39.050404, 36.277809, 29.585638>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.915195, 36.087234, 29.640408>,  <38.689850, 35.769608, 29.731691>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.915195, 36.087234, 29.640408> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360235, 0.484652, 0.797084,
		0.743539, -0.366840, 0.559087,
		0.563365, 0.794066, -0.228209,
		39.084206, 36.325455, 29.571945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.084179, 35.996731, 30.330200>,  <38.689850, 35.769608, 29.731691>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.084179, 35.996731, 30.330200> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.079144, 36.310547, 30.082222>,  <39.076122, 36.498837, 29.933435>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.079144, 36.310547, 30.082222>,  <39.084179, 35.996731, 30.330200>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.079144, 36.310547, 30.082222> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296273, 0.589226, 0.751688,
		0.955020, 0.193136, 0.225021,
		-0.012589, 0.784545, -0.619944,
		39.075367, 36.545910, 29.896238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.670029, 35.740715, 30.438059>,  <39.084179, 35.996731, 30.330200>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.670029, 35.740715, 30.438059> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.932098, 35.721035, 30.739609>,  <40.089340, 35.709229, 30.920538>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.932098, 35.721035, 30.739609>,  <39.670029, 35.740715, 30.438059>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.932098, 35.721035, 30.739609> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605062, -0.563359, -0.562607,
		0.452382, 0.824746, -0.339330,
		0.655173, -0.049198, 0.753875,
		40.128651, 35.706276, 30.965771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.349304, 35.865097, 30.081917>,  <39.670029, 35.740715, 30.438059>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.349304, 35.865097, 30.081917> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.421818, 35.677975, 30.427933>,  <40.465324, 35.565701, 30.635542>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.421818, 35.677975, 30.427933>,  <40.349304, 35.865097, 30.081917>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.421818, 35.677975, 30.427933> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626052, -0.623459, -0.468357,
		0.758416, 0.626466, 0.179847,
		0.181283, -0.467803, 0.865042,
		40.476204, 35.537632, 30.687445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.994957, 35.802185, 30.051945>,  <40.349304, 35.865097, 30.081917>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.994957, 35.802185, 30.051945> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.886780, 35.526314, 30.320633>,  <40.821873, 35.360790, 30.481846>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.886780, 35.526314, 30.320633>,  <40.994957, 35.802185, 30.051945>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.886780, 35.526314, 30.320633> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463658, -0.704780, -0.536941,
		0.843730, 0.166236, 0.510377,
		-0.270445, -0.689674, 0.671721,
		40.805645, 35.319412, 30.522150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.529869, 35.441582, 30.225487>,  <40.994957, 35.802185, 30.051945>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.529869, 35.441582, 30.225487> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.273388, 35.168865, 30.366348>,  <41.119499, 35.005234, 30.450865>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.273388, 35.168865, 30.366348>,  <41.529869, 35.441582, 30.225487>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.273388, 35.168865, 30.366348> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587292, -0.731379, -0.346659,
		0.493910, -0.015461, 0.869375,
		-0.641203, -0.681796, 0.352155,
		41.081028, 34.964325, 30.471994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.921944, 34.864567, 30.382277>,  <41.529869, 35.441582, 30.225487>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.921944, 34.864567, 30.382277> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.555744, 34.704350, 30.367186>,  <41.336025, 34.608219, 30.358131>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.555744, 34.704350, 30.367186>,  <41.921944, 34.864567, 30.382277>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.555744, 34.704350, 30.367186> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351088, -0.749603, -0.561099,
		0.196465, -0.526931, 0.826889,
		-0.915499, -0.400547, -0.037728,
		41.281094, 34.584187, 30.355867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.874794, 34.073265, 30.563141>,  <41.921944, 34.864567, 30.382277>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.874794, 34.073265, 30.563141> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.534458, 34.111187, 30.356421>,  <41.330257, 34.133942, 30.232389>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.534458, 34.111187, 30.356421>,  <41.874794, 34.073265, 30.563141>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.534458, 34.111187, 30.356421> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340072, -0.650411, -0.679202,
		-0.400526, -0.753642, 0.521155,
		-0.850841, 0.094808, -0.516800,
		41.279205, 34.139629, 30.201380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.625107, 33.312302, 30.457672>,  <41.874794, 34.073265, 30.563141>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.625107, 33.312302, 30.457672> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.484848, 33.562153, 30.178564>,  <41.400692, 33.712063, 30.011099>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.484848, 33.562153, 30.178564>,  <41.625107, 33.312302, 30.457672>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.484848, 33.562153, 30.178564> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098678, -0.716287, -0.690793,
		-0.931294, -0.311079, 0.189527,
		-0.350647, 0.624630, -0.697771,
		41.379654, 33.749542, 29.969233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.986263, 32.989025, 30.087620>,  <41.625107, 33.312302, 30.457672>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.986263, 32.989025, 30.087620> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.139645, 33.272469, 29.850693>,  <41.231674, 33.442535, 29.708536>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.139645, 33.272469, 29.850693>,  <40.986263, 32.989025, 30.087620>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.139645, 33.272469, 29.850693> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086081, -0.665972, -0.740994,
		-0.919539, 0.233150, -0.316367,
		0.383454, 0.708606, -0.592317,
		41.254681, 33.485050, 29.672998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.676910, 32.967560, 29.434227>,  <40.986263, 32.989025, 30.087620>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.676910, 32.967560, 29.434227> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.024086, 33.155140, 29.368780>,  <41.232391, 33.267689, 29.329512>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.024086, 33.155140, 29.368780>,  <40.676910, 32.967560, 29.434227>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.024086, 33.155140, 29.368780> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193602, -0.622804, -0.758046,
		-0.457384, 0.626261, -0.631345,
		0.867939, 0.468948, -0.163616,
		41.284466, 33.295826, 29.319695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.772633, 32.839504, 28.791018>,  <40.676910, 32.967560, 29.434227>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.772633, 32.839504, 28.791018> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.135239, 32.989407, 28.868769>,  <41.352802, 33.079346, 28.915421>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.135239, 32.989407, 28.868769>,  <40.772633, 32.839504, 28.791018>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.135239, 32.989407, 28.868769> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369795, -0.482772, -0.793841,
		-0.203652, 0.791513, -0.576223,
		0.906519, 0.374752, 0.194380,
		41.407196, 33.101833, 28.927082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.079662, 33.096745, 28.090487>,  <40.772633, 32.839504, 28.791018>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.079662, 33.096745, 28.090487> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.368927, 33.025181, 28.357328>,  <41.542484, 32.982243, 28.517433>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.368927, 33.025181, 28.357328>,  <41.079662, 33.096745, 28.090487>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.368927, 33.025181, 28.357328> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527713, -0.480010, -0.700792,
		0.445597, 0.858825, -0.252710,
		0.723161, -0.178913, 0.667104,
		41.585876, 32.971508, 28.557459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.692841, 33.077881, 27.767157>,  <41.079662, 33.096745, 28.090487>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.692841, 33.077881, 27.767157> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.843079, 32.903214, 28.094143>,  <41.933220, 32.798412, 28.290335>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.843079, 32.903214, 28.094143>,  <41.692841, 33.077881, 27.767157>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.843079, 32.903214, 28.094143> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596623, -0.561042, -0.573823,
		0.709203, 0.703243, 0.049804,
		0.375595, -0.436671, 0.817464,
		41.955757, 32.772213, 28.339382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.407379, 33.267590, 27.688583>,  <41.692841, 33.077881, 27.767157>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.407379, 33.267590, 27.688583> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.374485, 32.959740, 27.941853>,  <42.354748, 32.775028, 28.093815>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.374485, 32.959740, 27.941853>,  <42.407379, 33.267590, 27.688583>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.374485, 32.959740, 27.941853> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.705758, -0.493546, -0.508250,
		0.703664, 0.405072, 0.583757,
		-0.082233, -0.769629, 0.633174,
		42.349815, 32.728851, 28.131805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.057369, 33.020401, 27.889904>,  <42.407379, 33.267590, 27.688583>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.057369, 33.020401, 27.889904> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.847324, 32.695297, 27.990845>,  <42.721298, 32.500237, 28.051409>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.847324, 32.695297, 27.990845>,  <43.057369, 33.020401, 27.889904>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.847324, 32.695297, 27.990845> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.701447, -0.581260, -0.412442,
		0.481898, -0.039567, 0.875333,
		-0.525115, -0.812756, 0.252354,
		42.689789, 32.451469, 28.066551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<36.730583, 28.501095, 27.693874> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.904125, 28.835657, 27.559891>,  <37.008251, 29.036394, 27.479502>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.904125, 28.835657, 27.559891>,  <36.730583, 28.501095, 27.693874>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.904125, 28.835657, 27.559891> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100303, 0.414296, 0.904598,
		0.895381, -0.358870, 0.263639,
		0.433858, 0.836404, -0.334957,
		37.034283, 29.086578, 27.459404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.124043, 28.680925, 28.230133>,  <36.730583, 28.501095, 27.693874>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.124043, 28.680925, 28.230133> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.098030, 29.009026, 28.002815>,  <37.082420, 29.205885, 27.866425>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.098030, 29.009026, 28.002815>,  <37.124043, 28.680925, 28.230133>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.098030, 29.009026, 28.002815> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125620, 0.571700, 0.810789,
		0.989945, -0.018661, -0.140220,
		-0.065034, 0.820250, -0.568296,
		37.078522, 29.255100, 27.832327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.596073, 29.174788, 28.495033>,  <37.124043, 28.680925, 28.230133>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.596073, 29.174788, 28.495033> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.319668, 29.389210, 28.301067>,  <37.153824, 29.517864, 28.184689>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.319668, 29.389210, 28.301067>,  <37.596073, 29.174788, 28.495033>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.319668, 29.389210, 28.301067> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058619, 0.627078, 0.776748,
		0.720459, 0.565170, -0.401898,
		-0.691015, 0.536056, -0.484914,
		37.112362, 29.550026, 28.155594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.797302, 29.944143, 28.577478>,  <37.596073, 29.174788, 28.495033>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.797302, 29.944143, 28.577478> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.408390, 29.952137, 28.484285>,  <37.175045, 29.956932, 28.428370>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.408390, 29.952137, 28.484285>,  <37.797302, 29.944143, 28.577478>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.408390, 29.952137, 28.484285> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126412, 0.793285, 0.595582,
		0.196722, 0.608522, -0.768766,
		-0.972276, 0.019983, -0.232981,
		37.116707, 29.958132, 28.414391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.639565, 30.675711, 28.536455>,  <37.797302, 29.944143, 28.577478>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.639565, 30.675711, 28.536455> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.284866, 30.494457, 28.573017>,  <37.072048, 30.385706, 28.594954>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.284866, 30.494457, 28.573017>,  <37.639565, 30.675711, 28.536455>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.284866, 30.494457, 28.573017> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336051, 0.767687, 0.545642,
		-0.317418, 0.453129, -0.833018,
		-0.886744, -0.453134, 0.091403,
		37.018845, 30.358517, 28.600437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.212727, 31.237358, 28.556679>,  <37.639565, 30.675711, 28.536455>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.212727, 31.237358, 28.556679> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.005436, 30.940001, 28.725822>,  <36.881062, 30.761585, 28.827309>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.005436, 30.940001, 28.725822>,  <37.212727, 31.237358, 28.556679>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.005436, 30.940001, 28.725822> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330616, 0.630125, 0.702592,
		-0.788756, 0.224297, -0.572324,
		-0.518225, -0.743393, 0.422859,
		36.849968, 30.716982, 28.852680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.608257, 31.512669, 28.781355>,  <37.212727, 31.237358, 28.556679>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.608257, 31.512669, 28.781355> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.639641, 31.185175, 29.008869>,  <36.658470, 30.988678, 29.145378>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.639641, 31.185175, 29.008869>,  <36.608257, 31.512669, 28.781355>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.639641, 31.185175, 29.008869> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182438, 0.549118, 0.815589,
		-0.980081, -0.167762, -0.106283,
		0.078463, -0.818734, 0.568787,
		36.663181, 30.939554, 29.179504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.978390, 31.471655, 29.140348>,  <36.608257, 31.512669, 28.781355>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.978390, 31.471655, 29.140348> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.234821, 31.246124, 29.348621>,  <36.388680, 31.110806, 29.473585>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.234821, 31.246124, 29.348621>,  <35.978390, 31.471655, 29.140348>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.234821, 31.246124, 29.348621> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204181, 0.528688, 0.823892,
		-0.739813, -0.634497, 0.223810,
		0.641083, -0.563829, 0.520682,
		36.427147, 31.076975, 29.504826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.657730, 31.319231, 29.754484>,  <35.978390, 31.471655, 29.140348>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.657730, 31.319231, 29.754484> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.051407, 31.316870, 29.825277>,  <36.287613, 31.315453, 29.867754>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.051407, 31.316870, 29.825277>,  <35.657730, 31.319231, 29.754484>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.051407, 31.316870, 29.825277> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137315, 0.605644, 0.783798,
		-0.111814, -0.795713, 0.595263,
		0.984196, -0.005901, 0.176983,
		36.346664, 31.315100, 29.878372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.540539, 31.290144, 30.413408>,  <35.657730, 31.319231, 29.754484>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.540539, 31.290144, 30.413408> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.915775, 31.411175, 30.345949>,  <36.140915, 31.483793, 30.305473>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.915775, 31.411175, 30.345949>,  <35.540539, 31.290144, 30.413408>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.915775, 31.411175, 30.345949> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042499, 0.583706, 0.810852,
		0.343783, -0.753482, 0.560426,
		0.938087, 0.302575, -0.168646,
		36.197201, 31.501947, 30.295355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.765503, 31.293116, 31.014694>,  <35.540539, 31.290144, 30.413408>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.765503, 31.293116, 31.014694> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.032188, 31.519537, 30.820759>,  <36.192200, 31.655390, 30.704397>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.032188, 31.519537, 30.820759>,  <35.765503, 31.293116, 31.014694>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.032188, 31.519537, 30.820759> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094360, 0.581176, 0.808288,
		0.739313, -0.584650, 0.334068,
		0.666718, 0.566055, -0.484839,
		36.232204, 31.689354, 30.675308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.363323, 31.380621, 31.445518>,  <35.765503, 31.293116, 31.014694>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.363323, 31.380621, 31.445518> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.426949, 31.685442, 31.194448>,  <36.465122, 31.868334, 31.043806>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.426949, 31.685442, 31.194448>,  <36.363323, 31.380621, 31.445518>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.426949, 31.685442, 31.194448> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108351, 0.618453, 0.778316,
		0.981305, -0.191808, 0.015802,
		0.159060, 0.762053, -0.627674,
		36.474667, 31.914059, 31.006145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.965984, 31.688383, 31.647470>,  <36.363323, 31.380621, 31.445518>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.965984, 31.688383, 31.647470> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.802010, 31.977352, 31.424740>,  <36.703625, 32.150734, 31.291101>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.802010, 31.977352, 31.424740>,  <36.965984, 31.688383, 31.647470>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.802010, 31.977352, 31.424740> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124865, 0.649181, 0.750315,
		0.903525, 0.238056, -0.356330,
		-0.409940, 0.722422, -0.556827,
		36.679028, 32.194080, 31.257692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.338818, 32.317265, 31.753979>,  <36.965984, 31.688383, 31.647470>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.338818, 32.317265, 31.753979> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.974640, 32.428123, 31.631161>,  <36.756134, 32.494640, 31.557470>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.974640, 32.428123, 31.631161>,  <37.338818, 32.317265, 31.753979>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.974640, 32.428123, 31.631161> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055315, 0.654074, 0.754406,
		0.409913, 0.703830, -0.580168,
		-0.910446, 0.277149, -0.307045,
		36.701508, 32.511269, 31.539047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.124981, 32.526867, 31.557032>,  <37.338818, 32.317265, 31.753979>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.124981, 32.526867, 31.557032> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.259975, 32.393944, 31.909321>,  <38.340973, 32.314190, 32.120693>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.259975, 32.393944, 31.909321>,  <38.124981, 32.526867, 31.557032>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.259975, 32.393944, 31.909321> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403482, -0.794242, -0.454293,
		0.850472, 0.508675, -0.133967,
		0.337490, -0.332310, 0.880722,
		38.361221, 32.294250, 32.173538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.871925, 32.337803, 31.480167>,  <38.124981, 32.526867, 31.557032>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.871925, 32.337803, 31.480167> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.735237, 32.136131, 31.797413>,  <38.653225, 32.015129, 31.987761>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.735237, 32.136131, 31.797413>,  <38.871925, 32.337803, 31.480167>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.735237, 32.136131, 31.797413> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393800, -0.843074, -0.366262,
		0.853315, 0.187168, 0.486643,
		-0.341724, -0.504177, 0.793114,
		38.632721, 31.984879, 32.035347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.367256, 31.928829, 31.763212>,  <38.871925, 32.337803, 31.480167>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.367256, 31.928829, 31.763212> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.037739, 31.748617, 31.900837>,  <38.840027, 31.640490, 31.983412>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.037739, 31.748617, 31.900837>,  <39.367256, 31.928829, 31.763212>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.037739, 31.748617, 31.900837> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304842, -0.863782, -0.401188,
		0.477943, -0.225614, 0.848922,
		-0.823797, -0.450532, 0.344062,
		38.790600, 31.613457, 32.004055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.561405, 31.379877, 32.091415>,  <39.367256, 31.928829, 31.763212>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.561405, 31.379877, 32.091415> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.175106, 31.288910, 32.041447>,  <38.943325, 31.234329, 32.011463>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.175106, 31.288910, 32.041447>,  <39.561405, 31.379877, 32.091415>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.175106, 31.288910, 32.041447> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256286, -0.911265, -0.322357,
		-0.040529, -0.343333, 0.938339,
		-0.965751, -0.227418, -0.124924,
		38.885380, 31.220684, 32.003971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.518215, 30.672979, 32.320705>,  <39.561405, 31.379877, 32.091415>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.518215, 30.672979, 32.320705> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.213417, 30.759491, 32.076546>,  <39.030540, 30.811398, 31.930050>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.213417, 30.759491, 32.076546>,  <39.518215, 30.672979, 32.320705>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.213417, 30.759491, 32.076546> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229713, -0.791012, -0.567038,
		-0.605473, -0.572296, 0.553064,
		-0.761994, 0.216280, -0.610400,
		38.984818, 30.824375, 31.893425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.240566, 30.037449, 32.274284>,  <39.518215, 30.672979, 32.320705>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.240566, 30.037449, 32.274284> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.100025, 30.250158, 31.966061>,  <39.015701, 30.377785, 31.781126>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.100025, 30.250158, 31.966061>,  <39.240566, 30.037449, 32.274284>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.100025, 30.250158, 31.966061> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020370, -0.827184, -0.561561,
		-0.936022, -0.181609, 0.301465,
		-0.351351, 0.531774, -0.770563,
		38.994621, 30.409691, 31.734892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.861595, 29.568851, 31.956404>,  <39.240566, 30.037449, 32.274284>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.861595, 29.568851, 31.956404> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.930935, 29.853697, 31.684273>,  <38.972538, 30.024605, 31.520994>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.930935, 29.853697, 31.684273>,  <38.861595, 29.568851, 31.956404>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.930935, 29.853697, 31.684273> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324968, -0.693453, -0.643053,
		-0.929702, -0.109611, -0.351625,
		0.173350, 0.712115, -0.680325,
		38.982941, 30.067331, 31.480175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.502392, 29.349762, 31.356291>,  <38.861595, 29.568851, 31.956404>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.502392, 29.349762, 31.356291> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.782066, 29.614332, 31.247734>,  <38.949871, 29.773075, 31.182600>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.782066, 29.614332, 31.247734>,  <38.502392, 29.349762, 31.356291>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.782066, 29.614332, 31.247734> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389210, -0.670564, -0.631552,
		-0.599709, 0.335946, -0.726284,
		0.699188, 0.661425, -0.271390,
		38.991821, 29.812759, 31.166317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.742043, 29.078594, 30.645420>,  <38.502392, 29.349762, 31.356291>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.742043, 29.078594, 30.645420> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.011292, 29.369175, 30.700815>,  <39.172840, 29.543524, 30.734053>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.011292, 29.369175, 30.700815>,  <38.742043, 29.078594, 30.645420>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.011292, 29.369175, 30.700815> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.648477, -0.489776, -0.582750,
		-0.355512, 0.482065, -0.800765,
		0.673118, 0.726452, 0.138487,
		39.213226, 29.587111, 30.742361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.935558, 29.363363, 29.978308>,  <38.742043, 29.078594, 30.645420>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.935558, 29.363363, 29.978308> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.238625, 29.416271, 30.233948>,  <39.420464, 29.448017, 30.387333>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.238625, 29.416271, 30.233948>,  <38.935558, 29.363363, 29.978308>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.238625, 29.416271, 30.233948> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629657, -0.405762, -0.662487,
		0.171694, 0.904357, -0.390717,
		0.757663, 0.132272, 0.639102,
		39.465923, 29.455954, 30.425678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.485561, 29.780523, 29.587421>,  <38.935558, 29.363363, 29.978308>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.485561, 29.780523, 29.587421> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.714180, 29.639446, 29.883783>,  <39.851353, 29.554800, 30.061600>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.714180, 29.639446, 29.883783>,  <39.485561, 29.780523, 29.587421>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.714180, 29.639446, 29.883783> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.711747, -0.236247, -0.661517,
		0.408349, 0.905425, 0.116002,
		0.571549, -0.352694, 0.740904,
		39.885643, 29.533638, 30.106054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.120064, 30.085106, 29.498344>,  <39.485561, 29.780523, 29.587421>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.120064, 30.085106, 29.498344> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.173035, 29.749918, 29.710108>,  <40.204815, 29.548805, 29.837166>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.173035, 29.749918, 29.710108>,  <40.120064, 30.085106, 29.498344>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.173035, 29.749918, 29.710108> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.680461, -0.311508, -0.663277,
		0.720720, 0.448073, 0.528955,
		0.132423, -0.837970, 0.529406,
		40.212761, 29.498528, 29.868929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.856316, 29.993536, 29.570799>,  <40.120064, 30.085106, 29.498344>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.856316, 29.993536, 29.570799> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.682053, 29.635731, 29.610895>,  <40.577496, 29.421047, 29.634953>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.682053, 29.635731, 29.610895>,  <40.856316, 29.993536, 29.570799>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.682053, 29.635731, 29.610895> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473053, -0.322277, -0.819975,
		0.765785, -0.309807, 0.563554,
		-0.435654, -0.894515, 0.100240,
		40.551357, 29.367376, 29.640966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.366375, 29.487511, 29.547924>,  <40.856316, 29.993536, 29.570799>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.366375, 29.487511, 29.547924> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.029953, 29.296907, 29.445503>,  <40.828098, 29.182545, 29.384050>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.029953, 29.296907, 29.445503>,  <41.366375, 29.487511, 29.547924>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.029953, 29.296907, 29.445503> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473632, -0.419999, -0.774127,
		0.261336, -0.772360, 0.578933,
		-0.841056, -0.476509, -0.256054,
		40.777637, 29.153955, 29.368687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.926651, 29.188208, 29.930443>,  <41.366375, 29.487511, 29.547924>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.926651, 29.188208, 29.930443> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.319126, 29.263977, 29.945404>,  <42.554611, 29.309439, 29.954380>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.319126, 29.263977, 29.945404>,  <41.926651, 29.188208, 29.930443>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.319126, 29.263977, 29.945404> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143693, 0.587000, 0.796733,
		0.128964, -0.787116, 0.603173,
		0.981184, 0.189422, 0.037401,
		42.613480, 29.320805, 29.956625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.241917, 28.843248, 30.595903>,  <41.926651, 29.188208, 29.930443>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.241917, 28.843248, 30.595903> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.471973, 29.149921, 30.481771>,  <42.610008, 29.333925, 30.413292>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.471973, 29.149921, 30.481771>,  <42.241917, 28.843248, 30.595903>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.471973, 29.149921, 30.481771> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093472, 0.408092, 0.908143,
		0.812700, -0.495637, 0.306372,
		0.575137, 0.766685, -0.285328,
		42.644516, 29.379927, 30.396173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.703190, 29.094843, 31.158056>,  <42.241917, 28.843248, 30.595903>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.703190, 29.094843, 31.158056> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.762482, 29.418453, 30.930548>,  <42.798058, 29.612619, 30.794043>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.762482, 29.418453, 30.930548>,  <42.703190, 29.094843, 31.158056>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.762482, 29.418453, 30.930548> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083648, 0.562809, 0.822344,
		0.985409, -0.169472, 0.015751,
		0.148229, 0.809028, -0.568773,
		42.806950, 29.661161, 30.759916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.178722, 29.466192, 31.499897>,  <42.703190, 29.094843, 31.158056>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.178722, 29.466192, 31.499897> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.987072, 29.731474, 31.269907>,  <42.872082, 29.890642, 31.131912>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.987072, 29.731474, 31.269907>,  <43.178722, 29.466192, 31.499897>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.987072, 29.731474, 31.269907> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157867, 0.579268, 0.799704,
		0.863431, 0.473931, -0.172846,
		-0.479129, 0.663203, -0.574976,
		42.843334, 29.930435, 31.097414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.459023, 30.099169, 31.783758>,  <43.178722, 29.466192, 31.499897>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.459023, 30.099169, 31.783758> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.110432, 30.184233, 31.606983>,  <42.901279, 30.235271, 31.500917>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.110432, 30.184233, 31.606983>,  <43.459023, 30.099169, 31.783758>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.110432, 30.184233, 31.606983> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314146, 0.449940, 0.835982,
		0.376625, 0.867370, -0.325305,
		-0.871473, 0.212658, -0.441940,
		42.848991, 30.248030, 31.474401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.292439, 30.886538, 32.033424>,  <43.459023, 30.099169, 31.783758>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.292439, 30.886538, 32.033424> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.966499, 30.715322, 31.877062>,  <42.770935, 30.612593, 31.783243>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.966499, 30.715322, 31.877062>,  <43.292439, 30.886538, 32.033424>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.966499, 30.715322, 31.877062> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557405, 0.393420, 0.731109,
		-0.159152, 0.813636, -0.559167,
		-0.814844, -0.428040, -0.390911,
		42.722046, 30.586910, 31.759789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.865253, 31.397751, 31.866199>,  <43.292439, 30.886538, 32.033424>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.865253, 31.397751, 31.866199> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.629993, 31.080914, 31.931513>,  <42.488838, 30.890810, 31.970701>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.629993, 31.080914, 31.931513>,  <42.865253, 31.397751, 31.866199>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.629993, 31.080914, 31.931513> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414932, 0.468838, 0.779758,
		-0.694196, 0.390865, -0.604414,
		-0.588152, -0.792095, 0.163283,
		42.453548, 30.843285, 31.980497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.268482, 31.695017, 32.017887>,  <42.865253, 31.397751, 31.866199>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.268482, 31.695017, 32.017887> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.205521, 31.321842, 32.147415>,  <42.167744, 31.097939, 32.225132>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.205521, 31.321842, 32.147415>,  <42.268482, 31.695017, 32.017887>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.205521, 31.321842, 32.147415> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500450, 0.358036, 0.788264,
		-0.851337, -0.037979, -0.523243,
		-0.157403, -0.932935, 0.323816,
		42.158298, 31.041962, 32.244560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.510628, 31.540775, 32.086201>,  <42.268482, 31.695017, 32.017887>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.510628, 31.540775, 32.086201> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.730999, 31.305681, 32.323196>,  <41.863224, 31.164625, 32.465393>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.730999, 31.305681, 32.323196>,  <41.510628, 31.540775, 32.086201>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.730999, 31.305681, 32.323196> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485544, 0.351684, 0.800354,
		-0.678765, -0.728618, -0.091618,
		0.550931, -0.587737, 0.592486,
		41.896278, 31.129360, 32.500942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.971855, 31.419140, 32.490227>,  <41.510628, 31.540775, 32.086201>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.971855, 31.419140, 32.490227> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.318123, 31.361996, 32.682148>,  <41.525883, 31.327709, 32.797302>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.318123, 31.361996, 32.682148>,  <40.971855, 31.419140, 32.490227>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.318123, 31.361996, 32.682148> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402097, 0.372522, 0.836388,
		-0.298225, -0.916961, 0.265036,
		0.865667, -0.142862, 0.479802,
		41.577824, 31.319138, 32.826088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.769741, 31.554218, 33.165604>,  <40.971855, 31.419140, 32.490227>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.769741, 31.554218, 33.165604> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.164814, 31.517487, 33.216274>,  <41.401859, 31.495447, 33.246677>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.164814, 31.517487, 33.216274>,  <40.769741, 31.554218, 33.165604>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.164814, 31.517487, 33.216274> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102189, 0.234493, 0.966732,
		-0.118479, -0.967771, 0.222221,
		0.987684, -0.091829, 0.126678,
		41.461121, 31.489939, 33.254276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.831844, 31.381117, 33.792717>,  <40.769741, 31.554218, 33.165604>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.831844, 31.381117, 33.792717> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.181087, 31.542625, 33.683426>,  <41.390633, 31.639530, 33.617851>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.181087, 31.542625, 33.683426>,  <40.831844, 31.381117, 33.792717>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.181087, 31.542625, 33.683426> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038300, 0.501894, 0.864081,
		0.486026, -0.764897, 0.422742,
		0.873105, 0.403775, -0.273229,
		41.443020, 31.663757, 33.601460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.186222, 31.389366, 34.389732>,  <40.831844, 31.381117, 33.792717>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.186222, 31.389366, 34.389732> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.413807, 31.641937, 34.178989>,  <41.550358, 31.793480, 34.052544>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.413807, 31.641937, 34.178989>,  <41.186222, 31.389366, 34.389732>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.413807, 31.641937, 34.178989> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047639, 0.664895, 0.745416,
		0.820982, -0.399015, 0.408381,
		0.568963, 0.631428, -0.526858,
		41.584496, 31.831366, 34.020931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.822807, 31.631027, 34.819008>,  <41.186222, 31.389366, 34.389732>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.822807, 31.631027, 34.819008> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.701664, 31.910864, 34.560131>,  <41.628979, 32.078766, 34.404804>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.701664, 31.910864, 34.560131>,  <41.822807, 31.631027, 34.819008>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.701664, 31.910864, 34.560131> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216206, 0.610940, 0.761582,
		0.928188, 0.370576, -0.033771,
		-0.302856, 0.699590, -0.647188,
		41.610806, 32.120739, 34.365974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<43.636143, 32.502728, 28.155041> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.297428, 32.315014, 28.054865>,  <43.094200, 32.202385, 27.994759>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.297428, 32.315014, 28.054865>,  <43.636143, 32.502728, 28.155041>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.297428, 32.315014, 28.054865> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518373, -0.622411, -0.586425,
		0.119323, -0.626400, 0.770315,
		-0.846789, -0.469285, -0.250441,
		43.043392, 32.174229, 27.979733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.932323, 31.847034, 28.121180>,  <43.636143, 32.502728, 28.155041>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.932323, 31.847034, 28.121180> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.571472, 31.796078, 27.956285>,  <43.354961, 31.765503, 27.857349>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.571472, 31.796078, 27.956285>,  <43.932323, 31.847034, 28.121180>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.571472, 31.796078, 27.956285> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360292, -0.748087, -0.557275,
		-0.237394, -0.651258, 0.720769,
		-0.902127, -0.127394, -0.412235,
		43.300835, 31.757860, 27.832615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.727333, 31.087847, 28.137297>,  <43.932323, 31.847034, 28.121180>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.727333, 31.087847, 28.137297> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.511097, 31.253532, 27.844398>,  <43.381355, 31.352943, 27.668659>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.511097, 31.253532, 27.844398>,  <43.727333, 31.087847, 28.137297>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.511097, 31.253532, 27.844398> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263614, -0.743157, -0.615000,
		-0.798915, -0.525496, 0.292555,
		-0.540595, 0.414212, -0.732247,
		43.348919, 31.377796, 27.624723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.332874, 30.526329, 27.848997>,  <43.727333, 31.087847, 28.137297>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.332874, 30.526329, 27.848997> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.375881, 30.811134, 27.571444>,  <43.401684, 30.982018, 27.404911>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.375881, 30.811134, 27.571444>,  <43.332874, 30.526329, 27.848997>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.375881, 30.811134, 27.571444> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273473, -0.692188, -0.667898,
		-0.955852, -0.117947, -0.269140,
		0.107519, 0.712014, -0.693884,
		43.408138, 31.024738, 27.363277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.999474, 30.232002, 27.313652>,  <43.332874, 30.526329, 27.848997>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.999474, 30.232002, 27.313652> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.212677, 30.512526, 27.124308>,  <43.340599, 30.680840, 27.010700>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.212677, 30.512526, 27.124308>,  <42.999474, 30.232002, 27.313652>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.212677, 30.512526, 27.124308> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303104, -0.680588, -0.667029,
		-0.789956, 0.212054, -0.575328,
		0.533008, 0.701308, -0.473360,
		43.372578, 30.722918, 26.982300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.864662, 30.071133, 26.534595>,  <42.999474, 30.232002, 27.313652>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.864662, 30.071133, 26.534595> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.200340, 30.285273, 26.572849>,  <43.401749, 30.413757, 26.595802>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.200340, 30.285273, 26.572849>,  <42.864662, 30.071133, 26.534595>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.200340, 30.285273, 26.572849> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453568, -0.591989, -0.666202,
		-0.300037, 0.602452, -0.739614,
		0.839198, 0.535351, 0.095634,
		43.452099, 30.445877, 26.601540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.016315, 30.275543, 25.863171>,  <42.864662, 30.071133, 26.534595>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.016315, 30.275543, 25.863171> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.350525, 30.319475, 26.078518>,  <43.551052, 30.345835, 26.207726>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.350525, 30.319475, 26.078518>,  <43.016315, 30.275543, 25.863171>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.350525, 30.319475, 26.078518> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437300, -0.726159, -0.530529,
		0.332671, 0.678697, -0.654752,
		0.835523, 0.109831, 0.538367,
		43.601181, 30.352425, 26.240028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.661285, 30.374403, 25.308668>,  <43.016315, 30.275543, 25.863171>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.661285, 30.374403, 25.308668> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.799778, 30.242580, 25.660013>,  <43.882874, 30.163486, 25.870819>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.799778, 30.242580, 25.660013>,  <43.661285, 30.374403, 25.308668>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.799778, 30.242580, 25.660013> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511350, -0.718671, -0.471204,
		0.786540, 0.612295, -0.080309,
		0.346232, -0.329554, 0.878361,
		43.903648, 30.143715, 25.923521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.353313, 30.215715, 25.113190>,  <43.661285, 30.374403, 25.308668>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.353313, 30.215715, 25.113190> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.285099, 30.014467, 25.452080>,  <44.244171, 29.893719, 25.655413>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.285099, 30.014467, 25.452080>,  <44.353313, 30.215715, 25.113190>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.285099, 30.014467, 25.452080> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376422, -0.827869, -0.415859,
		0.910618, 0.247996, 0.330564,
		-0.170532, -0.503120, 0.847224,
		44.233940, 29.863531, 25.706247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.995613, 29.861660, 25.310249>,  <44.353313, 30.215715, 25.113190>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.995613, 29.861660, 25.310249> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.714016, 29.659899, 25.510237>,  <44.545055, 29.538841, 25.630230>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.714016, 29.659899, 25.510237>,  <44.995613, 29.861660, 25.310249>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.714016, 29.659899, 25.510237> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349234, -0.858849, -0.374718,
		0.618407, -0.089193, 0.780780,
		-0.703994, -0.504403, 0.499969,
		44.502819, 29.508577, 25.660227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.305241, 29.219797, 25.408632>,  <44.995613, 29.861660, 25.310249>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.305241, 29.219797, 25.408632> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.922741, 29.144115, 25.497883>,  <44.693241, 29.098707, 25.551434>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.922741, 29.144115, 25.497883>,  <45.305241, 29.219797, 25.408632>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.922741, 29.144115, 25.497883> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117436, -0.946818, -0.299574,
		0.267942, -0.260265, 0.927615,
		-0.956251, -0.189204, 0.223128,
		44.635864, 29.087355, 25.564821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.354317, 28.587515, 25.826996>,  <45.305241, 29.219797, 25.408632>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.354317, 28.587515, 25.826996> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.006077, 28.633123, 25.635557>,  <44.797134, 28.660488, 25.520693>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.006077, 28.633123, 25.635557>,  <45.354317, 28.587515, 25.826996>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.006077, 28.633123, 25.635557> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198909, -0.808156, -0.554364,
		-0.449992, -0.577826, 0.680900,
		-0.870599, 0.114023, -0.478598,
		44.744896, 28.667330, 25.491978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.005806, 28.061876, 25.922859>,  <45.354317, 28.587515, 25.826996>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.005806, 28.061876, 25.922859> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.922424, 28.205706, 25.559046>,  <44.872395, 28.292004, 25.340757>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.922424, 28.205706, 25.559046>,  <45.005806, 28.061876, 25.922859>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.922424, 28.205706, 25.559046> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278254, -0.869729, -0.407611,
		-0.937614, -0.338051, 0.081247,
		-0.208456, 0.359574, -0.909534,
		44.859886, 28.313578, 25.286186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.964695, 27.430405, 25.534863>,  <45.005806, 28.061876, 25.922859>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.964695, 27.430405, 25.534863> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.007320, 27.713049, 25.255049>,  <45.032894, 27.882635, 25.087160>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.007320, 27.713049, 25.255049>,  <44.964695, 27.430405, 25.534863>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.007320, 27.713049, 25.255049> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181295, -0.705554, -0.685074,
		-0.977638, -0.053817, -0.203292,
		0.106565, 0.706610, -0.699533,
		45.039291, 27.925032, 25.045189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.393490, 27.429253, 25.042572>,  <44.964695, 27.430405, 25.534863>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.393490, 27.429253, 25.042572> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.207897, 27.077532, 25.085558>,  <44.096542, 26.866499, 25.111349>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.207897, 27.077532, 25.085558>,  <44.393490, 27.429253, 25.042572>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.207897, 27.077532, 25.085558> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296557, 0.268491, 0.916497,
		-0.834732, 0.393367, -0.385338,
		-0.463980, -0.879304, 0.107462,
		44.068703, 26.813742, 25.117796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.787037, 27.601564, 25.316530>,  <44.393490, 27.429253, 25.042572>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.787037, 27.601564, 25.316530> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.881886, 27.231369, 25.434681>,  <43.938793, 27.009253, 25.505571>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.881886, 27.231369, 25.434681>,  <43.787037, 27.601564, 25.316530>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.881886, 27.231369, 25.434681> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057275, 0.290202, 0.955250,
		-0.969791, -0.243425, 0.015805,
		0.237119, -0.925488, 0.295377,
		43.953022, 26.953722, 25.523294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.460598, 27.600773, 25.869825>,  <43.787037, 27.601564, 25.316530>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.460598, 27.600773, 25.869825> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.681103, 27.269245, 25.908127>,  <43.813404, 27.070328, 25.931108>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.681103, 27.269245, 25.908127>,  <43.460598, 27.600773, 25.869825>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.681103, 27.269245, 25.908127> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137233, 0.023130, 0.990269,
		-0.822970, -0.559035, -0.100991,
		0.551259, -0.828821, 0.095754,
		43.846481, 27.020599, 25.936853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.041286, 27.244246, 26.241880>,  <43.460598, 27.600773, 25.869825>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.041286, 27.244246, 26.241880> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.408333, 27.090036, 26.280552>,  <43.628563, 26.997511, 26.303755>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.408333, 27.090036, 26.280552>,  <43.041286, 27.244246, 26.241880>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.408333, 27.090036, 26.280552> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090050, 0.035262, 0.995313,
		-0.387123, -0.922025, -0.002359,
		0.917620, -0.385521, 0.096679,
		43.683620, 26.974380, 26.309555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.987259, 26.739002, 26.822958>,  <43.041286, 27.244246, 26.241880>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.987259, 26.739002, 26.822958> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.362919, 26.873299, 26.793905>,  <43.588314, 26.953876, 26.776474>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.362919, 26.873299, 26.793905>,  <42.987259, 26.739002, 26.822958>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.362919, 26.873299, 26.793905> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031769, 0.295424, 0.954838,
		0.342042, -0.894426, 0.288113,
		0.939148, 0.335748, -0.072632,
		43.644665, 26.974022, 26.772116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.308918, 26.603048, 27.473682>,  <42.987259, 26.739002, 26.822958>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.308918, 26.603048, 27.473682> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.535881, 26.894531, 27.320305>,  <43.672058, 27.069422, 27.228279>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.535881, 26.894531, 27.320305>,  <43.308918, 26.603048, 27.473682>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.535881, 26.894531, 27.320305> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024297, 0.450644, 0.892373,
		0.823076, -0.515660, 0.237995,
		0.567412, 0.728708, -0.383443,
		43.706104, 27.113144, 27.205273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.798016, 26.670897, 27.945232>,  <43.308918, 26.603048, 27.473682>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.798016, 26.670897, 27.945232> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.822891, 27.017351, 27.746864>,  <43.837818, 27.225224, 27.627844>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.822891, 27.017351, 27.746864>,  <43.798016, 26.670897, 27.945232>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.822891, 27.017351, 27.746864> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204393, 0.475300, 0.855753,
		0.976911, -0.154581, -0.147474,
		0.062189, 0.866137, -0.495922,
		43.841549, 27.277193, 27.598087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.228283, 27.040787, 28.292780>,  <43.798016, 26.670897, 27.945232>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.228283, 27.040787, 28.292780> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.054424, 27.335619, 28.085783>,  <43.950108, 27.512518, 27.961586>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.054424, 27.335619, 28.085783>,  <44.228283, 27.040787, 28.292780>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.054424, 27.335619, 28.085783> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086904, 0.606251, 0.790511,
		0.896399, 0.298620, -0.327560,
		-0.434646, 0.737079, -0.517491,
		43.924030, 27.556744, 27.930536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.466305, 27.588562, 28.613419>,  <44.228283, 27.040787, 28.292780>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.466305, 27.588562, 28.613419> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.174946, 27.757122, 28.397320>,  <44.000130, 27.858257, 28.267660>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.174946, 27.757122, 28.397320>,  <44.466305, 27.588562, 28.613419>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.174946, 27.757122, 28.397320> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286930, 0.528418, 0.799028,
		0.622185, 0.737020, -0.263985,
		-0.728394, 0.421398, -0.540247,
		43.956429, 27.883541, 28.235247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.567963, 28.397787, 28.516909>,  <44.466305, 27.588562, 28.613419>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.567963, 28.397787, 28.516909> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.187511, 28.274309, 28.520256>,  <43.959240, 28.200222, 28.522264>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.187511, 28.274309, 28.520256>,  <44.567963, 28.397787, 28.516909>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.187511, 28.274309, 28.520256> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177213, 0.567812, 0.803856,
		-0.252899, 0.763084, -0.594764,
		-0.951124, -0.308695, 0.008370,
		43.902176, 28.181702, 28.522768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.153080, 28.984043, 28.533850>,  <44.567963, 28.397787, 28.516909>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.153080, 28.984043, 28.533850> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.866646, 28.732796, 28.655630>,  <43.694786, 28.582047, 28.728699>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.866646, 28.732796, 28.655630>,  <44.153080, 28.984043, 28.533850>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.866646, 28.732796, 28.655630> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389777, 0.721656, 0.572089,
		-0.579048, 0.290996, -0.761594,
		-0.716085, -0.628119, 0.304449,
		43.651821, 28.544359, 28.746965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.530251, 29.401520, 28.683338>,  <44.153080, 28.984043, 28.533850>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.530251, 29.401520, 28.683338> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.427593, 29.059700, 28.863951>,  <43.366001, 28.854609, 28.972319>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.427593, 29.059700, 28.863951>,  <43.530251, 29.401520, 28.683338>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.427593, 29.059700, 28.863951> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415383, 0.519352, 0.746814,
		-0.872693, 0.004105, -0.488252,
		-0.256641, -0.854550, 0.451530,
		43.350601, 28.803335, 28.999411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.767414, 29.534437, 28.748785>,  <43.530251, 29.401520, 28.683338>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.767414, 29.534437, 28.748785> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.874306, 29.262197, 29.021658>,  <42.938438, 29.098854, 29.185383>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.874306, 29.262197, 29.021658>,  <42.767414, 29.534437, 28.748785>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.874306, 29.262197, 29.021658> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265949, 0.628345, 0.731063,
		-0.926208, -0.376786, -0.013094,
		0.267227, -0.680599, 0.682184,
		42.954475, 29.058018, 29.226313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.151173, 29.405613, 29.245050>,  <42.767414, 29.534437, 28.748785>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.151173, 29.405613, 29.245050> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.471581, 29.264872, 29.438780>,  <42.663826, 29.180428, 29.555017>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.471581, 29.264872, 29.438780>,  <42.151173, 29.405613, 29.245050>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.471581, 29.264872, 29.438780> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284403, 0.488238, 0.825069,
		-0.526767, -0.798639, 0.291020,
		0.801019, -0.351853, 0.484323,
		42.711887, 29.159315, 29.584076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.554573, 29.113132, 28.895632>,  <42.151173, 29.405613, 29.245050>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.554573, 29.113132, 28.895632> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.179317, 28.996267, 28.969969>,  <40.954163, 28.926147, 29.014570>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.179317, 28.996267, 28.969969>,  <41.554573, 29.113132, 28.895632>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.179317, 28.996267, 28.969969> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055023, -0.655678, -0.753033,
		0.341860, -0.696224, 0.631192,
		-0.938139, -0.292162, 0.185842,
		40.897877, 28.908619, 29.025721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.644924, 28.367340, 28.951532>,  <41.554573, 29.113132, 28.895632>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.644924, 28.367340, 28.951532> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.283787, 28.480932, 28.822392>,  <41.067104, 28.549088, 28.744907>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.283787, 28.480932, 28.822392>,  <41.644924, 28.367340, 28.951532>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.283787, 28.480932, 28.822392> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042795, -0.687787, -0.724650,
		-0.427840, -0.668060, 0.608809,
		-0.902840, 0.283980, -0.322853,
		41.012936, 28.566126, 28.725536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.199978, 27.853336, 28.741148>,  <41.644924, 28.367340, 28.951532>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.199978, 27.853336, 28.741148> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.075409, 28.179136, 28.545351>,  <41.000668, 28.374617, 28.427874>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.075409, 28.179136, 28.545351>,  <41.199978, 27.853336, 28.741148>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.075409, 28.179136, 28.545351> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168165, -0.554214, -0.815210,
		-0.935273, -0.171561, 0.309566,
		-0.311424, 0.814502, -0.489491,
		40.981983, 28.423487, 28.398504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.796719, 27.556683, 28.331907>,  <41.199978, 27.853336, 28.741148>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.796719, 27.556683, 28.331907> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.853569, 27.918165, 28.170359>,  <40.887680, 28.135056, 28.073429>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.853569, 27.918165, 28.170359>,  <40.796719, 27.556683, 28.331907>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.853569, 27.918165, 28.170359> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057553, -0.399779, -0.914803,
		-0.988174, 0.153262, -0.004808,
		0.142127, 0.903708, -0.403871,
		40.896206, 28.189278, 28.049198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.170376, 27.741800, 27.995234>,  <40.796719, 27.556683, 28.331907>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.170376, 27.741800, 27.995234> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.491879, 27.906572, 27.823519>,  <40.684780, 28.005436, 27.720490>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.491879, 27.906572, 27.823519>,  <40.170376, 27.741800, 27.995234>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.491879, 27.906572, 27.823519> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325183, -0.300067, -0.896781,
		-0.498225, 0.860391, -0.107229,
		0.803758, 0.411929, -0.429286,
		40.733006, 28.030151, 27.694733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.938721, 28.022369, 27.413363>,  <40.170376, 27.741800, 27.995234>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.938721, 28.022369, 27.413363> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.330147, 28.000626, 27.333910>,  <40.565002, 27.987579, 27.286238>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.330147, 28.000626, 27.333910>,  <39.938721, 28.022369, 27.413363>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.330147, 28.000626, 27.333910> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205854, -0.231014, -0.950924,
		0.005806, 0.971431, -0.237252,
		0.978565, -0.054360, -0.198632,
		40.623718, 27.984318, 27.274321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.916519, 28.048540, 26.682899>,  <39.938721, 28.022369, 27.413363>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.916519, 28.048540, 26.682899> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.301804, 27.976110, 26.762341>,  <40.532974, 27.932652, 26.810005>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.301804, 27.976110, 26.762341>,  <39.916519, 28.048540, 26.682899>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.301804, 27.976110, 26.762341> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104211, -0.429517, -0.897026,
		0.247733, 0.884718, -0.394843,
		0.963207, -0.181076, 0.198603,
		40.590767, 27.921787, 26.821922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.460346, 28.397011, 26.059898>,  <39.916519, 28.048540, 26.682899>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.460346, 28.397011, 26.059898> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.162277, 28.385481, 25.793400>,  <38.983437, 28.378563, 25.633501>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.162277, 28.385481, 25.793400>,  <39.460346, 28.397011, 26.059898>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.162277, 28.385481, 25.793400> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.638600, 0.318654, 0.700463,
		0.192111, 0.947432, -0.255861,
		-0.745173, -0.028827, -0.666248,
		38.938725, 28.376833, 25.593525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.100819, 28.969976, 26.140083>,  <39.460346, 28.397011, 26.059898>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.100819, 28.969976, 26.140083> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.835552, 28.713726, 25.985258>,  <38.676392, 28.559977, 25.892363>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.835552, 28.713726, 25.985258>,  <39.100819, 28.969976, 26.140083>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.835552, 28.713726, 25.985258> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.663702, 0.264258, 0.699763,
		-0.346001, 0.720949, -0.600429,
		-0.663162, -0.640625, -0.387062,
		38.636604, 28.521538, 25.869139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.488815, 29.358612, 25.860792>,  <39.100819, 28.969976, 26.140083>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.488815, 29.358612, 25.860792> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.363518, 28.984898, 25.928892>,  <38.288338, 28.760668, 25.969751>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.363518, 28.984898, 25.928892>,  <38.488815, 29.358612, 25.860792>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.363518, 28.984898, 25.928892> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.807177, 0.356380, 0.470594,
		-0.500344, 0.009990, -0.865769,
		-0.313244, -0.934288, 0.170249,
		38.269543, 28.704611, 25.979967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.818489, 29.258730, 25.499025>,  <38.488815, 29.358612, 25.860792>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.818489, 29.258730, 25.499025> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.857159, 28.997000, 25.799028>,  <37.880360, 28.839962, 25.979031>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.857159, 28.997000, 25.799028>,  <37.818489, 29.258730, 25.499025>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.857159, 28.997000, 25.799028> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.827978, 0.365317, 0.425436,
		-0.552365, -0.662117, -0.506452,
		0.096673, -0.654327, 0.750007,
		37.886162, 28.800701, 26.024031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.167892, 29.225027, 25.725239>,  <37.818489, 29.258730, 25.499025>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.167892, 29.225027, 25.725239> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.366753, 29.029137, 26.011738>,  <37.486069, 28.911602, 26.183638>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.366753, 29.029137, 26.011738>,  <37.167892, 29.225027, 25.725239>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.366753, 29.029137, 26.011738> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.671412, 0.305745, 0.675075,
		-0.549590, -0.816511, -0.176806,
		0.497149, -0.489725, 0.716249,
		37.515896, 28.882219, 26.226612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.650803, 29.071987, 26.259949>,  <37.167892, 29.225027, 25.725239>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.650803, 29.071987, 26.259949> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.995693, 29.018530, 26.455376>,  <37.202629, 28.986456, 26.572632>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.995693, 29.018530, 26.455376>,  <36.650803, 29.071987, 26.259949>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.995693, 29.018530, 26.455376> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398436, 0.416605, 0.817123,
		-0.312744, -0.899211, 0.305960,
		0.862230, -0.133645, 0.488568,
		37.254364, 28.978437, 26.601946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.465740, 28.772902, 26.849134>,  <36.650803, 29.071987, 26.259949>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.465740, 28.772902, 26.849134> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.822731, 28.939566, 26.918280>,  <37.036926, 29.039564, 26.959766>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.822731, 28.939566, 26.918280>,  <36.465740, 28.772902, 26.849134>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.822731, 28.939566, 26.918280> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381255, 0.491887, 0.782746,
		0.241110, -0.764487, 0.597851,
		0.892474, 0.416661, 0.172866,
		37.090473, 29.064564, 26.970139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<42.457458, 30.261280, 22.756992> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.747044, 30.161922, 23.014420>,  <42.920795, 30.102308, 23.168875>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.747044, 30.161922, 23.014420>,  <42.457458, 30.261280, 22.756992>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.747044, 30.161922, 23.014420> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344704, -0.938363, 0.025590,
		0.597542, -0.240366, -0.764963,
		0.723964, -0.248394, 0.643566,
		42.964233, 30.087404, 23.207489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.058155, 29.994650, 23.409424>,  <42.457458, 30.261280, 22.756992>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.058155, 29.994650, 23.409424> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.393127, 30.087021, 23.607565>,  <42.594112, 30.142443, 23.726450>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.393127, 30.087021, 23.607565>,  <42.058155, 29.994650, 23.409424>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.393127, 30.087021, 23.607565> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543437, 0.448219, 0.709772,
		-0.058122, -0.863581, 0.500849,
		0.837435, 0.230927, 0.495353,
		42.644360, 30.156300, 23.756170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.037121, 29.812067, 24.082170>,  <42.058155, 29.994650, 23.409424>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.037121, 29.812067, 24.082170> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.284046, 30.126694, 24.088390>,  <42.432201, 30.315470, 24.092123>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.284046, 30.126694, 24.088390>,  <42.037121, 29.812067, 24.082170>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.284046, 30.126694, 24.088390> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491297, 0.369992, 0.788500,
		0.614454, -0.494389, 0.614838,
		0.617311, 0.786565, 0.015549,
		42.469238, 30.362663, 24.093056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.957531, 30.084135, 24.635490>,  <42.037121, 29.812067, 24.082170>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.957531, 30.084135, 24.635490> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.200523, 30.387779, 24.541920>,  <42.346317, 30.569965, 24.485777>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.200523, 30.387779, 24.541920>,  <41.957531, 30.084135, 24.635490>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.200523, 30.387779, 24.541920> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396216, 0.544817, 0.739045,
		0.688464, -0.356268, 0.631736,
		0.607479, 0.759110, -0.233928,
		42.382767, 30.615513, 24.471741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.204411, 30.366032, 25.180864>,  <41.957531, 30.084135, 24.635490>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.204411, 30.366032, 25.180864> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.255775, 30.669424, 24.925299>,  <42.286594, 30.851460, 24.771959>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.255775, 30.669424, 24.925299>,  <42.204411, 30.366032, 25.180864>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.255775, 30.669424, 24.925299> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450352, 0.618590, 0.643840,
		0.883569, 0.205061, 0.421018,
		0.128411, 0.758483, -0.638916,
		42.294300, 30.896969, 24.733624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.206470, 30.850163, 25.536983>,  <42.204411, 30.366032, 25.180864>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.206470, 30.850163, 25.536983> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.196213, 31.090986, 25.217768>,  <42.190056, 31.235481, 25.026237>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.196213, 31.090986, 25.217768>,  <42.206470, 30.850163, 25.536983>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.196213, 31.090986, 25.217768> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442372, 0.709049, 0.549141,
		0.896465, 0.367115, 0.248149,
		-0.025648, 0.602060, -0.798039,
		42.188519, 31.271605, 24.978355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.616135, 31.572159, 25.680857>,  <42.206470, 30.850163, 25.536983>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.616135, 31.572159, 25.680857> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.318531, 31.592911, 25.414396>,  <42.139969, 31.605362, 25.254520>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.318531, 31.592911, 25.414396>,  <42.616135, 31.572159, 25.680857>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.318531, 31.592911, 25.414396> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394377, 0.770698, 0.500492,
		0.539365, 0.635086, -0.552948,
		-0.744011, 0.051877, -0.666151,
		42.095329, 31.608475, 25.214552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.568813, 32.251945, 25.643660>,  <42.616135, 31.572159, 25.680857>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.568813, 32.251945, 25.643660> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.231895, 32.126926, 25.468000>,  <42.029743, 32.051914, 25.362604>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.231895, 32.126926, 25.468000>,  <42.568813, 32.251945, 25.643660>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.231895, 32.126926, 25.468000> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507704, 0.733664, 0.451634,
		0.181032, 0.603368, -0.776644,
		-0.842297, -0.312544, -0.439149,
		41.979206, 32.033165, 25.336256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.198692, 32.918144, 25.390707>,  <42.568813, 32.251945, 25.643660>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.198692, 32.918144, 25.390707> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.920879, 32.633137, 25.430580>,  <41.754192, 32.462132, 25.454504>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.920879, 32.633137, 25.430580>,  <42.198692, 32.918144, 25.390707>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.920879, 32.633137, 25.430580> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.573735, 0.632118, 0.520821,
		-0.434105, 0.304539, -0.847826,
		-0.694536, -0.712519, 0.099682,
		41.712517, 32.419380, 25.460485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.574013, 33.227566, 25.240459>,  <42.198692, 32.918144, 25.390707>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.574013, 33.227566, 25.240459> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.463200, 32.907478, 25.453211>,  <41.396709, 32.715424, 25.580862>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.463200, 32.907478, 25.453211>,  <41.574013, 33.227566, 25.240459>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.463200, 32.907478, 25.453211> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.635615, 0.567749, 0.523120,
		-0.720586, -0.193147, -0.665920,
		-0.277037, -0.800222, 0.531879,
		41.380089, 32.667412, 25.612774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.844830, 33.195438, 25.190956>,  <41.574013, 33.227566, 25.240459>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.844830, 33.195438, 25.190956> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.957649, 33.000362, 25.521437>,  <41.025341, 32.883316, 25.719725>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.957649, 33.000362, 25.521437>,  <40.844830, 33.195438, 25.190956>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.957649, 33.000362, 25.521437> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519413, 0.646417, 0.558888,
		-0.806633, -0.586775, -0.070989,
		0.282053, -0.487689, 0.826199,
		41.042267, 32.854057, 25.769297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.253590, 33.285492, 25.551697>,  <40.844830, 33.195438, 25.190956>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.253590, 33.285492, 25.551697> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.521317, 33.166573, 25.824059>,  <40.681953, 33.095222, 25.987476>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.521317, 33.166573, 25.824059>,  <40.253590, 33.285492, 25.551697>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.521317, 33.166573, 25.824059> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430056, 0.592303, 0.681344,
		-0.605863, -0.748861, 0.268584,
		0.669315, -0.297294, 0.680906,
		40.722111, 33.077385, 26.028330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.658783, 32.681988, 25.488453>,  <40.253590, 33.285492, 25.551697>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.658783, 32.681988, 25.488453> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.291492, 32.529793, 25.444464>,  <39.071117, 32.438477, 25.418070>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.291492, 32.529793, 25.444464>,  <39.658783, 32.681988, 25.488453>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.291492, 32.529793, 25.444464> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322245, -0.556286, -0.765966,
		0.230263, -0.738767, 0.633405,
		-0.918225, -0.380485, -0.109971,
		39.016026, 32.415646, 25.411472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.757572, 31.978014, 25.510275>,  <39.658783, 32.681988, 25.488453>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.757572, 31.978014, 25.510275> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.432732, 32.074463, 25.297726>,  <39.237827, 32.132332, 25.170197>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.432732, 32.074463, 25.297726>,  <39.757572, 31.978014, 25.510275>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.432732, 32.074463, 25.297726> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474591, -0.256884, -0.841887,
		-0.339496, -0.935880, 0.094182,
		-0.812100, 0.241119, -0.531372,
		39.189102, 32.146797, 25.138313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.596817, 31.393826, 24.978760>,  <39.757572, 31.978014, 25.510275>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.596817, 31.393826, 24.978760> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.396233, 31.716707, 24.854210>,  <39.275883, 31.910437, 24.779480>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.396233, 31.716707, 24.854210>,  <39.596817, 31.393826, 24.978760>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.396233, 31.716707, 24.854210> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227692, -0.224079, -0.947600,
		-0.834680, -0.546084, -0.071427,
		-0.501464, 0.807206, -0.311373,
		39.245792, 31.958868, 24.760798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.174358, 31.136477, 24.431278>,  <39.596817, 31.393826, 24.978760>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.174358, 31.136477, 24.431278> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.199852, 31.533487, 24.389658>,  <39.215149, 31.771694, 24.364687>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.199852, 31.533487, 24.389658>,  <39.174358, 31.136477, 24.431278>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.199852, 31.533487, 24.389658> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166872, -0.113393, -0.979436,
		-0.983916, 0.045063, -0.172853,
		0.063737, 0.992528, -0.104049,
		39.218971, 31.831245, 24.358442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.840786, 31.242558, 23.854906>,  <39.174358, 31.136477, 24.431278>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.840786, 31.242558, 23.854906> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.025032, 31.595991, 23.888636>,  <39.135578, 31.808052, 23.908873>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.025032, 31.595991, 23.888636>,  <38.840786, 31.242558, 23.854906>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.025032, 31.595991, 23.888636> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233730, -0.029096, -0.971866,
		-0.856274, 0.467363, -0.219923,
		0.460613, 0.883586, 0.084323,
		39.163216, 31.861067, 23.913933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.572086, 31.695395, 23.284740>,  <38.840786, 31.242558, 23.854906>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.572086, 31.695395, 23.284740> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.932392, 31.808331, 23.416744>,  <39.148575, 31.876093, 23.495947>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.932392, 31.808331, 23.416744>,  <38.572086, 31.695395, 23.284740>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.932392, 31.808331, 23.416744> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400951, -0.248566, -0.881733,
		-0.166921, 0.926552, -0.337104,
		0.900764, 0.282342, 0.330012,
		39.202621, 31.893034, 23.515747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.780674, 32.245243, 22.787285>,  <38.572086, 31.695395, 23.284740>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.780674, 32.245243, 22.787285> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.080177, 32.051960, 22.968775>,  <39.259880, 31.935991, 23.077669>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.080177, 32.051960, 22.968775>,  <38.780674, 32.245243, 22.787285>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.080177, 32.051960, 22.968775> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311317, -0.347953, -0.884313,
		0.585182, 0.803392, -0.110104,
		0.748762, -0.483207, 0.453726,
		39.304806, 31.906998, 23.104893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.083435, 31.978416, 22.239189>,  <38.780674, 32.245243, 22.787285>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.083435, 31.978416, 22.239189> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.287407, 31.757956, 22.503370>,  <39.409790, 31.625679, 22.661879>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.287407, 31.757956, 22.503370>,  <39.083435, 31.978416, 22.239189>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.287407, 31.757956, 22.503370> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392405, -0.534199, -0.748766,
		0.765498, 0.640985, -0.056130,
		0.509933, -0.551153, 0.660454,
		39.440388, 31.592609, 22.701506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.620255, 31.893194, 21.932968>,  <39.083435, 31.978416, 22.239189>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.620255, 31.893194, 21.932968> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.636528, 31.613092, 22.218061>,  <39.646294, 31.445032, 22.389116>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.636528, 31.613092, 22.218061>,  <39.620255, 31.893194, 21.932968>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.636528, 31.613092, 22.218061> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300766, -0.671655, -0.677066,
		0.952830, 0.241914, 0.183286,
		0.040687, -0.700255, 0.712732,
		39.648735, 31.403015, 22.431881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.304676, 31.474815, 21.973164>,  <39.620255, 31.893194, 21.932968>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.304676, 31.474815, 21.973164> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.034523, 31.228376, 22.135290>,  <39.872433, 31.080513, 22.232567>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.034523, 31.228376, 22.135290>,  <40.304676, 31.474815, 21.973164>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.034523, 31.228376, 22.135290> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429483, -0.775381, -0.462957,
		0.599500, -0.138597, 0.788283,
		-0.675384, -0.616097, 0.405316,
		39.831909, 31.043547, 22.256886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.664810, 30.909817, 21.839602>,  <40.304676, 31.474815, 21.973164>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.664810, 30.909817, 21.839602> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.327171, 30.751814, 21.984638>,  <40.124588, 30.657011, 22.071661>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.327171, 30.751814, 21.984638>,  <40.664810, 30.909817, 21.839602>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.327171, 30.751814, 21.984638> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263240, -0.894413, -0.361566,
		0.467128, -0.209748, 0.858951,
		-0.844095, -0.395008, 0.362591,
		40.073944, 30.633312, 22.093416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.856770, 30.257732, 22.088099>,  <40.664810, 30.909817, 21.839602>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.856770, 30.257732, 22.088099> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.458874, 30.219193, 22.074141>,  <40.220139, 30.196070, 22.065765>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.458874, 30.219193, 22.074141>,  <40.856770, 30.257732, 22.088099>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.458874, 30.219193, 22.074141> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101152, -0.977727, -0.183898,
		-0.016398, -0.186459, 0.982326,
		-0.994736, -0.096349, -0.034894,
		40.160454, 30.190289, 22.063673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.635021, 29.701447, 22.560270>,  <40.856770, 30.257732, 22.088099>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.635021, 29.701447, 22.560270> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.366146, 29.762840, 22.270550>,  <40.204823, 29.799677, 22.096718>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.366146, 29.762840, 22.270550>,  <40.635021, 29.701447, 22.560270>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.366146, 29.762840, 22.270550> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111841, -0.988100, -0.105591,
		-0.731889, 0.010030, 0.681350,
		-0.672183, 0.153484, -0.724301,
		40.164490, 29.808886, 22.053259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.075756, 29.332626, 22.885956>,  <40.635021, 29.701447, 22.560270>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.075756, 29.332626, 22.885956> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.049530, 29.374889, 22.489059>,  <40.033794, 29.400248, 22.250921>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.049530, 29.374889, 22.489059>,  <40.075756, 29.332626, 22.885956>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.049530, 29.374889, 22.489059> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157932, -0.982944, -0.094230,
		-0.985271, 0.150528, 0.081131,
		-0.065563, 0.105655, -0.992239,
		40.029861, 29.406586, 22.191387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.403309, 29.236887, 22.638947>,  <40.075756, 29.332626, 22.885956>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.403309, 29.236887, 22.638947> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.576416, 28.892912, 22.747183>,  <39.680279, 28.686527, 22.812124>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.576416, 28.892912, 22.747183>,  <39.403309, 29.236887, 22.638947>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.576416, 28.892912, 22.747183> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269422, 0.163064, 0.949116,
		-0.860305, -0.483650, -0.161118,
		0.432767, -0.859938, 0.270591,
		39.706245, 28.634930, 22.828360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.937111, 28.741261, 22.947346>,  <39.403309, 29.236887, 22.638947>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.937111, 28.741261, 22.947346> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.284039, 28.592886, 23.080112>,  <39.492195, 28.503860, 23.159773>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.284039, 28.592886, 23.080112>,  <38.937111, 28.741261, 22.947346>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.284039, 28.592886, 23.080112> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451484, -0.305487, 0.838356,
		-0.209578, -0.876976, -0.432425,
		0.867317, -0.370933, 0.331917,
		39.544235, 28.481606, 23.179688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.703125, 28.174416, 23.395960>,  <38.937111, 28.741261, 22.947346>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.703125, 28.174416, 23.395960> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.074219, 28.252878, 23.522980>,  <39.296875, 28.299955, 23.599192>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.074219, 28.252878, 23.522980>,  <38.703125, 28.174416, 23.395960>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.074219, 28.252878, 23.522980> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291738, -0.149591, 0.944728,
		0.232819, -0.969094, -0.081554,
		0.927731, 0.196158, 0.317549,
		39.352539, 28.311726, 23.618244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.977261, 27.567520, 23.753891>,  <38.703125, 28.174416, 23.395960>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.977261, 27.567520, 23.753891> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.185421, 27.885973, 23.877409>,  <39.310318, 28.077045, 23.951519>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.185421, 27.885973, 23.877409>,  <38.977261, 27.567520, 23.753891>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.185421, 27.885973, 23.877409> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323353, -0.150966, 0.934158,
		0.790332, -0.585987, 0.178870,
		0.520401, 0.796134, 0.308794,
		39.341541, 28.124813, 23.970047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.261860, 27.307564, 24.377426>,  <38.977261, 27.567520, 23.753891>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.261860, 27.307564, 24.377426> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.269520, 27.707275, 24.390553>,  <39.274117, 27.947102, 24.398428>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.269520, 27.707275, 24.390553>,  <39.261860, 27.307564, 24.377426>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.269520, 27.707275, 24.390553> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275268, -0.026282, 0.961008,
		0.961177, -0.027436, 0.274565,
		0.019151, 0.999278, 0.032814,
		39.275265, 28.007059, 24.400396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.660229, 27.425123, 24.970860>,  <39.261860, 27.307564, 24.377426>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.660229, 27.425123, 24.970860> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.439507, 27.747927, 24.886719>,  <39.307072, 27.941608, 24.836233>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.439507, 27.747927, 24.886719>,  <39.660229, 27.425123, 24.970860>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.439507, 27.747927, 24.886719> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314417, 0.032308, 0.948735,
		0.772432, 0.589658, 0.235909,
		-0.551807, 0.807007, -0.210354,
		39.273964, 27.990028, 24.823612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.740517, 27.868834, 25.560301>,  <39.660229, 27.425123, 24.970860>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.740517, 27.868834, 25.560301> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.423656, 28.031593, 25.378342>,  <39.233540, 28.129250, 25.269165>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.423656, 28.031593, 25.378342>,  <39.740517, 27.868834, 25.560301>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.423656, 28.031593, 25.378342> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389089, 0.237562, 0.890042,
		0.470225, 0.882041, -0.029864,
		-0.792148, 0.406900, -0.454900,
		39.186012, 28.153664, 25.241871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.384132, 28.251614, 25.962069>,  <39.740517, 27.868834, 25.560301>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.384132, 28.251614, 25.962069> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.605419, 28.001165, 26.181858>,  <40.738194, 27.850897, 26.313732>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.605419, 28.001165, 26.181858>,  <40.384132, 28.251614, 25.962069>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.605419, 28.001165, 26.181858> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388106, -0.389922, -0.835066,
		0.737103, 0.675229, 0.027289,
		0.553220, -0.626121, 0.549473,
		40.771385, 27.813330, 26.346701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.996243, 28.298473, 25.715919>,  <40.384132, 28.251614, 25.962069>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.996243, 28.298473, 25.715919> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.958500, 27.939314, 25.887907>,  <40.935856, 27.723818, 25.991100>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.958500, 27.939314, 25.887907>,  <40.996243, 28.298473, 25.715919>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.958500, 27.939314, 25.887907> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413991, -0.428172, -0.803294,
		0.905378, 0.102208, 0.412123,
		-0.094357, -0.897899, 0.429970,
		40.930191, 27.669945, 26.016897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.683578, 27.987785, 25.606728>,  <40.996243, 28.298473, 25.715919>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.683578, 27.987785, 25.606728> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.460751, 27.672855, 25.712399>,  <41.327053, 27.483896, 25.775801>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.460751, 27.672855, 25.712399>,  <41.683578, 27.987785, 25.606728>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.460751, 27.672855, 25.712399> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458824, -0.556938, -0.692315,
		0.692209, -0.264457, 0.671498,
		-0.557071, -0.787326, 0.264178,
		41.293629, 27.436657, 25.791653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.141140, 27.360357, 25.707136>,  <41.683578, 27.987785, 25.606728>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.141140, 27.360357, 25.707136> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.779171, 27.203896, 25.640072>,  <41.561989, 27.110018, 25.599833>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.779171, 27.203896, 25.640072>,  <42.141140, 27.360357, 25.707136>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.779171, 27.203896, 25.640072> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382842, -0.576169, -0.722123,
		0.185860, -0.717654, 0.671140,
		-0.904924, -0.391155, -0.167662,
		41.507694, 27.086550, 25.589773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.191818, 26.653400, 25.692707>,  <42.141140, 27.360357, 25.707136>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.191818, 26.653400, 25.692707> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.859753, 26.743706, 25.488804>,  <41.660511, 26.797888, 25.366463>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.859753, 26.743706, 25.488804>,  <42.191818, 26.653400, 25.692707>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.859753, 26.743706, 25.488804> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325003, -0.546940, -0.771512,
		-0.452983, -0.806158, 0.380680,
		-0.830168, 0.225759, -0.509757,
		41.610703, 26.811434, 25.335876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.104553, 26.053595, 25.359764>,  <42.191818, 26.653400, 25.692707>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.104553, 26.053595, 25.359764> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.883816, 26.327898, 25.169939>,  <41.751373, 26.492479, 25.056044>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.883816, 26.327898, 25.169939>,  <42.104553, 26.053595, 25.359764>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.883816, 26.327898, 25.169939> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052550, -0.539328, -0.840455,
		-0.832293, -0.488734, 0.261586,
		-0.551839, 0.685759, -0.474561,
		41.718266, 26.533627, 25.027571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.533180, 25.627626, 25.022108>,  <42.104553, 26.053595, 25.359764>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.533180, 25.627626, 25.022108> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.613934, 25.974943, 24.840864>,  <41.662384, 26.183334, 24.732119>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.613934, 25.974943, 24.840864>,  <41.533180, 25.627626, 25.022108>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.613934, 25.974943, 24.840864> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091392, -0.443915, -0.891396,
		-0.975136, 0.221370, -0.010265,
		0.201885, 0.868294, -0.453109,
		41.674500, 26.235432, 24.704931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.240623, 25.667072, 24.469004>,  <41.533180, 25.627626, 25.022108>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.240623, 25.667072, 24.469004> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.464767, 25.981319, 24.364082>,  <41.599255, 26.169868, 24.301128>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.464767, 25.981319, 24.364082>,  <41.240623, 25.667072, 24.469004>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.464767, 25.981319, 24.364082> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091321, -0.373370, -0.923177,
		-0.823200, 0.493357, -0.280964,
		0.560359, 0.785617, -0.262304,
		41.632874, 26.217005, 24.285391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.855209, 25.947826, 23.932571>,  <41.240623, 25.667072, 24.469004>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.855209, 25.947826, 23.932571> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.244461, 26.039688, 23.925884>,  <41.478012, 26.094805, 23.921871>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.244461, 26.039688, 23.925884>,  <40.855209, 25.947826, 23.932571>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.244461, 26.039688, 23.925884> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082811, -0.416794, -0.905221,
		-0.214857, 0.879512, -0.424612,
		0.973128, 0.229656, -0.016718,
		41.536400, 26.108585, 23.920868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<37.416969, 36.327999, 35.220608> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.779396, 36.246422, 35.368900>,  <37.996853, 36.197475, 35.457874>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.779396, 36.246422, 35.368900>,  <37.416969, 36.327999, 35.220608>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.779396, 36.246422, 35.368900> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190301, -0.586139, -0.787545,
		0.377918, 0.784121, -0.492272,
		0.906070, -0.203948, 0.370731,
		38.051216, 36.185238, 35.480122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.745518, 36.379364, 34.707375>,  <37.416969, 36.327999, 35.220608>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.745518, 36.379364, 34.707375> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.997162, 36.168610, 34.935974>,  <38.148148, 36.042156, 35.073135>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.997162, 36.168610, 34.935974>,  <37.745518, 36.379364, 34.707375>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.997162, 36.168610, 34.935974> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081339, -0.686565, -0.722505,
		0.773051, 0.501019, -0.389067,
		0.629108, -0.526886, 0.571502,
		38.185894, 36.010544, 35.107426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.234886, 36.156448, 34.247017>,  <37.745518, 36.379364, 34.707375>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.234886, 36.156448, 34.247017> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.292900, 35.929722, 34.571407>,  <38.327709, 35.793686, 34.766041>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.292900, 35.929722, 34.571407>,  <38.234886, 36.156448, 34.247017>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.292900, 35.929722, 34.571407> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001689, -0.819782, -0.572673,
		0.989424, 0.081691, -0.119858,
		0.145039, -0.566819, 0.810974,
		38.336411, 35.759678, 34.814701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.779770, 35.724937, 34.066925>,  <38.234886, 36.156448, 34.247017>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.779770, 35.724937, 34.066925> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.580772, 35.530411, 34.354256>,  <38.461372, 35.413696, 34.526653>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.580772, 35.530411, 34.354256>,  <38.779770, 35.724937, 34.066925>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.580772, 35.530411, 34.354256> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085752, -0.851589, -0.517149,
		0.863217, -0.195682, 0.465365,
		-0.497497, -0.486318, 0.718326,
		38.431522, 35.384514, 34.569752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.996269, 35.030163, 34.008095>,  <38.779770, 35.724937, 34.066925>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.996269, 35.030163, 34.008095> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.705635, 34.962891, 34.274563>,  <38.531254, 34.922527, 34.434444>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.705635, 34.962891, 34.274563>,  <38.996269, 35.030163, 34.008095>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.705635, 34.962891, 34.274563> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035545, -0.959081, -0.280892,
		0.686155, -0.227772, 0.690877,
		-0.726587, -0.168179, 0.666174,
		38.487659, 34.912437, 34.474415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.154736, 34.408592, 34.448864>,  <38.996269, 35.030163, 34.008095>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.154736, 34.408592, 34.448864> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.758133, 34.454872, 34.425076>,  <38.520172, 34.482639, 34.410805>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.758133, 34.454872, 34.425076>,  <39.154736, 34.408592, 34.448864>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.758133, 34.454872, 34.425076> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082106, -0.911161, -0.403787,
		-0.100903, -0.395474, 0.912918,
		-0.991502, 0.115700, -0.059468,
		38.460682, 34.489582, 34.407234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.940266, 33.728516, 34.596676>,  <39.154736, 34.408592, 34.448864>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.940266, 33.728516, 34.596676> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.642479, 33.934658, 34.426884>,  <38.463806, 34.058342, 34.325008>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.642479, 33.934658, 34.426884>,  <38.940266, 33.728516, 34.596676>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.642479, 33.934658, 34.426884> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182327, -0.768531, -0.613284,
		-0.642284, -0.379174, 0.666107,
		-0.744465, 0.515352, -0.424482,
		38.419140, 34.089264, 34.299538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.494419, 33.296776, 34.566376>,  <38.940266, 33.728516, 34.596676>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.494419, 33.296776, 34.566376> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.365444, 33.560646, 34.294827>,  <38.288059, 33.718967, 34.131897>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.365444, 33.560646, 34.294827>,  <38.494419, 33.296776, 34.566376>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.365444, 33.560646, 34.294827> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206054, -0.748888, -0.629847,
		-0.923893, -0.063200, 0.377396,
		-0.322434, 0.659676, -0.678870,
		38.268715, 33.758549, 34.091167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.882977, 33.113731, 34.305489>,  <38.494419, 33.296776, 34.566376>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.882977, 33.113731, 34.305489> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.019993, 33.308193, 33.983913>,  <38.102203, 33.424870, 33.790966>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.019993, 33.308193, 33.983913>,  <37.882977, 33.113731, 34.305489>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.019993, 33.308193, 33.983913> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221611, -0.789751, -0.571998,
		-0.912992, 0.374095, -0.162785,
		0.342541, 0.486154, -0.803940,
		38.122757, 33.454041, 33.742733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.447102, 32.886154, 33.805973>,  <37.882977, 33.113731, 34.305489>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.447102, 32.886154, 33.805973> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.748062, 33.050735, 33.600216>,  <37.928638, 33.149483, 33.476761>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.748062, 33.050735, 33.600216>,  <37.447102, 32.886154, 33.805973>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.748062, 33.050735, 33.600216> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039780, -0.751105, -0.658983,
		-0.657498, 0.516285, -0.548768,
		0.752405, 0.411450, -0.514388,
		37.973785, 33.174171, 33.445900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.228981, 32.761105, 33.074860>,  <37.447102, 32.886154, 33.805973>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.228981, 32.761105, 33.074860> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.625423, 32.807682, 33.049099>,  <37.863289, 32.835629, 33.033642>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.625423, 32.807682, 33.049099>,  <37.228981, 32.761105, 33.074860>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.625423, 32.807682, 33.049099> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043323, -0.739985, -0.671227,
		-0.125814, 0.662468, -0.738449,
		0.991108, 0.116441, -0.064400,
		37.922756, 32.842613, 33.029778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.312664, 32.640877, 32.429146>,  <37.228981, 32.761105, 33.074860>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.312664, 32.640877, 32.429146> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.687351, 32.603962, 32.564228>,  <37.912163, 32.581814, 32.645279>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.687351, 32.603962, 32.564228>,  <37.312664, 32.640877, 32.429146>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.687351, 32.603962, 32.564228> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127558, -0.808345, -0.574723,
		0.326025, 0.581430, -0.745418,
		0.936716, -0.092290, 0.337707,
		37.968365, 32.576275, 32.665539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.426064, 33.169003, 31.909834>,  <37.312664, 32.640877, 32.429146>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.426064, 33.169003, 31.909834> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.045361, 33.061363, 31.850859>,  <36.816936, 32.996780, 31.815474>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.045361, 33.061363, 31.850859>,  <37.426064, 33.169003, 31.909834>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.045361, 33.061363, 31.850859> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296861, 0.685955, 0.664334,
		-0.077636, 0.676055, -0.732750,
		-0.951760, -0.269101, -0.147439,
		36.759834, 32.980633, 31.806627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.101032, 33.774960, 31.708216>,  <37.426064, 33.169003, 31.909834>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.101032, 33.774960, 31.708216> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.825768, 33.519527, 31.845997>,  <36.660606, 33.366268, 31.928665>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.825768, 33.519527, 31.845997>,  <37.101032, 33.774960, 31.708216>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.825768, 33.519527, 31.845997> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269293, 0.665628, 0.696004,
		-0.673730, 0.386207, -0.630026,
		-0.688164, -0.638580, 0.344451,
		36.619320, 33.327953, 31.949331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.434170, 34.246346, 31.844887>,  <37.101032, 33.774960, 31.708216>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.434170, 34.246346, 31.844887> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.383545, 33.909485, 32.054562>,  <36.353172, 33.707371, 32.180367>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.383545, 33.909485, 32.054562>,  <36.434170, 34.246346, 31.844887>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.383545, 33.909485, 32.054562> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400304, 0.526855, 0.749787,
		-0.907601, -0.114940, -0.403794,
		-0.126560, -0.842148, 0.524185,
		36.345577, 33.656841, 32.211819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.995472, 34.434139, 32.302090>,  <36.434170, 34.246346, 31.844887>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.995472, 34.434139, 32.302090> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.091717, 34.082268, 32.466175>,  <36.149464, 33.871147, 32.564629>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.091717, 34.082268, 32.466175>,  <35.995472, 34.434139, 32.302090>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.091717, 34.082268, 32.466175> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477101, 0.260864, 0.839241,
		-0.845271, -0.397642, -0.356929,
		0.240608, -0.879676, 0.410216,
		36.163898, 33.818363, 32.589241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.345684, 34.078518, 32.421570>,  <35.995472, 34.434139, 32.302090>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.345684, 34.078518, 32.421570> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.656506, 33.998257, 32.660210>,  <35.842999, 33.950100, 32.803394>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.656506, 33.998257, 32.660210>,  <35.345684, 34.078518, 32.421570>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.656506, 33.998257, 32.660210> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481724, 0.420486, 0.768852,
		-0.405134, -0.884833, 0.230080,
		0.777051, -0.200653, 0.596598,
		35.889622, 33.938061, 32.839188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.947857, 33.729137, 32.928295>,  <35.345684, 34.078518, 32.421570>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.947857, 33.729137, 32.928295> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.304092, 33.829937, 33.079739>,  <35.517834, 33.890415, 33.170605>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.304092, 33.829937, 33.079739>,  <34.947857, 33.729137, 32.928295>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.304092, 33.829937, 33.079739> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440776, 0.273101, 0.855063,
		0.112074, -0.928393, 0.354295,
		0.890593, 0.251995, 0.378606,
		35.571270, 33.905537, 33.193321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.872887, 33.456059, 33.599777>,  <34.947857, 33.729137, 32.928295>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.872887, 33.456059, 33.599777> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.150913, 33.743629, 33.601284>,  <35.317730, 33.916172, 33.602188>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.150913, 33.743629, 33.601284>,  <34.872887, 33.456059, 33.599777>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.150913, 33.743629, 33.601284> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470835, 0.451239, 0.758088,
		0.543316, -0.528697, 0.652141,
		0.695070, 0.718932, 0.003764,
		35.359436, 33.959309, 33.602413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.009708, 33.657768, 34.319016>,  <34.872887, 33.456059, 33.599777>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.009708, 33.657768, 34.319016> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.131569, 33.967136, 34.096657>,  <35.204685, 34.152756, 33.963242>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.131569, 33.967136, 34.096657>,  <35.009708, 33.657768, 34.319016>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.131569, 33.967136, 34.096657> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187035, 0.620851, 0.761290,
		0.933921, -0.127953, 0.333796,
		0.304647, 0.773416, -0.555894,
		35.222961, 34.199162, 33.929890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.442039, 34.090424, 34.772144>,  <35.009708, 33.657768, 34.319016>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.442039, 34.090424, 34.772144> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.327759, 34.320465, 34.465515>,  <35.259190, 34.458488, 34.281540>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.327759, 34.320465, 34.465515>,  <35.442039, 34.090424, 34.772144>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.327759, 34.320465, 34.465515> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212040, 0.742147, 0.635812,
		0.934565, 0.344198, -0.090089,
		-0.285705, 0.575105, -0.766568,
		35.242046, 34.492996, 34.235546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.629929, 34.872009, 34.927860>,  <35.442039, 34.090424, 34.772144>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.629929, 34.872009, 34.927860> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.357082, 34.853096, 34.635975>,  <35.193375, 34.841747, 34.460846>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.357082, 34.853096, 34.635975>,  <35.629929, 34.872009, 34.927860>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.357082, 34.853096, 34.635975> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.593611, 0.618536, 0.514819,
		0.427011, 0.784333, -0.449983,
		-0.682120, -0.047282, -0.729710,
		35.152447, 34.838913, 34.417061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.298820, 35.562832, 34.820812>,  <35.629929, 34.872009, 34.927860>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.298820, 35.562832, 34.820812> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.035843, 35.316345, 34.647362>,  <34.878056, 35.168453, 34.543289>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.035843, 35.316345, 34.647362>,  <35.298820, 35.562832, 34.820812>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.035843, 35.316345, 34.647362> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.753429, 0.545562, 0.367024,
		0.010404, 0.568008, -0.822957,
		-0.657447, -0.616221, -0.433629,
		34.838608, 35.131477, 34.517273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.683964, 35.940632, 34.623516>,  <35.298820, 35.562832, 34.820812>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.683964, 35.940632, 34.623516> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.520123, 35.580658, 34.563725>,  <34.421818, 35.364674, 34.527847>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.520123, 35.580658, 34.563725>,  <34.683964, 35.940632, 34.623516>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.520123, 35.580658, 34.563725> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.860125, 0.326377, 0.391999,
		-0.303986, 0.289138, -0.907740,
		-0.409607, -0.899932, -0.149481,
		34.397240, 35.310677, 34.518879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.139603, 36.107624, 34.221458>,  <34.683964, 35.940632, 34.623516>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.139603, 36.107624, 34.221458> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.062737, 35.756123, 34.396214>,  <34.016617, 35.545223, 34.501064>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.062737, 35.756123, 34.396214>,  <34.139603, 36.107624, 34.221458>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.062737, 35.756123, 34.396214> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.945341, 0.285264, 0.157968,
		-0.263442, -0.382648, -0.885539,
		-0.192167, -0.878752, 0.436884,
		34.005085, 35.492496, 34.527279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.484772, 35.954868, 33.985058>,  <34.139603, 36.107624, 34.221458>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.484772, 35.954868, 33.985058> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.569164, 35.745621, 34.315350>,  <33.619801, 35.620071, 34.513527>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.569164, 35.745621, 34.315350>,  <33.484772, 35.954868, 33.985058>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.569164, 35.745621, 34.315350> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.941933, 0.116963, 0.314774,
		-0.261244, -0.844195, -0.468066,
		0.210984, -0.523120, 0.825731,
		33.632458, 35.588684, 34.563068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.548183, 36.060070, 33.243431>,  <33.484772, 35.954868, 33.985058>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.548183, 36.060070, 33.243431> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.688801, 35.685825, 33.230511>,  <33.773170, 35.461277, 33.222759>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.688801, 35.685825, 33.230511>,  <33.548183, 36.060070, 33.243431>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.688801, 35.685825, 33.230511> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.781660, -0.274365, -0.560117,
		0.515191, 0.222155, -0.827784,
		0.351547, -0.935613, -0.032299,
		33.794266, 35.405140, 33.220821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.121193, 36.539459, 33.017536>,  <33.548183, 36.060070, 33.243431>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.121193, 36.539459, 33.017536> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.511021, 36.596313, 33.086826>,  <33.744919, 36.630424, 33.128399>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.511021, 36.596313, 33.086826>,  <33.121193, 36.539459, 33.017536>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.511021, 36.596313, 33.086826> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158009, -0.984065, -0.081544,
		0.158872, 0.106842, -0.981501,
		0.974573, 0.142131, 0.173222,
		33.803394, 36.638954, 33.138794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.981167, 37.106968, 32.539238>,  <33.121193, 36.539459, 33.017536>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.981167, 37.106968, 32.539238> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.366428, 37.205677, 32.582027>,  <33.597584, 37.264904, 32.607700>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.366428, 37.205677, 32.582027>,  <32.981167, 37.106968, 32.539238>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.366428, 37.205677, 32.582027> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178231, -0.287734, -0.940980,
		-0.201431, 0.925371, -0.321114,
		0.963151, 0.246775, 0.106971,
		33.655373, 37.279709, 32.614120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.175850, 37.363491, 31.925686>,  <32.981167, 37.106968, 32.539238>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.175850, 37.363491, 31.925686> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.523685, 37.263367, 32.095940>,  <33.732388, 37.203293, 32.198093>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.523685, 37.263367, 32.095940>,  <33.175850, 37.363491, 31.925686>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.523685, 37.263367, 32.095940> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218927, -0.577191, -0.786716,
		0.442595, 0.777300, -0.447118,
		0.869587, -0.250310, 0.425633,
		33.784561, 37.188274, 32.223629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.611229, 37.290855, 31.423325>,  <33.175850, 37.363491, 31.925686>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.611229, 37.290855, 31.423325> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.798267, 37.090183, 31.714439>,  <33.910488, 36.969780, 31.889109>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.798267, 37.090183, 31.714439>,  <33.611229, 37.290855, 31.423325>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.798267, 37.090183, 31.714439> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318982, -0.672096, -0.668235,
		0.824383, 0.544613, -0.154240,
		0.467593, -0.501681, 0.727786,
		33.938545, 36.939678, 31.932775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.156544, 37.188221, 31.088167>,  <33.611229, 37.290855, 31.423325>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.156544, 37.188221, 31.088167> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.118340, 36.907623, 31.370665>,  <34.095417, 36.739265, 31.540163>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.118340, 36.907623, 31.370665>,  <34.156544, 37.188221, 31.088167>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.118340, 36.907623, 31.370665> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275194, -0.700444, -0.658519,
		0.956633, 0.131459, 0.259947,
		-0.095510, -0.701496, 0.706244,
		34.089687, 36.697174, 31.582539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.744419, 36.862808, 31.039240>,  <34.156544, 37.188221, 31.088167>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.744419, 36.862808, 31.039240> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.540886, 36.582134, 31.238728>,  <34.418766, 36.413731, 31.358421>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.540886, 36.582134, 31.238728>,  <34.744419, 36.862808, 31.039240>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.540886, 36.582134, 31.238728> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380918, -0.703044, -0.600525,
		0.772005, -0.115594, 0.625017,
		-0.508832, -0.701689, 0.498721,
		34.388237, 36.371628, 31.388344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.173309, 36.237450, 31.037161>,  <34.744419, 36.862808, 31.039240>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.173309, 36.237450, 31.037161> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.823746, 36.063004, 31.123034>,  <34.614006, 35.958336, 31.174557>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.823746, 36.063004, 31.123034>,  <35.173309, 36.237450, 31.037161>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.823746, 36.063004, 31.123034> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272529, -0.805298, -0.526519,
		0.402503, -0.401624, 0.822612,
		-0.873910, -0.436111, 0.214681,
		34.561573, 35.932171, 31.187437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.304447, 35.520763, 31.252041>,  <35.173309, 36.237450, 31.037161>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.304447, 35.520763, 31.252041> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.924263, 35.525780, 31.127806>,  <34.696152, 35.528790, 31.053265>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.924263, 35.525780, 31.127806>,  <35.304447, 35.520763, 31.252041>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.924263, 35.525780, 31.127806> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188501, -0.771231, -0.608006,
		-0.247161, -0.636432, 0.730661,
		-0.950462, 0.012545, -0.310586,
		34.639126, 35.529545, 31.034630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.178238, 34.848000, 31.256319>,  <35.304447, 35.520763, 31.252041>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.178238, 34.848000, 31.256319> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.887306, 34.997360, 31.025991>,  <34.712746, 35.086975, 30.887794>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.887306, 34.997360, 31.025991>,  <35.178238, 34.848000, 31.256319>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.887306, 34.997360, 31.025991> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357114, -0.510572, -0.782167,
		-0.586056, -0.774526, 0.238008,
		-0.727329, 0.373398, -0.575818,
		34.669106, 35.109379, 30.853247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.852150, 34.215141, 30.884577>,  <35.178238, 34.848000, 31.256319>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.852150, 34.215141, 30.884577> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.766048, 34.549862, 30.683210>,  <34.714386, 34.750694, 30.562389>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.766048, 34.549862, 30.683210>,  <34.852150, 34.215141, 30.884577>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.766048, 34.549862, 30.683210> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433165, -0.380201, -0.817200,
		-0.875234, -0.393968, -0.280633,
		-0.215254, 0.836801, -0.503417,
		34.701473, 34.800903, 30.532185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.565102, 34.000435, 30.321413>,  <34.852150, 34.215141, 30.884577>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.565102, 34.000435, 30.321413> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.710743, 34.360153, 30.224501>,  <34.798130, 34.575985, 30.166353>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.710743, 34.360153, 30.224501>,  <34.565102, 34.000435, 30.321413>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.710743, 34.360153, 30.224501> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382886, -0.381671, -0.841264,
		-0.849015, 0.213542, -0.483295,
		0.364105, 0.899292, -0.242282,
		34.819973, 34.629940, 30.151815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.416676, 34.016357, 29.683737>,  <34.565102, 34.000435, 30.321413>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.416676, 34.016357, 29.683737> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.688385, 34.307262, 29.723103>,  <34.851410, 34.481804, 29.746723>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.688385, 34.307262, 29.723103>,  <34.416676, 34.016357, 29.683737>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.688385, 34.307262, 29.723103> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420350, -0.275628, -0.864486,
		-0.601578, 0.628589, -0.492929,
		0.679271, 0.727259, 0.098416,
		34.892166, 34.525440, 29.752628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.496624, 34.202694, 28.996645>,  <34.416676, 34.016357, 29.683737>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.496624, 34.202694, 28.996645> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.783375, 34.378418, 29.213198>,  <34.955425, 34.483852, 29.343130>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.783375, 34.378418, 29.213198>,  <34.496624, 34.202694, 28.996645>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.783375, 34.378418, 29.213198> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.670720, -0.222567, -0.707529,
		-0.190333, 0.870326, -0.454209,
		0.716873, 0.439313, 0.541384,
		34.998436, 34.510212, 29.375612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.846561, 34.699558, 28.521851>,  <34.496624, 34.202694, 28.996645>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.846561, 34.699558, 28.521851> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.079823, 34.583374, 28.825314>,  <35.219780, 34.513664, 29.007393>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.079823, 34.583374, 28.825314>,  <34.846561, 34.699558, 28.521851>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.079823, 34.583374, 28.825314> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.720704, -0.245955, -0.648145,
		0.374854, 0.924738, 0.065903,
		0.583156, -0.290456, 0.758660,
		35.254768, 34.496239, 29.052912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.508377, 35.063107, 28.468863>,  <34.846561, 34.699558, 28.521851>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.508377, 35.063107, 28.468863> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.573833, 34.722332, 28.667833>,  <35.613106, 34.517868, 28.787216>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.573833, 34.722332, 28.667833>,  <35.508377, 35.063107, 28.468863>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.573833, 34.722332, 28.667833> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.775365, -0.200686, -0.598778,
		0.609945, 0.483669, 0.627719,
		0.163636, -0.851933, 0.497427,
		35.622925, 34.466751, 28.817062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.311207, 35.074306, 28.486645>,  <35.508377, 35.063107, 28.468863>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.311207, 35.074306, 28.486645> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.176785, 34.710350, 28.583944>,  <36.096130, 34.491978, 28.642324>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.176785, 34.710350, 28.583944>,  <36.311207, 35.074306, 28.486645>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.176785, 34.710350, 28.583944> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.797033, -0.412339, -0.441266,
		0.501804, 0.045588, 0.863779,
		-0.336053, -0.909889, 0.243249,
		36.075970, 34.437382, 28.656919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.925327, 34.744488, 28.726866>,  <36.311207, 35.074306, 28.486645>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.925327, 34.744488, 28.726866> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.670086, 34.449085, 28.639755>,  <36.516941, 34.271843, 28.587490>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.670086, 34.449085, 28.639755>,  <36.925327, 34.744488, 28.726866>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.670086, 34.449085, 28.639755> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.707867, -0.451431, -0.543263,
		0.302894, -0.500815, 0.810826,
		-0.638106, -0.738508, -0.217775,
		36.478653, 34.227531, 28.574423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.332977, 34.184170, 28.781794>,  <36.925327, 34.744488, 28.726866>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.332977, 34.184170, 28.781794> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.015095, 34.077663, 28.563601>,  <36.824368, 34.013760, 28.432686>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.015095, 34.077663, 28.563601>,  <37.332977, 34.184170, 28.781794>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.015095, 34.077663, 28.563601> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600169, -0.479106, -0.640511,
		-0.090797, -0.836397, 0.540551,
		-0.794703, -0.266266, -0.545481,
		36.776684, 33.997784, 28.399956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.312855, 33.407379, 28.673262>,  <37.332977, 34.184170, 28.781794>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.312855, 33.407379, 28.673262> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.092411, 33.577381, 28.386026>,  <36.960144, 33.679382, 28.213686>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.092411, 33.577381, 28.386026>,  <37.312855, 33.407379, 28.673262>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.092411, 33.577381, 28.386026> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417892, -0.604297, -0.678374,
		-0.722250, -0.673942, 0.155429,
		-0.551110, 0.425003, -0.718088,
		36.927078, 33.704884, 28.170599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.205223, 32.904697, 28.244247>,  <37.312855, 33.407379, 28.673262>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.205223, 32.904697, 28.244247> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.088932, 33.205536, 28.007660>,  <37.019157, 33.386040, 27.865707>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.088932, 33.205536, 28.007660>,  <37.205223, 32.904697, 28.244247>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.088932, 33.205536, 28.007660> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487428, -0.415523, -0.767955,
		-0.823341, -0.511564, -0.245787,
		-0.290728, 0.752092, -0.591468,
		37.001713, 33.431164, 27.830219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.974785, 32.616447, 27.686890>,  <37.205223, 32.904697, 28.244247>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.974785, 32.616447, 27.686890> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.079746, 32.988697, 27.584843>,  <37.142723, 33.212048, 27.523615>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.079746, 32.988697, 27.584843>,  <36.974785, 32.616447, 27.686890>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.079746, 32.988697, 27.584843> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509995, -0.358192, -0.782051,
		-0.819175, 0.075105, -0.568605,
		0.262405, 0.930622, -0.255119,
		37.158466, 33.267883, 27.508307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.686947, 32.803352, 26.991240>,  <36.974785, 32.616447, 27.686890>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.686947, 32.803352, 26.991240> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.005028, 33.037731, 27.053623>,  <37.195877, 33.178360, 27.091053>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.005028, 33.037731, 27.053623>,  <36.686947, 32.803352, 26.991240>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.005028, 33.037731, 27.053623> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436757, -0.375102, -0.817644,
		-0.420596, 0.718307, -0.554197,
		0.795200, 0.585947, 0.155959,
		37.243587, 33.213516, 27.100410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.904682, 32.865784, 26.377182>,  <36.686947, 32.803352, 26.991240>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.904682, 32.865784, 26.377182> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.224751, 32.993832, 26.580059>,  <37.416794, 33.070660, 26.701786>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.224751, 32.993832, 26.580059>,  <36.904682, 32.865784, 26.377182>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.224751, 32.993832, 26.580059> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590910, -0.275978, -0.758065,
		-0.102698, 0.906289, -0.409992,
		0.800174, 0.320120, 0.507193,
		37.464802, 33.089867, 26.732218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.246601, 33.278198, 25.866020>,  <36.904682, 32.865784, 26.377182>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.246601, 33.278198, 25.866020> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.523602, 33.177979, 26.136625>,  <37.689800, 33.117847, 26.298988>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.523602, 33.177979, 26.136625>,  <37.246601, 33.278198, 25.866020>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.523602, 33.177979, 26.136625> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.637743, -0.225756, -0.736422,
		0.337238, 0.941413, 0.003451,
		0.692499, -0.250550, 0.676513,
		37.731350, 33.102814, 26.339579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.889214, 33.692490, 25.737101>,  <37.246601, 33.278198, 25.866020>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.889214, 33.692490, 25.737101> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.996914, 33.351818, 25.916943>,  <38.061535, 33.147415, 26.024847>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.996914, 33.351818, 25.916943>,  <37.889214, 33.692490, 25.737101>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.996914, 33.351818, 25.916943> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.675014, -0.166094, -0.718866,
		0.686921, 0.497043, 0.530176,
		0.269249, -0.851681, 0.449605,
		38.077690, 33.096313, 26.051825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.533611, 33.678963, 25.471369>,  <37.889214, 33.692490, 25.737101>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.533611, 33.678963, 25.471369> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.491924, 33.328190, 25.659042>,  <38.466911, 33.117725, 25.771646>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.491924, 33.328190, 25.659042>,  <38.533611, 33.678963, 25.471369>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.491924, 33.328190, 25.659042> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.824959, -0.339717, -0.451702,
		0.555500, 0.339979, 0.758837,
		-0.104221, -0.876930, 0.469182,
		38.460659, 33.065109, 25.799797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.178783, 33.441601, 25.759596>,  <38.533611, 33.678963, 25.471369>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.178783, 33.441601, 25.759596> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.976959, 33.097504, 25.730206>,  <38.855865, 32.891045, 25.712570>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.976959, 33.097504, 25.730206>,  <39.178783, 33.441601, 25.759596>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.976959, 33.097504, 25.730206> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.840062, -0.469512, -0.271759,
		0.199281, -0.198845, 0.959556,
		-0.504561, -0.860243, -0.073477,
		38.825592, 32.839432, 25.708162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.852066, 33.157444, 26.132824>,  <39.178783, 33.441601, 25.759596>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.852066, 33.157444, 26.132824> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.229397, 33.191433, 26.261141>,  <40.455795, 33.211826, 26.338131>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.229397, 33.191433, 26.261141>,  <39.852066, 33.157444, 26.132824>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.229397, 33.191433, 26.261141> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280170, 0.721998, 0.632632,
		-0.177855, -0.686657, 0.704890,
		0.943330, 0.084972, 0.320792,
		40.512398, 33.216923, 26.357378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.730923, 33.244976, 26.788948>,  <39.852066, 33.157444, 26.132824>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.730923, 33.244976, 26.788948> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.105259, 33.378914, 26.745001>,  <40.329861, 33.459278, 26.718632>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.105259, 33.378914, 26.745001>,  <39.730923, 33.244976, 26.788948>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.105259, 33.378914, 26.745001> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193767, 0.749320, 0.633224,
		0.294360, -0.571311, 0.766130,
		0.935845, 0.334847, -0.109869,
		40.386013, 33.479366, 26.712040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.967312, 33.277428, 27.504511>,  <39.730923, 33.244976, 26.788948>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.967312, 33.277428, 27.504511> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.169163, 33.513184, 27.252171>,  <40.290272, 33.654636, 27.100767>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.169163, 33.513184, 27.252171>,  <39.967312, 33.277428, 27.504511>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.169163, 33.513184, 27.252171> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009278, 0.726965, 0.686612,
		0.863290, -0.352333, 0.361374,
		0.504622, 0.589393, -0.630851,
		40.320549, 33.690002, 27.062916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.429585, 33.641232, 27.987869>,  <39.967312, 33.277428, 27.504511>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.429585, 33.641232, 27.987869> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.445347, 33.838352, 27.640169>,  <40.454803, 33.956623, 27.431549>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.445347, 33.838352, 27.640169>,  <40.429585, 33.641232, 27.987869>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.445347, 33.838352, 27.640169> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088083, 0.864825, 0.494286,
		0.995333, -0.096042, -0.009331,
		0.039402, 0.492802, -0.869249,
		40.457169, 33.986195, 27.379395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.998398, 34.176785, 28.068375>,  <40.429585, 33.641232, 27.987869>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.998398, 34.176785, 28.068375> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.742569, 34.302830, 27.787903>,  <40.589073, 34.378456, 27.619619>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.742569, 34.302830, 27.787903>,  <40.998398, 34.176785, 28.068375>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.742569, 34.302830, 27.787903> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013883, 0.907240, 0.420384,
		0.768609, 0.278598, -0.575866,
		-0.639568, 0.315116, -0.701181,
		40.550697, 34.397366, 27.577549>
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
