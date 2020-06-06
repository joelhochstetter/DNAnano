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
	<24.012894, 34.768444, 35.056515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.386820, 34.732258, 34.919144>,  <24.611176, 34.710545, 34.836723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.386820, 34.732258, 34.919144>,  <24.012894, 34.768444, 35.056515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.386820, 34.732258, 34.919144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330051, 0.578313, 0.746070,
		0.131112, -0.810784, 0.570473,
		0.934813, -0.090466, -0.343424,
		24.667263, 34.705116, 34.816116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.639967, 34.547405, 35.484295>,  <24.012894, 34.768444, 35.056515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.639967, 34.547405, 35.484295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.795565, 34.752048, 35.177845>,  <24.888924, 34.874836, 34.993977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.795565, 34.752048, 35.177845>,  <24.639967, 34.547405, 35.484295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.795565, 34.752048, 35.177845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484570, 0.593650, 0.642473,
		0.783502, -0.621157, -0.016984,
		0.388994, 0.511609, -0.766120,
		24.912262, 34.905533, 34.948009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.312035, 34.441715, 35.468372>,  <24.639967, 34.547405, 35.484295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.312035, 34.441715, 35.468372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.187059, 34.803429, 35.351990>,  <25.112074, 35.020458, 35.282162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.187059, 34.803429, 35.351990>,  <25.312035, 34.441715, 35.468372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.187059, 34.803429, 35.351990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594315, 0.425019, 0.682750,
		0.741061, 0.040397, -0.670221,
		-0.312438, 0.904282, -0.290957,
		25.093328, 35.074715, 35.264702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.831213, 34.789642, 35.810020>,  <25.312035, 34.441715, 35.468372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.831213, 34.789642, 35.810020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.549377, 35.044891, 35.685852>,  <25.380276, 35.198040, 35.611351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.549377, 35.044891, 35.685852>,  <25.831213, 34.789642, 35.810020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.549377, 35.044891, 35.685852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412496, 0.724250, 0.552547,
		0.577412, 0.261272, -0.773520,
		-0.704587, 0.638121, -0.310417,
		25.338001, 35.236328, 35.592728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.094320, 35.411697, 35.528362>,  <25.831213, 34.789642, 35.810020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.094320, 35.411697, 35.528362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.719193, 35.512280, 35.624081>,  <25.494116, 35.572628, 35.681511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.719193, 35.512280, 35.624081>,  <26.094320, 35.411697, 35.528362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.719193, 35.512280, 35.624081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346182, 0.728173, 0.591542,
		-0.025501, 0.637600, -0.769945,
		-0.937821, 0.251456, 0.239295,
		25.437847, 35.587715, 35.695869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.111982, 36.166519, 35.370743>,  <26.094320, 35.411697, 35.528362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.111982, 36.166519, 35.370743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.875156, 36.034546, 35.664845>,  <25.733061, 35.955364, 35.841305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.875156, 36.034546, 35.664845>,  <26.111982, 36.166519, 35.370743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.875156, 36.034546, 35.664845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395418, 0.676049, 0.621774,
		-0.702212, 0.658865, -0.269805,
		-0.592066, -0.329931, 0.735257,
		25.697536, 35.935566, 35.885422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.819094, 35.835350, 35.460594>,  <26.111982, 36.166519, 35.370743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.819094, 35.835350, 35.460594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.737026, 35.533924, 35.710411>,  <26.687786, 35.353069, 35.860302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.737026, 35.533924, 35.710411>,  <26.819094, 35.835350, 35.460594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.737026, 35.533924, 35.710411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.684265, -0.345802, -0.642030,
		0.699777, -0.559074, -0.444689,
		-0.205169, -0.753563, 0.624539,
		26.675476, 35.307854, 35.897774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.432892, 36.104576, 35.212914>,  <26.819094, 35.835350, 35.460594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.432892, 36.104576, 35.212914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.804674, 36.053940, 35.074299>,  <28.027744, 36.023560, 34.991131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.804674, 36.053940, 35.074299>,  <27.432892, 36.104576, 35.212914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.804674, 36.053940, 35.074299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246806, 0.911511, 0.328991,
		0.274224, -0.391310, 0.878452,
		0.929456, -0.126590, -0.346535,
		28.083511, 36.015965, 34.970337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.887995, 36.046478, 35.778389>,  <27.432892, 36.104576, 35.212914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.887995, 36.046478, 35.778389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.063732, 36.198193, 35.452663>,  <28.169174, 36.289223, 35.257225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.063732, 36.198193, 35.452663>,  <27.887995, 36.046478, 35.778389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.063732, 36.198193, 35.452663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391614, 0.734953, 0.553609,
		0.808464, -0.562124, 0.174362,
		0.439345, 0.379290, -0.814319,
		28.195536, 36.311981, 35.208366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.339577, 36.500443, 36.113987>,  <27.887995, 36.046478, 35.778389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.339577, 36.500443, 36.113987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.390343, 36.592373, 35.728020>,  <28.420803, 36.647530, 35.496437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.390343, 36.592373, 35.728020>,  <28.339577, 36.500443, 36.113987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.390343, 36.592373, 35.728020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301439, 0.917844, 0.258260,
		0.945001, -0.323642, 0.047212,
		0.126917, 0.229824, -0.964921,
		28.428417, 36.661320, 35.438545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.037521, 36.758705, 36.032040>,  <28.339577, 36.500443, 36.113987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.037521, 36.758705, 36.032040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.828976, 36.869724, 35.709267>,  <28.703848, 36.936337, 35.515602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.828976, 36.869724, 35.709267>,  <29.037521, 36.758705, 36.032040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.828976, 36.869724, 35.709267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347227, 0.932804, 0.096491,
		0.779494, -0.229884, -0.582702,
		-0.521365, 0.277544, -0.806937,
		28.672565, 36.952988, 35.467186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.442865, 37.172878, 35.672859>,  <29.037521, 36.758705, 36.032040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.442865, 37.172878, 35.672859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.058102, 37.256481, 35.602375>,  <28.827244, 37.306641, 35.560085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.058102, 37.256481, 35.602375>,  <29.442865, 37.172878, 35.672859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.058102, 37.256481, 35.602375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154525, 0.947419, 0.280213,
		0.225513, 0.242310, -0.943626,
		-0.961907, 0.209006, -0.176212,
		28.769529, 37.319183, 35.549511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.474821, 37.864262, 35.521210>,  <29.442865, 37.172878, 35.672859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.474821, 37.864262, 35.521210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.083529, 37.824265, 35.593948>,  <28.848753, 37.800266, 35.637592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.083529, 37.824265, 35.593948>,  <29.474821, 37.864262, 35.521210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.083529, 37.824265, 35.593948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039764, 0.950346, 0.308644,
		-0.203681, 0.294694, -0.933632,
		-0.978229, -0.099990, 0.181849,
		28.790060, 37.794266, 35.648502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.147165, 38.429581, 35.208111>,  <29.474821, 37.864262, 35.521210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.147165, 38.429581, 35.208111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.892519, 38.291935, 35.484169>,  <28.739731, 38.209347, 35.649803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.892519, 38.291935, 35.484169>,  <29.147165, 38.429581, 35.208111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.892519, 38.291935, 35.484169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026192, 0.904055, 0.426613,
		-0.770735, 0.253513, -0.584550,
		-0.636617, -0.344116, 0.690147,
		28.701534, 38.188702, 35.691212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.571117, 38.859016, 35.244152>,  <29.147165, 38.429581, 35.208111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.571117, 38.859016, 35.244152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.587856, 38.685772, 35.604298>,  <28.597900, 38.581825, 35.820385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.587856, 38.685772, 35.604298>,  <28.571117, 38.859016, 35.244152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.587856, 38.685772, 35.604298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022089, 0.900536, 0.434220,
		-0.998880, -0.038059, 0.028117,
		0.041846, -0.433113, 0.900368,
		28.600410, 38.555840, 35.874409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.210695, 39.372448, 35.549854>,  <28.571117, 38.859016, 35.244152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.210695, 39.372448, 35.549854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.367203, 39.141109, 35.836189>,  <28.461107, 39.002308, 36.007992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.367203, 39.141109, 35.836189>,  <28.210695, 39.372448, 35.549854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.367203, 39.141109, 35.836189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112135, 0.802020, 0.586677,
		-0.913419, -0.149278, 0.378658,
		0.391269, -0.578342, 0.715841,
		28.484583, 38.967606, 36.050941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.862825, 39.578510, 36.248413>,  <28.210695, 39.372448, 35.549854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.862825, 39.578510, 36.248413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.220165, 39.414448, 36.321846>,  <28.434568, 39.316010, 36.365906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.220165, 39.414448, 36.321846>,  <27.862825, 39.578510, 36.248413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.220165, 39.414448, 36.321846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220134, 0.755606, 0.616929,
		-0.391750, -0.510720, 0.765308,
		0.893349, -0.410152, 0.183582,
		28.488171, 39.291401, 36.376919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.818050, 39.529530, 37.044231>,  <27.862825, 39.578510, 36.248413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.818050, 39.529530, 37.044231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.197371, 39.501377, 36.920444>,  <28.424963, 39.484486, 36.846172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.197371, 39.501377, 36.920444>,  <27.818050, 39.529530, 37.044231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.197371, 39.501377, 36.920444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278268, 0.653291, 0.704116,
		0.152614, -0.753829, 0.639102,
		0.948302, -0.070384, -0.309467,
		28.481861, 39.480263, 36.827606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.201841, 39.293224, 37.564564>,  <27.818050, 39.529530, 37.044231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.201841, 39.293224, 37.564564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.494547, 39.455383, 37.345413>,  <28.670170, 39.552681, 37.213921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.494547, 39.455383, 37.345413>,  <28.201841, 39.293224, 37.564564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.494547, 39.455383, 37.345413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285139, 0.548035, 0.786354,
		0.619047, -0.731647, 0.285436,
		0.731763, 0.405401, -0.547880,
		28.714075, 39.577003, 37.181049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.706400, 39.378838, 37.997944>,  <28.201841, 39.293224, 37.564564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.706400, 39.378838, 37.997944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.850227, 39.655418, 37.747311>,  <28.936523, 39.821369, 37.596931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.850227, 39.655418, 37.747311>,  <28.706400, 39.378838, 37.997944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.850227, 39.655418, 37.747311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311608, 0.543965, 0.779104,
		0.879552, -0.475388, -0.019870,
		0.359567, 0.691454, -0.626580,
		28.958097, 39.862854, 37.559338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.340750, 39.468929, 38.253147>,  <28.706400, 39.378838, 37.997944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.340750, 39.468929, 38.253147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.252514, 39.793388, 38.036488>,  <29.199574, 39.988064, 37.906494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.252514, 39.793388, 38.036488>,  <29.340750, 39.468929, 38.253147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.252514, 39.793388, 38.036488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611639, 0.547609, 0.570983,
		0.759762, -0.205339, -0.616926,
		-0.220589, 0.811148, -0.541646,
		29.186337, 40.036732, 37.873993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.973324, 39.792446, 38.134155>,  <29.340750, 39.468929, 38.253147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.973324, 39.792446, 38.134155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.727797, 40.099751, 38.061493>,  <29.580481, 40.284134, 38.017895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.727797, 40.099751, 38.061493>,  <29.973324, 39.792446, 38.134155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.727797, 40.099751, 38.061493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610152, 0.607692, 0.508355,
		0.500944, 0.201197, -0.841769,
		-0.613816, 0.768264, -0.181659,
		29.543652, 40.330231, 38.006996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.482792, 40.297340, 38.278538>,  <29.973324, 39.792446, 38.134155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.482792, 40.297340, 38.278538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.130882, 40.484268, 38.243641>,  <29.919737, 40.596424, 38.222702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.130882, 40.484268, 38.243641>,  <30.482792, 40.297340, 38.278538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.130882, 40.484268, 38.243641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282567, 0.661617, 0.694564,
		0.382302, 0.586408, -0.714122,
		-0.879773, 0.467320, -0.087238,
		29.866951, 40.624466, 38.217468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.646553, 41.020767, 38.224258>,  <30.482792, 40.297340, 38.278538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.646553, 41.020767, 38.224258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.279823, 40.967602, 38.374866>,  <30.059786, 40.935703, 38.465233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.279823, 40.967602, 38.374866>,  <30.646553, 41.020767, 38.224258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.279823, 40.967602, 38.374866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277945, 0.464565, 0.840788,
		-0.286671, 0.875507, -0.388982,
		-0.916824, -0.132914, 0.376520,
		30.004776, 40.927727, 38.487823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.319334, 41.689651, 38.505764>,  <30.646553, 41.020767, 38.224258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.319334, 41.689651, 38.505764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.151625, 41.383217, 38.700626>,  <30.050999, 41.199356, 38.817543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.151625, 41.383217, 38.700626>,  <30.319334, 41.689651, 38.505764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.151625, 41.383217, 38.700626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343760, 0.362679, 0.866194,
		-0.840261, 0.530638, 0.111288,
		-0.419274, -0.766085, 0.487157,
		30.025843, 41.153393, 38.846775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.735359, 41.901897, 39.006691>,  <30.319334, 41.689651, 38.505764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.735359, 41.901897, 39.006691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.002987, 41.620186, 39.101631>,  <30.163565, 41.451160, 39.158596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.002987, 41.620186, 39.101631>,  <29.735359, 41.901897, 39.006691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.002987, 41.620186, 39.101631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353742, 0.582651, 0.731700,
		-0.653614, -0.405597, 0.638967,
		0.669070, -0.704279, 0.237352,
		30.203709, 41.408901, 39.172836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.688492, 41.641037, 39.807522>,  <29.735359, 41.901897, 39.006691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.688492, 41.641037, 39.807522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.038132, 41.625023, 39.613884>,  <30.247915, 41.615414, 39.497704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.038132, 41.625023, 39.613884>,  <29.688492, 41.641037, 39.807522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.038132, 41.625023, 39.613884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452774, 0.428068, 0.782146,
		0.175908, -0.902859, 0.392303,
		0.874100, -0.040039, -0.484092,
		30.300362, 41.613010, 39.468655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.713568, 41.769978, 40.573849>,  <29.688492, 41.641037, 39.807522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.713568, 41.769978, 40.573849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.959524, 41.582748, 40.827721>,  <30.107098, 41.470413, 40.980045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.959524, 41.582748, 40.827721>,  <29.713568, 41.769978, 40.573849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.959524, 41.582748, 40.827721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.706664, 0.684274, -0.179985,
		-0.350050, 0.559177, 0.751523,
		0.614891, -0.468070, 0.634681,
		30.143991, 41.442326, 41.018124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.129045, 42.018185, 40.899364>,  <29.713568, 41.769978, 40.573849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.129045, 42.018185, 40.899364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.097187, 42.091194, 41.291351>,  <29.078072, 42.135002, 41.526543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.097187, 42.091194, 41.291351>,  <29.129045, 42.018185, 40.899364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.097187, 42.091194, 41.291351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.698803, -0.690851, 0.185470,
		0.710867, 0.699577, -0.072528,
		-0.079644, 0.182528, 0.979970,
		29.073294, 42.145954, 41.585342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.804375, 42.186878, 41.168636>,  <29.129045, 42.018185, 40.899364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.804375, 42.186878, 41.168636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.566710, 42.017654, 41.442276>,  <29.424110, 41.916119, 41.606461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.566710, 42.017654, 41.442276>,  <29.804375, 42.186878, 41.168636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.566710, 42.017654, 41.442276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594735, -0.803684, 0.019533,
		0.541538, 0.418464, 0.729126,
		-0.594161, -0.423059, 0.684101,
		29.388462, 41.890736, 41.647507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.220808, 42.017647, 41.757805>,  <29.804375, 42.186878, 41.168636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.220808, 42.017647, 41.757805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.900349, 41.781746, 41.717102>,  <29.708073, 41.640205, 41.692680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.900349, 41.781746, 41.717102>,  <30.220808, 42.017647, 41.757805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.900349, 41.781746, 41.717102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594670, -0.803595, -0.024561,
		-0.067289, -0.080190, 0.994506,
		-0.801149, -0.589750, -0.101759,
		29.660004, 41.604820, 41.686573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.219927, 41.474274, 42.367634>,  <30.220808, 42.017647, 41.757805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.219927, 41.474274, 42.367634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.058157, 41.367905, 42.017609>,  <29.961096, 41.304085, 41.807594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.058157, 41.367905, 42.017609>,  <30.219927, 41.474274, 42.367634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.058157, 41.367905, 42.017609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614245, -0.787862, -0.044464,
		-0.677602, -0.555483, 0.481969,
		-0.404424, -0.265918, -0.875059,
		29.936831, 41.288128, 41.755093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.961645, 40.740082, 42.398930>,  <30.219927, 41.474274, 42.367634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.961645, 40.740082, 42.398930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.068941, 40.860054, 42.032742>,  <30.133320, 40.932037, 41.813026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.068941, 40.860054, 42.032742>,  <29.961645, 40.740082, 42.398930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.068941, 40.860054, 42.032742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.669047, -0.741734, -0.046974,
		-0.693126, -0.599893, -0.399631,
		0.268241, 0.299931, -0.915472,
		30.149414, 40.950035, 41.758099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.979969, 40.165749, 41.938286>,  <29.961645, 40.740082, 42.398930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.979969, 40.165749, 41.938286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.233845, 40.450909, 41.818993>,  <30.386171, 40.622005, 41.747417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.233845, 40.450909, 41.818993>,  <29.979969, 40.165749, 41.938286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.233845, 40.450909, 41.818993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.717484, -0.686978, -0.115227,
		-0.287024, -0.140843, -0.947513,
		0.634692, 0.712898, -0.298232,
		30.424252, 40.664780, 41.729523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.199677, 40.122768, 41.175953>,  <29.979969, 40.165749, 41.938286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.199677, 40.122768, 41.175953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.466843, 40.291546, 41.421181>,  <30.627142, 40.392815, 41.568317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.466843, 40.291546, 41.421181>,  <30.199677, 40.122768, 41.175953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.466843, 40.291546, 41.421181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625736, -0.764348, -0.155650,
		0.402920, 0.487579, -0.774547,
		0.667915, 0.421947, 0.613067,
		30.667217, 40.418129, 41.605103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.933132, 40.306530, 40.908047>,  <30.199677, 40.122768, 41.175953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.933132, 40.306530, 40.908047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.905142, 40.139229, 41.270298>,  <30.888348, 40.038849, 41.487648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.905142, 40.139229, 41.270298>,  <30.933132, 40.306530, 40.908047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.905142, 40.139229, 41.270298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312707, -0.871295, -0.378233,
		0.947269, 0.256730, 0.191760,
		-0.069976, -0.418253, 0.905631,
		30.884150, 40.013752, 41.541988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.483427, 39.849529, 40.923950>,  <30.933132, 40.306530, 40.908047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.483427, 39.849529, 40.923950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.254869, 39.731522, 41.230278>,  <31.117735, 39.660717, 41.414074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.254869, 39.731522, 41.230278>,  <31.483427, 39.849529, 40.923950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.254869, 39.731522, 41.230278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058640, -0.945444, -0.320464,
		0.818579, -0.138203, 0.557519,
		-0.571393, -0.295018, 0.765816,
		31.083452, 39.643017, 41.460022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.866116, 39.343418, 41.277271>,  <31.483427, 39.849529, 40.923950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.866116, 39.343418, 41.277271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.486578, 39.279675, 41.386303>,  <31.258856, 39.241428, 41.451721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.486578, 39.279675, 41.386303>,  <31.866116, 39.343418, 41.277271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.486578, 39.279675, 41.386303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063367, -0.941840, -0.330035,
		0.309319, -0.295879, 0.903758,
		-0.948845, -0.159355, 0.272579,
		31.201925, 39.231869, 41.468079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.790310, 38.624222, 41.366364>,  <31.866116, 39.343418, 41.277271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.790310, 38.624222, 41.366364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.405230, 38.730507, 41.345963>,  <31.174181, 38.794277, 41.333721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.405230, 38.730507, 41.345963>,  <31.790310, 38.624222, 41.366364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.405230, 38.730507, 41.345963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233281, -0.910649, -0.341026,
		-0.137057, -0.316410, 0.938669,
		-0.962702, 0.265714, -0.050999,
		31.116419, 38.810223, 41.330662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.365719, 38.100540, 41.727005>,  <31.790310, 38.624222, 41.366364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.365719, 38.100540, 41.727005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.182013, 38.285618, 41.423695>,  <31.071789, 38.396664, 41.241707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.182013, 38.285618, 41.423695>,  <31.365719, 38.100540, 41.727005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.182013, 38.285618, 41.423695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109105, -0.876552, -0.468778,
		-0.881577, -0.132557, 0.453045,
		-0.459257, 0.462694, -0.758285,
		31.044231, 38.424427, 41.196209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.845419, 37.637928, 41.584011>,  <31.365719, 38.100540, 41.727005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.845419, 37.637928, 41.584011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.851006, 37.878620, 41.264580>,  <30.854359, 38.023037, 41.072922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.851006, 37.878620, 41.264580>,  <30.845419, 37.637928, 41.584011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.851006, 37.878620, 41.264580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254936, -0.770115, -0.584748,
		-0.966857, 0.211753, 0.142647,
		0.013968, 0.601734, -0.798575,
		30.855196, 38.059139, 41.025009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.283344, 37.365196, 41.195503>,  <30.845419, 37.637928, 41.584011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.283344, 37.365196, 41.195503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.489643, 37.592510, 40.939049>,  <30.613422, 37.728901, 40.785175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.489643, 37.592510, 40.939049>,  <30.283344, 37.365196, 41.195503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.489643, 37.592510, 40.939049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290223, -0.588210, -0.754837,
		-0.806088, 0.575376, -0.138436,
		0.515745, 0.568288, -0.641136,
		30.644367, 37.762997, 40.746708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.861073, 37.469498, 40.598698>,  <30.283344, 37.365196, 41.195503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.861073, 37.469498, 40.598698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.234423, 37.542381, 40.475010>,  <30.458433, 37.586113, 40.400799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.234423, 37.542381, 40.475010>,  <29.861073, 37.469498, 40.598698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.234423, 37.542381, 40.475010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212728, -0.413053, -0.885513,
		-0.289070, 0.892293, -0.346772,
		0.933373, 0.182208, -0.309217,
		30.514435, 37.597042, 40.382244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.863264, 37.631401, 39.801834>,  <29.861073, 37.469498, 40.598698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.863264, 37.631401, 39.801834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.240973, 37.529625, 39.885368>,  <30.467598, 37.468559, 39.935490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.240973, 37.529625, 39.885368>,  <29.863264, 37.631401, 39.801834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.240973, 37.529625, 39.885368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062251, -0.484953, -0.872322,
		0.323234, 0.836707, -0.442087,
		0.944269, -0.254444, 0.208840,
		30.524254, 37.453293, 39.948021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.152168, 37.690926, 39.162228>,  <29.863264, 37.631401, 39.801834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.152168, 37.690926, 39.162228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.394516, 37.470146, 39.391407>,  <30.539925, 37.337677, 39.528915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.394516, 37.470146, 39.391407>,  <30.152168, 37.690926, 39.162228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.394516, 37.470146, 39.391407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254759, -0.547649, -0.796981,
		0.753669, 0.628831, -0.191190,
		0.605871, -0.551953, 0.572947,
		30.576277, 37.304562, 39.563290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.760422, 37.833565, 38.861855>,  <30.152168, 37.690926, 39.162228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.760422, 37.833565, 38.861855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.778858, 37.484520, 39.056351>,  <30.789919, 37.275093, 39.173050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.778858, 37.484520, 39.056351>,  <30.760422, 37.833565, 38.861855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.778858, 37.484520, 39.056351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396543, -0.430781, -0.810667,
		0.916858, 0.230179, 0.326173,
		0.046089, -0.872608, 0.486241,
		30.792685, 37.222736, 39.202225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.484879, 37.567249, 38.748127>,  <30.760422, 37.833565, 38.861855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.484879, 37.567249, 38.748127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.208733, 37.284237, 38.808521>,  <31.043045, 37.114429, 38.844757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.208733, 37.284237, 38.808521>,  <31.484879, 37.567249, 38.748127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.208733, 37.284237, 38.808521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221314, -0.405236, -0.887020,
		0.688778, -0.578952, 0.436347,
		-0.690366, -0.707530, 0.150988,
		31.001623, 37.071980, 38.853817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.779991, 37.005463, 38.338444>,  <31.484879, 37.567249, 38.748127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.779991, 37.005463, 38.338444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.407099, 36.884884, 38.418518>,  <31.183363, 36.812538, 38.466564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.407099, 36.884884, 38.418518>,  <31.779991, 37.005463, 38.338444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.407099, 36.884884, 38.418518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092561, -0.336173, -0.937241,
		0.349825, -0.892255, 0.285489,
		-0.932231, -0.301445, 0.200190,
		31.127430, 36.794449, 38.478577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.750786, 36.406120, 38.013454>,  <31.779991, 37.005463, 38.338444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.750786, 36.406120, 38.013454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.367062, 36.503014, 38.071491>,  <31.136827, 36.561150, 38.106312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.367062, 36.503014, 38.071491>,  <31.750786, 36.406120, 38.013454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.367062, 36.503014, 38.071491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260708, -0.562538, -0.784591,
		-0.108433, -0.790491, 0.602799,
		-0.959309, 0.242230, 0.145090,
		31.079269, 36.575684, 38.115017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.407751, 35.707935, 37.977917>,  <31.750786, 36.406120, 38.013454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.407751, 35.707935, 37.977917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.154812, 36.012436, 37.920464>,  <31.003048, 36.195137, 37.885994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.154812, 36.012436, 37.920464>,  <31.407751, 35.707935, 37.977917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.154812, 36.012436, 37.920464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386444, -0.470663, -0.793182,
		-0.671412, -0.446064, 0.591805,
		-0.632351, 0.761251, -0.143630,
		30.965107, 36.240810, 37.877373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.757475, 35.342480, 37.781540>,  <31.407751, 35.707935, 37.977917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.757475, 35.342480, 37.781540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.659729, 35.710960, 37.660431>,  <30.601082, 35.932049, 37.587765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.659729, 35.710960, 37.660431>,  <30.757475, 35.342480, 37.781540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.659729, 35.710960, 37.660431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444959, -0.383947, -0.809071,
		-0.861567, -0.062987, 0.503721,
		-0.244363, 0.921205, -0.302769,
		30.586420, 35.987320, 37.569599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.994112, 35.463051, 37.578381>,  <30.757475, 35.342480, 37.781540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.994112, 35.463051, 37.578381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.202528, 35.743607, 37.383823>,  <30.327578, 35.911938, 37.267090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.202528, 35.743607, 37.383823>,  <29.994112, 35.463051, 37.578381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.202528, 35.743607, 37.383823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279594, -0.398159, -0.873668,
		-0.806439, 0.591209, -0.011354,
		0.521041, 0.701385, -0.486390,
		30.358841, 35.954021, 37.237907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.568283, 35.855602, 37.093189>,  <29.994112, 35.463051, 37.578381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.568283, 35.855602, 37.093189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.942797, 35.845791, 36.953037>,  <30.167505, 35.839905, 36.868946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.942797, 35.845791, 36.953037>,  <29.568283, 35.855602, 37.093189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.942797, 35.845791, 36.953037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346857, -0.221686, -0.911343,
		-0.055320, 0.974810, -0.216070,
		0.936285, -0.024530, -0.350383,
		30.223682, 35.838432, 36.847923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.497446, 36.210484, 36.463451>,  <29.568283, 35.855602, 37.093189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.497446, 36.210484, 36.463451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.853127, 36.028111, 36.448238>,  <30.066536, 35.918686, 36.439110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.853127, 36.028111, 36.448238>,  <29.497446, 36.210484, 36.463451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.853127, 36.028111, 36.448238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079633, -0.072382, -0.994193,
		0.450531, 0.887067, -0.100669,
		0.889202, -0.455932, -0.038030,
		30.119886, 35.891331, 36.436829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.824106, 36.563103, 35.910992>,  <29.497446, 36.210484, 36.463451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.824106, 36.563103, 35.910992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.043541, 36.233490, 35.967590>,  <30.175201, 36.035721, 36.001549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.043541, 36.233490, 35.967590>,  <29.824106, 36.563103, 35.910992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.043541, 36.233490, 35.967590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063393, -0.127760, -0.989777,
		0.833687, 0.551949, -0.017850,
		0.548587, -0.824032, 0.141501,
		30.208117, 35.986279, 36.010040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.227312, 36.523243, 35.368355>,  <29.824106, 36.563103, 35.910992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.227312, 36.523243, 35.368355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.252239, 36.146847, 35.501411>,  <30.267197, 35.921009, 35.581245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.252239, 36.146847, 35.501411>,  <30.227312, 36.523243, 35.368355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.252239, 36.146847, 35.501411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108831, -0.337710, -0.934937,
		0.992105, 0.022063, -0.123455,
		0.062319, -0.940991, 0.332643,
		30.270935, 35.864548, 35.601204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.877262, 36.214920, 35.100250>,  <30.227312, 36.523243, 35.368355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.877262, 36.214920, 35.100250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.660702, 35.898338, 35.213730>,  <30.530766, 35.708389, 35.281818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.660702, 35.898338, 35.213730>,  <30.877262, 36.214920, 35.100250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.660702, 35.898338, 35.213730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122007, -0.407812, -0.904878,
		0.831867, -0.455286, 0.317352,
		-0.541399, -0.791457, 0.283697,
		30.498281, 35.660900, 35.298840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.231903, 35.671139, 34.713783>,  <30.877262, 36.214920, 35.100250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.231903, 35.671139, 34.713783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.873875, 35.535133, 34.829193>,  <30.659058, 35.453529, 34.898438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.873875, 35.535133, 34.829193>,  <31.231903, 35.671139, 34.713783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.873875, 35.535133, 34.829193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132471, -0.415063, -0.900097,
		0.425796, -0.843869, 0.326469,
		-0.895069, -0.340010, 0.288520,
		30.605354, 35.433132, 34.915749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.152952, 34.910919, 34.713543>,  <31.231903, 35.671139, 34.713783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.152952, 34.910919, 34.713543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.859030, 35.154537, 34.594128>,  <30.682676, 35.300709, 34.522480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.859030, 35.154537, 34.594128>,  <31.152952, 34.910919, 34.713543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.859030, 35.154537, 34.594128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099878, -0.338179, -0.935767,
		-0.670885, -0.717423, 0.187665,
		-0.734805, 0.609048, -0.298534,
		30.638588, 35.337250, 34.504566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.634729, 34.357964, 34.463978>,  <31.152952, 34.910919, 34.713543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.634729, 34.357964, 34.463978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.820677, 34.673069, 34.625633>,  <31.932245, 34.862133, 34.722626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.820677, 34.673069, 34.625633>,  <31.634729, 34.357964, 34.463978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.820677, 34.673069, 34.625633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367771, -0.587020, 0.721216,
		0.805382, -0.186643, -0.562605,
		0.464870, 0.787764, 0.404134,
		31.960138, 34.909397, 34.746872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.476498, 34.157562, 34.528507>,  <31.634729, 34.357964, 34.463978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.476498, 34.157562, 34.528507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.337547, 34.438313, 34.777252>,  <32.254177, 34.606762, 34.926498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.337547, 34.438313, 34.777252>,  <32.476498, 34.157562, 34.528507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.337547, 34.438313, 34.777252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384622, -0.498162, 0.777110,
		0.855218, 0.509127, -0.096909,
		-0.347372, 0.701872, 0.621859,
		32.233337, 34.648872, 34.963810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.983585, 34.267330, 35.024235>,  <32.476498, 34.157562, 34.528507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.983585, 34.267330, 35.024235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.664032, 34.395370, 35.227932>,  <32.472301, 34.472195, 35.350151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.664032, 34.395370, 35.227932>,  <32.983585, 34.267330, 35.024235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.664032, 34.395370, 35.227932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401720, -0.346186, 0.847807,
		0.447673, 0.881869, 0.147971,
		-0.798880, 0.320098, 0.509243,
		32.424370, 34.491398, 35.380703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.277134, 34.675224, 35.559174>,  <32.983585, 34.267330, 35.024235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.277134, 34.675224, 35.559174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.912159, 34.551357, 35.666180>,  <32.693172, 34.477039, 35.730381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.912159, 34.551357, 35.666180>,  <33.277134, 34.675224, 35.559174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.912159, 34.551357, 35.666180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358108, -0.287894, 0.888187,
		-0.198026, 0.906214, 0.373580,
		-0.912439, -0.309666, 0.267512,
		32.638428, 34.458458, 35.746433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.952286, 35.063812, 36.079258>,  <33.277134, 34.675224, 35.559174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.952286, 35.063812, 36.079258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.807701, 34.691345, 36.098339>,  <32.720951, 34.467865, 36.109787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.807701, 34.691345, 36.098339>,  <32.952286, 35.063812, 36.079258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.807701, 34.691345, 36.098339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344559, -0.085860, 0.934830,
		-0.866388, 0.354337, 0.351877,
		-0.361457, -0.931168, 0.047702,
		32.699265, 34.411995, 36.112648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.388210, 34.935825, 36.613712>,  <32.952286, 35.063812, 36.079258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.388210, 34.935825, 36.613712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.588631, 34.597404, 36.540890>,  <32.708885, 34.394352, 36.497196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.588631, 34.597404, 36.540890>,  <32.388210, 34.935825, 36.613712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.588631, 34.597404, 36.540890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151140, -0.121588, 0.981006,
		-0.852116, -0.519053, 0.066950,
		0.501053, -0.846050, -0.182057,
		32.738945, 34.343590, 36.486271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.031906, 34.377464, 37.061600>,  <32.388210, 34.935825, 36.613712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.031906, 34.377464, 37.061600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.427994, 34.362282, 37.007904>,  <32.665646, 34.353172, 36.975685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.427994, 34.362282, 37.007904>,  <32.031906, 34.377464, 37.061600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.427994, 34.362282, 37.007904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134408, 0.001950, 0.990924,
		-0.037352, -0.999277, 0.007033,
		0.990222, -0.037959, -0.134238,
		32.725060, 34.350895, 36.967632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.262924, 33.851357, 37.442989>,  <32.031906, 34.377464, 37.061600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.262924, 33.851357, 37.442989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.579685, 34.092953, 37.407032>,  <32.769741, 34.237911, 37.385456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.579685, 34.092953, 37.407032>,  <32.262924, 33.851357, 37.442989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.579685, 34.092953, 37.407032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228772, -0.156951, 0.960744,
		0.566170, -0.781385, -0.262466,
		0.791906, 0.603990, -0.089898,
		32.817257, 34.274151, 37.380062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.820999, 33.440639, 37.631355>,  <32.262924, 33.851357, 37.442989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.820999, 33.440639, 37.631355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.933201, 33.821770, 37.677719>,  <33.000523, 34.050449, 37.705540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.933201, 33.821770, 37.677719>,  <32.820999, 33.440639, 37.631355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.933201, 33.821770, 37.677719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304117, -0.202763, 0.930806,
		0.910401, -0.225844, -0.346647,
		0.280504, 0.952828, 0.115913,
		33.017353, 34.107616, 37.712494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.447186, 33.477142, 38.081261>,  <32.820999, 33.440639, 37.631355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.447186, 33.477142, 38.081261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.362762, 33.867344, 38.106087>,  <33.312111, 34.101463, 38.120983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.362762, 33.867344, 38.106087>,  <33.447186, 33.477142, 38.081261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.362762, 33.867344, 38.106087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048111, -0.053056, 0.997432,
		0.976290, 0.213498, -0.035734,
		-0.211054, 0.975502, 0.062070,
		33.299446, 34.159996, 38.124706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.933926, 33.791992, 38.566563>,  <33.447186, 33.477142, 38.081261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.933926, 33.791992, 38.566563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.626743, 34.047340, 38.587471>,  <33.442436, 34.200550, 38.600014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.626743, 34.047340, 38.587471>,  <33.933926, 33.791992, 38.566563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.626743, 34.047340, 38.587471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107452, 0.047956, 0.993053,
		0.631429, 0.768234, -0.105422,
		-0.767953, 0.638370, 0.052267,
		33.396358, 34.238850, 38.603149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.127438, 34.508770, 38.900131>,  <33.933926, 33.791992, 38.566563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.127438, 34.508770, 38.900131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.727760, 34.492908, 38.897507>,  <33.487953, 34.483391, 38.895931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.727760, 34.492908, 38.897507>,  <34.127438, 34.508770, 38.900131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.727760, 34.492908, 38.897507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015883, 0.239660, 0.970727,
		-0.036918, 0.970047, -0.240096,
		-0.999192, -0.039651, -0.006559,
		33.428001, 34.481014, 38.895538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.996181, 34.972073, 39.432373>,  <34.127438, 34.508770, 38.900131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.996181, 34.972073, 39.432373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.648296, 34.779121, 39.390572>,  <33.439568, 34.663353, 39.365490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.648296, 34.779121, 39.390572>,  <33.996181, 34.972073, 39.432373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.648296, 34.779121, 39.390572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058376, -0.109719, 0.992247,
		-0.490101, 0.869066, 0.067265,
		-0.869709, -0.482375, -0.104506,
		33.387383, 34.634411, 39.359219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.515827, 35.363052, 39.864494>,  <33.996181, 34.972073, 39.432373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.515827, 35.363052, 39.864494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.412014, 34.980633, 39.809921>,  <33.349728, 34.751183, 39.777176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.412014, 34.980633, 39.809921>,  <33.515827, 35.363052, 39.864494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.412014, 34.980633, 39.809921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101189, -0.113579, 0.988362,
		-0.960418, 0.270320, -0.067264,
		-0.259534, -0.956047, -0.136437,
		33.334152, 34.693817, 39.768990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.935425, 35.245533, 40.266151>,  <33.515827, 35.363052, 39.864494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.935425, 35.245533, 40.266151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.066441, 34.873497, 40.199638>,  <33.145050, 34.650276, 40.159733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.066441, 34.873497, 40.199638>,  <32.935425, 35.245533, 40.266151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.066441, 34.873497, 40.199638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153128, -0.225917, 0.962036,
		-0.932345, -0.289646, -0.216421,
		0.327544, -0.930090, -0.166280,
		33.164703, 34.594471, 40.149754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.431938, 34.875652, 40.618763>,  <32.935425, 35.245533, 40.266151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.431938, 34.875652, 40.618763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.748333, 34.638153, 40.559692>,  <32.938168, 34.495655, 40.524250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.748333, 34.638153, 40.559692>,  <32.431938, 34.875652, 40.618763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.748333, 34.638153, 40.559692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101936, -0.365885, 0.925061,
		-0.603288, -0.716652, -0.349933,
		0.790982, -0.593748, -0.147681,
		32.985626, 34.460030, 40.515388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.262650, 34.301601, 40.992706>,  <32.431938, 34.875652, 40.618763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.262650, 34.301601, 40.992706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.655903, 34.230125, 40.977139>,  <32.891857, 34.187241, 40.967800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.655903, 34.230125, 40.977139>,  <32.262650, 34.301601, 40.992706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.655903, 34.230125, 40.977139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039620, -0.415856, 0.908567,
		-0.178538, -0.891702, -0.415922,
		0.983135, -0.178692, -0.038917,
		32.950844, 34.176517, 40.965462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.355923, 33.613510, 41.196354>,  <32.262650, 34.301601, 40.992706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.355923, 33.613510, 41.196354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.723419, 33.762318, 41.249294>,  <32.943916, 33.851601, 41.281059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.723419, 33.762318, 41.249294>,  <32.355923, 33.613510, 41.196354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.723419, 33.762318, 41.249294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078810, -0.501210, 0.861729,
		0.386912, -0.781277, -0.489802,
		0.918742, 0.372015, 0.132352,
		32.999043, 33.873920, 41.289001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.824265, 33.046558, 41.335663>,  <32.355923, 33.613510, 41.196354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.824265, 33.046558, 41.335663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.999958, 33.363003, 41.505939>,  <33.105373, 33.552868, 41.608105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.999958, 33.363003, 41.505939>,  <32.824265, 33.046558, 41.335663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.999958, 33.363003, 41.505939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204338, -0.549409, 0.810183,
		0.874824, -0.268877, -0.402975,
		0.439237, 0.791110, 0.425694,
		33.131729, 33.600334, 41.633648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.463898, 32.805744, 41.710236>,  <32.824265, 33.046558, 41.335663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.463898, 32.805744, 41.710236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.319977, 33.142723, 41.870651>,  <33.233624, 33.344910, 41.966900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.319977, 33.142723, 41.870651>,  <33.463898, 32.805744, 41.710236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.319977, 33.142723, 41.870651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162034, -0.366874, 0.916050,
		0.918852, 0.394577, -0.004503,
		-0.359801, 0.842444, 0.401038,
		33.212036, 33.395458, 41.990963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.801018, 32.921867, 42.407703>,  <33.463898, 32.805744, 41.710236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.801018, 32.921867, 42.407703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.502171, 33.183170, 42.456814>,  <33.322861, 33.339951, 42.486279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.502171, 33.183170, 42.456814>,  <33.801018, 32.921867, 42.407703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.502171, 33.183170, 42.456814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000259, -0.184418, 0.982848,
		0.664692, 0.734335, 0.137612,
		-0.747117, 0.653256, 0.122772,
		33.278034, 33.379147, 42.493645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.081451, 33.334351, 42.910923>,  <33.801018, 32.921867, 42.407703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.081451, 33.334351, 42.910923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.690254, 33.417801, 42.910843>,  <33.455536, 33.467873, 42.910793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.690254, 33.417801, 42.910843>,  <34.081451, 33.334351, 42.910923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.690254, 33.417801, 42.910843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015389, -0.071174, 0.997345,
		0.208058, 0.975402, 0.072819,
		-0.977995, 0.208626, -0.000202,
		33.396854, 33.480389, 42.910782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.047626, 33.786827, 43.479919>,  <34.081451, 33.334351, 42.910923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.047626, 33.786827, 43.479919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.672173, 33.667850, 43.410072>,  <33.446899, 33.596466, 43.368164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.672173, 33.667850, 43.410072>,  <34.047626, 33.786827, 43.479919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.672173, 33.667850, 43.410072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162928, -0.063844, 0.984570,
		-0.303996, 0.952604, 0.011466,
		-0.938638, -0.297437, -0.174615,
		33.390583, 33.578621, 43.357689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.709469, 34.016041, 44.007710>,  <34.047626, 33.786827, 43.479919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.709469, 34.016041, 44.007710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.460587, 33.734329, 43.870979>,  <33.311256, 33.565300, 43.788940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.460587, 33.734329, 43.870979>,  <33.709469, 34.016041, 44.007710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.460587, 33.734329, 43.870979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237492, -0.246256, 0.939657,
		-0.745962, 0.665840, -0.014040,
		-0.622204, -0.704283, -0.341829,
		33.273926, 33.523045, 43.768429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.088268, 34.087517, 44.391556>,  <33.709469, 34.016041, 44.007710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.088268, 34.087517, 44.391556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.169018, 33.714043, 44.273251>,  <33.217468, 33.489956, 44.202267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.169018, 33.714043, 44.273251>,  <33.088268, 34.087517, 44.391556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.169018, 33.714043, 44.273251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018272, -0.305515, 0.952012,
		-0.979241, -0.186785, -0.078737,
		0.201877, -0.933687, -0.295760,
		33.229580, 33.433937, 44.184525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.691029, 33.667366, 44.819649>,  <33.088268, 34.087517, 44.391556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.691029, 33.667366, 44.819649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.947777, 33.387112, 44.694996>,  <33.101826, 33.218960, 44.620205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.947777, 33.387112, 44.694996>,  <32.691029, 33.667366, 44.819649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.947777, 33.387112, 44.694996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089160, -0.471827, 0.877172,
		-0.761616, -0.535242, -0.365319,
		0.641866, -0.700639, -0.311629,
		33.140335, 33.176922, 44.601509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.480694, 33.097927, 45.154560>,  <32.691029, 33.667366, 44.819649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.480694, 33.097927, 45.154560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.848972, 32.986584, 45.045135>,  <33.069939, 32.919777, 44.979481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.848972, 32.986584, 45.045135>,  <32.480694, 33.097927, 45.154560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.848972, 32.986584, 45.045135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169571, -0.346007, 0.922781,
		-0.351554, -0.895978, -0.271355,
		0.920682, -0.278394, -0.273572,
		33.125179, 32.903076, 44.963066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.577503, 32.406925, 45.432346>,  <32.480694, 33.097927, 45.154560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.577503, 32.406925, 45.432346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.922565, 32.602936, 45.382217>,  <33.129601, 32.720543, 45.352139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.922565, 32.602936, 45.382217>,  <32.577503, 32.406925, 45.432346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.922565, 32.602936, 45.382217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344807, -0.388466, 0.854519,
		0.370051, -0.780366, -0.504075,
		0.862653, 0.490024, -0.125323,
		33.181362, 32.749943, 45.344620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.012489, 31.866610, 45.575275>,  <32.577503, 32.406925, 45.432346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.012489, 31.866610, 45.575275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.256737, 32.181248, 45.611954>,  <33.403286, 32.370029, 45.633961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.256737, 32.181248, 45.611954>,  <33.012489, 31.866610, 45.575275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.256737, 32.181248, 45.611954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445346, -0.436820, 0.781572,
		0.654835, -0.436409, -0.617039,
		0.610621, 0.786597, 0.091692,
		33.439922, 32.417229, 45.639462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.660332, 31.472324, 45.599678>,  <33.012489, 31.866610, 45.575275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.660332, 31.472324, 45.599678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.703430, 31.839613, 45.752129>,  <33.729290, 32.059986, 45.843601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.703430, 31.839613, 45.752129>,  <33.660332, 31.472324, 45.599678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.703430, 31.839613, 45.752129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450170, -0.386869, 0.804786,
		0.886419, 0.084860, -0.455039,
		0.107746, 0.918222, 0.381129,
		33.735756, 32.115078, 45.866467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.345455, 31.515911, 45.851219>,  <33.660332, 31.472324, 45.599678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.345455, 31.515911, 45.851219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.144108, 31.798130, 46.050747>,  <34.023300, 31.967461, 46.170464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.144108, 31.798130, 46.050747>,  <34.345455, 31.515911, 45.851219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.144108, 31.798130, 46.050747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408565, -0.314338, 0.856893,
		0.761378, 0.635133, -0.130035,
		-0.503367, 0.705548, 0.498823,
		33.993099, 32.009796, 46.200394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.852253, 31.926672, 46.223373>,  <34.345455, 31.515911, 45.851219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.852253, 31.926672, 46.223373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.514912, 32.012165, 46.420582>,  <34.312508, 32.063461, 46.538906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.514912, 32.012165, 46.420582>,  <34.852253, 31.926672, 46.223373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.514912, 32.012165, 46.420582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436551, -0.262483, 0.860538,
		0.313334, 0.940969, 0.128061,
		-0.843354, 0.213731, 0.493025,
		34.261906, 32.076283, 46.568489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.068535, 32.254509, 46.824284>,  <34.852253, 31.926672, 46.223373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.068535, 32.254509, 46.824284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.709576, 32.091526, 46.891991>,  <34.494198, 31.993736, 46.932613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.709576, 32.091526, 46.891991>,  <35.068535, 32.254509, 46.824284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.709576, 32.091526, 46.891991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249324, -0.151797, 0.956449,
		-0.364016, 0.900521, 0.237811,
		-0.897402, -0.407455, 0.169265,
		34.440353, 31.969290, 46.942772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.792686, 32.647648, 47.448658>,  <35.068535, 32.254509, 46.824284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.792686, 32.647648, 47.448658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.640038, 32.279453, 47.415043>,  <34.548447, 32.058537, 47.394875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.640038, 32.279453, 47.415043>,  <34.792686, 32.647648, 47.448658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.640038, 32.279453, 47.415043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333500, -0.221918, 0.916259,
		-0.862056, 0.321638, 0.391673,
		-0.381623, -0.920490, -0.084039,
		34.525551, 32.003307, 47.389832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.403702, 32.600037, 48.068336>,  <34.792686, 32.647648, 47.448658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.403702, 32.600037, 48.068336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.444077, 32.222752, 47.941742>,  <34.468300, 31.996382, 47.865784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.444077, 32.222752, 47.941742>,  <34.403702, 32.600037, 48.068336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.444077, 32.222752, 47.941742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312855, -0.271882, 0.910056,
		-0.944422, -0.190873, 0.267645,
		0.100938, -0.943211, -0.316487,
		34.474358, 31.939789, 47.846794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.067055, 32.167774, 48.543114>,  <34.403702, 32.600037, 48.068336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.067055, 32.167774, 48.543114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.328777, 31.929510, 48.356747>,  <34.485809, 31.786552, 48.244926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.328777, 31.929510, 48.356747>,  <34.067055, 32.167774, 48.543114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.328777, 31.929510, 48.356747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340166, -0.318426, 0.884812,
		-0.675405, -0.737424, -0.005725,
		0.654305, -0.595659, -0.465913,
		34.525070, 31.750813, 48.216972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.990646, 31.506533, 48.837723>,  <34.067055, 32.167774, 48.543114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.990646, 31.506533, 48.837723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.362144, 31.456835, 48.698013>,  <34.585045, 31.427015, 48.614189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.362144, 31.456835, 48.698013>,  <33.990646, 31.506533, 48.837723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.362144, 31.456835, 48.698013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289755, -0.344393, 0.892992,
		-0.231235, -0.930568, -0.283854,
		0.928748, -0.124243, -0.349273,
		34.640770, 31.419561, 48.593231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.247486, 30.880064, 49.139534>,  <33.990646, 31.506533, 48.837723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.247486, 30.880064, 49.139534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.575115, 31.076498, 49.020905>,  <34.771694, 31.194359, 48.949726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.575115, 31.076498, 49.020905>,  <34.247486, 30.880064, 49.139534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.575115, 31.076498, 49.020905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501875, -0.362923, 0.785117,
		0.277928, -0.791909, -0.543724,
		0.819072, 0.491087, -0.296573,
		34.820835, 31.223824, 48.931934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.664257, 30.387121, 49.252766>,  <34.247486, 30.880064, 49.139534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.664257, 30.387121, 49.252766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.926414, 30.684086, 49.197224>,  <35.083710, 30.862265, 49.163898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.926414, 30.684086, 49.197224>,  <34.664257, 30.387121, 49.252766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.926414, 30.684086, 49.197224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.636147, -0.443499, 0.631368,
		0.407152, -0.502130, -0.762950,
		0.655397, 0.742411, -0.138857,
		35.123032, 30.906809, 49.155567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.283821, 30.168486, 49.153770>,  <34.664257, 30.387121, 49.252766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.283821, 30.168486, 49.153770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.348728, 30.540159, 49.286610>,  <35.387672, 30.763163, 49.366314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.348728, 30.540159, 49.286610>,  <35.283821, 30.168486, 49.153770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.348728, 30.540159, 49.286610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.646514, -0.354372, 0.675603,
		0.745445, 0.105078, -0.658233,
		0.162268, 0.929182, 0.332100,
		35.397408, 30.818914, 49.386238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.128353, 30.250874, 49.202316>,  <35.283821, 30.168486, 49.153770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.128353, 30.250874, 49.202316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.939976, 30.518782, 49.431969>,  <35.826950, 30.679525, 49.569759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.939976, 30.518782, 49.431969>,  <36.128353, 30.250874, 49.202316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.939976, 30.518782, 49.431969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509787, -0.324519, 0.796746,
		0.719951, 0.667905, -0.188609,
		-0.470944, 0.669769, 0.574127,
		35.798691, 30.719713, 49.604206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.656036, 30.445356, 49.655613>,  <36.128353, 30.250874, 49.202316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.656036, 30.445356, 49.655613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.305878, 30.551373, 49.817318>,  <36.095783, 30.614983, 49.914341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.305878, 30.551373, 49.817318>,  <36.656036, 30.445356, 49.655613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.305878, 30.551373, 49.817318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304442, -0.347318, 0.886953,
		0.375488, 0.899513, 0.223351,
		-0.875399, 0.265043, 0.404263,
		36.043259, 30.630886, 49.938599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.766651, 30.789421, 50.236465>,  <36.656036, 30.445356, 49.655613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.766651, 30.789421, 50.236465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.389893, 30.681767, 50.316860>,  <36.163837, 30.617174, 50.365097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.389893, 30.681767, 50.316860>,  <36.766651, 30.789421, 50.236465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.389893, 30.681767, 50.316860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296089, -0.382646, 0.875165,
		-0.158632, 0.883825, 0.440101,
		-0.941896, -0.269138, 0.200991,
		36.107323, 30.601025, 50.377159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.568474, 31.065939, 50.840221>,  <36.766651, 30.789421, 50.236465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.568474, 31.065939, 50.840221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.302280, 30.774029, 50.777531>,  <36.142563, 30.598883, 50.739918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.302280, 30.774029, 50.777531>,  <36.568474, 31.065939, 50.840221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.302280, 30.774029, 50.777531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214910, -0.388413, 0.896074,
		-0.714805, 0.562641, 0.415318,
		-0.665483, -0.729774, -0.156723,
		36.102634, 30.555096, 50.730515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.170906, 31.042610, 51.447090>,  <36.568474, 31.065939, 50.840221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.170906, 31.042610, 51.447090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.134373, 30.680342, 51.281479>,  <36.112453, 30.462980, 51.182114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.134373, 30.680342, 51.281479>,  <36.170906, 31.042610, 51.447090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.134373, 30.680342, 51.281479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252630, -0.423240, 0.870084,
		-0.963242, -0.025125, 0.267457,
		-0.091337, -0.905669, -0.414030,
		36.106972, 30.408642, 51.157269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.734413, 30.658905, 51.865421>,  <36.170906, 31.042610, 51.447090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.734413, 30.658905, 51.865421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.859001, 30.331764, 51.671883>,  <35.933754, 30.135479, 51.555759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.859001, 30.331764, 51.671883>,  <35.734413, 30.658905, 51.865421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.859001, 30.331764, 51.671883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056806, -0.524287, 0.849645,
		-0.948557, -0.237153, -0.209758,
		0.311469, -0.817852, -0.483845,
		35.952442, 30.086409, 51.526730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.271416, 30.075081, 51.915836>,  <35.734413, 30.658905, 51.865421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.271416, 30.075081, 51.915836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.645550, 29.938089, 51.880363>,  <35.870029, 29.855894, 51.859081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.645550, 29.938089, 51.880363>,  <35.271416, 30.075081, 51.915836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.645550, 29.938089, 51.880363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168421, -0.651512, 0.739707,
		-0.311110, -0.676936, -0.667060,
		0.935332, -0.342477, -0.088682,
		35.926147, 29.835346, 51.853760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.198112, 29.390928, 51.619709>,  <35.271416, 30.075081, 51.915836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.198112, 29.390928, 51.619709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.524166, 29.447111, 51.844501>,  <35.719799, 29.480822, 51.979378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.524166, 29.447111, 51.844501>,  <35.198112, 29.390928, 51.619709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.524166, 29.447111, 51.844501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289388, -0.741678, 0.605119,
		0.501805, -0.655885, -0.563921,
		0.815136, 0.140459, 0.561983,
		35.768707, 29.489248, 52.013096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.405964, 28.749121, 51.768829>,  <35.198112, 29.390928, 51.619709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.405964, 28.749121, 51.768829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.577221, 28.988678, 52.039539>,  <35.679974, 29.132412, 52.201965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.577221, 28.988678, 52.039539>,  <35.405964, 28.749121, 51.768829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.577221, 28.988678, 52.039539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061554, -0.727818, 0.683002,
		0.901614, -0.334079, -0.274744,
		0.428140, 0.598893, 0.676774,
		35.705662, 29.168346, 52.242573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.032505, 28.377647, 52.150501>,  <35.405964, 28.749121, 51.768829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.032505, 28.377647, 52.150501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.826199, 28.642363, 52.368134>,  <35.702415, 28.801191, 52.498714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.826199, 28.642363, 52.368134>,  <36.032505, 28.377647, 52.150501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.826199, 28.642363, 52.368134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098389, -0.676619, 0.729730,
		0.851061, 0.322839, 0.414090,
		-0.515767, 0.661786, 0.544080,
		35.671467, 28.840899, 52.531357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.595024, 28.054403, 52.673458>,  <36.032505, 28.377647, 52.150501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.595024, 28.054403, 52.673458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.390865, 28.392281, 52.737946>,  <36.268372, 28.595007, 52.776638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.390865, 28.392281, 52.737946>,  <36.595024, 28.054403, 52.673458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.390865, 28.392281, 52.737946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.853918, 0.519982, -0.021016,
		-0.101582, 0.126941, -0.986695,
		-0.510396, 0.844692, 0.161218,
		36.237747, 28.645689, 52.786312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.786942, 28.452513, 52.181328>,  <36.595024, 28.054403, 52.673458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.786942, 28.452513, 52.181328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.681335, 28.688181, 52.486794>,  <36.617973, 28.829582, 52.670071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.681335, 28.688181, 52.486794>,  <36.786942, 28.452513, 52.181328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.681335, 28.688181, 52.486794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.850905, 0.515080, -0.103216,
		-0.454158, 0.622552, -0.637314,
		-0.264010, 0.589170, 0.763660,
		36.602131, 28.864931, 52.715893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.600483, 29.100657, 51.935711>,  <36.786942, 28.452513, 52.181328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.600483, 29.100657, 51.935711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.777508, 29.119387, 52.293915>,  <36.883724, 29.130625, 52.508839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.777508, 29.119387, 52.293915>,  <36.600483, 29.100657, 51.935711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.777508, 29.119387, 52.293915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.832524, 0.349641, -0.429716,
		-0.333229, 0.935713, 0.115756,
		0.442564, 0.046824, 0.895514,
		36.910278, 29.133434, 52.562569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.012882, 29.877115, 52.112923>,  <36.600483, 29.100657, 51.935711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.012882, 29.877115, 52.112923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.141205, 29.511448, 52.212021>,  <37.218197, 29.292048, 52.271481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.141205, 29.511448, 52.212021>,  <37.012882, 29.877115, 52.112923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.141205, 29.511448, 52.212021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.886398, 0.197605, -0.418630,
		0.333743, 0.353899, 0.873711,
		0.320803, -0.914170, 0.247746,
		37.237446, 29.237196, 52.286346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.606388, 29.899385, 52.637360>,  <37.012882, 29.877115, 52.112923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.606388, 29.899385, 52.637360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.571030, 29.617237, 52.356037>,  <37.549812, 29.447948, 52.187244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.571030, 29.617237, 52.356037>,  <37.606388, 29.899385, 52.637360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.571030, 29.617237, 52.356037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.773860, 0.395922, -0.494355,
		0.627157, -0.587959, 0.510860,
		-0.088400, -0.705372, -0.703303,
		37.544510, 29.405626, 52.145046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.253128, 30.014984, 52.181698>,  <37.606388, 29.899385, 52.637360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.253128, 30.014984, 52.181698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.043781, 29.726852, 51.999615>,  <37.918175, 29.553974, 51.890366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.043781, 29.726852, 51.999615>,  <38.253128, 30.014984, 52.181698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.043781, 29.726852, 51.999615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587767, 0.081602, -0.804905,
		0.616942, -0.688816, 0.380678,
		-0.523367, -0.720329, -0.455207,
		37.886772, 29.510754, 51.863052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.736336, 29.509567, 51.918739>,  <38.253128, 30.014984, 52.181698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.736336, 29.509567, 51.918739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.407146, 29.537586, 51.693241>,  <38.209633, 29.554398, 51.557941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.407146, 29.537586, 51.693241>,  <38.736336, 29.509567, 51.918739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.407146, 29.537586, 51.693241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564178, 0.216889, -0.796657,
		0.066466, -0.973680, -0.218014,
		-0.822973, 0.070048, -0.563745,
		38.160255, 29.558601, 51.524117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.832100, 29.038418, 51.256466>,  <38.736336, 29.509567, 51.918739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.832100, 29.038418, 51.256466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.565388, 29.329653, 51.192852>,  <38.405361, 29.504393, 51.154686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.565388, 29.329653, 51.192852>,  <38.832100, 29.038418, 51.256466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.565388, 29.329653, 51.192852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365429, 0.133443, -0.921225,
		-0.649508, -0.672373, -0.355041,
		-0.666784, 0.728085, -0.159032,
		38.365353, 29.548079, 51.145142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.655064, 28.925413, 50.552963>,  <38.832100, 29.038418, 51.256466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.655064, 28.925413, 50.552963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.534649, 29.305023, 50.590332>,  <38.462399, 29.532789, 50.612755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.534649, 29.305023, 50.590332>,  <38.655064, 28.925413, 50.552963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.534649, 29.305023, 50.590332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396406, 0.213639, -0.892872,
		-0.867317, -0.231755, -0.440513,
		-0.301038, 0.949025, 0.093423,
		38.444336, 29.589731, 50.618359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.346954, 29.141283, 49.867344>,  <38.655064, 28.925413, 50.552963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.346954, 29.141283, 49.867344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.439224, 29.484076, 50.051678>,  <38.494587, 29.689751, 50.162277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.439224, 29.484076, 50.051678>,  <38.346954, 29.141283, 49.867344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.439224, 29.484076, 50.051678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428680, 0.335665, -0.838786,
		-0.873512, 0.391038, -0.289942,
		0.230674, 0.856982, 0.460838,
		38.508427, 29.741171, 50.189930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.031837, 29.685982, 49.445618>,  <38.346954, 29.141283, 49.867344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.031837, 29.685982, 49.445618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.317814, 29.874741, 49.651989>,  <38.489399, 29.987997, 49.775810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.317814, 29.874741, 49.651989>,  <38.031837, 29.685982, 49.445618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.317814, 29.874741, 49.651989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239323, 0.528156, -0.814724,
		-0.656956, 0.705948, 0.264662,
		0.714936, 0.471898, 0.515925,
		38.532295, 30.016310, 49.806767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.967194, 30.385559, 49.270638>,  <38.031837, 29.685982, 49.445618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.967194, 30.385559, 49.270638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.336208, 30.351734, 49.421249>,  <38.557617, 30.331440, 49.511616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.336208, 30.351734, 49.421249>,  <37.967194, 30.385559, 49.270638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.336208, 30.351734, 49.421249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333141, 0.666995, -0.666435,
		-0.194790, 0.740248, 0.643497,
		0.922537, -0.084560, 0.376531,
		38.612968, 30.326366, 49.534210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.196304, 31.027998, 49.158432>,  <37.967194, 30.385559, 49.270638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.196304, 31.027998, 49.158432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.504719, 30.775415, 49.191334>,  <38.689766, 30.623865, 49.211075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.504719, 30.775415, 49.191334>,  <38.196304, 31.027998, 49.158432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.504719, 30.775415, 49.191334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392761, 0.369906, -0.841967,
		0.501241, 0.681492, 0.533223,
		0.771036, -0.631458, 0.082252,
		38.736031, 30.585978, 49.216011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.870064, 31.364315, 48.994350>,  <38.196304, 31.027998, 49.158432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.870064, 31.364315, 48.994350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.988708, 30.987213, 48.933376>,  <39.059895, 30.760952, 48.896793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.988708, 30.987213, 48.933376>,  <38.870064, 31.364315, 48.994350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.988708, 30.987213, 48.933376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516786, 0.292681, -0.804531,
		0.803088, 0.159860, 0.574016,
		0.296616, -0.942753, -0.152435,
		39.077694, 30.704388, 48.887646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.581848, 31.358345, 48.762691>,  <38.870064, 31.364315, 48.994350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.581848, 31.358345, 48.762691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.462017, 30.993534, 48.650646>,  <39.390118, 30.774647, 48.583420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.462017, 30.993534, 48.650646>,  <39.581848, 31.358345, 48.762691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.462017, 30.993534, 48.650646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399123, 0.146868, -0.905058,
		0.866578, -0.382929, 0.320014,
		-0.299573, -0.912028, -0.280108,
		39.372147, 30.719925, 48.566612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.085773, 31.017818, 48.442005>,  <39.581848, 31.358345, 48.762691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.085773, 31.017818, 48.442005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.794987, 30.770420, 48.322681>,  <39.620514, 30.621981, 48.251087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.794987, 30.770420, 48.322681>,  <40.085773, 31.017818, 48.442005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.794987, 30.770420, 48.322681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372067, 0.010336, -0.928148,
		0.577138, -0.785721, 0.222608,
		-0.726964, -0.618495, -0.298306,
		39.576897, 30.584871, 48.233189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.357544, 30.549335, 47.948795>,  <40.085773, 31.017818, 48.442005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.357544, 30.549335, 47.948795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.963707, 30.530779, 47.881359>,  <39.727406, 30.519646, 47.840897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.963707, 30.530779, 47.881359>,  <40.357544, 30.549335, 47.948795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.963707, 30.530779, 47.881359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165361, 0.066334, -0.984000,
		0.056821, -0.996719, -0.057643,
		-0.984595, -0.046380, -0.168588,
		39.668327, 30.516861, 47.830784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.286610, 30.045366, 47.443630>,  <40.357544, 30.549335, 47.948795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.286610, 30.045366, 47.443630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.958233, 30.272881, 47.423489>,  <39.761208, 30.409389, 47.411404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.958233, 30.272881, 47.423489>,  <40.286610, 30.045366, 47.443630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.958233, 30.272881, 47.423489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111146, 0.072678, -0.991143,
		-0.560090, -0.819267, -0.122883,
		-0.820942, 0.568787, -0.050352,
		39.711948, 30.443516, 47.408382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.987648, 29.855228, 46.835110>,  <40.286610, 30.045366, 47.443630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.987648, 29.855228, 46.835110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.797901, 30.199677, 46.908264>,  <39.684052, 30.406345, 46.952156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.797901, 30.199677, 46.908264>,  <39.987648, 29.855228, 46.835110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.797901, 30.199677, 46.908264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054255, 0.178760, -0.982396,
		-0.878654, -0.475937, -0.038077,
		-0.474365, 0.861120, 0.182890,
		39.655590, 30.458014, 46.963131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.419125, 29.918167, 46.406021>,  <39.987648, 29.855228, 46.835110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.419125, 29.918167, 46.406021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.453407, 30.306458, 46.495773>,  <39.473976, 30.539433, 46.549625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.453407, 30.306458, 46.495773>,  <39.419125, 29.918167, 46.406021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.453407, 30.306458, 46.495773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158761, 0.235638, -0.958786,
		-0.983590, 0.046549, 0.174308,
		0.085704, 0.970725, 0.224381,
		39.479118, 30.597675, 46.563087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.754372, 30.254662, 46.304451>,  <39.419125, 29.918167, 46.406021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.754372, 30.254662, 46.304451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.054890, 30.515360, 46.262917>,  <39.235199, 30.671780, 46.237995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.054890, 30.515360, 46.262917>,  <38.754372, 30.254662, 46.304451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.054890, 30.515360, 46.262917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265368, 0.154278, -0.951724,
		-0.604264, 0.742579, 0.288862,
		0.751295, 0.651747, -0.103832,
		39.280277, 30.710884, 46.231766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.440956, 30.699730, 45.963890>,  <38.754372, 30.254662, 46.304451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.440956, 30.699730, 45.963890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.830730, 30.772800, 45.911564>,  <39.064594, 30.816643, 45.880169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.830730, 30.772800, 45.911564>,  <38.440956, 30.699730, 45.963890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.830730, 30.772800, 45.911564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195210, 0.400047, -0.895464,
		-0.111250, 0.898104, 0.425479,
		0.974432, 0.182678, -0.130813,
		39.123058, 30.827604, 45.872318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.402149, 31.373049, 45.687576>,  <38.440956, 30.699730, 45.963890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.402149, 31.373049, 45.687576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.763912, 31.225986, 45.600975>,  <38.980972, 31.137749, 45.549015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.763912, 31.225986, 45.600975>,  <38.402149, 31.373049, 45.687576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.763912, 31.225986, 45.600975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023584, 0.463573, -0.885745,
		0.426013, 0.806182, 0.410589,
		0.904410, -0.367656, -0.216501,
		39.035236, 31.115690, 45.536026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.684978, 31.854227, 45.262691>,  <38.402149, 31.373049, 45.687576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.684978, 31.854227, 45.262691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.893784, 31.524445, 45.175262>,  <39.019066, 31.326574, 45.122807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.893784, 31.524445, 45.175262>,  <38.684978, 31.854227, 45.262691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.893784, 31.524445, 45.175262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219159, 0.118003, -0.968527,
		0.824302, 0.553484, -0.119089,
		0.522012, -0.824458, -0.218571,
		39.050388, 31.277107, 45.109692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.205288, 32.091827, 44.824894>,  <38.684978, 31.854227, 45.262691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.205288, 32.091827, 44.824894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.191177, 31.702467, 44.734352>,  <39.182713, 31.468849, 44.680027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.191177, 31.702467, 44.734352>,  <39.205288, 32.091827, 44.824894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.191177, 31.702467, 44.734352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095400, 0.228744, -0.968801,
		0.994814, -0.012578, -0.100932,
		-0.035273, -0.973405, -0.226358,
		39.180595, 31.410446, 44.666443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.568642, 32.015182, 44.244991>,  <39.205288, 32.091827, 44.824894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.568642, 32.015182, 44.244991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.388321, 31.659227, 44.217052>,  <39.280128, 31.445654, 44.200287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.388321, 31.659227, 44.217052>,  <39.568642, 32.015182, 44.244991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.388321, 31.659227, 44.217052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134964, 0.145304, -0.980139,
		0.882364, -0.432417, -0.185606,
		-0.450797, -0.889889, -0.069850,
		39.253082, 31.392262, 44.196098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.804157, 31.772942, 43.560913>,  <39.568642, 32.015182, 44.244991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.804157, 31.772942, 43.560913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.467457, 31.592077, 43.678902>,  <39.265438, 31.483559, 43.749695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.467457, 31.592077, 43.678902>,  <39.804157, 31.772942, 43.560913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.467457, 31.592077, 43.678902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370158, 0.085660, -0.925011,
		0.392987, -0.887814, -0.239475,
		-0.841751, -0.452161, 0.294968,
		39.214931, 31.456429, 43.767391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.681797, 31.275791, 43.056393>,  <39.804157, 31.772942, 43.560913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.681797, 31.275791, 43.056393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.328106, 31.345512, 43.229721>,  <39.115891, 31.387344, 43.333717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.328106, 31.345512, 43.229721>,  <39.681797, 31.275791, 43.056393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.328106, 31.345512, 43.229721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440082, -0.000179, -0.897958,
		-0.156441, -0.984692, 0.076866,
		-0.884225, 0.174305, 0.433317,
		39.062840, 31.397804, 43.359715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.210155, 30.721241, 42.856510>,  <39.681797, 31.275791, 43.056393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.210155, 30.721241, 42.856510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.991955, 31.035501, 42.973251>,  <38.861034, 31.224058, 43.043297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.991955, 31.035501, 42.973251>,  <39.210155, 30.721241, 42.856510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.991955, 31.035501, 42.973251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475136, -0.003035, -0.879907,
		-0.690414, -0.618662, 0.374947,
		-0.545503, 0.785651, 0.291854,
		38.828304, 31.271196, 43.060806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.505608, 30.591307, 42.650284>,  <39.210155, 30.721241, 42.856510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.505608, 30.591307, 42.650284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.522568, 30.987444, 42.703083>,  <38.532742, 31.225126, 42.734764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.522568, 30.987444, 42.703083>,  <38.505608, 30.591307, 42.650284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.522568, 30.987444, 42.703083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.601066, 0.130818, -0.788420,
		-0.798074, -0.045913, 0.600808,
		0.042398, 0.990343, 0.131999,
		38.535286, 31.284546, 42.742683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.778275, 30.846628, 42.652786>,  <38.505608, 30.591307, 42.650284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.778275, 30.846628, 42.652786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.999859, 31.173763, 42.590462>,  <38.132809, 31.370045, 42.553066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.999859, 31.173763, 42.590462>,  <37.778275, 30.846628, 42.652786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.999859, 31.173763, 42.590462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582630, 0.247133, -0.774253,
		-0.594706, 0.519683, 0.613396,
		0.553957, 0.817835, -0.155812,
		38.166046, 31.419113, 42.543716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.297150, 31.366554, 42.429737>,  <37.778275, 30.846628, 42.652786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.297150, 31.366554, 42.429737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.643887, 31.540340, 42.331898>,  <37.851929, 31.644611, 42.273193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.643887, 31.540340, 42.331898>,  <37.297150, 31.366554, 42.429737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.643887, 31.540340, 42.331898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391253, 0.288666, -0.873838,
		-0.309043, 0.853179, 0.420212,
		0.866841, 0.434463, -0.244598,
		37.903938, 31.670679, 42.258518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.131187, 32.051716, 42.237232>,  <37.297150, 31.366554, 42.429737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.131187, 32.051716, 42.237232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.499184, 31.994116, 42.091419>,  <37.719982, 31.959555, 42.003933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.499184, 31.994116, 42.091419>,  <37.131187, 32.051716, 42.237232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.499184, 31.994116, 42.091419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264741, 0.457511, -0.848879,
		0.289017, 0.877466, 0.382782,
		0.919990, -0.144002, -0.364530,
		37.775181, 31.950914, 41.982059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.216763, 32.608379, 41.912563>,  <37.131187, 32.051716, 42.237232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.216763, 32.608379, 41.912563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.493092, 32.367500, 41.752502>,  <37.658890, 32.222973, 41.656464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.493092, 32.367500, 41.752502>,  <37.216763, 32.608379, 41.912563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.493092, 32.367500, 41.752502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194508, 0.378257, -0.905035,
		0.696371, 0.703051, 0.144176,
		0.690821, -0.602197, -0.400157,
		37.700336, 32.186840, 41.632454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.542072, 33.077557, 41.419594>,  <37.216763, 32.608379, 41.912563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.542072, 33.077557, 41.419594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.644211, 32.703915, 41.319801>,  <37.705494, 32.479729, 41.259926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.644211, 32.703915, 41.319801>,  <37.542072, 33.077557, 41.419594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.644211, 32.703915, 41.319801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055168, 0.243534, -0.968322,
		0.965275, 0.261020, 0.010652,
		0.255346, -0.934109, -0.249477,
		37.720814, 32.423683, 41.244957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.254539, 33.077179, 40.997486>,  <37.542072, 33.077557, 41.419594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.254539, 33.077179, 40.997486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.011978, 32.772038, 40.907742>,  <37.866444, 32.588955, 40.853893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.011978, 32.772038, 40.907742>,  <38.254539, 33.077179, 40.997486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.011978, 32.772038, 40.907742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070257, 0.332460, -0.940497,
		0.792049, -0.554556, -0.255200,
		-0.606402, -0.762849, -0.224363,
		37.830059, 32.543182, 40.840431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.522305, 32.905098, 40.377510>,  <38.254539, 33.077179, 40.997486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.522305, 32.905098, 40.377510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.186497, 32.688065, 40.366150>,  <37.985012, 32.557846, 40.359333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.186497, 32.688065, 40.366150>,  <38.522305, 32.905098, 40.377510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.186497, 32.688065, 40.366150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068179, 0.157067, -0.985232,
		0.539033, -0.825186, -0.168854,
		-0.839521, -0.542585, -0.028404,
		37.934639, 32.525288, 40.357628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.592365, 32.523727, 39.774685>,  <38.522305, 32.905098, 40.377510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.592365, 32.523727, 39.774685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.203720, 32.480618, 39.858929>,  <37.970531, 32.454750, 39.909473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.203720, 32.480618, 39.858929>,  <38.592365, 32.523727, 39.774685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.203720, 32.480618, 39.858929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233312, 0.289053, -0.928447,
		0.039191, -0.951227, -0.305994,
		-0.971612, -0.107779, 0.210605,
		37.912235, 32.448284, 39.922112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.290432, 32.093872, 39.264557>,  <38.592365, 32.523727, 39.774685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.290432, 32.093872, 39.264557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.001938, 32.324295, 39.418430>,  <37.828842, 32.462547, 39.510754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.001938, 32.324295, 39.418430>,  <38.290432, 32.093872, 39.264557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.001938, 32.324295, 39.418430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316117, 0.220423, -0.922759,
		-0.616352, -0.787131, 0.023124,
		-0.721235, 0.576054, 0.384684,
		37.785568, 32.497112, 39.533836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.691380, 31.987698, 38.899914>,  <38.290432, 32.093872, 39.264557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.691380, 31.987698, 38.899914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.639618, 32.356609, 39.045601>,  <37.608559, 32.577957, 39.133015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.639618, 32.356609, 39.045601>,  <37.691380, 31.987698, 38.899914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.639618, 32.356609, 39.045601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194222, 0.336617, -0.921394,
		-0.972384, -0.189975, 0.135566,
		-0.129408, 0.922279, 0.364218,
		37.600796, 32.633293, 39.154865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.064793, 32.124187, 38.494232>,  <37.691380, 31.987698, 38.899914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.064793, 32.124187, 38.494232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.209175, 32.464310, 38.647434>,  <37.295803, 32.668385, 38.739353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.209175, 32.464310, 38.647434>,  <37.064793, 32.124187, 38.494232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.209175, 32.464310, 38.647434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143383, 0.456406, -0.878143,
		-0.921495, 0.262054, 0.286661,
		0.360955, 0.850307, 0.383001,
		37.317463, 32.719402, 38.762333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.482868, 32.662563, 38.572533>,  <37.064793, 32.124187, 38.494232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.482868, 32.662563, 38.572533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.833046, 32.853340, 38.541210>,  <37.043152, 32.967804, 38.522415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.833046, 32.853340, 38.541210>,  <36.482868, 32.662563, 38.572533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.833046, 32.853340, 38.541210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320657, 0.451908, -0.832441,
		-0.361637, 0.753863, 0.548553,
		0.875442, 0.476939, -0.078305,
		37.095680, 32.996422, 38.517719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.301338, 33.383770, 38.531857>,  <36.482868, 32.662563, 38.572533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.301338, 33.383770, 38.531857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.673367, 33.325787, 38.396824>,  <36.896584, 33.290997, 38.315804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.673367, 33.325787, 38.396824>,  <36.301338, 33.383770, 38.531857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.673367, 33.325787, 38.396824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244550, 0.441435, -0.863325,
		0.274167, 0.885507, 0.375115,
		0.930069, -0.144961, -0.337577,
		36.952389, 33.282299, 38.295551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.462719, 34.028728, 38.321987>,  <36.301338, 33.383770, 38.531857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.462719, 34.028728, 38.321987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.704502, 33.773384, 38.131355>,  <36.849571, 33.620178, 38.016975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.704502, 33.773384, 38.131355>,  <36.462719, 34.028728, 38.321987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.704502, 33.773384, 38.131355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167541, 0.482991, -0.859447,
		0.778817, 0.599349, 0.184998,
		0.604461, -0.638358, -0.476578,
		36.885841, 33.581879, 37.988380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.903069, 34.378181, 37.964500>,  <36.462719, 34.028728, 38.321987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.903069, 34.378181, 37.964500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.906811, 34.023872, 37.778893>,  <36.909058, 33.811287, 37.667526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.906811, 34.023872, 37.778893>,  <36.903069, 34.378181, 37.964500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.906811, 34.023872, 37.778893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053261, 0.462945, -0.884786,
		0.998537, 0.032991, -0.042846,
		0.009355, -0.885773, -0.464024,
		36.909618, 33.758141, 37.639687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.125340, 34.496239, 37.228485>,  <36.903069, 34.378181, 37.964500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.125340, 34.496239, 37.228485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.990856, 34.120964, 37.195576>,  <36.910168, 33.895798, 37.175831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.990856, 34.120964, 37.195576>,  <37.125340, 34.496239, 37.228485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.990856, 34.120964, 37.195576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206356, 0.158618, -0.965535,
		0.918902, -0.307643, -0.246930,
		-0.336207, -0.938188, -0.082270,
		36.889996, 33.839508, 37.170895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.240475, 35.125793, 37.634850>,  <37.125340, 34.496239, 37.228485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.240475, 35.125793, 37.634850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.629860, 35.177628, 37.559410>,  <37.863491, 35.208729, 37.514149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.629860, 35.177628, 37.559410>,  <37.240475, 35.125793, 37.634850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.629860, 35.177628, 37.559410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207531, -0.152772, 0.966225,
		0.096400, -0.979728, -0.175613,
		0.973467, 0.129589, -0.188597,
		37.921902, 35.216503, 37.502831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.681339, 34.568687, 37.903084>,  <37.240475, 35.125793, 37.634850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.681339, 34.568687, 37.903084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.872429, 34.919781, 37.888294>,  <37.987083, 35.130436, 37.879421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.872429, 34.919781, 37.888294>,  <37.681339, 34.568687, 37.903084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.872429, 34.919781, 37.888294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240756, -0.090330, 0.966373,
		0.844878, -0.470558, -0.254472,
		0.477721, 0.877734, -0.036972,
		38.015743, 35.183102, 37.877201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.304527, 34.402458, 38.215260>,  <37.681339, 34.568687, 37.903084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.304527, 34.402458, 38.215260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.266666, 34.799839, 38.240849>,  <38.243950, 35.038269, 38.256203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.266666, 34.799839, 38.240849>,  <38.304527, 34.402458, 38.215260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.266666, 34.799839, 38.240849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030813, -0.061305, 0.997643,
		0.995033, 0.096403, -0.024808,
		-0.094655, 0.993453, 0.063971,
		38.238270, 35.097874, 38.260040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.836582, 34.580544, 38.482883>,  <38.304527, 34.402458, 38.215260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.836582, 34.580544, 38.482883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.640774, 34.917355, 38.573536>,  <38.523289, 35.119442, 38.627926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.640774, 34.917355, 38.573536>,  <38.836582, 34.580544, 38.482883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.640774, 34.917355, 38.573536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436749, 0.011807, 0.899506,
		0.754731, 0.539308, -0.373534,
		-0.489521, 0.842026, 0.226632,
		38.493919, 35.169964, 38.641525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.325256, 35.028290, 38.808678>,  <38.836582, 34.580544, 38.482883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.325256, 35.028290, 38.808678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.966183, 35.177090, 38.903152>,  <38.750740, 35.266369, 38.959835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.966183, 35.177090, 38.903152>,  <39.325256, 35.028290, 38.808678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.966183, 35.177090, 38.903152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294293, 0.107211, 0.949683,
		0.327957, 0.922022, -0.205717,
		-0.897684, 0.371996, 0.236184,
		38.696877, 35.288689, 38.974007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.524826, 35.797939, 39.112080>,  <39.325256, 35.028290, 38.808678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.524826, 35.797939, 39.112080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.170509, 35.668453, 39.245094>,  <38.957920, 35.590763, 39.324902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.170509, 35.668453, 39.245094>,  <39.524826, 35.797939, 39.112080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.170509, 35.668453, 39.245094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334969, 0.049948, 0.940904,
		-0.321195, 0.944835, 0.064191,
		-0.885793, -0.323716, 0.332533,
		38.904770, 35.571339, 39.344852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.549835, 36.105366, 39.720184>,  <39.524826, 35.797939, 39.112080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.549835, 36.105366, 39.720184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.266109, 35.826836, 39.764011>,  <39.095875, 35.659718, 39.790306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.266109, 35.826836, 39.764011>,  <39.549835, 36.105366, 39.720184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.266109, 35.826836, 39.764011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298017, -0.155383, 0.941829,
		-0.638797, 0.700702, 0.317733,
		-0.709312, -0.696328, 0.109563,
		39.053314, 35.617939, 39.796879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.262844, 36.161621, 40.385860>,  <39.549835, 36.105366, 39.720184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.262844, 36.161621, 40.385860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.157883, 35.784134, 40.305325>,  <39.094906, 35.557640, 40.257004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.157883, 35.784134, 40.305325>,  <39.262844, 36.161621, 40.385860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.157883, 35.784134, 40.305325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356281, -0.288662, 0.888672,
		-0.896778, 0.161452, 0.411975,
		-0.262399, -0.943720, -0.201343,
		39.079163, 35.501019, 40.244923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.903912, 35.909393, 41.019775>,  <39.262844, 36.161621, 40.385860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.903912, 35.909393, 41.019775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.996162, 35.565029, 40.838383>,  <39.051514, 35.358410, 40.729549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.996162, 35.565029, 40.838383>,  <38.903912, 35.909393, 41.019775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.996162, 35.565029, 40.838383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417119, -0.333580, 0.845421,
		-0.879104, -0.384128, 0.282171,
		0.230623, -0.860912, -0.453479,
		39.065350, 35.306755, 40.702339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.758209, 35.364754, 41.541515>,  <38.903912, 35.909393, 41.019775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.758209, 35.364754, 41.541515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.010353, 35.212212, 41.271046>,  <39.161640, 35.120686, 41.108765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.010353, 35.212212, 41.271046>,  <38.758209, 35.364754, 41.541515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.010353, 35.212212, 41.271046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500605, -0.466035, 0.729524,
		-0.593333, -0.798359, -0.102858,
		0.630358, -0.381359, -0.676176,
		39.199459, 35.097805, 41.068192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.732426, 34.631763, 41.614471>,  <38.758209, 35.364754, 41.541515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.732426, 34.631763, 41.614471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.077545, 34.702358, 41.424976>,  <39.284618, 34.744717, 41.311279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.077545, 34.702358, 41.424976>,  <38.732426, 34.631763, 41.614471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.077545, 34.702358, 41.424976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487249, -0.540100, 0.686208,
		-0.134756, -0.822888, -0.551993,
		0.862803, 0.176487, -0.473733,
		39.336388, 34.755306, 41.282856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.039845, 34.027821, 41.574013>,  <38.732426, 34.631763, 41.614471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.039845, 34.027821, 41.574013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.348103, 34.275501, 41.513756>,  <39.533058, 34.424110, 41.477604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.348103, 34.275501, 41.513756>,  <39.039845, 34.027821, 41.574013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.348103, 34.275501, 41.513756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536386, -0.502633, 0.677975,
		0.344088, -0.603280, -0.719484,
		0.770645, 0.619204, -0.150641,
		39.579296, 34.461262, 41.468563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.482834, 33.661831, 41.256451>,  <39.039845, 34.027821, 41.574013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.482834, 33.661831, 41.256451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.666229, 33.958542, 41.452225>,  <39.776268, 34.136570, 41.569691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.666229, 33.958542, 41.452225>,  <39.482834, 33.661831, 41.256451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.666229, 33.958542, 41.452225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550336, -0.669414, 0.499014,
		0.697794, 0.040560, -0.715149,
		0.458491, 0.741781, 0.489434,
		39.803776, 34.181076, 41.599056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.053558, 33.282879, 41.490223>,  <39.482834, 33.661831, 41.256451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.053558, 33.282879, 41.490223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.075672, 33.635231, 41.678265>,  <40.088940, 33.846642, 41.791092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.075672, 33.635231, 41.678265>,  <40.053558, 33.282879, 41.490223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.075672, 33.635231, 41.678265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514195, -0.428710, 0.742840,
		0.855890, 0.200663, -0.476641,
		0.055280, 0.880876, 0.470109,
		40.092255, 33.899494, 41.819298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.779861, 33.444221, 41.632782>,  <40.053558, 33.282879, 41.490223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.779861, 33.444221, 41.632782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.548214, 33.624599, 41.904449>,  <40.409225, 33.732826, 42.067448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.548214, 33.624599, 41.904449>,  <40.779861, 33.444221, 41.632782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.548214, 33.624599, 41.904449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501086, -0.460243, 0.732863,
		0.643062, 0.764738, 0.040575,
		-0.579123, 0.450945, 0.679165,
		40.374477, 33.759884, 42.108200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.261841, 33.573769, 42.144211>,  <40.779861, 33.444221, 41.632782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.261841, 33.573769, 42.144211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.920071, 33.652939, 42.336372>,  <40.715008, 33.700443, 42.451668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.920071, 33.652939, 42.336372>,  <41.261841, 33.573769, 42.144211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.920071, 33.652939, 42.336372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442166, -0.208561, 0.872348,
		0.272857, 0.957771, 0.090681,
		-0.854423, 0.197930, 0.480402,
		40.663742, 33.712318, 42.480492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.459461, 34.032875, 42.694664>,  <41.261841, 33.573769, 42.144211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.459461, 34.032875, 42.694664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.127563, 33.829937, 42.787727>,  <40.928425, 33.708176, 42.843563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.127563, 33.829937, 42.787727>,  <41.459461, 34.032875, 42.694664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.127563, 33.829937, 42.787727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459371, -0.383988, 0.800956,
		-0.317021, 0.771465, 0.551670,
		-0.829744, -0.507341, 0.232657,
		40.878639, 33.677734, 42.857525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.331329, 34.098473, 43.470844>,  <41.459461, 34.032875, 42.694664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.331329, 34.098473, 43.470844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.115700, 33.778458, 43.365509>,  <40.986320, 33.586449, 43.302307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.115700, 33.778458, 43.365509>,  <41.331329, 34.098473, 43.470844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.115700, 33.778458, 43.365509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298485, -0.473825, 0.828491,
		-0.787595, 0.368016, 0.494224,
		-0.539074, -0.800034, -0.263335,
		40.953979, 33.538448, 43.286507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.960106, 34.024620, 44.007343>,  <41.331329, 34.098473, 43.470844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.960106, 34.024620, 44.007343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.960594, 33.660538, 43.841679>,  <40.960888, 33.442089, 43.742279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.960594, 33.660538, 43.841679>,  <40.960106, 34.024620, 44.007343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.960594, 33.660538, 43.841679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326661, -0.391079, 0.860436,
		-0.945141, -0.136336, 0.296852,
		0.001216, -0.910203, -0.414161,
		40.960960, 33.387478, 43.717430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.570675, 33.483292, 44.504639>,  <40.960106, 34.024620, 44.007343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.570675, 33.483292, 44.504639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.757687, 33.253307, 44.236065>,  <40.869896, 33.115314, 44.074921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.757687, 33.253307, 44.236065>,  <40.570675, 33.483292, 44.504639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.757687, 33.253307, 44.236065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478549, -0.474010, 0.739124,
		-0.743238, -0.666881, 0.053533,
		0.467533, -0.574964, -0.671438,
		40.897945, 33.080818, 44.034634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.269211, 32.846558, 44.504360>,  <40.570675, 33.483292, 44.504639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.269211, 32.846558, 44.504360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.656029, 32.836666, 44.403000>,  <40.888119, 32.830730, 44.342182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.656029, 32.836666, 44.403000>,  <40.269211, 32.846558, 44.504360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.656029, 32.836666, 44.403000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216167, -0.446082, 0.868494,
		-0.134517, -0.894650, -0.426035,
		0.967046, -0.024732, -0.253400,
		40.946144, 32.829247, 44.326981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.505222, 32.192120, 44.604385>,  <40.269211, 32.846558, 44.504360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.505222, 32.192120, 44.604385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.797428, 32.459072, 44.662273>,  <40.972752, 32.619244, 44.697006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.797428, 32.459072, 44.662273>,  <40.505222, 32.192120, 44.604385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.797428, 32.459072, 44.662273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183779, -0.396226, 0.899572,
		0.657701, -0.630557, -0.412101,
		0.730517, 0.667385, 0.144715,
		41.016582, 32.659286, 44.705688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.095764, 31.895792, 44.896687>,  <40.505222, 32.192120, 44.604385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.095764, 31.895792, 44.896687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.164719, 32.276840, 44.996922>,  <41.206089, 32.505470, 45.057064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.164719, 32.276840, 44.996922>,  <41.095764, 31.895792, 44.896687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.164719, 32.276840, 44.996922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322440, -0.294955, 0.899463,
		0.930761, -0.074251, -0.358009,
		0.172382, 0.952622, 0.250591,
		41.216434, 32.562626, 45.072098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.764568, 31.963617, 45.278046>,  <41.095764, 31.895792, 44.896687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.764568, 31.963617, 45.278046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.570660, 32.300209, 45.373466>,  <41.454315, 32.502163, 45.430717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.570660, 32.300209, 45.373466>,  <41.764568, 31.963617, 45.278046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.570660, 32.300209, 45.373466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186197, -0.167200, 0.968181,
		0.854590, 0.513767, -0.075626,
		-0.484775, 0.841479, 0.238549,
		41.425228, 32.552654, 45.445030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.268227, 32.391262, 45.733601>,  <41.764568, 31.963617, 45.278046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.268227, 32.391262, 45.733601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.893093, 32.498756, 45.821461>,  <41.668011, 32.563251, 45.874176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.893093, 32.498756, 45.821461>,  <42.268227, 32.391262, 45.733601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.893093, 32.498756, 45.821461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210173, -0.063913, 0.975573,
		0.276205, 0.961092, 0.003460,
		-0.937837, 0.268731, 0.219648,
		41.611740, 32.579376, 45.887356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.327225, 32.856926, 46.191441>,  <42.268227, 32.391262, 45.733601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.327225, 32.856926, 46.191441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.951630, 32.726562, 46.235401>,  <41.726273, 32.648346, 46.261776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.951630, 32.726562, 46.235401>,  <42.327225, 32.856926, 46.191441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.951630, 32.726562, 46.235401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142134, -0.076726, 0.986869,
		-0.313197, 0.942283, 0.118368,
		-0.938992, -0.325908, 0.109900,
		41.669933, 32.628792, 46.268372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.204594, 33.155521, 46.792763>,  <42.327225, 32.856926, 46.191441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.204594, 33.155521, 46.792763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.917965, 32.878288, 46.761383>,  <41.745987, 32.711948, 46.742554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.917965, 32.878288, 46.761383>,  <42.204594, 33.155521, 46.792763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.917965, 32.878288, 46.761383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033312, -0.146353, 0.988671,
		-0.696714, 0.705844, 0.127961,
		-0.716575, -0.693084, -0.078453,
		41.702991, 32.670364, 46.737846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.580399, 33.486862, 47.215008>,  <42.204594, 33.155521, 46.792763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.580399, 33.486862, 47.215008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.561470, 33.087730, 47.196709>,  <41.550114, 32.848251, 47.185730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.561470, 33.087730, 47.196709>,  <41.580399, 33.486862, 47.215008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.561470, 33.087730, 47.196709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268417, -0.031410, 0.962790,
		-0.962140, 0.057843, -0.266349,
		-0.047325, -0.997831, -0.045747,
		41.547272, 32.788380, 47.182983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.800285, 33.281746, 47.448536>,  <41.580399, 33.486862, 47.215008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.800285, 33.281746, 47.448536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.041382, 32.968063, 47.507488>,  <41.186039, 32.779854, 47.542858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.041382, 32.968063, 47.507488>,  <40.800285, 33.281746, 47.448536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.041382, 32.968063, 47.507488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297349, -0.049345, 0.953493,
		-0.740464, -0.618532, -0.262926,
		0.602740, -0.784208, 0.147382,
		41.222202, 32.732800, 47.551704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.375092, 32.833466, 47.758877>,  <40.800285, 33.281746, 47.448536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.375092, 32.833466, 47.758877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.734089, 32.687107, 47.857361>,  <40.949490, 32.599293, 47.916451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.734089, 32.687107, 47.857361>,  <40.375092, 32.833466, 47.758877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.734089, 32.687107, 47.857361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293793, -0.079662, 0.952544,
		-0.328915, -0.927241, -0.178993,
		0.897497, -0.365893, 0.246214,
		41.003338, 32.577339, 47.931225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.277164, 32.293388, 48.151112>,  <40.375092, 32.833466, 47.758877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.277164, 32.293388, 48.151112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.657928, 32.381508, 48.236286>,  <40.886387, 32.434380, 48.287392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.657928, 32.381508, 48.236286>,  <40.277164, 32.293388, 48.151112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.657928, 32.381508, 48.236286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171855, -0.191449, 0.966340,
		0.253654, -0.956459, -0.144381,
		0.951906, 0.220304, 0.212934,
		40.943501, 32.447598, 48.300167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.484142, 31.817684, 48.559086>,  <40.277164, 32.293388, 48.151112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.484142, 31.817684, 48.559086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.731106, 32.123676, 48.632420>,  <40.879284, 32.307274, 48.676418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.731106, 32.123676, 48.632420>,  <40.484142, 31.817684, 48.559086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.731106, 32.123676, 48.632420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189715, -0.081375, 0.978461,
		0.763424, -0.638890, 0.094887,
		0.617408, 0.764982, 0.183331,
		40.916328, 32.353172, 48.687420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.965904, 31.622318, 49.111183>,  <40.484142, 31.817684, 48.559086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.965904, 31.622318, 49.111183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.989109, 32.020535, 49.140938>,  <41.003033, 32.259464, 49.158791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.989109, 32.020535, 49.140938>,  <40.965904, 31.622318, 49.111183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.989109, 32.020535, 49.140938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010761, -0.075127, 0.997116,
		0.998258, -0.057043, -0.015071,
		0.058011, 0.995541, 0.074382,
		41.006512, 32.319199, 49.163254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.145660, 31.756647, 49.817356>,  <40.965904, 31.622318, 49.111183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.145660, 31.756647, 49.817356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.031475, 32.117268, 49.687302>,  <40.962963, 32.333641, 49.609268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.031475, 32.117268, 49.687302>,  <41.145660, 31.756647, 49.817356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.031475, 32.117268, 49.687302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069918, 0.318755, 0.945255,
		0.955836, 0.292568, -0.027958,
		-0.285464, 0.901554, -0.325134,
		40.945835, 32.387733, 49.589760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.604832, 32.300751, 50.069756>,  <41.145660, 31.756647, 49.817356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.604832, 32.300751, 50.069756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.290184, 32.533295, 49.986561>,  <41.101395, 32.672821, 49.936642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.290184, 32.533295, 49.986561>,  <41.604832, 32.300751, 50.069756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.290184, 32.533295, 49.986561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054444, 0.400854, 0.914523,
		0.615037, 0.708056, -0.346969,
		-0.786617, 0.581355, -0.207990,
		41.054199, 32.707703, 49.924164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.765633, 32.910610, 50.383652>,  <41.604832, 32.300751, 50.069756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.765633, 32.910610, 50.383652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.368542, 32.879646, 50.346790>,  <41.130287, 32.861069, 50.324673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.368542, 32.879646, 50.346790>,  <41.765633, 32.910610, 50.383652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.368542, 32.879646, 50.346790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111918, 0.312271, 0.943378,
		-0.044251, 0.946834, -0.318665,
		-0.992732, -0.077410, -0.092149,
		41.070721, 32.856422, 50.319145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.451248, 33.533836, 50.645920>,  <41.765633, 32.910610, 50.383652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.451248, 33.533836, 50.645920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.224583, 33.206009, 50.679855>,  <41.088585, 33.009312, 50.700218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.224583, 33.206009, 50.679855>,  <41.451248, 33.533836, 50.645920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.224583, 33.206009, 50.679855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187172, 0.228315, 0.955426,
		-0.802411, 0.525522, -0.282778,
		-0.566660, -0.819572, 0.084839,
		41.054585, 32.960136, 50.705307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.374817, 33.509945, 51.467033>,  <41.451248, 33.533836, 50.645920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.374817, 33.509945, 51.467033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.165539, 33.819843, 51.609039>,  <41.039974, 34.005783, 51.694241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.165539, 33.819843, 51.609039>,  <41.374817, 33.509945, 51.467033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.165539, 33.819843, 51.609039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032751, 0.434547, -0.900053,
		-0.851586, -0.459273, -0.252726,
		-0.523191, 0.774750, 0.355012,
		41.008583, 34.052269, 51.715542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.809315, 33.677013, 50.967361>,  <41.374817, 33.509945, 51.467033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.809315, 33.677013, 50.967361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.855736, 34.012436, 51.180286>,  <40.883587, 34.213688, 51.308041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.855736, 34.012436, 51.180286>,  <40.809315, 33.677013, 50.967361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.855736, 34.012436, 51.180286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135714, 0.544292, -0.827846,
		-0.983927, 0.023833, 0.176971,
		0.116053, 0.838557, 0.532309,
		40.890553, 34.264004, 51.339977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.329239, 34.084949, 50.650295>,  <40.809315, 33.677013, 50.967361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.329239, 34.084949, 50.650295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.570908, 34.344578, 50.835201>,  <40.715908, 34.500355, 50.946144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.570908, 34.344578, 50.835201>,  <40.329239, 34.084949, 50.650295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.570908, 34.344578, 50.835201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062611, 0.616982, -0.784483,
		-0.794390, 0.445021, 0.413402,
		0.604173, 0.649068, 0.462261,
		40.752159, 34.539299, 50.973881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.089100, 34.671303, 50.406681>,  <40.329239, 34.084949, 50.650295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.089100, 34.671303, 50.406681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.446247, 34.771145, 50.556606>,  <40.660534, 34.831051, 50.646561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.446247, 34.771145, 50.556606>,  <40.089100, 34.671303, 50.406681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.446247, 34.771145, 50.556606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121803, 0.667435, -0.734639,
		-0.433532, 0.701589, 0.565529,
		0.892868, 0.249606, 0.374810,
		40.714108, 34.846027, 50.669048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.993210, 35.514416, 50.560623>,  <40.089100, 34.671303, 50.406681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.993210, 35.514416, 50.560623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.386284, 35.450500, 50.523098>,  <40.622128, 35.412151, 50.500584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.386284, 35.450500, 50.523098>,  <39.993210, 35.514416, 50.560623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.386284, 35.450500, 50.523098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054182, 0.731985, -0.679163,
		0.177193, 0.662319, 0.727967,
		0.982684, -0.159786, -0.093817,
		40.681087, 35.402565, 50.494953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.375439, 36.185173, 50.526661>,  <39.993210, 35.514416, 50.560623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.375439, 36.185173, 50.526661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.604046, 35.895996, 50.371372>,  <40.741211, 35.722488, 50.278198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.604046, 35.895996, 50.371372>,  <40.375439, 36.185173, 50.526661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.604046, 35.895996, 50.371372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192921, 0.578221, -0.792744,
		0.797586, 0.378174, 0.469937,
		0.571522, -0.722942, -0.388223,
		40.775501, 35.679115, 50.254906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.886837, 36.587238, 50.275997>,  <40.375439, 36.185173, 50.526661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.886837, 36.587238, 50.275997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.936226, 36.241688, 50.080666>,  <40.965858, 36.034355, 49.963467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.936226, 36.241688, 50.080666>,  <40.886837, 36.587238, 50.275997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.936226, 36.241688, 50.080666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125002, 0.501714, -0.855954,
		0.984444, 0.044643, 0.169934,
		0.123471, -0.863881, -0.488329,
		40.973267, 35.982525, 49.934166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.388020, 36.703537, 49.731705>,  <40.886837, 36.587238, 50.275997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.388020, 36.703537, 49.731705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.222092, 36.368610, 49.589256>,  <41.122536, 36.167656, 49.503788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.222092, 36.368610, 49.589256>,  <41.388020, 36.703537, 49.731705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.222092, 36.368610, 49.589256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143455, 0.326304, -0.934316,
		0.898523, -0.438662, -0.015241,
		-0.414822, -0.837318, -0.356120,
		41.097645, 36.117416, 49.482422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.875771, 36.470547, 49.215683>,  <41.388020, 36.703537, 49.731705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.875771, 36.470547, 49.215683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.529209, 36.280590, 49.153946>,  <41.321270, 36.166618, 49.116905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.529209, 36.280590, 49.153946>,  <41.875771, 36.470547, 49.215683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.529209, 36.280590, 49.153946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110774, 0.118597, -0.986744,
		0.486897, -0.872019, -0.050148,
		-0.866407, -0.474887, -0.154341,
		41.269287, 36.138123, 49.107643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.034035, 35.967403, 48.731152>,  <41.875771, 36.470547, 49.215683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.034035, 35.967403, 48.731152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.638180, 36.019741, 48.707474>,  <41.400669, 36.051144, 48.693268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.638180, 36.019741, 48.707474>,  <42.034035, 35.967403, 48.731152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.638180, 36.019741, 48.707474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068428, 0.067210, -0.995390,
		-0.126262, -0.989122, -0.075467,
		-0.989634, 0.130843, -0.059198,
		41.341290, 36.058994, 48.689716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.873947, 35.706249, 48.099335>,  <42.034035, 35.967403, 48.731152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.873947, 35.706249, 48.099335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.548462, 35.921524, 48.187172>,  <41.353168, 36.050690, 48.239876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.548462, 35.921524, 48.187172>,  <41.873947, 35.706249, 48.099335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.548462, 35.921524, 48.187172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018546, 0.353556, -0.935230,
		-0.580968, -0.765083, -0.277713,
		-0.813715, 0.538188, 0.219593,
		41.304348, 36.082981, 48.253052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.361752, 35.516579, 47.603313>,  <41.873947, 35.706249, 48.099335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.361752, 35.516579, 47.603313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.256390, 35.872490, 47.752396>,  <41.193172, 36.086037, 47.841846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.256390, 35.872490, 47.752396>,  <41.361752, 35.516579, 47.603313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.256390, 35.872490, 47.752396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266935, 0.304042, -0.914497,
		-0.927019, -0.340371, 0.157427,
		-0.263404, 0.889778, 0.372710,
		41.177368, 36.139423, 47.864208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.653442, 35.608994, 47.492683>,  <41.361752, 35.516579, 47.603313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.653442, 35.608994, 47.492683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.838497, 35.963573, 47.497913>,  <40.949528, 36.176323, 47.501053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.838497, 35.963573, 47.497913>,  <40.653442, 35.608994, 47.492683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.838497, 35.963573, 47.497913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306163, 0.173591, -0.936018,
		-0.832006, 0.429030, 0.351709,
		0.462633, 0.886453, 0.013076,
		40.977287, 36.229511, 47.501835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.234230, 36.052273, 47.146725>,  <40.653442, 35.608994, 47.492683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.234230, 36.052273, 47.146725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.591579, 36.230900, 47.126896>,  <40.805988, 36.338078, 47.114998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.591579, 36.230900, 47.126896>,  <40.234230, 36.052273, 47.146725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.591579, 36.230900, 47.126896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111896, 0.114278, -0.987127,
		-0.435154, 0.887422, 0.152062,
		0.893376, 0.446567, -0.049570,
		40.859592, 36.364868, 47.112026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.120621, 36.795036, 46.971214>,  <40.234230, 36.052273, 47.146725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.120621, 36.795036, 46.971214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.502312, 36.712185, 46.884918>,  <40.731327, 36.662476, 46.833141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.502312, 36.712185, 46.884918>,  <40.120621, 36.795036, 46.971214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.502312, 36.712185, 46.884918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124968, 0.379225, -0.916827,
		0.271715, 0.901824, 0.335983,
		0.954230, -0.207128, -0.215740,
		40.788582, 36.650047, 46.820198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.350334, 37.312405, 46.516064>,  <40.120621, 36.795036, 46.971214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.350334, 37.312405, 46.516064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.591404, 37.000137, 46.449932>,  <40.736046, 36.812775, 46.410252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.591404, 37.000137, 46.449932>,  <40.350334, 37.312405, 46.516064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.591404, 37.000137, 46.449932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059969, 0.250906, -0.966152,
		0.795731, 0.572360, 0.198031,
		0.602674, -0.780673, -0.165329,
		40.772205, 36.765934, 46.400333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.043949, 37.622456, 46.181339>,  <40.350334, 37.312405, 46.516064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.043949, 37.622456, 46.181339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.031364, 37.230129, 46.104382>,  <41.023815, 36.994736, 46.058208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.031364, 37.230129, 46.104382>,  <41.043949, 37.622456, 46.181339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.031364, 37.230129, 46.104382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083304, 0.189248, -0.978389,
		0.996027, -0.046809, 0.075752,
		-0.031461, -0.980813, -0.192396,
		41.021927, 36.935886, 46.046661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.530197, 37.521873, 45.720127>,  <41.043949, 37.622456, 46.181339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.530197, 37.521873, 45.720127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.269398, 37.223095, 45.668022>,  <41.112919, 37.043827, 45.636761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.269398, 37.223095, 45.668022>,  <41.530197, 37.521873, 45.720127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.269398, 37.223095, 45.668022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132948, 0.056515, -0.989510,
		0.746473, -0.662478, 0.062457,
		-0.651999, -0.746947, -0.130262,
		41.073799, 36.999012, 45.628944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.825661, 37.116970, 45.102310>,  <41.530197, 37.521873, 45.720127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.825661, 37.116970, 45.102310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.467720, 36.941471, 45.135147>,  <41.252956, 36.836170, 45.154850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.467720, 36.941471, 45.135147>,  <41.825661, 37.116970, 45.102310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.467720, 36.941471, 45.135147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136544, 0.093984, -0.986166,
		0.424964, -0.893682, -0.144010,
		-0.894853, -0.438748, 0.082088,
		41.199265, 36.809845, 45.159775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.845818, 36.467865, 44.799965>,  <41.825661, 37.116970, 45.102310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.845818, 36.467865, 44.799965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.467854, 36.598797, 44.799194>,  <41.241074, 36.677357, 44.798733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.467854, 36.598797, 44.799194>,  <41.845818, 36.467865, 44.799965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.467854, 36.598797, 44.799194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005774, 0.010780, -0.999925,
		-0.327281, -0.944850, -0.012076,
		-0.944910, 0.327326, -0.001927,
		41.184380, 36.696995, 44.798615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.576462, 36.104267, 44.238728>,  <41.845818, 36.467865, 44.799965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.576462, 36.104267, 44.238728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.258614, 36.335461, 44.313030>,  <41.067905, 36.474178, 44.357613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.258614, 36.335461, 44.313030>,  <41.576462, 36.104267, 44.238728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.258614, 36.335461, 44.313030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238037, -0.015139, -0.971138,
		-0.558491, -0.815907, 0.149612,
		-0.794624, 0.577985, 0.185761,
		41.020226, 36.508858, 44.368759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.057133, 35.781773, 43.825649>,  <41.576462, 36.104267, 44.238728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.057133, 35.781773, 43.825649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.936916, 36.153980, 43.909370>,  <40.864788, 36.377304, 43.959602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.936916, 36.153980, 43.909370>,  <41.057133, 35.781773, 43.825649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.936916, 36.153980, 43.909370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239559, 0.138766, -0.960914,
		-0.923195, -0.338930, 0.181210,
		-0.300536, 0.930522, 0.209302,
		40.846756, 36.433136, 43.972160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.337292, 35.908169, 43.585243>,  <41.057133, 35.781773, 43.825649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.337292, 35.908169, 43.585243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.531994, 36.256371, 43.614346>,  <40.648815, 36.465290, 43.631809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.531994, 36.256371, 43.614346>,  <40.337292, 35.908169, 43.585243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.531994, 36.256371, 43.614346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163810, 0.172774, -0.971244,
		-0.858043, 0.460838, 0.226695,
		0.486754, 0.870504, 0.072758,
		40.678020, 36.517521, 43.636173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.027451, 36.229729, 43.109978>,  <40.337292, 35.908169, 43.585243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.027451, 36.229729, 43.109978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.374359, 36.423935, 43.154007>,  <40.582504, 36.540459, 43.180424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.374359, 36.423935, 43.154007>,  <40.027451, 36.229729, 43.109978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.374359, 36.423935, 43.154007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005271, 0.230055, -0.973163,
		-0.497806, 0.843417, 0.202079,
		0.867272, 0.485512, 0.110077,
		40.634541, 36.569588, 43.187031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.951359, 36.873447, 42.790234>,  <40.027451, 36.229729, 43.109978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.951359, 36.873447, 42.790234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.350502, 36.847839, 42.784836>,  <40.589989, 36.832474, 42.781597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.350502, 36.847839, 42.784836>,  <39.951359, 36.873447, 42.790234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.350502, 36.847839, 42.784836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000779, 0.217803, -0.975993,
		0.065422, 0.973891, 0.217386,
		0.997857, -0.064021, -0.013491,
		40.649860, 36.828632, 42.780788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.117828, 37.384125, 42.316959>,  <39.951359, 36.873447, 42.790234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.117828, 37.384125, 42.316959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.426098, 37.131325, 42.349552>,  <40.611057, 36.979645, 42.369110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.426098, 37.131325, 42.349552>,  <40.117828, 37.384125, 42.316959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.426098, 37.131325, 42.349552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122096, 0.020948, -0.992297,
		0.625427, 0.774684, 0.093309,
		0.770671, -0.632002, 0.081484,
		40.657299, 36.941723, 42.373997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.782356, 37.655998, 42.033619>,  <40.117828, 37.384125, 42.316959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.782356, 37.655998, 42.033619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.825329, 37.258820, 42.013523>,  <40.851112, 37.020512, 42.001465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.825329, 37.258820, 42.013523>,  <40.782356, 37.655998, 42.033619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.825329, 37.258820, 42.013523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164843, 0.067626, -0.983998,
		0.980452, 0.097427, 0.170945,
		0.107428, -0.992942, -0.050243,
		40.857555, 36.960938, 41.998451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.250736, 37.570511, 41.578648>,  <40.782356, 37.655998, 42.033619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.250736, 37.570511, 41.578648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.097168, 37.201176, 41.576057>,  <41.005028, 36.979572, 41.574501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.097168, 37.201176, 41.576057>,  <41.250736, 37.570511, 41.578648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.097168, 37.201176, 41.576057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042471, -0.010650, -0.999041,
		0.922387, -0.383831, 0.043304,
		-0.383924, -0.923342, -0.006478,
		40.981991, 36.924171, 41.574116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.717312, 37.169781, 41.204197>,  <41.250736, 37.570511, 41.578648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.717312, 37.169781, 41.204197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.375935, 36.962551, 41.181469>,  <41.171108, 36.838215, 41.167831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.375935, 36.962551, 41.181469>,  <41.717312, 37.169781, 41.204197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.375935, 36.962551, 41.181469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096396, -0.049767, -0.994098,
		0.512188, -0.853887, 0.092414,
		-0.853446, -0.518074, -0.056821,
		41.119900, 36.807129, 41.164421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.829098, 36.690208, 40.711338>,  <41.717312, 37.169781, 41.204197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.829098, 36.690208, 40.711338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.431629, 36.650822, 40.732929>,  <41.193146, 36.627190, 40.745884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.431629, 36.650822, 40.732929>,  <41.829098, 36.690208, 40.711338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.431629, 36.650822, 40.732929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041023, -0.129167, -0.990774,
		0.104537, -0.986721, 0.124310,
		-0.993675, -0.098473, 0.053981,
		41.133526, 36.621281, 40.749123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.613377, 36.130527, 40.220398>,  <41.829098, 36.690208, 40.711338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.613377, 36.130527, 40.220398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.306564, 36.381958, 40.271877>,  <41.122478, 36.532818, 40.302765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.306564, 36.381958, 40.271877>,  <41.613377, 36.130527, 40.220398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.306564, 36.381958, 40.271877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086405, 0.097567, -0.991471,
		-0.635772, -0.771604, -0.020524,
		-0.767026, 0.628576, 0.128700,
		41.076458, 36.570530, 40.310486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.165649, 35.982388, 39.603886>,  <41.613377, 36.130527, 40.220398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.165649, 35.982388, 39.603886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.077698, 36.341965, 39.755444>,  <41.024925, 36.557709, 39.846378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.077698, 36.341965, 39.755444>,  <41.165649, 35.982388, 39.603886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.077698, 36.341965, 39.755444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181795, 0.343837, -0.921264,
		-0.958437, -0.271451, 0.087819,
		-0.219883, 0.898938, 0.378895,
		41.011734, 36.611645, 39.869114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.581154, 36.212700, 39.311241>,  <41.165649, 35.982388, 39.603886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.581154, 36.212700, 39.311241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.693520, 36.576763, 39.433029>,  <40.760941, 36.795200, 39.506104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.693520, 36.576763, 39.433029>,  <40.581154, 36.212700, 39.311241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.693520, 36.576763, 39.433029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141337, 0.353022, -0.924878,
		-0.949268, 0.216782, 0.227808,
		0.280918, 0.910155, 0.304473,
		40.777794, 36.849808, 39.524372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.034435, 36.704903, 39.075661>,  <40.581154, 36.212700, 39.311241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.034435, 36.704903, 39.075661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.358356, 36.928017, 39.148434>,  <40.552708, 37.061886, 39.192097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.358356, 36.928017, 39.148434>,  <40.034435, 36.704903, 39.075661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.358356, 36.928017, 39.148434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153306, 0.500494, -0.852058,
		-0.566323, 0.662104, 0.490811,
		0.809799, 0.557785, 0.181937,
		40.601295, 37.095352, 39.203014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.798290, 37.485672, 39.053085>,  <40.034435, 36.704903, 39.075661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.798290, 37.485672, 39.053085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.191242, 37.448635, 38.988152>,  <40.427013, 37.426411, 38.949192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.191242, 37.448635, 38.988152>,  <39.798290, 37.485672, 39.053085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.191242, 37.448635, 38.988152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074445, 0.602855, -0.794370,
		0.171418, 0.792459, 0.585341,
		0.982382, -0.092594, -0.162335,
		40.485958, 37.420856, 38.939449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.115444, 38.169590, 38.991440>,  <39.798290, 37.485672, 39.053085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.115444, 38.169590, 38.991440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.379940, 37.935570, 38.803623>,  <40.538639, 37.795158, 38.690933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.379940, 37.935570, 38.803623>,  <40.115444, 38.169590, 38.991440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.379940, 37.935570, 38.803623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219505, 0.447622, -0.866864,
		0.717338, 0.676275, 0.167565,
		0.661244, -0.585053, -0.469541,
		40.578312, 37.760056, 38.662762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.717438, 38.534306, 38.649570>,  <40.115444, 38.169590, 38.991440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.717438, 38.534306, 38.649570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.694702, 38.192165, 38.443604>,  <40.681061, 37.986881, 38.320023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.694702, 38.192165, 38.443604>,  <40.717438, 38.534306, 38.649570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.694702, 38.192165, 38.443604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201831, 0.495261, -0.844974,
		0.977770, -0.151956, 0.144485,
		-0.056841, -0.855351, -0.514921,
		40.677650, 37.935558, 38.289127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.360611, 38.641716, 38.167675>,  <40.717438, 38.534306, 38.649570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.360611, 38.641716, 38.167675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.161488, 38.331783, 38.011814>,  <41.042015, 38.145824, 37.918297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.161488, 38.331783, 38.011814>,  <41.360611, 38.641716, 38.167675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.161488, 38.331783, 38.011814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490019, 0.119416, -0.863494,
		0.715591, -0.620789, 0.320236,
		-0.497806, -0.774829, -0.389651,
		41.012146, 38.099335, 37.894920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.766411, 38.172218, 37.853626>,  <41.360611, 38.641716, 38.167675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.766411, 38.172218, 37.853626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.413940, 38.122814, 37.671078>,  <41.202457, 38.093170, 37.561550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.413940, 38.122814, 37.671078>,  <41.766411, 38.172218, 37.853626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.413940, 38.122814, 37.671078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450016, 0.076842, -0.889708,
		0.144958, -0.989363, -0.012129,
		-0.881177, -0.123512, -0.456368,
		41.149586, 38.085758, 37.534168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.888809, 37.858284, 37.138306>,  <41.766411, 38.172218, 37.853626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.888809, 37.858284, 37.138306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.512154, 37.990181, 37.111198>,  <41.286160, 38.069321, 37.094936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.512154, 37.990181, 37.111198>,  <41.888809, 37.858284, 37.138306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.512154, 37.990181, 37.111198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192904, 0.363574, -0.911374,
		-0.275884, -0.871253, -0.405963,
		-0.941635, 0.329746, -0.067764,
		41.229664, 38.089104, 37.090870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.470875, 37.551434, 36.594563>,  <41.888809, 37.858284, 37.138306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.470875, 37.551434, 36.594563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.415211, 37.933739, 36.698219>,  <41.381813, 38.163120, 36.760414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.415211, 37.933739, 36.698219>,  <41.470875, 37.551434, 36.594563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.415211, 37.933739, 36.698219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542126, 0.292517, -0.787739,
		-0.828695, 0.030870, -0.558849,
		-0.139156, 0.955762, 0.259143,
		41.373463, 38.220467, 36.775963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.274986, 38.039181, 36.069164>,  <41.470875, 37.551434, 36.594563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.274986, 38.039181, 36.069164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.593903, 38.271511, 36.003483>,  <41.785252, 38.410908, 35.964073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.593903, 38.271511, 36.003483>,  <41.274986, 38.039181, 36.069164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.593903, 38.271511, 36.003483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602981, -0.778665, 0.173479,
		-0.027095, -0.237322, -0.971053,
		0.797295, 0.580826, -0.164199,
		41.833092, 38.445759, 35.954224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.675232, 37.773140, 35.608028>,  <41.274986, 38.039181, 36.069164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.675232, 37.773140, 35.608028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.910400, 37.984222, 35.853264>,  <42.051502, 38.110870, 36.000404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.910400, 37.984222, 35.853264>,  <41.675232, 37.773140, 35.608028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.910400, 37.984222, 35.853264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548923, -0.816962, 0.176795,
		0.594169, 0.232599, -0.769975,
		0.587918, 0.527703, 0.613092,
		42.086777, 38.142532, 36.037193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.450752, 37.634876, 35.632175>,  <41.675232, 37.773140, 35.608028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.450752, 37.634876, 35.632175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.426266, 37.774986, 36.006035>,  <42.411575, 37.859051, 36.230350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.426266, 37.774986, 36.006035>,  <42.450752, 37.634876, 35.632175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.426266, 37.774986, 36.006035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.648775, -0.697645, 0.303944,
		0.758514, 0.624981, -0.184543,
		-0.061214, 0.350273, 0.934645,
		42.407902, 37.880070, 36.286430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.119717, 37.741623, 35.978741>,  <42.450752, 37.634876, 35.632175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.119717, 37.741623, 35.978741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.826572, 37.645222, 36.233246>,  <42.650684, 37.587379, 36.385948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.826572, 37.645222, 36.233246>,  <43.119717, 37.741623, 35.978741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.826572, 37.645222, 36.233246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.604248, -0.660379, 0.445852,
		0.312718, 0.711208, 0.629596,
		-0.732865, -0.241006, 0.636259,
		42.606712, 37.572918, 36.424122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.380325, 37.771366, 36.790447>,  <43.119717, 37.741623, 35.978741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.380325, 37.771366, 36.790447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.078304, 37.524670, 36.701439>,  <42.897091, 37.376652, 36.648033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.078304, 37.524670, 36.701439>,  <43.380325, 37.771366, 36.790447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.078304, 37.524670, 36.701439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473923, -0.747907, 0.464793,
		-0.453085, 0.245485, 0.857001,
		-0.755057, -0.616743, -0.222524,
		42.851788, 37.339645, 36.634682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.324860, 37.263813, 37.321556>,  <43.380325, 37.771366, 36.790447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.324860, 37.263813, 37.321556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.126713, 37.097286, 37.016586>,  <43.007824, 36.997372, 36.833603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.126713, 37.097286, 37.016586>,  <43.324860, 37.263813, 37.321556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.126713, 37.097286, 37.016586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341664, -0.900317, 0.269619,
		-0.798672, -0.126934, 0.588227,
		-0.495367, -0.416313, -0.762427,
		42.978104, 36.972393, 36.787857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.962296, 36.686146, 37.572796>,  <43.324860, 37.263813, 37.321556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.962296, 36.686146, 37.572796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.984699, 36.632332, 37.177067>,  <42.998142, 36.600044, 36.939629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.984699, 36.632332, 37.177067>,  <42.962296, 36.686146, 37.572796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.984699, 36.632332, 37.177067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245422, -0.958623, 0.144252,
		-0.967797, -0.250881, -0.020672,
		0.056007, -0.134533, -0.989325,
		43.001503, 36.591972, 36.880268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.457348, 36.174545, 37.343342>,  <42.962296, 36.686146, 37.572796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.457348, 36.174545, 37.343342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.800339, 36.190903, 37.138184>,  <43.006134, 36.200718, 37.015087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.800339, 36.190903, 37.138184>,  <42.457348, 36.174545, 37.343342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.800339, 36.190903, 37.138184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242970, -0.910874, 0.333578,
		-0.453544, -0.410653, -0.790988,
		0.857475, 0.040895, -0.512898,
		43.057583, 36.203171, 36.984314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.553967, 35.558079, 36.831902>,  <42.457348, 36.174545, 37.343342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.553967, 35.558079, 36.831902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.899334, 35.718567, 36.954235>,  <43.106552, 35.814861, 37.027634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.899334, 35.718567, 36.954235>,  <42.553967, 35.558079, 36.831902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.899334, 35.718567, 36.954235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331179, -0.908080, 0.256343,
		0.380570, -0.120045, -0.916927,
		0.863416, 0.401224, 0.305831,
		43.158360, 35.838936, 37.045986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.933956, 35.063435, 36.594006>,  <42.553967, 35.558079, 36.831902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.933956, 35.063435, 36.594006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.158527, 35.275585, 36.848095>,  <43.293270, 35.402874, 37.000549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.158527, 35.275585, 36.848095>,  <42.933956, 35.063435, 36.594006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.158527, 35.275585, 36.848095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376455, -0.847277, 0.374704,
		0.736940, 0.028762, -0.675346,
		0.561428, 0.530372, 0.635220,
		43.326958, 35.434696, 37.038662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.508720, 34.769714, 36.525406>,  <42.933956, 35.063435, 36.594006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.508720, 34.769714, 36.525406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.530186, 34.935631, 36.888737>,  <43.543064, 35.035183, 37.106735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.530186, 34.935631, 36.888737>,  <43.508720, 34.769714, 36.525406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.530186, 34.935631, 36.888737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348874, -0.860106, 0.372162,
		0.935632, 0.296923, -0.190864,
		0.053659, 0.414794, 0.908332,
		43.546284, 35.060070, 37.161236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.252693, 34.657784, 36.857349>,  <43.508720, 34.769714, 36.525406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.252693, 34.657784, 36.857349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.979889, 34.740345, 37.137993>,  <43.816208, 34.789883, 37.306381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.979889, 34.740345, 37.137993>,  <44.252693, 34.657784, 36.857349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.979889, 34.740345, 37.137993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332149, -0.767284, 0.548592,
		0.651566, 0.607185, 0.454740,
		-0.682011, 0.206403, 0.701612,
		43.775284, 34.802265, 37.348476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.618675, 34.505508, 37.542580>,  <44.252693, 34.657784, 36.857349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.618675, 34.505508, 37.542580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.227428, 34.514725, 37.625298>,  <43.992680, 34.520252, 37.674931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.227428, 34.514725, 37.625298>,  <44.618675, 34.505508, 37.542580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.227428, 34.514725, 37.625298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103502, -0.808312, 0.579585,
		0.180508, 0.588304, 0.788236,
		-0.978113, 0.023036, 0.206797,
		43.933994, 34.521637, 37.687336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.630657, 34.443546, 38.259132>,  <44.618675, 34.505508, 37.542580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.630657, 34.443546, 38.259132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.272053, 34.345692, 38.111393>,  <44.056889, 34.286980, 38.022751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.272053, 34.345692, 38.111393>,  <44.630657, 34.443546, 38.259132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.272053, 34.345692, 38.111393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006337, -0.840701, 0.541463,
		-0.442971, 0.483088, 0.755250,
		-0.896513, -0.244639, -0.369345,
		44.003098, 34.272301, 38.000591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.278980, 34.176003, 38.815765>,  <44.630657, 34.443546, 38.259132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.278980, 34.176003, 38.815765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.102432, 34.017071, 38.493938>,  <43.996506, 33.921711, 38.300842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.102432, 34.017071, 38.493938>,  <44.278980, 34.176003, 38.815765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.102432, 34.017071, 38.493938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090888, -0.872219, 0.480597,
		-0.892711, 0.285246, 0.348857,
		-0.441368, -0.397328, -0.804565,
		43.970020, 33.897873, 38.252567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.667576, 33.862957, 39.038090>,  <44.278980, 34.176003, 38.815765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.667576, 33.862957, 39.038090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.728062, 33.689934, 38.682556>,  <43.764355, 33.586121, 38.469234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.728062, 33.689934, 38.682556>,  <43.667576, 33.862957, 39.038090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.728062, 33.689934, 38.682556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183241, -0.895857, 0.404801,
		-0.971369, 0.101659, -0.214730,
		0.151215, -0.432558, -0.888835,
		43.773426, 33.560165, 38.415905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.145966, 33.335087, 39.036762>,  <43.667576, 33.862957, 39.038090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.145966, 33.335087, 39.036762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.398827, 33.246685, 38.739700>,  <43.550545, 33.193642, 38.561462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.398827, 33.246685, 38.739700>,  <43.145966, 33.335087, 39.036762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.398827, 33.246685, 38.739700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193378, -0.973130, 0.124990,
		-0.750323, 0.064600, -0.657907,
		0.632155, -0.221008, -0.742655,
		43.588474, 33.180382, 38.516903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.750820, 32.824909, 38.702545>,  <43.145966, 33.335087, 39.036762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.750820, 32.824909, 38.702545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.120247, 32.781525, 38.555439>,  <43.341904, 32.755493, 38.467175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.120247, 32.781525, 38.555439>,  <42.750820, 32.824909, 38.702545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.120247, 32.781525, 38.555439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145099, -0.986691, -0.073401,
		-0.354912, 0.121154, -0.927016,
		0.923571, -0.108459, -0.367768,
		43.397320, 32.748985, 38.445110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.623428, 32.339424, 38.146858>,  <42.750820, 32.824909, 38.702545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.623428, 32.339424, 38.146858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.009743, 32.327065, 38.249859>,  <43.241531, 32.319649, 38.311661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.009743, 32.327065, 38.249859>,  <42.623428, 32.339424, 38.146858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.009743, 32.327065, 38.249859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091912, -0.969215, 0.228418,
		0.242519, -0.244270, -0.938891,
		0.965783, -0.030900, 0.257504,
		43.299477, 32.317795, 38.327110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.814159, 31.758108, 37.782799>,  <42.623428, 32.339424, 38.146858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.814159, 31.758108, 37.782799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.062428, 31.814047, 38.091400>,  <43.211388, 31.847610, 38.276562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.062428, 31.814047, 38.091400>,  <42.814159, 31.758108, 37.782799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.062428, 31.814047, 38.091400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144868, -0.946570, 0.288128,
		0.770572, -0.290598, -0.567249,
		0.620670, 0.139847, 0.771499,
		43.248631, 31.856001, 38.322849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.339581, 31.221605, 37.744499>,  <42.814159, 31.758108, 37.782799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.339581, 31.221605, 37.744499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.344669, 31.361111, 38.119350>,  <43.347721, 31.444815, 38.344261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.344669, 31.361111, 38.119350>,  <43.339581, 31.221605, 37.744499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.344669, 31.361111, 38.119350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012273, -0.937183, 0.348621,
		0.999844, 0.007066, -0.016203,
		0.012722, 0.348766, 0.937124,
		43.348484, 31.465740, 38.400486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.960773, 30.885004, 38.091183>,  <43.339581, 31.221605, 37.744499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.960773, 30.885004, 38.091183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.700619, 30.986250, 38.377659>,  <43.544525, 31.046997, 38.549545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.700619, 30.986250, 38.377659>,  <43.960773, 30.885004, 38.091183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.700619, 30.986250, 38.377659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007573, -0.940641, 0.339318,
		0.759567, 0.226111, 0.609862,
		-0.650385, 0.253116, 0.716192,
		43.505505, 31.062185, 38.592518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.257442, 30.495672, 38.542423>,  <43.960773, 30.885004, 38.091183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.257442, 30.495672, 38.542423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.912468, 30.614641, 38.706245>,  <43.705482, 30.686024, 38.804539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.912468, 30.614641, 38.706245>,  <44.257442, 30.495672, 38.542423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.912468, 30.614641, 38.706245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159850, -0.927781, 0.337151,
		0.480258, 0.225304, 0.847697,
		-0.862438, 0.297424, 0.409559,
		43.653736, 30.703869, 38.829113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.282047, 30.250202, 39.156723>,  <44.257442, 30.495672, 38.542423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.282047, 30.250202, 39.156723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.889225, 30.311447, 39.112675>,  <43.653530, 30.348194, 39.086246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.889225, 30.311447, 39.112675>,  <44.282047, 30.250202, 39.156723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.889225, 30.311447, 39.112675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188041, -0.839783, 0.509318,
		-0.014496, 0.520886, 0.853503,
		-0.982054, 0.153110, -0.110122,
		43.594608, 30.357380, 39.079639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.063194, 30.085377, 39.800365>,  <44.282047, 30.250202, 39.156723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.063194, 30.085377, 39.800365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.740788, 30.048462, 39.566505>,  <43.547344, 30.026314, 39.426189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.740788, 30.048462, 39.566505>,  <44.063194, 30.085377, 39.800365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.740788, 30.048462, 39.566505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260206, -0.831952, 0.490049,
		-0.531627, 0.547119, 0.646556,
		-0.806018, -0.092286, -0.584652,
		43.498981, 30.020777, 39.391109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.503544, 29.973288, 40.289940>,  <44.063194, 30.085377, 39.800365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.503544, 29.973288, 40.289940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.371750, 29.836760, 39.937817>,  <43.292675, 29.754843, 39.726543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.371750, 29.836760, 39.937817>,  <43.503544, 29.973288, 40.289940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.371750, 29.836760, 39.937817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412688, -0.786525, 0.459420,
		-0.849192, 0.514665, 0.118291,
		-0.329486, -0.341319, -0.880307,
		43.272903, 29.734364, 39.673725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.827171, 29.803352, 40.400982>,  <43.503544, 29.973288, 40.289940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.827171, 29.803352, 40.400982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.939728, 29.584747, 40.085480>,  <43.007263, 29.453585, 39.896179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.939728, 29.584747, 40.085480>,  <42.827171, 29.803352, 40.400982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.939728, 29.584747, 40.085480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366513, -0.820866, 0.438002,
		-0.886840, 0.165841, -0.431290,
		0.281393, -0.546511, -0.788761,
		43.024147, 29.420794, 39.848850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.264496, 29.426975, 39.989868>,  <42.827171, 29.803352, 40.400982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.264496, 29.426975, 39.989868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.615383, 29.235449, 39.975830>,  <42.825916, 29.120533, 39.967407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.615383, 29.235449, 39.975830>,  <42.264496, 29.426975, 39.989868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.615383, 29.235449, 39.975830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437469, -0.827299, 0.352416,
		-0.197777, -0.293790, -0.935185,
		0.877214, -0.478814, -0.035097,
		42.878548, 29.091805, 39.965302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.085106, 28.895931, 39.622311>,  <42.264496, 29.426975, 39.989868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.085106, 28.895931, 39.622311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.408009, 28.825363, 39.847595>,  <42.601749, 28.783022, 39.982765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.408009, 28.825363, 39.847595>,  <42.085106, 28.895931, 39.622311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.408009, 28.825363, 39.847595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456306, -0.791797, 0.406008,
		0.374324, -0.584751, -0.719686,
		0.807259, -0.176418, 0.563214,
		42.650185, 28.772438, 40.016560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.270527, 28.201422, 39.504498>,  <42.085106, 28.895931, 39.622311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.270527, 28.201422, 39.504498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.372673, 28.358927, 39.857708>,  <42.433960, 28.453430, 40.069633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.372673, 28.358927, 39.857708>,  <42.270527, 28.201422, 39.504498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.372673, 28.358927, 39.857708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260268, -0.851599, 0.455016,
		0.931156, -0.346018, -0.114982,
		0.255362, 0.393765, 0.883029,
		42.449284, 28.477057, 40.122616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.836712, 27.618496, 39.669716>,  <42.270527, 28.201422, 39.504498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.836712, 27.618496, 39.669716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.692799, 27.327787, 39.435669>,  <41.606453, 27.153362, 39.295242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.692799, 27.327787, 39.435669>,  <41.836712, 27.618496, 39.669716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.692799, 27.327787, 39.435669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275699, 0.516301, -0.810817,
		0.891375, -0.453031, 0.014616,
		-0.359779, -0.726771, -0.585118,
		41.584866, 27.109756, 39.260132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.350861, 27.202059, 39.258629>,  <41.836712, 27.618496, 39.669716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.350861, 27.202059, 39.258629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.006321, 27.255543, 39.062592>,  <41.799595, 27.287632, 38.944969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.006321, 27.255543, 39.062592>,  <42.350861, 27.202059, 39.258629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.006321, 27.255543, 39.062592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482031, 0.519676, -0.705396,
		0.160374, -0.843836, -0.512075,
		-0.861352, 0.133709, -0.490098,
		41.747917, 27.295654, 38.915562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.405167, 26.905523, 38.516701>,  <42.350861, 27.202059, 39.258629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.405167, 26.905523, 38.516701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.142986, 27.198071, 38.592049>,  <41.985676, 27.373598, 38.637257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.142986, 27.198071, 38.592049>,  <42.405167, 26.905523, 38.516701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.142986, 27.198071, 38.592049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364147, 0.524554, -0.769571,
		-0.661648, -0.435825, -0.610147,
		-0.655453, 0.731368, 0.188366,
		41.946350, 27.417480, 38.648560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.902145, 27.088869, 37.937428>,  <42.405167, 26.905523, 38.516701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.902145, 27.088869, 37.937428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.987656, 27.422842, 38.140282>,  <42.038963, 27.623226, 38.261993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.987656, 27.422842, 38.140282>,  <41.902145, 27.088869, 37.937428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.987656, 27.422842, 38.140282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462668, 0.370685, -0.805314,
		-0.860370, 0.406795, -0.307051,
		0.213778, 0.834931, 0.507137,
		42.051788, 27.673321, 38.292423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.657799, 27.615063, 37.496067>,  <41.902145, 27.088869, 37.937428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.657799, 27.615063, 37.496067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.999367, 27.647230, 37.701729>,  <42.204308, 27.666531, 37.825127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.999367, 27.647230, 37.701729>,  <41.657799, 27.615063, 37.496067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.999367, 27.647230, 37.701729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487962, 0.219653, -0.844775,
		-0.180870, 0.972258, 0.148326,
		0.853920, 0.080417, 0.514154,
		42.255543, 27.671356, 37.855976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.042126, 28.274149, 37.302063>,  <41.657799, 27.615063, 37.496067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.042126, 28.274149, 37.302063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.250935, 27.946238, 37.396255>,  <42.376221, 27.749491, 37.452770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.250935, 27.946238, 37.396255>,  <42.042126, 28.274149, 37.302063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.250935, 27.946238, 37.396255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509052, 0.077928, -0.857201,
		0.684364, 0.567354, 0.457990,
		0.522027, -0.819778, 0.235482,
		42.407543, 27.700304, 37.466900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.048054, 28.991457, 37.200188>,  <42.042126, 28.274149, 37.302063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.048054, 28.991457, 37.200188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.910583, 29.055214, 36.830002>,  <41.828102, 29.093468, 36.607891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.910583, 29.055214, 36.830002>,  <42.048054, 28.991457, 37.200188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.910583, 29.055214, 36.830002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460091, 0.887690, -0.017975,
		0.818658, -0.431975, -0.378415,
		-0.343680, 0.159390, -0.925462,
		41.807480, 29.103031, 36.552364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.646706, 29.088478, 36.623867>,  <42.048054, 28.991457, 37.200188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.646706, 29.088478, 36.623867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.301594, 29.257891, 36.513424>,  <42.094528, 29.359539, 36.447159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.301594, 29.257891, 36.513424>,  <42.646706, 29.088478, 36.623867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.301594, 29.257891, 36.513424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480252, 0.857239, -0.185741,
		0.158022, -0.292854, -0.943009,
		-0.862779, 0.423531, -0.276106,
		42.042759, 29.384951, 36.430592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.668221, 29.520279, 36.050549>,  <42.646706, 29.088478, 36.623867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.668221, 29.520279, 36.050549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.341183, 29.678385, 36.218025>,  <42.144958, 29.773249, 36.318512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.341183, 29.678385, 36.218025>,  <42.668221, 29.520279, 36.050549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.341183, 29.678385, 36.218025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427535, 0.903812, -0.018374,
		-0.385678, 0.163981, -0.907944,
		-0.817598, 0.395264, 0.418689,
		42.095901, 29.796965, 36.343632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.409908, 30.035086, 35.612534>,  <42.668221, 29.520279, 36.050549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.409908, 30.035086, 35.612534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.246140, 30.150648, 35.958691>,  <42.147877, 30.219986, 36.166386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.246140, 30.150648, 35.958691>,  <42.409908, 30.035086, 35.612534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.246140, 30.150648, 35.958691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250764, 0.947640, -0.197726,
		-0.877206, 0.136056, -0.460432,
		-0.409423, 0.288907, 0.865394,
		42.123314, 30.237320, 36.218307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.040070, 30.591219, 35.452110>,  <42.409908, 30.035086, 35.612534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.040070, 30.591219, 35.452110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.146431, 30.600342, 35.837601>,  <42.210247, 30.605816, 36.068897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.146431, 30.600342, 35.837601>,  <42.040070, 30.591219, 35.452110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.146431, 30.600342, 35.837601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421579, 0.896301, -0.137532,
		-0.866929, 0.442858, 0.228714,
		0.265904, 0.022809, 0.963730,
		42.226204, 30.607185, 36.126720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.841011, 31.218317, 35.691101>,  <42.040070, 30.591219, 35.452110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.841011, 31.218317, 35.691101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.139729, 31.111212, 35.934608>,  <42.318958, 31.046949, 36.080715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.139729, 31.111212, 35.934608>,  <41.841011, 31.218317, 35.691101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.139729, 31.111212, 35.934608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422933, 0.897636, -0.124003,
		-0.513252, 0.350075, 0.783594,
		0.746793, -0.267763, 0.608772,
		42.363766, 31.030884, 36.117241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.031574, 31.884958, 36.126930>,  <41.841011, 31.218317, 35.691101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.031574, 31.884958, 36.126930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.348164, 31.640478, 36.127537>,  <42.538116, 31.493790, 36.127903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.348164, 31.640478, 36.127537>,  <42.031574, 31.884958, 36.126930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.348164, 31.640478, 36.127537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611151, 0.791439, 0.010867,
		-0.007845, -0.007672, 0.999940,
		0.791475, -0.611199, 0.001520,
		42.585606, 31.457119, 36.127995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.370335, 32.045204, 36.762287>,  <42.031574, 31.884958, 36.126930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.370335, 32.045204, 36.762287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.642681, 31.845623, 36.547825>,  <42.806091, 31.725874, 36.419147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.642681, 31.845623, 36.547825>,  <42.370335, 32.045204, 36.762287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.642681, 31.845623, 36.547825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485183, 0.855655, -0.180144,
		0.548646, -0.137477, 0.824674,
		0.680871, -0.498953, -0.536153,
		42.846943, 31.695936, 36.386978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.062080, 32.285702, 36.950867>,  <42.370335, 32.045204, 36.762287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.062080, 32.285702, 36.950867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.123512, 32.130772, 36.587242>,  <43.160374, 32.037815, 36.369068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.123512, 32.130772, 36.587242>,  <43.062080, 32.285702, 36.950867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.123512, 32.130772, 36.587242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492306, 0.827661, -0.269466,
		0.856766, -0.406152, 0.317794,
		0.153581, -0.387321, -0.909063,
		43.169586, 32.014576, 36.314522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.772617, 32.251541, 36.775204>,  <43.062080, 32.285702, 36.950867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.772617, 32.251541, 36.775204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.566483, 32.248146, 36.432426>,  <43.442802, 32.246109, 36.226761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.566483, 32.248146, 36.432426>,  <43.772617, 32.251541, 36.775204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.566483, 32.248146, 36.432426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554035, 0.759584, -0.340701,
		0.653813, -0.650354, -0.386741,
		-0.515339, -0.008487, -0.856945,
		43.411880, 32.245602, 36.175343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.276382, 32.344429, 36.272141>,  <43.772617, 32.251541, 36.775204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.276382, 32.344429, 36.272141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.937618, 32.434483, 36.079453>,  <43.734360, 32.488514, 35.963840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.937618, 32.434483, 36.079453>,  <44.276382, 32.344429, 36.272141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.937618, 32.434483, 36.079453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436060, 0.812496, -0.386913,
		0.304290, -0.537740, -0.786284,
		-0.846911, 0.225134, -0.481722,
		43.683544, 32.502022, 35.934937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.544090, 32.632374, 35.652534>,  <44.276382, 32.344429, 36.272141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.544090, 32.632374, 35.652534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.166195, 32.763504, 35.653526>,  <43.939457, 32.842182, 35.654121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.166195, 32.763504, 35.653526>,  <44.544090, 32.632374, 35.652534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.166195, 32.763504, 35.653526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305090, 0.881930, -0.359333,
		-0.119989, -0.338717, -0.933206,
		-0.944734, 0.327828, 0.002483,
		43.882774, 32.861851, 35.654270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.520416, 32.904976, 35.029198>,  <44.544090, 32.632374, 35.652534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.520416, 32.904976, 35.029198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.206188, 33.045963, 35.232628>,  <44.017651, 33.130558, 35.354687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.206188, 33.045963, 35.232628>,  <44.520416, 32.904976, 35.029198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.206188, 33.045963, 35.232628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231305, 0.929593, -0.286976,
		-0.573914, -0.107805, -0.811788,
		-0.785570, 0.352470, 0.508571,
		43.970516, 33.151703, 35.385201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.295322, 33.363026, 34.564316>,  <44.520416, 32.904976, 35.029198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.295322, 33.363026, 34.564316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.134926, 33.474854, 34.913269>,  <44.038689, 33.541950, 35.122639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.134926, 33.474854, 34.913269>,  <44.295322, 33.363026, 34.564316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.134926, 33.474854, 34.913269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117663, 0.960124, -0.253607,
		-0.908494, 0.000952, -0.417897,
		-0.400991, 0.279572, 0.872379,
		44.014629, 33.558723, 35.174984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.763115, 33.904606, 34.510891>,  <44.295322, 33.363026, 34.564316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.763115, 33.904606, 34.510891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.954052, 33.927235, 34.861649>,  <44.068615, 33.940811, 35.072105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.954052, 33.927235, 34.861649>,  <43.763115, 33.904606, 34.510891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.954052, 33.927235, 34.861649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147560, 0.978594, -0.143456,
		-0.866241, 0.197872, 0.458774,
		0.477340, 0.056571, 0.876896,
		44.097256, 33.944206, 35.124718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.721489, 34.509922, 34.605167>,  <43.763115, 33.904606, 34.510891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.721489, 34.509922, 34.605167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.981621, 34.450680, 34.903198>,  <44.137699, 34.415134, 35.082016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.981621, 34.450680, 34.903198>,  <43.721489, 34.509922, 34.605167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.981621, 34.450680, 34.903198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232709, 0.972497, -0.009803,
		-0.723134, 0.179761, 0.666906,
		0.650327, -0.148106, 0.745077,
		44.176720, 34.406246, 35.126720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.748856, 35.176479, 34.970890>,  <43.721489, 34.509922, 34.605167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.748856, 35.176479, 34.970890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.084991, 35.008480, 35.107964>,  <44.286674, 34.907681, 35.190208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.084991, 35.008480, 35.107964>,  <43.748856, 35.176479, 34.970890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.084991, 35.008480, 35.107964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369664, 0.906405, 0.204396,
		-0.396454, -0.045085, 0.916947,
		0.840340, -0.419996, 0.342682,
		44.337093, 34.882481, 35.210770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.910381, 35.590405, 35.529472>,  <43.748856, 35.176479, 34.970890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.910381, 35.590405, 35.529472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.247742, 35.403587, 35.423225>,  <44.450157, 35.291496, 35.359478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.247742, 35.403587, 35.423225>,  <43.910381, 35.590405, 35.529472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.247742, 35.403587, 35.423225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500981, 0.862232, 0.074658,
		0.194157, -0.196036, 0.961183,
		0.843399, -0.467039, -0.265618,
		44.500763, 35.263477, 35.343540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.414894, 35.673637, 36.067776>,  <43.910381, 35.590405, 35.529472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.414894, 35.673637, 36.067776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.636616, 35.576603, 35.749306>,  <44.769650, 35.518383, 35.558224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.636616, 35.576603, 35.749306>,  <44.414894, 35.673637, 36.067776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.636616, 35.576603, 35.749306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559254, 0.817017, 0.140422,
		0.616426, -0.523102, 0.588544,
		0.554305, -0.242586, -0.796177,
		44.802906, 35.503826, 35.510452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.114098, 35.663773, 36.317524>,  <44.414894, 35.673637, 36.067776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.114098, 35.663773, 36.317524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.119621, 35.711098, 35.920372>,  <45.122936, 35.739491, 35.682079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.119621, 35.711098, 35.920372>,  <45.114098, 35.663773, 36.317524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.119621, 35.711098, 35.920372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466816, 0.877356, 0.111037,
		0.884246, -0.465026, -0.043114,
		0.013809, 0.118310, -0.992881,
		45.123764, 35.746590, 35.622509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.841076, 35.773045, 36.123600>,  <45.114098, 35.663773, 36.317524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.841076, 35.773045, 36.123600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.600380, 35.927647, 35.844021>,  <45.455963, 36.020409, 35.676273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.600380, 35.927647, 35.844021>,  <45.841076, 35.773045, 36.123600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.600380, 35.927647, 35.844021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529880, 0.847977, 0.012727,
		0.597611, -0.362700, -0.715059,
		-0.601737, 0.386501, -0.698948,
		45.419857, 36.043598, 35.634335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.182781, 35.959785, 35.567638>,  <45.841076, 35.773045, 36.123600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.182781, 35.959785, 35.567638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.850845, 36.180878, 35.537041>,  <45.651684, 36.313534, 35.518681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.850845, 36.180878, 35.537041>,  <46.182781, 35.959785, 35.567638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.850845, 36.180878, 35.537041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550602, 0.833356, 0.048541,
		0.090578, -0.001838, -0.995888,
		-0.829839, 0.552734, -0.076496,
		45.601894, 36.346699, 35.514091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.275806, 36.278179, 35.046581>,  <46.182781, 35.959785, 35.567638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.275806, 36.278179, 35.046581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.012482, 36.500683, 35.249439>,  <45.854488, 36.634186, 35.371155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.012482, 36.500683, 35.249439>,  <46.275806, 36.278179, 35.046581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.012482, 36.500683, 35.249439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.694964, 0.707999, 0.125547,
		-0.289221, 0.435097, -0.852668,
		-0.658313, 0.556263, 0.507145,
		45.814987, 36.667561, 35.401581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.903671, 35.868866, 35.223274>,  <46.275806, 36.278179, 35.046581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.903671, 35.868866, 35.223274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.272385, 35.862656, 35.378231>,  <47.493614, 35.858929, 35.471203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.272385, 35.862656, 35.378231>,  <46.903671, 35.868866, 35.223274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.272385, 35.862656, 35.378231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314889, 0.612908, -0.724699,
		-0.226180, 0.790002, 0.569860,
		0.921785, -0.015530, 0.387390,
		47.548920, 35.857998, 35.494450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.238815, 36.508881, 35.092113>,  <46.903671, 35.868866, 35.223274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.238815, 36.508881, 35.092113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.567558, 36.281120, 35.099388>,  <47.764805, 36.144463, 35.103752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.567558, 36.281120, 35.099388>,  <47.238815, 36.508881, 35.092113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.567558, 36.281120, 35.099388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348450, 0.477178, -0.806774,
		0.450704, 0.669388, 0.590580,
		0.821857, -0.569404, 0.018182,
		47.814114, 36.110298, 35.104843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.477966, 35.894955, 34.777859>,  <47.238815, 36.508881, 35.092113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.477966, 35.894955, 34.777859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.771801, 35.698502, 34.965122>,  <47.948101, 35.580631, 35.077480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.771801, 35.698502, 34.965122>,  <47.477966, 35.894955, 34.777859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.771801, 35.698502, 34.965122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.603603, -0.788160, 0.120277,
		0.309912, -0.370936, -0.875421,
		0.734587, -0.491131, 0.468158,
		47.992176, 35.551163, 35.105568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.569630, 35.160564, 34.444145>,  <47.477966, 35.894955, 34.777859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.569630, 35.160564, 34.444145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.731968, 35.137825, 34.809013>,  <47.829372, 35.124180, 35.027935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.731968, 35.137825, 34.809013>,  <47.569630, 35.160564, 34.444145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.731968, 35.137825, 34.809013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309548, -0.947624, 0.078665,
		0.859923, -0.314287, -0.402189,
		0.405848, -0.056851, 0.912171,
		47.853722, 35.120770, 35.082664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<36.149815, 35.449745, 45.653160> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.834206, 35.213146, 45.719578>,  <35.644840, 35.071186, 45.759426>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.834206, 35.213146, 45.719578>,  <36.149815, 35.449745, 45.653160>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.834206, 35.213146, 45.719578> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306290, 0.144444, -0.940916,
		0.532567, -0.793262, -0.295141,
		-0.789024, -0.591500, 0.166042,
		35.597500, 35.035698, 45.769390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.158550, 34.991150, 45.108994>,  <36.149815, 35.449745, 45.653160>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.158550, 34.991150, 45.108994> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.785416, 34.946228, 45.245930>,  <35.561535, 34.919273, 45.328091>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.785416, 34.946228, 45.245930>,  <36.158550, 34.991150, 45.108994>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.785416, 34.946228, 45.245930> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356564, 0.151479, -0.921909,
		0.051673, -0.982060, -0.181348,
		-0.932841, -0.112300, 0.342340,
		35.505562, 34.912537, 45.348633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.863705, 34.516792, 44.609932>,  <36.158550, 34.991150, 45.108994>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.863705, 34.516792, 44.609932> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.570847, 34.708340, 44.803696>,  <35.395134, 34.823269, 44.919956>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.570847, 34.708340, 44.803696>,  <35.863705, 34.516792, 44.609932>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.570847, 34.708340, 44.803696> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402029, 0.270293, -0.874822,
		-0.549856, -0.835242, -0.005374,
		-0.732141, 0.478866, 0.484414,
		35.351204, 34.852001, 44.949020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.203907, 34.253807, 44.417759>,  <35.863705, 34.516792, 44.609932>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.203907, 34.253807, 44.417759> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.159077, 34.637051, 44.523190>,  <35.132179, 34.866997, 44.586449>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.159077, 34.637051, 44.523190>,  <35.203907, 34.253807, 44.417759>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.159077, 34.637051, 44.523190> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431089, 0.192110, -0.881621,
		-0.895322, -0.212431, 0.391499,
		-0.112073, 0.958106, 0.263578,
		35.125454, 34.924480, 44.602264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.425869, 34.418922, 44.185650>,  <35.203907, 34.253807, 44.417759>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.425869, 34.418922, 44.185650> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.625282, 34.763653, 44.223007>,  <34.744930, 34.970490, 44.245422>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.625282, 34.763653, 44.223007>,  <34.425869, 34.418922, 44.185650>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.625282, 34.763653, 44.223007> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479541, 0.363926, -0.798497,
		-0.722155, 0.353289, 0.594710,
		0.498530, 0.861827, 0.093394,
		34.774841, 35.022202, 44.251026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.948971, 34.909821, 44.060364>,  <34.425869, 34.418922, 44.185650>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.948971, 34.909821, 44.060364> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.283142, 35.128391, 44.036762>,  <34.483643, 35.259533, 44.022602>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.283142, 35.128391, 44.036762>,  <33.948971, 34.909821, 44.060364>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.283142, 35.128391, 44.036762> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250033, 0.282268, -0.926179,
		-0.489439, 0.788504, 0.372439,
		0.835424, 0.546430, -0.058999,
		34.533768, 35.292320, 44.019062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.729279, 35.492516, 43.633759>,  <33.948971, 34.909821, 44.060364>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.729279, 35.492516, 43.633759> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.128380, 35.489441, 43.607128>,  <34.367840, 35.487595, 43.591152>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.128380, 35.489441, 43.607128>,  <33.729279, 35.492516, 43.633759>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.128380, 35.489441, 43.607128> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064488, 0.160049, -0.985000,
		0.018225, 0.987079, 0.159194,
		0.997752, -0.007686, -0.066571,
		34.427704, 35.487137, 43.587158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.917400, 36.141193, 43.277370>,  <33.729279, 35.492516, 43.633759>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.917400, 36.141193, 43.277370> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.205158, 35.865547, 43.242538>,  <34.377811, 35.700157, 43.221642>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.205158, 35.865547, 43.242538>,  <33.917400, 36.141193, 43.277370>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.205158, 35.865547, 43.242538> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041237, 0.167516, -0.985007,
		0.693375, 0.705019, 0.148928,
		0.719396, -0.689120, -0.087078,
		34.420979, 35.658810, 43.216415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.521519, 36.491096, 42.904495>,  <33.917400, 36.141193, 43.277370>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.521519, 36.491096, 42.904495> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.590710, 36.100758, 42.851135>,  <34.632225, 35.866554, 42.819118>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.590710, 36.100758, 42.851135>,  <34.521519, 36.491096, 42.904495>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.590710, 36.100758, 42.851135> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289058, 0.179774, -0.940280,
		0.941555, 0.124083, 0.313173,
		0.172973, -0.975851, -0.133401,
		34.642601, 35.808002, 42.811115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.104744, 36.531654, 42.582375>,  <34.521519, 36.491096, 42.904495>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.104744, 36.531654, 42.582375> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.963017, 36.169308, 42.489544>,  <34.877979, 35.951900, 42.433846>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.963017, 36.169308, 42.489544>,  <35.104744, 36.531654, 42.582375>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.963017, 36.169308, 42.489544> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321339, 0.115121, -0.939941,
		0.878178, -0.407618, 0.250300,
		-0.354322, -0.905867, -0.232081,
		34.856720, 35.897549, 42.419918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.641548, 36.239693, 42.260311>,  <35.104744, 36.531654, 42.582375>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.641548, 36.239693, 42.260311> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.326408, 36.031002, 42.129414>,  <35.137325, 35.905788, 42.050877>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.326408, 36.031002, 42.129414>,  <35.641548, 36.239693, 42.260311>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.326408, 36.031002, 42.129414> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242004, 0.226348, -0.943504,
		0.566326, -0.822535, -0.052067,
		-0.787851, -0.521730, -0.327243,
		35.090054, 35.874485, 42.031242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.921970, 35.815945, 41.766750>,  <35.641548, 36.239693, 42.260311>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.921970, 35.815945, 41.766750> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.534233, 35.764751, 41.682850>,  <35.301590, 35.734035, 41.632511>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.534233, 35.764751, 41.682850>,  <35.921970, 35.815945, 41.766750>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.534233, 35.764751, 41.682850> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206816, 0.035927, -0.977720,
		0.132668, -0.991125, -0.008356,
		-0.969343, -0.127984, -0.209747,
		35.243431, 35.726357, 41.619926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.901897, 35.352432, 41.335991>,  <35.921970, 35.815945, 41.766750>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.901897, 35.352432, 41.335991> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.580643, 35.588482, 41.303158>,  <35.387890, 35.730110, 41.283459>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.580643, 35.588482, 41.303158>,  <35.901897, 35.352432, 41.335991>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.580643, 35.588482, 41.303158> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194039, 0.128815, -0.972500,
		-0.563319, -0.796972, -0.217962,
		-0.803132, 0.590120, -0.082080,
		35.339703, 35.765518, 41.278534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.632427, 35.138458, 40.680283>,  <35.901897, 35.352432, 41.335991>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.632427, 35.138458, 40.680283> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.425068, 35.474106, 40.746185>,  <35.300652, 35.675495, 40.785728>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.425068, 35.474106, 40.746185>,  <35.632427, 35.138458, 40.680283>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.425068, 35.474106, 40.746185> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110449, 0.125353, -0.985945,
		-0.847979, -0.529306, 0.027698,
		-0.518395, 0.839120, 0.164759,
		35.269550, 35.725842, 40.795612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.014107, 35.168064, 40.245884>,  <35.632427, 35.138458, 40.680283>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.014107, 35.168064, 40.245884> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.087513, 35.553326, 40.324535>,  <35.131557, 35.784481, 40.371727>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.087513, 35.553326, 40.324535>,  <35.014107, 35.168064, 40.245884>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.087513, 35.553326, 40.324535> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088699, 0.182981, -0.979107,
		-0.979007, 0.197122, -0.051851,
		0.183516, 0.963152, 0.196624,
		35.142567, 35.842270, 40.383522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.578709, 35.492382, 39.783421>,  <35.014107, 35.168064, 40.245884>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.578709, 35.492382, 39.783421> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.848415, 35.767090, 39.892021>,  <35.010239, 35.931915, 39.957180>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.848415, 35.767090, 39.892021>,  <34.578709, 35.492382, 39.783421>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.848415, 35.767090, 39.892021> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085897, 0.292213, -0.952488,
		-0.733478, 0.665550, 0.138038,
		0.674264, 0.686772, 0.271501,
		35.050694, 35.973122, 39.973473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.454643, 35.958488, 39.425419>,  <34.578709, 35.492382, 39.783421>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.454643, 35.958488, 39.425419> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.819637, 36.074757, 39.540569>,  <35.038635, 36.144516, 39.609661>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.819637, 36.074757, 39.540569>,  <34.454643, 35.958488, 39.425419>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.819637, 36.074757, 39.540569> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184764, 0.335024, -0.923916,
		-0.365001, 0.896253, 0.252000,
		0.912489, 0.290669, 0.287880,
		35.093384, 36.161957, 39.626934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.634682, 36.465874, 38.922447>,  <34.454643, 35.958488, 39.425419>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.634682, 36.465874, 38.922447> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.991032, 36.403122, 39.092968>,  <35.204842, 36.365471, 39.195282>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.991032, 36.403122, 39.092968>,  <34.634682, 36.465874, 38.922447>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.991032, 36.403122, 39.092968> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450513, 0.425362, -0.784924,
		-0.058196, 0.891323, 0.449619,
		0.890871, -0.156880, 0.426306,
		35.258293, 36.356056, 39.220860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.988953, 37.126949, 38.998245>,  <34.634682, 36.465874, 38.922447>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.988953, 37.126949, 38.998245> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.267044, 36.839550, 38.990192>,  <35.433899, 36.667110, 38.985359>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.267044, 36.839550, 38.990192>,  <34.988953, 37.126949, 38.998245>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.267044, 36.839550, 38.990192> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495140, 0.499035, -0.711196,
		0.521044, 0.484477, 0.702705,
		0.695233, -0.718503, -0.020135,
		35.475613, 36.624001, 38.984154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.667862, 37.452042, 39.017342>,  <34.988953, 37.126949, 38.998245>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.667862, 37.452042, 39.017342> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.708702, 37.097660, 38.836380>,  <35.733204, 36.885033, 38.727802>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.708702, 37.097660, 38.836380>,  <35.667862, 37.452042, 39.017342>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.708702, 37.097660, 38.836380> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.691864, 0.390012, -0.607630,
		0.714773, -0.250964, 0.652776,
		0.102097, -0.885950, -0.452403,
		35.739330, 36.831875, 38.700661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.407551, 37.456329, 38.726547>,  <35.667862, 37.452042, 39.017342>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.407551, 37.456329, 38.726547> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.245483, 37.131840, 38.557907>,  <36.148243, 36.937145, 38.456722>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.245483, 37.131840, 38.557907>,  <36.407551, 37.456329, 38.726547>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.245483, 37.131840, 38.557907> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566577, 0.139119, -0.812180,
		0.717516, -0.567938, 0.403257,
		-0.405168, -0.811229, -0.421601,
		36.123932, 36.888470, 38.431427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.977303, 37.067722, 38.496502>,  <36.407551, 37.456329, 38.726547>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.977303, 37.067722, 38.496502> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.673027, 36.915802, 38.285938>,  <36.490463, 36.824650, 38.159599>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.673027, 36.915802, 38.285938>,  <36.977303, 37.067722, 38.496502>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.673027, 36.915802, 38.285938> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540958, 0.077310, -0.837489,
		0.358776, -0.921832, 0.146647,
		-0.760687, -0.379801, -0.526409,
		36.444820, 36.801861, 38.128017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.300812, 37.129715, 37.892231>,  <36.977303, 37.067722, 38.496502>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.300812, 37.129715, 37.892231> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.533337, 37.426041, 37.757607>,  <37.672852, 37.603836, 37.676830>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.533337, 37.426041, 37.757607>,  <37.300812, 37.129715, 37.892231>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.533337, 37.426041, 37.757607> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392329, 0.107183, 0.913559,
		0.712850, -0.663104, -0.228336,
		0.581311, 0.740813, -0.336560,
		37.707729, 37.648285, 37.656639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.966675, 37.070763, 38.270016>,  <37.300812, 37.129715, 37.892231>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.966675, 37.070763, 38.270016> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.956539, 37.444328, 38.127377>,  <37.950459, 37.668468, 38.041794>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.956539, 37.444328, 38.127377>,  <37.966675, 37.070763, 38.270016>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.956539, 37.444328, 38.127377> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406822, 0.335473, 0.849679,
		0.913156, -0.123540, -0.388438,
		-0.025341, 0.933914, -0.356598,
		37.948936, 37.724503, 38.020397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.645054, 37.242901, 38.431953>,  <37.966675, 37.070763, 38.270016>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.645054, 37.242901, 38.431953> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.429703, 37.569389, 38.348114>,  <38.300491, 37.765282, 38.297810>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.429703, 37.569389, 38.348114>,  <38.645054, 37.242901, 38.431953>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.429703, 37.569389, 38.348114> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464010, 0.494745, 0.734794,
		0.703453, 0.298341, -0.645094,
		-0.538376, 0.816223, -0.209597,
		38.268188, 37.814255, 38.285236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.094494, 37.825733, 38.699871>,  <38.645054, 37.242901, 38.431953>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.094494, 37.825733, 38.699871> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.718010, 37.959057, 38.677856>,  <38.492119, 38.039051, 38.664650>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.718010, 37.959057, 38.677856>,  <39.094494, 37.825733, 38.699871>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.718010, 37.959057, 38.677856> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084947, 0.391187, 0.916382,
		0.326964, 0.857834, -0.396503,
		-0.941211, 0.333306, -0.055033,
		38.435646, 38.059048, 38.661346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.063858, 38.316929, 39.207413>,  <39.094494, 37.825733, 38.699871>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.063858, 38.316929, 39.207413> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.675175, 38.254318, 39.136673>,  <38.441963, 38.216751, 39.094231>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.675175, 38.254318, 39.136673>,  <39.063858, 38.316929, 39.207413>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.675175, 38.254318, 39.136673> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216979, 0.296008, 0.930215,
		-0.093251, 0.942274, -0.321597,
		-0.971712, -0.156523, -0.176851,
		38.383659, 38.207363, 39.083618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.739426, 38.805756, 39.585083>,  <39.063858, 38.316929, 39.207413>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.739426, 38.805756, 39.585083> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.407875, 38.589912, 39.526039>,  <38.208942, 38.460407, 39.490612>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.407875, 38.589912, 39.526039>,  <38.739426, 38.805756, 39.585083>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.407875, 38.589912, 39.526039> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238712, 0.102529, 0.965663,
		-0.505941, 0.835653, -0.213794,
		-0.828879, -0.539603, -0.147607,
		38.159210, 38.428032, 39.481758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.084293, 39.132378, 39.942932>,  <38.739426, 38.805756, 39.585083>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.084293, 39.132378, 39.942932> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.047565, 38.734276, 39.929993>,  <38.025528, 38.495415, 39.922230>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.047565, 38.734276, 39.929993>,  <38.084293, 39.132378, 39.942932>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.047565, 38.734276, 39.929993> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300875, -0.003239, 0.953658,
		-0.949233, 0.097296, -0.299148,
		-0.091818, -0.995250, -0.032349,
		38.020020, 38.435699, 39.920288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.566235, 38.987217, 40.500797>,  <38.084293, 39.132378, 39.942932>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.566235, 38.987217, 40.500797> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.717236, 38.624813, 40.424229>,  <37.807835, 38.407372, 40.378288>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.717236, 38.624813, 40.424229>,  <37.566235, 38.987217, 40.500797>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.717236, 38.624813, 40.424229> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077633, -0.236956, 0.968414,
		-0.922748, -0.350719, -0.159788,
		0.377503, -0.906007, -0.191423,
		37.830486, 38.353012, 40.366802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.168182, 38.409279, 40.882946>,  <37.566235, 38.987217, 40.500797>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.168182, 38.409279, 40.882946> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.525536, 38.242889, 40.815022>,  <37.739948, 38.143055, 40.774265>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.525536, 38.242889, 40.815022>,  <37.168182, 38.409279, 40.882946>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.525536, 38.242889, 40.815022> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049225, -0.466297, 0.883258,
		-0.446586, -0.780731, -0.437059,
		0.893386, -0.415965, -0.169810,
		37.793549, 38.118095, 40.764076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.140072, 37.825111, 41.301102>,  <37.168182, 38.409279, 40.882946>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.140072, 37.825111, 41.301102> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.524796, 37.825771, 41.191616>,  <37.755630, 37.826168, 41.125923>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.524796, 37.825771, 41.191616>,  <37.140072, 37.825111, 41.301102>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.524796, 37.825771, 41.191616> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256974, -0.349864, 0.900866,
		-0.094275, -0.936799, -0.336927,
		0.961809, 0.001653, -0.273717,
		37.813339, 37.826267, 41.109501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.403557, 37.132950, 41.435093>,  <37.140072, 37.825111, 41.301102>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.403557, 37.132950, 41.435093> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.724907, 37.370491, 41.417545>,  <37.917717, 37.513016, 41.407017>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.724907, 37.370491, 41.417545>,  <37.403557, 37.132950, 41.435093>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.724907, 37.370491, 41.417545> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290416, -0.326436, 0.899499,
		0.519847, -0.735379, -0.434715,
		0.803379, 0.593850, -0.043869,
		37.965919, 37.548645, 41.404385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.001656, 36.701477, 41.483433>,  <37.403557, 37.132950, 41.435093>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.001656, 36.701477, 41.483433> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.061703, 37.074959, 41.613457>,  <38.097733, 37.299049, 41.691471>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.061703, 37.074959, 41.613457>,  <38.001656, 36.701477, 41.483433>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.061703, 37.074959, 41.613457> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235740, -0.353105, 0.905397,
		0.960151, -0.059291, -0.273120,
		0.150121, 0.933703, 0.325057,
		38.106739, 37.355068, 41.710972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.652184, 36.731895, 41.798866>,  <38.001656, 36.701477, 41.483433>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.652184, 36.731895, 41.798866> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.424095, 37.021072, 41.954922>,  <38.287243, 37.194576, 42.048553>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.424095, 37.021072, 41.954922>,  <38.652184, 36.731895, 41.798866>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.424095, 37.021072, 41.954922> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300451, -0.258476, 0.918106,
		0.764575, 0.640742, -0.069818,
		-0.570223, 0.722938, 0.390136,
		38.253029, 37.237953, 42.071964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.020527, 36.944523, 42.420635>,  <38.652184, 36.731895, 41.798866>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.020527, 36.944523, 42.420635> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.656425, 37.098324, 42.482075>,  <38.437965, 37.190605, 42.518940>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.656425, 37.098324, 42.482075>,  <39.020527, 36.944523, 42.420635>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.656425, 37.098324, 42.482075> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161330, -0.012279, 0.986824,
		0.381320, 0.923043, -0.050855,
		-0.910257, 0.384500, 0.153597,
		38.383347, 37.213673, 42.528152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.150845, 37.322197, 42.977985>,  <39.020527, 36.944523, 42.420635>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.150845, 37.322197, 42.977985> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.752235, 37.349052, 42.958260>,  <38.513069, 37.365166, 42.946426>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.752235, 37.349052, 42.958260>,  <39.150845, 37.322197, 42.977985>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.752235, 37.349052, 42.958260> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040244, 0.130287, 0.990659,
		0.072933, 0.989201, -0.127133,
		-0.996525, 0.067136, -0.049311,
		38.453278, 37.369194, 42.943466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.924725, 37.822483, 43.440853>,  <39.150845, 37.322197, 42.977985>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.924725, 37.822483, 43.440853> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.602318, 37.592506, 43.384602>,  <38.408875, 37.454521, 43.350849>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.602318, 37.592506, 43.384602>,  <38.924725, 37.822483, 43.440853>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.602318, 37.592506, 43.384602> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136169, -0.051098, 0.989367,
		-0.576015, 0.816597, -0.037103,
		-0.806018, -0.574943, -0.140628,
		38.360512, 37.420025, 43.342415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.392258, 37.956490, 43.965019>,  <38.924725, 37.822483, 43.440853>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.392258, 37.956490, 43.965019> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.271366, 37.589520, 43.861488>,  <38.198830, 37.369339, 43.799370>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.271366, 37.589520, 43.861488>,  <38.392258, 37.956490, 43.965019>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.271366, 37.589520, 43.861488> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321517, -0.157501, 0.933713,
		-0.897375, 0.365415, -0.247365,
		-0.302232, -0.917423, -0.258825,
		38.180695, 37.314293, 43.783840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.781040, 37.922470, 44.270584>,  <38.392258, 37.956490, 43.965019>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.781040, 37.922470, 44.270584> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.905922, 37.546555, 44.214973>,  <37.980850, 37.321007, 44.181606>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.905922, 37.546555, 44.214973>,  <37.781040, 37.922470, 44.270584>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.905922, 37.546555, 44.214973> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297354, -0.235659, 0.925227,
		-0.902282, -0.247514, -0.353022,
		0.312200, -0.939788, -0.139031,
		37.999580, 37.264618, 44.173264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<37.252472, 37.498920, 44.498489> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.569153, 37.254562, 44.499832>,  <37.759163, 37.107948, 44.500637>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.569153, 37.254562, 44.499832>,  <37.252472, 37.498920, 44.498489>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.569153, 37.254562, 44.499832> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233502, -0.297520, 0.925721,
		-0.564517, -0.733683, -0.378193,
		0.791705, -0.610894, 0.003362,
		37.806664, 37.071293, 44.500839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.025547, 36.848824, 44.881565>,  <37.252472, 37.498920, 44.498489>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.025547, 36.848824, 44.881565> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.425423, 36.839046, 44.883617>,  <37.665348, 36.833179, 44.884850>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.425423, 36.839046, 44.883617>,  <37.025547, 36.848824, 44.881565>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.425423, 36.839046, 44.883617> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015498, -0.445808, 0.894995,
		-0.019589, -0.894795, -0.446048,
		0.999688, -0.024444, 0.005134,
		37.725330, 36.831715, 44.885159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.323692, 36.086613, 44.875652>,  <37.025547, 36.848824, 44.881565>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.323692, 36.086613, 44.875652> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.587818, 36.330193, 45.051456>,  <37.746292, 36.476341, 45.156940>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.587818, 36.330193, 45.051456>,  <37.323692, 36.086613, 44.875652>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.587818, 36.330193, 45.051456> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155964, -0.461286, 0.873436,
		0.734619, -0.645287, -0.209618,
		0.660311, 0.608949, 0.439512,
		37.785912, 36.512878, 45.183311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.563297, 35.615318, 45.456093>,  <37.323692, 36.086613, 44.875652>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.563297, 35.615318, 45.456093> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.735004, 35.964088, 45.550304>,  <37.838028, 36.173351, 45.606831>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.735004, 35.964088, 45.550304>,  <37.563297, 35.615318, 45.456093>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.735004, 35.964088, 45.550304> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072833, -0.293350, 0.953227,
		0.900235, -0.392037, -0.189431,
		0.429270, 0.871925, 0.235531,
		37.863785, 36.225666, 45.620964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.174717, 35.549438, 45.827927>,  <37.563297, 35.615318, 45.456093>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.174717, 35.549438, 45.827927> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.030666, 35.906158, 45.937473>,  <37.944237, 36.120190, 46.003201>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.030666, 35.906158, 45.937473>,  <38.174717, 35.549438, 45.827927>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.030666, 35.906158, 45.937473> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005958, -0.295758, 0.955244,
		0.932885, 0.342376, 0.111823,
		-0.360125, 0.891799, 0.273868,
		37.922630, 36.173698, 46.019634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.574436, 35.673607, 46.362423>,  <38.174717, 35.549438, 45.827927>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.574436, 35.673607, 46.362423> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.260761, 35.919933, 46.392948>,  <38.072556, 36.067730, 46.411263>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.260761, 35.919933, 46.392948>,  <38.574436, 35.673607, 46.362423>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.260761, 35.919933, 46.392948> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144594, -0.300934, 0.942620,
		0.603447, 0.728153, 0.325031,
		-0.784184, 0.615818, 0.076311,
		38.025505, 36.104679, 46.415840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.714596, 36.086102, 46.867786>,  <38.574436, 35.673607, 46.362423>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.714596, 36.086102, 46.867786> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.318394, 36.136757, 46.846371>,  <38.080673, 36.167149, 46.833523>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.318394, 36.136757, 46.846371>,  <38.714596, 36.086102, 46.867786>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.318394, 36.136757, 46.846371> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090088, -0.303646, 0.948516,
		0.103861, 0.944332, 0.312171,
		-0.990503, 0.126636, -0.053536,
		38.021244, 36.174747, 46.830311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.567513, 36.555939, 47.443703>,  <38.714596, 36.086102, 46.867786>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.567513, 36.555939, 47.443703> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.235386, 36.356426, 47.344273>,  <38.036110, 36.236717, 47.284615>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.235386, 36.356426, 47.344273>,  <38.567513, 36.555939, 47.443703>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.235386, 36.356426, 47.344273> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150276, -0.229127, 0.961727,
		-0.536650, 0.835892, 0.115292,
		-0.830316, -0.498784, -0.248576,
		37.986290, 36.206791, 47.269699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.124161, 36.816593, 47.884750>,  <38.567513, 36.555939, 47.443703>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.124161, 36.816593, 47.884750> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.964222, 36.465675, 47.778564>,  <37.868259, 36.255123, 47.714855>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.964222, 36.465675, 47.778564>,  <38.124161, 36.816593, 47.884750>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.964222, 36.465675, 47.778564> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048461, -0.268982, 0.961925,
		-0.915299, 0.397490, 0.065037,
		-0.399849, -0.877297, -0.265462,
		37.844269, 36.202488, 47.698925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.492069, 36.797482, 48.184750>,  <38.124161, 36.816593, 47.884750>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.492069, 36.797482, 48.184750> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.594788, 36.415108, 48.127823>,  <37.656418, 36.185684, 48.093666>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.594788, 36.415108, 48.127823>,  <37.492069, 36.797482, 48.184750>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.594788, 36.415108, 48.127823> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159279, -0.187098, 0.969342,
		-0.953250, -0.226254, -0.200306,
		0.256795, -0.955930, -0.142314,
		37.671825, 36.128330, 48.085129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.136875, 36.452946, 48.679985>,  <37.492069, 36.797482, 48.184750>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.136875, 36.452946, 48.679985> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.401993, 36.171455, 48.577637>,  <37.561062, 36.002560, 48.516228>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.401993, 36.171455, 48.577637>,  <37.136875, 36.452946, 48.679985>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.401993, 36.171455, 48.577637> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021138, -0.359161, 0.933036,
		-0.748502, -0.613004, -0.252926,
		0.662796, -0.703726, -0.255875,
		37.600830, 35.960339, 48.500874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.946129, 35.856136, 49.041248>,  <37.136875, 36.452946, 48.679985>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.946129, 35.856136, 49.041248> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.330860, 35.792027, 48.952522>,  <37.561699, 35.753563, 48.899284>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.330860, 35.792027, 48.952522>,  <36.946129, 35.856136, 49.041248>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.330860, 35.792027, 48.952522> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162890, -0.316039, 0.934658,
		-0.219902, -0.935111, -0.277868,
		0.961826, -0.160271, -0.221818,
		37.619408, 35.743946, 48.885979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.042126, 35.145920, 49.282024>,  <36.946129, 35.856136, 49.041248>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.042126, 35.145920, 49.282024> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.390182, 35.337887, 49.237263>,  <37.599018, 35.453068, 49.210403>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.390182, 35.337887, 49.237263>,  <37.042126, 35.145920, 49.282024>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.390182, 35.337887, 49.237263> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353149, -0.448889, 0.820844,
		0.343706, -0.753773, -0.560082,
		0.870145, 0.479922, -0.111908,
		37.651226, 35.481865, 49.203690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.486732, 34.619549, 49.466114>,  <37.042126, 35.145920, 49.282024>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.486732, 34.619549, 49.466114> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.683014, 34.966900, 49.494762>,  <37.800781, 35.175312, 49.511951>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.683014, 34.966900, 49.494762>,  <37.486732, 34.619549, 49.466114>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.683014, 34.966900, 49.494762> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445491, -0.320681, 0.835884,
		0.748833, -0.378260, -0.544213,
		0.490700, 0.868380, 0.071625,
		37.830223, 35.227413, 49.516251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.242367, 34.444511, 49.475166>,  <37.486732, 34.619549, 49.466114>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.242367, 34.444511, 49.475166> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.166145, 34.794918, 49.652386>,  <38.120415, 35.005161, 49.758717>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.166145, 34.794918, 49.652386>,  <38.242367, 34.444511, 49.475166>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.166145, 34.794918, 49.652386> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417303, -0.336228, 0.844280,
		0.888566, 0.345762, -0.301495,
		-0.190550, 0.876013, 0.443048,
		38.108982, 35.057720, 49.785301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.903069, 34.529301, 49.781387>,  <38.242367, 34.444511, 49.475166>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.903069, 34.529301, 49.781387> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.643967, 34.774418, 49.962452>,  <38.488506, 34.921486, 50.071091>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.643967, 34.774418, 49.962452>,  <38.903069, 34.529301, 49.781387>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.643967, 34.774418, 49.962452> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426122, -0.201111, 0.882029,
		0.631533, 0.764227, -0.130852,
		-0.647755, 0.612789, 0.452662,
		38.449642, 34.958256, 50.098251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.321716, 34.842712, 50.247734>,  <38.903069, 34.529301, 49.781387>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.321716, 34.842712, 50.247734> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.947666, 34.881962, 50.383915>,  <38.723236, 34.905514, 50.465622>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.947666, 34.881962, 50.383915>,  <39.321716, 34.842712, 50.247734>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.947666, 34.881962, 50.383915> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327407, -0.127958, 0.936179,
		0.135427, 0.986913, 0.087531,
		-0.935128, 0.098126, 0.340452,
		38.667130, 34.911400, 50.486050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.448288, 35.052284, 50.918480>,  <39.321716, 34.842712, 50.247734>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.448288, 35.052284, 50.918480> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.068634, 34.932598, 50.957706>,  <38.840843, 34.860786, 50.981243>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.068634, 34.932598, 50.957706>,  <39.448288, 35.052284, 50.918480>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.068634, 34.932598, 50.957706> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190099, -0.296233, 0.936007,
		-0.251014, 0.907038, 0.338045,
		-0.949134, -0.299212, 0.098068,
		38.783894, 34.842834, 50.987125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.285480, 35.302765, 51.557678>,  <39.448288, 35.052284, 50.918480>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.285480, 35.302765, 51.557678> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.051010, 34.989075, 51.476307>,  <38.910328, 34.800861, 51.427483>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.051010, 34.989075, 51.476307>,  <39.285480, 35.302765, 51.557678>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.051010, 34.989075, 51.476307> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019273, -0.264516, 0.964189,
		-0.809952, 0.561267, 0.170168,
		-0.586179, -0.784226, -0.203428,
		38.875156, 34.753807, 51.415279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.735619, 35.478920, 51.936180>,  <39.285480, 35.302765, 51.557678>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.735619, 35.478920, 51.936180> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.697472, 35.086460, 51.868954>,  <38.674583, 34.850983, 51.828617>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.697472, 35.086460, 51.868954>,  <38.735619, 35.478920, 51.936180>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.697472, 35.086460, 51.868954> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233489, -0.142074, 0.961924,
		-0.967672, 0.130973, -0.215539,
		-0.095364, -0.981152, -0.168062,
		38.668861, 34.792114, 51.818535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.177620, 35.200108, 52.410286>,  <38.735619, 35.478920, 51.936180>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.177620, 35.200108, 52.410286> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.338963, 34.847458, 52.312275>,  <38.435768, 34.635868, 52.253468>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.338963, 34.847458, 52.312275>,  <38.177620, 35.200108, 52.410286>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.338963, 34.847458, 52.312275> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040725, -0.284808, 0.957719,
		-0.914136, -0.376323, -0.150783,
		0.403356, -0.881627, -0.245028,
		38.459969, 34.582970, 52.238766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.769192, 34.653252, 52.859821>,  <38.177620, 35.200108, 52.410286>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.769192, 34.653252, 52.859821> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.094250, 34.475880, 52.708572>,  <38.289284, 34.369457, 52.617825>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.094250, 34.475880, 52.708572>,  <37.769192, 34.653252, 52.859821>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.094250, 34.475880, 52.708572> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139901, -0.481424, 0.865250,
		-0.565713, -0.756043, -0.329192,
		0.812647, -0.443429, -0.378120,
		38.338043, 34.342850, 52.595135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.633110, 33.925220, 52.860416>,  <37.769192, 34.653252, 52.859821>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.633110, 33.925220, 52.860416> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.019516, 34.027328, 52.876678>,  <38.251358, 34.088593, 52.886436>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.019516, 34.027328, 52.876678>,  <37.633110, 33.925220, 52.860416>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.019516, 34.027328, 52.876678> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046253, -0.325457, 0.944425,
		0.254320, -0.910446, -0.326203,
		0.966014, 0.255274, 0.040659,
		38.309319, 34.103912, 52.888878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.022293, 33.261154, 53.021378>,  <37.633110, 33.925220, 52.860416>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.022293, 33.261154, 53.021378> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.177246, 33.614273, 53.127666>,  <38.270218, 33.826145, 53.191441>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.177246, 33.614273, 53.127666>,  <38.022293, 33.261154, 53.021378>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.177246, 33.614273, 53.127666> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118918, -0.333667, 0.935160,
		0.914218, -0.330663, -0.234236,
		0.387380, 0.882796, 0.265723,
		38.293461, 33.879112, 53.207382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.477524, 32.759033, 53.363720>,  <38.022293, 33.261154, 53.021378>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.477524, 32.759033, 53.363720> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.102325, 32.620899, 53.351627>,  <36.877209, 32.538017, 53.344372>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.102325, 32.620899, 53.351627>,  <37.477524, 32.759033, 53.363720>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.102325, 32.620899, 53.351627> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102312, 0.359100, -0.927674,
		0.331205, -0.867062, -0.372165,
		-0.937995, -0.345327, -0.030225,
		36.820927, 32.517300, 53.342560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.449429, 32.503563, 52.661133>,  <37.477524, 32.759033, 53.363720>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.449429, 32.503563, 52.661133> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.073994, 32.526329, 52.797260>,  <36.848732, 32.539989, 52.878937>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.073994, 32.526329, 52.797260>,  <37.449429, 32.503563, 52.661133>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.073994, 32.526329, 52.797260> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338802, 0.034707, -0.940217,
		-0.065325, -0.997776, -0.013292,
		-0.938587, 0.056916, 0.340316,
		36.792419, 32.543404, 52.899357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.026863, 32.040157, 52.403011>,  <37.449429, 32.503563, 52.661133>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.026863, 32.040157, 52.403011> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.747154, 32.320446, 52.459591>,  <36.579330, 32.488621, 52.493538>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.747154, 32.320446, 52.459591>,  <37.026863, 32.040157, 52.403011>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.747154, 32.320446, 52.459591> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270628, -0.076355, -0.959651,
		-0.661650, -0.709335, 0.243028,
		-0.699271, 0.700723, 0.141445,
		36.537373, 32.530663, 52.502026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.424126, 31.822382, 52.015678>,  <37.026863, 32.040157, 52.403011>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.424126, 31.822382, 52.015678> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.385639, 32.218315, 52.057583>,  <36.362549, 32.455875, 52.082726>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.385639, 32.218315, 52.057583>,  <36.424126, 31.822382, 52.015678>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.385639, 32.218315, 52.057583> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340377, 0.066185, -0.937957,
		-0.935353, -0.125905, 0.330548,
		-0.096216, 0.989832, 0.104761,
		36.356773, 32.515266, 52.089012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.852501, 31.989731, 51.649239>,  <36.424126, 31.822382, 52.015678>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.852501, 31.989731, 51.649239> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.000031, 32.359131, 51.691402>,  <36.088551, 32.580772, 51.716702>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.000031, 32.359131, 51.691402>,  <35.852501, 31.989731, 51.649239>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.000031, 32.359131, 51.691402> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526373, 0.300988, -0.795197,
		-0.766093, 0.237804, 0.597119,
		0.368826, 0.923502, 0.105411,
		36.110680, 32.636181, 51.723026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.310986, 32.465076, 51.470642>,  <35.852501, 31.989731, 51.649239>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.310986, 32.465076, 51.470642> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.655663, 32.665073, 51.436020>,  <35.862469, 32.785072, 51.415245>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.655663, 32.665073, 51.436020>,  <35.310986, 32.465076, 51.470642>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.655663, 32.665073, 51.436020> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319567, 0.402219, -0.857961,
		-0.394156, 0.766962, 0.506370,
		0.861695, 0.499990, -0.086558,
		35.914169, 32.815071, 51.410053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.072975, 32.994793, 51.088326>,  <35.310986, 32.465076, 51.470642>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.072975, 32.994793, 51.088326> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.465210, 33.025703, 51.016228>,  <35.700550, 33.044250, 50.972969>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.465210, 33.025703, 51.016228>,  <35.072975, 32.994793, 51.088326>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.465210, 33.025703, 51.016228> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195553, 0.454361, -0.869089,
		0.014735, 0.887460, 0.460650,
		0.980582, 0.077276, -0.180241,
		35.759384, 33.048885, 50.962154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.146805, 33.734726, 50.770592>,  <35.072975, 32.994793, 51.088326>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.146805, 33.734726, 50.770592> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.465206, 33.511353, 50.677189>,  <35.656246, 33.377327, 50.621147>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.465206, 33.511353, 50.677189>,  <35.146805, 33.734726, 50.770592>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.465206, 33.511353, 50.677189> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042966, 0.332677, -0.942061,
		0.603765, 0.759917, 0.240818,
		0.796004, -0.558437, -0.233510,
		35.704006, 33.343822, 50.607136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.809692, 34.143696, 50.815201>,  <35.146805, 33.734726, 50.770592>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.809692, 34.143696, 50.815201> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.846779, 33.829720, 50.570164>,  <35.869030, 33.641335, 50.423141>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.846779, 33.829720, 50.570164>,  <35.809692, 34.143696, 50.815201>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.846779, 33.829720, 50.570164> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050384, 0.618156, -0.784439,
		0.994417, 0.041869, 0.096864,
		0.092720, -0.784940, -0.612595,
		35.874596, 33.594238, 50.386387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.306431, 34.319328, 50.291767>,  <35.809692, 34.143696, 50.815201>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.306431, 34.319328, 50.291767> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.126656, 34.007576, 50.117149>,  <36.018791, 33.820526, 50.012379>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.126656, 34.007576, 50.117149>,  <36.306431, 34.319328, 50.291767>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.126656, 34.007576, 50.117149> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013831, 0.494694, -0.868957,
		0.893206, -0.384501, -0.233112,
		-0.449434, -0.779382, -0.436546,
		35.991825, 33.773762, 49.986187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.700623, 34.176353, 49.769997>,  <36.306431, 34.319328, 50.291767>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.700623, 34.176353, 49.769997> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.364208, 33.988907, 49.661877>,  <36.162361, 33.876438, 49.597004>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.364208, 33.988907, 49.661877>,  <36.700623, 34.176353, 49.769997>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.364208, 33.988907, 49.661877> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102189, 0.353035, -0.930013,
		0.531245, -0.809793, -0.249027,
		-0.841033, -0.468616, -0.270300,
		36.111897, 33.848324, 49.580788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.847858, 33.908524, 49.145317>,  <36.700623, 34.176353, 49.769997>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.847858, 33.908524, 49.145317> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.448589, 33.932629, 49.147316>,  <36.209030, 33.947090, 49.148518>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.448589, 33.932629, 49.147316>,  <36.847858, 33.908524, 49.145317>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.448589, 33.932629, 49.147316> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013862, 0.308545, -0.951109,
		-0.058856, -0.949299, -0.308815,
		-0.998170, 0.060259, 0.005001,
		36.149139, 33.950706, 49.148815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.677601, 33.642498, 48.493931>,  <36.847858, 33.908524, 49.145317>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.677601, 33.642498, 48.493931> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.366867, 33.860657, 48.619831>,  <36.180428, 33.991554, 48.695370>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.366867, 33.860657, 48.619831>,  <36.677601, 33.642498, 48.493931>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.366867, 33.860657, 48.619831> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242475, 0.202210, -0.948850,
		-0.581149, -0.813418, -0.024838,
		-0.776835, 0.545401, 0.314748,
		36.133816, 34.024277, 48.714256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.148506, 33.452068, 48.046650>,  <36.677601, 33.642498, 48.493931>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.148506, 33.452068, 48.046650> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.017319, 33.794491, 48.206448>,  <35.938606, 33.999947, 48.302326>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.017319, 33.794491, 48.206448>,  <36.148506, 33.452068, 48.046650>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.017319, 33.794491, 48.206448> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355347, 0.280032, -0.891802,
		-0.875307, -0.434444, 0.212356,
		-0.327972, 0.856061, 0.399492,
		35.918926, 34.051308, 48.326294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.459114, 33.409679, 48.026207>,  <36.148506, 33.452068, 48.046650>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.459114, 33.409679, 48.026207> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.582607, 33.790123, 48.022667>,  <35.656704, 34.018387, 48.020542>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.582607, 33.790123, 48.022667>,  <35.459114, 33.409679, 48.026207>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.582607, 33.790123, 48.022667> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267587, 0.077927, -0.960378,
		-0.912732, 0.298872, 0.278562,
		0.308737, 0.951106, -0.008848,
		35.675228, 34.075455, 48.020012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.132912, 33.678719, 47.488663>,  <35.459114, 33.409679, 48.026207>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.132912, 33.678719, 47.488663> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.378498, 33.983498, 47.571114>,  <35.525848, 34.166367, 47.620583>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.378498, 33.983498, 47.571114>,  <35.132912, 33.678719, 47.488663>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.378498, 33.983498, 47.571114> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079938, 0.319814, -0.944102,
		-0.785278, 0.563165, 0.257262,
		0.613961, 0.761948, 0.206124,
		35.562687, 34.212082, 47.632950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.782623, 34.298447, 47.415352>,  <35.132912, 33.678719, 47.488663>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.782623, 34.298447, 47.415352> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.169952, 34.379387, 47.356815>,  <35.402348, 34.427952, 47.321693>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.169952, 34.379387, 47.356815>,  <34.782623, 34.298447, 47.415352>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.169952, 34.379387, 47.356815> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236495, 0.554911, -0.797587,
		-0.080183, 0.806927, 0.585184,
		0.968319, 0.202346, -0.146339,
		35.460449, 34.440090, 47.312912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.785793, 35.040237, 47.267223>,  <34.782623, 34.298447, 47.415352>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.785793, 35.040237, 47.267223> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.118740, 34.866306, 47.129768>,  <35.318508, 34.761948, 47.047295>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.118740, 34.866306, 47.129768>,  <34.785793, 35.040237, 47.267223>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.118740, 34.866306, 47.129768> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086920, 0.509939, -0.855808,
		0.547362, 0.742217, 0.386663,
		0.832370, -0.434828, -0.343635,
		35.368450, 34.735859, 47.026676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.141060, 35.588406, 46.783993>,  <34.785793, 35.040237, 47.267223>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.141060, 35.588406, 46.783993> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.291958, 35.228455, 46.696438>,  <35.382496, 35.012486, 46.643906>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.291958, 35.228455, 46.696438>,  <35.141060, 35.588406, 46.783993>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.291958, 35.228455, 46.696438> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066520, 0.209410, -0.975562,
		0.923720, 0.382590, 0.019140,
		0.377248, -0.899873, -0.218886,
		35.405132, 34.958492, 46.630772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.735970, 35.673214, 46.399349>,  <35.141060, 35.588406, 46.783993>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.735970, 35.673214, 46.399349> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.569187, 35.322342, 46.304100>,  <35.469120, 35.111816, 46.246952>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.569187, 35.322342, 46.304100>,  <35.735970, 35.673214, 46.399349>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.569187, 35.322342, 46.304100> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035718, 0.277591, -0.960035,
		0.908226, -0.391785, -0.147073,
		-0.416953, -0.877182, -0.238122,
		35.444099, 35.059189, 46.232662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<44.078796, 29.309483, 38.717506> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.252266, 28.953096, 38.771332>,  <44.356350, 28.739265, 38.803627>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.252266, 28.953096, 38.771332>,  <44.078796, 29.309483, 38.717506>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.252266, 28.953096, 38.771332> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504708, -0.363903, -0.782844,
		0.746455, 0.271584, -0.607493,
		0.433676, -0.890964, 0.134567,
		44.382370, 28.685806, 38.811703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.421333, 28.851933, 38.784599>,  <44.078796, 29.309483, 38.717506>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.421333, 28.851933, 38.784599> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.309086, 29.007496, 39.135597>,  <43.241737, 29.100834, 39.346195>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.309086, 29.007496, 39.135597>,  <43.421333, 28.851933, 38.784599>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.309086, 29.007496, 39.135597> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209457, 0.917011, -0.339440,
		-0.936687, 0.088546, -0.338789,
		-0.280617, 0.388910, 0.877498,
		43.224899, 29.124168, 39.398846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.933540, 29.295609, 38.506496>,  <43.421333, 28.851933, 38.784599>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.933540, 29.295609, 38.506496> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.055988, 29.412245, 38.868992>,  <43.129456, 29.482225, 39.086491>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.055988, 29.412245, 38.868992>,  <42.933540, 29.295609, 38.506496>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.055988, 29.412245, 38.868992> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180225, 0.916972, -0.355922,
		-0.934778, 0.272282, 0.228151,
		0.306119, 0.291589, 0.906238,
		43.147823, 29.499722, 39.140862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.498512, 29.866474, 38.598183>,  <42.933540, 29.295609, 38.506496>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.498512, 29.866474, 38.598183> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.830822, 29.889746, 38.819603>,  <43.030209, 29.903709, 38.952457>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.830822, 29.889746, 38.819603>,  <42.498512, 29.866474, 38.598183>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.830822, 29.889746, 38.819603> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187158, 0.907415, -0.376257,
		-0.524193, 0.416188, 0.742973,
		0.830779, 0.058179, 0.553554,
		43.080055, 29.907200, 38.985668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.272568, 30.567909, 38.825214>,  <42.498512, 29.866474, 38.598183>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.272568, 30.567909, 38.825214> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.652962, 30.498085, 38.927319>,  <42.881199, 30.456190, 38.988583>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.652962, 30.498085, 38.927319>,  <42.272568, 30.567909, 38.825214>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.652962, 30.498085, 38.927319> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164713, 0.984537, 0.059634,
		-0.261723, -0.014666, 0.965031,
		0.950984, -0.174560, 0.255261,
		42.938255, 30.445717, 39.003895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.446625, 31.050110, 39.295773>,  <42.272568, 30.567909, 38.825214>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.446625, 31.050110, 39.295773> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.801422, 30.935589, 39.150845>,  <43.014301, 30.866877, 39.063889>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.801422, 30.935589, 39.150845>,  <42.446625, 31.050110, 39.295773>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.801422, 30.935589, 39.150845> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265169, 0.958138, -0.107963,
		0.378065, -0.000314, 0.925779,
		0.886990, -0.286305, -0.362322,
		43.067520, 30.849697, 39.042149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.826073, 31.553175, 39.588818>,  <42.446625, 31.050110, 39.295773>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.826073, 31.553175, 39.588818> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.024536, 31.391756, 39.281319>,  <43.143616, 31.294905, 39.096821>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.024536, 31.391756, 39.281319>,  <42.826073, 31.553175, 39.588818>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.024536, 31.391756, 39.281319> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294254, 0.911176, -0.288398,
		0.816847, -0.083115, 0.570835,
		0.496161, -0.403547, -0.768748,
		43.173386, 31.270693, 39.050694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.452847, 31.913025, 39.546963>,  <42.826073, 31.553175, 39.588818>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.452847, 31.913025, 39.546963> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.422306, 31.754147, 39.181141>,  <43.403980, 31.658819, 38.961647>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.422306, 31.754147, 39.181141>,  <43.452847, 31.913025, 39.546963>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.422306, 31.754147, 39.181141> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415982, 0.820903, -0.391252,
		0.906162, -0.410311, 0.102545,
		-0.076355, -0.397194, -0.914553,
		43.399399, 31.634989, 38.906776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.136528, 31.932911, 39.228214>,  <43.452847, 31.913025, 39.546963>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.136528, 31.932911, 39.228214> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.861370, 31.933647, 38.937889>,  <43.696278, 31.934090, 38.763695>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.861370, 31.933647, 38.937889>,  <44.136528, 31.932911, 39.228214>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.861370, 31.933647, 38.937889> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324798, 0.895065, -0.305557,
		0.649085, -0.445932, -0.616307,
		-0.687892, 0.001843, -0.725811,
		43.655003, 31.934200, 38.720146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.488312, 32.436169, 38.740280>,  <44.136528, 31.932911, 39.228214>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.488312, 32.436169, 38.740280> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.119003, 32.388351, 38.594254>,  <43.897415, 32.359661, 38.506638>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.119003, 32.388351, 38.594254>,  <44.488312, 32.436169, 38.740280>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.119003, 32.388351, 38.594254> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043486, 0.911709, -0.408529,
		0.381668, -0.393060, -0.836561,
		-0.923276, -0.119544, -0.365063,
		43.842022, 32.352489, 38.484734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.576401, 32.540157, 37.952038>,  <44.488312, 32.436169, 38.740280>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.576401, 32.540157, 37.952038> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.222530, 32.600109, 38.128620>,  <44.010208, 32.636078, 38.234570>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.222530, 32.600109, 38.128620>,  <44.576401, 32.540157, 37.952038>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.222530, 32.600109, 38.128620> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016752, 0.956523, -0.291174,
		-0.465900, -0.250201, -0.848727,
		-0.884679, 0.149876, 0.441453,
		43.957127, 32.645073, 38.261055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.266190, 32.817986, 37.435242>,  <44.576401, 32.540157, 37.952038>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.266190, 32.817986, 37.435242> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.076027, 32.919434, 37.772209>,  <43.961929, 32.980301, 37.974388>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.076027, 32.919434, 37.772209>,  <44.266190, 32.817986, 37.435242>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.076027, 32.919434, 37.772209> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081769, 0.966140, -0.244718,
		-0.875959, -0.047456, -0.480045,
		-0.475404, 0.253615, 0.842419,
		43.933407, 32.995518, 38.024937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.739250, 33.143497, 37.231430>,  <44.266190, 32.817986, 37.435242>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.739250, 33.143497, 37.231430> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.766972, 33.275867, 37.607872>,  <43.783604, 33.355289, 37.833736>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.766972, 33.275867, 37.607872>,  <43.739250, 33.143497, 37.231430>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.766972, 33.275867, 37.607872> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155039, 0.935488, -0.317532,
		-0.985475, -0.123904, 0.116136,
		0.069300, 0.330925, 0.941109,
		43.787762, 33.375145, 37.890205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.214046, 33.562656, 37.279953>,  <43.739250, 33.143497, 37.231430>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.214046, 33.562656, 37.279953> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.443283, 33.673077, 37.588593>,  <43.580826, 33.739330, 37.773777>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.443283, 33.673077, 37.588593>,  <43.214046, 33.562656, 37.279953>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.443283, 33.673077, 37.588593> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110016, 0.958949, -0.261368,
		-0.812075, 0.064899, 0.579933,
		0.573089, 0.276052, 0.771599,
		43.615211, 33.755894, 37.820072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.778202, 33.954697, 37.656223>,  <43.214046, 33.562656, 37.279953>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.778202, 33.954697, 37.656223> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.157974, 34.043823, 37.744713>,  <43.385838, 34.097298, 37.797806>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.157974, 34.043823, 37.744713>,  <42.778202, 33.954697, 37.656223>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.157974, 34.043823, 37.744713> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170904, 0.957777, -0.231203,
		-0.263396, 0.181703, 0.947421,
		0.949429, 0.222816, 0.221220,
		43.442802, 34.110668, 37.811077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.671951, 34.493732, 38.022598>,  <42.778202, 33.954697, 37.656223>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.671951, 34.493732, 38.022598> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.061874, 34.526638, 37.939671>,  <43.295830, 34.546383, 37.889915>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.061874, 34.526638, 37.939671>,  <42.671951, 34.493732, 38.022598>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.061874, 34.526638, 37.939671> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139096, 0.950826, -0.276733,
		0.174356, 0.298599, 0.938317,
		0.974809, 0.082266, -0.207316,
		43.354317, 34.551319, 37.877476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.995514, 35.167526, 38.359070>,  <42.671951, 34.493732, 38.022598>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.995514, 35.167526, 38.359070> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.216358, 35.041519, 38.050282>,  <43.348866, 34.965916, 37.865009>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.216358, 35.041519, 38.050282>,  <42.995514, 35.167526, 38.359070>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.216358, 35.041519, 38.050282> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135897, 0.947496, -0.289455,
		0.822619, 0.054904, 0.565936,
		0.552114, -0.315020, -0.771967,
		43.381992, 34.947014, 37.818691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.506905, 35.722992, 38.322510>,  <42.995514, 35.167526, 38.359070>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.506905, 35.722992, 38.322510> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.519840, 35.520195, 37.977974>,  <43.527603, 35.398518, 37.771252>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.519840, 35.520195, 37.977974>,  <43.506905, 35.722992, 38.322510>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.519840, 35.520195, 37.977974> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235179, 0.841457, -0.486457,
		0.971414, -0.186837, 0.146448,
		0.032342, -0.506993, -0.861344,
		43.529541, 35.368095, 37.719570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.028088, 36.155838, 37.895493>,  <43.506905, 35.722992, 38.322510>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.028088, 36.155838, 37.895493> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.833946, 35.929867, 37.628574>,  <43.717461, 35.794285, 37.468422>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.833946, 35.929867, 37.628574>,  <44.028088, 36.155838, 37.895493>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.833946, 35.929867, 37.628574> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102756, 0.721073, -0.685197,
		0.868260, -0.401130, -0.291924,
		-0.485352, -0.564932, -0.667297,
		43.688339, 35.760387, 37.428387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.347977, 36.285984, 37.306316>,  <44.028088, 36.155838, 37.895493>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.347977, 36.285984, 37.306316> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.991802, 36.134003, 37.206100>,  <43.778099, 36.042816, 37.145973>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.991802, 36.134003, 37.206100>,  <44.347977, 36.285984, 37.306316>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.991802, 36.134003, 37.206100> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184231, 0.804287, -0.564961,
		0.416160, -0.456903, -0.786162,
		-0.890433, -0.379950, -0.250537,
		43.724674, 36.020020, 37.130939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.246803, 36.351070, 36.573910>,  <44.347977, 36.285984, 37.306316>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.246803, 36.351070, 36.573910> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.875214, 36.309666, 36.716064>,  <43.652260, 36.284824, 36.801357>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.875214, 36.309666, 36.716064>,  <44.246803, 36.351070, 36.573910>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.875214, 36.309666, 36.716064> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306003, 0.754960, -0.579999,
		-0.208264, -0.647551, -0.733011,
		-0.928972, -0.103511, 0.355383,
		43.596523, 36.278614, 36.822678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.653160, 36.647713, 36.085346>,  <44.246803, 36.351070, 36.573910>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.653160, 36.647713, 36.085346> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.878551, 36.832260, 35.811226>,  <45.013786, 36.942989, 35.646755>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.878551, 36.832260, 35.811226>,  <44.653160, 36.647713, 36.085346>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.878551, 36.832260, 35.811226> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058175, -0.805305, -0.589999,
		-0.824083, 0.372316, -0.426928,
		0.563474, 0.461372, -0.685298,
		45.047592, 36.970673, 35.605637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.389881, 36.802204, 35.296413>,  <44.653160, 36.647713, 36.085346>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.389881, 36.802204, 35.296413> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.772202, 36.697792, 35.350525>,  <45.001595, 36.635143, 35.382992>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.772202, 36.697792, 35.350525>,  <44.389881, 36.802204, 35.296413>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.772202, 36.697792, 35.350525> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192010, -0.902670, -0.385121,
		0.222642, 0.342126, -0.912897,
		0.955805, -0.261029, 0.135281,
		45.058945, 36.619484, 35.391109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.735855, 36.591549, 34.634010>,  <44.389881, 36.802204, 35.296413>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.735855, 36.591549, 34.634010> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.945076, 36.418182, 34.927559>,  <45.070606, 36.314163, 35.103687>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.945076, 36.418182, 34.927559>,  <44.735855, 36.591549, 34.634010>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.945076, 36.418182, 34.927559> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156509, -0.895246, -0.417180,
		0.837810, 0.103347, -0.536091,
		0.523048, -0.433421, 0.733871,
		45.101990, 36.288155, 35.147720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.206177, 35.965664, 34.347961>,  <44.735855, 36.591549, 34.634010>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.206177, 35.965664, 34.347961> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.161495, 35.899120, 34.739849>,  <45.134686, 35.859196, 34.974983>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.161495, 35.899120, 34.739849>,  <45.206177, 35.965664, 34.347961>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.161495, 35.899120, 34.739849> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223166, -0.956506, -0.187863,
		0.968359, -0.239625, 0.069717,
		-0.111701, -0.166360, 0.979718,
		45.127983, 35.849213, 35.033764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.569328, 35.311779, 34.527756>,  <45.206177, 35.965664, 34.347961>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.569328, 35.311779, 34.527756> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.301556, 35.383888, 34.816021>,  <45.140892, 35.427155, 34.988979>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.301556, 35.383888, 34.816021>,  <45.569328, 35.311779, 34.527756>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.301556, 35.383888, 34.816021> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258247, -0.966077, 0.001774,
		0.696541, -0.184923, 0.693278,
		-0.669432, 0.180273, 0.720668,
		45.100727, 35.437969, 35.032223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.595734, 34.666050, 34.899742>,  <45.569328, 35.311779, 34.527756>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.595734, 34.666050, 34.899742> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.264149, 34.838814, 35.041882>,  <45.065197, 34.942474, 35.127163>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.264149, 34.838814, 35.041882>,  <45.595734, 34.666050, 34.899742>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.264149, 34.838814, 35.041882> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421056, -0.900116, 0.111814,
		0.368146, -0.056930, 0.928023,
		-0.828964, 0.431914, 0.355345,
		45.015461, 34.968388, 35.148483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.480705, 34.437950, 35.593216>,  <45.595734, 34.666050, 34.899742>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.480705, 34.437950, 35.593216> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.129162, 34.551701, 35.439995>,  <44.918236, 34.619949, 35.348061>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.129162, 34.551701, 35.439995>,  <45.480705, 34.437950, 35.593216>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.129162, 34.551701, 35.439995> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371405, -0.911783, 0.175242,
		-0.299431, 0.296284, 0.906949,
		-0.878862, 0.284373, -0.383057,
		44.865501, 34.637012, 35.325077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.051350, 34.086315, 36.006844>,  <45.480705, 34.437950, 35.593216>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.051350, 34.086315, 36.006844> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.780212, 34.218678, 35.744228>,  <44.617531, 34.298096, 35.586658>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.780212, 34.218678, 35.744228>,  <45.051350, 34.086315, 36.006844>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.780212, 34.218678, 35.744228> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.608718, -0.753380, 0.248758,
		-0.412306, 0.568263, 0.712096,
		-0.677839, 0.330901, -0.656535,
		44.576862, 34.317947, 35.547268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.414463, 34.145504, 36.360413>,  <45.051350, 34.086315, 36.006844>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.414463, 34.145504, 36.360413> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.317238, 34.061436, 35.981625>,  <44.258904, 34.010994, 35.754353>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.317238, 34.061436, 35.981625>,  <44.414463, 34.145504, 36.360413>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.317238, 34.061436, 35.981625> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329002, -0.900513, 0.284312,
		-0.912511, 0.380661, 0.149737,
		-0.243067, -0.210174, -0.946966,
		44.244316, 33.998383, 35.697536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.683929, 33.912819, 36.384644>,  <44.414463, 34.145504, 36.360413>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.683929, 33.912819, 36.384644> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.777592, 33.810387, 36.009495>,  <43.833790, 33.748928, 35.784405>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.777592, 33.810387, 36.009495>,  <43.683929, 33.912819, 36.384644>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.777592, 33.810387, 36.009495> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486853, -0.865897, 0.114875,
		-0.841514, 0.429705, -0.327427,
		0.234156, -0.256077, -0.937867,
		43.847839, 33.733562, 35.728134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.982571, 33.658733, 36.081097>,  <43.683929, 33.912819, 36.384644>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.982571, 33.658733, 36.081097> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.279671, 33.514652, 35.855324>,  <43.457932, 33.428204, 35.719860>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.279671, 33.514652, 35.855324>,  <42.982571, 33.658733, 36.081097>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.279671, 33.514652, 35.855324> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432560, -0.901584, 0.006155,
		-0.511096, 0.239578, -0.825459,
		0.742746, -0.360207, -0.564428,
		43.502495, 33.406590, 35.685997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.639679, 33.323067, 35.596901>,  <42.982571, 33.658733, 36.081097>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.639679, 33.323067, 35.596901> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.008129, 33.168118, 35.612259>,  <43.229198, 33.075150, 35.621475>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.008129, 33.168118, 35.612259>,  <42.639679, 33.323067, 35.596901>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.008129, 33.168118, 35.612259> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388939, -0.911770, 0.131920,
		-0.016096, -0.136448, -0.990517,
		0.921123, -0.387374, 0.038394,
		43.284466, 33.051907, 35.623775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.573689, 32.818333, 35.215782>,  <42.639679, 33.323067, 35.596901>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.573689, 32.818333, 35.215782> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.905628, 32.726326, 35.419132>,  <43.104794, 32.671124, 35.541142>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.905628, 32.726326, 35.419132>,  <42.573689, 32.818333, 35.215782>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.905628, 32.726326, 35.419132> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293264, -0.954892, 0.046672,
		0.474707, -0.187819, -0.859870,
		0.829849, -0.230013, 0.508374,
		43.154583, 32.657322, 35.571644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.748589, 32.167850, 35.090733>,  <42.573689, 32.818333, 35.215782>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.748589, 32.167850, 35.090733> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.958321, 32.203136, 35.429504>,  <43.084160, 32.224308, 35.632767>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.958321, 32.203136, 35.429504>,  <42.748589, 32.167850, 35.090733>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.958321, 32.203136, 35.429504> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200200, -0.953967, 0.223308,
		0.827646, -0.286643, -0.482532,
		0.524329, 0.088217, 0.846933,
		43.115620, 32.229603, 35.683586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.247192, 31.549881, 35.113789>,  <42.748589, 32.167850, 35.090733>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.247192, 31.549881, 35.113789> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.234097, 31.675797, 35.493229>,  <43.226238, 31.751347, 35.720894>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.234097, 31.675797, 35.493229>,  <43.247192, 31.549881, 35.113789>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.234097, 31.675797, 35.493229> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390142, -0.877835, 0.277840,
		0.920172, -0.360990, 0.151554,
		-0.032741, 0.314788, 0.948597,
		43.224274, 31.770233, 35.777809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.615818, 31.054008, 35.591965>,  <43.247192, 31.549881, 35.113789>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.615818, 31.054008, 35.591965> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.352386, 31.244509, 35.825020>,  <43.194328, 31.358809, 35.964851>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.352386, 31.244509, 35.825020>,  <43.615818, 31.054008, 35.591965>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.352386, 31.244509, 35.825020> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325330, -0.878349, 0.350234,
		0.678554, 0.041108, 0.733399,
		-0.658578, 0.476249, 0.582633,
		43.154812, 31.387383, 35.999809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.645256, 30.653877, 36.197483>,  <43.615818, 31.054008, 35.591965>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.645256, 30.653877, 36.197483> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.318359, 30.884119, 36.186157>,  <43.122223, 31.022264, 36.179363>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.318359, 30.884119, 36.186157>,  <43.645256, 30.653877, 36.197483>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.318359, 30.884119, 36.186157> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529844, -0.731129, 0.429786,
		0.226687, 0.366238, 0.902487,
		-0.817238, 0.575604, -0.028312,
		43.073189, 31.056801, 36.177662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.288849, 30.576645, 36.862606>,  <43.645256, 30.653877, 36.197483>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.288849, 30.576645, 36.862606> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.002464, 30.729208, 36.628704>,  <42.830635, 30.820745, 36.488365>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.002464, 30.729208, 36.628704>,  <43.288849, 30.576645, 36.862606>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.002464, 30.729208, 36.628704> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.625568, -0.722333, 0.294789,
		-0.309951, 0.576858, 0.755755,
		-0.715958, 0.381406, -0.584752,
		42.787678, 30.843630, 36.453278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.741333, 30.617300, 37.316212>,  <43.288849, 30.576645, 36.862606>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.741333, 30.617300, 37.316212> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.583920, 30.604912, 36.948696>,  <42.489471, 30.597479, 36.728188>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.583920, 30.604912, 36.948696>,  <42.741333, 30.617300, 37.316212>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.583920, 30.604912, 36.948696> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.653343, -0.693685, 0.303222,
		-0.646742, 0.719612, 0.252753,
		-0.393533, -0.030972, -0.918789,
		42.465858, 30.595621, 36.673061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.100544, 30.542576, 37.445000>,  <42.741333, 30.617300, 37.316212>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.100544, 30.542576, 37.445000> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.095181, 30.440681, 37.058231>,  <42.091965, 30.379545, 36.826172>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.095181, 30.440681, 37.058231>,  <42.100544, 30.542576, 37.445000>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.095181, 30.440681, 37.058231> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.697207, -0.690776, 0.191652,
		-0.716744, 0.676711, -0.168345,
		-0.013404, -0.254736, -0.966918,
		42.091160, 30.364260, 36.768158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.353428, 30.545786, 37.138092>,  <42.100544, 30.542576, 37.445000>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.353428, 30.545786, 37.138092> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.564972, 30.299952, 36.903969>,  <41.691898, 30.152451, 36.763496>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.564972, 30.299952, 36.903969>,  <41.353428, 30.545786, 37.138092>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.564972, 30.299952, 36.903969> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.799725, -0.591770, -0.101232,
		-0.284152, 0.521624, -0.804466,
		0.528864, -0.614586, -0.585309,
		41.723633, 30.115576, 36.728374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<38.397728, 38.599705, 42.024323> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.319359, 38.218689, 41.931126>,  <38.272335, 37.990078, 41.875210>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.319359, 38.218689, 41.931126>,  <38.397728, 38.599705, 42.024323>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.319359, 38.218689, 41.931126> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319925, 0.162502, -0.933403,
		0.926963, -0.257418, 0.272903,
		-0.195928, -0.952538, -0.232988,
		38.260582, 37.932926, 41.861229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.914291, 38.415688, 41.404053>,  <38.397728, 38.599705, 42.024323>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.914291, 38.415688, 41.404053> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.620895, 38.144405, 41.422050>,  <38.444859, 37.981636, 41.432850>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.620895, 38.144405, 41.422050>,  <38.914291, 38.415688, 41.404053>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.620895, 38.144405, 41.422050> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087290, 0.028342, -0.995780,
		0.674072, -0.734322, -0.079990,
		-0.733490, -0.678209, 0.044995,
		38.400848, 37.940941, 41.435551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.045334, 37.965374, 40.771572>,  <38.914291, 38.415688, 41.404053>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.045334, 37.965374, 40.771572> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.662537, 37.903111, 40.869507>,  <38.432858, 37.865753, 40.928268>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.662537, 37.903111, 40.869507>,  <39.045334, 37.965374, 40.771572>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.662537, 37.903111, 40.869507> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238588, -0.057912, -0.969393,
		0.165071, -0.986112, 0.018283,
		-0.956989, -0.155657, 0.244834,
		38.375439, 37.856415, 40.942959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.801277, 37.365280, 40.504601>,  <39.045334, 37.965374, 40.771572>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.801277, 37.365280, 40.504601> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.469116, 37.580482, 40.562531>,  <38.269817, 37.709602, 40.597290>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.469116, 37.580482, 40.562531>,  <38.801277, 37.365280, 40.504601>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.469116, 37.580482, 40.562531> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216254, -0.071671, -0.973703,
		-0.513476, -0.839890, 0.175862,
		-0.830407, 0.538004, 0.144828,
		38.219994, 37.741882, 40.605980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.354832, 37.185665, 40.036552>,  <38.801277, 37.365280, 40.504601>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.354832, 37.185665, 40.036552> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.175800, 37.525600, 40.147869>,  <38.068382, 37.729561, 40.214657>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.175800, 37.525600, 40.147869>,  <38.354832, 37.185665, 40.036552>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.175800, 37.525600, 40.147869> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141031, 0.240224, -0.960418,
		-0.883056, -0.469105, 0.012336,
		-0.447574, 0.849842, 0.278290,
		38.041527, 37.780552, 40.231358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.583935, 37.228516, 39.701729>,  <38.354832, 37.185665, 40.036552>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.583935, 37.228516, 39.701729> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.757221, 37.584419, 39.759205>,  <37.861195, 37.797962, 39.793690>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.757221, 37.584419, 39.759205>,  <37.583935, 37.228516, 39.701729>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.757221, 37.584419, 39.759205> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289710, 0.288442, -0.912617,
		-0.853457, 0.353734, 0.382731,
		0.433219, 0.889760, 0.143693,
		37.887188, 37.851349, 39.802311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.099873, 37.677109, 39.394657>,  <37.583935, 37.228516, 39.701729>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.099873, 37.677109, 39.394657> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.455002, 37.859478, 39.419674>,  <37.668079, 37.968899, 39.434685>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.455002, 37.859478, 39.419674>,  <37.099873, 37.677109, 39.394657>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.455002, 37.859478, 39.419674> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080571, 0.287802, -0.954295,
		-0.453086, 0.842202, 0.292250,
		0.887819, 0.455924, 0.062542,
		37.721348, 37.996254, 39.438438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.077003, 37.994179, 38.904541>,  <37.099873, 37.677109, 39.394657>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.077003, 37.994179, 38.904541> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.468063, 38.065933, 38.948410>,  <37.702698, 38.108986, 38.974731>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.468063, 38.065933, 38.948410>,  <37.077003, 37.994179, 38.904541>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.468063, 38.065933, 38.948410> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066449, 0.231273, -0.970617,
		-0.199480, 0.956208, 0.214183,
		0.977646, 0.179386, 0.109674,
		37.761356, 38.119751, 38.981312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.213425, 38.469574, 38.451679>,  <37.077003, 37.994179, 38.904541>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.213425, 38.469574, 38.451679> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.589008, 38.350445, 38.520565>,  <37.814358, 38.278965, 38.561897>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.589008, 38.350445, 38.520565>,  <37.213425, 38.469574, 38.451679>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.589008, 38.350445, 38.520565> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195134, 0.048780, -0.979563,
		0.283340, 0.953372, 0.103919,
		0.938957, -0.297828, 0.172214,
		37.870697, 38.261097, 38.572227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.625252, 38.928970, 38.061924>,  <37.213425, 38.469574, 38.451679>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.625252, 38.928970, 38.061924> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.821987, 38.584778, 38.115093>,  <37.940029, 38.378262, 38.146996>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.821987, 38.584778, 38.115093>,  <37.625252, 38.928970, 38.061924>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.821987, 38.584778, 38.115093> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053344, -0.122600, -0.991022,
		0.869051, 0.494512, -0.014398,
		0.491838, -0.860481, 0.132925,
		37.969540, 38.326633, 38.154972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.186432, 38.933365, 37.562366>,  <37.625252, 38.928970, 38.061924>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.186432, 38.933365, 37.562366> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.141323, 38.556961, 37.689980>,  <38.114258, 38.331120, 37.766548>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.141323, 38.556961, 37.689980>,  <38.186432, 38.933365, 37.562366>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.141323, 38.556961, 37.689980> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019805, -0.323142, -0.946143,
		0.993423, -0.100383, 0.055079,
		-0.112775, -0.941012, 0.319028,
		38.107491, 38.274658, 37.785686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.589859, 38.501308, 37.158897>,  <38.186432, 38.933365, 37.562366>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.589859, 38.501308, 37.158897> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.320240, 38.250900, 37.315750>,  <38.158470, 38.100655, 37.409863>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.320240, 38.250900, 37.315750>,  <38.589859, 38.501308, 37.158897>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.320240, 38.250900, 37.315750> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287055, -0.267144, -0.919909,
		0.680635, -0.732622, 0.000366,
		-0.674044, -0.626018, 0.392130,
		38.118027, 38.063095, 37.433388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.259743, 38.824184, 37.127087>,  <38.589859, 38.501308, 37.158897>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.259743, 38.824184, 37.127087> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.262154, 38.675472, 36.755768>,  <39.263599, 38.586243, 36.532974>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.262154, 38.675472, 36.755768>,  <39.259743, 38.824184, 37.127087>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.262154, 38.675472, 36.755768> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160236, 0.915963, -0.367883,
		0.987060, 0.150965, -0.054052,
		0.006027, -0.371783, -0.928300,
		39.263962, 38.563938, 36.477280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.825058, 39.116440, 36.692768>,  <39.259743, 38.824184, 37.127087>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.825058, 39.116440, 36.692768> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.496956, 39.017422, 36.486504>,  <39.300095, 38.958012, 36.362743>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.496956, 39.017422, 36.486504>,  <39.825058, 39.116440, 36.692768>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.496956, 39.017422, 36.486504> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149196, 0.962889, -0.224910,
		0.552203, -0.107548, -0.826744,
		-0.820252, -0.247543, -0.515664,
		39.250881, 38.943157, 36.331806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.457352, 38.914101, 36.962418>,  <39.825058, 39.116440, 36.692768>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.457352, 38.914101, 36.962418> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.624298, 38.588703, 36.800415>,  <40.724464, 38.393463, 36.703213>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.624298, 38.588703, 36.800415>,  <40.457352, 38.914101, 36.962418>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.624298, 38.588703, 36.800415> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054058, -0.467119, 0.882541,
		-0.907130, -0.346446, -0.238934,
		0.417364, -0.813496, -0.405009,
		40.749508, 38.344654, 36.678913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.988174, 38.338360, 37.063225>,  <40.457352, 38.914101, 36.962418>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.988174, 38.338360, 37.063225> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.372486, 38.227715, 37.055450>,  <40.603073, 38.161327, 37.050785>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.372486, 38.227715, 37.055450>,  <39.988174, 38.338360, 37.063225>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.372486, 38.227715, 37.055450> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110773, -0.447125, 0.887586,
		-0.254213, -0.850625, -0.460232,
		0.960784, -0.276617, -0.019439,
		40.660721, 38.144730, 37.049618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.017189, 37.669041, 37.164959>,  <39.988174, 38.338360, 37.063225>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.017189, 37.669041, 37.164959> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.380627, 37.798748, 37.270267>,  <40.598690, 37.876572, 37.333454>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.380627, 37.798748, 37.270267>,  <40.017189, 37.669041, 37.164959>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.380627, 37.798748, 37.270267> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060769, -0.520973, 0.851407,
		0.413242, -0.789580, -0.453646,
		0.908591, 0.324270, 0.263270,
		40.653206, 37.896030, 37.349247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.452003, 37.037033, 37.403889>,  <40.017189, 37.669041, 37.164959>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.452003, 37.037033, 37.403889> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.618481, 37.367950, 37.554813>,  <40.718369, 37.566502, 37.645367>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.618481, 37.367950, 37.554813>,  <40.452003, 37.037033, 37.403889>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.618481, 37.367950, 37.554813> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109601, -0.457577, 0.882389,
		0.902647, -0.325890, -0.281113,
		0.416192, 0.827296, 0.377312,
		40.743340, 37.616138, 37.668007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.000172, 36.782848, 37.725479>,  <40.452003, 37.037033, 37.403889>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.000172, 36.782848, 37.725479> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.933388, 37.136551, 37.899937>,  <40.893318, 37.348770, 38.004612>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.933388, 37.136551, 37.899937>,  <41.000172, 36.782848, 37.725479>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.933388, 37.136551, 37.899937> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162604, -0.411604, 0.896739,
		0.972463, 0.220636, -0.075063,
		-0.166957, 0.884252, 0.436147,
		40.883301, 37.401825, 38.030781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.447334, 36.895351, 38.181248>,  <41.000172, 36.782848, 37.725479>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.447334, 36.895351, 38.181248> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.171066, 37.155056, 38.308643>,  <41.005306, 37.310879, 38.385078>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.171066, 37.155056, 38.308643>,  <41.447334, 36.895351, 38.181248>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.171066, 37.155056, 38.308643> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012828, -0.429335, 0.903054,
		0.723055, 0.627799, 0.288201,
		-0.690671, 0.649261, 0.318487,
		40.963863, 37.349834, 38.404190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.753883, 37.292641, 38.760677>,  <41.447334, 36.895351, 38.181248>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.753883, 37.292641, 38.760677> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.360935, 37.341080, 38.817635>,  <41.125164, 37.370144, 38.851807>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.360935, 37.341080, 38.817635>,  <41.753883, 37.292641, 38.760677>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.360935, 37.341080, 38.817635> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116745, -0.197417, 0.973343,
		0.145982, 0.972811, 0.179800,
		-0.982374, 0.121100, 0.142390,
		41.066223, 37.377411, 38.860352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.683151, 37.785191, 39.419895>,  <41.753883, 37.292641, 38.760677>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.683151, 37.785191, 39.419895> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.345848, 37.583485, 39.345444>,  <41.143467, 37.462463, 39.300774>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.345848, 37.583485, 39.345444>,  <41.683151, 37.785191, 39.419895>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.345848, 37.583485, 39.345444> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067309, -0.244484, 0.967314,
		-0.533283, 0.828220, 0.172221,
		-0.843255, -0.504260, -0.186126,
		41.092873, 37.432205, 39.289604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.239632, 37.941605, 40.002045>,  <41.683151, 37.785191, 39.419895>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.239632, 37.941605, 40.002045> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.112972, 37.599556, 39.837849>,  <41.036976, 37.394329, 39.739330>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.112972, 37.599556, 39.837849>,  <41.239632, 37.941605, 40.002045>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.112972, 37.599556, 39.837849> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243638, -0.344919, 0.906461,
		-0.916719, 0.387042, -0.099122,
		-0.316649, -0.855120, -0.410492,
		41.017979, 37.343021, 39.714703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.738937, 37.802826, 40.407722>,  <41.239632, 37.941605, 40.002045>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.738937, 37.802826, 40.407722> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.788677, 37.443985, 40.238136>,  <40.818520, 37.228680, 40.136383>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.788677, 37.443985, 40.238136>,  <40.738937, 37.802826, 40.407722>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.788677, 37.443985, 40.238136> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252422, -0.441825, 0.860856,
		-0.959594, -0.000025, -0.281386,
		0.124345, -0.897101, -0.423967,
		40.825981, 37.174854, 40.110947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.091991, 37.409393, 40.514412>,  <40.738937, 37.802826, 40.407722>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.091991, 37.409393, 40.514412> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.386730, 37.148846, 40.442001>,  <40.563576, 36.992516, 40.398556>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.386730, 37.148846, 40.442001>,  <40.091991, 37.409393, 40.514412>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.386730, 37.148846, 40.442001> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092741, -0.362620, 0.927311,
		-0.669665, -0.666501, -0.327605,
		0.736850, -0.651370, -0.181022,
		40.607784, 36.953434, 40.387695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.861095, 36.863392, 40.849522>,  <40.091991, 37.409393, 40.514412>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.861095, 36.863392, 40.849522> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.238304, 36.738346, 40.803959>,  <40.464630, 36.663319, 40.776623>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.238304, 36.738346, 40.803959>,  <39.861095, 36.863392, 40.849522>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.238304, 36.738346, 40.803959> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038328, -0.237995, 0.970510,
		-0.330505, -0.919581, -0.212453,
		0.943026, -0.312616, -0.113904,
		40.521214, 36.644562, 40.769787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.946674, 36.167080, 41.211918>,  <39.861095, 36.863392, 40.849522>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.946674, 36.167080, 41.211918> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.293633, 36.365513, 41.196301>,  <40.501808, 36.484573, 41.186932>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.293633, 36.365513, 41.196301>,  <39.946674, 36.167080, 41.211918>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.293633, 36.365513, 41.196301> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132427, -0.154491, 0.979079,
		0.479676, -0.854419, -0.199700,
		0.867395, 0.496086, -0.039043,
		40.553852, 36.514339, 41.184589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.390800, 35.704453, 41.592880>,  <39.946674, 36.167080, 41.211918>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.390800, 35.704453, 41.592880> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.575375, 36.059311, 41.595520>,  <40.686119, 36.272228, 41.597103>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.575375, 36.059311, 41.595520>,  <40.390800, 35.704453, 41.592880>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.575375, 36.059311, 41.595520> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145237, -0.082882, 0.985919,
		0.875204, -0.453982, -0.167091,
		0.461438, 0.887148, 0.006604,
		40.713806, 36.325455, 41.597500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.697006, 35.114388, 41.221043>,  <40.390800, 35.704453, 41.592880>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.697006, 35.114388, 41.221043> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.352127, 34.925938, 41.295506>,  <40.145199, 34.812870, 41.340183>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.352127, 34.925938, 41.295506>,  <40.697006, 35.114388, 41.221043>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.352127, 34.925938, 41.295506> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384974, 0.370551, -0.845274,
		0.329239, -0.800465, -0.500857,
		-0.862204, -0.471114, 0.186158,
		40.093468, 34.784603, 41.351353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.455406, 34.808750, 40.613689>,  <40.697006, 35.114388, 41.221043>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.455406, 34.808750, 40.613689> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.111645, 34.815704, 40.818092>,  <39.905388, 34.819878, 40.940735>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.111645, 34.815704, 40.818092>,  <40.455406, 34.808750, 40.613689>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.111645, 34.815704, 40.818092> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464018, 0.393228, -0.793763,
		-0.214744, -0.919277, -0.329872,
		-0.859402, 0.017389, 0.511004,
		39.853825, 34.820923, 40.971394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.978348, 34.510391, 40.213444>,  <40.455406, 34.808750, 40.613689>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.978348, 34.510391, 40.213444> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.735954, 34.699066, 40.469662>,  <39.590519, 34.812271, 40.623390>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.735954, 34.699066, 40.469662>,  <39.978348, 34.510391, 40.213444>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.735954, 34.699066, 40.469662> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.610076, 0.241166, -0.754749,
		-0.510486, -0.848142, 0.141627,
		-0.605979, 0.471692, 0.640543,
		39.554161, 34.840572, 40.661823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.366695, 34.254642, 40.061401>,  <39.978348, 34.510391, 40.213444>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.366695, 34.254642, 40.061401> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.271358, 34.593006, 40.252247>,  <39.214157, 34.796024, 40.366753>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.271358, 34.593006, 40.252247>,  <39.366695, 34.254642, 40.061401>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.271358, 34.593006, 40.252247> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.560670, 0.281289, -0.778797,
		-0.792996, -0.453123, 0.407232,
		-0.238341, 0.845906, 0.477114,
		39.199856, 34.846779, 40.395382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.722645, 34.326168, 39.900536>,  <39.366695, 34.254642, 40.061401>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.722645, 34.326168, 39.900536> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.843189, 34.691200, 40.011086>,  <38.915516, 34.910217, 40.077415>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.843189, 34.691200, 40.011086>,  <38.722645, 34.326168, 39.900536>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.843189, 34.691200, 40.011086> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475229, 0.395034, -0.786197,
		-0.826644, 0.105588, 0.552731,
		0.301360, 0.912578, 0.276374,
		38.933598, 34.964973, 40.093998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.082718, 34.772781, 40.087673>,  <38.722645, 34.326168, 39.900536>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.082718, 34.772781, 40.087673> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.392700, 35.000301, 39.977470>,  <38.578690, 35.136814, 39.911350>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.392700, 35.000301, 39.977470>,  <38.082718, 34.772781, 40.087673>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.392700, 35.000301, 39.977470> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556934, 0.408533, -0.723136,
		-0.298768, 0.713839, 0.633381,
		0.774960, 0.568802, -0.275504,
		38.625187, 35.170940, 39.894817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.733040, 35.221298, 39.758614>,  <38.082718, 34.772781, 40.087673>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.733040, 35.221298, 39.758614> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.097763, 35.316032, 39.624435>,  <38.316597, 35.372871, 39.543930>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.097763, 35.316032, 39.624435>,  <37.733040, 35.221298, 39.758614>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.097763, 35.316032, 39.624435> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382972, 0.195777, -0.902776,
		-0.148138, 0.951620, 0.269212,
		0.911804, 0.236836, -0.335442,
		38.371304, 35.387085, 39.523804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.620964, 35.828804, 39.441940>,  <37.733040, 35.221298, 39.758614>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.620964, 35.828804, 39.441940> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.946274, 35.652550, 39.289932>,  <38.141460, 35.546799, 39.198727>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.946274, 35.652550, 39.289932>,  <37.620964, 35.828804, 39.441940>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.946274, 35.652550, 39.289932> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344104, 0.162454, -0.924771,
		0.469223, 0.882864, -0.019504,
		0.813278, -0.440635, -0.380024,
		38.190258, 35.520359, 39.175926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.744835, 36.189827, 38.906944>,  <37.620964, 35.828804, 39.441940>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.744835, 36.189827, 38.906944> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.968060, 35.868015, 38.825657>,  <38.101994, 35.674927, 38.776886>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.968060, 35.868015, 38.825657>,  <37.744835, 36.189827, 38.906944>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.968060, 35.868015, 38.825657> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215136, 0.096247, -0.971829,
		0.801428, 0.586057, -0.119373,
		0.558058, -0.804533, -0.203217,
		38.135475, 35.626656, 38.764690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.036175, 36.360779, 38.274582>,  <37.744835, 36.189827, 38.906944>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.036175, 36.360779, 38.274582> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.104691, 35.966736, 38.280655>,  <38.145802, 35.730312, 38.284298>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.104691, 35.966736, 38.280655>,  <38.036175, 36.360779, 38.274582>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.104691, 35.966736, 38.280655> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052835, -0.024576, -0.998301,
		0.983802, 0.170199, -0.056257,
		0.171293, -0.985103, 0.015185,
		38.156078, 35.671204, 38.285210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.625660, 36.320442, 37.771435>,  <38.036175, 36.360779, 38.274582>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.625660, 36.320442, 37.771435> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.439041, 35.969589, 37.817009>,  <38.327072, 35.759079, 37.844353>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.439041, 35.969589, 37.817009>,  <38.625660, 36.320442, 37.771435>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.439041, 35.969589, 37.817009> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099617, -0.180102, -0.978591,
		0.878871, -0.445205, 0.171403,
		-0.466543, -0.877129, 0.113936,
		38.299080, 35.706451, 37.851189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.021854, 35.648460, 37.551872>,  <38.625660, 36.320442, 37.771435>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.021854, 35.648460, 37.551872> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.626503, 35.607719, 37.506725>,  <38.389294, 35.583275, 37.479637>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.626503, 35.607719, 37.506725>,  <39.021854, 35.648460, 37.551872>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.626503, 35.607719, 37.506725> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133160, -0.221799, -0.965957,
		0.073353, -0.969758, 0.232784,
		-0.988376, -0.101854, -0.112863,
		38.329990, 35.577164, 37.472866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<42.016926, 32.429050, 43.768787> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.685307, 32.559937, 43.950169>,  <41.486336, 32.638470, 44.058998>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.685307, 32.559937, 43.950169>,  <42.016926, 32.429050, 43.768787>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.685307, 32.559937, 43.950169> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347601, 0.333637, -0.876276,
		-0.438018, -0.884091, -0.162859,
		-0.829044, 0.327215, 0.453450,
		41.436592, 32.658100, 44.086205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.478466, 32.244774, 43.281624>,  <42.016926, 32.429050, 43.768787>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.478466, 32.244774, 43.281624> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.314632, 32.523109, 43.517605>,  <41.216331, 32.690109, 43.659195>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.314632, 32.523109, 43.517605>,  <41.478466, 32.244774, 43.281624>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.314632, 32.523109, 43.517605> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420887, 0.429615, -0.798927,
		-0.809379, -0.575533, 0.116906,
		-0.409584, 0.695840, 0.589956,
		41.191757, 32.731861, 43.694592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.863850, 32.307434, 43.029099>,  <41.478466, 32.244774, 43.281624>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.863850, 32.307434, 43.029099> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.886787, 32.643696, 43.244507>,  <40.900551, 32.845455, 43.373753>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.886787, 32.643696, 43.244507>,  <40.863850, 32.307434, 43.029099>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.886787, 32.643696, 43.244507> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.588032, 0.464353, -0.662264,
		-0.806802, -0.278694, 0.520960,
		0.057341, 0.840658, 0.538522,
		40.903988, 32.895893, 43.406063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.131702, 32.590290, 43.102306>,  <40.863850, 32.307434, 43.029099>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.131702, 32.590290, 43.102306> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.393440, 32.885639, 43.167587>,  <40.550484, 33.062851, 43.206757>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.393440, 32.885639, 43.167587>,  <40.131702, 32.590290, 43.102306>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.393440, 32.885639, 43.167587> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504424, 0.586984, -0.633250,
		-0.563374, 0.332040, 0.756544,
		0.654343, 0.738376, 0.163203,
		40.589745, 33.107151, 43.216549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.782001, 33.081406, 43.211292>,  <40.131702, 32.590290, 43.102306>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.782001, 33.081406, 43.211292> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.116241, 33.270737, 43.099773>,  <40.316788, 33.384335, 43.032864>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.116241, 33.270737, 43.099773>,  <39.782001, 33.081406, 43.211292>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.116241, 33.270737, 43.099773> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506625, 0.467807, -0.724215,
		-0.212369, 0.746401, 0.630702,
		0.835602, 0.473330, -0.278798,
		40.366920, 33.412735, 43.016132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.555138, 33.816135, 43.128166>,  <39.782001, 33.081406, 43.211292>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.555138, 33.816135, 43.128166> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.900772, 33.783554, 42.929478>,  <40.108150, 33.764004, 42.810265>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.900772, 33.783554, 42.929478>,  <39.555138, 33.816135, 43.128166>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.900772, 33.783554, 42.929478> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352132, 0.607322, -0.712154,
		0.359674, 0.790269, 0.496094,
		0.864082, -0.081453, -0.496717,
		40.159996, 33.759117, 42.780464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.735928, 34.526272, 42.939564>,  <39.555138, 33.816135, 43.128166>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.735928, 34.526272, 42.939564> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.952908, 34.298599, 42.692410>,  <40.083096, 34.161995, 42.544117>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.952908, 34.298599, 42.692410>,  <39.735928, 34.526272, 42.939564>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.952908, 34.298599, 42.692410> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170317, 0.645713, -0.744343,
		0.822640, 0.509007, 0.253328,
		0.542453, -0.569180, -0.617882,
		40.115643, 34.127846, 42.507046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.173351, 34.970280, 42.503933>,  <39.735928, 34.526272, 42.939564>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.173351, 34.970280, 42.503933> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.126740, 34.639774, 42.283493>,  <40.098770, 34.441471, 42.151230>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.126740, 34.639774, 42.283493>,  <40.173351, 34.970280, 42.503933>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.126740, 34.639774, 42.283493> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187424, 0.563206, -0.804780,
		0.975342, 0.009505, -0.220494,
		-0.116534, -0.826262, -0.551100,
		40.091778, 34.391895, 42.118164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.607906, 35.154709, 42.011501>,  <40.173351, 34.970280, 42.503933>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.607906, 35.154709, 42.011501> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.351902, 34.868858, 41.898579>,  <40.198299, 34.697350, 41.830826>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.351902, 34.868858, 41.898579>,  <40.607906, 35.154709, 42.011501>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.351902, 34.868858, 41.898579> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127691, 0.461229, -0.878045,
		0.757683, -0.525909, -0.386442,
		-0.640010, -0.714625, -0.282311,
		40.159901, 34.654472, 41.813885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.164494, 35.678005, 41.977863>,  <40.607906, 35.154709, 42.011501>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.164494, 35.678005, 41.977863> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.077347, 36.068214, 41.989746>,  <41.025059, 36.302341, 41.996876>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.077347, 36.068214, 41.989746>,  <41.164494, 35.678005, 41.977863>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.077347, 36.068214, 41.989746> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081366, -0.012177, 0.996610,
		0.972580, 0.219548, -0.076721,
		-0.217870, 0.975526, 0.029707,
		41.011986, 36.360870, 41.998657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.652241, 36.123455, 42.513790>,  <41.164494, 35.678005, 41.977863>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.652241, 36.123455, 42.513790> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.339626, 36.369537, 42.472370>,  <41.152058, 36.517185, 42.447517>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.339626, 36.369537, 42.472370>,  <41.652241, 36.123455, 42.513790>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.339626, 36.369537, 42.472370> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050879, 0.228281, 0.972265,
		0.621777, 0.754595, -0.209711,
		-0.781540, 0.615202, -0.103546,
		41.105164, 36.554096, 42.441307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.870064, 36.508171, 43.076145>,  <41.652241, 36.123455, 42.513790>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.870064, 36.508171, 43.076145> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.509872, 36.630508, 42.952473>,  <41.293758, 36.703911, 42.878269>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.509872, 36.630508, 42.952473>,  <41.870064, 36.508171, 43.076145>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.509872, 36.630508, 42.952473> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229458, 0.269811, 0.935175,
		0.369442, 0.913050, -0.172780,
		-0.900479, 0.305847, -0.309186,
		41.239727, 36.722263, 42.859718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.727089, 37.192242, 43.354347>,  <41.870064, 36.508171, 43.076145>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.727089, 37.192242, 43.354347> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.371986, 37.018173, 43.294319>,  <41.158924, 36.913731, 43.258305>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.371986, 37.018173, 43.294319>,  <41.727089, 37.192242, 43.354347>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.371986, 37.018173, 43.294319> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224189, 0.124012, 0.966623,
		-0.402037, 0.891766, -0.207653,
		-0.887753, -0.435172, -0.150066,
		41.105659, 36.887623, 43.249298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.257771, 37.656441, 43.672295>,  <41.727089, 37.192242, 43.354347>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.257771, 37.656441, 43.672295> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.070305, 37.303185, 43.664059>,  <40.957825, 37.091232, 43.659119>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.070305, 37.303185, 43.664059>,  <41.257771, 37.656441, 43.672295>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.070305, 37.303185, 43.664059> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237355, 0.103443, 0.965899,
		-0.850892, 0.457567, -0.258097,
		-0.468662, -0.883137, -0.020587,
		40.929707, 37.038242, 43.657883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.506817, 37.715786, 43.969868>,  <41.257771, 37.656441, 43.672295>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.506817, 37.715786, 43.969868> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.620529, 37.333416, 43.999218>,  <40.688759, 37.103992, 44.016827>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.620529, 37.333416, 43.999218>,  <40.506817, 37.715786, 43.969868>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.620529, 37.333416, 43.999218> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108824, 0.043864, 0.993093,
		-0.952544, -0.290305, -0.091559,
		0.284284, -0.955928, 0.073374,
		40.705814, 37.046638, 44.021229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.091614, 37.466778, 44.487110>,  <40.506817, 37.715786, 43.969868>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.091614, 37.466778, 44.487110> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.380604, 37.190937, 44.467194>,  <40.553997, 37.025433, 44.455242>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.380604, 37.190937, 44.467194>,  <40.091614, 37.466778, 44.487110>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.380604, 37.190937, 44.467194> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012110, -0.059382, 0.998162,
		-0.691291, -0.721750, -0.034551,
		0.722475, -0.689602, -0.049791,
		40.597347, 36.984058, 44.452255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.871235, 36.952412, 44.943676>,  <40.091614, 37.466778, 44.487110>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.871235, 36.952412, 44.943676> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.261845, 36.886848, 44.887756>,  <40.496208, 36.847511, 44.854206>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.261845, 36.886848, 44.887756>,  <39.871235, 36.952412, 44.943676>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.261845, 36.886848, 44.887756> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105040, -0.204278, 0.973261,
		-0.188068, -0.965095, -0.182267,
		0.976523, -0.163894, -0.139792,
		40.554802, 36.837677, 44.845818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.982246, 36.390678, 45.290367>,  <39.871235, 36.952412, 44.943676>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.982246, 36.390678, 45.290367> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.357731, 36.526493, 45.266579>,  <40.583023, 36.607983, 45.252304>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.357731, 36.526493, 45.266579>,  <39.982246, 36.390678, 45.290367>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.357731, 36.526493, 45.266579> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184661, -0.349649, 0.918502,
		0.291069, -0.873191, -0.390918,
		0.938711, 0.339535, -0.059473,
		40.639343, 36.628353, 45.248737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.469749, 35.859074, 45.396793>,  <39.982246, 36.390678, 45.290367>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.469749, 35.859074, 45.396793> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.660507, 36.199818, 45.483429>,  <40.774960, 36.404263, 45.535412>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.660507, 36.199818, 45.483429>,  <40.469749, 35.859074, 45.396793>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.660507, 36.199818, 45.483429> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228733, -0.358203, 0.905192,
		0.848680, -0.382135, -0.365672,
		0.476890, 0.851859, 0.216593,
		40.803574, 36.455376, 45.548409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.048161, 35.692024, 45.760948>,  <40.469749, 35.859074, 45.396793>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.048161, 35.692024, 45.760948> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.049187, 36.083698, 45.842125>,  <41.049801, 36.318703, 45.890831>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.049187, 36.083698, 45.842125>,  <41.048161, 35.692024, 45.760948>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.049187, 36.083698, 45.842125> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134844, -0.201424, 0.970178,
		0.990864, 0.024880, -0.132554,
		0.002561, 0.979188, 0.202938,
		41.049953, 36.377453, 45.903008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.544163, 35.757771, 46.243149>,  <41.048161, 35.692024, 45.760948>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.544163, 35.757771, 46.243149> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.341072, 36.099953, 46.283958>,  <41.219215, 36.305260, 46.308445>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.341072, 36.099953, 46.283958>,  <41.544163, 35.757771, 46.243149>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.341072, 36.099953, 46.283958> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130344, -0.040788, 0.990629,
		0.851599, 0.516271, -0.090794,
		-0.507730, 0.855453, 0.102027,
		41.188751, 36.356590, 46.314568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.000416, 36.234528, 46.652485>,  <41.544163, 35.757771, 46.243149>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.000416, 36.234528, 46.652485> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.625797, 36.369118, 46.691814>,  <41.401028, 36.449871, 46.715412>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.625797, 36.369118, 46.691814>,  <42.000416, 36.234528, 46.652485>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.625797, 36.369118, 46.691814> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090292, -0.039489, 0.995132,
		0.338716, 0.940865, 0.006603,
		-0.936546, 0.336471, 0.098328,
		41.344833, 36.470058, 46.721313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.011799, 36.922581, 47.105839>,  <42.000416, 36.234528, 46.652485>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.011799, 36.922581, 47.105839> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.653931, 36.743896, 47.107845>,  <41.439209, 36.636688, 47.109051>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.653931, 36.743896, 47.107845>,  <42.011799, 36.922581, 47.105839>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.653931, 36.743896, 47.107845> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058618, -0.106244, 0.992611,
		-0.442873, 0.888350, 0.121238,
		-0.894666, -0.446707, 0.005021,
		41.385532, 36.609886, 47.109352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<33.162323, 32.304230, 47.179790> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.510746, 32.245586, 46.992271>,  <33.719799, 32.210400, 46.879761>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.510746, 32.245586, 46.992271>,  <33.162323, 32.304230, 47.179790>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.510746, 32.245586, 46.992271> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365198, 0.444962, -0.817704,
		0.328477, 0.883468, 0.334046,
		0.871053, -0.146604, -0.468800,
		33.772060, 32.201607, 46.851631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.400543, 32.990448, 46.816727>,  <33.162323, 32.304230, 47.179790>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.400543, 32.990448, 46.816727> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.581200, 32.683716, 46.634300>,  <33.689594, 32.499676, 46.524845>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.581200, 32.683716, 46.634300>,  <33.400543, 32.990448, 46.816727>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.581200, 32.683716, 46.634300> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190318, 0.416600, -0.888945,
		0.871667, 0.488278, 0.042210,
		0.451637, -0.766831, -0.456064,
		33.716690, 32.453667, 46.497482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.871758, 33.358574, 46.277538>,  <33.400543, 32.990448, 46.816727>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.871758, 33.358574, 46.277538> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.840862, 32.975140, 46.167889>,  <33.822327, 32.745079, 46.102100>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.840862, 32.975140, 46.167889>,  <33.871758, 33.358574, 46.277538>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.840862, 32.975140, 46.167889> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198066, 0.284216, -0.938078,
		0.977141, -0.018162, -0.211816,
		-0.077239, -0.958589, -0.274121,
		33.817692, 32.687565, 46.085651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.212734, 33.413982, 45.614140>,  <33.871758, 33.358574, 46.277538>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.212734, 33.413982, 45.614140> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.990772, 33.081242, 45.610260>,  <33.857594, 32.881596, 45.607933>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.990772, 33.081242, 45.610260>,  <34.212734, 33.413982, 45.614140>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.990772, 33.081242, 45.610260> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305072, 0.214328, -0.927898,
		0.773955, -0.511940, -0.372708,
		-0.554909, -0.831854, -0.009702,
		33.824299, 32.831684, 45.607349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.418423, 33.062698, 45.083488>,  <34.212734, 33.413982, 45.614140>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.418423, 33.062698, 45.083488> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.037647, 32.984440, 45.177757>,  <33.809181, 32.937485, 45.234318>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.037647, 32.984440, 45.177757>,  <34.418423, 33.062698, 45.083488>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.037647, 32.984440, 45.177757> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275253, 0.208904, -0.938400,
		0.134355, -0.958167, -0.252714,
		-0.951937, -0.195639, 0.235671,
		33.752068, 32.925747, 45.248459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.313633, 32.471733, 44.691715>,  <34.418423, 33.062698, 45.083488>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.313633, 32.471733, 44.691715> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.943935, 32.610725, 44.755009>,  <33.722118, 32.694118, 44.792984>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.943935, 32.610725, 44.755009>,  <34.313633, 32.471733, 44.691715>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.943935, 32.610725, 44.755009> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144426, 0.065474, -0.987347,
		-0.353443, -0.935399, -0.010328,
		-0.924240, 0.347479, 0.158237,
		33.666664, 32.714970, 44.802479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.684193, 32.088528, 44.248135>,  <34.313633, 32.471733, 44.691715>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.684193, 32.088528, 44.248135> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.578560, 32.464153, 44.336163>,  <33.515182, 32.689529, 44.388977>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.578560, 32.464153, 44.336163>,  <33.684193, 32.088528, 44.248135>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.578560, 32.464153, 44.336163> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323750, 0.128626, -0.937359,
		-0.908542, -0.318782, 0.270053,
		-0.264077, 0.939060, 0.220068,
		33.499336, 32.745872, 44.402184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.166428, 32.168884, 43.808197>,  <33.684193, 32.088528, 44.248135>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.166428, 32.168884, 43.808197> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.187096, 32.550041, 43.927742>,  <33.199497, 32.778736, 43.999470>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.187096, 32.550041, 43.927742>,  <33.166428, 32.168884, 43.808197>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.187096, 32.550041, 43.927742> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336793, 0.298360, -0.893057,
		-0.940160, -0.054509, 0.336346,
		0.051673, 0.952895, 0.298865,
		33.202599, 32.835911, 44.017403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.725643, 32.408386, 43.355328>,  <33.166428, 32.168884, 43.808197>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.725643, 32.408386, 43.355328> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.866695, 32.752876, 43.501717>,  <32.951324, 32.959572, 43.589550>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.866695, 32.752876, 43.501717>,  <32.725643, 32.408386, 43.355328>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.866695, 32.752876, 43.501717> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212636, 0.454613, -0.864936,
		-0.911284, 0.227181, 0.343438,
		0.352628, 0.861229, 0.365974,
		32.972485, 33.011246, 43.611507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.206348, 32.992290, 43.260124>,  <32.725643, 32.408386, 43.355328>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.206348, 32.992290, 43.260124> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.570679, 33.156063, 43.281155>,  <32.789276, 33.254326, 43.293774>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.570679, 33.156063, 43.281155>,  <32.206348, 32.992290, 43.260124>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.570679, 33.156063, 43.281155> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206928, 0.563085, -0.800072,
		-0.357179, 0.717847, 0.597595,
		0.910826, 0.409428, 0.052580,
		32.843925, 33.278893, 43.296928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.151089, 33.762165, 43.155045>,  <32.206348, 32.992290, 43.260124>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.151089, 33.762165, 43.155045> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.523350, 33.655865, 43.054443>,  <32.746708, 33.592087, 42.994083>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.523350, 33.655865, 43.054443>,  <32.151089, 33.762165, 43.155045>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.523350, 33.655865, 43.054443> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078372, 0.526644, -0.846466,
		0.357400, 0.807481, 0.469298,
		0.930657, -0.265747, -0.251506,
		32.802547, 33.576141, 42.978992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.388550, 34.266136, 42.681351>,  <32.151089, 33.762165, 43.155045>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.388550, 34.266136, 42.681351> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.667900, 33.990196, 42.605057>,  <32.835510, 33.824631, 42.559280>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.667900, 33.990196, 42.605057>,  <32.388550, 34.266136, 42.681351>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.667900, 33.990196, 42.605057> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079908, 0.339980, -0.937032,
		0.711257, 0.639158, 0.292558,
		0.698375, -0.689848, -0.190739,
		32.877411, 33.783241, 42.547836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.972603, 34.617336, 42.471764>,  <32.388550, 34.266136, 42.681351>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.972603, 34.617336, 42.471764> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.062824, 34.244400, 42.358719>,  <33.116959, 34.020638, 42.290894>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.062824, 34.244400, 42.358719>,  <32.972603, 34.617336, 42.471764>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.062824, 34.244400, 42.358719> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163361, 0.322171, -0.932480,
		0.960436, 0.164160, 0.224975,
		0.225556, -0.932340, -0.282607,
		33.130489, 33.964699, 42.273937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.729782, 34.656380, 42.139828>,  <32.972603, 34.617336, 42.471764>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.729782, 34.656380, 42.139828> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.520260, 34.356960, 41.977196>,  <33.394547, 34.177311, 41.879616>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.520260, 34.356960, 41.977196>,  <33.729782, 34.656380, 42.139828>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.520260, 34.356960, 41.977196> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132872, 0.399655, -0.906985,
		0.841410, -0.529109, -0.109882,
		-0.523808, -0.748545, -0.406577,
		33.363117, 34.132397, 41.855221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.401840, 34.719673, 42.170509>,  <33.729782, 34.656380, 42.139828>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.401840, 34.719673, 42.170509> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.575588, 35.072632, 42.242840>,  <34.679836, 35.284409, 42.286236>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.575588, 35.072632, 42.242840>,  <34.401840, 34.719673, 42.170509>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.575588, 35.072632, 42.242840> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108486, -0.250540, 0.962009,
		0.894177, -0.398252, -0.204555,
		0.434371, 0.882397, 0.180823,
		34.705898, 35.337353, 42.297085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.055950, 34.599735, 42.620342>,  <34.401840, 34.719673, 42.170509>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.055950, 34.599735, 42.620342> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.929409, 34.974232, 42.681492>,  <34.853485, 35.198929, 42.718182>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.929409, 34.974232, 42.681492>,  <35.055950, 34.599735, 42.620342>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.929409, 34.974232, 42.681492> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134985, -0.115089, 0.984141,
		0.938990, 0.331969, -0.089970,
		-0.316350, 0.936243, 0.152878,
		34.834503, 35.255104, 42.727356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.454536, 34.922062, 43.048401>,  <35.055950, 34.599735, 42.620342>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.454536, 34.922062, 43.048401> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.107433, 35.116859, 43.088051>,  <34.899170, 35.233738, 43.111843>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.107433, 35.116859, 43.088051>,  <35.454536, 34.922062, 43.048401>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.107433, 35.116859, 43.088051> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029603, -0.148458, 0.988476,
		0.496100, 0.860695, 0.114409,
		-0.867761, 0.486995, 0.099129,
		34.847107, 35.262959, 43.117790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.664520, 35.483059, 43.365170>,  <35.454536, 34.922062, 43.048401>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.664520, 35.483059, 43.365170> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.274902, 35.449596, 43.449299>,  <35.041130, 35.429520, 43.499779>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.274902, 35.449596, 43.449299>,  <35.664520, 35.483059, 43.365170>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.274902, 35.449596, 43.449299> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203051, 0.087688, 0.975234,
		-0.100031, 0.992629, -0.068425,
		-0.974045, -0.083659, 0.210325,
		34.982689, 35.424500, 43.512398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.580254, 36.022762, 43.834415>,  <35.664520, 35.483059, 43.365170>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.580254, 36.022762, 43.834415> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.261471, 35.791451, 43.904224>,  <35.070202, 35.652664, 43.946110>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.261471, 35.791451, 43.904224>,  <35.580254, 36.022762, 43.834415>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.261471, 35.791451, 43.904224> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261447, -0.069771, 0.962693,
		-0.544527, 0.812851, 0.206794,
		-0.796954, -0.578278, 0.174525,
		35.022385, 35.617966, 43.956581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.304844, 36.177929, 44.481228>,  <35.580254, 36.022762, 43.834415>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.304844, 36.177929, 44.481228> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.118633, 35.828011, 44.427528>,  <35.006905, 35.618061, 44.395309>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.118633, 35.828011, 44.427528>,  <35.304844, 36.177929, 44.481228>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.118633, 35.828011, 44.427528> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133331, -0.219279, 0.966509,
		-0.874932, 0.432038, 0.218718,
		-0.465529, -0.874791, -0.134250,
		34.978973, 35.565575, 44.387253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.773792, 36.092289, 44.977039>,  <35.304844, 36.177929, 44.481228>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.773792, 36.092289, 44.977039> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.890282, 35.727776, 44.860592>,  <34.960175, 35.509068, 44.790726>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.890282, 35.727776, 44.860592>,  <34.773792, 36.092289, 44.977039>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.890282, 35.727776, 44.860592> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101722, -0.273084, 0.956597,
		-0.951231, -0.308198, 0.013168,
		0.291226, -0.911284, -0.291117,
		34.977650, 35.454391, 44.773258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.423290, 35.575768, 45.471134>,  <34.773792, 36.092289, 44.977039>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.423290, 35.575768, 45.471134> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.724670, 35.359951, 45.320824>,  <34.905499, 35.230461, 45.230637>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.724670, 35.359951, 45.320824>,  <34.423290, 35.575768, 45.471134>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.724670, 35.359951, 45.320824> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192832, -0.365057, 0.910796,
		-0.628594, -0.758699, -0.171010,
		0.753449, -0.539545, -0.375775,
		34.950706, 35.198086, 45.208092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.295891, 34.872433, 45.786636>,  <34.423290, 35.575768, 45.471134>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.295891, 34.872433, 45.786636> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.672527, 34.885338, 45.652550>,  <34.898510, 34.893082, 45.572098>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.672527, 34.885338, 45.652550>,  <34.295891, 34.872433, 45.786636>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.672527, 34.885338, 45.652550> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293094, -0.568725, 0.768536,
		-0.165850, -0.821895, -0.544961,
		0.941589, 0.032263, -0.335215,
		34.955006, 34.895016, 45.551987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.609585, 34.236301, 45.969631>,  <34.295891, 34.872433, 45.786636>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.609585, 34.236301, 45.969631> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.921204, 34.479610, 45.908855>,  <35.108173, 34.625595, 45.872391>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.921204, 34.479610, 45.908855>,  <34.609585, 34.236301, 45.969631>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.921204, 34.479610, 45.908855> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413540, -0.316392, 0.853745,
		0.471242, -0.727940, -0.498031,
		0.779048, 0.608276, -0.151935,
		35.154919, 34.662094, 45.863274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.305256, 33.816280, 45.987137>,  <34.609585, 34.236301, 45.969631>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.305256, 33.816280, 45.987137> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.353771, 34.206314, 46.061436>,  <35.382881, 34.440334, 46.106014>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.353771, 34.206314, 46.061436>,  <35.305256, 33.816280, 45.987137>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.353771, 34.206314, 46.061436> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428658, -0.220228, 0.876215,
		0.895289, -0.026653, -0.444688,
		0.121287, 0.975084, 0.185743,
		35.390156, 34.498840, 46.117157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.019405, 33.805893, 46.373089>,  <35.305256, 33.816280, 45.987137>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.019405, 33.805893, 46.373089> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.836502, 34.156345, 46.434158>,  <35.726761, 34.366619, 46.470798>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.836502, 34.156345, 46.434158>,  <36.019405, 33.805893, 46.373089>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.836502, 34.156345, 46.434158> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233751, -0.047232, 0.971149,
		0.858066, 0.479750, -0.183200,
		-0.457256, 0.876133, 0.152671,
		35.699326, 34.419186, 46.479961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.555325, 34.302219, 46.674461>,  <36.019405, 33.805893, 46.373089>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.555325, 34.302219, 46.674461> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.190521, 34.438110, 46.766392>,  <35.971638, 34.519646, 46.821548>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.190521, 34.438110, 46.766392>,  <36.555325, 34.302219, 46.674461>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.190521, 34.438110, 46.766392> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252648, 0.023901, 0.967263,
		0.323112, 0.940220, -0.107630,
		-0.912013, 0.339727, 0.229822,
		35.916916, 34.540028, 46.835339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.671116, 34.828835, 47.181252>,  <36.555325, 34.302219, 46.674461>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.671116, 34.828835, 47.181252> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.292091, 34.715870, 47.241093>,  <36.064678, 34.648090, 47.276997>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.292091, 34.715870, 47.241093>,  <36.671116, 34.828835, 47.181252>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.292091, 34.715870, 47.241093> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187324, -0.111529, 0.975946,
		-0.258932, 0.952788, 0.158582,
		-0.947557, -0.282410, 0.149602,
		36.007824, 34.631145, 47.285973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.857265, 35.550465, 47.062019>,  <36.671116, 34.828835, 47.181252>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.857265, 35.550465, 47.062019> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.202427, 35.744370, 47.119156>,  <37.409523, 35.860714, 47.153439>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.202427, 35.744370, 47.119156>,  <36.857265, 35.550465, 47.062019>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.202427, 35.744370, 47.119156> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065258, 0.387171, -0.919695,
		-0.501139, 0.784286, 0.365726,
		0.862902, 0.484762, 0.142845,
		37.461296, 35.889797, 47.162010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.695190, 36.218880, 46.827812>,  <36.857265, 35.550465, 47.062019>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.695190, 36.218880, 46.827812> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.095169, 36.215324, 46.830196>,  <37.335155, 36.213192, 46.831627>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.095169, 36.215324, 46.830196>,  <36.695190, 36.218880, 46.827812>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.095169, 36.215324, 46.830196> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008938, 0.388019, -0.921608,
		0.005877, 0.921608, 0.388077,
		0.999943, -0.008885, 0.005957,
		37.395153, 36.212658, 46.831982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.946400, 36.866440, 46.421036>,  <36.695190, 36.218880, 46.827812>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.946400, 36.866440, 46.421036> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.290413, 36.662758, 46.433960>,  <37.496822, 36.540546, 46.441715>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.290413, 36.662758, 46.433960>,  <36.946400, 36.866440, 46.421036>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.290413, 36.662758, 46.433960> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224345, 0.320511, -0.920295,
		0.458264, 0.798737, 0.389889,
		0.860037, -0.509207, 0.032314,
		37.548424, 36.509995, 46.443653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.507797, 37.379906, 46.210506>,  <36.946400, 36.866440, 46.421036>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.507797, 37.379906, 46.210506> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.621334, 37.000896, 46.151672>,  <37.689457, 36.773491, 46.116371>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.621334, 37.000896, 46.151672>,  <37.507797, 37.379906, 46.210506>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.621334, 37.000896, 46.151672> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413069, 0.259256, -0.873018,
		0.865338, 0.187041, 0.464980,
		0.283839, -0.947524, -0.147083,
		37.706486, 36.716640, 46.107548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.285507, 37.411785, 45.958645>,  <37.507797, 37.379906, 46.210506>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.285507, 37.411785, 45.958645> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.143932, 37.055054, 45.845959>,  <38.058987, 36.841015, 45.778347>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.143932, 37.055054, 45.845959>,  <38.285507, 37.411785, 45.958645>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.143932, 37.055054, 45.845959> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256919, 0.196914, -0.946160,
		0.899290, -0.407258, 0.159433,
		-0.353937, -0.891833, -0.281715,
		38.037750, 36.787502, 45.761444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.773258, 37.177521, 45.548347>,  <38.285507, 37.411785, 45.958645>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.773258, 37.177521, 45.548347> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.452148, 36.963966, 45.442127>,  <38.259483, 36.835835, 45.378395>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.452148, 36.963966, 45.442127>,  <38.773258, 37.177521, 45.548347>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.452148, 36.963966, 45.442127> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218261, 0.151340, -0.964084,
		0.554899, -0.831903, -0.004966,
		-0.802776, -0.533885, -0.265551,
		38.211315, 36.803802, 45.362461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.020973, 36.745174, 45.042068>,  <38.773258, 37.177521, 45.548347>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.020973, 36.745174, 45.042068> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.625889, 36.771156, 44.985203>,  <38.388840, 36.786747, 44.951084>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.625889, 36.771156, 44.985203>,  <39.020973, 36.745174, 45.042068>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.625889, 36.771156, 44.985203> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145686, 0.053069, -0.987906,
		-0.056627, -0.996476, -0.061881,
		-0.987709, 0.064957, -0.142168,
		38.329575, 36.790642, 44.942551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.829823, 36.255024, 44.482018>,  <39.020973, 36.745174, 45.042068>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.829823, 36.255024, 44.482018> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.525043, 36.513767, 44.494717>,  <38.342175, 36.669014, 44.502335>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.525043, 36.513767, 44.494717>,  <38.829823, 36.255024, 44.482018>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.525043, 36.513767, 44.494717> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121276, 0.190660, -0.974136,
		-0.636180, -0.738392, -0.223722,
		-0.761949, 0.646858, 0.031745,
		38.296459, 36.707825, 44.504242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.355541, 36.027626, 44.007179>,  <38.829823, 36.255024, 44.482018>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.355541, 36.027626, 44.007179> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.270134, 36.413750, 44.067287>,  <38.218887, 36.645424, 44.103352>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.270134, 36.413750, 44.067287>,  <38.355541, 36.027626, 44.007179>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.270134, 36.413750, 44.067287> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064116, 0.167329, -0.983814,
		-0.974832, -0.200429, -0.097620,
		-0.213520, 0.965313, 0.150267,
		38.206078, 36.703342, 44.112366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.924976, 36.160191, 43.352909>,  <38.355541, 36.027626, 44.007179>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.924976, 36.160191, 43.352909> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.004322, 36.527664, 43.489536>,  <38.051929, 36.748150, 43.571514>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.004322, 36.527664, 43.489536>,  <37.924976, 36.160191, 43.352909>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.004322, 36.527664, 43.489536> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074767, 0.333295, -0.939853,
		-0.977273, 0.211970, -0.002574,
		0.198363, 0.918686, 0.341569,
		38.063831, 36.803268, 43.592007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.430283, 36.531788, 43.104984>,  <37.924976, 36.160191, 43.352909>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.430283, 36.531788, 43.104984> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.729397, 36.785599, 43.183159>,  <37.908863, 36.937885, 43.230064>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.729397, 36.785599, 43.183159>,  <37.430283, 36.531788, 43.104984>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.729397, 36.785599, 43.183159> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154052, 0.452136, -0.878545,
		-0.645823, 0.626855, 0.435850,
		0.747784, 0.634528, 0.195432,
		37.953732, 36.975956, 43.241787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.250538, 37.100735, 42.626762>,  <37.430283, 36.531788, 43.104984>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.250538, 37.100735, 42.626762> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.613163, 37.211803, 42.753910>,  <37.830738, 37.278446, 42.830200>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.613163, 37.211803, 42.753910>,  <37.250538, 37.100735, 42.626762>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.613163, 37.211803, 42.753910> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058542, 0.663119, -0.746222,
		-0.417989, 0.695106, 0.584904,
		0.906564, 0.277671, 0.317869,
		37.885132, 37.295105, 42.849270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.300915, 37.831703, 42.594185>,  <37.250538, 37.100735, 42.626762>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.300915, 37.831703, 42.594185> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.666073, 37.668938, 42.581280>,  <37.885170, 37.571278, 42.573536>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.666073, 37.668938, 42.581280>,  <37.300915, 37.831703, 42.594185>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.666073, 37.668938, 42.581280> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117591, 0.337853, -0.933824,
		0.390885, 0.848692, 0.356274,
		0.912897, -0.406912, -0.032264,
		37.939941, 37.546864, 42.571602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.799332, 38.361023, 42.478264>,  <37.300915, 37.831703, 42.594185>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.799332, 38.361023, 42.478264> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.936432, 38.008434, 42.348320>,  <38.018692, 37.796883, 42.270355>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.936432, 38.008434, 42.348320>,  <37.799332, 38.361023, 42.478264>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.936432, 38.008434, 42.348320> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171822, 0.398793, -0.900800,
		0.923580, 0.252932, 0.288143,
		0.342750, -0.881470, -0.324858,
		38.039257, 37.743992, 42.250862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<29.184687, 40.154179, 39.205967> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.424009, 40.467453, 39.138268>,  <29.567602, 40.655418, 39.097649>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.424009, 40.467453, 39.138268>,  <29.184687, 40.154179, 39.205967>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.424009, 40.467453, 39.138268> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165236, -0.086091, -0.982489,
		-0.784046, 0.615794, 0.077902,
		0.598305, 0.783189, -0.169251,
		29.603500, 40.702412, 39.087494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.772541, 40.637592, 38.937164>,  <29.184687, 40.154179, 39.205967>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.772541, 40.637592, 38.937164> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.137758, 40.727737, 38.801186>,  <29.356888, 40.781826, 38.719601>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.137758, 40.727737, 38.801186>,  <28.772541, 40.637592, 38.937164>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.137758, 40.727737, 38.801186> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312322, -0.149711, -0.938105,
		-0.262311, 0.962703, -0.066305,
		0.913043, 0.225366, -0.339944,
		29.411671, 40.795349, 38.699203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.609922, 41.089046, 38.366314>,  <28.772541, 40.637592, 38.937164>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.609922, 41.089046, 38.366314> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.980576, 40.950874, 38.306953>,  <29.202969, 40.867970, 38.271336>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.980576, 40.950874, 38.306953>,  <28.609922, 41.089046, 38.366314>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.980576, 40.950874, 38.306953> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277364, -0.361643, -0.890103,
		0.253805, 0.865961, -0.430922,
		0.926635, -0.345435, -0.148400,
		29.258566, 40.847244, 38.262432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.664871, 41.233131, 37.702736>,  <28.609922, 41.089046, 38.366314>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.664871, 41.233131, 37.702736> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.939783, 40.960129, 37.802200>,  <29.104731, 40.796329, 37.861881>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.939783, 40.960129, 37.802200>,  <28.664871, 41.233131, 37.702736>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.939783, 40.960129, 37.802200> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320171, -0.591908, -0.739686,
		0.652024, 0.428757, -0.625325,
		0.687281, -0.682504, 0.248663,
		29.145967, 40.755379, 37.876801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.945053, 41.070057, 37.106113>,  <28.664871, 41.233131, 37.702736>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.945053, 41.070057, 37.106113> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.032883, 40.752861, 37.333427>,  <29.085581, 40.562542, 37.469814>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.032883, 40.752861, 37.333427>,  <28.945053, 41.070057, 37.106113>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.032883, 40.752861, 37.333427> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106314, -0.598482, -0.794051,
		0.969786, 0.113937, -0.215719,
		0.219576, -0.792993, 0.568286,
		29.098755, 40.514965, 37.503914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.403843, 40.718178, 36.658501>,  <28.945053, 41.070057, 37.106113>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.403843, 40.718178, 36.658501> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.263285, 40.459709, 36.929493>,  <29.178949, 40.304626, 37.092091>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.263285, 40.459709, 36.929493>,  <29.403843, 40.718178, 36.658501>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.263285, 40.459709, 36.929493> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259191, -0.628205, -0.733607,
		0.899634, -0.433384, 0.053267,
		-0.351396, -0.646171, 0.677483,
		29.157866, 40.265858, 37.132736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.686665, 40.055305, 36.474457>,  <29.403843, 40.718178, 36.658501>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.686665, 40.055305, 36.474457> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.386356, 39.919529, 36.701126>,  <29.206171, 39.838062, 36.837128>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.386356, 39.919529, 36.701126>,  <29.686665, 40.055305, 36.474457>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.386356, 39.919529, 36.701126> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073534, -0.809588, -0.582375,
		0.656459, -0.478899, 0.582853,
		-0.750770, -0.339445, 0.566676,
		29.161125, 39.817696, 36.871128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.778807, 39.372372, 36.370304>,  <29.686665, 40.055305, 36.474457>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.778807, 39.372372, 36.370304> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.414207, 39.394840, 36.533287>,  <29.195448, 39.408321, 36.631077>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.414207, 39.394840, 36.533287>,  <29.778807, 39.372372, 36.370304>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.414207, 39.394840, 36.533287> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197832, -0.928392, -0.314566,
		0.360606, -0.367333, 0.857339,
		-0.911496, 0.056175, 0.407454,
		29.140759, 39.411694, 36.655521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.659178, 38.748135, 36.699215>,  <29.778807, 39.372372, 36.370304>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.659178, 38.748135, 36.699215> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.305935, 38.912144, 36.608006>,  <29.093988, 39.010551, 36.553280>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.305935, 38.912144, 36.608006>,  <29.659178, 38.748135, 36.699215>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.305935, 38.912144, 36.608006> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346882, -0.897874, -0.271099,
		-0.315897, -0.160311, 0.935152,
		-0.883109, 0.410027, -0.228027,
		29.041002, 39.035152, 36.539597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.111359, 38.314774, 37.029285>,  <29.659178, 38.748135, 36.699215>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.111359, 38.314774, 37.029285> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.954256, 38.513832, 36.719940>,  <28.859995, 38.633266, 36.534332>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.954256, 38.513832, 36.719940>,  <29.111359, 38.314774, 37.029285>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.954256, 38.513832, 36.719940> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366430, -0.855985, -0.364717,
		-0.843484, 0.140135, 0.518552,
		-0.392763, 0.497646, -0.773360,
		28.836428, 38.663124, 36.487930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.579893, 37.926224, 36.963638>,  <29.111359, 38.314774, 37.029285>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.579893, 37.926224, 36.963638> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.597166, 38.143459, 36.628212>,  <28.607529, 38.273800, 36.426956>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.597166, 38.143459, 36.628212>,  <28.579893, 37.926224, 36.963638>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.597166, 38.143459, 36.628212> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292038, -0.795824, -0.530450,
		-0.955431, 0.267797, 0.124239,
		0.043180, 0.543092, -0.838562,
		28.610121, 38.306385, 36.376644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.953781, 37.791553, 36.656593>,  <28.579893, 37.926224, 36.963638>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.953781, 37.791553, 36.656593> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.173298, 37.919910, 36.347828>,  <28.305008, 37.996925, 36.162567>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.173298, 37.919910, 36.347828>,  <27.953781, 37.791553, 36.656593>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.173298, 37.919910, 36.347828> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224343, -0.832985, -0.505773,
		-0.805295, 0.450738, -0.385143,
		0.548790, 0.320893, -0.771918,
		28.337934, 38.016178, 36.116253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.523714, 37.682323, 35.955940>,  <27.953781, 37.791553, 36.656593>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.523714, 37.682323, 35.955940> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.911880, 37.695488, 35.860268>,  <28.144781, 37.703384, 35.802864>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.911880, 37.695488, 35.860268>,  <27.523714, 37.682323, 35.955940>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.911880, 37.695488, 35.860268> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108648, -0.825168, -0.554341,
		-0.215609, 0.563928, -0.797181,
		0.970417, 0.032909, -0.239183,
		28.203005, 37.705360, 35.788513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.555618, 37.607197, 35.231136>,  <27.523714, 37.682323, 35.955940>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.555618, 37.607197, 35.231136> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.925278, 37.500645, 35.340672>,  <28.147074, 37.436714, 35.406395>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.925278, 37.500645, 35.340672>,  <27.555618, 37.607197, 35.231136>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.925278, 37.500645, 35.340672> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021443, -0.751848, -0.658988,
		0.381425, 0.603132, -0.700533,
		0.924151, -0.266376, 0.273841,
		28.202522, 37.420731, 35.422825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.824007, 37.473625, 34.647114>,  <27.555618, 37.607197, 35.231136>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.824007, 37.473625, 34.647114> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.098501, 37.317101, 34.892372>,  <28.263199, 37.223186, 35.039528>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.098501, 37.317101, 34.892372>,  <27.824007, 37.473625, 34.647114>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.098501, 37.317101, 34.892372> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044586, -0.818743, -0.572427,
		0.726010, 0.420159, -0.544405,
		0.686237, -0.391314, 0.613149,
		28.304373, 37.199707, 35.076317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.376232, 37.117393, 34.233738>,  <27.824007, 37.473625, 34.647114>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.376232, 37.117393, 34.233738> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.384558, 36.968914, 34.605064>,  <28.389553, 36.879826, 34.827862>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.384558, 36.968914, 34.605064>,  <28.376232, 37.117393, 34.233738>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.384558, 36.968914, 34.605064> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017095, -0.928517, -0.370895,
		0.999637, -0.008149, -0.025673,
		0.020815, -0.371200, 0.928320,
		28.390802, 36.857555, 34.883560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.785854, 36.591114, 34.074921>,  <28.376232, 37.117393, 34.233738>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.785854, 36.591114, 34.074921> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.608051, 36.511585, 34.424294>,  <28.501369, 36.463867, 34.633919>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.608051, 36.511585, 34.424294>,  <28.785854, 36.591114, 34.074921>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.608051, 36.511585, 34.424294> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072689, -0.963835, -0.256395,
		0.892820, -0.177458, 0.413981,
		-0.444509, -0.198823, 0.873431,
		28.474699, 36.451939, 34.686321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.160831, 36.050579, 34.318485>,  <28.785854, 36.591114, 34.074921>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.160831, 36.050579, 34.318485> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.823393, 36.055088, 34.533226>,  <28.620930, 36.057793, 34.662071>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.823393, 36.055088, 34.533226>,  <29.160831, 36.050579, 34.318485>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.823393, 36.055088, 34.533226> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114544, -0.980547, -0.159396,
		0.524616, -0.195960, 0.828479,
		-0.843598, 0.011276, 0.536856,
		28.570312, 36.058472, 34.694283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.676966, 35.484356, 34.420990>,  <29.160831, 36.050579, 34.318485>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.676966, 35.484356, 34.420990> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.701160, 35.099648, 34.314159>,  <29.715677, 34.868820, 34.250061>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.701160, 35.099648, 34.314159>,  <29.676966, 35.484356, 34.420990>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.701160, 35.099648, 34.314159> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200339, 0.273823, -0.940683,
		0.977858, 0.003393, 0.209244,
		0.060487, -0.961774, -0.267081,
		29.719307, 34.811115, 34.234035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.364908, 35.040363, 34.998665>,  <29.676966, 35.484356, 34.420990>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.364908, 35.040363, 34.998665> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.745852, 35.159286, 34.971481>,  <29.974419, 35.230640, 34.955173>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.745852, 35.159286, 34.971481>,  <29.364908, 35.040363, 34.998665>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.745852, 35.159286, 34.971481> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021512, 0.287751, 0.957464,
		0.304227, -0.910385, 0.280437,
		0.952356, 0.297319, -0.067957,
		30.031559, 35.248482, 34.951096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.718201, 34.680210, 35.455959>,  <29.364908, 35.040363, 34.998665>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.718201, 34.680210, 35.455959> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.944586, 35.007370, 35.414528>,  <30.080416, 35.203667, 35.389668>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.944586, 35.007370, 35.414528>,  <29.718201, 34.680210, 35.455959>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.944586, 35.007370, 35.414528> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003951, 0.128329, 0.991724,
		0.824423, -0.560867, 0.075861,
		0.565961, 0.817899, -0.103581,
		30.114374, 35.252739, 35.383453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.289808, 34.652836, 35.961941>,  <29.718201, 34.680210, 35.455959>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.289808, 34.652836, 35.961941> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.316444, 35.038719, 35.860039>,  <30.332426, 35.270248, 35.798897>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.316444, 35.038719, 35.860039>,  <30.289808, 34.652836, 35.961941>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.316444, 35.038719, 35.860039> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309871, 0.222700, 0.924329,
		0.948444, -0.140490, -0.284107,
		0.066589, 0.964711, -0.254752,
		30.336422, 35.328133, 35.783611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.910242, 34.868183, 36.105297>,  <30.289808, 34.652836, 35.961941>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.910242, 34.868183, 36.105297> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.720114, 35.219181, 36.079742>,  <30.606037, 35.429779, 36.064407>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.720114, 35.219181, 36.079742>,  <30.910242, 34.868183, 36.105297>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.720114, 35.219181, 36.079742> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263464, 0.211245, 0.941256,
		0.839439, 0.430565, -0.331596,
		-0.475320, 0.877490, -0.063889,
		30.577518, 35.482430, 36.060577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.383045, 35.363743, 36.339092>,  <30.910242, 34.868183, 36.105297>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.383045, 35.363743, 36.339092> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.019377, 35.528534, 36.363361>,  <30.801176, 35.627411, 36.377922>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.019377, 35.528534, 36.363361>,  <31.383045, 35.363743, 36.339092>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.019377, 35.528534, 36.363361> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266520, 0.463725, 0.844941,
		0.319964, 0.784366, -0.531406,
		-0.909170, 0.411981, 0.060674,
		30.746626, 35.652130, 36.381565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.493437, 36.008236, 36.546394>,  <31.383045, 35.363743, 36.339092>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.493437, 36.008236, 36.546394> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.102720, 35.954796, 36.613365>,  <30.868290, 35.922733, 36.653549>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.102720, 35.954796, 36.613365>,  <31.493437, 36.008236, 36.546394>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.102720, 35.954796, 36.613365> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064671, 0.561244, 0.825120,
		-0.204205, 0.816796, -0.539578,
		-0.976790, -0.133599, 0.167432,
		30.809683, 35.914715, 36.663593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.128586, 36.777077, 36.654182>,  <31.493437, 36.008236, 36.546394>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.128586, 36.777077, 36.654182> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.885651, 36.512814, 36.830669>,  <30.739889, 36.354256, 36.936562>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.885651, 36.512814, 36.830669>,  <31.128586, 36.777077, 36.654182>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.885651, 36.512814, 36.830669> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031987, 0.575266, 0.817341,
		-0.793800, 0.482288, -0.370514,
		-0.607338, -0.660656, 0.441219,
		30.703449, 36.314617, 36.963036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.642809, 37.143192, 36.995346>,  <31.128586, 36.777077, 36.654182>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.642809, 37.143192, 36.995346> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.634253, 36.783539, 37.170208>,  <30.629120, 36.567749, 37.275124>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.634253, 36.783539, 37.170208>,  <30.642809, 37.143192, 36.995346>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.634253, 36.783539, 37.170208> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035280, 0.437662, 0.898447,
		-0.999148, 0.003795, -0.041082,
		-0.021390, -0.899132, 0.437155,
		30.627836, 36.513798, 37.301353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.078356, 37.097004, 37.466583>,  <30.642809, 37.143192, 36.995346>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.078356, 37.097004, 37.466583> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.355091, 36.836121, 37.590508>,  <30.521132, 36.679588, 37.664864>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.355091, 36.836121, 37.590508>,  <30.078356, 37.097004, 37.466583>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.355091, 36.836121, 37.590508> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123058, 0.316290, 0.940647,
		-0.711491, -0.688899, 0.138561,
		0.691836, -0.652211, 0.309812,
		30.562641, 36.640457, 37.683453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.828737, 36.872929, 38.163757>,  <30.078356, 37.097004, 37.466583>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.828737, 36.872929, 38.163757> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.217131, 36.777599, 38.155815>,  <30.450167, 36.720402, 38.151051>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.217131, 36.777599, 38.155815>,  <29.828737, 36.872929, 38.163757>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.217131, 36.777599, 38.155815> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085314, 0.267611, 0.959743,
		-0.223416, -0.933588, 0.280178,
		0.970982, -0.238325, -0.019859,
		30.508425, 36.706100, 38.149857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.853680, 36.587029, 38.750408>,  <29.828737, 36.872929, 38.163757>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.853680, 36.587029, 38.750408> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.237970, 36.637203, 38.651394>,  <30.468544, 36.667309, 38.591988>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.237970, 36.637203, 38.651394>,  <29.853680, 36.587029, 38.750408>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.237970, 36.637203, 38.651394> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189430, 0.355404, 0.915317,
		0.202790, -0.926258, 0.317683,
		0.960725, 0.125438, -0.247534,
		30.526188, 36.674835, 38.577133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.298290, 36.018959, 39.207321>,  <29.853680, 36.587029, 38.750408>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.298290, 36.018959, 39.207321> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.499077, 36.352100, 39.114040>,  <30.619549, 36.551987, 39.058071>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.499077, 36.352100, 39.114040>,  <30.298290, 36.018959, 39.207321>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.499077, 36.352100, 39.114040> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015115, 0.278042, 0.960450,
		0.864755, -0.478590, 0.152156,
		0.501967, 0.832853, -0.233204,
		30.649668, 36.601955, 39.044079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.740488, 36.065304, 39.737236>,  <30.298290, 36.018959, 39.207321>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.740488, 36.065304, 39.737236> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.744116, 36.423061, 39.558361>,  <30.746292, 36.637714, 39.451035>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.744116, 36.423061, 39.558361>,  <30.740488, 36.065304, 39.737236>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.744116, 36.423061, 39.558361> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144508, 0.441342, 0.885626,
		0.989462, -0.072656, -0.125244,
		0.009071, 0.894393, -0.447191,
		30.746838, 36.691380, 39.424202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.390663, 36.421597, 40.037754>,  <30.740488, 36.065304, 39.737236>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.390663, 36.421597, 40.037754> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.151655, 36.704662, 39.886929>,  <31.008251, 36.874504, 39.796432>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.151655, 36.704662, 39.886929>,  <31.390663, 36.421597, 40.037754>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.151655, 36.704662, 39.886929> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178829, 0.576005, 0.797645,
		0.781659, 0.409178, -0.470725,
		-0.597519, 0.707666, -0.377067,
		30.972399, 36.916962, 39.773808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.744383, 37.104767, 40.132523>,  <31.390663, 36.421597, 40.037754>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.744383, 37.104767, 40.132523> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.359991, 37.204895, 40.085430>,  <31.129356, 37.264973, 40.057175>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.359991, 37.204895, 40.085430>,  <31.744383, 37.104767, 40.132523>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.359991, 37.204895, 40.085430> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073782, 0.642131, 0.763036,
		0.266605, 0.724574, -0.635543,
		-0.960978, 0.250321, -0.117735,
		31.071697, 37.279991, 40.050110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.733097, 37.789940, 40.021576>,  <31.744383, 37.104767, 40.132523>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.733097, 37.789940, 40.021576> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.353123, 37.738689, 40.135563>,  <31.125139, 37.707939, 40.203957>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.353123, 37.738689, 40.135563>,  <31.733097, 37.789940, 40.021576>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.353123, 37.738689, 40.135563> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060443, 0.819467, 0.569931,
		-0.306546, 0.558622, -0.770695,
		-0.949935, -0.128127, 0.284969,
		31.068142, 37.700253, 40.221054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.426477, 38.432926, 39.885281>,  <31.733097, 37.789940, 40.021576>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.426477, 38.432926, 39.885281> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.191435, 38.233864, 40.140488>,  <31.050409, 38.114426, 40.293610>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.191435, 38.233864, 40.140488>,  <31.426477, 38.432926, 39.885281>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.191435, 38.233864, 40.140488> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046309, 0.807892, 0.587509,
		-0.807822, 0.315677, -0.497767,
		-0.587604, -0.497654, 0.638014,
		31.015154, 38.084568, 40.331890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.892040, 38.831120, 39.983406>,  <31.426477, 38.432926, 39.885281>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.892040, 38.831120, 39.983406> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.866169, 38.595108, 40.305321>,  <30.850647, 38.453503, 40.498470>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.866169, 38.595108, 40.305321>,  <30.892040, 38.831120, 39.983406>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.866169, 38.595108, 40.305321> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017358, 0.805689, 0.592084,
		-0.997755, 0.052264, -0.041868,
		-0.064678, -0.590028, 0.804788,
		30.846766, 38.418098, 40.546757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.238440, 39.072029, 40.409489>,  <30.892040, 38.831120, 39.983406>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.238440, 39.072029, 40.409489> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.491249, 38.866909, 40.641895>,  <30.642935, 38.743835, 40.781342>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.491249, 38.866909, 40.641895>,  <30.238440, 39.072029, 40.409489>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.491249, 38.866909, 40.641895> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172847, 0.637582, 0.750742,
		-0.755427, -0.574914, 0.314332,
		0.632024, -0.512799, 0.581019,
		30.680857, 38.713070, 40.816200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.925085, 39.134266, 41.038406>,  <30.238440, 39.072029, 40.409489>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.925085, 39.134266, 41.038406> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.297022, 39.032413, 41.144657>,  <30.520184, 38.971302, 41.208408>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.297022, 39.032413, 41.144657>,  <29.925085, 39.134266, 41.038406>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.297022, 39.032413, 41.144657> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026427, 0.673820, 0.738423,
		-0.367010, -0.693636, 0.619817,
		0.929842, -0.254629, 0.265629,
		30.575974, 38.956024, 41.224346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.890863, 39.090046, 41.780174>,  <29.925085, 39.134266, 41.038406>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.890863, 39.090046, 41.780174> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.269051, 39.116745, 41.652653>,  <30.495964, 39.132763, 41.576141>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.269051, 39.116745, 41.652653>,  <29.890863, 39.090046, 41.780174>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.269051, 39.116745, 41.652653> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129993, 0.820120, 0.557230,
		0.298647, -0.568286, 0.766721,
		0.945469, 0.066747, -0.318800,
		30.552691, 39.136768, 41.557014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.316071, 39.190834, 42.387283>,  <29.890863, 39.090046, 41.780174>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.316071, 39.190834, 42.387283> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.523323, 39.337669, 42.078278>,  <30.647675, 39.425770, 41.892872>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.523323, 39.337669, 42.078278>,  <30.316071, 39.190834, 42.387283>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.523323, 39.337669, 42.078278> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108337, 0.867771, 0.485012,
		0.848410, -0.334994, 0.409854,
		0.518135, 0.367086, -0.772518,
		30.678762, 39.447796, 41.846523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.869785, 39.416325, 42.686054>,  <30.316071, 39.190834, 42.387283>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.869785, 39.416325, 42.686054> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.835575, 39.608799, 42.337078>,  <30.815050, 39.724281, 42.127693>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.835575, 39.608799, 42.337078>,  <30.869785, 39.416325, 42.686054>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.835575, 39.608799, 42.337078> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027900, 0.876461, 0.480664,
		0.995946, 0.016767, -0.088383,
		-0.085523, 0.481181, -0.872439,
		30.809917, 39.753155, 42.075348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<41.615990, 37.301735, 47.723919> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.389561, 36.984158, 47.635185>,  <41.253704, 36.793610, 47.581944>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.389561, 36.984158, 47.635185>,  <41.615990, 37.301735, 47.723919>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.389561, 36.984158, 47.635185> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094303, -0.204968, 0.974215,
		-0.818942, 0.572398, 0.041156,
		-0.566075, -0.793945, -0.221836,
		41.219738, 36.745975, 47.568634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.085339, 37.359741, 48.295166>,  <41.615990, 37.301735, 47.723919>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.085339, 37.359741, 48.295166> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.101460, 36.985615, 48.154560>,  <41.111134, 36.761139, 48.070198>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.101460, 36.985615, 48.154560>,  <41.085339, 37.359741, 48.295166>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.101460, 36.985615, 48.154560> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106549, -0.345769, 0.932251,
		-0.993490, -0.075029, 0.085720,
		0.040307, -0.935315, -0.351512,
		41.113552, 36.705021, 48.049107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.377827, 37.008389, 48.534039>,  <41.085339, 37.359741, 48.295166>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.377827, 37.008389, 48.534039> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.656902, 36.735714, 48.445919>,  <40.824348, 36.572109, 48.393047>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.656902, 36.735714, 48.445919>,  <40.377827, 37.008389, 48.534039>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.656902, 36.735714, 48.445919> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153198, -0.442363, 0.883655,
		-0.699830, -0.582766, -0.413065,
		0.697688, -0.681689, -0.220300,
		40.866207, 36.531208, 48.379829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.089462, 36.341496, 48.783382>,  <40.377827, 37.008389, 48.534039>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.089462, 36.341496, 48.783382> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.481213, 36.269367, 48.746910>,  <40.716263, 36.226089, 48.725029>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.481213, 36.269367, 48.746910>,  <40.089462, 36.341496, 48.783382>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.481213, 36.269367, 48.746910> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034429, -0.593561, 0.804052,
		-0.199105, -0.784328, -0.587526,
		0.979373, -0.180319, -0.091177,
		40.775024, 36.215271, 48.719559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.067116, 35.639084, 48.911018>,  <40.089462, 36.341496, 48.783382>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.067116, 35.639084, 48.911018> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.436562, 35.775166, 48.981670>,  <40.658230, 35.856815, 49.024063>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.436562, 35.775166, 48.981670>,  <40.067116, 35.639084, 48.911018>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.436562, 35.775166, 48.981670> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116820, -0.688686, 0.715587,
		0.365091, -0.640291, -0.675822,
		0.923613, 0.340204, 0.176634,
		40.713646, 35.877228, 49.034660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.554344, 35.029797, 49.091415>,  <40.067116, 35.639084, 48.911018>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.554344, 35.029797, 49.091415> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.741085, 35.366867, 49.198704>,  <40.853130, 35.569111, 49.263077>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.741085, 35.366867, 49.198704>,  <40.554344, 35.029797, 49.091415>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.741085, 35.366867, 49.198704> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360248, -0.458218, 0.812562,
		0.807632, -0.282721, -0.517493,
		0.466853, 0.842677, 0.268222,
		40.881142, 35.619671, 49.279171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.195583, 34.833134, 49.248665>,  <40.554344, 35.029797, 49.091415>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.195583, 34.833134, 49.248665> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.095852, 35.164471, 49.449333>,  <41.036015, 35.363274, 49.569736>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.095852, 35.164471, 49.449333>,  <41.195583, 34.833134, 49.248665>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.095852, 35.164471, 49.449333> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230208, -0.452489, 0.861544,
		0.940660, 0.330295, -0.077875,
		-0.249326, 0.828347, 0.501675,
		41.021053, 35.412975, 49.599834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.668007, 34.889366, 49.775112>,  <41.195583, 34.833134, 49.248665>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.668007, 34.889366, 49.775112> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.397926, 35.146587, 49.919655>,  <41.235878, 35.300919, 50.006382>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.397926, 35.146587, 49.919655>,  <41.668007, 34.889366, 49.775112>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.397926, 35.146587, 49.919655> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158886, -0.351600, 0.922568,
		0.720316, 0.680337, 0.135229,
		-0.675204, 0.643054, 0.361359,
		41.195366, 35.339504, 50.028061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.944817, 35.062889, 50.399723>,  <41.668007, 34.889366, 49.775112>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.944817, 35.062889, 50.399723> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.558506, 35.165287, 50.416443>,  <41.326721, 35.226727, 50.426476>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.558506, 35.165287, 50.416443>,  <41.944817, 35.062889, 50.399723>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.558506, 35.165287, 50.416443> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065263, -0.395781, 0.916023,
		0.251045, 0.881942, 0.398942,
		-0.965773, 0.255999, 0.041800,
		41.268776, 35.242088, 50.428982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.869572, 35.251839, 51.035957>,  <41.944817, 35.062889, 50.399723>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.869572, 35.251839, 51.035957> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.503338, 35.144035, 50.916573>,  <41.283600, 35.079353, 50.844940>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.503338, 35.144035, 50.916573>,  <41.869572, 35.251839, 51.035957>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.503338, 35.144035, 50.916573> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102146, -0.561986, 0.820815,
		-0.388947, 0.782009, 0.487014,
		-0.915580, -0.269507, -0.298462,
		41.228664, 35.063183, 50.827034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.482853, 35.466892, 51.570972>,  <41.869572, 35.251839, 51.035957>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.482853, 35.466892, 51.570972> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.285957, 35.180313, 51.373222>,  <41.167820, 35.008366, 51.254574>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.285957, 35.180313, 51.373222>,  <41.482853, 35.466892, 51.570972>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.285957, 35.180313, 51.373222> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194762, -0.462896, 0.864751,
		-0.848390, 0.521952, 0.088321,
		-0.492242, -0.716444, -0.494373,
		41.138283, 34.965382, 51.224911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.941521, 35.400703, 51.969509>,  <41.482853, 35.466892, 51.570972>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.941521, 35.400703, 51.969509> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.942554, 35.057289, 51.764412>,  <40.943172, 34.851238, 51.641354>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.942554, 35.057289, 51.764412>,  <40.941521, 35.400703, 51.969509>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.942554, 35.057289, 51.764412> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043934, -0.512345, 0.857656,
		-0.999031, 0.020312, -0.039042,
		0.002582, -0.858540, -0.512741,
		40.943329, 34.799728, 51.610588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.368145, 35.004215, 52.071301>,  <40.941521, 35.400703, 51.969509>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.368145, 35.004215, 52.071301> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.644218, 34.729958, 51.978756>,  <40.809864, 34.565403, 51.923229>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.644218, 34.729958, 51.978756>,  <40.368145, 35.004215, 52.071301>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.644218, 34.729958, 51.978756> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153495, -0.451169, 0.879139,
		-0.707164, -0.571257, -0.416634,
		0.690187, -0.685647, -0.231365,
		40.851276, 34.524265, 51.909348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.155357, 34.427124, 52.084526>,  <40.368145, 35.004215, 52.071301>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.155357, 34.427124, 52.084526> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.539654, 34.355927, 52.169651>,  <40.770233, 34.313210, 52.220726>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.539654, 34.355927, 52.169651>,  <40.155357, 34.427124, 52.084526>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.539654, 34.355927, 52.169651> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277220, -0.646283, 0.710962,
		0.010993, -0.742049, -0.670256,
		0.960744, -0.177992, 0.212815,
		40.827877, 34.302528, 52.233494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.531479, 33.907314, 52.323864>,  <40.155357, 34.427124, 52.084526>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.531479, 33.907314, 52.323864> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.148533, 33.999969, 52.392906>,  <38.918766, 34.055561, 52.434330>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.148533, 33.999969, 52.392906>,  <39.531479, 33.907314, 52.323864>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.148533, 33.999969, 52.392906> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084177, 0.347881, -0.933752,
		-0.276334, -0.908474, -0.313552,
		-0.957368, 0.231634, 0.172604,
		38.861320, 34.069458, 52.444687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.131393, 33.486046, 51.961906>,  <39.531479, 33.907314, 52.323864>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.131393, 33.486046, 51.961906> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.925076, 33.821648, 52.031212>,  <38.801285, 34.023010, 52.072796>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.925076, 33.821648, 52.031212>,  <39.131393, 33.486046, 51.961906>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.925076, 33.821648, 52.031212> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068533, 0.161185, -0.984542,
		-0.853966, -0.519697, -0.025639,
		-0.515796, 0.839008, 0.173263,
		38.770336, 34.073349, 52.083191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.473553, 33.489708, 51.588226>,  <39.131393, 33.486046, 51.961906>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.473553, 33.489708, 51.588226> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.563553, 33.874756, 51.648544>,  <38.617554, 34.105785, 51.684734>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.563553, 33.874756, 51.648544>,  <38.473553, 33.489708, 51.588226>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.563553, 33.874756, 51.648544> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201656, 0.197416, -0.959355,
		-0.953263, 0.185447, 0.238537,
		0.225001, 0.962619, 0.150793,
		38.631054, 34.163540, 51.693783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.947826, 33.864300, 51.181664>,  <38.473553, 33.489708, 51.588226>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.947826, 33.864300, 51.181664> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.221684, 34.146370, 51.255409>,  <38.385998, 34.315613, 51.299656>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.221684, 34.146370, 51.255409>,  <37.947826, 33.864300, 51.181664>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.221684, 34.146370, 51.255409> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319012, 0.517339, -0.794098,
		-0.655358, 0.484859, 0.579152,
		0.684644, 0.705175, 0.184366,
		38.427078, 34.357922, 51.310719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.619217, 34.501209, 51.202625>,  <37.947826, 33.864300, 51.181664>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.619217, 34.501209, 51.202625> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.000149, 34.570614, 51.102253>,  <38.228706, 34.612259, 51.042030>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.000149, 34.570614, 51.102253>,  <37.619217, 34.501209, 51.202625>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.000149, 34.570614, 51.102253> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304757, 0.503045, -0.808745,
		-0.014099, 0.846663, 0.531943,
		0.952326, 0.173516, -0.250934,
		38.285847, 34.622669, 51.026974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.550068, 35.249020, 51.021511>,  <37.619217, 34.501209, 51.202625>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.550068, 35.249020, 51.021511> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.892021, 35.128201, 50.852776>,  <38.097191, 35.055710, 50.751534>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.892021, 35.128201, 50.852776>,  <37.550068, 35.249020, 51.021511>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.892021, 35.128201, 50.852776> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144314, 0.642542, -0.752538,
		0.498350, 0.704207, 0.505707,
		0.854881, -0.302046, -0.421838,
		38.148487, 35.037586, 50.726223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.739628, 35.792969, 50.774601>,  <37.550068, 35.249020, 51.021511>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.739628, 35.792969, 50.774601> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.993118, 35.567966, 50.562191>,  <38.145210, 35.432964, 50.434746>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.993118, 35.567966, 50.562191>,  <37.739628, 35.792969, 50.774601>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.993118, 35.567966, 50.562191> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289637, 0.463991, -0.837151,
		0.717290, 0.684327, 0.131121,
		0.633724, -0.562503, -0.531022,
		38.183235, 35.399216, 50.402885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.205276, 36.277386, 50.190536>,  <37.739628, 35.792969, 50.774601>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.205276, 36.277386, 50.190536> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.177181, 35.895679, 50.074303>,  <38.160324, 35.666656, 50.004562>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.177181, 35.895679, 50.074303>,  <38.205276, 36.277386, 50.190536>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.177181, 35.895679, 50.074303> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090613, 0.296201, -0.950818,
		0.993406, -0.040453, -0.107274,
		-0.070238, -0.954268, -0.290583,
		38.156109, 35.609398, 49.987129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.717186, 36.162823, 49.705864>,  <38.205276, 36.277386, 50.190536>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.717186, 36.162823, 49.705864> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.451611, 35.875530, 49.622589>,  <38.292267, 35.703156, 49.572624>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.451611, 35.875530, 49.622589>,  <38.717186, 36.162823, 49.705864>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.451611, 35.875530, 49.622589> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062971, 0.223710, -0.972619,
		0.745134, -0.658865, -0.103301,
		-0.663935, -0.718227, -0.208183,
		38.252430, 35.660061, 49.560135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.874046, 36.008156, 49.059292>,  <38.717186, 36.162823, 49.705864>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.874046, 36.008156, 49.059292> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.520565, 35.824238, 49.094318>,  <38.308475, 35.713886, 49.115334>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.520565, 35.824238, 49.094318>,  <38.874046, 36.008156, 49.059292>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.520565, 35.824238, 49.094318> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210811, 0.223960, -0.951525,
		0.417894, -0.859321, -0.294843,
		-0.883699, -0.459792, 0.087562,
		38.255455, 35.686298, 49.120586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.829250, 35.485527, 48.590172>,  <38.874046, 36.008156, 49.059292>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.829250, 35.485527, 48.590172> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.446621, 35.569836, 48.670708>,  <38.217045, 35.620422, 48.719028>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.446621, 35.569836, 48.670708>,  <38.829250, 35.485527, 48.590172>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.446621, 35.569836, 48.670708> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195614, 0.047911, -0.979510,
		-0.216102, -0.976360, -0.004600,
		-0.956575, 0.210775, 0.201343,
		38.159649, 35.633068, 48.731110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.489899, 34.982021, 48.235401>,  <38.829250, 35.485527, 48.590172>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.489899, 34.982021, 48.235401> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.232327, 35.283249, 48.289413>,  <38.077782, 35.463985, 48.321819>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.232327, 35.283249, 48.289413>,  <38.489899, 34.982021, 48.235401>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.232327, 35.283249, 48.289413> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143873, 0.054150, -0.988114,
		-0.751433, -0.655705, 0.073478,
		-0.643932, 0.753073, 0.135028,
		38.039146, 35.509171, 48.329922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.855164, 34.897835, 47.850647>,  <38.489899, 34.982021, 48.235401>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.855164, 34.897835, 47.850647> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.833569, 35.289822, 47.927322>,  <37.820610, 35.525013, 47.973328>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.833569, 35.289822, 47.927322>,  <37.855164, 34.897835, 47.850647>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.833569, 35.289822, 47.927322> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130696, 0.183384, -0.974314,
		-0.989951, -0.077657, 0.118177,
		-0.053990, 0.979969, 0.191691,
		37.817371, 35.583813, 47.984829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.170528, 35.089809, 47.604038>,  <37.855164, 34.897835, 47.850647>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.170528, 35.089809, 47.604038> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.395142, 35.420265, 47.585361>,  <37.529907, 35.618538, 47.574154>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.395142, 35.420265, 47.585361>,  <37.170528, 35.089809, 47.604038>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.395142, 35.420265, 47.585361> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218023, 0.093285, -0.971475,
		-0.798218, 0.555691, 0.232499,
		0.561529, 0.826139, -0.046691,
		37.563599, 35.668106, 47.571354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.484871, 35.108471, 47.830738>,  <37.170528, 35.089809, 47.604038>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.484871, 35.108471, 47.830738> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.185863, 34.850452, 47.767338>,  <36.006458, 34.695641, 47.729298>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.185863, 34.850452, 47.767338>,  <36.484871, 35.108471, 47.830738>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.185863, 34.850452, 47.767338> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203983, -0.004168, 0.978966,
		-0.632142, 0.764130, -0.128463,
		-0.747521, -0.645049, -0.158505,
		35.961609, 34.656937, 47.719788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.927311, 35.377251, 48.192616>,  <36.484871, 35.108471, 47.830738>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.927311, 35.377251, 48.192616> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.863953, 34.985535, 48.142181>,  <35.825939, 34.750504, 48.111919>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.863953, 34.985535, 48.142181>,  <35.927311, 35.377251, 48.192616>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.863953, 34.985535, 48.142181> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115664, -0.108415, 0.987354,
		-0.980578, 0.170978, -0.096096,
		-0.158397, -0.979292, -0.126086,
		35.816433, 34.691746, 48.104355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.483860, 35.136402, 48.745972>,  <35.927311, 35.377251, 48.192616>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.483860, 35.136402, 48.745972> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.629913, 34.789864, 48.609669>,  <35.717545, 34.581940, 48.527885>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.629913, 34.789864, 48.609669>,  <35.483860, 35.136402, 48.745972>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.629913, 34.789864, 48.609669> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006666, -0.368457, 0.929621,
		-0.930931, -0.337164, -0.140311,
		0.365133, -0.866349, -0.340760,
		35.739452, 34.529961, 48.507442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.011181, 34.625759, 49.033527>,  <35.483860, 35.136402, 48.745972>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.011181, 34.625759, 49.033527> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.348385, 34.432289, 48.939381>,  <35.550709, 34.316208, 48.882893>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.348385, 34.432289, 48.939381>,  <35.011181, 34.625759, 49.033527>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.348385, 34.432289, 48.939381> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192946, -0.680354, 0.707029,
		-0.502104, -0.550618, -0.666866,
		0.843008, -0.483672, -0.235369,
		35.601288, 34.287189, 48.868771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.857426, 33.963715, 48.967804>,  <35.011181, 34.625759, 49.033527>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.857426, 33.963715, 48.967804> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.251286, 33.948013, 49.035824>,  <35.487602, 33.938591, 49.076637>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.251286, 33.948013, 49.035824>,  <34.857426, 33.963715, 48.967804>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.251286, 33.948013, 49.035824> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158483, -0.609162, 0.777049,
		0.073085, -0.792074, -0.606035,
		0.984653, -0.039255, 0.170051,
		35.546680, 33.936237, 49.086838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.003670, 33.239777, 49.272575>,  <34.857426, 33.963715, 48.967804>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.003670, 33.239777, 49.272575> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.338284, 33.440948, 49.359550>,  <35.539051, 33.561653, 49.411736>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.338284, 33.440948, 49.359550>,  <35.003670, 33.239777, 49.272575>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.338284, 33.440948, 49.359550> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241962, -0.695123, 0.676948,
		0.491602, -0.513676, -0.703182,
		0.836530, 0.502932, 0.217434,
		35.589241, 33.591827, 49.424782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.499866, 32.718044, 49.444263>,  <35.003670, 33.239777, 49.272575>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.499866, 32.718044, 49.444263> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.654247, 33.049004, 49.607452>,  <35.746876, 33.247581, 49.705368>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.654247, 33.049004, 49.607452>,  <35.499866, 32.718044, 49.444263>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.654247, 33.049004, 49.607452> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143598, -0.490734, 0.859395,
		0.911273, -0.273103, -0.308215,
		0.385955, 0.827402, 0.407976,
		35.770035, 33.297226, 49.729847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.758892, 32.042229, 49.113533>,  <35.499866, 32.718044, 49.444263>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.758892, 32.042229, 49.113533> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.582550, 31.683256, 49.119953>,  <35.476746, 31.467871, 49.123806>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.582550, 31.683256, 49.119953>,  <35.758892, 32.042229, 49.113533>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.582550, 31.683256, 49.119953> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253012, 0.107095, -0.961517,
		0.861181, -0.427949, -0.274275,
		-0.440854, -0.897435, 0.016048,
		35.450294, 31.414026, 49.124767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.046272, 31.630264, 48.512928>,  <35.758892, 32.042229, 49.113533>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.046272, 31.630264, 48.512928> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.684013, 31.504763, 48.627018>,  <35.466656, 31.429462, 48.695473>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.684013, 31.504763, 48.627018>,  <36.046272, 31.630264, 48.512928>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.684013, 31.504763, 48.627018> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300501, 0.000325, -0.953782,
		0.299159, -0.949505, -0.094578,
		-0.905651, -0.313753, 0.285229,
		35.412319, 31.410637, 48.712585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.740097, 31.349535, 47.948387>,  <36.046272, 31.630264, 48.512928>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.740097, 31.349535, 47.948387> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.396568, 31.351965, 48.153282>,  <35.190449, 31.353424, 48.276218>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.396568, 31.351965, 48.153282>,  <35.740097, 31.349535, 47.948387>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.396568, 31.351965, 48.153282> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509927, 0.085405, -0.855968,
		-0.048949, -0.996328, -0.070249,
		-0.858824, 0.006077, 0.512235,
		35.138920, 31.353788, 48.306953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.283020, 30.972115, 47.573383>,  <35.740097, 31.349535, 47.948387>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.283020, 30.972115, 47.573383> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.030388, 31.187244, 47.796761>,  <34.878811, 31.316322, 47.930786>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.030388, 31.187244, 47.796761>,  <35.283020, 30.972115, 47.573383>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.030388, 31.187244, 47.796761> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.604499, 0.109428, -0.789054,
		-0.485481, -0.835925, 0.256002,
		-0.631577, 0.537824, 0.558441,
		34.840916, 31.348591, 47.964294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.677116, 30.761908, 47.319607>,  <35.283020, 30.972115, 47.573383>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.677116, 30.761908, 47.319607> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.586563, 31.106174, 47.502037>,  <34.532230, 31.312735, 47.611496>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.586563, 31.106174, 47.502037>,  <34.677116, 30.761908, 47.319607>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.586563, 31.106174, 47.502037> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.602696, 0.244056, -0.759733,
		-0.765184, -0.446866, 0.463470,
		-0.226386, 0.860667, 0.456072,
		34.518646, 31.364374, 47.638859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.909416, 30.879725, 47.382530>,  <34.677116, 30.761908, 47.319607>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.909416, 30.879725, 47.382530> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.085979, 31.238632, 47.385628>,  <34.191917, 31.453978, 47.387486>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.085979, 31.238632, 47.385628>,  <33.909416, 30.879725, 47.382530>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.085979, 31.238632, 47.385628> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492345, 0.249406, -0.833902,
		-0.750167, 0.364283, 0.551858,
		0.441413, 0.897271, 0.007743,
		34.218403, 31.507812, 47.387951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.361561, 31.322695, 47.193722>,  <33.909416, 30.879725, 47.382530>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.361561, 31.322695, 47.193722> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.706219, 31.499907, 47.094685>,  <33.913013, 31.606234, 47.035263>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.706219, 31.499907, 47.094685>,  <33.361561, 31.322695, 47.193722>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.706219, 31.499907, 47.094685> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367895, 0.209164, -0.906037,
		-0.349614, 0.871766, 0.343213,
		0.861640, 0.443029, -0.247592,
		33.964710, 31.632814, 47.020409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<39.728764, 32.633717, 51.525635> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.450794, 32.783611, 51.771122>,  <39.284012, 32.873547, 51.918415>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.450794, 32.783611, 51.771122>,  <39.728764, 32.633717, 51.525635>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.450794, 32.783611, 51.771122> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232399, 0.924716, -0.301480,
		-0.680491, -0.066879, -0.729698,
		-0.694927, 0.374736, 0.613718,
		39.242317, 32.896030, 51.955238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.065102, 32.290482, 50.835217>,  <39.728764, 32.633717, 51.525635>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.065102, 32.290482, 50.835217> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.320091, 32.594650, 50.785591>,  <40.473083, 32.777149, 50.755817>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.320091, 32.594650, 50.785591>,  <40.065102, 32.290482, 50.835217>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.320091, 32.594650, 50.785591> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045858, -0.123288, -0.991311,
		-0.769106, 0.637625, -0.043721,
		0.637474, 0.760418, -0.124062,
		40.511333, 32.822777, 50.748371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.824196, 32.589241, 50.162395>,  <40.065102, 32.290482, 50.835217>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.824196, 32.589241, 50.162395> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.203213, 32.707401, 50.211235>,  <40.430622, 32.778297, 50.240540>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.203213, 32.707401, 50.211235>,  <39.824196, 32.589241, 50.162395>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.203213, 32.707401, 50.211235> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155565, -0.092480, -0.983487,
		-0.279233, 0.950886, -0.133582,
		0.947538, 0.295403, 0.122101,
		40.487473, 32.796021, 50.247864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.904507, 33.228462, 49.735489>,  <39.824196, 32.589241, 50.162395>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.904507, 33.228462, 49.735489> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.258701, 33.051895, 49.793541>,  <40.471218, 32.945957, 49.828373>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.258701, 33.051895, 49.793541>,  <39.904507, 33.228462, 49.735489>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.258701, 33.051895, 49.793541> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193201, 0.065699, -0.978957,
		0.422591, 0.894895, 0.143457,
		0.885489, -0.441415, 0.145131,
		40.524349, 32.919472, 49.837082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.372868, 33.499645, 49.279419>,  <39.904507, 33.228462, 49.735489>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.372868, 33.499645, 49.279419> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.580967, 33.171238, 49.373466>,  <40.705826, 32.974194, 49.429893>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.580967, 33.171238, 49.373466>,  <40.372868, 33.499645, 49.279419>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.580967, 33.171238, 49.373466> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406419, -0.004121, -0.913678,
		0.751111, 0.570893, 0.331531,
		0.520246, -0.821014, 0.235118,
		40.737041, 32.924934, 49.444000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.034073, 33.603878, 49.101986>,  <40.372868, 33.499645, 49.279419>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.034073, 33.603878, 49.101986> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.015213, 33.204357, 49.107094>,  <41.003899, 32.964645, 49.110157>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.015213, 33.204357, 49.107094>,  <41.034073, 33.603878, 49.101986>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<41.015213, 33.204357, 49.107094> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392061, -0.030260, -0.919441,
		0.918730, -0.038345, 0.393020,
		-0.047149, -0.998806, 0.012767,
		41.001068, 32.904716, 49.110924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.682423, 33.356316, 48.745045>,  <41.034073, 33.603878, 49.101986>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.682423, 33.356316, 48.745045> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.456200, 33.026695, 48.758236>,  <41.320465, 32.828922, 48.766151>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.456200, 33.026695, 48.758236>,  <41.682423, 33.356316, 48.745045>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<41.456200, 33.026695, 48.758236> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326736, -0.260597, -0.908478,
		0.757227, -0.503017, 0.416629,
		-0.565553, -0.824052, 0.032978,
		41.286533, 32.779480, 48.768127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.130226, 32.837864, 48.418030>,  <41.682423, 33.356316, 48.745045>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.130226, 32.837864, 48.418030> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.749775, 32.718056, 48.388000>,  <41.521503, 32.646172, 48.369984>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.749775, 32.718056, 48.388000>,  <42.130226, 32.837864, 48.418030>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<41.749775, 32.718056, 48.388000> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190986, -0.379588, -0.905228,
		0.242643, -0.875327, 0.418242,
		-0.951130, -0.299525, -0.075071,
		41.464436, 32.628197, 48.365479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.185131, 32.091969, 48.152462>,  <42.130226, 32.837864, 48.418030>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.185131, 32.091969, 48.152462> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.822784, 32.247620, 48.085537>,  <41.605377, 32.341011, 48.045383>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.822784, 32.247620, 48.085537>,  <42.185131, 32.091969, 48.152462>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<41.822784, 32.247620, 48.085537> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101736, -0.183562, -0.977729,
		-0.411172, -0.902711, 0.126694,
		-0.905863, 0.389126, -0.167313,
		41.551025, 32.364357, 48.035343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.915249, 31.597851, 47.654278>,  <42.185131, 32.091969, 48.152462>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.915249, 31.597851, 47.654278> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.702160, 31.935211, 47.626339>,  <41.574306, 32.137627, 47.609577>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.702160, 31.935211, 47.626339>,  <41.915249, 31.597851, 47.654278>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<41.702160, 31.935211, 47.626339> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004020, -0.085056, -0.996368,
		-0.846281, -0.530506, 0.048701,
		-0.532722, 0.843403, -0.069848,
		41.542343, 32.188232, 47.605385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.330528, 31.519787, 47.217621>,  <41.915249, 31.597851, 47.654278>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.330528, 31.519787, 47.217621> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.373928, 31.917303, 47.207767>,  <41.399967, 32.155811, 47.201855>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.373928, 31.917303, 47.207767>,  <41.330528, 31.519787, 47.217621>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<41.373928, 31.917303, 47.207767> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186989, -0.003939, -0.982354,
		-0.976352, 0.111192, 0.185401,
		0.108499, 0.993791, -0.024638,
		41.406479, 32.215439, 47.200375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.669613, 31.757925, 46.892002>,  <41.330528, 31.519787, 47.217621>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.669613, 31.757925, 46.892002> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.971233, 32.015507, 46.840271>,  <41.152206, 32.170055, 46.809231>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.971233, 32.015507, 46.840271>,  <40.669613, 31.757925, 46.892002>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.971233, 32.015507, 46.840271> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158412, -0.012789, -0.987290,
		-0.637425, 0.764956, 0.092367,
		0.754053, 0.643955, -0.129330,
		41.197449, 32.208694, 46.801472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.900318, 31.762337, 46.833881>,  <40.669613, 31.757925, 46.892002>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.900318, 31.762337, 46.833881> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.787697, 31.390057, 46.740479>,  <39.720123, 31.166689, 46.684437>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.787697, 31.390057, 46.740479>,  <39.900318, 31.762337, 46.833881>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.787697, 31.390057, 46.740479> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152339, -0.196912, 0.968513,
		-0.947375, 0.308261, -0.086340,
		-0.281554, -0.930699, -0.233509,
		39.703232, 31.110847, 46.670425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.334702, 31.640665, 47.153770>,  <39.900318, 31.762337, 46.833881>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.334702, 31.640665, 47.153770> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.389130, 31.257378, 47.053135>,  <39.421787, 31.027405, 46.992752>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.389130, 31.257378, 47.053135>,  <39.334702, 31.640665, 47.153770>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.389130, 31.257378, 47.053135> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219359, -0.276793, 0.935557,
		-0.966109, -0.072115, -0.247858,
		0.136074, -0.958220, -0.251593,
		39.429951, 30.969912, 46.977657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.699097, 31.283506, 47.394310>,  <39.334702, 31.640665, 47.153770>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.699097, 31.283506, 47.394310> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.004684, 31.025932, 47.377800>,  <39.188038, 30.871387, 47.367893>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.004684, 31.025932, 47.377800>,  <38.699097, 31.283506, 47.394310>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.004684, 31.025932, 47.377800> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176141, -0.269657, 0.946710,
		-0.620752, -0.715982, -0.319432,
		0.763965, -0.643937, -0.041276,
		39.233875, 30.832752, 47.365417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.404099, 30.649458, 47.543766>,  <38.699097, 31.283506, 47.394310>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.404099, 30.649458, 47.543766> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.792202, 30.615770, 47.634548>,  <39.025063, 30.595558, 47.689018>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.792202, 30.615770, 47.634548>,  <38.404099, 30.649458, 47.543766>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.792202, 30.615770, 47.634548> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242069, -0.328996, 0.912778,
		-0.002202, -0.940568, -0.339597,
		0.970256, -0.084216, 0.226958,
		39.083279, 30.590506, 47.702637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.454586, 30.031376, 47.878242>,  <38.404099, 30.649458, 47.543766>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.454586, 30.031376, 47.878242> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.798557, 30.214300, 47.968925>,  <39.004940, 30.324055, 48.023335>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.798557, 30.214300, 47.968925>,  <38.454586, 30.031376, 47.878242>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.798557, 30.214300, 47.968925> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141099, -0.213862, 0.966620,
		0.490530, -0.863209, -0.119379,
		0.859925, 0.457311, 0.226704,
		39.056534, 30.351494, 48.036938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.900623, 29.550951, 48.204124>,  <38.454586, 30.031376, 47.878242>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.900623, 29.550951, 48.204124> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.032764, 29.911915, 48.314774>,  <39.112049, 30.128494, 48.381165>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.032764, 29.911915, 48.314774>,  <38.900623, 29.550951, 48.204124>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.032764, 29.911915, 48.314774> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131297, -0.334166, 0.933324,
		0.934681, -0.272006, -0.228876,
		0.330353, 0.902411, 0.276626,
		39.131870, 30.182638, 48.397762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.269524, 29.467093, 48.742420>,  <38.900623, 29.550951, 48.204124>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.269524, 29.467093, 48.742420> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.236301, 29.862551, 48.792519>,  <39.216370, 30.099825, 48.822578>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.236301, 29.862551, 48.792519>,  <39.269524, 29.467093, 48.742420>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.236301, 29.862551, 48.792519> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311494, -0.145135, 0.939099,
		0.946612, 0.038984, 0.320010,
		-0.083054, 0.988644, 0.125243,
		39.211384, 30.159143, 48.830093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.651848, 29.707212, 49.431908>,  <39.269524, 29.467093, 48.742420>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.651848, 29.707212, 49.431908> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.352787, 29.957655, 49.343353>,  <39.173351, 30.107920, 49.290222>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.352787, 29.957655, 49.343353>,  <39.651848, 29.707212, 49.431908>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.352787, 29.957655, 49.343353> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284763, -0.001092, 0.958597,
		0.599941, 0.779738, 0.179108,
		-0.747650, 0.626106, -0.221385,
		39.128490, 30.145487, 49.276939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.864914, 30.264343, 49.949493>,  <39.651848, 29.707212, 49.431908>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.864914, 30.264343, 49.949493> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.482723, 30.287184, 49.833694>,  <39.253410, 30.300888, 49.764217>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.482723, 30.287184, 49.833694>,  <39.864914, 30.264343, 49.949493>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.482723, 30.287184, 49.833694> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294019, -0.101485, 0.950396,
		0.024889, 0.993197, 0.113756,
		-0.955475, 0.057100, -0.289493,
		39.196079, 30.304314, 49.746845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.462811, 30.704477, 50.491062>,  <39.864914, 30.264343, 49.949493>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.462811, 30.704477, 50.491062> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.195042, 30.483343, 50.292568>,  <39.034382, 30.350662, 50.173473>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.195042, 30.483343, 50.292568>,  <39.462811, 30.704477, 50.491062>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.195042, 30.483343, 50.292568> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430989, -0.255059, 0.865560,
		-0.605082, 0.793294, -0.067525,
		-0.669421, -0.552837, -0.496233,
		38.994217, 30.317492, 50.143700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.791901, 30.910570, 50.710342>,  <39.462811, 30.704477, 50.491062>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.791901, 30.910570, 50.710342> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.706863, 30.545874, 50.569756>,  <38.655842, 30.327055, 50.485405>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.706863, 30.545874, 50.569756>,  <38.791901, 30.910570, 50.710342>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.706863, 30.545874, 50.569756> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.608304, -0.158001, 0.777819,
		-0.764703, 0.379159, -0.521026,
		-0.212594, -0.911742, -0.351468,
		38.643085, 30.272350, 50.464314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.223057, 30.822563, 51.008137>,  <38.791901, 30.910570, 50.710342>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.223057, 30.822563, 51.008137> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.288334, 30.457140, 50.859123>,  <38.327499, 30.237886, 50.769714>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.288334, 30.457140, 50.859123>,  <38.223057, 30.822563, 51.008137>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.288334, 30.457140, 50.859123> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.672278, -0.379327, 0.635731,
		-0.722089, 0.146700, -0.676067,
		0.163189, -0.913559, -0.372531,
		38.337292, 30.183073, 50.747364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.602203, 30.522690, 50.775097>,  <38.223057, 30.822563, 51.008137>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.602203, 30.522690, 50.775097> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.824970, 30.208860, 50.884117>,  <37.958630, 30.020563, 50.949528>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.824970, 30.208860, 50.884117>,  <37.602203, 30.522690, 50.775097>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.824970, 30.208860, 50.884117> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.769465, -0.363849, 0.524916,
		-0.312666, -0.502058, -0.806336,
		0.556922, -0.784571, 0.272553,
		37.992046, 29.973488, 50.965881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.118927, 29.919844, 50.860680>,  <37.602203, 30.522690, 50.775097>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.118927, 29.919844, 50.860680> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.451271, 29.823208, 51.061203>,  <37.650677, 29.765226, 51.181515>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.451271, 29.823208, 51.061203>,  <37.118927, 29.919844, 50.860680>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.451271, 29.823208, 51.061203> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552886, -0.460602, 0.694379,
		0.063148, -0.854096, -0.516267,
		0.830861, -0.241589, 0.501304,
		37.700531, 29.750731, 51.211594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.609444, 29.332928, 50.766479>,  <37.118927, 29.919844, 50.860680>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.609444, 29.332928, 50.766479> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.367664, 29.532644, 51.014786>,  <36.222599, 29.652475, 51.163769>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.367664, 29.532644, 51.014786>,  <36.609444, 29.332928, 50.766479>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.367664, 29.532644, 51.014786> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350398, 0.533177, -0.770028,
		-0.715449, -0.682956, -0.147326,
		-0.604446, 0.499293, 0.620767,
		36.186329, 29.682432, 51.201015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.798271, 29.276564, 50.678268>,  <36.609444, 29.332928, 50.766479>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.798271, 29.276564, 50.678268> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.929352, 29.630953, 50.809517>,  <36.007999, 29.843586, 50.888268>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.929352, 29.630953, 50.809517>,  <35.798271, 29.276564, 50.678268>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.929352, 29.630953, 50.809517> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229882, 0.411633, -0.881880,
		-0.916389, 0.213561, 0.338561,
		0.327698, 0.885974, 0.328123,
		36.027660, 29.896746, 50.907955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.152714, 29.677233, 50.538177>,  <35.798271, 29.276564, 50.678268>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.152714, 29.677233, 50.538177> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.452087, 29.935692, 50.597961>,  <35.631710, 30.090767, 50.633831>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.452087, 29.935692, 50.597961>,  <35.152714, 29.677233, 50.538177>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.452087, 29.935692, 50.597961> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368408, 0.592443, -0.716440,
		-0.551473, 0.481146, 0.681451,
		0.748433, 0.646149, 0.149459,
		35.676617, 30.129538, 50.642799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.854053, 30.297045, 50.475075>,  <35.152714, 29.677233, 50.538177>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.854053, 30.297045, 50.475075> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.240547, 30.395844, 50.445721>,  <35.472443, 30.455124, 50.428108>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.240547, 30.395844, 50.445721>,  <34.854053, 30.297045, 50.475075>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.240547, 30.395844, 50.445721> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232071, 0.710446, -0.664387,
		-0.111968, 0.658983, 0.743778,
		0.966233, 0.246999, -0.073384,
		35.530418, 30.469944, 50.423706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.839531, 30.991425, 50.362839>,  <34.854053, 30.297045, 50.475075>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.839531, 30.991425, 50.362839> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.202682, 30.884497, 50.233662>,  <35.420574, 30.820341, 50.156155>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.202682, 30.884497, 50.233662>,  <34.839531, 30.991425, 50.362839>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.202682, 30.884497, 50.233662> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092683, 0.623288, -0.776480,
		0.408855, 0.734883, 0.541095,
		0.907881, -0.267317, -0.322946,
		35.475048, 30.804302, 50.136780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.174683, 31.582340, 50.378994>,  <34.839531, 30.991425, 50.362839>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.174683, 31.582340, 50.378994> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.371937, 31.329107, 50.140324>,  <35.490292, 31.177168, 49.997124>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.371937, 31.329107, 50.140324>,  <35.174683, 31.582340, 50.378994>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.371937, 31.329107, 50.140324> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114006, 0.632926, -0.765772,
		0.862448, 0.445657, 0.239945,
		0.493139, -0.633083, -0.596674,
		35.519878, 31.139183, 49.961323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.521114, 31.981802, 49.939922>,  <35.174683, 31.582340, 50.378994>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.521114, 31.981802, 49.939922> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.500927, 31.628759, 49.752964>,  <35.488815, 31.416933, 49.640789>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.500927, 31.628759, 49.752964>,  <35.521114, 31.981802, 49.939922>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.500927, 31.628759, 49.752964> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180758, 0.468334, -0.864864,
		0.982232, 0.040841, -0.183172,
		-0.050464, -0.882607, -0.467394,
		35.485786, 31.363977, 49.612747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.154457, 32.517284, 49.790638>,  <35.521114, 31.981802, 49.939922>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.154457, 32.517284, 49.790638> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.045048, 32.866325, 49.952496>,  <35.979401, 33.075752, 50.049610>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.045048, 32.866325, 49.952496>,  <36.154457, 32.517284, 49.790638>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.045048, 32.866325, 49.952496> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242792, -0.344433, 0.906873,
		0.930717, 0.346301, -0.117650,
		-0.273528, 0.872607, 0.404648,
		35.962990, 33.128109, 50.073891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.744114, 32.581097, 50.268185>,  <36.154457, 32.517284, 49.790638>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.744114, 32.581097, 50.268185> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.450928, 32.826992, 50.384705>,  <36.275017, 32.974529, 50.454617>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.450928, 32.826992, 50.384705>,  <36.744114, 32.581097, 50.268185>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.450928, 32.826992, 50.384705> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231973, -0.176681, 0.956542,
		0.639487, 0.768690, -0.013100,
		-0.732969, 0.614735, 0.291300,
		36.231037, 33.011414, 50.472095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.996792, 33.032642, 50.701935>,  <36.744114, 32.581097, 50.268185>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.996792, 33.032642, 50.701935> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.604752, 33.044701, 50.780407>,  <36.369526, 33.051937, 50.827492>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.604752, 33.044701, 50.780407>,  <36.996792, 33.032642, 50.701935>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.604752, 33.044701, 50.780407> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191365, -0.118871, 0.974294,
		0.052690, 0.992452, 0.110737,
		-0.980104, 0.030145, 0.196184,
		36.310722, 33.053745, 50.839264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.006271, 33.474663, 51.260952>,  <36.996792, 33.032642, 50.701935>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.006271, 33.474663, 51.260952> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.660854, 33.275356, 51.292007>,  <36.453606, 33.155773, 51.310638>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.660854, 33.275356, 51.292007>,  <37.006271, 33.474663, 51.260952>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.660854, 33.275356, 51.292007> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083468, 0.010604, 0.996454,
		-0.497318, 0.866962, 0.032432,
		-0.863544, -0.498262, 0.077637,
		36.401791, 33.125877, 51.315300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.660984, 33.837280, 51.801987>,  <37.006271, 33.474663, 51.260952>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.660984, 33.837280, 51.801987> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.509712, 33.467300, 51.786728>,  <36.418949, 33.245312, 51.777573>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.509712, 33.467300, 51.786728>,  <36.660984, 33.837280, 51.801987>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.509712, 33.467300, 51.786728> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000718, -0.041502, 0.999138,
		-0.925731, 0.377829, 0.016360,
		-0.378182, -0.924945, -0.038148,
		36.396259, 33.189816, 51.775284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.211460, 33.785767, 52.348362>,  <36.660984, 33.837280, 51.801987>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.211460, 33.785767, 52.348362> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.245106, 33.392532, 52.283291>,  <36.265293, 33.156590, 52.244247>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.245106, 33.392532, 52.283291>,  <36.211460, 33.785767, 52.348362>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.245106, 33.392532, 52.283291> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072524, -0.168859, 0.982968,
		-0.993814, -0.070882, -0.085501,
		0.084112, -0.983088, -0.162674,
		36.270340, 33.097607, 52.234489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.579124, 33.387062, 52.657024>,  <36.211460, 33.785767, 52.348362>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.579124, 33.387062, 52.657024> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.890919, 33.137459, 52.635036>,  <36.077995, 32.987698, 52.621841>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.890919, 33.137459, 52.635036>,  <35.579124, 33.387062, 52.657024>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.890919, 33.137459, 52.635036> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128316, -0.244948, 0.961007,
		-0.613143, -0.742033, -0.271003,
		0.779481, -0.624009, -0.054974,
		36.124763, 32.950256, 52.618546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.521526, 32.786671, 53.161705>,  <35.579124, 33.387062, 52.657024>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.521526, 32.786671, 53.161705> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.904068, 32.699974, 53.083309>,  <36.133591, 32.647957, 53.036270>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.904068, 32.699974, 53.083309>,  <35.521526, 32.786671, 53.161705>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.904068, 32.699974, 53.083309> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095313, -0.402660, 0.910374,
		-0.276233, -0.889319, -0.364427,
		0.956353, -0.216740, -0.195992,
		36.190975, 32.634953, 53.024513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.602028, 32.076748, 53.280148>,  <35.521526, 32.786671, 53.161705>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.602028, 32.076748, 53.280148> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.974045, 32.222004, 53.302616>,  <36.197254, 32.309158, 53.316097>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.974045, 32.222004, 53.302616>,  <35.602028, 32.076748, 53.280148>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.974045, 32.222004, 53.302616> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084737, -0.360694, 0.928827,
		0.357558, -0.859085, -0.366231,
		0.930039, 0.363143, 0.056173,
		36.253056, 32.330948, 53.319469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<35.538364, 36.465164, 37.315643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.833668, 36.559353, 37.568474>,  <36.010849, 36.615868, 37.720173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.833668, 36.559353, 37.568474>,  <35.538364, 36.465164, 37.315643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.833668, 36.559353, 37.568474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518428, -0.401406, 0.755053,
		0.431515, -0.885114, -0.174266,
		0.738259, 0.235472, 0.632081,
		36.055145, 36.629993, 37.758099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.550831, 35.922573, 37.747337>,  <35.538364, 36.465164, 37.315643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.550831, 35.922573, 37.747337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.739609, 36.208652, 37.953545>,  <35.852875, 36.380299, 38.077271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.739609, 36.208652, 37.953545>,  <35.550831, 35.922573, 37.747337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.739609, 36.208652, 37.953545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394203, -0.351841, 0.849006,
		0.788586, -0.603907, 0.115882,
		0.471949, 0.715196, 0.515519,
		35.881195, 36.423210, 38.108200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.933868, 35.627617, 38.236122>,  <35.550831, 35.922573, 37.747337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.933868, 35.627617, 38.236122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.868393, 35.996452, 38.376381>,  <35.829105, 36.217754, 38.460537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.868393, 35.996452, 38.376381>,  <35.933868, 35.627617, 38.236122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.868393, 35.996452, 38.376381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314452, -0.385669, 0.867398,
		0.935053, 0.031726, 0.353084,
		-0.163693, 0.922092, 0.350644,
		35.819286, 36.273079, 38.481575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.244370, 35.630432, 38.909313>,  <35.933868, 35.627617, 38.236122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.244370, 35.630432, 38.909313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.012535, 35.953972, 38.948990>,  <35.873432, 36.148094, 38.972797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.012535, 35.953972, 38.948990>,  <36.244370, 35.630432, 38.909313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.012535, 35.953972, 38.948990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285301, -0.315424, 0.905048,
		0.763334, 0.496258, 0.413581,
		-0.579591, 0.808849, 0.099191,
		35.838657, 36.196625, 38.978748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.423569, 35.861454, 39.541157>,  <36.244370, 35.630432, 38.909313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.423569, 35.861454, 39.541157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.062332, 36.007469, 39.450676>,  <35.845589, 36.095078, 39.396389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.062332, 36.007469, 39.450676>,  <36.423569, 35.861454, 39.541157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.062332, 36.007469, 39.450676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315170, -0.205604, 0.926496,
		0.291695, 0.908007, 0.300728,
		-0.903096, 0.365035, -0.226203,
		35.791405, 36.116978, 39.382816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.339828, 36.367615, 40.020226>,  <36.423569, 35.861454, 39.541157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.339828, 36.367615, 40.020226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.969074, 36.286457, 39.893909>,  <35.746624, 36.237762, 39.818119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.969074, 36.286457, 39.893909>,  <36.339828, 36.367615, 40.020226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.969074, 36.286457, 39.893909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323424, 0.004747, 0.946242,
		-0.190491, 0.979189, -0.070022,
		-0.926882, -0.202898, -0.315788,
		35.691010, 36.225586, 39.799171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.969761, 36.836761, 40.363567>,  <36.339828, 36.367615, 40.020226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.969761, 36.836761, 40.363567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.700344, 36.568771, 40.238689>,  <35.538692, 36.407974, 40.163761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.700344, 36.568771, 40.238689>,  <35.969761, 36.836761, 40.363567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.700344, 36.568771, 40.238689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365687, -0.065017, 0.928465,
		-0.642351, 0.739527, -0.201211,
		-0.673542, -0.669980, -0.312199,
		35.498283, 36.367779, 40.145031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.463531, 36.981930, 40.845406>,  <35.969761, 36.836761, 40.363567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.463531, 36.981930, 40.845406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.347034, 36.631012, 40.692810>,  <35.277134, 36.420464, 40.601254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.347034, 36.631012, 40.692810>,  <35.463531, 36.981930, 40.845406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.347034, 36.631012, 40.692810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460657, -0.220890, 0.859652,
		-0.838433, 0.426108, -0.339797,
		-0.291247, -0.877291, -0.381491,
		35.259659, 36.367825, 40.578362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.705200, 36.935326, 40.936920>,  <35.463531, 36.981930, 40.845406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.705200, 36.935326, 40.936920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.869507, 36.572311, 40.901939>,  <34.968090, 36.354504, 40.880951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.869507, 36.572311, 40.901939>,  <34.705200, 36.935326, 40.936920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.869507, 36.572311, 40.901939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393418, -0.262962, 0.880950,
		-0.822490, -0.327463, -0.465057,
		0.410771, -0.907535, -0.087454,
		34.992737, 36.300053, 40.875702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.258389, 36.463085, 41.141113>,  <34.705200, 36.935326, 40.936920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.258389, 36.463085, 41.141113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.597221, 36.253864, 41.178791>,  <34.800522, 36.128334, 41.201397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.597221, 36.253864, 41.178791>,  <34.258389, 36.463085, 41.141113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.597221, 36.253864, 41.178791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299185, -0.322831, 0.897924,
		-0.439253, -0.788795, -0.429953,
		0.847081, -0.523052, 0.094191,
		34.851345, 36.096951, 41.207050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.043571, 35.771591, 41.179447>,  <34.258389, 36.463085, 41.141113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.043571, 35.771591, 41.179447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.409260, 35.782650, 41.341152>,  <34.628674, 35.789288, 41.438175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.409260, 35.782650, 41.341152>,  <34.043571, 35.771591, 41.179447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.409260, 35.782650, 41.341152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356274, -0.420413, 0.834459,
		0.193031, -0.906912, -0.374501,
		0.914225, 0.027651, 0.404262,
		34.683529, 35.790947, 41.462429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.001183, 35.233818, 41.636147>,  <34.043571, 35.771591, 41.179447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.001183, 35.233818, 41.636147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.337170, 35.416962, 41.752644>,  <34.538761, 35.526848, 41.822540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.337170, 35.416962, 41.752644>,  <34.001183, 35.233818, 41.636147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.337170, 35.416962, 41.752644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191658, -0.251803, 0.948611,
		0.507668, -0.852618, -0.123753,
		0.839964, 0.457861, 0.291244,
		34.589157, 35.554321, 41.840015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.079662, 34.479458, 41.545013>,  <34.001183, 35.233818, 41.636147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.079662, 34.479458, 41.545013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.746708, 34.272461, 41.465675>,  <33.546936, 34.148262, 41.418072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.746708, 34.272461, 41.465675>,  <34.079662, 34.479458, 41.545013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.746708, 34.272461, 41.465675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006680, 0.367235, -0.930104,
		0.554157, -0.772880, -0.309138,
		-0.832385, -0.517489, -0.198343,
		33.496994, 34.117214, 41.406174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.195404, 34.174644, 40.886482>,  <34.079662, 34.479458, 41.545013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.195404, 34.174644, 40.886482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.795658, 34.169819, 40.899857>,  <33.555809, 34.166924, 40.907883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.795658, 34.169819, 40.899857>,  <34.195404, 34.174644, 40.886482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.795658, 34.169819, 40.899857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035490, 0.284621, -0.957983,
		0.002041, -0.958564, -0.284870,
		-0.999368, -0.012066, 0.033439,
		33.495850, 34.166199, 40.909889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.011421, 33.587921, 40.474606>,  <34.195404, 34.174644, 40.886482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.011421, 33.587921, 40.474606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.714989, 33.856129, 40.488457>,  <33.537128, 34.017056, 40.496769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.714989, 33.856129, 40.488457>,  <34.011421, 33.587921, 40.474606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.714989, 33.856129, 40.488457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022237, 0.076063, -0.996855,
		-0.671047, -0.737981, -0.071279,
		-0.741081, 0.670521, 0.034631,
		33.492664, 34.057285, 40.498844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.618946, 33.404999, 39.883415>,  <34.011421, 33.587921, 40.474606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.618946, 33.404999, 39.883415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.447823, 33.753433, 39.979908>,  <33.345150, 33.962494, 40.037804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.447823, 33.753433, 39.979908>,  <33.618946, 33.404999, 39.883415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.447823, 33.753433, 39.979908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248975, 0.142991, -0.957896,
		-0.868902, -0.469857, 0.155705,
		-0.427810, 0.871084, 0.241228,
		33.319481, 34.014759, 40.052277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.956841, 33.441059, 39.603546>,  <33.618946, 33.404999, 39.883415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.956841, 33.441059, 39.603546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.048019, 33.823914, 39.675026>,  <33.102726, 34.053627, 39.717915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.048019, 33.823914, 39.675026>,  <32.956841, 33.441059, 39.603546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.048019, 33.823914, 39.675026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273475, 0.239079, -0.931693,
		-0.934479, 0.163509, 0.316250,
		0.227949, 0.957134, 0.178699,
		33.116405, 34.111053, 39.728634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.421387, 33.806282, 39.380913>,  <32.956841, 33.441059, 39.603546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.421387, 33.806282, 39.380913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.724796, 34.066502, 39.365795>,  <32.906841, 34.222633, 39.356724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.724796, 34.066502, 39.365795>,  <32.421387, 33.806282, 39.380913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.724796, 34.066502, 39.365795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241527, 0.226795, -0.943519,
		-0.605230, 0.724813, 0.329154,
		0.758525, 0.650546, -0.037799,
		32.952354, 34.261665, 39.354454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.120190, 34.367157, 38.934498>,  <32.421387, 33.806282, 39.380913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.120190, 34.367157, 38.934498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.519276, 34.394032, 38.937099>,  <32.758728, 34.410156, 38.938660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.519276, 34.394032, 38.937099>,  <32.120190, 34.367157, 38.934498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.519276, 34.394032, 38.937099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000069, 0.095397, -0.995439,
		-0.067503, 0.993169, 0.095174,
		0.997719, 0.067188, 0.006508,
		32.818592, 34.414188, 38.939053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.362171, 35.000751, 38.515835>,  <32.120190, 34.367157, 38.934498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.362171, 35.000751, 38.515835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.679680, 34.759094, 38.543938>,  <32.870186, 34.614101, 38.560799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.679680, 34.759094, 38.543938>,  <32.362171, 35.000751, 38.515835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.679680, 34.759094, 38.543938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226094, 0.185861, -0.956210,
		0.564629, 0.774898, 0.284124,
		0.793773, -0.604143, 0.070257,
		32.917812, 34.577850, 38.565014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.883175, 35.334019, 38.219055>,  <32.362171, 35.000751, 38.515835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.883175, 35.334019, 38.219055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.001549, 34.952484, 38.198605>,  <33.072575, 34.723564, 38.186333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.001549, 34.952484, 38.198605>,  <32.883175, 35.334019, 38.219055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.001549, 34.952484, 38.198605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037973, 0.065228, -0.997148,
		0.954452, 0.293153, 0.055523,
		0.295938, -0.953838, -0.051125,
		33.090332, 34.666332, 38.183266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.336529, 35.400791, 37.789524>,  <32.883175, 35.334019, 38.219055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.336529, 35.400791, 37.789524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.252499, 35.010090, 37.772457>,  <33.202080, 34.775669, 37.762215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.252499, 35.010090, 37.772457>,  <33.336529, 35.400791, 37.789524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.252499, 35.010090, 37.772457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032342, 0.036679, -0.998803,
		0.977149, -0.211208, 0.023884,
		-0.210080, -0.976752, -0.042672,
		33.189476, 34.717064, 37.759655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.734695, 35.137016, 37.234756>,  <33.336529, 35.400791, 37.789524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.734695, 35.137016, 37.234756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.447384, 34.861404, 37.273335>,  <33.274998, 34.696037, 37.296482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.447384, 34.861404, 37.273335>,  <33.734695, 35.137016, 37.234756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.447384, 34.861404, 37.273335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015004, -0.123252, -0.992262,
		0.695590, -0.714172, 0.078192,
		-0.718283, -0.689034, 0.096449,
		33.231899, 34.654694, 37.302269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.985596, 34.419701, 36.858513>,  <33.734695, 35.137016, 37.234756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.985596, 34.419701, 36.858513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.585972, 34.421070, 36.875809>,  <33.346199, 34.421890, 36.886185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.585972, 34.421070, 36.875809>,  <33.985596, 34.419701, 36.858513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.585972, 34.421070, 36.875809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041496, -0.365653, -0.929826,
		0.012627, -0.930745, 0.365451,
		-0.999059, 0.003424, 0.043240,
		33.286255, 34.422096, 36.888779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.781212, 34.332321, 36.802589>,  <33.985596, 34.419701, 36.858513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.781212, 34.332321, 36.802589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.061188, 34.614380, 36.757240>,  <35.229172, 34.783615, 36.730030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.061188, 34.614380, 36.757240>,  <34.781212, 34.332321, 36.802589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.061188, 34.614380, 36.757240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618323, -0.518848, 0.590316,
		0.357437, -0.483285, -0.799171,
		0.699940, 0.705147, -0.113371,
		35.271168, 34.825924, 36.723228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.437981, 34.005360, 36.579418>,  <34.781212, 34.332321, 36.802589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.437981, 34.005360, 36.579418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.533157, 34.352551, 36.753773>,  <35.590263, 34.560867, 36.858383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.533157, 34.352551, 36.753773>,  <35.437981, 34.005360, 36.579418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.533157, 34.352551, 36.753773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555531, -0.489739, 0.671968,
		0.796724, 0.082259, -0.598719,
		0.237941, 0.867980, 0.435884,
		35.604538, 34.612946, 36.884537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.140293, 34.035213, 36.812145>,  <35.437981, 34.005360, 36.579418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.140293, 34.035213, 36.812145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.961193, 34.293617, 37.059433>,  <35.853733, 34.448658, 37.207806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.961193, 34.293617, 37.059433>,  <36.140293, 34.035213, 36.812145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.961193, 34.293617, 37.059433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391292, -0.480117, 0.785097,
		0.803997, 0.593431, -0.037805,
		-0.447750, 0.646009, 0.618217,
		35.826870, 34.487419, 37.244900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.951958, 33.275352, 36.822235>,  <36.140293, 34.035213, 36.812145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.951958, 33.275352, 36.822235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.297703, 33.467846, 36.763870>,  <36.505150, 33.583340, 36.728851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.297703, 33.467846, 36.763870>,  <35.951958, 33.275352, 36.822235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.297703, 33.467846, 36.763870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331047, -0.326132, 0.885464,
		0.378526, -0.813667, -0.441207,
		0.864365, 0.481231, -0.145913,
		36.557011, 33.612217, 36.720097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.419407, 32.701801, 37.034378>,  <35.951958, 33.275352, 36.822235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.419407, 32.701801, 37.034378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.582966, 33.065617, 37.064133>,  <36.681103, 33.283905, 37.081985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.582966, 33.065617, 37.064133>,  <36.419407, 32.701801, 37.034378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.582966, 33.065617, 37.064133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460979, -0.276215, 0.843329,
		0.787591, -0.310544, -0.532224,
		0.408899, 0.909543, 0.074390,
		36.705635, 33.338478, 37.086449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.132877, 32.560299, 37.010632>,  <36.419407, 32.701801, 37.034378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.132877, 32.560299, 37.010632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.050278, 32.909267, 37.187828>,  <37.000717, 33.118649, 37.294147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.050278, 32.909267, 37.187828>,  <37.132877, 32.560299, 37.010632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.050278, 32.909267, 37.187828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528180, -0.281729, 0.801034,
		0.823641, 0.399394, -0.402617,
		-0.206500, 0.872418, 0.442995,
		36.988327, 33.170994, 37.320728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.735832, 32.752739, 37.442291>,  <37.132877, 32.560299, 37.010632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.735832, 32.752739, 37.442291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.480762, 33.017262, 37.600300>,  <37.327721, 33.175976, 37.695107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.480762, 33.017262, 37.600300>,  <37.735832, 32.752739, 37.442291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.480762, 33.017262, 37.600300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439441, -0.108873, 0.891649,
		0.632661, 0.742172, -0.221179,
		-0.637677, 0.661307, 0.395021,
		37.289459, 33.215652, 37.718807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.194374, 33.164536, 37.913563>,  <37.735832, 32.752739, 37.442291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.194374, 33.164536, 37.913563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.811081, 33.204685, 38.020687>,  <37.581104, 33.228775, 38.084961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.811081, 33.204685, 38.020687>,  <38.194374, 33.164536, 37.913563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.811081, 33.204685, 38.020687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274529, 0.060236, 0.959690,
		0.080199, 0.993124, -0.085276,
		-0.958229, 0.100377, 0.267811,
		37.523613, 33.234798, 38.101028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.200779, 33.736877, 38.500118>,  <38.194374, 33.164536, 37.913563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.200779, 33.736877, 38.500118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.872032, 33.509457, 38.514400>,  <37.674782, 33.373005, 38.522968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.872032, 33.509457, 38.514400>,  <38.200779, 33.736877, 38.500118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.872032, 33.509457, 38.514400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082680, -0.057035, 0.994943,
		-0.563644, 0.820665, 0.093884,
		-0.821869, -0.568556, 0.035705,
		37.625473, 33.338890, 38.525112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.874023, 33.801777, 39.217159>,  <38.200779, 33.736877, 38.500118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.874023, 33.801777, 39.217159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.667625, 33.490871, 39.073151>,  <37.543789, 33.304329, 38.986744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.667625, 33.490871, 39.073151>,  <37.874023, 33.801777, 39.217159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.667625, 33.490871, 39.073151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020847, -0.408779, 0.912395,
		-0.856340, 0.478293, 0.194723,
		-0.515991, -0.777261, -0.360025,
		37.512829, 33.257694, 38.965141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.305557, 33.753872, 39.640293>,  <37.874023, 33.801777, 39.217159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.305557, 33.753872, 39.640293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.396561, 33.398212, 39.481476>,  <37.451164, 33.184814, 39.386185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.396561, 33.398212, 39.481476>,  <37.305557, 33.753872, 39.640293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.396561, 33.398212, 39.481476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092252, -0.386226, 0.917779,
		-0.969396, -0.245432, -0.005844,
		0.227509, -0.889153, -0.397048,
		37.464813, 33.131466, 39.362362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.876633, 33.322659, 40.088947>,  <37.305557, 33.753872, 39.640293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.876633, 33.322659, 40.088947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.128555, 33.059616, 39.923592>,  <37.279709, 32.901791, 39.824379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.128555, 33.059616, 39.923592>,  <36.876633, 33.322659, 40.088947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.128555, 33.059616, 39.923592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198068, -0.378641, 0.904102,
		-0.751072, -0.651290, -0.108220,
		0.629809, -0.657611, -0.413387,
		37.317497, 32.862331, 39.799576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.700897, 32.639366, 40.230267>,  <36.876633, 33.322659, 40.088947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.700897, 32.639366, 40.230267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.090534, 32.606476, 40.145996>,  <37.324318, 32.586742, 40.095432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.090534, 32.606476, 40.145996>,  <36.700897, 32.639366, 40.230267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.090534, 32.606476, 40.145996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147823, -0.473515, 0.868292,
		-0.171154, -0.876939, -0.449092,
		0.974091, -0.082225, -0.210676,
		37.382763, 32.581806, 40.082794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.816074, 31.918646, 40.258316>,  <36.700897, 32.639366, 40.230267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.816074, 31.918646, 40.258316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.169712, 32.101536, 40.296928>,  <37.381897, 32.211269, 40.320095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.169712, 32.101536, 40.296928>,  <36.816074, 31.918646, 40.258316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.169712, 32.101536, 40.296928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202835, -0.561569, 0.802183,
		0.420987, -0.689628, -0.589223,
		0.884097, 0.457224, 0.096532,
		37.434940, 32.238705, 40.325890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.254623, 31.406263, 40.471008>,  <36.816074, 31.918646, 40.258316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.254623, 31.406263, 40.471008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.441631, 31.744343, 40.574596>,  <37.553837, 31.947191, 40.636749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.441631, 31.744343, 40.574596>,  <37.254623, 31.406263, 40.471008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.441631, 31.744343, 40.574596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395841, -0.462108, 0.793578,
		0.790402, -0.268505, -0.550609,
		0.467520, 0.845199, 0.258965,
		37.581886, 31.997902, 40.652287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.959080, 31.226860, 40.687134>,  <37.254623, 31.406263, 40.471008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.959080, 31.226860, 40.687134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.860672, 31.569372, 40.868797>,  <37.801628, 31.774879, 40.977795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.860672, 31.569372, 40.868797>,  <37.959080, 31.226860, 40.687134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.860672, 31.569372, 40.868797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318016, -0.371314, 0.872348,
		0.915609, 0.359045, -0.180960,
		-0.246019, 0.856278, 0.454161,
		37.786865, 31.826256, 41.005047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.373638, 31.157814, 41.227657>,  <37.959080, 31.226860, 40.687134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.373638, 31.157814, 41.227657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.189575, 31.500841, 41.319595>,  <38.079136, 31.706657, 41.374760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.189575, 31.500841, 41.319595>,  <38.373638, 31.157814, 41.227657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.189575, 31.500841, 41.319595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448668, 0.001218, 0.893698,
		0.766126, 0.514371, -0.385324,
		-0.460161, 0.857567, 0.229848,
		38.051525, 31.758112, 41.388550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.891647, 31.714577, 41.333023>,  <38.373638, 31.157814, 41.227657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.891647, 31.714577, 41.333023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.557644, 31.763630, 41.547585>,  <38.357243, 31.793062, 41.676319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.557644, 31.763630, 41.547585>,  <38.891647, 31.714577, 41.333023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.557644, 31.763630, 41.547585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533102, -0.061098, 0.843842,
		0.136257, 0.990569, -0.014359,
		-0.835007, 0.122635, 0.536400,
		38.307140, 31.800421, 41.708504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.973782, 32.215118, 41.821522>,  <38.891647, 31.714577, 41.333023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.973782, 32.215118, 41.821522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.648720, 32.026638, 41.958672>,  <38.453682, 31.913549, 42.040962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.648720, 32.026638, 41.958672>,  <38.973782, 32.215118, 41.821522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.648720, 32.026638, 41.958672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378634, 0.020320, 0.925324,
		-0.442979, 0.881793, 0.161898,
		-0.812654, -0.471199, 0.342878,
		38.404922, 31.885279, 42.061535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.841846, 32.557831, 42.395466>,  <38.973782, 32.215118, 41.821522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.841846, 32.557831, 42.395466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.646675, 32.211040, 42.436020>,  <38.529572, 32.002968, 42.460354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.646675, 32.211040, 42.436020>,  <38.841846, 32.557831, 42.395466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.646675, 32.211040, 42.436020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383762, -0.108740, 0.917007,
		-0.783995, 0.486347, 0.385769,
		-0.487933, -0.866973, 0.101390,
		38.500294, 31.950949, 42.466438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.425640, 32.505852, 43.001804>,  <38.841846, 32.557831, 42.395466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.425640, 32.505852, 43.001804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.448204, 32.114315, 42.923130>,  <38.461742, 31.879393, 42.875927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.448204, 32.114315, 42.923130>,  <38.425640, 32.505852, 43.001804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.448204, 32.114315, 42.923130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359264, -0.163901, 0.918731,
		-0.931530, -0.122482, 0.342418,
		0.056405, -0.978844, -0.196681,
		38.465126, 31.820662, 42.864124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.027012, 32.229153, 43.535431>,  <38.425640, 32.505852, 43.001804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.027012, 32.229153, 43.535431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.264450, 31.944086, 43.385902>,  <38.406914, 31.773045, 43.296185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.264450, 31.944086, 43.385902>,  <38.027012, 32.229153, 43.535431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.264450, 31.944086, 43.385902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383599, -0.157780, 0.909922,
		-0.707456, -0.683525, 0.179722,
		0.593598, -0.712670, -0.373821,
		38.442528, 31.730286, 43.273754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.929829, 31.663595, 43.952316>,  <38.027012, 32.229153, 43.535431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.929829, 31.663595, 43.952316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.276253, 31.577293, 43.771923>,  <38.484108, 31.525513, 43.663689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.276253, 31.577293, 43.771923>,  <37.929829, 31.663595, 43.952316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.276253, 31.577293, 43.771923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400478, -0.240570, 0.884163,
		-0.299256, -0.946348, -0.121943,
		0.866062, -0.215756, -0.450984,
		38.536072, 31.512568, 43.636627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.047596, 30.898394, 44.086006>,  <37.929829, 31.663595, 43.952316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.047596, 30.898394, 44.086006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.398907, 31.065674, 43.993275>,  <38.609692, 31.166042, 43.937637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.398907, 31.065674, 43.993275>,  <38.047596, 30.898394, 44.086006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.398907, 31.065674, 43.993275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384507, -0.329497, 0.862314,
		0.284234, -0.846487, -0.450190,
		0.878274, 0.418200, -0.231825,
		38.662388, 31.191133, 43.923729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.526581, 30.321739, 44.303638>,  <38.047596, 30.898394, 44.086006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.526581, 30.321739, 44.303638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.764744, 30.638487, 44.249332>,  <38.907642, 30.828535, 44.216747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.764744, 30.638487, 44.249332>,  <38.526581, 30.321739, 44.303638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.764744, 30.638487, 44.249332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500170, -0.233093, 0.833965,
		0.628743, -0.564458, -0.534854,
		0.595409, 0.791868, -0.135769,
		38.943367, 30.876047, 44.208603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.161999, 30.129570, 44.394917>,  <38.526581, 30.321739, 44.303638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.161999, 30.129570, 44.394917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.195896, 30.514194, 44.499393>,  <39.216236, 30.744968, 44.562080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.195896, 30.514194, 44.499393>,  <39.161999, 30.129570, 44.394917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.195896, 30.514194, 44.499393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357111, -0.274029, 0.892961,
		0.930210, 0.017597, -0.366607,
		0.084747, 0.961561, 0.261189,
		39.221321, 30.802662, 44.577751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.770420, 30.277235, 44.794975>,  <39.161999, 30.129570, 44.394917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.770420, 30.277235, 44.794975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.532307, 30.579058, 44.905457>,  <39.389439, 30.760151, 44.971745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.532307, 30.579058, 44.905457>,  <39.770420, 30.277235, 44.794975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.532307, 30.579058, 44.905457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359661, -0.057174, 0.931330,
		0.718531, 0.653742, -0.237350,
		-0.595279, 0.754555, 0.276206,
		39.353722, 30.805424, 44.988319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.201439, 30.525505, 45.218552>,  <39.770420, 30.277235, 44.794975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.201439, 30.525505, 45.218552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.856712, 30.707005, 45.309219>,  <39.649876, 30.815905, 45.363621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.856712, 30.707005, 45.309219>,  <40.201439, 30.525505, 45.218552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.856712, 30.707005, 45.309219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274822, 0.042120, 0.960572,
		0.426312, 0.890133, -0.161000,
		-0.861818, 0.453750, 0.226672,
		39.598167, 30.843130, 45.377220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.424160, 31.072590, 45.659706>,  <40.201439, 30.525505, 45.218552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.424160, 31.072590, 45.659706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.034763, 31.023926, 45.737186>,  <39.801125, 30.994728, 45.783676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.034763, 31.023926, 45.737186>,  <40.424160, 31.072590, 45.659706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.034763, 31.023926, 45.737186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161666, 0.233136, 0.958912,
		-0.161818, 0.964804, -0.207287,
		-0.973488, -0.121658, 0.193702,
		39.742718, 30.987429, 45.795296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.403221, 31.441616, 46.288807>,  <40.424160, 31.072590, 45.659706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.403221, 31.441616, 46.288807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.049217, 31.257877, 46.258438>,  <39.836815, 31.147635, 46.240219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.049217, 31.257877, 46.258438>,  <40.403221, 31.441616, 46.288807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.049217, 31.257877, 46.258438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100789, 0.029823, 0.994461,
		-0.454539, 0.887756, -0.072691,
		-0.885006, -0.459348, -0.075920,
		39.783714, 31.120073, 46.235661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.475742, 32.180000, 46.331097>,  <40.403221, 31.441616, 46.288807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.475742, 32.180000, 46.331097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.844784, 32.334251, 46.334930>,  <41.066208, 32.426804, 46.337231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.844784, 32.334251, 46.334930>,  <40.475742, 32.180000, 46.331097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.844784, 32.334251, 46.334930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167670, 0.423264, -0.890357,
		-0.347405, 0.819839, 0.455163,
		0.922603, 0.385631, 0.009582,
		41.121563, 32.449940, 46.337807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.357288, 32.819675, 46.139725>,  <40.475742, 32.180000, 46.331097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.357288, 32.819675, 46.139725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.744339, 32.762283, 46.056679>,  <40.976570, 32.727848, 46.006851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.744339, 32.762283, 46.056679>,  <40.357288, 32.819675, 46.139725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.744339, 32.762283, 46.056679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096074, 0.551293, -0.828762,
		0.233371, 0.821881, 0.519663,
		0.967630, -0.143483, -0.207617,
		41.034630, 32.719238, 45.994392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.614944, 33.451351, 45.917549>,  <40.357288, 32.819675, 46.139725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.614944, 33.451351, 45.917549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.860413, 33.172348, 45.769554>,  <41.007694, 33.004948, 45.680759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.860413, 33.172348, 45.769554>,  <40.614944, 33.451351, 45.917549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.860413, 33.172348, 45.769554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093644, 0.400989, -0.911284,
		0.783988, 0.593876, 0.180758,
		0.613672, -0.697509, -0.369984,
		41.044514, 32.963097, 45.658558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.272205, 33.788021, 45.519958>,  <40.614944, 33.451351, 45.917549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.272205, 33.788021, 45.519958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.225605, 33.418354, 45.374443>,  <41.197647, 33.196552, 45.287132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.225605, 33.418354, 45.374443>,  <41.272205, 33.788021, 45.519958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.225605, 33.418354, 45.374443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050984, 0.360238, -0.931466,
		0.991882, -0.127060, 0.005151,
		-0.116497, -0.924166, -0.363792,
		41.190655, 33.141106, 45.265305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.779007, 33.636822, 44.968399>,  <41.272205, 33.788021, 45.519958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.779007, 33.636822, 44.968399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.514347, 33.347820, 44.888180>,  <41.355553, 33.174419, 44.840050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.514347, 33.347820, 44.888180>,  <41.779007, 33.636822, 44.968399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.514347, 33.347820, 44.888180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002120, 0.265661, -0.964064,
		0.749814, -0.638294, -0.174241,
		-0.661645, -0.722500, -0.200549,
		41.315853, 33.131069, 44.828014>
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
