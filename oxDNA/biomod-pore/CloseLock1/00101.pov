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
	<23.994320, 35.163540, 34.872890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.359152, 35.077873, 35.012741>,  <24.578051, 35.026474, 35.096653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.359152, 35.077873, 35.012741>,  <23.994320, 35.163540, 34.872890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.359152, 35.077873, 35.012741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327543, -0.893528, 0.307120,
		0.246630, -0.394637, -0.885119,
		0.912080, -0.214169, 0.349631,
		24.632776, 35.013622, 35.117630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.215185, 34.527840, 34.614086>,  <23.994320, 35.163540, 34.872890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.215185, 34.527840, 34.614086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.383303, 34.626587, 34.963352>,  <24.484173, 34.685837, 35.172913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.383303, 34.626587, 34.963352>,  <24.215185, 34.527840, 34.614086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.383303, 34.626587, 34.963352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427818, -0.794698, 0.430612,
		0.800204, -0.554537, -0.228391,
		0.420292, 0.246868, 0.873162,
		24.509390, 34.700645, 35.225300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.603819, 33.994766, 34.967987>,  <24.215185, 34.527840, 34.614086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.603819, 33.994766, 34.967987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.472095, 34.204639, 35.281998>,  <24.393061, 34.330563, 35.470402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.472095, 34.204639, 35.281998>,  <24.603819, 33.994766, 34.967987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.472095, 34.204639, 35.281998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164555, -0.850565, 0.499460,
		0.929772, 0.035298, 0.366439,
		-0.329310, 0.524684, 0.785023,
		24.373302, 34.362045, 35.517506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.031675, 34.391663, 34.426365>,  <24.603819, 33.994766, 34.967987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.031675, 34.391663, 34.426365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.006781, 34.789597, 34.458439>,  <24.991844, 35.028358, 34.477684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.006781, 34.789597, 34.458439>,  <25.031675, 34.391663, 34.426365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.006781, 34.789597, 34.458439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.978425, 0.044960, 0.201653,
		0.197006, 0.091001, -0.976170,
		-0.062239, 0.994835, 0.080180,
		24.988110, 35.088047, 34.482494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.198009, 34.788284, 34.878284>,  <25.031675, 34.391663, 34.426365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.198009, 34.788284, 34.878284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.296906, 35.153061, 34.747292>,  <25.356243, 35.371925, 34.668697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.296906, 35.153061, 34.747292>,  <25.198009, 34.788284, 34.878284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.296906, 35.153061, 34.747292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.694935, -0.402409, -0.595931,
		-0.675232, -0.080240, -0.733228,
		0.247240, 0.911937, -0.327481,
		25.371077, 35.426643, 34.649048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.825827, 34.654552, 35.444080>,  <25.198009, 34.788284, 34.878284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.825827, 34.654552, 35.444080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.212158, 34.612133, 35.538677>,  <26.443956, 34.586681, 35.595436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.212158, 34.612133, 35.538677>,  <25.825827, 34.654552, 35.444080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.212158, 34.612133, 35.538677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005759, 0.921008, 0.389501,
		-0.259117, -0.374829, 0.890147,
		0.965829, -0.106053, 0.236490,
		26.501907, 34.580318, 35.609623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.966446, 34.831615, 36.251923>,  <25.825827, 34.654552, 35.444080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.966446, 34.831615, 36.251923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.288656, 34.880733, 36.020042>,  <26.481981, 34.910206, 35.880913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.288656, 34.880733, 36.020042>,  <25.966446, 34.831615, 36.251923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.288656, 34.880733, 36.020042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160868, 0.896236, 0.413380,
		0.570309, -0.426243, 0.702186,
		0.805524, 0.122795, -0.579700,
		26.530313, 34.917572, 35.846134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.523254, 35.163120, 36.644791>,  <25.966446, 34.831615, 36.251923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.523254, 35.163120, 36.644791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.611492, 35.258049, 36.266369>,  <26.664434, 35.315006, 36.039314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.611492, 35.258049, 36.266369>,  <26.523254, 35.163120, 36.644791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.611492, 35.258049, 36.266369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191764, 0.940463, 0.280634,
		0.956329, -0.243325, 0.161949,
		0.220593, 0.237322, -0.946053,
		26.677670, 35.329247, 35.982552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.156376, 35.454964, 36.699120>,  <26.523254, 35.163120, 36.644791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.156376, 35.454964, 36.699120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.023972, 35.589336, 36.346397>,  <26.944529, 35.669960, 36.134766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.023972, 35.589336, 36.346397>,  <27.156376, 35.454964, 36.699120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.023972, 35.589336, 36.346397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324744, 0.917959, 0.227798,
		0.885987, -0.210957, -0.412947,
		-0.331013, 0.335928, -0.881807,
		26.924667, 35.690113, 36.081856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.629860, 35.967304, 36.579052>,  <27.156376, 35.454964, 36.699120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.629860, 35.967304, 36.579052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.325232, 36.030083, 36.327534>,  <27.142454, 36.067749, 36.176624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.325232, 36.030083, 36.327534>,  <27.629860, 35.967304, 36.579052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.325232, 36.030083, 36.327534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078441, 0.985423, 0.150958,
		0.643320, 0.065641, -0.762779,
		-0.761569, 0.156948, -0.628793,
		27.096762, 36.077168, 36.138897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.779900, 36.390301, 36.004066>,  <27.629860, 35.967304, 36.579052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.779900, 36.390301, 36.004066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.386600, 36.432983, 36.063171>,  <27.150621, 36.458591, 36.098637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.386600, 36.432983, 36.063171>,  <27.779900, 36.390301, 36.004066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.386600, 36.432983, 36.063171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117282, 0.990982, 0.064800,
		-0.139520, 0.081045, -0.986897,
		-0.983249, 0.106704, 0.147767,
		27.091625, 36.464996, 36.107502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.657854, 37.054523, 35.618809>,  <27.779900, 36.390301, 36.004066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.657854, 37.054523, 35.618809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.335030, 37.017117, 35.852013>,  <27.141335, 36.994671, 35.991936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.335030, 37.017117, 35.852013>,  <27.657854, 37.054523, 35.618809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.335030, 37.017117, 35.852013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073541, 0.995610, 0.057905,
		-0.585870, 0.003858, -0.810396,
		-0.807062, -0.093522, 0.583014,
		27.092911, 36.989059, 36.026917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.144030, 37.597443, 35.353153>,  <27.657854, 37.054523, 35.618809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.144030, 37.597443, 35.353153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.007648, 37.502888, 35.717102>,  <26.925819, 37.446156, 35.935471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.007648, 37.502888, 35.717102>,  <27.144030, 37.597443, 35.353153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.007648, 37.502888, 35.717102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014633, 0.966416, 0.256564,
		-0.939966, 0.100790, -0.326044,
		-0.340954, -0.236391, 0.909874,
		26.905363, 37.431969, 35.990063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.540937, 37.951546, 35.507030>,  <27.144030, 37.597443, 35.353153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.540937, 37.951546, 35.507030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.725775, 37.855728, 35.848576>,  <26.836678, 37.798237, 36.053505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.725775, 37.855728, 35.848576>,  <26.540937, 37.951546, 35.507030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.725775, 37.855728, 35.848576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152157, 0.927135, 0.342446,
		-0.873682, -0.288163, 0.391972,
		0.462091, -0.239547, 0.853867,
		26.864403, 37.783863, 36.104736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.048943, 38.232964, 36.013882>,  <26.540937, 37.951546, 35.507030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.048943, 38.232964, 36.013882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.396309, 38.158920, 36.197876>,  <26.604729, 38.114494, 36.308273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.396309, 38.158920, 36.197876>,  <26.048943, 38.232964, 36.013882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.396309, 38.158920, 36.197876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083683, 0.859677, 0.503938,
		-0.488724, -0.476121, 0.731066,
		0.868416, -0.185109, 0.459988,
		26.656834, 38.103386, 36.335873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.968317, 38.511604, 36.715736>,  <26.048943, 38.232964, 36.013882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.968317, 38.511604, 36.715736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.364878, 38.465111, 36.691689>,  <26.602814, 38.437214, 36.677258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.364878, 38.465111, 36.691689>,  <25.968317, 38.511604, 36.715736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.364878, 38.465111, 36.691689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128323, 0.773416, 0.620774,
		-0.025654, -0.623151, 0.781681,
		0.991400, -0.116233, -0.060123,
		26.662298, 38.430241, 36.673653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.137487, 38.643459, 37.374493>,  <25.968317, 38.511604, 36.715736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.137487, 38.643459, 37.374493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.474222, 38.698425, 37.165714>,  <26.676262, 38.731403, 37.040447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.474222, 38.698425, 37.165714>,  <26.137487, 38.643459, 37.374493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.474222, 38.698425, 37.165714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276943, 0.720063, 0.636248,
		0.463265, -0.680167, 0.568118,
		0.841836, 0.137415, -0.521948,
		26.726772, 38.739651, 37.009129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.733912, 38.766277, 37.879757>,  <26.137487, 38.643459, 37.374493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.733912, 38.766277, 37.879757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.876104, 38.920990, 37.539398>,  <26.961420, 39.013817, 37.335182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.876104, 38.920990, 37.539398>,  <26.733912, 38.766277, 37.879757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.876104, 38.920990, 37.539398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327519, 0.801096, 0.500975,
		0.875422, -0.456774, 0.158096,
		0.355482, 0.386785, -0.850900,
		26.982750, 39.037025, 37.284130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.451040, 38.897507, 38.057770>,  <26.733912, 38.766277, 37.879757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.451040, 38.897507, 38.057770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.382643, 39.128407, 37.738384>,  <27.341604, 39.266945, 37.546753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.382643, 39.128407, 37.738384>,  <27.451040, 38.897507, 38.057770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.382643, 39.128407, 37.738384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.637991, 0.682427, 0.356735,
		0.750819, -0.448415, -0.484970,
		-0.170992, 0.577250, -0.798464,
		27.331345, 39.301582, 37.498844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.124180, 39.247295, 37.825241>,  <27.451040, 38.897507, 38.057770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.124180, 39.247295, 37.825241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.810287, 39.457062, 37.693066>,  <27.621952, 39.582920, 37.613758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.810287, 39.457062, 37.693066>,  <28.124180, 39.247295, 37.825241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.810287, 39.457062, 37.693066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461501, 0.850206, 0.253313,
		0.413783, 0.046283, -0.909198,
		-0.784729, 0.524412, -0.330441,
		27.574869, 39.614384, 37.593933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.438099, 39.764313, 37.543922>,  <28.124180, 39.247295, 37.825241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.438099, 39.764313, 37.543922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.064417, 39.877075, 37.631371>,  <27.840208, 39.944733, 37.683838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.064417, 39.877075, 37.631371>,  <28.438099, 39.764313, 37.543922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.064417, 39.877075, 37.631371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345776, 0.866305, 0.360492,
		-0.087765, 0.412366, -0.906781,
		-0.934204, 0.281904, 0.218617,
		27.784155, 39.961647, 37.696957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.304281, 40.491623, 37.328339>,  <28.438099, 39.764313, 37.543922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.304281, 40.491623, 37.328339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.027557, 40.433846, 37.611332>,  <27.861523, 40.399178, 37.781128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.027557, 40.433846, 37.611332>,  <28.304281, 40.491623, 37.328339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.027557, 40.433846, 37.611332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264269, 0.861165, 0.434231,
		-0.671985, 0.487371, -0.557589,
		-0.691808, -0.144443, 0.707487,
		27.820015, 40.390514, 37.823578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.199097, 41.136547, 37.484936>,  <28.304281, 40.491623, 37.328339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.199097, 41.136547, 37.484936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.008989, 40.932865, 37.771942>,  <27.894924, 40.810654, 37.944145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.008989, 40.932865, 37.771942>,  <28.199097, 41.136547, 37.484936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.008989, 40.932865, 37.771942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214288, 0.723955, 0.655721,
		-0.853346, 0.465398, -0.234956,
		-0.475269, -0.509209, 0.717514,
		27.866409, 40.780102, 37.987198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.718969, 41.598965, 37.796818>,  <28.199097, 41.136547, 37.484936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.718969, 41.598965, 37.796818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.829222, 41.311172, 38.051807>,  <27.895372, 41.138496, 38.204800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.829222, 41.311172, 38.051807>,  <27.718969, 41.598965, 37.796818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.829222, 41.311172, 38.051807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302505, 0.694389, 0.652928,
		-0.912425, 0.012870, 0.409043,
		0.275631, -0.719485, 0.637471,
		27.911911, 41.095325, 38.243050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.655993, 41.911621, 38.411457>,  <27.718969, 41.598965, 37.796818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.655993, 41.911621, 38.411457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.879751, 41.587872, 38.483009>,  <28.014006, 41.393623, 38.525940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.879751, 41.587872, 38.483009>,  <27.655993, 41.911621, 38.411457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.879751, 41.587872, 38.483009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286553, 0.391323, 0.874502,
		-0.777794, -0.437936, 0.450832,
		0.559397, -0.809370, 0.178876,
		28.047569, 41.345062, 38.536671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.405573, 41.669224, 38.999153>,  <27.655993, 41.911621, 38.411457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.405573, 41.669224, 38.999153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.786263, 41.572109, 38.924026>,  <28.014677, 41.513840, 38.878952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.786263, 41.572109, 38.924026>,  <27.405573, 41.669224, 38.999153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.786263, 41.572109, 38.924026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267090, 0.353457, 0.896510,
		-0.151277, -0.903395, 0.401240,
		0.951724, -0.242788, -0.187818,
		28.071779, 41.499271, 38.867680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.577187, 41.417931, 39.654018>,  <27.405573, 41.669224, 38.999153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.577187, 41.417931, 39.654018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.894661, 41.526237, 39.436119>,  <28.085146, 41.591221, 39.305378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.894661, 41.526237, 39.436119>,  <27.577187, 41.417931, 39.654018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.894661, 41.526237, 39.436119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346689, 0.534504, 0.770787,
		0.499866, -0.800622, 0.330361,
		0.793688, 0.270758, -0.544747,
		28.132767, 41.607468, 39.272694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.067890, 41.317837, 40.186649>,  <27.577187, 41.417931, 39.654018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.067890, 41.317837, 40.186649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.199217, 41.586929, 39.921429>,  <28.278013, 41.748386, 39.762295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.199217, 41.586929, 39.921429>,  <28.067890, 41.317837, 40.186649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.199217, 41.586929, 39.921429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319367, 0.581560, 0.748193,
		0.888939, -0.457401, -0.023913,
		0.328317, 0.672735, -0.663050,
		28.297712, 41.788750, 39.722515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.768278, 41.545063, 40.402336>,  <28.067890, 41.317837, 40.186649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.768278, 41.545063, 40.402336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.575794, 41.816162, 40.179951>,  <28.460304, 41.978821, 40.046520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.575794, 41.816162, 40.179951>,  <28.768278, 41.545063, 40.402336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.575794, 41.816162, 40.179951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285830, 0.720872, 0.631383,
		0.828695, 0.144919, -0.540613,
		-0.481212, 0.677748, -0.555961,
		28.431431, 42.019485, 40.013161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.856852, 42.175186, 40.787270>,  <28.768278, 41.545063, 40.402336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.856852, 42.175186, 40.787270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.176630, 41.976311, 40.922138>,  <29.368498, 41.856983, 41.003059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.176630, 41.976311, 40.922138>,  <28.856852, 42.175186, 40.787270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.176630, 41.976311, 40.922138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417825, 0.863465, 0.282579,
		-0.431634, -0.085026, 0.898032,
		0.799446, -0.497191, 0.337175,
		29.416464, 41.827152, 41.023293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.942667, 42.567356, 41.384693>,  <28.856852, 42.175186, 40.787270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.942667, 42.567356, 41.384693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.272579, 42.375507, 41.264893>,  <29.470526, 42.260399, 41.193012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.272579, 42.375507, 41.264893>,  <28.942667, 42.567356, 41.384693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.272579, 42.375507, 41.264893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538781, 0.827342, 0.158809,
		0.171621, -0.292347, 0.940787,
		0.824780, -0.479623, -0.299500,
		29.520014, 42.231621, 41.175041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.093271, 43.072041, 40.909443>,  <28.942667, 42.567356, 41.384693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.093271, 43.072041, 40.909443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.415590, 43.308739, 40.900234>,  <29.608982, 43.450756, 40.894707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.415590, 43.308739, 40.900234>,  <29.093271, 43.072041, 40.909443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.415590, 43.308739, 40.900234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445351, -0.631160, -0.635059,
		-0.390323, 0.501475, -0.772121,
		0.805798, 0.591743, -0.023024,
		29.657330, 43.486263, 40.893326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.224129, 43.272305, 40.285042>,  <29.093271, 43.072041, 40.909443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.224129, 43.272305, 40.285042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.570986, 43.255104, 40.483524>,  <29.779100, 43.244781, 40.602612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.570986, 43.255104, 40.483524>,  <29.224129, 43.272305, 40.285042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.570986, 43.255104, 40.483524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362562, -0.628575, -0.688071,
		0.341490, 0.776559, -0.529472,
		0.867141, -0.043003, 0.496203,
		29.831127, 43.242203, 40.632385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.751436, 43.538467, 39.853111>,  <29.224129, 43.272305, 40.285042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.751436, 43.538467, 39.853111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.865543, 43.283085, 40.139046>,  <29.934008, 43.129856, 40.310608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.865543, 43.283085, 40.139046>,  <29.751436, 43.538467, 39.853111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.865543, 43.283085, 40.139046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158274, -0.704208, -0.692128,
		0.945290, 0.310580, -0.099835,
		0.285266, -0.638460, 0.714837,
		29.951122, 43.091545, 40.353497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.419727, 43.179817, 39.608105>,  <29.751436, 43.538467, 39.853111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.419727, 43.179817, 39.608105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.232843, 42.929031, 39.857464>,  <30.120712, 42.778561, 40.007080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.232843, 42.929031, 39.857464>,  <30.419727, 43.179817, 39.608105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.232843, 42.929031, 39.857464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256926, -0.770935, -0.582793,
		0.845993, -0.112119, 0.521273,
		-0.467210, -0.626968, 0.623399,
		30.092680, 42.740940, 40.044483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.918337, 42.606712, 39.840313>,  <30.419727, 43.179817, 39.608105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.918337, 42.606712, 39.840313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.537390, 42.488045, 39.868542>,  <30.308821, 42.416843, 39.885479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.537390, 42.488045, 39.868542>,  <30.918337, 42.606712, 39.840313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.537390, 42.488045, 39.868542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268867, -0.926085, -0.264722,
		0.143894, -0.233137, 0.961739,
		-0.952368, -0.296672, 0.070575,
		30.251678, 42.399044, 39.889713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.975166, 41.975101, 40.262199>,  <30.918337, 42.606712, 39.840313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.975166, 41.975101, 40.262199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.642700, 41.964176, 40.040058>,  <30.443220, 41.957623, 39.906773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.642700, 41.964176, 40.040058>,  <30.975166, 41.975101, 40.262199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.642700, 41.964176, 40.040058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215147, -0.936790, -0.275928,
		-0.512713, -0.348825, 0.784505,
		-0.831166, -0.027313, -0.555353,
		30.393351, 41.955982, 39.873451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.642561, 41.269173, 40.359531>,  <30.975166, 41.975101, 40.262199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.642561, 41.269173, 40.359531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.499491, 41.405014, 40.011570>,  <30.413649, 41.486519, 39.802792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.499491, 41.405014, 40.011570>,  <30.642561, 41.269173, 40.359531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.499491, 41.405014, 40.011570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261468, -0.857854, -0.442405,
		-0.896496, -0.385689, 0.218034,
		-0.357672, 0.339605, -0.869908,
		30.392189, 41.506897, 39.750599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.148880, 40.741314, 40.206860>,  <30.642561, 41.269173, 40.359531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.148880, 40.741314, 40.206860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.218893, 40.935246, 39.864094>,  <30.260900, 41.051605, 39.658436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.218893, 40.935246, 39.864094>,  <30.148880, 40.741314, 40.206860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.218893, 40.935246, 39.864094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070602, -0.874291, -0.480241,
		-0.982028, 0.023558, -0.187260,
		0.175033, 0.484831, -0.856915,
		30.271402, 41.080696, 39.607018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.794096, 40.362000, 39.748650>,  <30.148880, 40.741314, 40.206860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.794096, 40.362000, 39.748650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.055679, 40.542076, 39.505447>,  <30.212629, 40.650124, 39.359528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.055679, 40.542076, 39.505447>,  <29.794096, 40.362000, 39.748650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.055679, 40.542076, 39.505447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046901, -0.826252, -0.561345,
		-0.755076, 0.338580, -0.561448,
		0.653957, 0.450191, -0.608003,
		30.251867, 40.677132, 39.323048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.466740, 40.333492, 39.021473>,  <29.794096, 40.362000, 39.748650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.466740, 40.333492, 39.021473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.853355, 40.415024, 38.959179>,  <30.085325, 40.463943, 38.921803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.853355, 40.415024, 38.959179>,  <29.466740, 40.333492, 39.021473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.853355, 40.415024, 38.959179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017301, -0.553933, -0.832382,
		-0.255932, 0.807225, -0.531871,
		0.966540, 0.203831, -0.155735,
		30.143318, 40.476173, 38.912460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.544203, 40.551407, 38.318817>,  <29.466740, 40.333492, 39.021473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.544203, 40.551407, 38.318817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.896841, 40.407196, 38.440678>,  <30.108423, 40.320671, 38.513794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.896841, 40.407196, 38.440678>,  <29.544203, 40.551407, 38.318817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.896841, 40.407196, 38.440678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007608, -0.634495, -0.772889,
		0.471947, 0.683692, -0.556624,
		0.881594, -0.360529, 0.304649,
		30.161320, 40.299038, 38.532074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.764111, 40.324272, 37.709885>,  <29.544203, 40.551407, 38.318817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.764111, 40.324272, 37.709885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.037392, 40.175449, 37.961220>,  <30.201361, 40.086155, 38.112022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.037392, 40.175449, 37.961220>,  <29.764111, 40.324272, 37.709885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.037392, 40.175449, 37.961220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049756, -0.834748, -0.548380,
		0.728532, 0.405918, -0.551790,
		0.683203, -0.372057, 0.628337,
		30.242353, 40.063831, 38.149719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.370558, 40.020779, 37.296711>,  <29.764111, 40.324272, 37.709885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.370558, 40.020779, 37.296711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.363869, 39.840717, 37.653828>,  <30.359856, 39.732681, 37.868099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.363869, 39.840717, 37.653828>,  <30.370558, 40.020779, 37.296711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.363869, 39.840717, 37.653828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103665, -0.888887, -0.446244,
		0.994472, 0.085088, 0.061532,
		-0.016725, -0.450156, 0.892793,
		30.358850, 39.705669, 37.921665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.004015, 39.631104, 37.315601>,  <30.370558, 40.020779, 37.296711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.004015, 39.631104, 37.315601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.736982, 39.461575, 37.560455>,  <30.576763, 39.359859, 37.707367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.736982, 39.461575, 37.560455>,  <31.004015, 39.631104, 37.315601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.736982, 39.461575, 37.560455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160129, -0.884661, -0.437874,
		0.727113, -0.194295, 0.658449,
		-0.667581, -0.423821, 0.612137,
		30.536709, 39.334427, 37.744095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.295830, 38.905689, 37.528057>,  <31.004015, 39.631104, 37.315601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.295830, 38.905689, 37.528057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.900579, 38.914272, 37.588913>,  <30.663429, 38.919422, 37.625427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.900579, 38.914272, 37.588913>,  <31.295830, 38.905689, 37.528057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.900579, 38.914272, 37.588913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101654, -0.833794, -0.542636,
		0.115211, -0.551658, 0.826075,
		-0.988126, 0.021456, 0.152141,
		30.604141, 38.920708, 37.634556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.165236, 38.144669, 37.714600>,  <31.295830, 38.905689, 37.528057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.165236, 38.144669, 37.714600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.793844, 38.282822, 37.659996>,  <30.571009, 38.365715, 37.627232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.793844, 38.282822, 37.659996>,  <31.165236, 38.144669, 37.714600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.793844, 38.282822, 37.659996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270019, -0.880173, -0.390364,
		-0.254981, -0.325584, 0.910483,
		-0.928480, 0.345384, -0.136513,
		30.515301, 38.386436, 37.619041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.626778, 37.675259, 37.990795>,  <31.165236, 38.144669, 37.714600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.626778, 37.675259, 37.990795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.439007, 37.892937, 37.712662>,  <30.326344, 38.023544, 37.545780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.439007, 37.892937, 37.712662>,  <30.626778, 37.675259, 37.990795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.439007, 37.892937, 37.712662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265723, -0.838055, -0.476502,
		-0.842027, -0.038931, 0.538029,
		-0.469449, 0.544194, -0.695320,
		30.298180, 38.056194, 37.504063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.890936, 37.377586, 37.835995>,  <30.626778, 37.675259, 37.990795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.890936, 37.377586, 37.835995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.979881, 37.596096, 37.512974>,  <30.033249, 37.727200, 37.319160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.979881, 37.596096, 37.512974>,  <29.890936, 37.377586, 37.835995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.979881, 37.596096, 37.512974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152346, -0.798648, -0.582195,
		-0.962988, 0.252486, -0.094367,
		0.222362, 0.546270, -0.807554,
		30.046589, 37.759975, 37.270706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.272673, 37.329117, 37.400356>,  <29.890936, 37.377586, 37.835995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.272673, 37.329117, 37.400356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.575985, 37.437126, 37.163002>,  <29.757973, 37.501930, 37.020592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.575985, 37.437126, 37.163002>,  <29.272673, 37.329117, 37.400356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.575985, 37.437126, 37.163002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247047, -0.723294, -0.644836,
		-0.603307, 0.635559, -0.481753,
		0.758280, 0.270019, -0.593381,
		29.803469, 37.518131, 36.984989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.942606, 37.310562, 36.844913>,  <29.272673, 37.329117, 37.400356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.942606, 37.310562, 36.844913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.334219, 37.296040, 36.764740>,  <29.569187, 37.287327, 36.716637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.334219, 37.296040, 36.764740>,  <28.942606, 37.310562, 36.844913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.334219, 37.296040, 36.764740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173079, -0.667103, -0.724581,
		-0.107405, 0.744080, -0.659400,
		0.979034, -0.036305, -0.200435,
		29.627930, 37.285149, 36.704609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.939083, 37.368027, 36.021282>,  <28.942606, 37.310562, 36.844913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.939083, 37.368027, 36.021282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.292068, 37.222717, 36.140808>,  <29.503860, 37.135532, 36.212524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.292068, 37.222717, 36.140808>,  <28.939083, 37.368027, 36.021282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.292068, 37.222717, 36.140808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077208, -0.738513, -0.669804,
		0.464000, 0.568007, -0.679759,
		0.882464, -0.363272, 0.298815,
		29.556808, 37.113735, 36.230453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.265371, 37.223415, 35.420658>,  <28.939083, 37.368027, 36.021282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.265371, 37.223415, 35.420658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.416010, 37.004620, 35.719715>,  <29.506393, 36.873341, 35.899151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.416010, 37.004620, 35.719715>,  <29.265371, 37.223415, 35.420658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.416010, 37.004620, 35.719715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241482, -0.837127, -0.490821,
		0.894350, 0.004299, -0.447348,
		0.376597, -0.546992, 0.747646,
		29.528990, 36.840523, 35.944008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.785231, 36.840813, 35.088642>,  <29.265371, 37.223415, 35.420658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.785231, 36.840813, 35.088642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.702236, 36.653149, 35.431999>,  <29.652439, 36.540550, 35.638012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.702236, 36.653149, 35.431999>,  <29.785231, 36.840813, 35.088642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.702236, 36.653149, 35.431999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119325, -0.858799, -0.498223,
		0.970933, -0.205802, 0.122207,
		-0.207486, -0.469159, 0.858393,
		29.639990, 36.512402, 35.689518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.132126, 36.154182, 35.024158>,  <29.785231, 36.840813, 35.088642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.132126, 36.154182, 35.024158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.877178, 36.100746, 35.327717>,  <29.724211, 36.068684, 35.509850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.877178, 36.100746, 35.327717>,  <30.132126, 36.154182, 35.024158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.877178, 36.100746, 35.327717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068302, -0.971185, -0.228330,
		0.767527, -0.197364, 0.609876,
		-0.637367, -0.133594, 0.758891,
		29.685968, 36.060669, 35.555386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.299854, 35.589710, 35.448742>,  <30.132126, 36.154182, 35.024158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.299854, 35.589710, 35.448742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.906086, 35.606552, 35.517021>,  <29.669825, 35.616657, 35.557991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.906086, 35.606552, 35.517021>,  <30.299854, 35.589710, 35.448742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.906086, 35.606552, 35.517021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097716, -0.938167, -0.332105,
		0.146163, -0.343612, 0.927668,
		-0.984423, 0.042107, 0.170701,
		29.610760, 35.619183, 35.568230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.184864, 35.017960, 35.749878>,  <30.299854, 35.589710, 35.448742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.184864, 35.017960, 35.749878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.830444, 35.128860, 35.601257>,  <29.617792, 35.195400, 35.512085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.830444, 35.128860, 35.601257>,  <30.184864, 35.017960, 35.749878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.830444, 35.128860, 35.601257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053067, -0.856852, -0.512824,
		-0.460544, -0.434670, 0.773926,
		-0.886049, 0.277248, -0.371552,
		29.564631, 35.212036, 35.489792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.706715, 35.459282, 36.193409>,  <30.184864, 35.017960, 35.749878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.706715, 35.459282, 36.193409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.001209, 35.442680, 35.923229>,  <31.177906, 35.432720, 35.761120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.001209, 35.442680, 35.923229>,  <30.706715, 35.459282, 36.193409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.001209, 35.442680, 35.923229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.658177, -0.188163, 0.728970,
		-0.157353, -0.981260, -0.111213,
		0.736235, -0.041507, -0.675451,
		31.222080, 35.430229, 35.720592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.124395, 34.803066, 36.427528>,  <30.706715, 35.459282, 36.193409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.124395, 34.803066, 36.427528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.336926, 35.082672, 36.236084>,  <31.464443, 35.250435, 36.121216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.336926, 35.082672, 36.236084>,  <31.124395, 34.803066, 36.427528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.336926, 35.082672, 36.236084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.812283, -0.259906, 0.522155,
		0.240600, -0.666203, -0.705893,
		0.531327, 0.699016, -0.478612,
		31.496323, 35.292377, 36.092499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.745152, 34.627697, 35.976078>,  <31.124395, 34.803066, 36.427528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.745152, 34.627697, 35.976078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.791489, 34.989071, 36.141186>,  <31.819290, 35.205894, 36.240250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.791489, 34.989071, 36.141186>,  <31.745152, 34.627697, 35.976078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.791489, 34.989071, 36.141186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.928719, -0.245883, 0.277528,
		0.352223, 0.351201, -0.867523,
		0.115841, 0.903437, 0.412773,
		31.826241, 35.260101, 36.265018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.487133, 34.771564, 35.894901>,  <31.745152, 34.627697, 35.976078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.487133, 34.771564, 35.894901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.335423, 34.992046, 36.192177>,  <32.244396, 35.124336, 36.370541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.335423, 34.992046, 36.192177>,  <32.487133, 34.771564, 35.894901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.335423, 34.992046, 36.192177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.824981, -0.162262, 0.541366,
		0.418993, 0.818442, -0.393188,
		-0.379278, 0.551201, 0.743186,
		32.221638, 35.157406, 36.415134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.015297, 35.289478, 36.144356>,  <32.487133, 34.771564, 35.894901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.015297, 35.289478, 36.144356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.742031, 35.250423, 36.433842>,  <32.578072, 35.226990, 36.607533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.742031, 35.250423, 36.433842>,  <33.015297, 35.289478, 36.144356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.742031, 35.250423, 36.433842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.729241, -0.038697, 0.683161,
		-0.038697, 0.994469, 0.097638,
		-0.683161, -0.097638, 0.723711,
		32.537083, 35.221130, 36.650955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.386250, 35.384754, 36.618664>,  <33.015297, 35.289478, 36.144356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.386250, 35.384754, 36.618664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.063358, 35.292564, 36.836018>,  <32.869625, 35.237251, 36.966431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.063358, 35.292564, 36.836018>,  <33.386250, 35.384754, 36.618664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.063358, 35.292564, 36.836018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585931, -0.201815, 0.784828,
		-0.071217, 0.951921, 0.297951,
		-0.807225, -0.230471, 0.543388,
		32.821190, 35.223423, 36.999035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.564625, 35.730778, 37.204872>,  <33.386250, 35.384754, 36.618664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.564625, 35.730778, 37.204872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.276012, 35.466599, 37.288017>,  <33.102844, 35.308090, 37.337906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.276012, 35.466599, 37.288017>,  <33.564625, 35.730778, 37.204872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.276012, 35.466599, 37.288017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408226, -0.163302, 0.898156,
		-0.559240, 0.732900, 0.387439,
		-0.721528, -0.660447, 0.207863,
		33.059555, 35.268463, 37.350376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.170090, 35.820526, 37.926235>,  <33.564625, 35.730778, 37.204872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.170090, 35.820526, 37.926235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.117603, 35.437790, 37.822510>,  <33.086109, 35.208149, 37.760273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.117603, 35.437790, 37.822510>,  <33.170090, 35.820526, 37.926235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.117603, 35.437790, 37.822510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349430, -0.289430, 0.891139,
		-0.927728, 0.026323, 0.372326,
		-0.131220, -0.956837, -0.259315,
		33.078236, 35.150738, 37.744717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.664467, 35.398731, 38.310646>,  <33.170090, 35.820526, 37.926235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.664467, 35.398731, 38.310646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.980801, 35.189453, 38.183620>,  <33.170601, 35.063885, 38.107407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.980801, 35.189453, 38.183620>,  <32.664467, 35.398731, 38.310646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.980801, 35.189453, 38.183620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220194, -0.240900, 0.945242,
		-0.571052, -0.817453, -0.075306,
		0.790832, -0.523200, -0.317564,
		33.218052, 35.032494, 38.088352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.707226, 34.729393, 38.700634>,  <32.664467, 35.398731, 38.310646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.707226, 34.729393, 38.700634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.079006, 34.819885, 38.584049>,  <33.302074, 34.874180, 38.514099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.079006, 34.819885, 38.584049>,  <32.707226, 34.729393, 38.700634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.079006, 34.819885, 38.584049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350469, -0.294420, 0.889094,
		0.115331, -0.928513, -0.352935,
		0.929446, 0.226233, -0.291459,
		33.357841, 34.887756, 38.496613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.110470, 34.046265, 38.809971>,  <32.707226, 34.729393, 38.700634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.110470, 34.046265, 38.809971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.358147, 34.360264, 38.817814>,  <33.506752, 34.548664, 38.822517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.358147, 34.360264, 38.817814>,  <33.110470, 34.046265, 38.809971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.358147, 34.360264, 38.817814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409311, -0.343965, 0.845075,
		0.670122, -0.515241, -0.534287,
		0.619194, 0.784993, 0.019605,
		33.543903, 34.595760, 38.823696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.700855, 33.730988, 38.998108>,  <33.110470, 34.046265, 38.809971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.700855, 33.730988, 38.998108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.769089, 34.114922, 39.087204>,  <33.810028, 34.345284, 39.140663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.769089, 34.114922, 39.087204>,  <33.700855, 33.730988, 38.998108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.769089, 34.114922, 39.087204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607236, -0.280429, 0.743387,
		0.775993, 0.008448, -0.630684,
		0.170582, 0.959838, 0.222741,
		33.820263, 34.402874, 39.154026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.398079, 33.746006, 39.216312>,  <33.700855, 33.730988, 38.998108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.398079, 33.746006, 39.216312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.229668, 34.082966, 39.350834>,  <34.128620, 34.285141, 39.431545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.229668, 34.082966, 39.350834>,  <34.398079, 33.746006, 39.216312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.229668, 34.082966, 39.350834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509592, -0.087043, 0.856002,
		0.750367, 0.531780, -0.392632,
		-0.421029, 0.842398, 0.336305,
		34.103359, 34.335686, 39.451725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.684517, 33.892700, 39.882069>,  <34.398079, 33.746006, 39.216312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.684517, 33.892700, 39.882069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.416374, 34.185024, 39.933514>,  <34.255489, 34.360416, 39.964378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.416374, 34.185024, 39.933514>,  <34.684517, 33.892700, 39.882069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.416374, 34.185024, 39.933514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008760, -0.165513, 0.986169,
		0.741986, 0.662212, 0.104551,
		-0.670358, 0.730808, 0.128610,
		34.215267, 34.404266, 39.972095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.952496, 34.450039, 40.293919>,  <34.684517, 33.892700, 39.882069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.952496, 34.450039, 40.293919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.554977, 34.454880, 40.338146>,  <34.316467, 34.457787, 40.364685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.554977, 34.454880, 40.338146>,  <34.952496, 34.450039, 40.293919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.554977, 34.454880, 40.338146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106297, -0.189502, 0.976110,
		0.032769, 0.981806, 0.187040,
		-0.993794, 0.012104, 0.110572,
		34.256840, 34.458511, 40.371319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.709064, 34.883873, 40.872192>,  <34.952496, 34.450039, 40.293919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.709064, 34.883873, 40.872192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.409786, 34.623619, 40.820221>,  <34.230221, 34.467468, 40.789040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.409786, 34.623619, 40.820221>,  <34.709064, 34.883873, 40.872192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.409786, 34.623619, 40.820221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003487, -0.191968, 0.981395,
		-0.663469, 0.734729, 0.141361,
		-0.748196, -0.650632, -0.129927,
		34.185326, 34.428429, 40.781242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.357151, 34.800560, 41.553699>,  <34.709064, 34.883873, 40.872192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.357151, 34.800560, 41.553699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.216171, 34.492016, 41.341747>,  <34.131584, 34.306889, 41.214577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.216171, 34.492016, 41.341747>,  <34.357151, 34.800560, 41.553699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.216171, 34.492016, 41.341747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005877, -0.564381, 0.825493,
		-0.935813, 0.294058, 0.194382,
		-0.352448, -0.771365, -0.529884,
		34.110435, 34.260605, 41.182781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.848373, 34.497189, 41.860748>,  <34.357151, 34.800560, 41.553699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.848373, 34.497189, 41.860748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.928013, 34.176929, 41.634716>,  <33.975796, 33.984776, 41.499096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.928013, 34.176929, 41.634716>,  <33.848373, 34.497189, 41.860748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.928013, 34.176929, 41.634716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006066, -0.577624, 0.816280,
		-0.979960, -0.159094, -0.119862,
		0.199101, -0.800649, -0.565084,
		33.987743, 33.936733, 41.465191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.379150, 33.899288, 42.042477>,  <33.848373, 34.497189, 41.860748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.379150, 33.899288, 42.042477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.698868, 33.716675, 41.886166>,  <33.890697, 33.607109, 41.792377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.698868, 33.716675, 41.886166>,  <33.379150, 33.899288, 42.042477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.698868, 33.716675, 41.886166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021731, -0.627896, 0.777994,
		-0.600543, -0.630340, -0.491955,
		0.799297, -0.456528, -0.390776,
		33.938656, 33.579716, 41.768932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.350079, 33.187756, 42.417412>,  <33.379150, 33.899288, 42.042477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.350079, 33.187756, 42.417412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.701336, 33.209446, 42.227283>,  <33.912090, 33.222458, 42.113205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.701336, 33.209446, 42.227283>,  <33.350079, 33.187756, 42.417412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.701336, 33.209446, 42.227283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386368, -0.666287, 0.637794,
		-0.282118, -0.743721, -0.606043,
		0.878139, 0.054223, -0.475322,
		33.964779, 33.225712, 42.084686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.575180, 32.467220, 42.244190>,  <33.350079, 33.187756, 42.417412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.575180, 32.467220, 42.244190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.898514, 32.701164, 42.271141>,  <34.092514, 32.841530, 42.287312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.898514, 32.701164, 42.271141>,  <33.575180, 32.467220, 42.244190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.898514, 32.701164, 42.271141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428353, -0.662785, 0.614190,
		0.403867, -0.467612, -0.786277,
		0.808335, 0.584855, 0.067374,
		34.141014, 32.876621, 42.291351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.242588, 32.025936, 42.376266>,  <33.575180, 32.467220, 42.244190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.242588, 32.025936, 42.376266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.365025, 32.383835, 42.506336>,  <34.438488, 32.598572, 42.584377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.365025, 32.383835, 42.506336>,  <34.242588, 32.025936, 42.376266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.365025, 32.383835, 42.506336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467198, -0.438790, 0.767587,
		0.829477, -0.083034, -0.552334,
		0.306094, 0.894745, 0.325173,
		34.456852, 32.652260, 42.603889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.813221, 31.822144, 42.603058>,  <34.242588, 32.025936, 42.376266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.813221, 31.822144, 42.603058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.754383, 32.186325, 42.757683>,  <34.719078, 32.404835, 42.850460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.754383, 32.186325, 42.757683>,  <34.813221, 31.822144, 42.603058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.754383, 32.186325, 42.757683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357945, -0.315332, 0.878887,
		0.922083, 0.267652, -0.279508,
		-0.147098, 0.910455, 0.386567,
		34.710255, 32.459461, 42.873653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.383362, 31.965231, 42.941929>,  <34.813221, 31.822144, 42.603058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.383362, 31.965231, 42.941929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.087147, 32.183998, 43.098129>,  <34.909420, 32.315258, 43.191849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.087147, 32.183998, 43.098129>,  <35.383362, 31.965231, 42.941929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.087147, 32.183998, 43.098129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319253, -0.225010, 0.920569,
		0.591341, 0.806382, -0.007977,
		-0.740535, 0.546917, 0.390498,
		34.864986, 32.348072, 43.215279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.715145, 32.210049, 43.532307>,  <35.383362, 31.965231, 42.941929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.715145, 32.210049, 43.532307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.329391, 32.267040, 43.621449>,  <35.097939, 32.301235, 43.674934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.329391, 32.267040, 43.621449>,  <35.715145, 32.210049, 43.532307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.329391, 32.267040, 43.621449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148806, -0.404309, 0.902436,
		0.218684, 0.903456, 0.368706,
		-0.964383, 0.142482, 0.222855,
		35.040077, 32.309784, 43.688305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.723522, 32.429031, 44.218948>,  <35.715145, 32.210049, 43.532307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.723522, 32.429031, 44.218948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.343884, 32.313797, 44.168003>,  <35.116100, 32.244656, 44.137436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.343884, 32.313797, 44.168003>,  <35.723522, 32.429031, 44.218948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.343884, 32.313797, 44.168003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026075, -0.331110, 0.943232,
		-0.313909, 0.898538, 0.306743,
		-0.949095, -0.288090, -0.127368,
		35.059155, 32.227371, 44.129791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.463188, 32.571964, 44.813099>,  <35.723522, 32.429031, 44.218948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.463188, 32.571964, 44.813099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.227642, 32.299187, 44.639576>,  <35.086315, 32.135521, 44.535461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.227642, 32.299187, 44.639576>,  <35.463188, 32.571964, 44.813099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.227642, 32.299187, 44.639576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044637, -0.508477, 0.859918,
		-0.806998, 0.525740, 0.268984,
		-0.588865, -0.681945, -0.433807,
		35.050983, 32.094604, 44.509434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.689480, 32.628132, 45.188744>,  <35.463188, 32.571964, 44.813099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.689480, 32.628132, 45.188744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.774971, 32.271782, 45.028416>,  <34.826267, 32.057972, 44.932220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.774971, 32.271782, 45.028416>,  <34.689480, 32.628132, 45.188744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.774971, 32.271782, 45.028416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087884, -0.391101, 0.916142,
		-0.972931, -0.231035, -0.005297,
		0.213732, -0.890877, -0.400819,
		34.839092, 32.004520, 44.908169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.413593, 32.042961, 45.638569>,  <34.689480, 32.628132, 45.188744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.413593, 32.042961, 45.638569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.651691, 31.830896, 45.397038>,  <34.794548, 31.703657, 45.252117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.651691, 31.830896, 45.397038>,  <34.413593, 32.042961, 45.638569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.651691, 31.830896, 45.397038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199262, -0.630599, 0.750093,
		-0.778448, -0.566808, -0.269717,
		0.595242, -0.530164, -0.603832,
		34.830265, 31.671848, 45.215889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.134991, 31.355194, 45.841270>,  <34.413593, 32.042961, 45.638569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.134991, 31.355194, 45.841270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.502148, 31.342505, 45.683048>,  <34.722443, 31.334890, 45.588116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.502148, 31.342505, 45.683048>,  <34.134991, 31.355194, 45.841270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.502148, 31.342505, 45.683048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274612, -0.668790, 0.690875,
		-0.286463, -0.742775, -0.605165,
		0.917893, -0.031724, -0.395558,
		34.777515, 31.332987, 45.564381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.291367, 30.621082, 45.801861>,  <34.134991, 31.355194, 45.841270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.291367, 30.621082, 45.801861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.648575, 30.800491, 45.787163>,  <34.862900, 30.908136, 45.778343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.648575, 30.800491, 45.787163>,  <34.291367, 30.621082, 45.801861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.648575, 30.800491, 45.787163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388325, -0.726738, 0.566617,
		0.227434, -0.520269, -0.823161,
		0.893016, 0.448522, -0.036749,
		34.916481, 30.935047, 45.776138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.706825, 30.081200, 45.721321>,  <34.291367, 30.621082, 45.801861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.706825, 30.081200, 45.721321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.917660, 30.389917, 45.863598>,  <35.044159, 30.575148, 45.948963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.917660, 30.389917, 45.863598>,  <34.706825, 30.081200, 45.721321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.917660, 30.389917, 45.863598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498646, -0.619810, 0.605960,
		0.688137, -0.142029, -0.711544,
		0.527086, 0.771793, 0.355692,
		35.075787, 30.621454, 45.970306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.385174, 29.803135, 45.770710>,  <34.706825, 30.081200, 45.721321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.385174, 29.803135, 45.770710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.380611, 30.136234, 45.992123>,  <35.377872, 30.336094, 46.124969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.380611, 30.136234, 45.992123>,  <35.385174, 29.803135, 45.770710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.380611, 30.136234, 45.992123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460149, -0.487101, 0.742291,
		0.887769, 0.263176, -0.377631,
		-0.011409, 0.832749, 0.553533,
		35.377190, 30.386059, 46.158184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.069267, 29.852350, 46.002251>,  <35.385174, 29.803135, 45.770710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.069267, 29.852350, 46.002251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.862118, 30.092720, 46.245789>,  <35.737827, 30.236942, 46.391911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.862118, 30.092720, 46.245789>,  <36.069267, 29.852350, 46.002251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.862118, 30.092720, 46.245789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481242, -0.383772, 0.788115,
		0.707256, 0.701148, -0.090445,
		-0.517875, 0.600925, 0.608847,
		35.706757, 30.272997, 46.428444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.569946, 30.375017, 46.392876>,  <36.069267, 29.852350, 46.002251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.569946, 30.375017, 46.392876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.229797, 30.338432, 46.600143>,  <36.025707, 30.316481, 46.724503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.229797, 30.338432, 46.600143>,  <36.569946, 30.375017, 46.392876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.229797, 30.338432, 46.600143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525164, -0.208639, 0.825029,
		0.032650, 0.973707, 0.225454,
		-0.850374, -0.091463, 0.518168,
		35.974686, 30.310993, 46.755592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.472290, 30.852844, 46.936058>,  <36.569946, 30.375017, 46.392876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.472290, 30.852844, 46.936058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.279385, 30.522890, 47.054035>,  <36.163643, 30.324919, 47.124821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.279385, 30.522890, 47.054035>,  <36.472290, 30.852844, 46.936058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.279385, 30.522890, 47.054035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558778, -0.030355, 0.828762,
		-0.674679, 0.564487, 0.475565,
		-0.482261, -0.824884, 0.294943,
		36.134705, 30.275425, 47.142517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.328209, 30.893333, 47.664253>,  <36.472290, 30.852844, 46.936058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.328209, 30.893333, 47.664253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.278442, 30.499559, 47.614601>,  <36.248581, 30.263294, 47.584808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.278442, 30.499559, 47.614601>,  <36.328209, 30.893333, 47.664253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.278442, 30.499559, 47.614601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303254, -0.156846, 0.939913,
		-0.944752, 0.079301, 0.318049,
		-0.124420, -0.984434, -0.124132,
		36.241116, 30.204229, 47.577362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.074299, 30.692831, 48.310150>,  <36.328209, 30.893333, 47.664253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.074299, 30.692831, 48.310150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.191570, 30.339811, 48.163094>,  <36.261932, 30.128000, 48.074860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.191570, 30.339811, 48.163094>,  <36.074299, 30.692831, 48.310150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.191570, 30.339811, 48.163094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282326, -0.287467, 0.915235,
		-0.913422, -0.372120, 0.164887,
		0.293178, -0.882547, -0.367638,
		36.279522, 30.075047, 48.052803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.037613, 30.275295, 48.894012>,  <36.074299, 30.692831, 48.310150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.037613, 30.275295, 48.894012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.251526, 30.059526, 48.633850>,  <36.379875, 29.930065, 48.477753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.251526, 30.059526, 48.633850>,  <36.037613, 30.275295, 48.894012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.251526, 30.059526, 48.633850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373269, -0.539738, 0.754555,
		-0.758073, -0.646301, -0.087295,
		0.534786, -0.539423, -0.650405,
		36.411961, 29.897699, 48.438728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.992382, 29.507708, 49.082062>,  <36.037613, 30.275295, 48.894012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.992382, 29.507708, 49.082062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.322308, 29.587763, 48.870541>,  <36.520264, 29.635796, 48.743629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.322308, 29.587763, 48.870541>,  <35.992382, 29.507708, 49.082062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.322308, 29.587763, 48.870541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550503, -0.497571, 0.670350,
		-0.128952, -0.844019, -0.520580,
		0.824814, 0.200137, -0.528798,
		36.569752, 29.647804, 48.711903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.434383, 28.896053, 49.152828>,  <35.992382, 29.507708, 49.082062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.434383, 28.896053, 49.152828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.682720, 29.184633, 49.030148>,  <36.831722, 29.357782, 48.956539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.682720, 29.184633, 49.030148>,  <36.434383, 28.896053, 49.152828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.682720, 29.184633, 49.030148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591877, -0.174842, 0.786837,
		0.514041, -0.670028, -0.535560,
		0.620841, 0.721452, -0.306698,
		36.868973, 29.401070, 48.938137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.059433, 28.562540, 48.937328>,  <36.434383, 28.896053, 49.152828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.059433, 28.562540, 48.937328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.172886, 28.934963, 49.029137>,  <37.240959, 29.158417, 49.084221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.172886, 28.934963, 49.029137>,  <37.059433, 28.562540, 48.937328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.172886, 28.934963, 49.029137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.716225, -0.364840, 0.594906,
		0.637631, -0.004348, -0.770329,
		0.283634, 0.931060, 0.229520,
		37.257977, 29.214281, 49.097992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.795128, 28.579514, 48.875847>,  <37.059433, 28.562540, 48.937328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.795128, 28.579514, 48.875847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.679928, 28.871603, 49.123661>,  <37.610809, 29.046856, 49.272350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.679928, 28.871603, 49.123661>,  <37.795128, 28.579514, 48.875847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.679928, 28.871603, 49.123661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494346, -0.440721, 0.749258,
		0.820171, 0.522051, -0.234057,
		-0.287997, 0.730224, 0.619540,
		37.593529, 29.090670, 49.309525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.338299, 28.763987, 49.314945>,  <37.795128, 28.579514, 48.875847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.338299, 28.763987, 49.314945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.029255, 28.900434, 49.529125>,  <37.843830, 28.982304, 49.657635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.029255, 28.900434, 49.529125>,  <38.338299, 28.763987, 49.314945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.029255, 28.900434, 49.529125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387624, -0.414499, 0.823370,
		0.502814, 0.843699, 0.188019,
		-0.772610, 0.341121, 0.535454,
		37.797470, 29.002771, 49.689762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.642189, 29.157930, 49.855827>,  <38.338299, 28.763987, 49.314945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.642189, 29.157930, 49.855827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.290016, 29.001181, 49.962624>,  <38.078712, 28.907131, 50.026699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.290016, 29.001181, 49.962624>,  <38.642189, 29.157930, 49.855827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.290016, 29.001181, 49.962624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442904, -0.478509, 0.758198,
		-0.169361, 0.785789, 0.594855,
		-0.880427, -0.391873, 0.266988,
		38.025887, 28.883619, 50.042721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.769176, 28.965504, 50.569008>,  <38.642189, 29.157930, 49.855827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.769176, 28.965504, 50.569008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.422058, 28.792160, 50.471748>,  <38.213787, 28.688154, 50.413391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.422058, 28.792160, 50.471748>,  <38.769176, 28.965504, 50.569008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.422058, 28.792160, 50.471748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201377, -0.754044, 0.625193,
		-0.454279, 0.493577, 0.741628,
		-0.867801, -0.433358, -0.243152,
		38.161716, 28.662153, 50.398804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.557549, 28.691683, 51.233131>,  <38.769176, 28.965504, 50.569008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.557549, 28.691683, 51.233131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.335228, 28.474949, 50.980942>,  <38.201836, 28.344908, 50.829628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.335228, 28.474949, 50.980942>,  <38.557549, 28.691683, 51.233131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.335228, 28.474949, 50.980942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073818, -0.787578, 0.611777,
		-0.828031, 0.293486, 0.477735,
		-0.555802, -0.541836, -0.630475,
		38.168488, 28.312399, 50.791798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.180477, 28.296549, 51.654514>,  <38.557549, 28.691683, 51.233131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.180477, 28.296549, 51.654514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.185932, 28.112694, 51.299313>,  <38.189205, 28.002380, 51.086193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.185932, 28.112694, 51.299313>,  <38.180477, 28.296549, 51.654514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.185932, 28.112694, 51.299313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098294, -0.883167, 0.458643,
		-0.995064, -0.093541, 0.033132,
		0.013641, -0.459636, -0.888003,
		38.190025, 27.974802, 51.032913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.697178, 27.716051, 51.574547>,  <38.180477, 28.296549, 51.654514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.697178, 27.716051, 51.574547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.011501, 27.659260, 51.333767>,  <38.200096, 27.625185, 51.189301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.011501, 27.659260, 51.333767>,  <37.697178, 27.716051, 51.574547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.011501, 27.659260, 51.333767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093778, -0.934686, 0.342880,
		-0.611315, -0.325889, -0.721173,
		0.785811, -0.141978, -0.601949,
		38.247246, 27.616667, 51.153183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.979439, 27.058880, 51.922535>,  <37.697178, 27.716051, 51.574547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.979439, 27.058880, 51.922535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.242298, 26.758053, 51.902344>,  <38.400013, 26.577557, 51.890228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.242298, 26.758053, 51.902344>,  <37.979439, 27.058880, 51.922535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.242298, 26.758053, 51.902344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.747586, -0.641754, -0.171075,
		0.096267, 0.150157, -0.983964,
		0.657151, -0.752067, -0.050476,
		38.439442, 26.532433, 51.887199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.753643, 26.559088, 51.306286>,  <37.979439, 27.058880, 51.922535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.753643, 26.559088, 51.306286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.002026, 26.327858, 51.518036>,  <38.151054, 26.189119, 51.645084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.002026, 26.327858, 51.518036>,  <37.753643, 26.559088, 51.306286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.002026, 26.327858, 51.518036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.654192, -0.754234, -0.056251,
		0.431790, -0.311382, -0.846522,
		0.620960, -0.578076, 0.529374,
		38.188313, 26.154434, 51.676849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.999615, 25.979296, 50.891319>,  <37.753643, 26.559088, 51.306286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.999615, 25.979296, 50.891319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.972538, 25.891573, 51.280640>,  <37.956291, 25.838940, 51.514233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.972538, 25.891573, 51.280640>,  <37.999615, 25.979296, 50.891319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.972538, 25.891573, 51.280640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.742997, -0.639990, -0.195878,
		0.665863, -0.736422, -0.119623,
		-0.067691, -0.219307, 0.973305,
		37.952232, 25.825781, 51.572632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.918552, 25.258722, 50.997417>,  <37.999615, 25.979296, 50.891319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.918552, 25.258722, 50.997417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.719727, 25.438938, 51.294048>,  <37.600430, 25.547068, 51.472027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.719727, 25.438938, 51.294048>,  <37.918552, 25.258722, 50.997417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.719727, 25.438938, 51.294048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.785286, -0.597134, -0.163577,
		0.369126, -0.663662, 0.650615,
		-0.497064, 0.450538, 0.741581,
		37.570606, 25.574099, 51.516521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.587448, 25.472357, 51.348843>,  <37.918552, 25.258722, 50.997417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.587448, 25.472357, 51.348843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.969021, 25.439587, 51.233387>,  <39.197964, 25.419926, 51.164116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.969021, 25.439587, 51.233387>,  <38.587448, 25.472357, 51.348843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.969021, 25.439587, 51.233387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257505, 0.270197, -0.927731,
		0.153992, 0.959313, 0.236653,
		0.953927, -0.081924, -0.288636,
		39.255199, 25.415009, 51.146797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.643070, 25.432989, 50.559208>,  <38.587448, 25.472357, 51.348843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.643070, 25.432989, 50.559208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.036358, 25.464180, 50.625175>,  <39.272331, 25.482895, 50.664757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.036358, 25.464180, 50.625175>,  <38.643070, 25.432989, 50.559208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.036358, 25.464180, 50.625175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160296, 0.062304, -0.985101,
		-0.087091, 0.995006, 0.048759,
		0.983219, 0.077978, 0.164922,
		39.331326, 25.487574, 50.674652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.890320, 26.145441, 50.438843>,  <38.643070, 25.432989, 50.559208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.890320, 26.145441, 50.438843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.164944, 25.872723, 50.337814>,  <39.329720, 25.709091, 50.277199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.164944, 25.872723, 50.337814>,  <38.890320, 26.145441, 50.438843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.164944, 25.872723, 50.337814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070714, 0.408344, -0.910085,
		0.723628, 0.606966, 0.328564,
		0.686558, -0.681797, -0.252568,
		39.370911, 25.668184, 50.262043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.458195, 26.547026, 50.217106>,  <38.890320, 26.145441, 50.438843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.458195, 26.547026, 50.217106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.441982, 26.174940, 50.071198>,  <39.432255, 25.951689, 49.983654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.441982, 26.174940, 50.071198>,  <39.458195, 26.547026, 50.217106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.441982, 26.174940, 50.071198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060758, 0.366690, -0.928357,
		0.997329, -0.015466, -0.071381,
		-0.040533, -0.930214, -0.364771,
		39.429821, 25.895876, 49.961765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.020824, 26.421297, 49.715172>,  <39.458195, 26.547026, 50.217106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.020824, 26.421297, 49.715172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.657955, 26.274099, 49.633575>,  <39.440231, 26.185781, 49.584618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.657955, 26.274099, 49.633575>,  <40.020824, 26.421297, 49.715172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.657955, 26.274099, 49.633575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003865, 0.492088, -0.870537,
		0.420731, -0.788943, -0.447834,
		-0.907177, -0.367993, -0.203987,
		39.385803, 26.163700, 49.572380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.102165, 26.072346, 49.109123>,  <40.020824, 26.421297, 49.715172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.102165, 26.072346, 49.109123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.741577, 26.228968, 49.182926>,  <39.525227, 26.322941, 49.227207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.741577, 26.228968, 49.182926>,  <40.102165, 26.072346, 49.109123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.741577, 26.228968, 49.182926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060173, 0.308763, -0.949233,
		-0.428646, -0.866805, -0.254779,
		-0.901467, 0.391554, 0.184509,
		39.471138, 26.346434, 49.238277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.692375, 25.852268, 48.617828>,  <40.102165, 26.072346, 49.109123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.692375, 25.852268, 48.617828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.514187, 26.178247, 48.766106>,  <39.407272, 26.373835, 48.855072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.514187, 26.178247, 48.766106>,  <39.692375, 25.852268, 48.617828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.514187, 26.178247, 48.766106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213075, 0.305645, -0.927998,
		-0.869570, -0.492384, 0.037488,
		-0.445473, 0.814947, 0.370694,
		39.380547, 26.422731, 48.877316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.012859, 25.914507, 48.279129>,  <39.692375, 25.852268, 48.617828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.012859, 25.914507, 48.279129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.037426, 26.294846, 48.400532>,  <39.052166, 26.523048, 48.473373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.037426, 26.294846, 48.400532>,  <39.012859, 25.914507, 48.279129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.037426, 26.294846, 48.400532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272054, 0.308519, -0.911484,
		-0.960320, -0.026591, 0.277629,
		0.061417, 0.950846, 0.303511,
		39.055851, 26.580099, 48.491585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.496086, 26.257814, 47.850624>,  <39.012859, 25.914507, 48.279129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.496086, 26.257814, 47.850624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.725475, 26.548620, 48.001663>,  <38.863110, 26.723104, 48.092285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.725475, 26.548620, 48.001663>,  <38.496086, 26.257814, 47.850624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.725475, 26.548620, 48.001663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057237, 0.424239, -0.903740,
		-0.817224, 0.539882, 0.201677,
		0.573472, 0.727014, 0.377599,
		38.897518, 26.766724, 48.114944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.208332, 26.899097, 47.685356>,  <38.496086, 26.257814, 47.850624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.208332, 26.899097, 47.685356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.587757, 26.994217, 47.768948>,  <38.815414, 27.051289, 47.819103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.587757, 26.994217, 47.768948>,  <38.208332, 26.899097, 47.685356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.587757, 26.994217, 47.768948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052942, 0.531680, -0.845289,
		-0.312119, 0.812877, 0.491745,
		0.948567, 0.237797, 0.208983,
		38.872326, 27.065556, 47.831642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.154030, 27.608721, 47.506527>,  <38.208332, 26.899097, 47.685356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.154030, 27.608721, 47.506527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.534660, 27.485777, 47.508804>,  <38.763039, 27.412010, 47.510170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.534660, 27.485777, 47.508804>,  <38.154030, 27.608721, 47.506527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.534660, 27.485777, 47.508804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159527, 0.477895, -0.863810,
		0.262780, 0.822889, 0.503786,
		0.951576, -0.307360, 0.005692,
		38.820133, 27.393570, 47.510513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.411694, 28.187037, 47.347485>,  <38.154030, 27.608721, 47.506527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.411694, 28.187037, 47.347485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.683548, 27.910034, 47.250710>,  <38.846661, 27.743834, 47.192646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.683548, 27.910034, 47.250710>,  <38.411694, 28.187037, 47.347485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.683548, 27.910034, 47.250710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254053, 0.531615, -0.807987,
		0.688152, 0.487672, 0.537236,
		0.679636, -0.692504, -0.241937,
		38.887440, 27.702284, 47.178127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.088100, 28.608181, 47.086605>,  <38.411694, 28.187037, 47.347485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.088100, 28.608181, 47.086605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.100071, 28.228409, 46.961582>,  <39.107254, 28.000546, 46.886570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.100071, 28.228409, 46.961582>,  <39.088100, 28.608181, 47.086605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.100071, 28.228409, 46.961582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351751, 0.302694, -0.885804,
		0.935615, -0.083436, 0.343019,
		0.029922, -0.949429, -0.312554,
		39.109047, 27.943581, 46.867817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.801365, 28.657482, 46.796207>,  <39.088100, 28.608181, 47.086605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.801365, 28.657482, 46.796207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.543842, 28.382040, 46.662739>,  <39.389328, 28.216776, 46.582657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.543842, 28.382040, 46.662739>,  <39.801365, 28.657482, 46.796207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.543842, 28.382040, 46.662739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136590, 0.325639, -0.935576,
		0.752897, -0.647908, -0.115593,
		-0.643809, -0.688604, -0.333670,
		39.350700, 28.175459, 46.562637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.167019, 28.362583, 46.188206>,  <39.801365, 28.657482, 46.796207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.167019, 28.362583, 46.188206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.781986, 28.260710, 46.151165>,  <39.550968, 28.199587, 46.128941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.781986, 28.260710, 46.151165>,  <40.167019, 28.362583, 46.188206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.781986, 28.260710, 46.151165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085643, 0.038290, -0.995590,
		0.257105, -0.966266, -0.015046,
		-0.962581, -0.254683, -0.092599,
		39.493214, 28.184305, 46.123386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.226582, 28.044224, 45.657177>,  <40.167019, 28.362583, 46.188206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.226582, 28.044224, 45.657177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.828281, 28.079300, 45.668407>,  <39.589302, 28.100346, 45.675144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.828281, 28.079300, 45.668407>,  <40.226582, 28.044224, 45.657177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.828281, 28.079300, 45.668407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031671, -0.039869, -0.998703,
		-0.086460, -0.995349, 0.042477,
		-0.995752, 0.087693, 0.028077,
		39.529556, 28.105606, 45.676830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.894650, 27.554081, 45.252396>,  <40.226582, 28.044224, 45.657177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.894650, 27.554081, 45.252396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.660667, 27.878180, 45.266998>,  <39.520279, 28.072638, 45.275761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.660667, 27.878180, 45.266998>,  <39.894650, 27.554081, 45.252396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.660667, 27.878180, 45.266998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034293, 0.020262, -0.999206,
		-0.810342, -0.585741, 0.015933,
		-0.584953, 0.810245, 0.036506,
		39.485180, 28.121254, 45.277950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.274937, 27.441633, 44.609715>,  <39.894650, 27.554081, 45.252396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.274937, 27.441633, 44.609715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.257797, 27.825178, 44.721962>,  <39.247513, 28.055305, 44.789310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.257797, 27.825178, 44.721962>,  <39.274937, 27.441633, 44.609715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.257797, 27.825178, 44.721962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294706, 0.256246, -0.920590,
		-0.954626, -0.122150, 0.271602,
		-0.042853, 0.958862, 0.280617,
		39.244942, 28.112837, 44.806149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.646278, 27.633833, 44.314590>,  <39.274937, 27.441633, 44.609715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.646278, 27.633833, 44.314590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.862827, 27.963776, 44.379738>,  <38.992756, 28.161741, 44.418827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.862827, 27.963776, 44.379738>,  <38.646278, 27.633833, 44.314590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.862827, 27.963776, 44.379738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200626, 0.314848, -0.927696,
		-0.816493, 0.469558, 0.335939,
		0.541377, 0.824855, 0.162866,
		39.025242, 28.211231, 44.428596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.274483, 28.075029, 44.048576>,  <38.646278, 27.633833, 44.314590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.274483, 28.075029, 44.048576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.614304, 28.285889, 44.056316>,  <38.818195, 28.412405, 44.060963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.614304, 28.285889, 44.056316>,  <38.274483, 28.075029, 44.048576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.614304, 28.285889, 44.056316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246591, 0.429307, -0.868843,
		-0.466318, 0.733356, 0.494709,
		0.849553, 0.527148, 0.019355,
		38.869171, 28.444033, 44.062122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.076103, 28.813755, 43.945885>,  <38.274483, 28.075029, 44.048576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.076103, 28.813755, 43.945885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.450912, 28.732876, 43.831966>,  <38.675797, 28.684347, 43.763615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.450912, 28.732876, 43.831966>,  <38.076103, 28.813755, 43.945885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.450912, 28.732876, 43.831966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167095, 0.456520, -0.873881,
		0.306715, 0.866432, 0.393981,
		0.937019, -0.202200, -0.284798,
		38.732018, 28.672216, 43.746529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.366501, 29.458511, 43.716492>,  <38.076103, 28.813755, 43.945885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.366501, 29.458511, 43.716492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.612080, 29.171587, 43.584713>,  <38.759426, 28.999432, 43.505646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.612080, 29.171587, 43.584713>,  <38.366501, 29.458511, 43.716492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.612080, 29.171587, 43.584713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182499, 0.277068, -0.943360,
		0.767961, 0.639296, 0.039196,
		0.613946, -0.717310, -0.329448,
		38.796265, 28.956394, 43.485878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.815346, 29.828848, 43.311848>,  <38.366501, 29.458511, 43.716492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.815346, 29.828848, 43.311848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.846527, 29.449633, 43.188465>,  <38.865234, 29.222103, 43.114437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.846527, 29.449633, 43.188465>,  <38.815346, 29.828848, 43.311848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.846527, 29.449633, 43.188465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074390, 0.314066, -0.946482,
		0.994178, 0.050835, 0.095007,
		0.077952, -0.948039, -0.308456,
		38.869911, 29.165220, 43.095928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.244595, 29.864185, 42.790058>,  <38.815346, 29.828848, 43.311848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.244595, 29.864185, 42.790058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.059250, 29.527231, 42.680016>,  <38.948044, 29.325058, 42.613991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.059250, 29.527231, 42.680016>,  <39.244595, 29.864185, 42.790058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.059250, 29.527231, 42.680016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041841, 0.289299, -0.956324,
		0.885181, -0.454635, -0.098804,
		-0.463362, -0.842385, -0.275104,
		38.920242, 29.274515, 42.597485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.515953, 29.618876, 42.058525>,  <39.244595, 29.864185, 42.790058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.515953, 29.618876, 42.058525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.167339, 29.432014, 42.118130>,  <38.958172, 29.319899, 42.153893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.167339, 29.432014, 42.118130>,  <39.515953, 29.618876, 42.058525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.167339, 29.432014, 42.118130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259459, 0.181494, -0.948547,
		0.416071, -0.865349, -0.279384,
		-0.871531, -0.467152, 0.149008,
		38.905880, 29.291868, 42.162830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.407963, 29.114555, 41.523247>,  <39.515953, 29.618876, 42.058525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.407963, 29.114555, 41.523247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.023434, 29.148298, 41.628117>,  <38.792717, 29.168543, 41.691040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.023434, 29.148298, 41.628117>,  <39.407963, 29.114555, 41.523247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.023434, 29.148298, 41.628117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270340, -0.107145, -0.956784,
		-0.052616, -0.990659, 0.125805,
		-0.961326, 0.084352, 0.262177,
		38.735035, 29.173605, 41.706768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.032139, 28.602291, 40.978333>,  <39.407963, 29.114555, 41.523247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.032139, 28.602291, 40.978333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.767014, 28.835289, 41.166534>,  <38.607937, 28.975088, 41.279457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.767014, 28.835289, 41.166534>,  <39.032139, 28.602291, 40.978333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.767014, 28.835289, 41.166534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475559, 0.157887, -0.865399,
		-0.578378, -0.797352, 0.172361,
		-0.662814, 0.582495, 0.470507,
		38.568169, 29.010038, 41.307686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.340488, 28.428377, 40.748524>,  <39.032139, 28.602291, 40.978333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.340488, 28.428377, 40.748524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.296425, 28.797733, 40.895611>,  <38.269989, 29.019346, 40.983864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.296425, 28.797733, 40.895611>,  <38.340488, 28.428377, 40.748524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.296425, 28.797733, 40.895611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388902, 0.300431, -0.870917,
		-0.914670, -0.238945, 0.326013,
		-0.110157, 0.923389, 0.367721,
		38.263378, 29.074749, 41.005928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.740974, 28.756107, 40.536221>,  <38.340488, 28.428377, 40.748524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.740974, 28.756107, 40.536221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.922016, 29.099693, 40.632000>,  <38.030640, 29.305845, 40.689468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.922016, 29.099693, 40.632000>,  <37.740974, 28.756107, 40.536221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.922016, 29.099693, 40.632000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337103, 0.413413, -0.845843,
		-0.825539, 0.302110, 0.476670,
		0.452599, 0.858964, 0.239447,
		38.057796, 29.357382, 40.703835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.205700, 29.099421, 40.573589>,  <37.740974, 28.756107, 40.536221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.205700, 29.099421, 40.573589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.522133, 29.337526, 40.517227>,  <37.711990, 29.480389, 40.483410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.522133, 29.337526, 40.517227>,  <37.205700, 29.099421, 40.573589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.522133, 29.337526, 40.517227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499603, 0.495807, -0.710332,
		-0.352971, 0.632328, 0.689618,
		0.791080, 0.595262, -0.140908,
		37.759457, 29.516106, 40.474957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.806740, 29.722239, 40.600094>,  <37.205700, 29.099421, 40.573589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.806740, 29.722239, 40.600094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.179665, 29.784395, 40.469460>,  <37.403419, 29.821690, 40.391079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.179665, 29.784395, 40.469460>,  <36.806740, 29.722239, 40.600094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.179665, 29.784395, 40.469460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337187, 0.700018, -0.629507,
		0.130793, 0.697013, 0.705029,
		0.932308, 0.155391, -0.326581,
		37.459358, 29.831013, 40.371487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.862755, 30.445923, 40.617985>,  <36.806740, 29.722239, 40.600094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.862755, 30.445923, 40.617985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.142559, 30.300350, 40.371983>,  <37.310444, 30.213007, 40.224380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.142559, 30.300350, 40.371983>,  <36.862755, 30.445923, 40.617985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.142559, 30.300350, 40.371983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339290, 0.588288, -0.734030,
		0.628939, 0.722129, 0.288036,
		0.699512, -0.363932, -0.615009,
		37.352413, 30.191170, 40.187481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.071907, 30.999891, 40.391380>,  <36.862755, 30.445923, 40.617985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.071907, 30.999891, 40.391380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.180420, 30.725315, 40.121506>,  <37.245529, 30.560570, 39.959579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.180420, 30.725315, 40.121506>,  <37.071907, 30.999891, 40.391380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.180420, 30.725315, 40.121506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228213, 0.635114, -0.737936,
		0.935054, 0.354161, 0.015640,
		0.271282, -0.686440, -0.674689,
		37.261803, 30.519382, 39.919098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.607388, 31.311153, 39.923153>,  <37.071907, 30.999891, 40.391380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.607388, 31.311153, 39.923153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.424911, 31.012835, 39.728966>,  <37.315426, 30.833843, 39.612453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.424911, 31.012835, 39.728966>,  <37.607388, 31.311153, 39.923153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.424911, 31.012835, 39.728966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313637, 0.645284, -0.696592,
		0.832780, -0.165518, -0.528282,
		-0.456191, -0.745796, -0.485467,
		37.288055, 30.789095, 39.583324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.729298, 31.553999, 39.321720>,  <37.607388, 31.311153, 39.923153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.729298, 31.553999, 39.321720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.445267, 31.276037, 39.276291>,  <37.274849, 31.109261, 39.249035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.445267, 31.276037, 39.276291>,  <37.729298, 31.553999, 39.321720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.445267, 31.276037, 39.276291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328100, 0.469253, -0.819849,
		0.623011, -0.544893, -0.561204,
		-0.710076, -0.694906, -0.113570,
		37.232243, 31.067566, 39.242222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.748394, 31.363104, 38.654915>,  <37.729298, 31.553999, 39.321720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.748394, 31.363104, 38.654915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.382385, 31.244991, 38.764851>,  <37.162781, 31.174124, 38.830811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.382385, 31.244991, 38.764851>,  <37.748394, 31.363104, 38.654915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.382385, 31.244991, 38.764851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393118, 0.499922, -0.771710,
		0.090471, -0.814179, -0.573522,
		-0.915026, -0.295279, 0.274840,
		37.107876, 31.156408, 38.847301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.400070, 31.262304, 38.003407>,  <37.748394, 31.363104, 38.654915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.400070, 31.262304, 38.003407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.109467, 31.294060, 38.276428>,  <36.935104, 31.313114, 38.440243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.109467, 31.294060, 38.276428>,  <37.400070, 31.262304, 38.003407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.109467, 31.294060, 38.276428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576097, 0.471064, -0.667990,
		-0.374557, -0.878519, -0.296497,
		-0.726511, 0.079390, 0.682553,
		36.891514, 31.317877, 38.481194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.751308, 31.037540, 37.659935>,  <37.400070, 31.262304, 38.003407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.751308, 31.037540, 37.659935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.649277, 31.243568, 37.987263>,  <36.588058, 31.367186, 38.183659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.649277, 31.243568, 37.987263>,  <36.751308, 31.037540, 37.659935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.649277, 31.243568, 37.987263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.605366, 0.574852, -0.550524,
		-0.753968, -0.635806, 0.165173,
		-0.255076, 0.515068, 0.818316,
		36.572754, 31.398088, 38.232758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.042820, 31.220781, 37.538231>,  <36.751308, 31.037540, 37.659935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.042820, 31.220781, 37.538231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.181335, 31.490458, 37.799168>,  <36.264442, 31.652264, 37.955730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.181335, 31.490458, 37.799168>,  <36.042820, 31.220781, 37.538231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.181335, 31.490458, 37.799168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549818, 0.709275, -0.441168,
		-0.760123, -0.205901, 0.616293,
		0.346285, 0.674191, 0.652345,
		36.285221, 31.692715, 37.994869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.450939, 31.698919, 37.644943>,  <36.042820, 31.220781, 37.538231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.450939, 31.698919, 37.644943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.767792, 31.890472, 37.796310>,  <35.957901, 32.005405, 37.887131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.767792, 31.890472, 37.796310>,  <35.450939, 31.698919, 37.644943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.767792, 31.890472, 37.796310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328116, 0.856902, -0.397566,
		-0.514657, 0.190757, 0.835906,
		0.792128, 0.478885, 0.378421,
		36.005432, 32.034138, 37.909836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.235813, 32.311577, 38.076771>,  <35.450939, 31.698919, 37.644943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.235813, 32.311577, 38.076771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.601250, 32.364899, 37.923103>,  <35.820511, 32.396893, 37.830902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.601250, 32.364899, 37.923103>,  <35.235813, 32.311577, 38.076771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.601250, 32.364899, 37.923103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319225, 0.820334, -0.474496,
		0.251899, 0.556132, 0.792001,
		0.913588, 0.133301, -0.384173,
		35.875324, 32.404888, 37.807850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.249798, 33.021515, 38.053318>,  <35.235813, 32.311577, 38.076771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.249798, 33.021515, 38.053318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.545197, 32.908104, 37.808617>,  <35.722435, 32.840057, 37.661797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.545197, 32.908104, 37.808617>,  <35.249798, 33.021515, 38.053318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.545197, 32.908104, 37.808617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267208, 0.709935, -0.651607,
		0.619052, 0.644673, 0.448521,
		0.738494, -0.283531, -0.611749,
		35.766747, 32.823044, 37.625092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.522358, 33.667629, 37.861893>,  <35.249798, 33.021515, 38.053318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.522358, 33.667629, 37.861893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.614281, 33.376015, 37.603996>,  <35.669434, 33.201046, 37.449257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.614281, 33.376015, 37.603996>,  <35.522358, 33.667629, 37.861893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.614281, 33.376015, 37.603996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261053, 0.592024, -0.762469,
		0.937571, 0.343534, -0.054264,
		0.229808, -0.729035, -0.644745,
		35.683224, 33.157303, 37.410572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.717766, 34.057175, 37.315502>,  <35.522358, 33.667629, 37.861893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.717766, 34.057175, 37.315502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.646358, 33.702747, 37.144379>,  <35.603512, 33.490093, 37.041706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.646358, 33.702747, 37.144379>,  <35.717766, 34.057175, 37.315502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.646358, 33.702747, 37.144379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247493, 0.461252, -0.852053,
		0.952301, -0.046230, -0.301638,
		-0.178522, -0.886064, -0.427809,
		35.592800, 33.436928, 37.016037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.525097, 34.115528, 37.151936>,  <35.717766, 34.057175, 37.315502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.525097, 34.115528, 37.151936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.756275, 34.196045, 36.835590>,  <36.894981, 34.244354, 36.645782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.756275, 34.196045, 36.835590>,  <36.525097, 34.115528, 37.151936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.756275, 34.196045, 36.835590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.763242, -0.476355, 0.436519,
		-0.288865, -0.855903, -0.428938,
		0.577944, 0.201288, -0.790863,
		36.929657, 34.256432, 36.598331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.778023, 33.440086, 36.803921>,  <36.525097, 34.115528, 37.151936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.778023, 33.440086, 36.803921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.011421, 33.762856, 36.767235>,  <37.151459, 33.956516, 36.745224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.011421, 33.762856, 36.767235>,  <36.778023, 33.440086, 36.803921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.011421, 33.762856, 36.767235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.748548, -0.490576, 0.446107,
		0.314981, -0.328953, -0.890268,
		0.583493, 0.806923, -0.091714,
		37.186470, 34.004932, 36.739719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.410805, 33.274147, 36.414932>,  <36.778023, 33.440086, 36.803921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.410805, 33.274147, 36.414932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.513142, 33.578259, 36.653770>,  <37.574543, 33.760727, 36.797073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.513142, 33.578259, 36.653770>,  <37.410805, 33.274147, 36.414932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.513142, 33.578259, 36.653770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.748657, -0.546584, 0.375178,
		0.611601, 0.351031, -0.709028,
		0.255844, 0.760279, 0.597093,
		37.589893, 33.806343, 36.832897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.089520, 33.309822, 36.273525>,  <37.410805, 33.274147, 36.414932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.089520, 33.309822, 36.273525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.007336, 33.492622, 36.619690>,  <37.958027, 33.602303, 36.827389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.007336, 33.492622, 36.619690>,  <38.089520, 33.309822, 36.273525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.007336, 33.492622, 36.619690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.711082, -0.537859, 0.452847,
		0.672421, 0.708419, -0.214457,
		-0.205457, 0.457000, 0.865412,
		37.945698, 33.629723, 36.879314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.732662, 33.323120, 36.610195>,  <38.089520, 33.309822, 36.273525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.732662, 33.323120, 36.610195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.489941, 33.414059, 36.914852>,  <38.344307, 33.468620, 37.097649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.489941, 33.414059, 36.914852>,  <38.732662, 33.323120, 36.610195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.489941, 33.414059, 36.914852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617844, -0.467931, 0.631909,
		0.500058, 0.854023, 0.143479,
		-0.606803, 0.227344, 0.761646,
		38.307899, 33.482262, 37.143345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.142258, 33.814934, 37.058529>,  <38.732662, 33.323120, 36.610195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.142258, 33.814934, 37.058529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.869606, 33.616131, 37.273327>,  <38.706017, 33.496849, 37.402206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.869606, 33.616131, 37.273327>,  <39.142258, 33.814934, 37.058529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.869606, 33.616131, 37.273327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.709660, -0.270280, 0.650639,
		-0.178235, 0.824578, 0.536939,
		-0.681626, -0.497011, 0.536997,
		38.665119, 33.467026, 37.434425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.436382, 33.836143, 37.752552>,  <39.142258, 33.814934, 37.058529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.436382, 33.836143, 37.752552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.161777, 33.545319, 37.749123>,  <38.997013, 33.370823, 37.747063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.161777, 33.545319, 37.749123>,  <39.436382, 33.836143, 37.752552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.161777, 33.545319, 37.749123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444846, -0.429305, 0.786009,
		-0.575162, 0.535791, 0.618156,
		-0.686514, -0.727066, -0.008575,
		38.955822, 33.327198, 37.746552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.159081, 33.862888, 38.376339>,  <39.436382, 33.836143, 37.752552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.159081, 33.862888, 38.376339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.124825, 33.490124, 38.235371>,  <39.104271, 33.266464, 38.150791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.124825, 33.490124, 38.235371>,  <39.159081, 33.862888, 38.376339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.124825, 33.490124, 38.235371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454893, -0.351272, 0.818340,
		-0.886419, -0.090235, 0.454003,
		-0.085636, -0.931915, -0.352421,
		39.099133, 33.210548, 38.129642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.905273, 33.430916, 38.935856>,  <39.159081, 33.862888, 38.376339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.905273, 33.430916, 38.935856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.032627, 33.158257, 38.672344>,  <39.109039, 32.994663, 38.514236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.032627, 33.158257, 38.672344>,  <38.905273, 33.430916, 38.935856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.032627, 33.158257, 38.672344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473660, -0.487580, 0.733425,
		-0.821142, -0.545551, 0.167629,
		0.318388, -0.681645, -0.658778,
		39.128143, 32.953762, 38.474712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.798119, 32.768288, 39.267059>,  <38.905273, 33.430916, 38.935856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.798119, 32.768288, 39.267059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.055695, 32.681210, 38.973679>,  <39.210239, 32.628963, 38.797649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.055695, 32.681210, 38.973679>,  <38.798119, 32.768288, 39.267059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.055695, 32.681210, 38.973679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537588, -0.553371, 0.636223,
		-0.544369, -0.803985, -0.239312,
		0.643942, -0.217689, -0.733451,
		39.248875, 32.615902, 38.753643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.889622, 31.970264, 39.312386>,  <38.798119, 32.768288, 39.267059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.889622, 31.970264, 39.312386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.205624, 32.130512, 39.126740>,  <39.395226, 32.226662, 39.015350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.205624, 32.130512, 39.126740>,  <38.889622, 31.970264, 39.312386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.205624, 32.130512, 39.126740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612564, -0.547536, 0.570062,
		-0.025741, -0.734649, -0.677959,
		0.790002, 0.400619, -0.464113,
		39.442623, 32.250698, 38.987507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.412273, 31.446184, 39.425156>,  <38.889622, 31.970264, 39.312386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.412273, 31.446184, 39.425156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.628933, 31.767099, 39.324791>,  <39.758926, 31.959648, 39.264572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.628933, 31.767099, 39.324791>,  <39.412273, 31.446184, 39.425156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.628933, 31.767099, 39.324791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.670404, -0.232211, 0.704724,
		0.507126, -0.549923, -0.663633,
		0.541647, 0.802286, -0.250910,
		39.791428, 32.007786, 39.249519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.943993, 31.195438, 39.330360>,  <39.412273, 31.446184, 39.425156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.943993, 31.195438, 39.330360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.012901, 31.583546, 39.398361>,  <40.054245, 31.816410, 39.439159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.012901, 31.583546, 39.398361>,  <39.943993, 31.195438, 39.330360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.012901, 31.583546, 39.398361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.649006, -0.241626, 0.721393,
		0.741022, -0.013944, -0.671336,
		0.172271, 0.970269, 0.170000,
		40.064583, 31.874626, 39.449360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.722054, 31.223881, 39.396973>,  <39.943993, 31.195438, 39.330360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.722054, 31.223881, 39.396973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.563232, 31.541143, 39.581692>,  <40.467941, 31.731501, 39.692524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.563232, 31.541143, 39.581692>,  <40.722054, 31.223881, 39.396973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.563232, 31.541143, 39.581692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598579, -0.157632, 0.785401,
		0.695739, 0.588265, -0.412178,
		-0.397052, 0.793156, 0.461794,
		40.444118, 31.779091, 39.720230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.275654, 31.555628, 39.751629>,  <40.722054, 31.223881, 39.396973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.275654, 31.555628, 39.751629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.951298, 31.711220, 39.926514>,  <40.756683, 31.804575, 40.031445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.951298, 31.711220, 39.926514>,  <41.275654, 31.555628, 39.751629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.951298, 31.711220, 39.926514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380590, -0.216997, 0.898924,
		0.444536, 0.895326, 0.027919,
		-0.810888, 0.388978, 0.437215,
		40.708031, 31.827913, 40.057678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.489311, 32.086452, 40.300144>,  <41.275654, 31.555628, 39.751629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.489311, 32.086452, 40.300144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.139381, 31.922112, 40.402824>,  <40.929424, 31.823507, 40.464432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.139381, 31.922112, 40.402824>,  <41.489311, 32.086452, 40.300144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.139381, 31.922112, 40.402824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331548, -0.121405, 0.935594,
		-0.353222, 0.903584, 0.242424,
		-0.874820, -0.410848, 0.256698,
		40.876934, 31.798857, 40.479836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.452206, 32.241951, 40.954845>,  <41.489311, 32.086452, 40.300144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.452206, 32.241951, 40.954845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.148739, 31.988295, 40.895138>,  <40.966660, 31.836100, 40.859314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.148739, 31.988295, 40.895138>,  <41.452206, 32.241951, 40.954845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.148739, 31.988295, 40.895138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053799, -0.289326, 0.955718,
		-0.649250, 0.717044, 0.253620,
		-0.758670, -0.634144, -0.149268,
		40.921139, 31.798052, 40.850357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.928215, 32.406425, 41.396622>,  <41.452206, 32.241951, 40.954845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.928215, 32.406425, 41.396622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.911999, 32.021568, 41.288815>,  <40.902267, 31.790655, 41.224129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.911999, 32.021568, 41.288815>,  <40.928215, 32.406425, 41.396622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.911999, 32.021568, 41.288815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079985, -0.265748, 0.960719,
		-0.995971, 0.060508, -0.066183,
		-0.040543, -0.962142, -0.269517,
		40.899837, 31.732925, 41.207958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.510250, 32.148438, 41.841125>,  <40.928215, 32.406425, 41.396622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.510250, 32.148438, 41.841125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.703896, 31.822416, 41.713799>,  <40.820084, 31.626804, 41.637402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.703896, 31.822416, 41.713799>,  <40.510250, 32.148438, 41.841125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.703896, 31.822416, 41.713799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088436, -0.407499, 0.908913,
		-0.870525, -0.411865, -0.269355,
		0.484112, -0.815053, -0.318314,
		40.849129, 31.577900, 41.618305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.337852, 31.711573, 42.442085>,  <40.510250, 32.148438, 41.841125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.337852, 31.711573, 42.442085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.550808, 31.451859, 42.224831>,  <40.678581, 31.296030, 42.094479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.550808, 31.451859, 42.224831>,  <40.337852, 31.711573, 42.442085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.550808, 31.451859, 42.224831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000888, -0.642051, 0.766661,
		-0.846501, -0.407677, -0.342396,
		0.532386, -0.649284, -0.543135,
		40.710526, 31.257074, 42.061890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.064816, 31.076540, 42.389896>,  <40.337852, 31.711573, 42.442085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.064816, 31.076540, 42.389896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.459583, 31.015507, 42.369049>,  <40.696442, 30.978886, 42.356541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.459583, 31.015507, 42.369049>,  <40.064816, 31.076540, 42.389896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.459583, 31.015507, 42.369049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048863, -0.591063, 0.805144,
		-0.153659, -0.792062, -0.590784,
		0.986915, -0.152585, -0.052120,
		40.755657, 30.969730, 42.353413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.227398, 30.382263, 42.526695>,  <40.064816, 31.076540, 42.389896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.227398, 30.382263, 42.526695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.559223, 30.586536, 42.617054>,  <40.758316, 30.709101, 42.671268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.559223, 30.586536, 42.617054>,  <40.227398, 30.382263, 42.526695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.559223, 30.586536, 42.617054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096047, -0.528988, 0.843176,
		0.550094, -0.677770, -0.487878,
		0.829561, 0.510685, 0.225895,
		40.808090, 30.739742, 42.684822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.633671, 29.945959, 42.791668>,  <40.227398, 30.382263, 42.526695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.633671, 29.945959, 42.791668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.828228, 30.272970, 42.915001>,  <40.944962, 30.469177, 42.989002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.828228, 30.272970, 42.915001>,  <40.633671, 29.945959, 42.791668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.828228, 30.272970, 42.915001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176985, -0.437761, 0.881500,
		0.855626, -0.374188, -0.357615,
		0.486396, 0.817526, 0.308334,
		40.974148, 30.518229, 43.007500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.230267, 29.739294, 43.096081>,  <40.633671, 29.945959, 42.791668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.230267, 29.739294, 43.096081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.134823, 30.103638, 43.230782>,  <41.077557, 30.322243, 43.311604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.134823, 30.103638, 43.230782>,  <41.230267, 29.739294, 43.096081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.134823, 30.103638, 43.230782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274315, -0.269427, 0.923125,
		0.931566, 0.312647, -0.185572,
		-0.238614, 0.910857, 0.336752,
		41.063240, 30.376894, 43.331806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.754318, 29.916021, 43.540604>,  <41.230267, 29.739294, 43.096081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.754318, 29.916021, 43.540604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.434639, 30.140520, 43.626656>,  <41.242832, 30.275219, 43.678288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.434639, 30.140520, 43.626656>,  <41.754318, 29.916021, 43.540604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.434639, 30.140520, 43.626656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122212, -0.198705, 0.972410,
		0.588508, 0.803442, 0.090214,
		-0.799201, 0.561246, 0.215130,
		41.194878, 30.308893, 43.691193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.968800, 30.222860, 44.159763>,  <41.754318, 29.916021, 43.540604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.968800, 30.222860, 44.159763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.570240, 30.255424, 44.150333>,  <41.331104, 30.274963, 44.144676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.570240, 30.255424, 44.150333>,  <41.968800, 30.222860, 44.159763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.570240, 30.255424, 44.150333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050137, -0.341922, 0.938390,
		0.068336, 0.936195, 0.344773,
		-0.996402, 0.081412, -0.023572,
		41.271320, 30.279848, 44.143261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.852921, 30.475756, 44.785191>,  <41.968800, 30.222860, 44.159763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.852921, 30.475756, 44.785191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.485329, 30.348209, 44.692413>,  <41.264774, 30.271681, 44.636749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.485329, 30.348209, 44.692413>,  <41.852921, 30.475756, 44.785191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.485329, 30.348209, 44.692413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209034, -0.104779, 0.972279,
		-0.334328, 0.941991, 0.029636,
		-0.918983, -0.318865, -0.231939,
		41.209633, 30.252550, 44.622833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.313324, 30.954578, 44.980572>,  <41.852921, 30.475756, 44.785191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.313324, 30.954578, 44.980572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.135704, 30.597414, 44.950825>,  <41.029133, 30.383116, 44.932976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.135704, 30.597414, 44.950825>,  <41.313324, 30.954578, 44.980572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.135704, 30.597414, 44.950825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181999, 0.008622, 0.983261,
		-0.877322, 0.450154, -0.166337,
		-0.444053, -0.892909, -0.074363,
		41.002487, 30.329540, 44.928516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.723888, 30.932032, 45.354336>,  <41.313324, 30.954578, 44.980572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.723888, 30.932032, 45.354336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.800285, 30.541952, 45.309605>,  <40.846123, 30.307903, 45.282768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.800285, 30.541952, 45.309605>,  <40.723888, 30.932032, 45.354336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.800285, 30.541952, 45.309605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204534, -0.150959, 0.967149,
		-0.960046, -0.161847, -0.228294,
		0.190993, -0.975201, -0.111824,
		40.857582, 30.249392, 45.276058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.443119, 30.616735, 45.852486>,  <40.723888, 30.932032, 45.354336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.443119, 30.616735, 45.852486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.692429, 30.321505, 45.749123>,  <40.842014, 30.144367, 45.687103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.692429, 30.321505, 45.749123>,  <40.443119, 30.616735, 45.852486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.692429, 30.321505, 45.749123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009846, -0.323013, 0.946343,
		-0.781943, -0.592373, -0.194058,
		0.623272, -0.738075, -0.258410,
		40.879410, 30.100082, 45.671600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.280331, 29.998751, 46.317463>,  <40.443119, 30.616735, 45.852486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.280331, 29.998751, 46.317463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.645744, 29.920359, 46.174892>,  <40.864994, 29.873323, 46.089352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.645744, 29.920359, 46.174892>,  <40.280331, 29.998751, 46.317463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.645744, 29.920359, 46.174892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209983, -0.523250, 0.825904,
		-0.348359, -0.829339, -0.436856,
		0.913538, -0.195979, -0.356426,
		40.919807, 29.861565, 46.067963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.408653, 29.291143, 46.517941>,  <40.280331, 29.998751, 46.317463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.408653, 29.291143, 46.517941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.731670, 29.518780, 46.455952>,  <40.925480, 29.655361, 46.418758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.731670, 29.518780, 46.455952>,  <40.408653, 29.291143, 46.517941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.731670, 29.518780, 46.455952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299103, -0.168678, 0.939194,
		0.508345, -0.804789, -0.306431,
		0.807541, 0.569089, -0.154968,
		40.973934, 29.689507, 46.409462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.799885, 29.106522, 47.005676>,  <40.408653, 29.291143, 46.517941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.799885, 29.106522, 47.005676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.047569, 29.392323, 46.875412>,  <41.196182, 29.563803, 46.797253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.047569, 29.392323, 46.875412>,  <40.799885, 29.106522, 47.005676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.047569, 29.392323, 46.875412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506465, -0.046481, 0.861007,
		0.600056, -0.698085, -0.390653,
		0.619214, 0.714504, -0.325665,
		41.233334, 29.606674, 46.777714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.394161, 28.827080, 47.214657>,  <40.799885, 29.106522, 47.005676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.394161, 28.827080, 47.214657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.480358, 29.215109, 47.169907>,  <41.532078, 29.447927, 47.143055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.480358, 29.215109, 47.169907>,  <41.394161, 28.827080, 47.214657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.480358, 29.215109, 47.169907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591988, -0.038663, 0.805019,
		0.776603, -0.239711, -0.582604,
		0.215497, 0.970074, -0.111880,
		41.545006, 29.506130, 47.136341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.042572, 28.832712, 47.165741>,  <41.394161, 28.827080, 47.214657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.042572, 28.832712, 47.165741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.932190, 29.199995, 47.279400>,  <41.865959, 29.420364, 47.347595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.932190, 29.199995, 47.279400>,  <42.042572, 28.832712, 47.165741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.932190, 29.199995, 47.279400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614737, -0.058652, 0.786548,
		0.738882, 0.391729, -0.548272,
		-0.275957, 0.918209, 0.284148,
		41.849403, 29.475458, 47.364643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.607109, 29.168522, 47.334515>,  <42.042572, 28.832712, 47.165741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.607109, 29.168522, 47.334515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.330238, 29.391016, 47.518467>,  <42.164116, 29.524511, 47.628838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.330238, 29.391016, 47.518467>,  <42.607109, 29.168522, 47.334515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.330238, 29.391016, 47.518467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612459, 0.115598, 0.782004,
		0.381816, 0.822947, -0.420685,
		-0.692178, 0.556234, 0.459884,
		42.122585, 29.557886, 47.656433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.953789, 29.688808, 47.605282>,  <42.607109, 29.168522, 47.334515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.953789, 29.688808, 47.605282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.621532, 29.692198, 47.827980>,  <42.422180, 29.694231, 47.961597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.621532, 29.692198, 47.827980>,  <42.953789, 29.688808, 47.605282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.621532, 29.692198, 47.827980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551820, 0.146064, 0.821073,
		-0.074364, 0.989239, -0.126001,
		-0.830641, 0.008471, 0.556744,
		42.372341, 29.694738, 47.995003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.078838, 30.215963, 48.119183>,  <42.953789, 29.688808, 47.605282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.078838, 30.215963, 48.119183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.760601, 30.023979, 48.267056>,  <42.569656, 29.908789, 48.355778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.760601, 30.023979, 48.267056>,  <43.078838, 30.215963, 48.119183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.760601, 30.023979, 48.267056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401318, 0.039592, 0.915082,
		-0.453841, 0.876396, 0.161118,
		-0.795595, -0.479961, 0.369682,
		42.521923, 29.879992, 48.377960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.826752, 30.572262, 48.723309>,  <43.078838, 30.215963, 48.119183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.826752, 30.572262, 48.723309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.741707, 30.181496, 48.714977>,  <42.690681, 29.947037, 48.709980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.741707, 30.181496, 48.714977>,  <42.826752, 30.572262, 48.723309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.741707, 30.181496, 48.714977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570596, -0.141426, 0.808962,
		-0.793233, 0.160109, 0.587492,
		-0.212609, -0.976915, -0.020826,
		42.677925, 29.888420, 48.708729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.059219, 30.460989, 48.927868>,  <42.826752, 30.572262, 48.723309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.059219, 30.460989, 48.927868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.348640, 30.714697, 49.036804>,  <42.522293, 30.866922, 49.102165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.348640, 30.714697, 49.036804>,  <42.059219, 30.460989, 48.927868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.348640, 30.714697, 49.036804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213683, 0.580982, -0.785366,
		-0.656361, 0.510059, 0.555904,
		0.723553, 0.634271, 0.272343,
		42.565708, 30.904978, 49.118507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.723877, 31.224224, 48.948280>,  <42.059219, 30.460989, 48.927868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.723877, 31.224224, 48.948280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.121593, 31.243452, 48.910175>,  <42.360222, 31.254988, 48.887314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.121593, 31.243452, 48.910175>,  <41.723877, 31.224224, 48.948280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.121593, 31.243452, 48.910175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101596, 0.699337, -0.707535,
		0.032608, 0.713174, 0.700228,
		0.994291, 0.048069, -0.095260,
		42.419880, 31.257874, 48.881596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.026928, 31.888922, 49.189739>,  <41.723877, 31.224224, 48.948280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.026928, 31.888922, 49.189739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.275600, 31.728773, 48.920452>,  <42.424805, 31.632685, 48.758881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.275600, 31.728773, 48.920452>,  <42.026928, 31.888922, 49.189739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.275600, 31.728773, 48.920452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049870, 0.877980, -0.476093,
		0.781684, 0.262403, 0.565786,
		0.621677, -0.400370, -0.673217,
		42.462105, 31.608662, 48.718487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.473240, 32.436821, 49.051014>,  <42.026928, 31.888922, 49.189739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.473240, 32.436821, 49.051014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.538868, 32.174366, 48.756378>,  <42.578247, 32.016891, 48.579597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.538868, 32.174366, 48.756378>,  <42.473240, 32.436821, 49.051014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.538868, 32.174366, 48.756378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074500, 0.752818, -0.653999,
		0.983631, 0.052429, 0.172401,
		0.164075, -0.656137, -0.736589,
		42.588089, 31.977526, 48.535400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.014145, 32.740074, 48.720650>,  <42.473240, 32.436821, 49.051014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.014145, 32.740074, 48.720650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.851349, 32.479443, 48.464584>,  <42.753670, 32.323063, 48.310947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.851349, 32.479443, 48.464584>,  <43.014145, 32.740074, 48.720650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.851349, 32.479443, 48.464584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085729, 0.670487, -0.736952,
		0.909400, -0.354813, -0.217023,
		-0.406991, -0.651579, -0.640159,
		42.729252, 32.283970, 48.272537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.330338, 32.852184, 48.228897>,  <43.014145, 32.740074, 48.720650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.330338, 32.852184, 48.228897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.036495, 32.651089, 48.046642>,  <42.860191, 32.530430, 47.937290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.036495, 32.651089, 48.046642>,  <43.330338, 32.852184, 48.228897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.036495, 32.651089, 48.046642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156002, 0.528403, -0.834538,
		0.660316, -0.684137, -0.309740,
		-0.734606, -0.502739, -0.455640,
		42.816113, 32.500267, 47.909950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.505222, 32.754784, 47.535797>,  <43.330338, 32.852184, 48.228897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.505222, 32.754784, 47.535797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.108013, 32.709991, 47.520977>,  <42.869690, 32.683117, 47.512085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.108013, 32.709991, 47.520977>,  <43.505222, 32.754784, 47.535797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.108013, 32.709991, 47.520977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024009, 0.499421, -0.866027,
		0.115478, -0.859092, -0.498623,
		-0.993020, -0.111979, -0.037046,
		42.810108, 32.676399, 47.509865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.362095, 32.513519, 46.840065>,  <43.505222, 32.754784, 47.535797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.362095, 32.513519, 46.840065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.010925, 32.659054, 46.964561>,  <42.800224, 32.746376, 47.039261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.010925, 32.659054, 46.964561>,  <43.362095, 32.513519, 46.840065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.010925, 32.659054, 46.964561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170516, 0.369841, -0.913313,
		-0.447406, -0.854892, -0.262653,
		-0.877925, 0.363836, 0.311242,
		42.747547, 32.768204, 47.057934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.889217, 32.333965, 46.349472>,  <43.362095, 32.513519, 46.840065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.889217, 32.333965, 46.349472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.738968, 32.657310, 46.530785>,  <42.648819, 32.851318, 46.639572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.738968, 32.657310, 46.530785>,  <42.889217, 32.333965, 46.349472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.738968, 32.657310, 46.530785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160966, 0.424758, -0.890882,
		-0.912688, -0.407595, -0.029429,
		-0.375619, 0.808361, 0.453280,
		42.626282, 32.899818, 46.666767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.251518, 32.446487, 46.059990>,  <42.889217, 32.333965, 46.349472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.251518, 32.446487, 46.059990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.344845, 32.792015, 46.238602>,  <42.400841, 32.999332, 46.345768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.344845, 32.792015, 46.238602>,  <42.251518, 32.446487, 46.059990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.344845, 32.792015, 46.238602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387467, 0.503758, -0.772073,
		-0.891870, 0.007123, 0.452235,
		0.233317, 0.863815, 0.446527,
		42.414841, 33.051159, 46.372559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.594368, 32.838345, 46.142269>,  <42.251518, 32.446487, 46.059990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.594368, 32.838345, 46.142269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.889668, 33.108089, 46.148289>,  <42.066849, 33.269936, 46.151901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.889668, 33.108089, 46.148289>,  <41.594368, 32.838345, 46.142269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.889668, 33.108089, 46.148289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396138, 0.451504, -0.799512,
		-0.545952, 0.584279, 0.600462,
		0.738249, 0.674361, 0.015045,
		42.111141, 33.310398, 46.152802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.362198, 33.426685, 45.871334>,  <41.594368, 32.838345, 46.142269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.362198, 33.426685, 45.871334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.742805, 33.549419, 45.862804>,  <41.971172, 33.623058, 45.857685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.742805, 33.549419, 45.862804>,  <41.362198, 33.426685, 45.871334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.742805, 33.549419, 45.862804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127825, 0.331418, -0.934785,
		-0.279756, 0.892196, 0.354573,
		0.951524, 0.306835, -0.021329,
		42.028263, 33.641468, 45.856407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.382904, 33.949390, 45.555267>,  <41.362198, 33.426685, 45.871334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.382904, 33.949390, 45.555267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.761333, 33.828560, 45.508469>,  <41.988392, 33.756062, 45.480389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.761333, 33.828560, 45.508469>,  <41.382904, 33.949390, 45.555267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.761333, 33.828560, 45.508469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031123, 0.274746, -0.961013,
		0.322446, 0.912833, 0.250529,
		0.946076, -0.302078, -0.117001,
		42.045155, 33.737938, 45.473370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.656559, 34.470715, 45.152435>,  <41.382904, 33.949390, 45.555267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.656559, 34.470715, 45.152435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.902229, 34.161774, 45.087627>,  <42.049633, 33.976410, 45.048744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.902229, 34.161774, 45.087627>,  <41.656559, 34.470715, 45.152435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.902229, 34.161774, 45.087627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091536, 0.134198, -0.986718,
		0.783839, 0.620853, 0.011724,
		0.614180, -0.772355, -0.162020,
		42.086483, 33.930069, 45.039021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.897026, 34.671009, 44.457607>,  <41.656559, 34.470715, 45.152435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.897026, 34.671009, 44.457607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.978794, 34.286827, 44.533218>,  <42.027855, 34.056316, 44.578587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.978794, 34.286827, 44.533218>,  <41.897026, 34.671009, 44.457607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.978794, 34.286827, 44.533218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058478, -0.180779, -0.981784,
		0.977135, 0.211752, 0.019210,
		0.204422, -0.960458, 0.189028,
		42.040119, 33.998688, 44.589928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.472122, 34.473446, 44.129101>,  <41.897026, 34.671009, 44.457607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.472122, 34.473446, 44.129101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.260841, 34.138168, 44.183407>,  <42.134071, 33.937000, 44.215988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.260841, 34.138168, 44.183407>,  <42.472122, 34.473446, 44.129101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.260841, 34.138168, 44.183407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011381, -0.152882, -0.988179,
		0.849040, -0.523507, 0.071214,
		-0.528206, -0.838193, 0.135761,
		42.102379, 33.886711, 44.224136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.791565, 33.983902, 43.665623>,  <42.472122, 34.473446, 44.129101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.791565, 33.983902, 43.665623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.436710, 33.816479, 43.743397>,  <42.223797, 33.716026, 43.790062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.436710, 33.816479, 43.743397>,  <42.791565, 33.983902, 43.665623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.436710, 33.816479, 43.743397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122964, -0.191706, -0.973719,
		0.444828, -0.887728, 0.118602,
		-0.887135, -0.418554, 0.194435,
		42.170570, 33.690914, 43.801727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.782459, 33.260296, 43.257576>,  <42.791565, 33.983902, 43.665623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.782459, 33.260296, 43.257576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.396805, 33.343422, 43.323620>,  <42.165413, 33.393295, 43.363247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.396805, 33.343422, 43.323620>,  <42.782459, 33.260296, 43.257576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.396805, 33.343422, 43.323620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171356, -0.012293, -0.985132,
		-0.202694, -0.978091, 0.047462,
		-0.964133, 0.207813, 0.165110,
		42.107563, 33.405766, 43.373154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.400288, 32.890835, 42.788395>,  <42.782459, 33.260296, 43.257576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.400288, 32.890835, 42.788395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.113503, 33.144836, 42.903446>,  <41.941429, 33.297237, 42.972477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.113503, 33.144836, 42.903446>,  <42.400288, 32.890835, 42.788395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.113503, 33.144836, 42.903446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354604, 0.023020, -0.934733,
		-0.600182, -0.772165, 0.208671,
		-0.716965, 0.635005, 0.287629,
		41.898415, 33.335339, 42.989735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.791973, 32.655388, 42.400963>,  <42.400288, 32.890835, 42.788395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.791973, 32.655388, 42.400963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.720833, 33.036221, 42.500496>,  <41.678146, 33.264721, 42.560215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.720833, 33.036221, 42.500496>,  <41.791973, 32.655388, 42.400963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.720833, 33.036221, 42.500496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498620, 0.130809, -0.856894,
		-0.848378, -0.276475, 0.451459,
		-0.177855, 0.952077, 0.248832,
		41.667477, 33.321842, 42.575146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.115486, 32.809521, 42.222569>,  <41.791973, 32.655388, 42.400963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.115486, 32.809521, 42.222569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.306557, 33.159122, 42.258194>,  <41.421200, 33.368885, 42.279568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.306557, 33.159122, 42.258194>,  <41.115486, 32.809521, 42.222569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.306557, 33.159122, 42.258194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579388, 0.389608, -0.715902,
		-0.660402, 0.290372, 0.692497,
		0.477681, 0.874008, 0.089060,
		41.449860, 33.421326, 42.284912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.536991, 33.311077, 42.095428>,  <41.115486, 32.809521, 42.222569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.536991, 33.311077, 42.095428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.888290, 33.487484, 42.021469>,  <41.099072, 33.593327, 41.977093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.888290, 33.487484, 42.021469>,  <40.536991, 33.311077, 42.095428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.888290, 33.487484, 42.021469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343923, 0.313860, -0.884991,
		-0.332263, 0.840831, 0.427322,
		0.878247, 0.441015, -0.184897,
		41.151764, 33.619789, 41.966000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.340782, 34.005955, 41.771641>,  <40.536991, 33.311077, 42.095428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.340782, 34.005955, 41.771641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.716797, 33.911453, 41.673248>,  <40.942406, 33.854752, 41.614212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.716797, 33.911453, 41.673248>,  <40.340782, 34.005955, 41.771641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.716797, 33.911453, 41.673248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164138, 0.318842, -0.933487,
		0.298971, 0.917891, 0.260946,
		0.940040, -0.236254, -0.245985,
		40.998810, 33.840576, 41.599453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.359280, 34.379093, 41.160786>,  <40.340782, 34.005955, 41.771641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.359280, 34.379093, 41.160786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.703995, 34.177517, 41.183998>,  <40.910824, 34.056572, 41.197926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.703995, 34.177517, 41.183998>,  <40.359280, 34.379093, 41.160786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.703995, 34.177517, 41.183998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210709, 0.251556, -0.944628,
		0.461439, 0.826294, 0.322972,
		0.861786, -0.503942, 0.058030,
		40.962532, 34.026333, 41.201408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.869553, 34.776886, 40.987652>,  <40.359280, 34.379093, 41.160786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.869553, 34.776886, 40.987652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.993622, 34.403740, 40.914391>,  <41.068066, 34.179852, 40.870434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.993622, 34.403740, 40.914391>,  <40.869553, 34.776886, 40.987652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.993622, 34.403740, 40.914391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048273, 0.207862, -0.976966,
		0.949452, 0.294192, 0.109507,
		0.310178, -0.932869, -0.183154,
		41.086674, 34.123878, 40.859444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.474285, 34.885216, 40.572521>,  <40.869553, 34.776886, 40.987652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.474285, 34.885216, 40.572521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.339058, 34.514847, 40.505142>,  <41.257923, 34.292625, 40.464714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.339058, 34.514847, 40.505142>,  <41.474285, 34.885216, 40.572521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.339058, 34.514847, 40.505142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079959, 0.150084, -0.985435,
		0.937719, -0.346614, 0.023298,
		-0.338069, -0.925923, -0.168451,
		41.237637, 34.237068, 40.454605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.955376, 34.616459, 40.063869>,  <41.474285, 34.885216, 40.572521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.955376, 34.616459, 40.063869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.602821, 34.427746, 40.054279>,  <41.391289, 34.314518, 40.048527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.602821, 34.427746, 40.054279>,  <41.955376, 34.616459, 40.063869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.602821, 34.427746, 40.054279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084771, 0.207891, -0.974472,
		0.464723, -0.856856, -0.223227,
		-0.881389, -0.471782, -0.023975,
		41.338406, 34.286213, 40.047089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.995228, 34.218094, 39.449940>,  <41.955376, 34.616459, 40.063869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.995228, 34.218094, 39.449940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.615047, 34.256504, 39.568211>,  <41.386940, 34.279549, 39.639175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.615047, 34.256504, 39.568211>,  <41.995228, 34.218094, 39.449940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.615047, 34.256504, 39.568211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282342, 0.131463, -0.950264,
		-0.130120, -0.986659, -0.097837,
		-0.950449, 0.096025, 0.295681,
		41.329914, 34.285313, 39.656914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.589508, 33.938602, 38.929474>,  <41.995228, 34.218094, 39.449940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.589508, 33.938602, 38.929474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.333992, 34.160503, 39.142715>,  <41.180683, 34.293644, 39.270660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.333992, 34.160503, 39.142715>,  <41.589508, 33.938602, 38.929474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.333992, 34.160503, 39.142715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415165, 0.334822, -0.845892,
		-0.647753, -0.761673, 0.016432,
		-0.638791, 0.554751, 0.533102,
		41.142353, 34.326927, 39.302647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.023495, 33.615742, 38.796925>,  <41.589508, 33.938602, 38.929474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.023495, 33.615742, 38.796925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.946095, 33.990158, 38.914494>,  <40.899654, 34.214806, 38.985035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.946095, 33.990158, 38.914494>,  <41.023495, 33.615742, 38.796925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.946095, 33.990158, 38.914494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.594139, 0.126605, -0.794336,
		-0.780741, -0.328336, 0.531638,
		-0.193501, 0.936038, 0.293923,
		40.888042, 34.270969, 39.002670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.239742, 33.783611, 38.634361>,  <41.023495, 33.615742, 38.796925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.239742, 33.783611, 38.634361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.449226, 34.122925, 38.665710>,  <40.574917, 34.326515, 38.684521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.449226, 34.122925, 38.665710>,  <40.239742, 33.783611, 38.634361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.449226, 34.122925, 38.665710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421803, 0.338132, -0.841278,
		-0.740145, 0.407525, 0.534891,
		0.523706, 0.848287, 0.078371,
		40.606339, 34.377411, 38.689220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.787533, 34.257412, 38.268368>,  <40.239742, 33.783611, 38.634361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.787533, 34.257412, 38.268368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.112637, 34.479111, 38.340187>,  <40.307697, 34.612129, 38.383278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.112637, 34.479111, 38.340187>,  <39.787533, 34.257412, 38.268368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.112637, 34.479111, 38.340187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239553, 0.598844, -0.764199,
		-0.531073, 0.578098, 0.619486,
		0.812758, 0.554245, 0.179545,
		40.356464, 34.645386, 38.394051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.594963, 35.043163, 38.244144>,  <39.787533, 34.257412, 38.268368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.594963, 35.043163, 38.244144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.972694, 34.969944, 38.134792>,  <40.199333, 34.926014, 38.069183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.972694, 34.969944, 38.134792>,  <39.594963, 35.043163, 38.244144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.972694, 34.969944, 38.134792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116702, 0.590533, -0.798531,
		0.307608, 0.785980, 0.536295,
		0.944329, -0.183048, -0.273378,
		40.255993, 34.915031, 38.052780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.710655, 35.661480, 38.272282>,  <39.594963, 35.043163, 38.244144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.710655, 35.661480, 38.272282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.982971, 35.472992, 38.047970>,  <40.146362, 35.359898, 37.913383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.982971, 35.472992, 38.047970>,  <39.710655, 35.661480, 38.272282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.982971, 35.472992, 38.047970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263315, 0.556972, -0.787685,
		0.683511, 0.683911, 0.255104,
		0.680792, -0.471219, -0.560781,
		40.187210, 35.331627, 37.879734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.051956, 36.202549, 37.943356>,  <39.710655, 35.661480, 38.272282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.051956, 36.202549, 37.943356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.101696, 35.873802, 37.720982>,  <40.131542, 35.676552, 37.587555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.101696, 35.873802, 37.720982>,  <40.051956, 36.202549, 37.943356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.101696, 35.873802, 37.720982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259419, 0.513869, -0.817705,
		0.957725, 0.245905, -0.149307,
		0.124353, -0.821870, -0.555938,
		40.139004, 35.627243, 37.554199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.334225, 36.445484, 37.336494>,  <40.051956, 36.202549, 37.943356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.334225, 36.445484, 37.336494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.221420, 36.090462, 37.190777>,  <40.153736, 35.877449, 37.103348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.221420, 36.090462, 37.190777>,  <40.334225, 36.445484, 37.336494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.221420, 36.090462, 37.190777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294033, 0.441387, -0.847775,
		0.913243, -0.131971, -0.385449,
		-0.282014, -0.887559, -0.364290,
		40.136818, 35.824196, 37.081490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.548454, 36.379463, 36.748959>,  <40.334225, 36.445484, 37.336494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.548454, 36.379463, 36.748959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.267300, 36.095516, 36.730907>,  <40.098606, 35.925148, 36.720078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.267300, 36.095516, 36.730907>,  <40.548454, 36.379463, 36.748959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.267300, 36.095516, 36.730907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350832, 0.401179, -0.846151,
		0.618762, -0.578915, -0.531028,
		-0.702887, -0.709868, -0.045133,
		40.056435, 35.882557, 36.717369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.577145, 36.068558, 36.111050>,  <40.548454, 36.379463, 36.748959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.577145, 36.068558, 36.111050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.204479, 35.991550, 36.234299>,  <39.980881, 35.945347, 36.308250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.204479, 35.991550, 36.234299>,  <40.577145, 36.068558, 36.111050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.204479, 35.991550, 36.234299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363273, 0.478811, -0.799233,
		0.006336, -0.856548, -0.516028,
		-0.931662, -0.192523, 0.308127,
		39.924980, 35.933792, 36.326736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.252872, 35.754871, 35.576004>,  <40.577145, 36.068558, 36.111050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.252872, 35.754871, 35.576004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.928860, 35.869717, 35.780518>,  <39.734451, 35.938625, 35.903225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.928860, 35.869717, 35.780518>,  <40.252872, 35.754871, 35.576004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.928860, 35.869717, 35.780518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356052, 0.451958, -0.817901,
		-0.465909, -0.844571, -0.263874,
		-0.810035, 0.287114, 0.511282,
		39.685848, 35.955853, 35.933903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.984818, 35.535568, 35.339985>,  <40.252872, 35.754871, 35.576004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.984818, 35.535568, 35.339985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.997860, 35.509960, 35.738953>,  <41.005684, 35.494595, 35.978333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.997860, 35.509960, 35.738953>,  <40.984818, 35.535568, 35.339985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.997860, 35.509960, 35.738953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.649954, -0.759476, -0.027505,
		0.759274, -0.647377, -0.066373,
		0.032602, -0.064024, 0.997416,
		41.007641, 35.490753, 36.038177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.281227, 34.916565, 35.463367>,  <40.984818, 35.535568, 35.339985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.281227, 34.916565, 35.463367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.039963, 35.050232, 35.753063>,  <40.895203, 35.130432, 35.926880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.039963, 35.050232, 35.753063>,  <41.281227, 34.916565, 35.463367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.039963, 35.050232, 35.753063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504792, -0.862955, -0.022230,
		0.617558, -0.378999, 0.689190,
		-0.603165, 0.334169, 0.724240,
		40.859013, 35.150482, 35.970337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.309849, 34.382626, 35.964924>,  <41.281227, 34.916565, 35.463367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.309849, 34.382626, 35.964924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.611149, 34.120052, 35.948391>,  <41.791931, 33.962509, 35.938473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.611149, 34.120052, 35.948391>,  <41.309849, 34.382626, 35.964924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.611149, 34.120052, 35.948391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239021, -0.331736, 0.912590,
		-0.612763, -0.677532, -0.406782,
		0.753253, -0.656430, -0.041331,
		41.837124, 33.923122, 35.935993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.934040, 34.540913, 36.251102>,  <41.309849, 34.382626, 35.964924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.934040, 34.540913, 36.251102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.273972, 34.682877, 36.406960>,  <42.477932, 34.768055, 36.500473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.273972, 34.682877, 36.406960>,  <41.934040, 34.540913, 36.251102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.273972, 34.682877, 36.406960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297637, -0.933292, 0.200943,
		0.434970, -0.054795, -0.898776,
		0.849831, 0.354913, 0.389645,
		42.528919, 34.789349, 36.523853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.479771, 34.181316, 35.898014>,  <41.934040, 34.540913, 36.251102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.479771, 34.181316, 35.898014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.593067, 34.310928, 36.259075>,  <42.661045, 34.388695, 36.475712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.593067, 34.310928, 36.259075>,  <42.479771, 34.181316, 35.898014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.593067, 34.310928, 36.259075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493595, -0.856221, 0.152480,
		0.822278, 0.402357, -0.402452,
		0.283237, 0.324029, 0.902653,
		42.678040, 34.408138, 36.529869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.251888, 34.120979, 35.995987>,  <42.479771, 34.181316, 35.898014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.251888, 34.120979, 35.995987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.050934, 34.116360, 36.341812>,  <42.930359, 34.113590, 36.549309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.050934, 34.116360, 36.341812>,  <43.251888, 34.120979, 35.995987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.050934, 34.116360, 36.341812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527330, -0.796512, 0.295788,
		0.685222, 0.604512, 0.406247,
		-0.502388, -0.011546, 0.864565,
		42.900219, 34.112896, 36.601181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.807911, 33.935448, 36.499268>,  <43.251888, 34.120979, 35.995987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.807911, 33.935448, 36.499268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.436615, 33.844173, 36.616776>,  <43.213837, 33.789410, 36.687279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.436615, 33.844173, 36.616776>,  <43.807911, 33.935448, 36.499268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.436615, 33.844173, 36.616776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319964, -0.892573, 0.317707,
		0.189716, 0.388905, 0.901533,
		-0.928241, -0.228184, 0.293771,
		43.158142, 33.775719, 36.704906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.514442, 33.799191, 36.360283>,  <43.807911, 33.935448, 36.499268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.514442, 33.799191, 36.360283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.794331, 34.056858, 36.483856>,  <44.962265, 34.211456, 36.557999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.794331, 34.056858, 36.483856>,  <44.514442, 33.799191, 36.360283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.794331, 34.056858, 36.483856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.604844, 0.304026, 0.736024,
		0.380199, -0.701868, 0.602354,
		0.699723, 0.644166, 0.308930,
		45.004246, 34.250107, 36.576534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.436775, 33.810886, 37.079475>,  <44.514442, 33.799191, 36.360283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.436775, 33.810886, 37.079475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.621548, 34.152496, 36.983765>,  <44.732410, 34.357464, 36.926338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.621548, 34.152496, 36.983765>,  <44.436775, 33.810886, 37.079475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.621548, 34.152496, 36.983765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546059, 0.486451, 0.682045,
		0.698881, -0.184401, 0.691058,
		0.461936, 0.854027, -0.239277,
		44.760128, 34.408703, 36.911983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.668354, 34.070065, 37.727222>,  <44.436775, 33.810886, 37.079475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.668354, 34.070065, 37.727222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.654667, 34.389137, 37.486382>,  <44.646454, 34.580582, 37.341877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.654667, 34.389137, 37.486382>,  <44.668354, 34.070065, 37.727222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.654667, 34.389137, 37.486382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405008, 0.539702, 0.738031,
		0.913673, 0.269106, 0.304604,
		-0.034213, 0.797687, -0.602101,
		44.644402, 34.628445, 37.305752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.912514, 34.677486, 38.181137>,  <44.668354, 34.070065, 37.727222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.912514, 34.677486, 38.181137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.737820, 34.834957, 37.857590>,  <44.633003, 34.929440, 37.663460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.737820, 34.834957, 37.857590>,  <44.912514, 34.677486, 38.181137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.737820, 34.834957, 37.857590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525506, 0.618142, 0.584589,
		0.730140, 0.680380, -0.063084,
		-0.436738, 0.393681, -0.808873,
		44.606800, 34.953060, 37.614929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.890568, 35.379898, 38.263298>,  <44.912514, 34.677486, 38.181137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.890568, 35.379898, 38.263298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.581100, 35.317848, 38.017574>,  <44.395420, 35.280617, 37.870140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.581100, 35.317848, 38.017574>,  <44.890568, 35.379898, 38.263298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.581100, 35.317848, 38.017574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519083, 0.711144, 0.474160,
		0.363305, 0.685718, -0.630714,
		-0.773668, -0.155128, -0.614306,
		44.348999, 35.271309, 37.833282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.678261, 35.991314, 38.131218>,  <44.890568, 35.379898, 38.263298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.678261, 35.991314, 38.131218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.367542, 35.781937, 37.991158>,  <44.181110, 35.656311, 37.907124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.367542, 35.781937, 37.991158>,  <44.678261, 35.991314, 38.131218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.367542, 35.781937, 37.991158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.628655, 0.677406, 0.381987,
		0.037243, 0.516846, -0.855268,
		-0.776792, -0.523442, -0.350147,
		44.134506, 35.624905, 37.886112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.222473, 36.517666, 37.846928>,  <44.678261, 35.991314, 38.131218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.222473, 36.517666, 37.846928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.027653, 36.176849, 37.923660>,  <43.910759, 35.972359, 37.969700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.027653, 36.176849, 37.923660>,  <44.222473, 36.517666, 37.846928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.027653, 36.176849, 37.923660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.759712, 0.521674, 0.388193,
		-0.430832, 0.043333, -0.901391,
		-0.487054, -0.852043, 0.191833,
		43.881538, 35.921238, 37.981209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.595650, 36.612770, 37.602108>,  <44.222473, 36.517666, 37.846928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.595650, 36.612770, 37.602108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.508099, 36.314556, 37.853909>,  <43.455566, 36.135628, 38.004990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.508099, 36.314556, 37.853909>,  <43.595650, 36.612770, 37.602108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.508099, 36.314556, 37.853909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.726050, 0.555449, 0.405373,
		-0.651875, -0.368322, -0.662870,
		-0.218883, -0.745530, 0.629504,
		43.442432, 36.090897, 38.042759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.793713, 36.573128, 37.668839>,  <43.595650, 36.612770, 37.602108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.793713, 36.573128, 37.668839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.941780, 36.384289, 37.988865>,  <43.030621, 36.270985, 38.180882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.941780, 36.384289, 37.988865>,  <42.793713, 36.573128, 37.668839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.941780, 36.384289, 37.988865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.652956, 0.480380, 0.585562,
		-0.660777, -0.739162, -0.130439,
		0.370165, -0.472096, 0.800064,
		43.052830, 36.242661, 38.228886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.278748, 36.262157, 38.039337>,  <42.793713, 36.573128, 37.668839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.278748, 36.262157, 38.039337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.555740, 36.265106, 38.327896>,  <42.721935, 36.266876, 38.501030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.555740, 36.265106, 38.327896>,  <42.278748, 36.262157, 38.039337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.555740, 36.265106, 38.327896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.626669, 0.501559, 0.596426,
		-0.357429, -0.865092, 0.351937,
		0.692481, 0.007368, 0.721399,
		42.763485, 36.267315, 38.544315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.856476, 36.411869, 38.641792>,  <42.278748, 36.262157, 38.039337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.856476, 36.411869, 38.641792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.222637, 36.480202, 38.787586>,  <42.442333, 36.521202, 38.875061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.222637, 36.480202, 38.787586>,  <41.856476, 36.411869, 38.641792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.222637, 36.480202, 38.787586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396083, 0.543650, 0.739975,
		-0.071740, -0.821743, 0.565324,
		0.915408, 0.170830, 0.364480,
		42.497261, 36.531452, 38.896931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.834530, 36.353241, 39.286728>,  <41.856476, 36.411869, 38.641792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.834530, 36.353241, 39.286728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.155518, 36.590851, 39.264179>,  <42.348110, 36.733418, 39.250648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.155518, 36.590851, 39.264179>,  <41.834530, 36.353241, 39.286728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.155518, 36.590851, 39.264179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335350, 0.527125, 0.780820,
		0.493539, -0.607681, 0.622208,
		0.802471, 0.594023, -0.056371,
		42.396259, 36.769058, 39.247265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.068920, 36.547165, 40.072021>,  <41.834530, 36.353241, 39.286728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.068920, 36.547165, 40.072021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.246330, 36.825214, 39.845715>,  <42.352776, 36.992043, 39.709930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.246330, 36.825214, 39.845715>,  <42.068920, 36.547165, 40.072021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.246330, 36.825214, 39.845715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294976, 0.709295, 0.640226,
		0.846330, -0.117068, 0.519634,
		0.443525, 0.695123, -0.565766,
		42.379387, 37.033752, 39.675983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.454300, 36.947033, 40.504807>,  <42.068920, 36.547165, 40.072021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.454300, 36.947033, 40.504807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.398823, 37.164394, 40.173630>,  <42.365536, 37.294811, 39.974926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.398823, 37.164394, 40.173630>,  <42.454300, 36.947033, 40.504807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.398823, 37.164394, 40.173630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270019, 0.783594, 0.559528,
		0.952814, 0.301161, 0.038050,
		-0.138692, 0.543400, -0.827938,
		42.357216, 37.327415, 39.925247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.581413, 37.692333, 40.719669>,  <42.454300, 36.947033, 40.504807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.581413, 37.692333, 40.719669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.398655, 37.740448, 40.367130>,  <42.288998, 37.769318, 40.155605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.398655, 37.740448, 40.367130>,  <42.581413, 37.692333, 40.719669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.398655, 37.740448, 40.367130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451267, 0.822499, 0.346199,
		0.766551, 0.555901, -0.321516,
		-0.456899, 0.120290, -0.881347,
		42.261585, 37.776535, 40.102726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.609066, 38.343327, 40.688992>,  <42.581413, 37.692333, 40.719669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.609066, 38.343327, 40.688992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.339684, 38.250637, 40.408207>,  <42.178055, 38.195023, 40.239735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.339684, 38.250637, 40.408207>,  <42.609066, 38.343327, 40.688992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.339684, 38.250637, 40.408207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435954, 0.891386, 0.123997,
		0.596989, 0.389532, -0.701334,
		-0.673460, -0.231725, -0.701966,
		42.137646, 38.181118, 40.197617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.453671, 38.937054, 40.370316>,  <42.609066, 38.343327, 40.688992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.453671, 38.937054, 40.370316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.146137, 38.687996, 40.312069>,  <41.961617, 38.538563, 40.277119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.146137, 38.687996, 40.312069>,  <42.453671, 38.937054, 40.370316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.146137, 38.687996, 40.312069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.637101, 0.765378, 0.091104,
		0.054728, 0.162818, -0.985137,
		-0.768835, -0.622646, -0.145618,
		41.915485, 38.501202, 40.268383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.010429, 39.346809, 39.898083>,  <42.453671, 38.937054, 40.370316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.010429, 39.346809, 39.898083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.800911, 39.047421, 40.060776>,  <41.675201, 38.867786, 40.158390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.800911, 39.047421, 40.060776>,  <42.010429, 39.346809, 39.898083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.800911, 39.047421, 40.060776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.730286, 0.640365, 0.237938,
		-0.438546, -0.172399, -0.882018,
		-0.523793, -0.748473, 0.406730,
		41.643772, 38.822880, 40.182796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.364971, 39.345299, 39.671608>,  <42.010429, 39.346809, 39.898083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.364971, 39.345299, 39.671608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.322514, 39.157894, 40.022430>,  <41.297039, 39.045452, 40.232925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.322514, 39.157894, 40.022430>,  <41.364971, 39.345299, 39.671608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.322514, 39.157894, 40.022430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527041, 0.774459, 0.349917,
		-0.843185, -0.425105, -0.329127,
		-0.106144, -0.468508, 0.877060,
		41.290672, 39.017342, 40.285549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.677692, 39.431675, 39.877323>,  <41.364971, 39.345299, 39.671608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.677692, 39.431675, 39.877323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.850063, 39.319775, 40.220493>,  <40.953484, 39.252632, 40.426395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.850063, 39.319775, 40.220493>,  <40.677692, 39.431675, 39.877323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.850063, 39.319775, 40.220493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537692, 0.683924, 0.493088,
		-0.724701, -0.673785, 0.144297,
		0.430923, -0.279754, 0.857929,
		40.979340, 39.235847, 40.477871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.159637, 39.241638, 40.318298>,  <40.677692, 39.431675, 39.877323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.159637, 39.241638, 40.318298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.471916, 39.298996, 40.561596>,  <40.659283, 39.333412, 40.707573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.471916, 39.298996, 40.561596>,  <40.159637, 39.241638, 40.318298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.471916, 39.298996, 40.561596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498653, 0.729586, 0.468028,
		-0.376648, -0.668687, 0.641088,
		0.780693, 0.143399, 0.608240,
		40.706123, 39.342014, 40.744068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.975639, 39.300968, 40.975063>,  <40.159637, 39.241638, 40.318298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.975639, 39.300968, 40.975063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.316959, 39.506859, 41.008377>,  <40.521751, 39.630394, 41.028366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.316959, 39.506859, 41.008377>,  <39.975639, 39.300968, 40.975063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.316959, 39.506859, 41.008377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495777, 0.751446, 0.435356,
		0.161503, -0.412781, 0.896398,
		0.853301, 0.514725, 0.083287,
		40.572948, 39.661278, 41.033363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.117470, 39.614975, 41.652588>,  <39.975639, 39.300968, 40.975063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.117470, 39.614975, 41.652588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.298103, 39.851772, 41.385567>,  <40.406483, 39.993851, 41.225353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.298103, 39.851772, 41.385567>,  <40.117470, 39.614975, 41.652588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.298103, 39.851772, 41.385567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413870, 0.801801, 0.431076,
		0.790436, 0.081615, 0.607083,
		0.451577, 0.591991, -0.667551,
		40.433578, 40.029369, 41.185303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.558960, 40.136208, 41.851505>,  <40.117470, 39.614975, 41.652588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.558960, 40.136208, 41.851505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.379265, 40.277061, 41.523071>,  <40.271450, 40.361576, 41.326012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.379265, 40.277061, 41.523071>,  <40.558960, 40.136208, 41.851505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.379265, 40.277061, 41.523071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542472, 0.622723, 0.563863,
		0.709868, 0.698724, -0.088724,
		-0.449235, 0.352138, -0.821089,
		40.244495, 40.382702, 41.276745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.213318, 40.268101, 42.217476>,  <40.558960, 40.136208, 41.851505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.213318, 40.268101, 42.217476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.588615, 40.390091, 42.282818>,  <41.813793, 40.463284, 42.322021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.588615, 40.390091, 42.282818>,  <41.213318, 40.268101, 42.217476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.588615, 40.390091, 42.282818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210813, 0.878350, -0.429022,
		-0.274320, 0.368092, 0.888401,
		0.938247, 0.304975, 0.163350,
		41.870090, 40.481583, 42.331821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.261471, 40.877525, 42.760548>,  <41.213318, 40.268101, 42.217476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.261471, 40.877525, 42.760548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.557793, 40.910091, 42.493839>,  <41.735584, 40.929630, 42.333817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.557793, 40.910091, 42.493839>,  <41.261471, 40.877525, 42.760548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.557793, 40.910091, 42.493839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345353, 0.897550, -0.274107,
		0.576140, 0.433330, 0.693028,
		0.740806, 0.081415, -0.666767,
		41.780033, 40.934517, 42.293808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.779640, 41.522041, 42.813606>,  <41.261471, 40.877525, 42.760548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.779640, 41.522041, 42.813606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.910015, 41.443199, 42.443760>,  <41.988239, 41.395893, 42.221851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.910015, 41.443199, 42.443760>,  <41.779640, 41.522041, 42.813606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.910015, 41.443199, 42.443760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019745, 0.976391, -0.215105,
		0.945186, 0.088366, 0.314347,
		0.325933, -0.197107, -0.924617,
		42.007793, 41.384068, 42.166374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.424664, 41.862564, 42.688244>,  <41.779640, 41.522041, 42.813606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.424664, 41.862564, 42.688244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.266533, 41.783173, 42.329506>,  <42.171654, 41.735538, 42.114265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.266533, 41.783173, 42.329506>,  <42.424664, 41.862564, 42.688244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.266533, 41.783173, 42.329506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082429, 0.964771, -0.249844,
		0.914834, -0.172696, -0.365041,
		-0.395328, -0.198476, -0.896841,
		42.147934, 41.723629, 42.060455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.652901, 42.354107, 42.200787>,  <42.424664, 41.862564, 42.688244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.652901, 42.354107, 42.200787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.040134, 42.454334, 42.202755>,  <43.272476, 42.514469, 42.203938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.040134, 42.454334, 42.202755>,  <42.652901, 42.354107, 42.200787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.040134, 42.454334, 42.202755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241132, -0.925930, -0.290704,
		-0.068282, 0.282614, -0.956800,
		0.968087, 0.250565, 0.004923,
		43.330559, 42.529503, 42.204231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.824539, 42.070602, 41.662376>,  <42.652901, 42.354107, 42.200787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.824539, 42.070602, 41.662376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.187073, 42.102215, 41.828419>,  <43.404591, 42.121181, 41.928043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.187073, 42.102215, 41.828419>,  <42.824539, 42.070602, 41.662376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.187073, 42.102215, 41.828419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283917, -0.841477, -0.459681,
		0.312975, 0.534481, -0.785097,
		0.906332, 0.079033, 0.415110,
		43.458973, 42.125923, 41.952953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.402782, 42.072186, 41.205151>,  <42.824539, 42.070602, 41.662376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.402782, 42.072186, 41.205151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.473320, 41.872147, 41.544281>,  <43.515644, 41.752125, 41.747757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.473320, 41.872147, 41.544281>,  <43.402782, 42.072186, 41.205151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.473320, 41.872147, 41.544281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099712, -0.847816, -0.520832,
		0.979265, 0.176384, -0.099642,
		0.176344, -0.500097, 0.847824,
		43.526222, 41.722118, 41.798630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.088337, 41.794987, 41.222073>,  <43.402782, 42.072186, 41.205151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.088337, 41.794987, 41.222073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.784946, 41.598011, 41.392818>,  <43.602913, 41.479824, 41.495266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.784946, 41.598011, 41.392818>,  <44.088337, 41.794987, 41.222073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.784946, 41.598011, 41.392818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136771, -0.760697, -0.634534,
		0.637188, -0.422895, 0.644323,
		-0.758476, -0.492442, 0.426867,
		43.557404, 41.450279, 41.520878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.306725, 41.073872, 41.446857>,  <44.088337, 41.794987, 41.222073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.306725, 41.073872, 41.446857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.926395, 41.096771, 41.325100>,  <43.698196, 41.110512, 41.252045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.926395, 41.096771, 41.325100>,  <44.306725, 41.073872, 41.446857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.926395, 41.096771, 41.325100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177814, -0.703795, -0.687790,
		-0.253603, -0.708093, 0.659006,
		-0.950825, 0.057245, -0.304393,
		43.641148, 41.113945, 41.233784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.089832, 40.329639, 41.473328>,  <44.306725, 41.073872, 41.446857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.089832, 40.329639, 41.473328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.852001, 40.541065, 41.230976>,  <43.709301, 40.667923, 41.085564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.852001, 40.541065, 41.230976>,  <44.089832, 40.329639, 41.473328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.852001, 40.541065, 41.230976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179888, -0.646999, -0.740968,
		-0.783657, -0.549554, 0.289608,
		-0.594578, 0.528567, -0.605883,
		43.673626, 40.699635, 41.049210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.558453, 39.904366, 41.225876>,  <44.089832, 40.329639, 41.473328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.558453, 39.904366, 41.225876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.648678, 40.194347, 40.965549>,  <43.702812, 40.368336, 40.809353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.648678, 40.194347, 40.965549>,  <43.558453, 39.904366, 41.225876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.648678, 40.194347, 40.965549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247935, -0.688756, -0.681280,
		-0.942152, -0.007689, -0.335099,
		0.225563, 0.724952, -0.650819,
		43.716347, 40.411835, 40.770302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.117123, 39.690758, 40.641659>,  <43.558453, 39.904366, 41.225876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.117123, 39.690758, 40.641659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.380798, 39.952827, 40.494026>,  <43.539001, 40.110069, 40.405445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.380798, 39.952827, 40.494026>,  <43.117123, 39.690758, 40.641659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.380798, 39.952827, 40.494026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297590, -0.678031, -0.672097,
		-0.690589, 0.333201, -0.641922,
		0.659186, 0.655172, -0.369083,
		43.578556, 40.149380, 40.383301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.136284, 39.597271, 39.948883>,  <43.117123, 39.690758, 40.641659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.136284, 39.597271, 39.948883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.483402, 39.786240, 40.010540>,  <43.691673, 39.899620, 40.047535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.483402, 39.786240, 40.010540>,  <43.136284, 39.597271, 39.948883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.483402, 39.786240, 40.010540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469776, -0.678782, -0.564416,
		-0.162012, 0.562207, -0.810972,
		0.867792, 0.472417, 0.154141,
		43.743740, 39.927963, 40.056782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.414295, 39.621765, 39.363739>,  <43.136284, 39.597271, 39.948883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.414295, 39.621765, 39.363739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.730236, 39.658440, 39.606300>,  <43.919800, 39.680447, 39.751839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.730236, 39.658440, 39.606300>,  <43.414295, 39.621765, 39.363739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.730236, 39.658440, 39.606300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511324, -0.644418, -0.568572,
		0.338647, 0.759157, -0.555877,
		0.789852, 0.091688, 0.606405,
		43.967194, 39.685947, 39.788223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.028809, 39.888908, 38.892120>,  <43.414295, 39.621765, 39.363739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.028809, 39.888908, 38.892120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.154072, 39.698048, 39.220573>,  <44.229229, 39.583530, 39.417645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.154072, 39.698048, 39.220573>,  <44.028809, 39.888908, 38.892120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.154072, 39.698048, 39.220573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505419, -0.648275, -0.569466,
		0.804041, 0.593349, 0.038148,
		0.313162, -0.477155, 0.821129,
		44.248020, 39.554901, 39.466911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.836269, 39.815678, 38.799461>,  <44.028809, 39.888908, 38.892120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.836269, 39.815678, 38.799461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.732285, 39.560108, 39.089069>,  <44.669895, 39.406769, 39.262833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.732285, 39.560108, 39.089069>,  <44.836269, 39.815678, 38.799461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.732285, 39.560108, 39.089069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627836, -0.681512, -0.375984,
		0.733650, 0.356822, 0.578304,
		-0.259962, -0.638920, 0.724017,
		44.654297, 39.368431, 39.306274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.436249, 39.421906, 38.809052>,  <44.836269, 39.815678, 38.799461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.436249, 39.421906, 38.809052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.164703, 39.223671, 39.025768>,  <45.001778, 39.104729, 39.155796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.164703, 39.223671, 39.025768>,  <45.436249, 39.421906, 38.809052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.164703, 39.223671, 39.025768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424012, -0.866999, -0.261776,
		0.599464, 0.052014, 0.798710,
		-0.678865, -0.495588, 0.541789,
		44.961044, 39.074993, 39.188305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.840092, 38.972179, 39.286064>,  <45.436249, 39.421906, 38.809052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.840092, 38.972179, 39.286064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.472229, 38.825809, 39.229019>,  <45.251511, 38.737988, 39.194790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.472229, 38.825809, 39.229019>,  <45.840092, 38.972179, 39.286064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.472229, 38.825809, 39.229019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390855, -0.888237, -0.241386,
		-0.038348, -0.277733, 0.959893,
		-0.919653, -0.365922, -0.142615,
		45.196335, 38.716034, 39.186234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.788025, 38.150349, 39.456581>,  <45.840092, 38.972179, 39.286064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.788025, 38.150349, 39.456581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.461044, 38.221092, 39.237312>,  <45.264854, 38.263538, 39.105751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.461044, 38.221092, 39.237312>,  <45.788025, 38.150349, 39.456581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.461044, 38.221092, 39.237312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143379, -0.859257, -0.491040,
		-0.557862, -0.479999, 0.677046,
		-0.817455, 0.176859, -0.548168,
		45.215809, 38.274151, 39.072861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.313732, 37.655724, 39.612122>,  <45.788025, 38.150349, 39.456581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.313732, 37.655724, 39.612122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.247940, 37.784363, 39.239128>,  <45.208466, 37.861546, 39.015331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.247940, 37.784363, 39.239128>,  <45.313732, 37.655724, 39.612122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.247940, 37.784363, 39.239128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352682, -0.863686, -0.360085,
		-0.921173, -0.388097, 0.028640,
		-0.164484, 0.321600, -0.932480,
		45.198593, 37.880844, 38.959385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.264107, 36.993404, 39.167137>,  <45.313732, 37.655724, 39.612122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.264107, 36.993404, 39.167137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.266464, 37.270493, 38.878666>,  <45.267879, 37.436745, 38.705582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.266464, 37.270493, 38.878666>,  <45.264107, 36.993404, 39.167137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.266464, 37.270493, 38.878666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521635, -0.617424, -0.588799,
		-0.853148, -0.372721, -0.364989,
		0.005895, 0.692725, -0.721178,
		45.268234, 37.478310, 38.662312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.185482, 36.568611, 38.580341>,  <45.264107, 36.993404, 39.167137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.185482, 36.568611, 38.580341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.338612, 36.912354, 38.444717>,  <45.430489, 37.118599, 38.363342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.338612, 36.912354, 38.444717>,  <45.185482, 36.568611, 38.580341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.338612, 36.912354, 38.444717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.652079, -0.511339, -0.559755,
		-0.654399, -0.006802, -0.756119,
		0.382825, 0.859352, -0.339055,
		45.453461, 37.170158, 38.343002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.217983, 36.451050, 37.906109>,  <45.185482, 36.568611, 38.580341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.217983, 36.451050, 37.906109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.477699, 36.752357, 37.948078>,  <45.633530, 36.933144, 37.973259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.477699, 36.752357, 37.948078>,  <45.217983, 36.451050, 37.906109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.477699, 36.752357, 37.948078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532622, -0.351878, -0.769737,
		-0.542901, 0.555665, -0.629679,
		0.649286, 0.753272, 0.104924,
		45.672485, 36.978340, 37.979557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.422695, 36.664433, 37.275726>,  <45.217983, 36.451050, 37.906109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.422695, 36.664433, 37.275726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.714039, 36.787079, 37.520832>,  <45.888844, 36.860664, 37.667896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.714039, 36.787079, 37.520832>,  <45.422695, 36.664433, 37.275726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.714039, 36.787079, 37.520832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.674813, -0.476088, -0.563887,
		0.118836, 0.824214, -0.553668,
		0.728358, 0.306612, 0.612767,
		45.932545, 36.879063, 37.704662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.851967, 36.890945, 36.837048>,  <45.422695, 36.664433, 37.275726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.851967, 36.890945, 36.837048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.082542, 36.866756, 37.163006>,  <46.220886, 36.852245, 37.358582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.082542, 36.866756, 37.163006>,  <45.851967, 36.890945, 36.837048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.082542, 36.866756, 37.163006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.752090, -0.350662, -0.558030,
		0.319499, 0.934548, -0.156656,
		0.576439, -0.060471, 0.814900,
		46.255474, 36.848614, 37.407475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.534191, 37.221535, 36.686684>,  <45.851967, 36.890945, 36.837048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.534191, 37.221535, 36.686684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.606842, 36.976486, 36.994373>,  <46.650433, 36.829456, 37.178986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.606842, 36.976486, 36.994373>,  <46.534191, 37.221535, 36.686684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.606842, 36.976486, 36.994373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614806, -0.539759, -0.575043,
		0.767480, 0.577366, 0.278610,
		0.181628, -0.612625, 0.769222,
		46.661331, 36.792698, 37.225140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.327065, 37.097549, 36.859264>,  <46.534191, 37.221535, 36.686684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.327065, 37.097549, 36.859264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.124657, 36.776264, 36.984989>,  <47.003212, 36.583492, 37.060425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.124657, 36.776264, 36.984989>,  <47.327065, 37.097549, 36.859264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.124657, 36.776264, 36.984989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285648, -0.499908, -0.817617,
		0.813847, -0.323949, 0.482400,
		-0.506022, -0.803212, 0.314313,
		46.972851, 36.535301, 37.079285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.844940, 36.445988, 36.767910>,  <47.327065, 37.097549, 36.859264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.844940, 36.445988, 36.767910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.447079, 36.418652, 36.736923>,  <47.208363, 36.402248, 36.718330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.447079, 36.418652, 36.736923>,  <47.844940, 36.445988, 36.767910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.447079, 36.418652, 36.736923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103292, -0.644987, -0.757181,
		0.001784, -0.761131, 0.648595,
		-0.994649, -0.068345, -0.077468,
		47.148685, 36.398148, 36.713684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.460449, 35.837967, 37.050209>,  <47.844940, 36.445988, 36.767910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.460449, 35.837967, 37.050209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.302837, 36.017044, 36.729130>,  <47.208271, 36.124489, 36.536484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.302837, 36.017044, 36.729130>,  <47.460449, 35.837967, 37.050209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.302837, 36.017044, 36.729130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311726, -0.756487, -0.574938,
		-0.864621, -0.476762, 0.158520,
		-0.394026, 0.447689, -0.802694,
		47.184631, 36.151352, 36.488323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.116943, 35.328533, 36.777397>,  <47.460449, 35.837967, 37.050209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.116943, 35.328533, 36.777397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.278492, 35.554966, 36.489941>,  <47.375420, 35.690826, 36.317467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.278492, 35.554966, 36.489941>,  <47.116943, 35.328533, 36.777397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.278492, 35.554966, 36.489941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171130, -0.818438, -0.548519,
		-0.898668, 0.098549, -0.427415,
		0.403869, 0.566080, -0.718640,
		47.399654, 35.724789, 36.274349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.951820, 35.127174, 36.088482>,  <47.116943, 35.328533, 36.777397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.951820, 35.127174, 36.088482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.316910, 35.289238, 36.067352>,  <47.535961, 35.386475, 36.054676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.316910, 35.289238, 36.067352>,  <46.951820, 35.127174, 36.088482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.316910, 35.289238, 36.067352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304408, -0.760533, -0.573521,
		-0.272540, 0.507383, -0.817486,
		0.912720, 0.405157, -0.052825,
		47.590725, 35.410786, 36.051506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.082848, 35.197243, 35.291298>,  <46.951820, 35.127174, 36.088482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.082848, 35.197243, 35.291298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.407768, 35.164474, 35.522282>,  <47.602718, 35.144814, 35.660873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.407768, 35.164474, 35.522282>,  <47.082848, 35.197243, 35.291298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.407768, 35.164474, 35.522282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351548, -0.721253, -0.596831,
		0.465386, 0.687810, -0.557076,
		0.812299, -0.081918, 0.577459,
		47.651459, 35.139900, 35.695518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.628571, 35.246849, 34.716560>,  <47.082848, 35.197243, 35.291298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.628571, 35.246849, 34.716560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.715950, 35.076447, 35.067741>,  <47.768375, 34.974205, 35.278450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.715950, 35.076447, 35.067741>,  <47.628571, 35.246849, 34.716560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.715950, 35.076447, 35.067741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388894, -0.787148, -0.478706,
		0.895010, 0.446001, -0.006277,
		0.218444, -0.426006, 0.877953,
		47.781483, 34.948647, 35.331127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<37.801006, 34.222115, 45.906361> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.452572, 34.029469, 45.944851>,  <37.243511, 33.913883, 45.967945>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.452572, 34.029469, 45.944851>,  <37.801006, 34.222115, 45.906361>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.452572, 34.029469, 45.944851> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159654, 0.092387, -0.982840,
		0.464457, -0.871502, -0.157368,
		-0.871086, -0.481611, 0.096229,
		37.191246, 33.884987, 45.973721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.756233, 33.747921, 45.407722>,  <37.801006, 34.222115, 45.906361>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.756233, 33.747921, 45.407722> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.372910, 33.796303, 45.511272>,  <37.142914, 33.825333, 45.573402>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.372910, 33.796303, 45.511272>,  <37.756233, 33.747921, 45.407722>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.372910, 33.796303, 45.511272> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237916, 0.164001, -0.957340,
		-0.158249, -0.979017, -0.128387,
		-0.958307, 0.120953, 0.258877,
		37.085419, 33.832588, 45.588936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.316223, 33.216072, 45.070717>,  <37.756233, 33.747921, 45.407722>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.316223, 33.216072, 45.070717> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.080769, 33.528793, 45.152977>,  <36.939495, 33.716427, 45.202332>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.080769, 33.528793, 45.152977>,  <37.316223, 33.216072, 45.070717>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.080769, 33.528793, 45.152977> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348778, -0.016107, -0.937067,
		-0.729291, -0.623315, 0.282158,
		-0.588633, 0.781806, 0.205652,
		36.904179, 33.763336, 45.214672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.728870, 33.094028, 44.697914>,  <37.316223, 33.216072, 45.070717>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.728870, 33.094028, 44.697914> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.718231, 33.486416, 44.774857>,  <36.711849, 33.721848, 44.821022>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.718231, 33.486416, 44.774857>,  <36.728870, 33.094028, 44.697914>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.718231, 33.486416, 44.774857> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339437, 0.172131, -0.924745,
		-0.940253, -0.089887, 0.328398,
		-0.026595, 0.980964, 0.192357,
		36.710251, 33.780704, 44.832565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.042984, 33.272354, 44.416271>,  <36.728870, 33.094028, 44.697914>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.042984, 33.272354, 44.416271> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.252819, 33.611725, 44.444511>,  <36.378719, 33.815346, 44.461456>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.252819, 33.611725, 44.444511>,  <36.042984, 33.272354, 44.416271>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.252819, 33.611725, 44.444511> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416454, 0.328047, -0.847910,
		-0.742549, 0.415399, 0.525418,
		0.524583, 0.848427, 0.070596,
		36.410194, 33.866253, 44.465691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.560989, 33.847290, 44.210365>,  <36.042984, 33.272354, 44.416271>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.560989, 33.847290, 44.210365> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.918606, 34.010681, 44.136776>,  <36.133175, 34.108715, 44.092621>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.918606, 34.010681, 44.136776>,  <35.560989, 33.847290, 44.210365>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.918606, 34.010681, 44.136776> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293390, 0.223512, -0.929497,
		-0.338557, 0.884980, 0.319671,
		0.894037, 0.408475, -0.183972,
		36.186817, 34.133224, 44.081585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.366943, 34.293140, 43.697693>,  <35.560989, 33.847290, 44.210365>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.366943, 34.293140, 43.697693> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.766842, 34.284592, 43.694832>,  <36.006783, 34.279461, 43.693115>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.766842, 34.284592, 43.694832>,  <35.366943, 34.293140, 43.697693>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.766842, 34.284592, 43.694832> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004095, 0.139825, -0.990168,
		0.022166, 0.989946, 0.139702,
		0.999746, -0.021376, -0.007153,
		36.066765, 34.278179, 43.692684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.728561, 34.977665, 43.522861>,  <35.366943, 34.293140, 43.697693>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.728561, 34.977665, 43.522861> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.018700, 34.712677, 43.448017>,  <36.192783, 34.553684, 43.403111>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.018700, 34.712677, 43.448017>,  <35.728561, 34.977665, 43.522861>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.018700, 34.712677, 43.448017> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018403, 0.253058, -0.967276,
		0.688141, 0.705051, 0.171363,
		0.725344, -0.662468, -0.187114,
		36.236301, 34.513935, 43.391884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.344803, 35.286205, 43.190350>,  <35.728561, 34.977665, 43.522861>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.344803, 35.286205, 43.190350> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.322140, 34.898956, 43.092754>,  <36.308544, 34.666607, 43.034199>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.322140, 34.898956, 43.092754>,  <36.344803, 35.286205, 43.190350>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.322140, 34.898956, 43.092754> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026455, 0.242836, -0.969707,
		0.998043, -0.061393, 0.011853,
		-0.056654, -0.968123, -0.243985,
		36.305145, 34.608521, 43.019558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.465027, 35.325199, 42.509926>,  <36.344803, 35.286205, 43.190350>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.465027, 35.325199, 42.509926> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.453831, 34.925358, 42.510979>,  <36.447113, 34.685452, 42.511612>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.453831, 34.925358, 42.510979>,  <36.465027, 35.325199, 42.509926>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.453831, 34.925358, 42.510979> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087086, -0.005060, -0.996188,
		0.995808, -0.027652, 0.087193,
		-0.027988, -0.999605, 0.002631,
		36.445435, 34.625477, 42.511768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.140980, 35.154552, 42.221706>,  <36.465027, 35.325199, 42.509926>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.140980, 35.154552, 42.221706> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.869942, 34.867062, 42.159348>,  <36.707317, 34.694569, 42.121933>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.869942, 34.867062, 42.159348>,  <37.140980, 35.154552, 42.221706>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.869942, 34.867062, 42.159348> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243774, -0.019507, -0.969636,
		0.693859, -0.695023, 0.188423,
		-0.677595, -0.718723, -0.155893,
		36.666664, 34.651443, 42.112579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.485287, 34.606270, 41.839264>,  <37.140980, 35.154552, 42.221706>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.485287, 34.606270, 41.839264> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.098885, 34.559601, 41.746990>,  <36.867043, 34.531601, 41.691628>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.098885, 34.559601, 41.746990>,  <37.485287, 34.606270, 41.839264>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.098885, 34.559601, 41.746990> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225027, 0.059714, -0.972521,
		0.127240, -0.991374, -0.031430,
		-0.966008, -0.116671, -0.230684,
		36.809082, 34.524601, 41.677784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.531128, 34.178986, 41.300388>,  <37.485287, 34.606270, 41.839264>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.531128, 34.178986, 41.300388> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.164764, 34.336468, 41.269131>,  <36.944946, 34.430958, 41.250378>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.164764, 34.336468, 41.269131>,  <37.531128, 34.178986, 41.300388>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.164764, 34.336468, 41.269131> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157729, 0.173999, -0.972032,
		-0.369101, -0.902616, -0.221466,
		-0.915907, 0.393710, -0.078145,
		36.889992, 34.454582, 41.245686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.210728, 33.850147, 40.774696>,  <37.531128, 34.178986, 41.300388>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.210728, 33.850147, 40.774696> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.005245, 34.192165, 40.803013>,  <36.881958, 34.397377, 40.820004>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.005245, 34.192165, 40.803013>,  <37.210728, 33.850147, 40.774696>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.005245, 34.192165, 40.803013> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121718, 0.154301, -0.980498,
		-0.849290, -0.495069, -0.183339,
		-0.513703, 0.855043, 0.070788,
		36.851135, 34.448677, 40.824249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.724220, 33.851002, 40.287823>,  <37.210728, 33.850147, 40.774696>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.724220, 33.851002, 40.287823> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.703335, 34.241600, 40.371475>,  <36.690804, 34.475960, 40.421665>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.703335, 34.241600, 40.371475>,  <36.724220, 33.851002, 40.287823>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.703335, 34.241600, 40.371475> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024689, 0.210615, -0.977257,
		-0.998331, -0.045865, -0.035106,
		-0.052216, 0.976493, 0.209131,
		36.687672, 34.534546, 40.434216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.112419, 34.187630, 39.943283>,  <36.724220, 33.851002, 40.287823>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.112419, 34.187630, 39.943283> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.345673, 34.499763, 40.033646>,  <36.485626, 34.687042, 40.087864>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.345673, 34.499763, 40.033646>,  <36.112419, 34.187630, 39.943283>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.345673, 34.499763, 40.033646> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082997, 0.333847, -0.938966,
		-0.808125, 0.528794, 0.259443,
		0.583134, 0.780335, 0.225902,
		36.520611, 34.733864, 40.101418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.764256, 34.853909, 39.764866>,  <36.112419, 34.187630, 39.943283>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.764256, 34.853909, 39.764866> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.153202, 34.945850, 39.781231>,  <36.386570, 35.001015, 39.791050>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.153202, 34.945850, 39.781231>,  <35.764256, 34.853909, 39.764866>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.153202, 34.945850, 39.781231> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058842, 0.410866, -0.909795,
		-0.225926, 0.882246, 0.413037,
		0.972366, 0.229850, 0.040912,
		36.444912, 35.014805, 39.793503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.846973, 35.493721, 39.400372>,  <35.764256, 34.853909, 39.764866>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.846973, 35.493721, 39.400372> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.222534, 35.357098, 39.417320>,  <36.447872, 35.275124, 39.427490>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.222534, 35.357098, 39.417320>,  <35.846973, 35.493721, 39.400372>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.222534, 35.357098, 39.417320> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196754, 0.431637, -0.880328,
		0.282395, 0.834880, 0.472470,
		0.938904, -0.341561, 0.042374,
		36.504204, 35.254631, 39.430031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.303051, 35.993046, 39.149662>,  <35.846973, 35.493721, 39.400372>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.303051, 35.993046, 39.149662> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.532654, 35.667477, 39.113770>,  <36.670414, 35.472137, 39.092236>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.532654, 35.667477, 39.113770>,  <36.303051, 35.993046, 39.149662>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.532654, 35.667477, 39.113770> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169998, 0.225641, -0.959264,
		0.801010, 0.535370, 0.267885,
		0.574007, -0.813919, -0.089729,
		36.704857, 35.423302, 39.086849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.864468, 36.195629, 38.825020>,  <36.303051, 35.993046, 39.149662>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.864468, 36.195629, 38.825020> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.907280, 35.806976, 38.740669>,  <36.932968, 35.573784, 38.690060>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.907280, 35.806976, 38.740669>,  <36.864468, 36.195629, 38.825020>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.907280, 35.806976, 38.740669> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425393, 0.236453, -0.873573,
		0.898657, 0.003797, 0.438635,
		0.107033, -0.971635, -0.210875,
		36.939388, 35.515484, 38.677406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.570683, 36.138416, 38.608868>,  <36.864468, 36.195629, 38.825020>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.570683, 36.138416, 38.608868> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.352310, 35.826443, 38.486454>,  <37.221287, 35.639259, 38.413006>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.352310, 35.826443, 38.486454>,  <37.570683, 36.138416, 38.608868>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.352310, 35.826443, 38.486454> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324318, 0.140075, -0.935520,
		0.772511, -0.609986, 0.176475,
		-0.545934, -0.779934, -0.306039,
		37.188530, 35.592464, 38.394642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.015312, 35.771091, 38.234413>,  <37.570683, 36.138416, 38.608868>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.015312, 35.771091, 38.234413> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.642448, 35.678898, 38.122734>,  <37.418732, 35.623581, 38.055725>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.642448, 35.678898, 38.122734>,  <38.015312, 35.771091, 38.234413>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.642448, 35.678898, 38.122734> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235411, 0.200037, -0.951087,
		0.275062, -0.952293, -0.132208,
		-0.932160, -0.230485, -0.279203,
		37.362801, 35.609753, 38.038975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.104187, 36.212727, 37.690914>,  <38.015312, 35.771091, 38.234413>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.104187, 36.212727, 37.690914> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.010330, 36.601173, 37.673622>,  <37.954018, 36.834244, 37.663246>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.010330, 36.601173, 37.673622>,  <38.104187, 36.212727, 37.690914>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.010330, 36.601173, 37.673622> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423738, 0.142206, 0.894552,
		0.874865, 0.191581, -0.444868,
		-0.234642, 0.971120, -0.043231,
		37.939938, 36.892509, 37.660652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.711060, 36.580070, 37.946323>,  <38.104187, 36.212727, 37.690914>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.711060, 36.580070, 37.946323> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.399525, 36.827084, 37.990250>,  <38.212605, 36.975292, 38.016605>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.399525, 36.827084, 37.990250>,  <38.711060, 36.580070, 37.946323>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.399525, 36.827084, 37.990250> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365412, 0.304429, 0.879657,
		0.509787, 0.725240, -0.462756,
		-0.778839, 0.617535, 0.109818,
		38.165874, 37.012344, 38.023193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.924557, 37.031132, 38.438290>,  <38.711060, 36.580070, 37.946323>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.924557, 37.031132, 38.438290> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.536667, 37.128757, 38.435215>,  <38.303932, 37.187332, 38.433369>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.536667, 37.128757, 38.435215>,  <38.924557, 37.031132, 38.438290>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.536667, 37.128757, 38.435215> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111283, 0.469749, 0.875758,
		0.217351, 0.848393, -0.482689,
		-0.969729, 0.244062, -0.007688,
		38.245747, 37.201977, 38.432907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.830929, 37.725174, 38.605656>,  <38.924557, 37.031132, 38.438290>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.830929, 37.725174, 38.605656> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.499393, 37.530350, 38.715782>,  <38.300472, 37.413456, 38.781860>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.499393, 37.530350, 38.715782>,  <38.830929, 37.725174, 38.605656>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.499393, 37.530350, 38.715782> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044793, 0.432742, 0.900404,
		-0.557696, 0.758620, -0.336854,
		-0.828836, -0.487063, 0.275319,
		38.250744, 37.384232, 38.798378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.627327, 38.186134, 39.162472>,  <38.830929, 37.725174, 38.605656>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.627327, 38.186134, 39.162472> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.429676, 37.843845, 39.223885>,  <38.311085, 37.638474, 39.260731>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.429676, 37.843845, 39.223885>,  <38.627327, 38.186134, 39.162472>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.429676, 37.843845, 39.223885> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001112, 0.175974, 0.984394,
		-0.869386, 0.486591, -0.086003,
		-0.494132, -0.855723, 0.153531,
		38.281437, 37.587128, 39.269943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.158054, 38.257622, 39.772484>,  <38.627327, 38.186134, 39.162472>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.158054, 38.257622, 39.772484> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.109154, 37.862770, 39.731255>,  <38.079811, 37.625858, 39.706516>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.109154, 37.862770, 39.731255>,  <38.158054, 38.257622, 39.772484>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.109154, 37.862770, 39.731255> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073529, -0.112576, 0.990919,
		-0.989771, 0.113564, 0.086346,
		-0.122254, -0.987132, -0.103074,
		38.072479, 37.566631, 39.700333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.559097, 37.966732, 40.219238>,  <38.158054, 38.257622, 39.772484>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.559097, 37.966732, 40.219238> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.826290, 37.679035, 40.142826>,  <37.986607, 37.506416, 40.096977>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.826290, 37.679035, 40.142826>,  <37.559097, 37.966732, 40.219238>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.826290, 37.679035, 40.142826> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115112, -0.153752, 0.981382,
		-0.735224, -0.677532, -0.019910,
		0.667979, -0.719243, -0.191034,
		38.026684, 37.463261, 40.085514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.311890, 37.392860, 40.496197>,  <37.559097, 37.966732, 40.219238>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.311890, 37.392860, 40.496197> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.705799, 37.327885, 40.471405>,  <37.942142, 37.288898, 40.456528>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.705799, 37.327885, 40.471405>,  <37.311890, 37.392860, 40.496197>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.705799, 37.327885, 40.471405> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022912, -0.232157, 0.972409,
		-0.172339, -0.959020, -0.224899,
		0.984771, -0.162431, -0.061982,
		38.001228, 37.279152, 40.452808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.407516, 36.704056, 40.804916>,  <37.311890, 37.392860, 40.496197>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.407516, 36.704056, 40.804916> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.757866, 36.893627, 40.841217>,  <37.968075, 37.007370, 40.862995>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.757866, 36.893627, 40.841217>,  <37.407516, 36.704056, 40.804916>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.757866, 36.893627, 40.841217> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010531, -0.206791, 0.978329,
		0.482424, -0.855937, -0.186113,
		0.875874, 0.473929, 0.090747,
		38.020630, 37.035805, 40.868443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.777805, 36.234676, 41.238014>,  <37.407516, 36.704056, 40.804916>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.777805, 36.234676, 41.238014> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.001499, 36.562584, 41.287392>,  <38.135715, 36.759327, 41.317017>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.001499, 36.562584, 41.287392>,  <37.777805, 36.234676, 41.238014>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.001499, 36.562584, 41.287392> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187548, -0.270153, 0.944375,
		0.807514, -0.504979, -0.304825,
		0.559239, 0.819765, 0.123444,
		38.169270, 36.808514, 41.324425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.405407, 36.059303, 41.507866>,  <37.777805, 36.234676, 41.238014>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.405407, 36.059303, 41.507866> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.349037, 36.440773, 41.614182>,  <38.315216, 36.669655, 41.677971>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.349037, 36.440773, 41.614182>,  <38.405407, 36.059303, 41.507866>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.349037, 36.440773, 41.614182> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034134, -0.263625, 0.964021,
		0.989432, 0.144922, 0.004598,
		-0.140920, 0.953677, 0.265786,
		38.306763, 36.726875, 41.693916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.024342, 36.141781, 41.911461>,  <38.405407, 36.059303, 41.507866>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.024342, 36.141781, 41.911461> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.762650, 36.425777, 42.015690>,  <38.605637, 36.596176, 42.078228>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.762650, 36.425777, 42.015690>,  <39.024342, 36.141781, 41.911461>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.762650, 36.425777, 42.015690> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045314, -0.380721, 0.923579,
		0.754939, 0.592423, 0.281251,
		-0.654227, 0.709990, 0.260576,
		38.566380, 36.638775, 42.093864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.254475, 36.396900, 42.442204>,  <39.024342, 36.141781, 41.911461>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.254475, 36.396900, 42.442204> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.874874, 36.513378, 42.490536>,  <38.647114, 36.583263, 42.519535>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.874874, 36.513378, 42.490536>,  <39.254475, 36.396900, 42.442204>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.874874, 36.513378, 42.490536> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035373, -0.282499, 0.958615,
		0.313276, 0.914003, 0.257792,
		-0.949003, 0.291192, 0.120831,
		38.590172, 36.600735, 42.526787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.209843, 36.506851, 43.102921>,  <39.254475, 36.396900, 42.442204>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.209843, 36.506851, 43.102921> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.822140, 36.546455, 43.012817>,  <38.589520, 36.570217, 42.958755>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.822140, 36.546455, 43.012817>,  <39.209843, 36.506851, 43.102921>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.822140, 36.546455, 43.012817> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238397, -0.151236, 0.959320,
		0.060919, 0.983526, 0.170191,
		-0.969255, 0.099014, -0.225257,
		38.531364, 36.576160, 42.945240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.987946, 37.143772, 43.479519>,  <39.209843, 36.506851, 43.102921>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.987946, 37.143772, 43.479519> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.688057, 36.886093, 43.418961>,  <38.508125, 36.731483, 43.382626>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.688057, 36.886093, 43.418961>,  <38.987946, 37.143772, 43.479519>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.688057, 36.886093, 43.418961> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002716, -0.231771, 0.972767,
		-0.661747, 0.728894, 0.175513,
		-0.749723, -0.644202, -0.151394,
		38.463139, 36.692833, 43.373543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.438431, 37.317265, 43.992199>,  <38.987946, 37.143772, 43.479519>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.438431, 37.317265, 43.992199> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.411694, 36.937992, 43.867954>,  <38.395653, 36.710426, 43.793407>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.411694, 36.937992, 43.867954>,  <38.438431, 37.317265, 43.992199>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.411694, 36.937992, 43.867954> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003424, -0.311085, 0.950376,
		-0.997757, 0.064590, 0.017548,
		-0.066844, -0.948184, -0.310609,
		38.391640, 36.653538, 43.774773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.891777, 37.115566, 44.461784>,  <38.438431, 37.317265, 43.992199>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.891777, 37.115566, 44.461784> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.086403, 36.791859, 44.330124>,  <38.203178, 36.597633, 44.251125>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.086403, 36.791859, 44.330124>,  <37.891777, 37.115566, 44.461784>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.086403, 36.791859, 44.330124> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002009, -0.377797, 0.925886,
		-0.873641, -0.449844, -0.185449,
		0.486566, -0.809265, -0.329155,
		38.232372, 36.549080, 44.231377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.544262, 36.625328, 44.737209>,  <37.891777, 37.115566, 44.461784>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.544262, 36.625328, 44.737209> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.878319, 36.426086, 44.643887>,  <38.078754, 36.306541, 44.587894>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.878319, 36.426086, 44.643887>,  <37.544262, 36.625328, 44.737209>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.878319, 36.426086, 44.643887> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001441, -0.426143, 0.904655,
		-0.550032, -0.755179, -0.356607,
		0.835142, -0.498103, -0.233304,
		38.128860, 36.276657, 44.573895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<37.465832, 35.807011, 45.030800> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.854679, 35.869957, 44.961269>,  <38.087990, 35.907722, 44.919552>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.854679, 35.869957, 44.961269>,  <37.465832, 35.807011, 45.030800>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.854679, 35.869957, 44.961269> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233391, -0.578137, 0.781848,
		0.022539, -0.800621, -0.598747,
		0.972122, 0.157364, -0.173827,
		38.146317, 35.917168, 44.909122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.730743, 35.174446, 45.121181>,  <37.465832, 35.807011, 45.030800>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.730743, 35.174446, 45.121181> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.036713, 35.425934, 45.177181>,  <38.220295, 35.576828, 45.210781>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.036713, 35.425934, 45.177181>,  <37.730743, 35.174446, 45.121181>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.036713, 35.425934, 45.177181> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352781, -0.590781, 0.725620,
		0.538923, -0.505654, -0.673703,
		0.764923, 0.628723, 0.140000,
		38.266190, 35.614552, 45.219181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.267189, 34.828640, 45.209641>,  <37.730743, 35.174446, 45.121181>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.267189, 34.828640, 45.209641> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.418835, 35.150280, 45.392807>,  <38.509823, 35.343266, 45.502708>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.418835, 35.150280, 45.392807>,  <38.267189, 34.828640, 45.209641>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.418835, 35.150280, 45.392807> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332344, -0.580161, 0.743613,
		0.863607, -0.129731, -0.487189,
		0.379118, 0.804104, 0.457915,
		38.532570, 35.391510, 45.530182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.787296, 34.518372, 45.553532>,  <38.267189, 34.828640, 45.209641>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.787296, 34.518372, 45.553532> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.777267, 34.879848, 45.724514>,  <38.771252, 35.096733, 45.827103>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.777267, 34.879848, 45.724514>,  <38.787296, 34.518372, 45.553532>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.777267, 34.879848, 45.724514> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144233, -0.419845, 0.896062,
		0.989226, 0.084120, -0.119815,
		-0.025073, 0.903689, 0.427454,
		38.769745, 35.150955, 45.852749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.476658, 34.577900, 45.977676>,  <38.787296, 34.518372, 45.553532>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.476658, 34.577900, 45.977676> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.218204, 34.848133, 46.119724>,  <39.063133, 35.010273, 46.204952>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.218204, 34.848133, 46.119724>,  <39.476658, 34.577900, 45.977676>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.218204, 34.848133, 46.119724> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083485, -0.399933, 0.912734,
		0.758648, 0.619392, 0.202007,
		-0.646129, 0.675580, 0.355118,
		39.024364, 35.050808, 46.226261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.786606, 34.788486, 46.468658>,  <39.476658, 34.577900, 45.977676>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.786606, 34.788486, 46.468658> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.414650, 34.908794, 46.553364>,  <39.191475, 34.980980, 46.604187>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.414650, 34.908794, 46.553364>,  <39.786606, 34.788486, 46.468658>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.414650, 34.908794, 46.553364> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093142, -0.364394, 0.926575,
		0.355853, 0.881336, 0.310831,
		-0.929889, 0.300773, 0.211760,
		39.135685, 34.999027, 46.616890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.898518, 35.233280, 46.940331>,  <39.786606, 34.788486, 46.468658>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.898518, 35.233280, 46.940331> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.517757, 35.120461, 46.988213>,  <39.289299, 35.052769, 47.016941>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.517757, 35.120461, 46.988213>,  <39.898518, 35.233280, 46.940331>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.517757, 35.120461, 46.988213> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219833, -0.356539, 0.908049,
		-0.213432, 0.890691, 0.401394,
		-0.951904, -0.282046, 0.119706,
		39.232185, 35.035847, 47.024124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.670208, 35.397366, 47.635834>,  <39.898518, 35.233280, 46.940331>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.670208, 35.397366, 47.635834> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.388947, 35.135109, 47.525772>,  <39.220188, 34.977757, 47.459736>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.388947, 35.135109, 47.525772>,  <39.670208, 35.397366, 47.635834>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.388947, 35.135109, 47.525772> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002792, -0.389519, 0.921014,
		-0.711029, 0.646849, 0.275724,
		-0.703157, -0.655638, -0.275154,
		39.178001, 34.938419, 47.443226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.304184, 35.301109, 48.263660>,  <39.670208, 35.397366, 47.635834>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.304184, 35.301109, 48.263660> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.193630, 34.982105, 48.049152>,  <39.127296, 34.790703, 47.920448>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.193630, 34.982105, 48.049152>,  <39.304184, 35.301109, 48.263660>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.193630, 34.982105, 48.049152> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043532, -0.567826, 0.821997,
		-0.960060, 0.203843, 0.191656,
		-0.276386, -0.797510, -0.536273,
		39.110714, 34.742851, 47.888271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.686695, 34.971161, 48.661057>,  <39.304184, 35.301109, 48.263660>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.686695, 34.971161, 48.661057> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.849144, 34.708584, 48.406765>,  <38.946613, 34.551037, 48.254189>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.849144, 34.708584, 48.406765>,  <38.686695, 34.971161, 48.661057>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.849144, 34.708584, 48.406765> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044378, -0.680695, 0.731221,
		-0.912739, -0.325180, -0.247316,
		0.406125, -0.656439, -0.635728,
		38.970982, 34.511654, 48.216045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.419712, 34.382812, 48.839699>,  <38.686695, 34.971161, 48.661057>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.419712, 34.382812, 48.839699> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.730370, 34.252171, 48.624233>,  <38.916763, 34.173786, 48.494953>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.730370, 34.252171, 48.624233>,  <38.419712, 34.382812, 48.839699>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.730370, 34.252171, 48.624233> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182502, -0.701771, 0.688629,
		-0.602927, -0.633125, -0.485419,
		0.776642, -0.326603, -0.538664,
		38.963364, 34.154190, 48.462635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.512302, 33.645660, 48.953777>,  <38.419712, 34.382812, 48.839699>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.512302, 33.645660, 48.953777> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.881134, 33.764328, 48.854378>,  <39.102432, 33.835529, 48.794739>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.881134, 33.764328, 48.854378>,  <38.512302, 33.645660, 48.953777>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.881134, 33.764328, 48.854378> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379408, -0.566499, 0.731525,
		0.076245, -0.768809, -0.634917,
		0.922083, 0.296668, -0.248499,
		39.157761, 33.853329, 48.779827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.915955, 33.014587, 48.827595>,  <38.512302, 33.645660, 48.953777>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.915955, 33.014587, 48.827595> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.177429, 33.307079, 48.905575>,  <39.334312, 33.482574, 48.952362>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.177429, 33.307079, 48.905575>,  <38.915955, 33.014587, 48.827595>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.177429, 33.307079, 48.905575> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355295, -0.523993, 0.774078,
		0.668179, -0.436737, -0.602327,
		0.653684, 0.731226, 0.194950,
		39.373535, 33.526447, 48.964062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.475567, 32.769505, 49.131966>,  <38.915955, 33.014587, 48.827595>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.475567, 32.769505, 49.131966> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.580105, 33.130402, 49.269165>,  <39.642826, 33.346939, 49.351486>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.580105, 33.130402, 49.269165>,  <39.475567, 32.769505, 49.131966>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.580105, 33.130402, 49.269165> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560490, -0.431155, 0.707076,
		0.785844, 0.007458, -0.618380,
		0.261344, 0.902247, 0.343001,
		39.658508, 33.401077, 49.372066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.193241, 32.729107, 49.282192>,  <39.475567, 32.769505, 49.131966>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.193241, 32.729107, 49.282192> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.066826, 33.051720, 49.482044>,  <39.990974, 33.245285, 49.601955>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.066826, 33.051720, 49.482044>,  <40.193241, 32.729107, 49.282192>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.066826, 33.051720, 49.482044> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.706878, -0.151076, 0.691014,
		0.632804, 0.571566, -0.522371,
		-0.316043, 0.806528, 0.499629,
		39.972012, 33.293678, 49.631931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.808460, 33.089252, 49.442127>,  <40.193241, 32.729107, 49.282192>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.808460, 33.089252, 49.442127> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.528809, 33.189899, 49.709831>,  <40.361019, 33.250286, 49.870453>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.528809, 33.189899, 49.709831>,  <40.808460, 33.089252, 49.442127>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.528809, 33.189899, 49.709831> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607404, -0.284801, 0.741585,
		0.377200, 0.924975, 0.046280,
		-0.699128, 0.251616, 0.669261,
		40.319069, 33.265385, 49.910610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.192520, 33.220406, 49.923065>,  <40.808460, 33.089252, 49.442127>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.192520, 33.220406, 49.923065> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.839993, 33.223038, 50.112053>,  <40.628475, 33.224617, 50.225445>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.839993, 33.223038, 50.112053>,  <41.192520, 33.220406, 49.923065>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.839993, 33.223038, 50.112053> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432156, -0.393122, 0.811601,
		0.191082, 0.919463, 0.343622,
		-0.881322, 0.006583, 0.472470,
		40.575596, 33.225014, 50.253796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.288620, 33.623741, 50.475231>,  <41.192520, 33.220406, 49.923065>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.288620, 33.623741, 50.475231> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.990982, 33.371197, 50.562592>,  <40.812397, 33.219669, 50.615009>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.990982, 33.371197, 50.562592>,  <41.288620, 33.623741, 50.475231>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.990982, 33.371197, 50.562592> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493369, -0.298900, 0.816852,
		-0.450451, 0.715569, 0.533905,
		-0.744098, -0.631363, 0.218400,
		40.767754, 33.181789, 50.628113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.200203, 33.724983, 51.149509>,  <41.288620, 33.623741, 50.475231>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.200203, 33.724983, 51.149509> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.001225, 33.382957, 51.090961>,  <40.881840, 33.177742, 51.055832>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.001225, 33.382957, 51.090961>,  <41.200203, 33.724983, 51.149509>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.001225, 33.382957, 51.090961> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320305, -0.337836, 0.885026,
		-0.806199, 0.393367, 0.441934,
		-0.497442, -0.855061, -0.146366,
		40.851994, 33.126438, 51.047050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.832802, 33.555988, 51.741570>,  <41.200203, 33.724983, 51.149509>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.832802, 33.555988, 51.741570> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.860481, 33.204128, 51.553349>,  <40.877087, 32.993011, 51.440414>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.860481, 33.204128, 51.553349>,  <40.832802, 33.555988, 51.741570>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.860481, 33.204128, 51.553349> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151884, -0.456896, 0.876458,
		-0.985973, -0.132116, 0.101991,
		0.069194, -0.879655, -0.470553,
		40.881241, 32.940231, 51.412182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.564896, 33.114151, 52.214378>,  <40.832802, 33.555988, 51.741570>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.564896, 33.114151, 52.214378> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.754383, 32.860718, 51.969704>,  <40.868076, 32.708656, 51.822899>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.754383, 32.860718, 51.969704>,  <40.564896, 33.114151, 52.214378>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.754383, 32.860718, 51.969704> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253540, -0.567041, 0.783698,
		-0.843391, -0.526339, -0.107978,
		0.473718, -0.633587, -0.611685,
		40.896500, 32.670643, 51.786198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.339870, 32.412781, 52.406796>,  <40.564896, 33.114151, 52.214378>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.339870, 32.412781, 52.406796> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.697495, 32.433640, 52.228832>,  <40.912067, 32.446156, 52.122055>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.697495, 32.433640, 52.228832>,  <40.339870, 32.412781, 52.406796>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.697495, 32.433640, 52.228832> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382905, -0.604407, 0.698624,
		-0.232475, -0.794967, -0.560342,
		0.894058, 0.052145, -0.444906,
		40.965714, 32.449284, 52.095360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.685104, 31.739885, 52.490162>,  <40.339870, 32.412781, 52.406796>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.685104, 31.739885, 52.490162> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.976059, 32.007645, 52.429752>,  <41.150631, 32.168301, 52.393505>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.976059, 32.007645, 52.429752>,  <40.685104, 31.739885, 52.490162>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.976059, 32.007645, 52.429752> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598978, -0.511944, 0.615743,
		0.334861, -0.538346, -0.773338,
		0.727389, 0.669400, -0.151027,
		41.194275, 32.208466, 52.384445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.004284, 31.529789, 52.800636>,  <40.685104, 31.739885, 52.490162>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.004284, 31.529789, 52.800636> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.896889, 31.167633, 52.932201>,  <39.832451, 30.950340, 53.011139>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.896889, 31.167633, 52.932201>,  <40.004284, 31.529789, 52.800636>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.896889, 31.167633, 52.932201> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379554, -0.214395, -0.899985,
		0.885355, -0.366476, -0.286082,
		-0.268489, -0.905390, 0.328913,
		39.816341, 30.896017, 53.030876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.310547, 30.949772, 52.412472>,  <40.004284, 31.529789, 52.800636>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.310547, 30.949772, 52.412472> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.950836, 30.828886, 52.538940>,  <39.735008, 30.756355, 52.614822>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.950836, 30.828886, 52.538940>,  <40.310547, 30.949772, 52.412472>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.950836, 30.828886, 52.538940> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310520, -0.067933, -0.948136,
		0.308019, -0.950816, -0.032753,
		-0.899278, -0.302215, 0.316172,
		39.681053, 30.738222, 52.633793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.179173, 30.360027, 51.979900>,  <40.310547, 30.949772, 52.412472>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.179173, 30.360027, 51.979900> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.834999, 30.503551, 52.124622>,  <39.628494, 30.589666, 52.211456>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.834999, 30.503551, 52.124622>,  <40.179173, 30.360027, 51.979900>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.834999, 30.503551, 52.124622> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408776, -0.062135, -0.910517,
		-0.304223, -0.931340, 0.200137,
		-0.860436, 0.358812, 0.361806,
		39.576870, 30.611195, 52.233166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.702911, 29.841242, 51.717484>,  <40.179173, 30.360027, 51.979900>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.702911, 29.841242, 51.717484> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.526760, 30.186928, 51.814812>,  <39.421070, 30.394339, 51.873211>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.526760, 30.186928, 51.814812>,  <39.702911, 29.841242, 51.717484>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.526760, 30.186928, 51.814812> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472738, 0.007206, -0.881174,
		-0.763276, -0.503073, 0.405373,
		-0.440373, 0.864214, 0.243322,
		39.394650, 30.446192, 51.887810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.998558, 29.867174, 51.493347>,  <39.702911, 29.841242, 51.717484>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.998558, 29.867174, 51.493347> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.035587, 30.263096, 51.536644>,  <39.057804, 30.500648, 51.562622>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.035587, 30.263096, 51.536644>,  <38.998558, 29.867174, 51.493347>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.035587, 30.263096, 51.536644> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541443, 0.141276, -0.828783,
		-0.835625, 0.018118, 0.549001,
		0.092576, 0.989804, 0.108244,
		39.063358, 30.560038, 51.569118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.320892, 30.136642, 51.302608>,  <38.998558, 29.867174, 51.493347>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.320892, 30.136642, 51.302608> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.570011, 30.445395, 51.251488>,  <38.719482, 30.630646, 51.220814>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.570011, 30.445395, 51.251488>,  <38.320892, 30.136642, 51.302608>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.570011, 30.445395, 51.251488> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511637, 0.278220, -0.812909,
		-0.591909, 0.571662, 0.568195,
		0.622793, 0.771878, -0.127803,
		38.756847, 30.676958, 51.213146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.899971, 30.642879, 50.961479>,  <38.320892, 30.136642, 51.302608>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.899971, 30.642879, 50.961479> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.270000, 30.788080, 50.916813>,  <38.492020, 30.875200, 50.890011>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.270000, 30.788080, 50.916813>,  <37.899971, 30.642879, 50.961479>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.270000, 30.788080, 50.916813> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226514, 0.291336, -0.929416,
		-0.304845, 0.885073, 0.351732,
		0.925074, 0.363000, -0.111669,
		38.547523, 30.896980, 50.883312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.809116, 31.401340, 50.866116>,  <37.899971, 30.642879, 50.961479>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.809116, 31.401340, 50.866116> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.137806, 31.245497, 50.699753>,  <38.335018, 31.151991, 50.599934>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.137806, 31.245497, 50.699753>,  <37.809116, 31.401340, 50.866116>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.137806, 31.245497, 50.699753> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230122, 0.440816, -0.867597,
		0.521364, 0.808631, 0.272569,
		0.821719, -0.389610, -0.415910,
		38.384323, 31.128614, 50.574982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.829723, 31.910650, 50.436539>,  <37.809116, 31.401340, 50.866116>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.829723, 31.910650, 50.436539> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.103653, 31.648203, 50.309719>,  <38.268013, 31.490734, 50.233627>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.103653, 31.648203, 50.309719>,  <37.829723, 31.910650, 50.436539>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.103653, 31.648203, 50.309719> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009693, 0.443248, -0.896347,
		0.728641, 0.610770, 0.309908,
		0.684828, -0.656119, -0.317048,
		38.309101, 31.451366, 50.214603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.419212, 32.318142, 50.201420>,  <37.829723, 31.910650, 50.436539>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.419212, 32.318142, 50.201420> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.423996, 31.953854, 50.036282>,  <38.426865, 31.735281, 49.937199>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.423996, 31.953854, 50.036282>,  <38.419212, 32.318142, 50.201420>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.423996, 31.953854, 50.036282> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026565, 0.413021, -0.910334,
		0.999576, -0.000083, 0.029131,
		0.011956, -0.910722, -0.412848,
		38.427582, 31.680637, 49.912426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.863857, 32.352261, 49.633530>,  <38.419212, 32.318142, 50.201420>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.863857, 32.352261, 49.633530> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.655182, 32.019718, 49.556915>,  <38.529976, 31.820192, 49.510948>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.655182, 32.019718, 49.556915>,  <38.863857, 32.352261, 49.633530>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.655182, 32.019718, 49.556915> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168687, 0.320594, -0.932075,
		0.836290, -0.453948, -0.307490,
		-0.521693, -0.831355, -0.191535,
		38.498672, 31.770311, 49.499454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.145676, 32.156330, 48.990295>,  <38.863857, 32.352261, 49.633530>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.145676, 32.156330, 48.990295> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.784424, 31.988016, 49.024448>,  <38.567673, 31.887028, 49.044941>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.784424, 31.988016, 49.024448>,  <39.145676, 32.156330, 48.990295>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.784424, 31.988016, 49.024448> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238381, 0.325995, -0.914823,
		0.357120, -0.846556, -0.394725,
		-0.903128, -0.420797, 0.085383,
		38.513485, 31.861780, 49.050064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.063549, 31.985329, 48.376633>,  <39.145676, 32.156330, 48.990295>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.063549, 31.985329, 48.376633> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.689743, 31.956791, 48.516109>,  <38.465458, 31.939669, 48.599796>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.689743, 31.956791, 48.516109>,  <39.063549, 31.985329, 48.376633>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.689743, 31.956791, 48.516109> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350023, 0.361735, -0.864079,
		-0.064488, -0.929547, -0.363019,
		-0.934518, -0.071342, 0.348691,
		38.409386, 31.935389, 48.620716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.684265, 31.881685, 47.774284>,  <39.063549, 31.985329, 48.376633>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.684265, 31.881685, 47.774284> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.411617, 32.008526, 48.038055>,  <38.248028, 32.084629, 48.196320>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.411617, 32.008526, 48.038055>,  <38.684265, 31.881685, 47.774284>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.411617, 32.008526, 48.038055> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500053, 0.456049, -0.736184,
		-0.534176, -0.831544, -0.152283,
		-0.681618, 0.317102, 0.659427,
		38.207130, 32.103657, 48.235882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.055244, 31.746317, 47.530281>,  <38.684265, 31.881685, 47.774284>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.055244, 31.746317, 47.530281> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.974922, 32.031582, 47.798931>,  <37.926727, 32.202740, 47.960121>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.974922, 32.031582, 47.798931>,  <38.055244, 31.746317, 47.530281>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.974922, 32.031582, 47.798931> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556941, 0.480901, -0.677164,
		-0.805911, -0.510033, 0.300620,
		-0.200807, 0.713162, 0.671622,
		37.914680, 32.245529, 48.000420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.358688, 31.847240, 47.492874>,  <38.055244, 31.746317, 47.530281>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.358688, 31.847240, 47.492874> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.479630, 32.184986, 47.669796>,  <37.552197, 32.387634, 47.775948>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.479630, 32.184986, 47.669796>,  <37.358688, 31.847240, 47.492874>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.479630, 32.184986, 47.669796> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493036, 0.535661, -0.685553,
		-0.815779, -0.010788, 0.578263,
		0.302357, 0.844364, 0.442300,
		37.570335, 32.438293, 47.802486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.801311, 32.237411, 47.539265>,  <37.358688, 31.847240, 47.492874>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.801311, 32.237411, 47.539265> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.113895, 32.485329, 47.568050>,  <37.301445, 32.634079, 47.585323>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.113895, 32.485329, 47.568050>,  <36.801311, 32.237411, 47.539265>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.113895, 32.485329, 47.568050> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509038, 0.699971, -0.500920,
		-0.360840, 0.354816, 0.862497,
		0.781457, 0.619796, 0.071963,
		37.348331, 32.671268, 47.589638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.570671, 32.905125, 47.715618>,  <36.801311, 32.237411, 47.539265>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.570671, 32.905125, 47.715618> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.932873, 32.964836, 47.556736>,  <37.150196, 33.000664, 47.461407>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.932873, 32.964836, 47.556736>,  <36.570671, 32.905125, 47.715618>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.932873, 32.964836, 47.556736> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329539, 0.837106, -0.436644,
		0.267320, 0.526278, 0.807200,
		0.905508, 0.149280, -0.397204,
		37.204525, 33.009621, 47.437576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.514767, 33.630367, 47.659500>,  <36.570671, 32.905125, 47.715618>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.514767, 33.630367, 47.659500> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.811440, 33.504482, 47.422565>,  <36.989445, 33.428951, 47.280407>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.811440, 33.504482, 47.422565>,  <36.514767, 33.630367, 47.659500>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.811440, 33.504482, 47.422565> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420391, 0.470019, -0.776114,
		0.522659, 0.824645, 0.216305,
		0.741686, -0.314711, -0.592333,
		37.033947, 33.410069, 47.244865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.865376, 34.175858, 47.414967>,  <36.514767, 33.630367, 47.659500>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.865376, 34.175858, 47.414967> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.931030, 33.874985, 47.159691>,  <36.970425, 33.694462, 47.006527>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.931030, 33.874985, 47.159691>,  <36.865376, 34.175858, 47.414967>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.931030, 33.874985, 47.159691> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366646, 0.554093, -0.747363,
		0.915767, 0.356659, -0.184836,
		0.164137, -0.752180, -0.638188,
		36.980270, 33.649330, 46.968235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.103115, 34.494019, 46.783314>,  <36.865376, 34.175858, 47.414967>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.103115, 34.494019, 46.783314> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.009743, 34.122917, 46.666843>,  <36.953720, 33.900257, 46.596962>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.009743, 34.122917, 46.666843>,  <37.103115, 34.494019, 46.783314>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.009743, 34.122917, 46.666843> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324060, 0.356550, -0.876274,
		0.916786, -0.110189, -0.383877,
		-0.233427, -0.927755, -0.291172,
		36.939713, 33.844589, 46.579491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<41.738647, 40.240612, 41.120510> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.385414, 40.053528, 41.105511>,  <41.173473, 39.941277, 41.096512>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.385414, 40.053528, 41.105511>,  <41.738647, 40.240612, 41.120510>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.385414, 40.053528, 41.105511> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465827, -0.864329, -0.189581,
		0.056254, -0.184886, 0.981148,
		-0.883086, -0.467710, -0.037503,
		41.120487, 39.913216, 41.094261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.781631, 39.594700, 41.414242>,  <41.738647, 40.240612, 41.120510>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.781631, 39.594700, 41.414242> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.440693, 39.538391, 41.212772>,  <41.236130, 39.504608, 41.091892>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.440693, 39.538391, 41.212772>,  <41.781631, 39.594700, 41.414242>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.440693, 39.538391, 41.212772> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318166, -0.903934, -0.285785,
		-0.415056, -0.403840, 0.815256,
		-0.852349, -0.140770, -0.503672,
		41.184990, 39.496159, 41.061672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.563492, 38.907257, 41.576797>,  <41.781631, 39.594700, 41.414242>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.563492, 38.907257, 41.576797> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.396828, 39.001633, 41.225632>,  <41.296829, 39.058258, 41.014935>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.396828, 39.001633, 41.225632>,  <41.563492, 38.907257, 41.576797>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.396828, 39.001633, 41.225632> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243599, -0.901435, -0.357875,
		-0.875817, -0.362970, 0.318117,
		-0.416659, 0.235940, -0.877911,
		41.271832, 39.072414, 40.962257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.215729, 38.265648, 41.325821>,  <41.563492, 38.907257, 41.576797>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.215729, 38.265648, 41.325821> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.232754, 38.507050, 41.007332>,  <41.242970, 38.651890, 40.816238>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.232754, 38.507050, 41.007332>,  <41.215729, 38.265648, 41.325821>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.232754, 38.507050, 41.007332> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194271, -0.786737, -0.585922,
		-0.980024, -0.129745, -0.150730,
		0.042564, 0.603500, -0.796226,
		41.245522, 38.688099, 40.768463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.827831, 37.975399, 40.830906>,  <41.215729, 38.265648, 41.325821>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.827831, 37.975399, 40.830906> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.099545, 38.218903, 40.666962>,  <41.262573, 38.365005, 40.568596>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.099545, 38.218903, 40.666962>,  <40.827831, 37.975399, 40.830906>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.099545, 38.218903, 40.666962> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314851, -0.746226, -0.586528,
		-0.662905, 0.269372, -0.698567,
		0.679283, 0.608757, -0.409865,
		41.303329, 38.401531, 40.544003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.747032, 37.871635, 40.102226>,  <40.827831, 37.975399, 40.830906>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.747032, 37.871635, 40.102226> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.103947, 38.030182, 40.188683>,  <41.318096, 38.125313, 40.240555>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.103947, 38.030182, 40.188683>,  <40.747032, 37.871635, 40.102226>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.103947, 38.030182, 40.188683> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445414, -0.694707, -0.564792,
		-0.073712, 0.600227, -0.796425,
		0.892285, 0.396371, 0.216141,
		41.371632, 38.149094, 40.253525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.137207, 37.743565, 39.607883>,  <40.747032, 37.871635, 40.102226>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.137207, 37.743565, 39.607883> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.451897, 37.859730, 39.825775>,  <41.640709, 37.929428, 39.956509>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.451897, 37.859730, 39.825775>,  <41.137207, 37.743565, 39.607883>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.451897, 37.859730, 39.825775> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603593, -0.546886, -0.580165,
		0.129416, 0.785222, -0.605539,
		0.786719, 0.290417, 0.544730,
		41.687912, 37.946854, 39.989193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.617722, 37.851967, 39.018204>,  <41.137207, 37.743565, 39.607883>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.617722, 37.851967, 39.018204> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.839729, 37.855015, 39.350925>,  <41.972935, 37.856842, 39.550556>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.839729, 37.855015, 39.350925>,  <41.617722, 37.851967, 39.018204>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.839729, 37.855015, 39.350925> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536086, -0.767881, -0.350673,
		0.636053, 0.640548, -0.430274,
		0.555022, 0.007617, 0.831801,
		42.006237, 37.857300, 39.600464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.232044, 38.038589, 38.813095>,  <41.617722, 37.851967, 39.018204>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.232044, 38.038589, 38.813095> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.280296, 37.850471, 39.162785>,  <42.309250, 37.737602, 39.372601>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.280296, 37.850471, 39.162785>,  <42.232044, 38.038589, 38.813095>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.280296, 37.850471, 39.162785> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.685654, -0.597368, -0.415969,
		0.717862, 0.649598, 0.250394,
		0.120635, -0.470292, 0.874227,
		42.316486, 37.709385, 39.425053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.963329, 37.938461, 38.835129>,  <42.232044, 38.038589, 38.813095>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.963329, 37.938461, 38.835129> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.785862, 37.688564, 39.092144>,  <42.679382, 37.538628, 39.246353>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.785862, 37.688564, 39.092144>,  <42.963329, 37.938461, 38.835129>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.785862, 37.688564, 39.092144> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485579, -0.770182, -0.413561,
		0.753243, 0.128522, 0.645064,
		-0.443665, -0.624742, 0.642541,
		42.652763, 37.501141, 39.284908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.481792, 37.515610, 39.080883>,  <42.963329, 37.938461, 38.835129>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.481792, 37.515610, 39.080883> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.151581, 37.294888, 39.128239>,  <42.953453, 37.162453, 39.156651>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.151581, 37.294888, 39.128239>,  <43.481792, 37.515610, 39.080883>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.151581, 37.294888, 39.128239> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428327, -0.749188, -0.505227,
		0.367485, -0.366367, 0.854827,
		-0.825525, -0.551809, 0.118390,
		42.903923, 37.129345, 39.163757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.685635, 36.889515, 39.370579>,  <43.481792, 37.515610, 39.080883>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.685635, 36.889515, 39.370579> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.328583, 36.775803, 39.230633>,  <43.114353, 36.707573, 39.146667>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.328583, 36.775803, 39.230633>,  <43.685635, 36.889515, 39.370579>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.328583, 36.775803, 39.230633> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430900, -0.766097, -0.476887,
		-0.132458, -0.576437, 0.806335,
		-0.892625, -0.284282, -0.349862,
		43.060795, 36.690517, 39.125675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.552708, 36.285419, 39.547726>,  <43.685635, 36.889515, 39.370579>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.552708, 36.285419, 39.547726> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.321770, 36.302357, 39.221565>,  <43.183205, 36.312519, 39.025867>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.321770, 36.302357, 39.221565>,  <43.552708, 36.285419, 39.547726>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.321770, 36.302357, 39.221565> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515898, -0.755134, -0.404501,
		-0.632865, -0.654201, 0.414129,
		-0.577348, 0.042346, -0.815399,
		43.148567, 36.315060, 38.976944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.500450, 35.606209, 39.251419>,  <43.552708, 36.285419, 39.547726>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.500450, 35.606209, 39.251419> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.353580, 35.812084, 38.941509>,  <43.265457, 35.935608, 38.755562>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.353580, 35.812084, 38.941509>,  <43.500450, 35.606209, 39.251419>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.353580, 35.812084, 38.941509> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530124, -0.568641, -0.628980,
		-0.764298, -0.641674, -0.064056,
		-0.367175, 0.514686, -0.774778,
		43.243427, 35.966492, 38.709076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.016159, 35.154568, 38.852306>,  <43.500450, 35.606209, 39.251419>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.016159, 35.154568, 38.852306> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.178181, 35.433834, 38.616173>,  <43.275394, 35.601395, 38.474491>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.178181, 35.433834, 38.616173>,  <43.016159, 35.154568, 38.852306>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.178181, 35.433834, 38.616173> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417706, -0.715656, -0.559783,
		-0.813299, -0.019846, -0.581507,
		0.405050, 0.698171, -0.590333,
		43.299694, 35.643284, 38.439072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.140865, 34.831421, 38.190510>,  <43.016159, 35.154568, 38.852306>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.140865, 34.831421, 38.190510> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.360172, 35.161346, 38.135239>,  <43.491756, 35.359303, 38.102074>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.360172, 35.161346, 38.135239>,  <43.140865, 34.831421, 38.190510>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.360172, 35.161346, 38.135239> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583072, -0.495442, -0.643866,
		-0.599529, 0.272439, -0.752557,
		0.548263, 0.824812, -0.138180,
		43.524651, 35.408791, 38.093784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.195927, 34.794312, 37.530060>,  <43.140865, 34.831421, 38.190510>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.195927, 34.794312, 37.530060> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.477100, 35.055794, 37.642170>,  <43.645805, 35.212685, 37.709438>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.477100, 35.055794, 37.642170>,  <43.195927, 34.794312, 37.530060>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.477100, 35.055794, 37.642170> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.641564, -0.412631, -0.646631,
		-0.307056, 0.634353, -0.709446,
		0.702931, 0.653707, 0.280277,
		43.687981, 35.251907, 37.726254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.480553, 35.049110, 36.930206>,  <43.195927, 34.794312, 37.530060>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.480553, 35.049110, 36.930206> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.752327, 35.108547, 37.217617>,  <43.915394, 35.144211, 37.390064>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.752327, 35.108547, 37.217617>,  <43.480553, 35.049110, 36.930206>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.752327, 35.108547, 37.217617> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.732560, -0.192678, -0.652864,
		0.041434, 0.969946, -0.239766,
		0.679441, 0.148591, 0.718527,
		43.956158, 35.153126, 37.433174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.016972, 35.401779, 36.584755>,  <43.480553, 35.049110, 36.930206>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.016972, 35.401779, 36.584755> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.177197, 35.249367, 36.918072>,  <44.273331, 35.157921, 37.118061>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.177197, 35.249367, 36.918072>,  <44.016972, 35.401779, 36.584755>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.177197, 35.249367, 36.918072> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.803865, -0.290302, -0.519158,
		0.439719, 0.877806, 0.190012,
		0.400559, -0.381028, 0.833289,
		44.297363, 35.135059, 37.168060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.628345, 35.729301, 36.537132>,  <44.016972, 35.401779, 36.584755>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.628345, 35.729301, 36.537132> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.631851, 35.394958, 36.756683>,  <44.633953, 35.194355, 36.888416>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.631851, 35.394958, 36.756683>,  <44.628345, 35.729301, 36.537132>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.631851, 35.394958, 36.756683> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.839761, -0.291853, -0.457846,
		0.542885, 0.464940, 0.699361,
		0.008760, -0.835854, 0.548881,
		44.634480, 35.144203, 36.921349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.383778, 35.497673, 36.683979>,  <44.628345, 35.729301, 36.537132>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.383778, 35.497673, 36.683979> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.185825, 35.158226, 36.758751>,  <45.067055, 34.954559, 36.803616>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.185825, 35.158226, 36.758751>,  <45.383778, 35.497673, 36.683979>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.185825, 35.158226, 36.758751> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.708228, -0.518541, -0.479092,
		0.503498, -0.104701, 0.857629,
		-0.494877, -0.848619, 0.186932,
		45.037361, 34.903641, 36.814831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.865997, 35.037457, 36.662483>,  <45.383778, 35.497673, 36.683979>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.865997, 35.037457, 36.662483> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.542595, 34.826668, 36.557701>,  <45.348553, 34.700195, 36.494831>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.542595, 34.826668, 36.557701>,  <45.865997, 35.037457, 36.662483>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.542595, 34.826668, 36.557701> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477935, -0.328258, -0.814755,
		0.343365, -0.783930, 0.517257,
		-0.808504, -0.526973, -0.261955,
		45.300045, 34.668575, 36.479115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.103912, 35.703991, 37.028301>,  <45.865997, 35.037457, 36.662483>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.103912, 35.703991, 37.028301> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.490059, 35.788357, 36.966869>,  <46.721745, 35.838974, 36.930008>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.490059, 35.788357, 36.966869>,  <46.103912, 35.703991, 37.028301>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.490059, 35.788357, 36.966869> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001981, 0.582715, 0.812674,
		0.260898, -0.784831, 0.562114,
		0.965364, 0.210912, -0.153584,
		46.779667, 35.851631, 36.920795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.469563, 35.507832, 37.610893>,  <46.103912, 35.703991, 37.028301>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.469563, 35.507832, 37.610893> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.632343, 35.828129, 37.435074>,  <46.730011, 36.020306, 37.329582>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.632343, 35.828129, 37.435074>,  <46.469563, 35.507832, 37.610893>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.632343, 35.828129, 37.435074> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298909, 0.571435, 0.764274,
		0.863160, -0.179637, 0.471896,
		0.406950, 0.800745, -0.439545,
		46.754429, 36.068352, 37.303211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.945217, 35.827011, 38.008099>,  <46.469563, 35.507832, 37.610893>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.945217, 35.827011, 38.008099> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.852058, 36.142170, 37.780075>,  <46.796162, 36.331264, 37.643261>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.852058, 36.142170, 37.780075>,  <46.945217, 35.827011, 38.008099>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.852058, 36.142170, 37.780075> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366206, 0.471981, 0.801952,
		0.900917, 0.395536, 0.178608,
		-0.232901, 0.787899, -0.570063,
		46.782188, 36.378540, 37.609055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.079578, 36.558784, 38.330311>,  <46.945217, 35.827011, 38.008099>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.079578, 36.558784, 38.330311> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.788830, 36.648338, 38.070610>,  <46.614380, 36.702072, 37.914791>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.788830, 36.648338, 38.070610>,  <47.079578, 36.558784, 38.330311>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.788830, 36.648338, 38.070610> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442050, 0.570976, 0.691794,
		0.525591, 0.789849, -0.316058,
		-0.726874, 0.223887, -0.649253,
		46.570766, 36.715504, 37.875835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.831062, 37.247086, 38.577785>,  <47.079578, 36.558784, 38.330311>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.831062, 37.247086, 38.577785> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.554585, 37.162457, 38.301384>,  <46.388699, 37.111679, 38.135544>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.554585, 37.162457, 38.301384>,  <46.831062, 37.247086, 38.577785>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.554585, 37.162457, 38.301384> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.701892, 0.424163, 0.572218,
		0.172030, 0.880523, -0.441684,
		-0.691197, -0.211575, -0.691001,
		46.347225, 37.098984, 38.094082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.632717, 37.829918, 38.173790>,  <46.831062, 37.247086, 38.577785>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.632717, 37.829918, 38.173790> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.314407, 37.591911, 38.128731>,  <46.123421, 37.449108, 38.101696>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.314407, 37.591911, 38.128731>,  <46.632717, 37.829918, 38.173790>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.314407, 37.591911, 38.128731> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566961, 0.666649, 0.483874,
		-0.212819, 0.448922, -0.867857,
		-0.795779, -0.595019, -0.112645,
		46.075672, 37.413406, 38.094936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.022312, 38.286896, 38.061722>,  <46.632717, 37.829918, 38.173790>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.022312, 38.286896, 38.061722> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.825466, 37.949631, 38.148350>,  <45.707359, 37.747272, 38.200329>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.825466, 37.949631, 38.148350>,  <46.022312, 38.286896, 38.061722>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.825466, 37.949631, 38.148350> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.755313, 0.537248, 0.375322,
		-0.432809, 0.021123, -0.901238,
		-0.492116, -0.843160, 0.216572,
		45.677830, 37.696682, 38.213322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.388687, 38.460686, 37.826637>,  <46.022312, 38.286896, 38.061722>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.388687, 38.460686, 37.826637> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.345432, 38.156731, 38.083035>,  <45.319481, 37.974358, 38.236874>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.345432, 38.156731, 38.083035>,  <45.388687, 38.460686, 37.826637>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.345432, 38.156731, 38.083035> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.680461, 0.526639, 0.509534,
		-0.724762, -0.381073, -0.574024,
		-0.108133, -0.759892, 0.640993,
		45.312992, 37.928764, 38.275333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.696877, 38.202957, 37.832504>,  <45.388687, 38.460686, 37.826637>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.696877, 38.202957, 37.832504> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.863831, 38.133621, 38.189320>,  <44.964005, 38.092018, 38.403408>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.863831, 38.133621, 38.189320>,  <44.696877, 38.202957, 37.832504>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.863831, 38.133621, 38.189320> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.712200, 0.547295, 0.439590,
		-0.564409, -0.818793, 0.104981,
		0.417389, -0.173341, 0.892042,
		44.989048, 38.081619, 38.456932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.203823, 38.394604, 38.330055>,  <44.696877, 38.202957, 37.832504>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.203823, 38.394604, 38.330055> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.518166, 38.366035, 38.575764>,  <44.706772, 38.348896, 38.723190>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.518166, 38.366035, 38.575764>,  <44.203823, 38.394604, 38.330055>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.518166, 38.366035, 38.575764> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441652, 0.630463, 0.638325,
		-0.432865, -0.772926, 0.463911,
		0.785857, -0.071421, 0.614270,
		44.753922, 38.344608, 38.760044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.946934, 38.165886, 39.039890>,  <44.203823, 38.394604, 38.330055>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.946934, 38.165886, 39.039890> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.293961, 38.364574, 39.049706>,  <44.502174, 38.483788, 39.055595>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.293961, 38.364574, 39.049706>,  <43.946934, 38.165886, 39.039890>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.293961, 38.364574, 39.049706> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385167, 0.639882, 0.664979,
		0.314605, -0.586364, 0.746458,
		0.867565, 0.496717, 0.024538,
		44.554230, 38.513588, 39.057068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.954922, 38.387348, 39.674725>,  <43.946934, 38.165886, 39.039890>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.954922, 38.387348, 39.674725> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.272346, 38.585476, 39.533352>,  <44.462803, 38.704353, 39.448528>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.272346, 38.585476, 39.533352>,  <43.954922, 38.387348, 39.674725>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.272346, 38.585476, 39.533352> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123988, 0.700281, 0.703018,
		0.595721, -0.514068, 0.617131,
		0.793564, 0.495319, -0.353434,
		44.510414, 38.734074, 39.427322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.374840, 38.530987, 40.289566>,  <43.954922, 38.387348, 39.674725>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.374840, 38.530987, 40.289566> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.438965, 38.788147, 39.989971>,  <44.477440, 38.942444, 39.810215>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.438965, 38.788147, 39.989971>,  <44.374840, 38.530987, 40.289566>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.438965, 38.788147, 39.989971> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228563, 0.762353, 0.605456,
		0.960239, 0.074128, 0.269157,
		0.160312, 0.642902, -0.748984,
		44.487057, 38.981018, 39.765274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.794147, 39.016209, 40.650635>,  <44.374840, 38.530987, 40.289566>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.794147, 39.016209, 40.650635> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.632504, 39.174248, 40.320641>,  <44.535519, 39.269070, 40.122646>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.632504, 39.174248, 40.320641>,  <44.794147, 39.016209, 40.650635>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.632504, 39.174248, 40.320641> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181644, 0.849280, 0.495710,
		0.896494, 0.350174, -0.271435,
		-0.404109, 0.395096, -0.824981,
		44.511272, 39.292778, 40.073147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.847187, 39.818161, 40.640770>,  <44.794147, 39.016209, 40.650635>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.847187, 39.818161, 40.640770> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.583569, 39.783722, 40.341908>,  <44.425396, 39.763058, 40.162590>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.583569, 39.783722, 40.341908>,  <44.847187, 39.818161, 40.640770>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.583569, 39.783722, 40.341908> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454197, 0.837377, 0.304147,
		0.599466, 0.539804, -0.590976,
		-0.659049, -0.086093, -0.747156,
		44.385853, 39.757893, 40.117760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.936855, 40.500092, 40.237911>,  <44.847187, 39.818161, 40.640770>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.936855, 40.500092, 40.237911> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.580521, 40.338039, 40.155663>,  <44.366718, 40.240810, 40.106312>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.580521, 40.338039, 40.155663>,  <44.936855, 40.500092, 40.237911>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.580521, 40.338039, 40.155663> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449632, 0.851036, 0.271236,
		0.065108, 0.334082, -0.940293,
		-0.890838, -0.405126, -0.205623,
		44.313271, 40.216503, 40.093975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.484596, 40.942604, 39.950203>,  <44.936855, 40.500092, 40.237911>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.484596, 40.942604, 39.950203> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.202217, 40.689468, 40.077427>,  <44.032791, 40.537586, 40.153759>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.202217, 40.689468, 40.077427>,  <44.484596, 40.942604, 39.950203>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.202217, 40.689468, 40.077427> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453188, 0.748699, 0.483809,
		-0.544301, 0.197402, -0.815334,
		-0.705944, -0.632837, 0.318057,
		43.990433, 40.499619, 40.172844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.826733, 41.300377, 39.921410>,  <44.484596, 40.942604, 39.950203>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.826733, 41.300377, 39.921410> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.768230, 41.017113, 40.197704>,  <43.733128, 40.847153, 40.363480>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.768230, 41.017113, 40.197704>,  <43.826733, 41.300377, 39.921410>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.768230, 41.017113, 40.197704> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421271, 0.676355, 0.604214,
		-0.895064, -0.202616, -0.397249,
		-0.146258, -0.708160, 0.690737,
		43.724354, 40.804665, 40.404926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.113823, 41.448624, 40.123627>,  <43.826733, 41.300377, 39.921410>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.113823, 41.448624, 40.123627> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.281425, 41.221565, 40.407093>,  <43.381989, 41.085331, 40.577175>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.281425, 41.221565, 40.407093>,  <43.113823, 41.448624, 40.123627>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.281425, 41.221565, 40.407093> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468033, 0.533780, 0.704290,
		-0.778059, -0.626785, -0.042017,
		0.419011, -0.567644, 0.708668,
		43.407127, 41.051273, 40.619694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.506222, 41.107185, 40.530502>,  <43.113823, 41.448624, 40.123627>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.506222, 41.107185, 40.530502> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.828892, 41.122341, 40.766411>,  <43.022495, 41.131435, 40.907955>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.828892, 41.122341, 40.766411>,  <42.506222, 41.107185, 40.530502>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.828892, 41.122341, 40.766411> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449008, 0.688167, 0.569927,
		-0.384268, -0.724562, 0.572144,
		0.806678, 0.037893, 0.589775,
		43.070896, 41.133709, 40.943344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<37.668285, 37.652584, 42.301384> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.926804, 37.351894, 42.248901>,  <38.081917, 37.171482, 42.217411>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.926804, 37.351894, 42.248901>,  <37.668285, 37.652584, 42.301384>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.926804, 37.351894, 42.248901> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388382, 0.472049, -0.791409,
		0.656854, 0.460529, 0.597039,
		0.646299, -0.751720, -0.131206,
		38.120693, 37.126377, 42.209541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.274738, 38.017345, 41.959194>,  <37.668285, 37.652584, 42.301384>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.274738, 38.017345, 41.959194> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.309700, 37.627270, 41.877831>,  <38.330677, 37.393227, 41.829014>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.309700, 37.627270, 41.877831>,  <38.274738, 38.017345, 41.959194>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.309700, 37.627270, 41.877831> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187443, 0.216641, -0.958088,
		0.978379, 0.045611, 0.201727,
		0.087402, -0.975185, -0.203408,
		38.335922, 37.334713, 41.816807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.878250, 37.882362, 41.483074>,  <38.274738, 38.017345, 41.959194>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.878250, 37.882362, 41.483074> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.642651, 37.562668, 41.435257>,  <38.501289, 37.370850, 41.406567>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.642651, 37.562668, 41.435257>,  <38.878250, 37.882362, 41.483074>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.642651, 37.562668, 41.435257> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068262, 0.098190, -0.992824,
		0.805243, -0.592936, -0.003277,
		-0.589002, -0.799241, -0.119542,
		38.465950, 37.322895, 41.399395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.262722, 37.504780, 40.973179>,  <38.878250, 37.882362, 41.483074>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.262722, 37.504780, 40.973179> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.886898, 37.371132, 40.943287>,  <38.661404, 37.290943, 40.925354>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.886898, 37.371132, 40.943287>,  <39.262722, 37.504780, 40.973179>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.886898, 37.371132, 40.943287> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053515, 0.072258, -0.995949,
		0.338165, -0.939757, -0.050010,
		-0.939564, -0.334119, -0.074726,
		38.605030, 37.270897, 40.920868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.245480, 36.911697, 40.420074>,  <39.262722, 37.504780, 40.973179>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.245480, 36.911697, 40.420074> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.864178, 37.031147, 40.438534>,  <38.635395, 37.102818, 40.449608>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.864178, 37.031147, 40.438534>,  <39.245480, 36.911697, 40.420074>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.864178, 37.031147, 40.438534> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037172, 0.035662, -0.998672,
		-0.299870, -0.953706, -0.022895,
		-0.953256, 0.298621, 0.046145,
		38.578201, 37.120731, 40.452377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.929024, 36.555008, 39.789310>,  <39.245480, 36.911697, 40.420074>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.929024, 36.555008, 39.789310> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.663021, 36.839314, 39.881031>,  <38.503418, 37.009899, 39.936062>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.663021, 36.839314, 39.881031>,  <38.929024, 36.555008, 39.789310>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.663021, 36.839314, 39.881031> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327211, -0.001297, -0.944950,
		-0.671343, -0.703426, 0.233434,
		-0.665005, 0.710768, 0.229298,
		38.463520, 37.052544, 39.949821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.190304, 36.282658, 39.656490>,  <38.929024, 36.555008, 39.789310>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.190304, 36.282658, 39.656490> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.194130, 36.682606, 39.651241>,  <38.196426, 36.922573, 39.648094>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.194130, 36.682606, 39.651241>,  <38.190304, 36.282658, 39.656490>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.194130, 36.682606, 39.651241> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557039, -0.005570, -0.830467,
		-0.830431, 0.015251, 0.556913,
		0.009563, 0.999868, -0.013121,
		38.196999, 36.982567, 39.647305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.465542, 36.555748, 39.403633>,  <38.190304, 36.282658, 39.656490>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.465542, 36.555748, 39.403633> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.739132, 36.838692, 39.332283>,  <37.903286, 37.008457, 39.289474>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.739132, 36.838692, 39.332283>,  <37.465542, 36.555748, 39.403633>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.739132, 36.838692, 39.332283> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447599, 0.213853, -0.868287,
		-0.576046, 0.673727, 0.462884,
		0.683978, 0.707360, -0.178371,
		37.944324, 37.050900, 39.278770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.083256, 36.879688, 38.884190>,  <37.465542, 36.555748, 39.403633>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.083256, 36.879688, 38.884190> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.448093, 37.042915, 38.868336>,  <37.666996, 37.140850, 38.858822>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.448093, 37.042915, 38.868336>,  <37.083256, 36.879688, 38.884190>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.448093, 37.042915, 38.868336> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091316, 0.107956, -0.989953,
		-0.399690, 0.906546, 0.135729,
		0.912090, 0.408069, -0.039634,
		37.721722, 37.165337, 38.856445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.969265, 37.422684, 38.466888>,  <37.083256, 36.879688, 38.884190>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.969265, 37.422684, 38.466888> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.362564, 37.350315, 38.457962>,  <37.598541, 37.306892, 38.452606>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.362564, 37.350315, 38.457962>,  <36.969265, 37.422684, 38.466888>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.362564, 37.350315, 38.457962> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017282, 0.029347, -0.999420,
		0.181475, 0.983059, 0.025728,
		0.983244, -0.180925, -0.022315,
		37.657536, 37.296036, 38.451267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.208202, 37.877632, 38.090775>,  <36.969265, 37.422684, 38.466888>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.208202, 37.877632, 38.090775> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.510452, 37.618591, 38.051498>,  <37.691803, 37.463165, 38.027935>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.510452, 37.618591, 38.051498>,  <37.208202, 37.877632, 38.090775>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.510452, 37.618591, 38.051498> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064784, 0.223058, -0.972650,
		0.651793, 0.728598, 0.210503,
		0.755625, -0.647604, -0.098186,
		37.737141, 37.424309, 38.022041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.771069, 38.193939, 37.569855>,  <37.208202, 37.877632, 38.090775>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.771069, 38.193939, 37.569855> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.801266, 37.796280, 37.600761>,  <37.819382, 37.557686, 37.619305>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.801266, 37.796280, 37.600761>,  <37.771069, 38.193939, 37.569855>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.801266, 37.796280, 37.600761> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142389, -0.065949, -0.987611,
		0.986928, 0.085556, 0.136577,
		0.075489, -0.994148, 0.077269,
		37.823914, 37.498035, 37.623943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.372974, 37.847317, 37.191948>,  <37.771069, 38.193939, 37.569855>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.372974, 37.847317, 37.191948> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.047421, 37.617706, 37.227921>,  <37.852089, 37.479942, 37.249504>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.047421, 37.617706, 37.227921>,  <38.372974, 37.847317, 37.191948>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.047421, 37.617706, 37.227921> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030824, -0.197215, -0.979876,
		0.580208, -0.794734, 0.178204,
		-0.813885, -0.574025, 0.089929,
		37.803253, 37.445499, 37.254898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.495667, 37.111671, 36.861198>,  <38.372974, 37.847317, 37.191948>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.495667, 37.111671, 36.861198> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.112812, 37.227489, 36.864197>,  <37.883099, 37.296982, 36.865997>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.112812, 37.227489, 36.864197>,  <38.495667, 37.111671, 36.861198>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.112812, 37.227489, 36.864197> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000766, 0.028421, -0.999596,
		-0.289645, -0.956741, -0.027425,
		-0.957134, 0.289549, 0.007499,
		37.825672, 37.314354, 36.866447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.982048, 36.902767, 36.318699>,  <38.495667, 37.111671, 36.861198>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.982048, 36.902767, 36.318699> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.030464, 36.579178, 36.088596>,  <39.059513, 36.385025, 35.950535>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.030464, 36.579178, 36.088596>,  <38.982048, 36.902767, 36.318699>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.030464, 36.579178, 36.088596> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452485, -0.470839, 0.757343,
		-0.883519, -0.351965, 0.309054,
		0.121044, -0.808969, -0.575254,
		39.066776, 36.336487, 35.916019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.677917, 36.350014, 36.617538>,  <38.982048, 36.902767, 36.318699>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.677917, 36.350014, 36.617538> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.966057, 36.188965, 36.391621>,  <39.138943, 36.092335, 36.256069>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.966057, 36.188965, 36.391621>,  <38.677917, 36.350014, 36.617538>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.966057, 36.188965, 36.391621> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288147, -0.566977, 0.771692,
		-0.630927, -0.718631, -0.292405,
		0.720348, -0.402626, -0.564792,
		39.182163, 36.068180, 36.222183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.700596, 35.618580, 36.589130>,  <38.677917, 36.350014, 36.617538>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.700596, 35.618580, 36.589130> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.083744, 35.712868, 36.523510>,  <39.313633, 35.769440, 36.484138>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.083744, 35.712868, 36.523510>,  <38.700596, 35.618580, 36.589130>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.083744, 35.712868, 36.523510> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278117, -0.618936, 0.734553,
		0.071612, -0.749235, -0.658421,
		0.957874, 0.235721, -0.164052,
		39.371105, 35.783585, 36.474293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.079655, 35.063519, 36.887840>,  <38.700596, 35.618580, 36.589130>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.079655, 35.063519, 36.887840> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.384750, 35.313469, 36.821194>,  <39.567806, 35.463440, 36.781208>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.384750, 35.313469, 36.821194>,  <39.079655, 35.063519, 36.887840>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.384750, 35.313469, 36.821194> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502080, -0.409789, 0.761570,
		0.407610, -0.664532, -0.626299,
		0.762739, 0.624876, -0.166614,
		39.613571, 35.500931, 36.771210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.622883, 34.658829, 36.862160>,  <39.079655, 35.063519, 36.887840>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.622883, 34.658829, 36.862160> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.772713, 35.025002, 36.921051>,  <39.862610, 35.244705, 36.956387>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.772713, 35.025002, 36.921051>,  <39.622883, 34.658829, 36.862160>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.772713, 35.025002, 36.921051> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424571, -0.310510, 0.850484,
		0.824275, -0.256064, -0.504977,
		0.374579, 0.915431, 0.147229,
		39.885086, 35.299629, 36.965221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.392040, 34.585403, 36.815449>,  <39.622883, 34.658829, 36.862160>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.392040, 34.585403, 36.815449> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.313248, 34.901791, 37.047161>,  <40.265972, 35.091625, 37.186188>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.313248, 34.901791, 37.047161>,  <40.392040, 34.585403, 36.815449>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.313248, 34.901791, 37.047161> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546725, -0.401835, 0.734589,
		0.813813, 0.461404, -0.353291,
		-0.196977, 0.790971, 0.579280,
		40.254154, 35.139080, 37.220943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.049702, 34.617027, 37.127163>,  <40.392040, 34.585403, 36.815449>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.049702, 34.617027, 37.127163> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.805931, 34.847733, 37.344769>,  <40.659668, 34.986156, 37.475330>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.805931, 34.847733, 37.344769>,  <41.049702, 34.617027, 37.127163>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.805931, 34.847733, 37.344769> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338825, -0.430880, 0.836385,
		0.716798, 0.694039, 0.067168,
		-0.609425, 0.576761, 0.544011,
		40.623104, 35.020760, 37.507973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.440208, 34.805614, 37.681015>,  <41.049702, 34.617027, 37.127163>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.440208, 34.805614, 37.681015> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.056973, 34.818729, 37.794849>,  <40.827030, 34.826599, 37.863148>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.056973, 34.818729, 37.794849>,  <41.440208, 34.805614, 37.681015>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.056973, 34.818729, 37.794849> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249358, -0.393537, 0.884844,
		0.141008, 0.918724, 0.368868,
		-0.958091, 0.032790, 0.284582,
		40.769547, 34.828568, 37.880222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.559669, 35.138767, 38.360661>,  <41.440208, 34.805614, 37.681015>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.559669, 35.138767, 38.360661> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.184772, 34.999840, 38.348377>,  <40.959835, 34.916481, 38.341007>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.184772, 34.999840, 38.348377>,  <41.559669, 35.138767, 38.360661>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.184772, 34.999840, 38.348377> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110330, -0.378971, 0.918808,
		-0.330762, 0.857758, 0.393508,
		-0.937243, -0.347322, -0.030713,
		40.903599, 34.895641, 38.339165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.278618, 35.432663, 39.000694>,  <41.559669, 35.138767, 38.360661>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.278618, 35.432663, 39.000694> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.061382, 35.113594, 38.895790>,  <40.931042, 34.922153, 38.832848>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.061382, 35.113594, 38.895790>,  <41.278618, 35.432663, 39.000694>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.061382, 35.113594, 38.895790> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137026, -0.223951, 0.964919,
		-0.828418, 0.559975, 0.012325,
		-0.543091, -0.797667, -0.262257,
		40.898457, 34.874294, 38.817112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.615505, 35.469105, 39.427696>,  <41.278618, 35.432663, 39.000694>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.615505, 35.469105, 39.427696> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.690037, 35.097195, 39.300701>,  <40.734756, 34.874050, 39.224506>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.690037, 35.097195, 39.300701>,  <40.615505, 35.469105, 39.427696>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.690037, 35.097195, 39.300701> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055695, -0.312629, 0.948241,
		-0.980907, -0.194370, -0.006469,
		0.186331, -0.929776, -0.317485,
		40.745937, 34.818260, 39.205456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.257786, 35.140980, 39.867706>,  <40.615505, 35.469105, 39.427696>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.257786, 35.140980, 39.867706> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.493977, 34.864323, 39.701351>,  <40.635689, 34.698326, 39.601536>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.493977, 34.864323, 39.701351>,  <40.257786, 35.140980, 39.867706>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.493977, 34.864323, 39.701351> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255902, -0.328272, 0.909259,
		-0.765411, -0.643321, -0.016843,
		0.590474, -0.691646, -0.415891,
		40.671120, 34.656830, 39.576584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.076172, 34.380161, 40.015930>,  <40.257786, 35.140980, 39.867706>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.076172, 34.380161, 40.015930> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.462479, 34.359806, 39.914185>,  <40.694263, 34.347591, 39.853138>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.462479, 34.359806, 39.914185>,  <40.076172, 34.380161, 40.015930>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.462479, 34.359806, 39.914185> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193273, -0.512862, 0.836432,
		-0.173021, -0.856961, -0.485470,
		0.965769, -0.050892, -0.254363,
		40.752209, 34.344540, 39.837875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.245529, 33.629536, 40.105812>,  <40.076172, 34.380161, 40.015930>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.245529, 33.629536, 40.105812> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.591759, 33.828613, 40.083588>,  <40.799496, 33.948059, 40.070251>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.591759, 33.828613, 40.083588>,  <40.245529, 33.629536, 40.105812>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.591759, 33.828613, 40.083588> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312893, -0.450849, 0.835962,
		0.391004, -0.740969, -0.545967,
		0.865571, 0.497694, -0.055560,
		40.851429, 33.977921, 40.066921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.395531, 33.122108, 39.637516>,  <40.245529, 33.629536, 40.105812>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.395531, 33.122108, 39.637516> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.272022, 32.745724, 39.582024>,  <40.197918, 32.519894, 39.548729>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.272022, 32.745724, 39.582024>,  <40.395531, 33.122108, 39.637516>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.272022, 32.745724, 39.582024> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501179, 0.284931, -0.817088,
		0.808380, -0.182765, -0.559571,
		-0.308774, -0.940963, -0.138735,
		40.179390, 32.463436, 39.540401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.482910, 33.067623, 38.954353>,  <40.395531, 33.122108, 39.637516>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.482910, 33.067623, 38.954353> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.266468, 32.751034, 39.068043>,  <40.136604, 32.561081, 39.136257>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.266468, 32.751034, 39.068043>,  <40.482910, 33.067623, 38.954353>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.266468, 32.751034, 39.068043> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.661690, 0.192112, -0.724748,
		0.519013, -0.580232, -0.627660,
		-0.541103, -0.791470, 0.284225,
		40.104137, 32.513592, 39.153309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.571922, 32.605389, 38.463161>,  <40.482910, 33.067623, 38.954353>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.571922, 32.605389, 38.463161> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.215755, 32.531384, 38.629498>,  <40.002056, 32.486980, 38.729298>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.215755, 32.531384, 38.629498>,  <40.571922, 32.605389, 38.463161>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.215755, 32.531384, 38.629498> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453353, 0.279715, -0.846304,
		0.040264, -0.942087, -0.332942,
		-0.890421, -0.185015, 0.415835,
		39.948627, 32.475880, 38.754250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.195221, 32.254570, 37.928715>,  <40.571922, 32.605389, 38.463161>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.195221, 32.254570, 37.928715> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.909351, 32.390038, 38.173515>,  <39.737831, 32.471317, 38.320396>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.909351, 32.390038, 38.173515>,  <40.195221, 32.254570, 37.928715>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.909351, 32.390038, 38.173515> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.612696, 0.118965, -0.781313,
		-0.337412, -0.933355, 0.122479,
		-0.714672, 0.338667, 0.612003,
		39.694950, 32.491638, 38.357117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.655163, 32.123619, 37.582291>,  <40.195221, 32.254570, 37.928715>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.655163, 32.123619, 37.582291> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.496174, 32.375980, 37.848816>,  <39.400780, 32.527397, 38.008732>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.496174, 32.375980, 37.848816>,  <39.655163, 32.123619, 37.582291>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.496174, 32.375980, 37.848816> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.727419, 0.225999, -0.647909,
		-0.559355, -0.742217, 0.369102,
		-0.397472, 0.630903, 0.666316,
		39.376930, 32.565250, 38.048710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.856400, 32.056614, 37.592251>,  <39.655163, 32.123619, 37.582291>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.856400, 32.056614, 37.592251> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.916904, 32.411156, 37.767288>,  <38.953209, 32.623882, 37.872311>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.916904, 32.411156, 37.767288>,  <38.856400, 32.056614, 37.592251>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.916904, 32.411156, 37.767288> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.766507, 0.384706, -0.514265,
		-0.624168, -0.257632, 0.737591,
		0.151264, 0.886356, 0.437598,
		38.962284, 32.677063, 37.898567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.207455, 32.301590, 37.586830>,  <38.856400, 32.056614, 37.592251>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.207455, 32.301590, 37.586830> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.420647, 32.630726, 37.665688>,  <38.548561, 32.828209, 37.713001>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.420647, 32.630726, 37.665688>,  <38.207455, 32.301590, 37.586830>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.420647, 32.630726, 37.665688> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.754103, 0.567608, -0.330378,
		-0.383750, 0.027415, 0.923030,
		0.532976, 0.822843, 0.197146,
		38.580540, 32.877579, 37.724831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.789639, 32.769585, 38.014488>,  <38.207455, 32.301590, 37.586830>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.789639, 32.769585, 38.014488> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.067513, 32.991463, 37.831303>,  <38.234238, 33.124588, 37.721394>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.067513, 32.991463, 37.831303>,  <37.789639, 32.769585, 38.014488>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.067513, 32.991463, 37.831303> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.705185, 0.650742, -0.281511,
		0.141862, 0.518509, 0.843222,
		0.694686, 0.554692, -0.457960,
		38.275917, 33.157871, 37.693916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.492043, 33.423889, 38.147369>,  <37.789639, 32.769585, 38.014488>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.492043, 33.423889, 38.147369> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.755016, 33.458622, 37.847973>,  <37.912800, 33.479462, 37.668335>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.755016, 33.458622, 37.847973>,  <37.492043, 33.423889, 38.147369>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.755016, 33.458622, 37.847973> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543986, 0.742040, -0.391734,
		0.521395, 0.664708, 0.535079,
		0.657439, 0.086827, -0.748488,
		37.952248, 33.484669, 37.623425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.730717, 34.140652, 38.102386>,  <37.492043, 33.423889, 38.147369>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.730717, 34.140652, 38.102386> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.790176, 33.987423, 37.737717>,  <37.825851, 33.895485, 37.518913>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.790176, 33.987423, 37.737717>,  <37.730717, 34.140652, 38.102386>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.790176, 33.987423, 37.737717> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344660, 0.844044, -0.410852,
		0.926884, 0.375291, -0.006564,
		0.148648, -0.383074, -0.911679,
		37.834770, 33.872501, 37.464214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.157566, 34.655575, 37.609142>,  <37.730717, 34.140652, 38.102386>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.157566, 34.655575, 37.609142> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.943474, 34.409435, 37.377666>,  <37.815018, 34.261753, 37.238781>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.943474, 34.409435, 37.377666>,  <38.157566, 34.655575, 37.609142>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.943474, 34.409435, 37.377666> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482558, 0.785021, -0.388432,
		0.693300, 0.071348, -0.717108,
		-0.535232, -0.615346, -0.578685,
		37.782906, 34.224831, 37.204060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.179485, 34.925774, 36.874863>,  <38.157566, 34.655575, 37.609142>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.179485, 34.925774, 36.874863> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.842045, 34.711136, 36.882854>,  <37.639580, 34.582352, 36.887650>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.842045, 34.711136, 36.882854>,  <38.179485, 34.925774, 36.874863>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.842045, 34.711136, 36.882854> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451502, 0.688694, -0.567316,
		0.290657, -0.487612, -0.823258,
		-0.843602, -0.536596, 0.019984,
		37.588963, 34.550156, 36.888851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<42.028492, 31.161051, 42.788464> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.665535, 30.993753, 42.771912>,  <41.447762, 30.893375, 42.761982>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.665535, 30.993753, 42.771912>,  <42.028492, 31.161051, 42.788464>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.665535, 30.993753, 42.771912> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048489, 0.201970, -0.978191,
		0.417480, -0.885595, -0.203546,
		-0.907391, -0.418245, -0.041376,
		41.393318, 30.868280, 42.759499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.075291, 30.858152, 42.178013>,  <42.028492, 31.161051, 42.788464>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.075291, 30.858152, 42.178013> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.679077, 30.878387, 42.229053>,  <41.441349, 30.890528, 42.259678>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.679077, 30.878387, 42.229053>,  <42.075291, 30.858152, 42.178013>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.679077, 30.878387, 42.229053> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106974, 0.298041, -0.948540,
		-0.086015, -0.953212, -0.289808,
		-0.990534, 0.050586, 0.127605,
		41.381916, 30.893562, 42.267334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.732105, 30.752535, 41.595440>,  <42.075291, 30.858152, 42.178013>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.732105, 30.752535, 41.595440> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.385773, 30.880405, 41.749393>,  <41.177971, 30.957129, 41.841766>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.385773, 30.880405, 41.749393>,  <41.732105, 30.752535, 41.595440>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.385773, 30.880405, 41.749393> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250558, 0.388808, -0.886594,
		-0.433071, -0.864080, -0.256546,
		-0.865836, 0.319679, 0.384883,
		41.126022, 30.976309, 41.864857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.409954, 30.625835, 41.017494>,  <41.732105, 30.752535, 41.595440>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.409954, 30.625835, 41.017494> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.147720, 30.823595, 41.245804>,  <40.990379, 30.942251, 41.382790>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.147720, 30.823595, 41.245804>,  <41.409954, 30.625835, 41.017494>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.147720, 30.823595, 41.245804> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346937, 0.474163, -0.809200,
		-0.670708, -0.728518, -0.139326,
		-0.655580, 0.494400, 0.570774,
		40.951046, 30.971914, 41.417038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.585136, 30.462839, 40.893394>,  <41.409954, 30.625835, 41.017494>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.585136, 30.462839, 40.893394> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.668461, 30.840744, 40.994610>,  <40.718456, 31.067488, 41.055340>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.668461, 30.840744, 40.994610>,  <40.585136, 30.462839, 40.893394>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.668461, 30.840744, 40.994610> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452091, 0.322425, -0.831658,
		-0.867307, 0.058846, 0.494283,
		0.208309, 0.944764, 0.253038,
		40.730953, 31.124174, 41.070522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.995815, 30.863605, 40.777779>,  <40.585136, 30.462839, 40.893394>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.995815, 30.863605, 40.777779> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.289062, 31.135611, 40.782074>,  <40.465012, 31.298813, 40.784649>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.289062, 31.135611, 40.782074>,  <39.995815, 30.863605, 40.777779>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.289062, 31.135611, 40.782074> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427830, 0.473398, -0.769971,
		-0.528673, 0.559889, 0.637988,
		0.733121, 0.680013, 0.010735,
		40.508999, 31.339615, 40.785294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.626644, 31.541838, 40.806717>,  <39.995815, 30.863605, 40.777779>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.626644, 31.541838, 40.806717> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.008457, 31.602615, 40.704132>,  <40.237545, 31.639082, 40.642582>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.008457, 31.602615, 40.704132>,  <39.626644, 31.541838, 40.806717>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.008457, 31.602615, 40.704132> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282121, 0.738312, -0.612620,
		0.096266, 0.657121, 0.747612,
		0.954537, 0.151943, -0.256463,
		40.294819, 31.648199, 40.627193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.613579, 32.288834, 40.670410>,  <39.626644, 31.541838, 40.806717>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.613579, 32.288834, 40.670410> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.924889, 32.119823, 40.484612>,  <40.111675, 32.018417, 40.373135>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.924889, 32.119823, 40.484612>,  <39.613579, 32.288834, 40.670410>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.924889, 32.119823, 40.484612> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230953, 0.495258, -0.837484,
		0.583904, 0.759072, 0.287864,
		0.778278, -0.422528, -0.464493,
		40.158371, 31.993065, 40.345264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.953663, 32.870972, 40.265182>,  <39.613579, 32.288834, 40.670410>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.953663, 32.870972, 40.265182> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.047729, 32.513542, 40.112228>,  <40.104168, 32.299084, 40.020454>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.047729, 32.513542, 40.112228>,  <39.953663, 32.870972, 40.265182>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.047729, 32.513542, 40.112228> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458803, 0.244771, -0.854159,
		0.856853, 0.376309, -0.352413,
		0.235167, -0.893576, -0.382385,
		40.118279, 32.245468, 39.997513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.693867, 33.065758, 40.330723>,  <39.953663, 32.870972, 40.265182>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.693867, 33.065758, 40.330723> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.886658, 33.415016, 40.359879>,  <41.002335, 33.624569, 40.377373>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.886658, 33.415016, 40.359879>,  <40.693867, 33.065758, 40.330723>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.886658, 33.415016, 40.359879> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310496, -0.248002, 0.917653,
		0.819320, -0.419660, -0.390640,
		0.481982, 0.873144, 0.072891,
		41.031254, 33.676960, 40.381744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.390591, 32.930618, 40.590897>,  <40.693867, 33.065758, 40.330723>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.390591, 32.930618, 40.590897> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.309124, 33.312927, 40.675770>,  <41.260242, 33.542313, 40.726692>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.309124, 33.312927, 40.675770>,  <41.390591, 32.930618, 40.590897>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.309124, 33.312927, 40.675770> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403278, -0.115585, 0.907748,
		0.892124, 0.270451, -0.361899,
		-0.203671, 0.955770, 0.212183,
		41.248024, 33.599659, 40.739426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.853062, 33.085030, 41.043671>,  <41.390591, 32.930618, 40.590897>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.853062, 33.085030, 41.043671> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.583729, 33.373856, 41.107227>,  <41.422131, 33.547153, 41.145363>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.583729, 33.373856, 41.107227>,  <41.853062, 33.085030, 41.043671>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.583729, 33.373856, 41.107227> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249149, 0.019264, 0.968274,
		0.696098, 0.691555, -0.192873,
		-0.673330, 0.722067, 0.158891,
		41.381729, 33.590477, 41.154896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.230949, 33.535030, 41.408928>,  <41.853062, 33.085030, 41.043671>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.230949, 33.535030, 41.408928> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.849232, 33.644867, 41.456131>,  <41.620201, 33.710770, 41.484451>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.849232, 33.644867, 41.456131>,  <42.230949, 33.535030, 41.408928>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.849232, 33.644867, 41.456131> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165945, 0.158423, 0.973327,
		0.248572, 0.948421, -0.196749,
		-0.954293, 0.274591, 0.118006,
		41.562943, 33.727245, 41.491531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.304272, 34.194633, 41.810783>,  <42.230949, 33.535030, 41.408928>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.304272, 34.194633, 41.810783> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.940712, 34.034542, 41.857643>,  <41.722576, 33.938488, 41.885761>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.940712, 34.034542, 41.857643>,  <42.304272, 34.194633, 41.810783>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.940712, 34.034542, 41.857643> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126848, 0.002283, 0.991919,
		-0.397261, 0.916413, 0.048693,
		-0.908897, -0.400227, 0.117152,
		41.668041, 33.914474, 41.892788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.111240, 34.520531, 42.381664>,  <42.304272, 34.194633, 41.810783>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.111240, 34.520531, 42.381664> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.886097, 34.190464, 42.362518>,  <41.751011, 33.992424, 42.351032>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.886097, 34.190464, 42.362518>,  <42.111240, 34.520531, 42.381664>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.886097, 34.190464, 42.362518> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167481, -0.170561, 0.971009,
		-0.809409, 0.538523, 0.234201,
		-0.562856, -0.825168, -0.047861,
		41.717239, 33.942913, 42.348160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.611835, 34.539364, 42.940109>,  <42.111240, 34.520531, 42.381664>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.611835, 34.539364, 42.940109> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.618435, 34.153786, 42.833870>,  <41.622395, 33.922440, 42.770126>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.618435, 34.153786, 42.833870>,  <41.611835, 34.539364, 42.940109>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.618435, 34.153786, 42.833870> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018588, -0.265880, 0.963827,
		-0.999691, -0.010968, -0.022305,
		0.016501, -0.963944, -0.265594,
		41.623386, 33.864601, 42.754192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.121815, 34.276718, 43.385262>,  <41.611835, 34.539364, 42.940109>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.121815, 34.276718, 43.385262> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.369816, 33.985321, 43.268715>,  <41.518616, 33.810482, 43.198788>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.369816, 33.985321, 43.268715>,  <41.121815, 34.276718, 43.385262>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.369816, 33.985321, 43.268715> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226360, -0.189483, 0.955436,
		-0.751238, -0.658325, 0.047422,
		0.620002, -0.728494, -0.291366,
		41.555817, 33.766773, 43.181305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.893185, 33.702202, 43.640884>,  <41.121815, 34.276718, 43.385262>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.893185, 33.702202, 43.640884> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.276958, 33.619274, 43.564465>,  <41.507225, 33.569519, 43.518612>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.276958, 33.619274, 43.564465>,  <40.893185, 33.702202, 43.640884>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.276958, 33.619274, 43.564465> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129123, -0.279267, 0.951492,
		-0.250613, -0.937566, -0.241171,
		0.959438, -0.207315, -0.191049,
		41.564789, 33.557079, 43.507149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.061890, 33.083950, 44.077206>,  <40.893185, 33.702202, 43.640884>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.061890, 33.083950, 44.077206> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.406281, 33.265659, 43.985676>,  <41.612915, 33.374683, 43.930756>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.406281, 33.265659, 43.985676>,  <41.061890, 33.083950, 44.077206>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.406281, 33.265659, 43.985676> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294294, -0.077960, 0.952530,
		0.414867, -0.887446, -0.200811,
		0.860974, 0.454271, -0.228827,
		41.664574, 33.401939, 43.917027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.579025, 32.741154, 44.459560>,  <41.061890, 33.083950, 44.077206>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.579025, 32.741154, 44.459560> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.750595, 33.092728, 44.376144>,  <41.853539, 33.303673, 44.326096>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.750595, 33.092728, 44.376144>,  <41.579025, 32.741154, 44.459560>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.750595, 33.092728, 44.376144> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365413, 0.042307, 0.929884,
		0.826133, -0.475055, -0.303029,
		0.428926, 0.878938, -0.208542,
		41.879272, 33.356411, 44.313583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.227341, 32.696972, 44.780697>,  <41.579025, 32.741154, 44.459560>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.227341, 32.696972, 44.780697> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.175934, 33.091049, 44.735313>,  <42.145088, 33.327496, 44.708084>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.175934, 33.091049, 44.735313>,  <42.227341, 32.696972, 44.780697>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.175934, 33.091049, 44.735313> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315505, 0.149086, 0.937139,
		0.940181, 0.084641, -0.329994,
		-0.128518, 0.985195, -0.113463,
		42.137379, 33.386608, 44.701275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.897469, 32.909348, 44.993797>,  <42.227341, 32.696972, 44.780697>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.897469, 32.909348, 44.993797> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.653969, 33.226448, 45.006203>,  <42.507870, 33.416710, 45.013645>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.653969, 33.226448, 45.006203>,  <42.897469, 32.909348, 44.993797>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.653969, 33.226448, 45.006203> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078706, 0.021445, 0.996667,
		0.789446, 0.609166, -0.075449,
		-0.608753, 0.792753, 0.031015,
		42.471344, 33.464275, 45.015507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.324909, 33.467617, 45.372025>,  <42.897469, 32.909348, 44.993797>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.324909, 33.467617, 45.372025> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.930634, 33.526554, 45.404762>,  <42.694069, 33.561916, 45.424404>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.930634, 33.526554, 45.404762>,  <43.324909, 33.467617, 45.372025>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.930634, 33.526554, 45.404762> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076522, -0.041427, 0.996207,
		0.150175, 0.988217, 0.029560,
		-0.985693, 0.147344, 0.081841,
		42.634926, 33.570759, 45.429314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<35.034962, 31.014818, 47.372131> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.220573, 30.796719, 47.092880>,  <35.331940, 30.665859, 46.925331>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.220573, 30.796719, 47.092880>,  <35.034962, 31.014818, 47.372131>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.220573, 30.796719, 47.092880> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248319, 0.676444, -0.693370,
		0.850302, 0.495103, 0.178496,
		0.464032, -0.545249, -0.698125,
		35.359783, 30.633144, 46.883442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.458233, 31.512596, 46.883125>,  <35.034962, 31.014818, 47.372131>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.458233, 31.512596, 46.883125> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.443085, 31.169397, 46.678223>,  <35.433998, 30.963478, 46.555283>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.443085, 31.169397, 46.678223>,  <35.458233, 31.512596, 46.883125>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.443085, 31.169397, 46.678223> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057070, 0.513645, -0.856103,
		0.997652, -0.003182, -0.068416,
		-0.037866, -0.857997, -0.512257,
		35.431725, 30.911999, 46.524544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.000725, 31.509510, 46.403408>,  <35.458233, 31.512596, 46.883125>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.000725, 31.509510, 46.403408> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.706779, 31.274630, 46.267666>,  <35.530411, 31.133701, 46.186218>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.706779, 31.274630, 46.267666>,  <36.000725, 31.509510, 46.403408>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.706779, 31.274630, 46.267666> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013969, 0.513371, -0.858053,
		0.678069, -0.625813, -0.385461,
		-0.734865, -0.587204, -0.339359,
		35.486320, 31.098469, 46.165859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.077152, 31.330509, 45.689590>,  <36.000725, 31.509510, 46.403408>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.077152, 31.330509, 45.689590> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.689987, 31.240534, 45.734402>,  <35.457687, 31.186548, 45.761288>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.689987, 31.240534, 45.734402>,  <36.077152, 31.330509, 45.689590>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.689987, 31.240534, 45.734402> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203570, 0.440502, -0.874367,
		0.147330, -0.869115, -0.472157,
		-0.967911, -0.224938, 0.112027,
		35.399612, 31.173052, 45.768009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.010300, 31.228838, 45.048508>,  <36.077152, 31.330509, 45.689590>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.010300, 31.228838, 45.048508> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.645382, 31.248209, 45.211174>,  <35.426434, 31.259830, 45.308773>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.645382, 31.248209, 45.211174>,  <36.010300, 31.228838, 45.048508>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.645382, 31.248209, 45.211174> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367615, 0.340841, -0.865267,
		-0.180513, -0.938873, -0.293144,
		-0.912291, 0.048427, 0.406670,
		35.371696, 31.262737, 45.333176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.644379, 31.190725, 44.365395>,  <36.010300, 31.228838, 45.048508>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.644379, 31.190725, 44.365395> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.374157, 31.283672, 44.645290>,  <35.212025, 31.339439, 44.813229>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.374157, 31.283672, 44.645290>,  <35.644379, 31.190725, 44.365395>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.374157, 31.283672, 44.645290> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577467, 0.423333, -0.698083,
		-0.458435, -0.875668, -0.151799,
		-0.675551, 0.232366, 0.699740,
		35.171490, 31.353382, 44.855213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.947319, 30.919479, 44.139858>,  <35.644379, 31.190725, 44.365395>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.947319, 30.919479, 44.139858> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.899178, 31.229961, 44.387413>,  <34.870293, 31.416250, 44.535946>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.899178, 31.229961, 44.387413>,  <34.947319, 30.919479, 44.139858>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.899178, 31.229961, 44.387413> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383355, 0.538723, -0.750211,
		-0.915726, -0.327544, 0.232724,
		-0.120353, 0.776204, 0.618888,
		34.863071, 31.462822, 44.573078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.315475, 31.202446, 43.993652>,  <34.947319, 30.919479, 44.139858>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.315475, 31.202446, 43.993652> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.504120, 31.500441, 44.182365>,  <34.617306, 31.679237, 44.295593>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.504120, 31.500441, 44.182365>,  <34.315475, 31.202446, 43.993652>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.504120, 31.500441, 44.182365> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267855, 0.630768, -0.728275,
		-0.840142, 0.217092, 0.497024,
		0.471610, 0.744985, 0.471786,
		34.645603, 31.723936, 44.323902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.863075, 31.790537, 43.907204>,  <34.315475, 31.202446, 43.993652>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.863075, 31.790537, 43.907204> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.229206, 31.933821, 43.980816>,  <34.448883, 32.019791, 44.024982>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.229206, 31.933821, 43.980816>,  <33.863075, 31.790537, 43.907204>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.229206, 31.933821, 43.980816> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154932, 0.735028, -0.660098,
		-0.371722, 0.575691, 0.728288,
		0.915325, 0.358208, 0.184033,
		34.503803, 32.041283, 44.036026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.807049, 32.513615, 43.981068>,  <33.863075, 31.790537, 43.907204>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.807049, 32.513615, 43.981068> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.181538, 32.432716, 43.866123>,  <34.406231, 32.384178, 43.797157>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.181538, 32.432716, 43.866123>,  <33.807049, 32.513615, 43.981068>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.181538, 32.432716, 43.866123> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106429, 0.616147, -0.780408,
		0.334892, 0.761222, 0.555328,
		0.936227, -0.202249, -0.287358,
		34.462406, 32.372040, 43.779915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.010632, 33.173763, 43.688629>,  <33.807049, 32.513615, 43.981068>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.010632, 33.173763, 43.688629> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.296219, 32.930271, 43.550240>,  <34.467571, 32.784176, 43.467205>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.296219, 32.930271, 43.550240>,  <34.010632, 33.173763, 43.688629>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.296219, 32.930271, 43.550240> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001322, 0.495289, -0.868727,
		0.700178, 0.619786, 0.354425,
		0.713968, -0.608732, -0.345971,
		34.510410, 32.747650, 43.446449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.450775, 33.555248, 43.491337>,  <34.010632, 33.173763, 43.688629>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.450775, 33.555248, 43.491337> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.536942, 33.228565, 43.277199>,  <34.588642, 33.032555, 43.148716>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.536942, 33.228565, 43.277199>,  <34.450775, 33.555248, 43.491337>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.536942, 33.228565, 43.277199> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028958, 0.553314, -0.832470,
		0.976093, 0.163827, 0.142844,
		0.215418, -0.816704, -0.535341,
		34.601566, 32.983555, 43.116596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.031559, 33.716480, 43.034489>,  <34.450775, 33.555248, 43.491337>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.031559, 33.716480, 43.034489> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.817589, 33.412304, 42.887196>,  <34.689209, 33.229797, 42.798820>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.817589, 33.412304, 42.887196>,  <35.031559, 33.716480, 43.034489>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.817589, 33.412304, 42.887196> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010476, 0.429825, -0.902851,
		0.844837, -0.486813, -0.221957,
		-0.534922, -0.760437, -0.368232,
		34.657112, 33.184174, 42.776726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.215549, 33.665237, 42.318405>,  <35.031559, 33.716480, 43.034489>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.215549, 33.665237, 42.318405> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.900604, 33.418640, 42.318253>,  <34.711639, 33.270683, 42.318161>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.900604, 33.418640, 42.318253>,  <35.215549, 33.665237, 42.318405>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.900604, 33.418640, 42.318253> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395850, 0.506039, -0.766307,
		0.472614, -0.603211, -0.642474,
		-0.787362, -0.616491, -0.000380,
		34.664398, 33.233692, 42.318138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.999649, 33.476894, 42.458599>,  <35.215549, 33.665237, 42.318405>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.999649, 33.476894, 42.458599> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.182720, 33.832222, 42.473694>,  <36.292564, 34.045418, 42.482750>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.182720, 33.832222, 42.473694>,  <35.999649, 33.476894, 42.458599>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.182720, 33.832222, 42.473694> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308480, -0.198455, 0.930298,
		0.833889, -0.414136, -0.364857,
		0.457678, 0.888317, 0.037737,
		36.320023, 34.098717, 42.485016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.590405, 33.347908, 42.761650>,  <35.999649, 33.476894, 42.458599>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.590405, 33.347908, 42.761650> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.480453, 33.727333, 42.824482>,  <36.414482, 33.954987, 42.862183>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.480453, 33.727333, 42.824482>,  <36.590405, 33.347908, 42.761650>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.480453, 33.727333, 42.824482> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230248, -0.093682, 0.968612,
		0.933503, 0.302417, -0.192653,
		-0.274877, 0.948561, 0.157084,
		36.397991, 34.011902, 42.871609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.142818, 33.619678, 43.165096>,  <36.590405, 33.347908, 42.761650>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.142818, 33.619678, 43.165096> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.855988, 33.889130, 43.236675>,  <36.683887, 34.050800, 43.279621>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.855988, 33.889130, 43.236675>,  <37.142818, 33.619678, 43.165096>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.855988, 33.889130, 43.236675> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197434, -0.049912, 0.979045,
		0.668444, 0.737383, -0.097206,
		-0.717079, 0.673628, 0.178947,
		36.640865, 34.091217, 43.290359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.395393, 34.206993, 43.541443>,  <37.142818, 33.619678, 43.165096>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.395393, 34.206993, 43.541443> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.003071, 34.218418, 43.618591>,  <36.767677, 34.225273, 43.664879>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.003071, 34.218418, 43.618591>,  <37.395393, 34.206993, 43.541443>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.003071, 34.218418, 43.618591> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194963, 0.133600, 0.971669,
		0.001984, 0.990624, -0.136604,
		-0.980809, 0.028560, 0.192870,
		36.708828, 34.226986, 43.676453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.400875, 34.629402, 44.041393>,  <37.395393, 34.206993, 43.541443>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.400875, 34.629402, 44.041393> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.037460, 34.462284, 44.043007>,  <36.819412, 34.362015, 44.043976>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.037460, 34.462284, 44.043007>,  <37.400875, 34.629402, 44.041393>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.037460, 34.462284, 44.043007> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047209, 0.112240, 0.992559,
		-0.415135, 0.901584, -0.121698,
		-0.908534, -0.417791, 0.004032,
		36.764900, 34.336948, 44.044216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.013905, 35.017830, 44.551754>,  <37.400875, 34.629402, 44.041393>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.013905, 35.017830, 44.551754> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.830685, 34.662891, 44.530556>,  <36.720753, 34.449928, 44.517838>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.830685, 34.662891, 44.530556>,  <37.013905, 35.017830, 44.551754>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.830685, 34.662891, 44.530556> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176950, 0.032598, 0.983680,
		-0.871137, 0.459950, -0.171948,
		-0.458049, -0.887346, -0.052991,
		36.693272, 34.396687, 44.514660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.486702, 35.020977, 45.104244>,  <37.013905, 35.017830, 44.551754>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.486702, 35.020977, 45.104244> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.539303, 34.633892, 45.018230>,  <36.570862, 34.401642, 44.966621>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.539303, 34.633892, 45.018230>,  <36.486702, 35.020977, 45.104244>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.539303, 34.633892, 45.018230> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083029, -0.226911, 0.970370,
		-0.987833, -0.109747, -0.110187,
		0.131498, -0.967712, -0.215038,
		36.578751, 34.343578, 44.953720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.036293, 34.668495, 45.522106>,  <36.486702, 35.020977, 45.104244>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.036293, 34.668495, 45.522106> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.295223, 34.380791, 45.421207>,  <36.450581, 34.208168, 45.360668>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.295223, 34.380791, 45.421207>,  <36.036293, 34.668495, 45.522106>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.295223, 34.380791, 45.421207> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034208, -0.358022, 0.933086,
		-0.761443, -0.595385, -0.256362,
		0.647329, -0.719262, -0.252246,
		36.489422, 34.165012, 45.345535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.891167, 33.992321, 45.939697>,  <36.036293, 34.668495, 45.522106>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.891167, 33.992321, 45.939697> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.264206, 33.919743, 45.814899>,  <36.488029, 33.876198, 45.740021>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.264206, 33.919743, 45.814899>,  <35.891167, 33.992321, 45.939697>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.264206, 33.919743, 45.814899> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158758, -0.570102, 0.806089,
		-0.324129, -0.801288, -0.502870,
		0.932597, -0.181442, -0.311997,
		36.543983, 33.865311, 45.721302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.026447, 33.250969, 45.941689>,  <35.891167, 33.992321, 45.939697>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.026447, 33.250969, 45.941689> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.378735, 33.438290, 45.970074>,  <36.590107, 33.550682, 45.987106>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.378735, 33.438290, 45.970074>,  <36.026447, 33.250969, 45.941689>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.378735, 33.438290, 45.970074> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154635, -0.425899, 0.891459,
		0.447695, -0.774147, -0.447511,
		0.880714, 0.468302, 0.070963,
		36.642948, 33.578781, 45.991364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.547024, 32.768509, 46.028675>,  <36.026447, 33.250969, 45.941689>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.547024, 32.768509, 46.028675> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.674183, 33.102028, 46.209217>,  <36.750477, 33.302139, 46.317543>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.674183, 33.102028, 46.209217>,  <36.547024, 32.768509, 46.028675>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.674183, 33.102028, 46.209217> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409243, -0.550088, 0.727959,
		0.855255, -0.046704, -0.516098,
		0.317898, 0.833800, 0.451352,
		36.769554, 33.352169, 46.344624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.251495, 32.600994, 46.177025>,  <36.547024, 32.768509, 46.028675>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.251495, 32.600994, 46.177025> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.180901, 32.916634, 46.412369>,  <37.138542, 33.106018, 46.553577>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.180901, 32.916634, 46.412369>,  <37.251495, 32.600994, 46.177025>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.180901, 32.916634, 46.412369> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579288, -0.399993, 0.710233,
		0.795786, 0.466181, -0.386522,
		-0.176491, 0.789101, 0.588362,
		37.127953, 33.153362, 46.588879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.897888, 32.922249, 46.394882>,  <37.251495, 32.600994, 46.177025>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.897888, 32.922249, 46.394882> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.648674, 33.088436, 46.659977>,  <37.499146, 33.188148, 46.819035>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.648674, 33.088436, 46.659977>,  <37.897888, 32.922249, 46.394882>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.648674, 33.088436, 46.659977> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610663, -0.271103, 0.744038,
		0.488791, 0.868270, -0.084802,
		-0.623036, 0.415464, 0.662733,
		37.461761, 33.213074, 46.858795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.304691, 33.391418, 46.853420>,  <37.897888, 32.922249, 46.394882>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.304691, 33.391418, 46.853420> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.973877, 33.272400, 47.044197>,  <37.775387, 33.200989, 47.158665>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.973877, 33.272400, 47.044197>,  <38.304691, 33.391418, 46.853420>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.973877, 33.272400, 47.044197> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556206, -0.310118, 0.771013,
		-0.081500, 0.902937, 0.421975,
		-0.827038, -0.297543, 0.476944,
		37.725765, 33.183136, 47.187279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.219448, 34.106018, 47.100456>,  <38.304691, 33.391418, 46.853420>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.219448, 34.106018, 47.100456> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.495277, 34.373024, 47.212826>,  <38.660774, 34.533226, 47.280247>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.495277, 34.373024, 47.212826>,  <38.219448, 34.106018, 47.100456>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.495277, 34.373024, 47.212826> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284793, 0.606587, -0.742256,
		-0.665872, 0.431832, 0.608388,
		0.689570, 0.667513, 0.280927,
		38.702148, 34.573277, 47.297104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.928120, 34.734581, 46.881599>,  <38.219448, 34.106018, 47.100456>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.928120, 34.734581, 46.881599> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.316006, 34.815605, 46.936180>,  <38.548737, 34.864220, 46.968929>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.316006, 34.815605, 46.936180>,  <37.928120, 34.734581, 46.881599>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.316006, 34.815605, 46.936180> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037539, 0.675684, -0.736235,
		-0.241330, 0.708817, 0.662826,
		0.969717, 0.202557, 0.136454,
		38.606922, 34.876373, 46.977116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.958599, 35.404499, 47.046745>,  <37.928120, 34.734581, 46.881599>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.958599, 35.404499, 47.046745> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.299946, 35.270950, 46.886597>,  <38.504753, 35.190823, 46.790508>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.299946, 35.270950, 46.886597>,  <37.958599, 35.404499, 47.046745>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.299946, 35.270950, 46.886597> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099300, 0.649840, -0.753556,
		0.511764, 0.682817, 0.521400,
		0.853368, -0.333868, -0.400369,
		38.555958, 35.170792, 46.766487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.087963, 35.908669, 46.629910>,  <37.958599, 35.404499, 47.046745>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.087963, 35.908669, 46.629910> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.369335, 35.644257, 46.525429>,  <38.538158, 35.485611, 46.462742>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.369335, 35.644257, 46.525429>,  <38.087963, 35.908669, 46.629910>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.369335, 35.644257, 46.525429> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136975, 0.486680, -0.862775,
		0.697439, 0.571126, 0.432891,
		0.703432, -0.661028, -0.261200,
		38.580364, 35.445950, 46.447067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.627548, 36.334061, 46.462738>,  <38.087963, 35.908669, 46.629910>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.627548, 36.334061, 46.462738> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.663712, 35.979801, 46.280552>,  <38.685410, 35.767246, 46.171238>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.663712, 35.979801, 46.280552>,  <38.627548, 36.334061, 46.462738>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.663712, 35.979801, 46.280552> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120117, 0.463699, -0.877812,
		0.988635, 0.024648, 0.148302,
		0.090404, -0.885649, -0.455469,
		38.690834, 35.714108, 46.143909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.995888, 36.507736, 45.938114>,  <38.627548, 36.334061, 46.462738>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.995888, 36.507736, 45.938114> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.851719, 36.163116, 45.795101>,  <38.765217, 35.956345, 45.709293>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.851719, 36.163116, 45.795101>,  <38.995888, 36.507736, 45.938114>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.851719, 36.163116, 45.795101> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103734, 0.343892, -0.933262,
		0.927004, -0.373456, -0.034574,
		-0.360422, -0.861551, -0.357529,
		38.743591, 35.904652, 45.687843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.274029, 36.519226, 45.371307>,  <38.995888, 36.507736, 45.938114>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.274029, 36.519226, 45.371307> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.987152, 36.245232, 45.320019>,  <38.815025, 36.080837, 45.289246>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.987152, 36.245232, 45.320019>,  <39.274029, 36.519226, 45.371307>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.987152, 36.245232, 45.320019> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090245, 0.273730, -0.957563,
		0.691011, -0.675182, -0.258133,
		-0.717188, -0.684982, -0.128219,
		38.771996, 36.039738, 45.281551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.389278, 36.216419, 44.751022>,  <39.274029, 36.519226, 45.371307>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.389278, 36.216419, 44.751022> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.004074, 36.118778, 44.796677>,  <38.772953, 36.060192, 44.824070>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.004074, 36.118778, 44.796677>,  <39.389278, 36.216419, 44.751022>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.004074, 36.118778, 44.796677> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138737, 0.086041, -0.986585,
		0.231009, -0.965925, -0.116724,
		-0.963010, -0.244104, 0.114133,
		38.715172, 36.045547, 44.830917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.217674, 35.674107, 44.286762>,  <39.389278, 36.216419, 44.751022>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.217674, 35.674107, 44.286762> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.873619, 35.861240, 44.368042>,  <38.667187, 35.973522, 44.416809>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.873619, 35.861240, 44.368042>,  <39.217674, 35.674107, 44.286762>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.873619, 35.861240, 44.368042> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138725, 0.168790, -0.975841,
		-0.490829, -0.867549, -0.080283,
		-0.860141, 0.467834, 0.203197,
		38.615578, 36.001591, 44.429001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.755901, 35.382408, 43.789494>,  <39.217674, 35.674107, 44.286762>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.755901, 35.382408, 43.789494> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.592369, 35.721939, 43.923573>,  <38.494251, 35.925659, 44.004021>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.592369, 35.721939, 43.923573>,  <38.755901, 35.382408, 43.789494>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.592369, 35.721939, 43.923573> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327794, 0.206200, -0.921972,
		-0.851711, -0.486801, 0.193941,
		-0.408826, 0.848826, 0.335193,
		38.469723, 35.976585, 44.024132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.178341, 35.437035, 43.372219>,  <38.755901, 35.382408, 43.789494>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.178341, 35.437035, 43.372219> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.240566, 35.808151, 43.507870>,  <38.277901, 36.030823, 43.589260>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.240566, 35.808151, 43.507870>,  <38.178341, 35.437035, 43.372219>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.240566, 35.808151, 43.507870> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363499, 0.372981, -0.853671,
		-0.918515, 0.009527, 0.395272,
		0.155562, 0.927790, 0.339125,
		38.287235, 36.086487, 43.609608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.526970, 35.806358, 43.235069>,  <38.178341, 35.437035, 43.372219>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.526970, 35.806358, 43.235069> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.828976, 36.064610, 43.280895>,  <38.010178, 36.219559, 43.308392>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.828976, 36.064610, 43.280895>,  <37.526970, 35.806358, 43.235069>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.828976, 36.064610, 43.280895> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176194, 0.368049, -0.912960,
		-0.631598, 0.669108, 0.391636,
		0.755010, 0.645627, 0.114566,
		38.055477, 36.258297, 43.315266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.282330, 36.356441, 42.790375>,  <37.526970, 35.806358, 43.235069>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.282330, 36.356441, 42.790375> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.666885, 36.444626, 42.856258>,  <37.897617, 36.497536, 42.895786>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.666885, 36.444626, 42.856258>,  <37.282330, 36.356441, 42.790375>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.666885, 36.444626, 42.856258> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018350, 0.648546, -0.760954,
		-0.274578, 0.728551, 0.627551,
		0.961390, 0.220457, 0.164707,
		37.955303, 36.510761, 42.905670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.331684, 37.065678, 42.681206>,  <37.282330, 36.356441, 42.790375>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.331684, 37.065678, 42.681206> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.697708, 36.917522, 42.617359>,  <37.917324, 36.828629, 42.579052>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.697708, 36.917522, 42.617359>,  <37.331684, 37.065678, 42.681206>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.697708, 36.917522, 42.617359> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049762, 0.496427, -0.866651,
		0.400239, 0.785094, 0.472691,
		0.915059, -0.370389, -0.159621,
		37.972225, 36.806404, 42.569473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<28.729671, 40.179955, 38.904209> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.532070, 40.523422, 38.849583>,  <28.413509, 40.729504, 38.816807>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.532070, 40.523422, 38.849583>,  <28.729671, 40.179955, 38.904209>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.532070, 40.523422, 38.849583> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.635762, -0.463879, -0.616946,
		-0.593102, -0.217950, 0.775067,
		-0.494001, 0.858670, -0.136563,
		28.383869, 40.781025, 38.808613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.033754, 40.205219, 39.122601>,  <28.729671, 40.179955, 38.904209>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.033754, 40.205219, 39.122601> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.001791, 40.479477, 38.833183>,  <27.982613, 40.644032, 38.659534>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.001791, 40.479477, 38.833183>,  <28.033754, 40.205219, 39.122601>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.001791, 40.479477, 38.833183> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.668535, -0.575268, -0.471305,
		-0.739375, 0.446050, 0.504345,
		-0.079908, 0.685643, -0.723539,
		27.977819, 40.685169, 38.616123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.339697, 40.235626, 39.002110>,  <28.033754, 40.205219, 39.122601>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.339697, 40.235626, 39.002110> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.517782, 40.392162, 38.679958>,  <27.624634, 40.486084, 38.486668>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.517782, 40.392162, 38.679958>,  <27.339697, 40.235626, 39.002110>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.517782, 40.392162, 38.679958> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.574428, -0.565144, -0.592153,
		-0.686890, 0.726267, -0.026811,
		0.445213, 0.391342, -0.805380,
		27.651346, 40.509563, 38.438343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.736803, 40.325462, 38.506287>,  <27.339697, 40.235626, 39.002110>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.736803, 40.325462, 38.506287> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.094582, 40.315510, 38.327694>,  <27.309248, 40.309540, 38.220539>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.094582, 40.315510, 38.327694>,  <26.736803, 40.325462, 38.506287>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.094582, 40.315510, 38.327694> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365068, -0.617244, -0.696947,
		-0.258250, 0.786378, -0.561174,
		0.894445, -0.024880, -0.446485,
		27.362915, 40.308044, 38.193748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.540876, 40.405128, 37.858643>,  <26.736803, 40.325462, 38.506287>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.540876, 40.405128, 37.858643> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.915041, 40.264339, 37.845280>,  <27.139540, 40.179867, 37.837261>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.915041, 40.264339, 37.845280>,  <26.540876, 40.405128, 37.858643>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.915041, 40.264339, 37.845280> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301163, -0.743724, -0.596805,
		0.185211, 0.568322, -0.801690,
		0.935413, -0.351974, -0.033412,
		27.195665, 40.158749, 37.835255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.682226, 40.442307, 37.076366>,  <26.540876, 40.405128, 37.858643>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.682226, 40.442307, 37.076366> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.940428, 40.182236, 37.236664>,  <27.095348, 40.026196, 37.332844>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.940428, 40.182236, 37.236664>,  <26.682226, 40.442307, 37.076366>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.940428, 40.182236, 37.236664> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288545, -0.693422, -0.660233,
		0.707153, 0.310550, -0.635211,
		0.645505, -0.650173, 0.400748,
		27.134079, 39.987183, 37.356888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.940712, 40.125896, 36.602005>,  <26.682226, 40.442307, 37.076366>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.940712, 40.125896, 36.602005> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.060266, 39.850842, 36.866676>,  <27.132000, 39.685810, 37.025478>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.060266, 39.850842, 36.866676>,  <26.940712, 40.125896, 36.602005>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.060266, 39.850842, 36.866676> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174658, -0.721081, -0.670475,
		0.938169, 0.084827, -0.335623,
		0.298886, -0.687638, 0.661681,
		27.149933, 39.644550, 37.065182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.405029, 39.656902, 36.219360>,  <26.940712, 40.125896, 36.602005>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.405029, 39.656902, 36.219360> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.245495, 39.480957, 36.541218>,  <27.149775, 39.375389, 36.734333>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.245495, 39.480957, 36.541218>,  <27.405029, 39.656902, 36.219360>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.245495, 39.480957, 36.541218> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187675, -0.819727, -0.541133,
		0.897613, -0.366834, 0.244384,
		-0.398834, -0.439864, 0.804644,
		27.125845, 39.348999, 36.782612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.817930, 38.973583, 36.423779>,  <27.405029, 39.656902, 36.219360>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.817930, 38.973583, 36.423779> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.458261, 38.906208, 36.585327>,  <27.242460, 38.865784, 36.682259>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.458261, 38.906208, 36.585327>,  <27.817930, 38.973583, 36.423779>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.458261, 38.906208, 36.585327> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021623, -0.938925, -0.343443,
		0.437057, -0.300082, 0.847899,
		-0.899174, -0.168438, 0.403875,
		27.188509, 38.855675, 36.706490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.908998, 38.395920, 36.844364>,  <27.817930, 38.973583, 36.423779>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.908998, 38.395920, 36.844364> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.514513, 38.397434, 36.778191>,  <27.277822, 38.398342, 36.738487>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.514513, 38.397434, 36.778191>,  <27.908998, 38.395920, 36.844364>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.514513, 38.397434, 36.778191> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021266, -0.988552, -0.149376,
		-0.164101, -0.150834, 0.974844,
		-0.986214, 0.003782, -0.165430,
		27.218649, 38.398567, 36.728561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.647800, 37.791813, 37.141624>,  <27.908998, 38.395920, 36.844364>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.647800, 37.791813, 37.141624> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.367395, 37.911766, 36.882812>,  <27.199152, 37.983738, 36.727524>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.367395, 37.911766, 36.882812>,  <27.647800, 37.791813, 37.141624>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.367395, 37.911766, 36.882812> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180081, -0.952325, -0.246270,
		-0.690038, -0.056120, 0.721595,
		-0.701013, 0.299881, -0.647034,
		27.157091, 38.001732, 36.688702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.090183, 37.429077, 37.336899>,  <27.647800, 37.791813, 37.141624>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.090183, 37.429077, 37.336899> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.012028, 37.541744, 36.961136>,  <26.965136, 37.609344, 36.735676>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.012028, 37.541744, 36.961136>,  <27.090183, 37.429077, 37.336899>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.012028, 37.541744, 36.961136> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203847, -0.948615, -0.242025,
		-0.959307, 0.144207, 0.242763,
		-0.195387, 0.281663, -0.939409,
		26.953411, 37.626244, 36.679314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.464689, 37.188808, 37.197388>,  <27.090183, 37.429077, 37.336899>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.464689, 37.188808, 37.197388> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.632000, 37.253075, 36.839790>,  <26.732386, 37.291634, 36.625233>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.632000, 37.253075, 36.839790>,  <26.464689, 37.188808, 37.197388>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.632000, 37.253075, 36.839790> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363439, -0.872408, -0.326828,
		-0.832440, 0.461618, -0.306516,
		0.418277, 0.160665, -0.893997,
		26.757483, 37.301273, 36.571590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.985174, 36.959702, 36.688675>,  <26.464689, 37.188808, 37.197388>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.985174, 36.959702, 36.688675> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.337641, 36.970207, 36.499847>,  <26.549122, 36.976509, 36.386551>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.337641, 36.970207, 36.499847>,  <25.985174, 36.959702, 36.688675>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.337641, 36.970207, 36.499847> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172936, -0.911366, -0.373503,
		-0.440040, 0.410757, -0.798525,
		0.881168, 0.026262, -0.472073,
		26.601992, 36.978085, 36.358227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.804979, 36.566799, 36.055763>,  <25.985174, 36.959702, 36.688675>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.804979, 36.566799, 36.055763> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.204899, 36.558807, 36.055725>,  <26.444851, 36.554012, 36.055702>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.204899, 36.558807, 36.055725>,  <25.804979, 36.566799, 36.055763>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.204899, 36.558807, 36.055725> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018876, -0.942857, -0.332664,
		0.006560, 0.332599, -0.943045,
		0.999800, -0.019983, -0.000093,
		26.504839, 36.552811, 36.055698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.010345, 36.293613, 35.492496>,  <25.804979, 36.566799, 36.055763>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.010345, 36.293613, 35.492496> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.351950, 36.238956, 35.693291>,  <26.556913, 36.206161, 35.813766>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.351950, 36.238956, 35.693291>,  <26.010345, 36.293613, 35.492496>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.351950, 36.238956, 35.693291> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059968, -0.932603, -0.355886,
		0.516785, 0.334034, -0.788261,
		0.854012, -0.136646, 0.501987,
		26.608154, 36.197964, 35.843887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.527615, 36.169765, 34.969444>,  <26.010345, 36.293613, 35.492496>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.527615, 36.169765, 34.969444> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.622686, 36.012131, 35.324570>,  <26.679729, 35.917549, 35.537643>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.622686, 36.012131, 35.324570>,  <26.527615, 36.169765, 34.969444>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.622686, 36.012131, 35.324570> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179243, -0.916099, -0.358655,
		0.954662, -0.073888, -0.288376,
		0.237680, -0.394084, 0.887809,
		26.693991, 35.893906, 35.590912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.883055, 35.615398, 34.758419>,  <26.527615, 36.169765, 34.969444>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.883055, 35.615398, 34.758419> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.829103, 35.539398, 35.147408>,  <26.796732, 35.493797, 35.380802>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.829103, 35.539398, 35.147408>,  <26.883055, 35.615398, 34.758419>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.829103, 35.539398, 35.147408> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022151, -0.981777, -0.188742,
		0.990615, -0.003916, 0.136629,
		-0.134878, -0.189997, 0.972476,
		26.788639, 35.482399, 35.439152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.428612, 35.162064, 34.940548>,  <26.883055, 35.615398, 34.758419>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.428612, 35.162064, 34.940548> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.175503, 35.096447, 35.243256>,  <27.023638, 35.057076, 35.424881>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.175503, 35.096447, 35.243256>,  <27.428612, 35.162064, 34.940548>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.175503, 35.096447, 35.243256> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008474, -0.975778, -0.218600,
		0.774293, -0.144736, 0.616053,
		-0.632770, -0.164040, 0.756765,
		26.985672, 35.047234, 35.470284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.021141, 34.910519, 34.961124>,  <27.428612, 35.162064, 34.940548>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.021141, 34.910519, 34.961124> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.164797, 35.236134, 34.778538>,  <28.250990, 35.431503, 34.668987>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.164797, 35.236134, 34.778538>,  <28.021141, 34.910519, 34.961124>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.164797, 35.236134, 34.778538> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581292, 0.577748, 0.572980,
		0.730150, 0.059559, 0.680687,
		0.359139, 0.814039, -0.456464,
		28.272539, 35.480347, 34.641598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.350126, 35.612801, 35.189709>,  <28.021141, 34.910519, 34.961124>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.350126, 35.612801, 35.189709> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.709949, 35.472157, 35.293381>,  <28.925842, 35.387772, 35.355583>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.709949, 35.472157, 35.293381>,  <28.350126, 35.612801, 35.189709>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.709949, 35.472157, 35.293381> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232909, 0.888055, 0.396373,
		-0.369530, -0.296196, 0.880747,
		0.899556, -0.351606, 0.259176,
		28.979816, 35.366676, 35.371132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.431868, 35.611290, 35.938618>,  <28.350126, 35.612801, 35.189709>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.431868, 35.611290, 35.938618> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.806221, 35.625706, 35.798431>,  <29.030832, 35.634354, 35.714321>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.806221, 35.625706, 35.798431>,  <28.431868, 35.611290, 35.938618>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.806221, 35.625706, 35.798431> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132307, 0.885992, 0.444424,
		0.326522, -0.462297, 0.824417,
		0.935883, 0.036038, -0.350461,
		29.086987, 35.636517, 35.693295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.636747, 35.999519, 36.398846>,  <28.431868, 35.611290, 35.938618>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.636747, 35.999519, 36.398846> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.949154, 36.000904, 36.149044>,  <29.136599, 36.001736, 35.999165>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.949154, 36.000904, 36.149044>,  <28.636747, 35.999519, 36.398846>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.949154, 36.000904, 36.149044> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348646, 0.827229, 0.440610,
		0.518130, -0.561854, 0.644873,
		0.781017, 0.003461, -0.624500,
		29.183458, 36.001942, 35.961693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.215689, 35.969364, 36.806004>,  <28.636747, 35.999519, 36.398846>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.215689, 35.969364, 36.806004> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.352474, 36.114941, 36.459454>,  <29.434546, 36.202286, 36.251522>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.352474, 36.114941, 36.459454>,  <29.215689, 35.969364, 36.806004>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.352474, 36.114941, 36.459454> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372844, 0.793736, 0.480594,
		0.862583, -0.487367, 0.135732,
		0.341961, 0.363945, -0.866376,
		29.455063, 36.224125, 36.199539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.935387, 36.109222, 36.929752>,  <29.215689, 35.969364, 36.806004>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.935387, 36.109222, 36.929752> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.814722, 36.328533, 36.617756>,  <29.742323, 36.460121, 36.430557>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.814722, 36.328533, 36.617756>,  <29.935387, 36.109222, 36.929752>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.814722, 36.328533, 36.617756> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284276, 0.832617, 0.475328,
		0.910048, -0.078344, -0.407032,
		-0.301663, 0.548281, -0.779992,
		29.724224, 36.493019, 36.383759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.599354, 36.453274, 36.691139>,  <29.935387, 36.109222, 36.929752>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.599354, 36.453274, 36.691139> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.304794, 36.667496, 36.525780>,  <30.128059, 36.796028, 36.426563>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.304794, 36.667496, 36.525780>,  <30.599354, 36.453274, 36.691139>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.304794, 36.667496, 36.525780> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379992, 0.832968, 0.402206,
		0.559752, 0.139095, -0.816903,
		-0.736399, 0.535552, -0.413400,
		30.083874, 36.828163, 36.401760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.854067, 37.098534, 36.563122>,  <30.599354, 36.453274, 36.691139>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.854067, 37.098534, 36.563122> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.461582, 37.174892, 36.551960>,  <30.226091, 37.220707, 36.545261>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.461582, 37.174892, 36.551960>,  <30.854067, 37.098534, 36.563122>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.461582, 37.174892, 36.551960> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165281, 0.906378, 0.388795,
		0.099513, 0.376879, -0.920901,
		-0.981213, 0.190897, -0.027905,
		30.167217, 37.232162, 36.543587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.682640, 37.704712, 36.119362>,  <30.854067, 37.098534, 36.563122>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.682640, 37.704712, 36.119362> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.423798, 37.648693, 36.419132>,  <30.268492, 37.615082, 36.598995>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.423798, 37.648693, 36.419132>,  <30.682640, 37.704712, 36.119362>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.423798, 37.648693, 36.419132> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116488, 0.953280, 0.278727,
		-0.753450, 0.267665, -0.600557,
		-0.647104, -0.140049, 0.749428,
		30.229666, 37.606678, 36.643959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.422735, 38.428764, 36.265629>,  <30.682640, 37.704712, 36.119362>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.422735, 38.428764, 36.265629> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.304958, 38.207424, 36.577297>,  <30.234293, 38.074619, 36.764297>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.304958, 38.207424, 36.577297>,  <30.422735, 38.428764, 36.265629>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.304958, 38.207424, 36.577297> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052232, 0.804776, 0.591275,
		-0.954241, 0.214794, -0.208057,
		-0.294442, -0.553352, 0.779170,
		30.216625, 38.041420, 36.811047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.830280, 38.661926, 36.510895>,  <30.422735, 38.428764, 36.265629>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.830280, 38.661926, 36.510895> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.962532, 38.470413, 36.836216>,  <30.041883, 38.355507, 37.031406>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.962532, 38.470413, 36.836216>,  <29.830280, 38.661926, 36.510895>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.962532, 38.470413, 36.836216> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077590, 0.845057, 0.529017,
		-0.940565, -0.238013, 0.242254,
		0.330632, -0.478778, 0.813298,
		30.061722, 38.326778, 37.080204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.433842, 38.933548, 37.151165>,  <29.830280, 38.661926, 36.510895>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.433842, 38.933548, 37.151165> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.756933, 38.760769, 37.311661>,  <29.950788, 38.657101, 37.407959>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.756933, 38.760769, 37.311661>,  <29.433842, 38.933548, 37.151165>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.756933, 38.760769, 37.311661> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090464, 0.763334, 0.639639,
		-0.582572, -0.480357, 0.655642,
		0.807729, -0.431948, 0.401242,
		29.999252, 38.631184, 37.432034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.361601, 38.778175, 37.939018>,  <29.433842, 38.933548, 37.151165>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.361601, 38.778175, 37.939018> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.748234, 38.827415, 37.849075>,  <29.980213, 38.856960, 37.795109>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.748234, 38.827415, 37.849075>,  <29.361601, 38.778175, 37.939018>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.748234, 38.827415, 37.849075> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083092, 0.679357, 0.729088,
		0.242507, -0.723409, 0.646428,
		0.966585, 0.123096, -0.224859,
		30.038210, 38.864346, 37.781616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.770794, 38.794842, 38.659485>,  <29.361601, 38.778175, 37.939018>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.770794, 38.794842, 38.659485> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.996918, 38.965279, 38.376961>,  <30.132591, 39.067543, 38.207447>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.996918, 38.965279, 38.376961>,  <29.770794, 38.794842, 38.659485>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.996918, 38.965279, 38.376961> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261287, 0.719667, 0.643280,
		0.782405, -0.548199, 0.295500,
		0.565307, 0.426095, -0.706308,
		30.166510, 39.093105, 38.165070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.203545, 39.065960, 39.047829>,  <29.770794, 38.794842, 38.659485>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.203545, 39.065960, 39.047829> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.267477, 39.251423, 38.699238>,  <30.305836, 39.362701, 38.490082>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.267477, 39.251423, 38.699238>,  <30.203545, 39.065960, 39.047829>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.267477, 39.251423, 38.699238> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222620, 0.843156, 0.489416,
		0.961715, -0.272232, 0.031542,
		0.159830, 0.463657, -0.871480,
		30.315426, 39.390518, 38.437794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.950274, 39.417561, 39.071178>,  <30.203545, 39.065960, 39.047829>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.950274, 39.417561, 39.071178> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.726017, 39.611366, 38.802574>,  <30.591463, 39.727650, 38.641411>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.726017, 39.611366, 38.802574>,  <30.950274, 39.417561, 39.071178>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.726017, 39.611366, 38.802574> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134632, 0.853489, 0.503419,
		0.817042, 0.191830, -0.543731,
		-0.560640, 0.484518, -0.671510,
		30.557825, 39.756721, 38.601120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.353825, 39.970001, 38.846634>,  <30.950274, 39.417561, 39.071178>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.353825, 39.970001, 38.846634> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.986361, 40.089039, 38.742706>,  <30.765882, 40.160461, 38.680351>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.986361, 40.089039, 38.742706>,  <31.353825, 39.970001, 38.846634>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.986361, 40.089039, 38.742706> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149483, 0.870633, 0.468672,
		0.365679, 0.391711, -0.844299,
		-0.918659, 0.297591, -0.259818,
		30.710762, 40.178318, 38.664761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.381948, 40.707123, 38.938797>,  <31.353825, 39.970001, 38.846634>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.381948, 40.707123, 38.938797> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.990595, 40.662975, 38.868843>,  <30.755783, 40.636486, 38.826870>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.990595, 40.662975, 38.868843>,  <31.381948, 40.707123, 38.938797>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.990595, 40.662975, 38.868843> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185778, 0.840561, 0.508865,
		0.090840, 0.530354, -0.842895,
		-0.978384, -0.110366, -0.174885,
		30.697081, 40.629864, 38.816376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.135210, 41.315273, 38.633102>,  <31.381948, 40.707123, 38.938797>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.135210, 41.315273, 38.633102> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.834631, 41.143589, 38.833546>,  <30.654284, 41.040581, 38.953812>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.834631, 41.143589, 38.833546>,  <31.135210, 41.315273, 38.633102>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.834631, 41.143589, 38.833546> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125008, 0.838349, 0.530607,
		-0.647843, 0.336081, -0.683630,
		-0.751447, -0.429209, 0.501105,
		30.609198, 41.014828, 38.983879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.528917, 41.747581, 38.523880>,  <31.135210, 41.315273, 38.633102>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.528917, 41.747581, 38.523880> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.421995, 41.537533, 38.847061>,  <30.357841, 41.411503, 39.040970>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.421995, 41.537533, 38.847061>,  <30.528917, 41.747581, 38.523880>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.421995, 41.537533, 38.847061> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418914, 0.818415, 0.393329,
		-0.867790, -0.233326, -0.438748,
		-0.267304, -0.525125, 0.807956,
		30.341805, 41.379993, 39.089447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.942707, 42.028557, 38.652760>,  <30.528917, 41.747581, 38.523880>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.942707, 42.028557, 38.652760> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.050016, 41.855740, 38.997169>,  <30.114401, 41.752048, 39.203815>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.050016, 41.855740, 38.997169>,  <29.942707, 42.028557, 38.652760>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.050016, 41.855740, 38.997169> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431338, 0.745318, 0.508378,
		-0.861381, -0.507777, 0.013590,
		0.268272, -0.432045, 0.861026,
		30.130499, 41.726128, 39.255478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.372435, 41.990055, 39.062717>,  <29.942707, 42.028557, 38.652760>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.372435, 41.990055, 39.062717> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.680004, 41.977921, 39.318165>,  <29.864546, 41.970642, 39.471436>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.680004, 41.977921, 39.318165>,  <29.372435, 41.990055, 39.062717>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.680004, 41.977921, 39.318165> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415318, 0.735718, 0.535004,
		-0.486073, -0.676608, 0.553113,
		0.768924, -0.030334, 0.638621,
		29.910681, 41.968819, 39.509750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.010090, 42.155621, 39.672592>,  <29.372435, 41.990055, 39.062717>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.010090, 42.155621, 39.672592> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.394690, 42.238266, 39.745064>,  <29.625450, 42.287853, 39.788548>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.394690, 42.238266, 39.745064>,  <29.010090, 42.155621, 39.672592>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.394690, 42.238266, 39.745064> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272794, 0.638084, 0.720023,
		0.033155, -0.741728, 0.669880,
		0.961501, 0.206611, 0.181183,
		29.683140, 42.300251, 39.799419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<43.209042, 34.113152, 45.678268> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.859764, 33.936337, 45.760376>,  <42.650196, 33.830246, 45.809639>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.859764, 33.936337, 45.760376>,  <43.209042, 34.113152, 45.678268>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.859764, 33.936337, 45.760376> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363325, -0.309681, 0.878688,
		-0.324845, 0.841844, 0.431015,
		-0.873196, -0.442036, 0.205265,
		42.597805, 33.803726, 45.821957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.070175, 34.162025, 46.333271>,  <43.209042, 34.113152, 45.678268>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.070175, 34.162025, 46.333271> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.762470, 33.911732, 46.281570>,  <42.577850, 33.761555, 46.250549>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.762470, 33.911732, 46.281570>,  <43.070175, 34.162025, 46.333271>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.762470, 33.911732, 46.281570> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200402, -0.428365, 0.881103,
		-0.606698, 0.651894, 0.454920,
		-0.769257, -0.625730, -0.129247,
		42.531693, 33.724014, 46.242798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.670006, 34.227264, 46.938110>,  <43.070175, 34.162025, 46.333271>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.670006, 34.227264, 46.938110> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.590500, 33.869453, 46.777954>,  <42.542797, 33.654766, 46.681862>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.590500, 33.869453, 46.777954>,  <42.670006, 34.227264, 46.938110>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.590500, 33.869453, 46.777954> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001265, -0.408775, 0.912634,
		-0.980047, 0.180890, 0.082380,
		-0.198761, -0.894529, -0.400389,
		42.530872, 33.601093, 46.657837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.144901, 33.904877, 47.328098>,  <42.670006, 34.227264, 46.938110>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.144901, 33.904877, 47.328098> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.276154, 33.588276, 47.121857>,  <42.354904, 33.398315, 46.998112>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.276154, 33.588276, 47.121857>,  <42.144901, 33.904877, 47.328098>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.276154, 33.588276, 47.121857> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063796, -0.526015, 0.848079,
		-0.942475, -0.311175, -0.122107,
		0.328131, -0.791504, -0.515608,
		42.374592, 33.350826, 46.967175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.610031, 33.374321, 47.473221>,  <42.144901, 33.904877, 47.328098>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.610031, 33.374321, 47.473221> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.945549, 33.191162, 47.355408>,  <42.146862, 33.081268, 47.284721>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.945549, 33.191162, 47.355408>,  <41.610031, 33.374321, 47.473221>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.945549, 33.191162, 47.355408> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074957, -0.632950, 0.770555,
		-0.539258, -0.624263, -0.565240,
		0.838798, -0.457897, -0.294530,
		42.197189, 33.053791, 47.267048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.513065, 32.606907, 47.360527>,  <41.610031, 33.374321, 47.473221>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.513065, 32.606907, 47.360527> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.902920, 32.658371, 47.433773>,  <42.136833, 32.689251, 47.477718>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.902920, 32.658371, 47.433773>,  <41.513065, 32.606907, 47.360527>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.902920, 32.658371, 47.433773> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038218, -0.710509, 0.702650,
		0.220506, -0.691826, -0.687571,
		0.974636, 0.128662, 0.183112,
		42.195312, 32.696968, 47.488705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.745251, 31.984573, 47.427906>,  <41.513065, 32.606907, 47.360527>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.745251, 31.984573, 47.427906> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.082188, 32.139828, 47.577473>,  <42.284348, 32.232983, 47.667213>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.082188, 32.139828, 47.577473>,  <41.745251, 31.984573, 47.427906>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.082188, 32.139828, 47.577473> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139002, -0.826775, 0.545089,
		0.520713, -0.407175, -0.750377,
		0.842340, 0.388138, 0.373915,
		42.334888, 32.256268, 47.689648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.315083, 31.510265, 47.328094>,  <41.745251, 31.984573, 47.427906>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.315083, 31.510265, 47.328094> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.436543, 31.723236, 47.644150>,  <42.509418, 31.851019, 47.833782>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.436543, 31.723236, 47.644150>,  <42.315083, 31.510265, 47.328094>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.436543, 31.723236, 47.644150> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259188, -0.844180, 0.469236,
		0.916853, 0.062313, -0.394331,
		0.303647, 0.532427, 0.790139,
		42.527637, 31.882963, 47.881191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.895603, 31.181721, 47.591858>,  <42.315083, 31.510265, 47.328094>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.895603, 31.181721, 47.591858> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.786949, 31.427256, 47.888348>,  <42.721756, 31.574577, 48.066242>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.786949, 31.427256, 47.888348>,  <42.895603, 31.181721, 47.591858>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.786949, 31.427256, 47.888348> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053644, -0.759331, 0.648489,
		0.960904, 0.215915, 0.173333,
		-0.271635, 0.613838, 0.741227,
		42.705460, 31.611406, 48.110714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.516830, 31.091961, 48.098541>,  <42.895603, 31.181721, 47.591858>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.516830, 31.091961, 48.098541> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.188522, 31.243374, 48.269680>,  <42.991539, 31.334221, 48.372364>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.188522, 31.243374, 48.269680>,  <43.516830, 31.091961, 48.098541>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.188522, 31.243374, 48.269680> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135693, -0.598335, 0.789673,
		0.554914, 0.706193, 0.439729,
		-0.820766, 0.378532, 0.427850,
		42.942291, 31.356934, 48.398033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.739220, 31.414860, 48.735275>,  <43.516830, 31.091961, 48.098541>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.739220, 31.414860, 48.735275> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.345009, 31.352476, 48.761856>,  <43.108482, 31.315046, 48.777805>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.345009, 31.352476, 48.761856>,  <43.739220, 31.414860, 48.735275>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.345009, 31.352476, 48.761856> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113038, -0.312397, 0.943202,
		-0.126342, 0.937062, 0.325504,
		-0.985525, -0.155961, 0.066455,
		43.049351, 31.305689, 48.781792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.622929, 31.575466, 49.399120>,  <43.739220, 31.414860, 48.735275>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.622929, 31.575466, 49.399120> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.315865, 31.350317, 49.276569>,  <43.131626, 31.215227, 49.203037>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.315865, 31.350317, 49.276569>,  <43.622929, 31.575466, 49.399120>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.315865, 31.350317, 49.276569> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050258, -0.423728, 0.904394,
		-0.638879, 0.709669, 0.296992,
		-0.767664, -0.562872, -0.306378,
		43.085564, 31.181456, 49.184654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.308163, 31.585207, 49.987782>,  <43.622929, 31.575466, 49.399120>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.308163, 31.585207, 49.987782> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.133442, 31.267570, 49.818729>,  <43.028610, 31.076988, 49.717297>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.133442, 31.267570, 49.818729>,  <43.308163, 31.585207, 49.987782>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.133442, 31.267570, 49.818729> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191298, -0.541075, 0.818928,
		-0.878980, 0.276864, 0.388254,
		-0.436806, -0.794093, -0.422630,
		43.002399, 31.029343, 49.691940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.848030, 31.278929, 50.476158>,  <43.308163, 31.585207, 49.987782>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.848030, 31.278929, 50.476158> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.999725, 31.012035, 50.219727>,  <43.090744, 30.851900, 50.065868>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.999725, 31.012035, 50.219727>,  <42.848030, 31.278929, 50.476158>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.999725, 31.012035, 50.219727> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509230, -0.427974, 0.746674,
		-0.772570, -0.609622, 0.177471,
		0.379236, -0.667232, -0.641078,
		43.113495, 30.811865, 50.027405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.259850, 31.554291, 50.906696>,  <42.848030, 31.278929, 50.476158>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.259850, 31.554291, 50.906696> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.524090, 31.771566, 50.699409>,  <42.682636, 31.901932, 50.575039>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.524090, 31.771566, 50.699409>,  <42.259850, 31.554291, 50.906696>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.524090, 31.771566, 50.699409> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539038, -0.137263, -0.831021,
		-0.522532, 0.828316, 0.202122,
		0.660604, 0.543187, -0.518218,
		42.722271, 31.934523, 50.543945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.633602, 31.928497, 51.019211>,  <42.259850, 31.554291, 50.906696>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.633602, 31.928497, 51.019211> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.387669, 32.137909, 51.255142>,  <41.240108, 32.263557, 51.396702>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.387669, 32.137909, 51.255142>,  <41.633602, 31.928497, 51.019211>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.387669, 32.137909, 51.255142> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519967, 0.293221, -0.802282,
		-0.592969, -0.799960, 0.091936,
		-0.614835, 0.523531, 0.589824,
		41.203217, 32.294968, 51.432091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.904114, 31.753960, 50.881786>,  <41.633602, 31.928497, 51.019211>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.904114, 31.753960, 50.881786> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.902061, 32.115856, 51.052158>,  <40.900829, 32.332993, 51.154381>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.902061, 32.115856, 51.052158>,  <40.904114, 31.753960, 50.881786>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.902061, 32.115856, 51.052158> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453462, 0.377519, -0.807373,
		-0.891261, -0.197281, 0.408331,
		-0.005127, 0.904743, 0.425928,
		40.900524, 32.387280, 51.179935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.209812, 32.036758, 50.690624>,  <40.904114, 31.753960, 50.881786>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.209812, 32.036758, 50.690624> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.395233, 32.363216, 50.828629>,  <40.506485, 32.559090, 50.911430>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.395233, 32.363216, 50.828629>,  <40.209812, 32.036758, 50.690624>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.395233, 32.363216, 50.828629> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482507, 0.559080, -0.674252,
		-0.743174, 0.146081, 0.652957,
		0.463551, 0.816143, 0.345009,
		40.534298, 32.608059, 50.932133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.650841, 32.488167, 50.802959>,  <40.209812, 32.036758, 50.690624>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.650841, 32.488167, 50.802959> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.973270, 32.724632, 50.791897>,  <40.166729, 32.866512, 50.785259>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.973270, 32.724632, 50.791897>,  <39.650841, 32.488167, 50.802959>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.973270, 32.724632, 50.791897> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434325, 0.559172, -0.706178,
		-0.402002, 0.581246, 0.707494,
		0.806074, 0.591168, -0.027661,
		40.215092, 32.901981, 50.783600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.408474, 33.162266, 50.915569>,  <39.650841, 32.488167, 50.802959>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.408474, 33.162266, 50.915569> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.759277, 33.188877, 50.725231>,  <39.969761, 33.204845, 50.611031>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.759277, 33.188877, 50.725231>,  <39.408474, 33.162266, 50.915569>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.759277, 33.188877, 50.725231> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421716, 0.581158, -0.695996,
		0.230233, 0.811066, 0.537740,
		0.877011, 0.066532, -0.475841,
		40.022381, 33.208836, 50.582478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.518169, 33.832733, 50.694782>,  <39.408474, 33.162266, 50.915569>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.518169, 33.832733, 50.694782> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.756748, 33.621780, 50.452751>,  <39.899895, 33.495209, 50.307533>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.756748, 33.621780, 50.452751>,  <39.518169, 33.832733, 50.694782>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.756748, 33.621780, 50.452751> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318640, 0.536326, -0.781552,
		0.736691, 0.658960, 0.151849,
		0.596452, -0.527377, -0.605077,
		39.935684, 33.463566, 50.271229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.803547, 34.326942, 50.397900>,  <39.518169, 33.832733, 50.694782>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.803547, 34.326942, 50.397900> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.824741, 34.008835, 50.156322>,  <39.837460, 33.817970, 50.011375>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.824741, 34.008835, 50.156322>,  <39.803547, 34.326942, 50.397900>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.824741, 34.008835, 50.156322> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153661, 0.591095, -0.791830,
		0.986702, 0.134760, -0.090880,
		0.052989, -0.795265, -0.603941,
		39.840637, 33.770256, 49.975140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.905025, 34.608498, 49.726852>,  <39.803547, 34.326942, 50.397900>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.905025, 34.608498, 49.726852> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.829510, 34.228065, 49.629040>,  <39.784199, 33.999805, 49.570351>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.829510, 34.228065, 49.629040>,  <39.905025, 34.608498, 49.726852>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.829510, 34.228065, 49.629040> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249742, 0.287324, -0.924702,
		0.949730, -0.113504, -0.291770,
		-0.188790, -0.951084, -0.244534,
		39.772873, 33.942741, 49.555679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.129696, 34.577847, 49.103184>,  <39.905025, 34.608498, 49.726852>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.129696, 34.577847, 49.103184> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.892708, 34.255787, 49.092571>,  <39.750515, 34.062550, 49.086205>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.892708, 34.255787, 49.092571>,  <40.129696, 34.577847, 49.103184>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.892708, 34.255787, 49.092571> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217035, 0.191246, -0.957246,
		0.775804, -0.561384, -0.288054,
		-0.592473, -0.805153, -0.026530,
		39.714966, 34.014240, 49.084614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.344429, 34.218483, 48.456261>,  <40.129696, 34.577847, 49.103184>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.344429, 34.218483, 48.456261> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.974808, 34.098175, 48.550632>,  <39.753036, 34.025990, 48.607258>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.974808, 34.098175, 48.550632>,  <40.344429, 34.218483, 48.456261>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.974808, 34.098175, 48.550632> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332780, 0.329214, -0.883672,
		0.188111, -0.895072, -0.404302,
		-0.924052, -0.300772, 0.235933,
		39.697594, 34.007942, 48.621410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.098560, 33.822636, 47.851845>,  <40.344429, 34.218483, 48.456261>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.098560, 33.822636, 47.851845> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.776081, 33.942585, 48.055851>,  <39.582592, 34.014557, 48.178253>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.776081, 33.942585, 48.055851>,  <40.098560, 33.822636, 47.851845>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.776081, 33.942585, 48.055851> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459892, 0.224687, -0.859078,
		-0.372212, -0.927141, -0.043232,
		-0.806200, 0.299877, 0.510015,
		39.534222, 34.032547, 48.208855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.541893, 33.608768, 47.432583>,  <40.098560, 33.822636, 47.851845>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.541893, 33.608768, 47.432583> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.395969, 33.891201, 47.675354>,  <39.308414, 34.060661, 47.821014>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.395969, 33.891201, 47.675354>,  <39.541893, 33.608768, 47.432583>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.395969, 33.891201, 47.675354> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449653, 0.437188, -0.778896,
		-0.815307, -0.557055, 0.158003,
		-0.364811, 0.706085, 0.606923,
		39.286526, 34.103027, 47.857430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.903515, 33.676819, 47.196861>,  <39.541893, 33.608768, 47.432583>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.903515, 33.676819, 47.196861> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.969810, 34.012905, 47.403381>,  <39.009586, 34.214558, 47.527294>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.969810, 34.012905, 47.403381>,  <38.903515, 33.676819, 47.196861>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.969810, 34.012905, 47.403381> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451809, 0.530057, -0.717571,
		-0.876584, -0.114338, 0.467470,
		0.165740, 0.840218, 0.516298,
		39.019531, 34.264969, 47.558270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.400749, 33.449898, 47.651402>,  <38.903515, 33.676819, 47.196861>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.400749, 33.449898, 47.651402> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.090584, 33.197315, 47.650616>,  <37.904484, 33.045765, 47.650143>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.090584, 33.197315, 47.650616>,  <38.400749, 33.449898, 47.651402>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.090584, 33.197315, 47.650616> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330928, -0.409022, 0.850404,
		-0.537798, 0.658760, 0.526126,
		-0.775410, -0.631455, -0.001969,
		37.857960, 33.007877, 47.650024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.032001, 33.548588, 48.271000>,  <38.400749, 33.449898, 47.651402>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.032001, 33.548588, 48.271000> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.902233, 33.198830, 48.126678>,  <37.824371, 32.988976, 48.040085>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.902233, 33.198830, 48.126678>,  <38.032001, 33.548588, 48.271000>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.902233, 33.198830, 48.126678> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223170, -0.441425, 0.869103,
		-0.919209, 0.201435, 0.338347,
		-0.324423, -0.874396, -0.360807,
		37.804905, 32.936512, 48.018436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.577118, 33.193817, 48.799618>,  <38.032001, 33.548588, 48.271000>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.577118, 33.193817, 48.799618> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.694054, 32.910069, 48.543079>,  <37.764217, 32.739819, 48.389156>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.694054, 32.910069, 48.543079>,  <37.577118, 33.193817, 48.799618>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.694054, 32.910069, 48.543079> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229023, -0.599195, 0.767146,
		-0.928485, -0.371152, -0.012706,
		0.292341, -0.709374, -0.641347,
		37.781757, 32.697258, 48.350674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.391335, 32.553658, 49.105961>,  <37.577118, 33.193817, 48.799618>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.391335, 32.553658, 49.105961> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.637230, 32.390045, 48.836208>,  <37.784767, 32.291878, 48.674358>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.637230, 32.390045, 48.836208>,  <37.391335, 32.553658, 49.105961>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.637230, 32.390045, 48.836208> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270790, -0.693596, 0.667530,
		-0.740787, -0.592974, -0.315621,
		0.614742, -0.409031, -0.674379,
		37.821651, 32.267334, 48.633896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.196598, 31.920300, 49.073593>,  <37.391335, 32.553658, 49.105961>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.196598, 31.920300, 49.073593> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.569698, 31.926306, 48.929512>,  <37.793560, 31.929911, 48.843063>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.569698, 31.926306, 48.929512>,  <37.196598, 31.920300, 49.073593>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.569698, 31.926306, 48.929512> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260602, -0.718485, 0.644877,
		-0.249116, -0.695381, -0.674082,
		0.932753, 0.015018, -0.360204,
		37.849525, 31.930811, 48.821449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.335014, 31.244308, 49.126289>,  <37.196598, 31.920300, 49.073593>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.335014, 31.244308, 49.126289> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.698257, 31.407875, 49.090206>,  <37.916203, 31.506014, 49.068558>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.698257, 31.407875, 49.090206>,  <37.335014, 31.244308, 49.126289>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.698257, 31.407875, 49.090206> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341547, -0.598668, 0.724529,
		0.242269, -0.688756, -0.683316,
		0.908103, 0.408915, -0.090204,
		37.970688, 31.530550, 49.063145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.894650, 30.710377, 49.034477>,  <37.335014, 31.244308, 49.126289>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.894650, 30.710377, 49.034477> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.075546, 31.029747, 49.193474>,  <38.184082, 31.221369, 49.288872>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.075546, 31.029747, 49.193474>,  <37.894650, 30.710377, 49.034477>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.075546, 31.029747, 49.193474> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170709, -0.514918, 0.840070,
		0.875408, -0.312057, -0.369163,
		0.452238, 0.798424, 0.397492,
		38.211216, 31.269274, 49.312721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.826984, 30.145031, 48.580566>,  <37.894650, 30.710377, 49.034477>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.826984, 30.145031, 48.580566> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.508305, 29.948790, 48.721745>,  <37.317097, 29.831045, 48.806454>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.508305, 29.948790, 48.721745>,  <37.826984, 30.145031, 48.580566>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.508305, 29.948790, 48.721745> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498172, 0.202440, -0.843115,
		0.342185, -0.847541, -0.405690,
		-0.796702, -0.490605, 0.352949,
		37.269295, 29.801607, 48.827629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.673950, 29.704514, 48.038544>,  <37.826984, 30.145031, 48.580566>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.673950, 29.704514, 48.038544> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.318142, 29.713318, 48.221088>,  <37.104656, 29.718599, 48.330616>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.318142, 29.713318, 48.221088>,  <37.673950, 29.704514, 48.038544>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.318142, 29.713318, 48.221088> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454778, 0.053422, -0.889001,
		-0.043947, -0.998329, -0.037511,
		-0.889520, 0.022010, 0.456366,
		37.051285, 29.719921, 48.357998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.249878, 29.219172, 47.636574>,  <37.673950, 29.704514, 48.038544>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.249878, 29.219172, 47.636574> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.984802, 29.410440, 47.867119>,  <36.825756, 29.525202, 48.005447>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.984802, 29.410440, 47.867119>,  <37.249878, 29.219172, 47.636574>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.984802, 29.410440, 47.867119> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.666126, -0.024669, -0.745431,
		-0.342226, -0.877920, 0.334871,
		-0.662690, 0.478172, 0.576362,
		36.785995, 29.553892, 48.040028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.595024, 28.949175, 47.511894>,  <37.249878, 29.219172, 47.636574>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.595024, 28.949175, 47.511894> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.477371, 29.291622, 47.681858>,  <36.406780, 29.497091, 47.783836>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.477371, 29.291622, 47.681858>,  <36.595024, 28.949175, 47.511894>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.477371, 29.291622, 47.681858> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576137, 0.195901, -0.793529,
		-0.762596, -0.478205, 0.435622,
		-0.294131, 0.856121, 0.424905,
		36.389133, 29.548458, 47.809330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.908436, 28.968992, 47.389812>,  <36.595024, 28.949175, 47.511894>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.908436, 28.968992, 47.389812> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.015385, 29.350855, 47.442184>,  <36.079552, 29.579973, 47.473606>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.015385, 29.350855, 47.442184>,  <35.908436, 28.968992, 47.389812>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.015385, 29.350855, 47.442184> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527613, 0.258736, -0.809123,
		-0.806312, 0.147254, 0.572868,
		0.267368, 0.954658, 0.130929,
		36.095596, 29.637253, 47.481464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.257488, 29.413698, 47.479198>,  <35.908436, 28.968992, 47.389812>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.257488, 29.413698, 47.479198> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.542130, 29.665964, 47.355335>,  <35.712914, 29.817324, 47.281017>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.542130, 29.665964, 47.355335>,  <35.257488, 29.413698, 47.479198>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.542130, 29.665964, 47.355335> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.601962, 0.320000, -0.731603,
		-0.362307, 0.707009, 0.607348,
		0.711601, 0.630665, -0.309654,
		35.755611, 29.855164, 47.262440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.886177, 30.079018, 47.424099>,  <35.257488, 29.413698, 47.479198>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.886177, 30.079018, 47.424099> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.225101, 30.107101, 47.213524>,  <35.428455, 30.123951, 47.087177>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.225101, 30.107101, 47.213524>,  <34.886177, 30.079018, 47.424099>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.225101, 30.107101, 47.213524> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482320, 0.516676, -0.707399,
		0.222332, 0.853297, 0.471648,
		0.847311, 0.070208, -0.526436,
		35.479294, 30.128164, 47.055592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<42.086227, 29.093365, 49.352737> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<42.256145, 29.383545, 49.136120>,  <42.358097, 29.557653, 49.006149>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<42.256145, 29.383545, 49.136120>,  <42.086227, 29.093365, 49.352737>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<42.256145, 29.383545, 49.136120> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559851, -0.259580, -0.786883,
		-0.711419, 0.637448, 0.295876,
		0.424794, 0.725450, -0.541546,
		42.383583, 29.601181, 48.973656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.679302, 29.004684, 48.816952>,  <42.086227, 29.093365, 49.352737>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.679302, 29.004684, 48.816952> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.922821, 29.299253, 48.698936>,  <42.068932, 29.475994, 48.628128>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.922821, 29.299253, 48.698936>,  <41.679302, 29.004684, 48.816952>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<41.922821, 29.299253, 48.698936> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524691, 0.094820, -0.845995,
		-0.595032, 0.669847, 0.444120,
		0.608798, 0.736420, -0.295042,
		42.105461, 29.520180, 48.610424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.232944, 29.622025, 48.650795>,  <41.679302, 29.004684, 48.816952>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.232944, 29.622025, 48.650795> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.581024, 29.649263, 48.455608>,  <41.789871, 29.665606, 48.338497>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.581024, 29.649263, 48.455608>,  <41.232944, 29.622025, 48.650795>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<41.581024, 29.649263, 48.455608> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492675, 0.128654, -0.860650,
		0.004171, 0.989349, 0.145504,
		0.870203, 0.068096, -0.487964,
		41.842087, 29.669693, 48.309219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.066658, 30.168583, 48.182972>,  <41.232944, 29.622025, 48.650795>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.066658, 30.168583, 48.182972> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.398949, 30.006836, 48.029930>,  <41.598324, 29.909788, 47.938107>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.398949, 30.006836, 48.029930>,  <41.066658, 30.168583, 48.182972>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<41.398949, 30.006836, 48.029930> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361555, 0.130685, -0.923147,
		0.423291, 0.905211, -0.037638,
		0.830724, -0.404368, -0.382601,
		41.648167, 29.885525, 47.915150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.509842, 30.657633, 47.742344>,  <41.066658, 30.168583, 48.182972>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.509842, 30.657633, 47.742344> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.596100, 30.283976, 47.628590>,  <41.647854, 30.059782, 47.560337>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.596100, 30.283976, 47.628590>,  <41.509842, 30.657633, 47.742344>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<41.596100, 30.283976, 47.628590> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313675, 0.209537, -0.926122,
		0.924720, 0.288916, -0.247832,
		0.215642, -0.934142, -0.284388,
		41.660793, 30.003733, 47.543274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.772163, 30.774225, 47.149323>,  <41.509842, 30.657633, 47.742344>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.772163, 30.774225, 47.149323> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.679081, 30.385489, 47.134499>,  <41.623230, 30.152246, 47.125603>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.679081, 30.385489, 47.134499>,  <41.772163, 30.774225, 47.149323>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<41.679081, 30.385489, 47.134499> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256114, 0.097998, -0.961666,
		0.938218, -0.214297, -0.271707,
		-0.232709, -0.971840, -0.037059,
		41.609268, 30.093937, 47.123383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.902786, 30.609966, 46.443855>,  <41.772163, 30.774225, 47.149323>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.902786, 30.609966, 46.443855> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.738007, 30.265705, 46.563576>,  <41.639137, 30.059149, 46.635406>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.738007, 30.265705, 46.563576>,  <41.902786, 30.609966, 46.443855>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<41.738007, 30.265705, 46.563576> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405472, -0.121011, -0.906062,
		0.816021, -0.494608, -0.299119,
		-0.411949, -0.860651, 0.299297,
		41.614422, 30.007509, 46.653366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.170788, 30.144127, 46.102234>,  <41.902786, 30.609966, 46.443855>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.170788, 30.144127, 46.102234> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.809288, 29.991005, 46.178864>,  <41.592388, 29.899132, 46.224842>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.809288, 29.991005, 46.178864>,  <42.170788, 30.144127, 46.102234>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<41.809288, 29.991005, 46.178864> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232684, 0.063671, -0.970466,
		0.359303, -0.921632, -0.146615,
		-0.903747, -0.382806, 0.191572,
		41.538162, 29.876163, 46.236336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.066730, 29.703749, 45.520218>,  <42.170788, 30.144127, 46.102234>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.066730, 29.703749, 45.520218> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.710945, 29.771776, 45.689888>,  <41.497475, 29.812592, 45.791691>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.710945, 29.771776, 45.689888>,  <42.066730, 29.703749, 45.520218>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<41.710945, 29.771776, 45.689888> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412036, 0.103030, -0.905324,
		-0.197670, -0.980031, -0.021568,
		-0.889467, 0.170069, 0.424175,
		41.444103, 29.822796, 45.817139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.621140, 29.089874, 45.337265>,  <42.066730, 29.703749, 45.520218>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.621140, 29.089874, 45.337265> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.385479, 29.396378, 45.439831>,  <41.244083, 29.580280, 45.501369>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.385479, 29.396378, 45.439831>,  <41.621140, 29.089874, 45.337265>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<41.385479, 29.396378, 45.439831> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303508, 0.084237, -0.949098,
		-0.748855, -0.636985, 0.182938,
		-0.589151, 0.766260, 0.256412,
		41.208733, 29.626255, 45.516754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.035522, 28.967869, 45.021389>,  <41.621140, 29.089874, 45.337265>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.035522, 28.967869, 45.021389> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.976765, 29.354450, 45.105667>,  <40.941509, 29.586399, 45.156235>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.976765, 29.354450, 45.105667>,  <41.035522, 28.967869, 45.021389>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.976765, 29.354450, 45.105667> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384371, 0.140493, -0.912426,
		-0.911417, -0.215011, 0.350840,
		-0.146891, 0.966453, 0.210691,
		40.932697, 29.644386, 45.168873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.424400, 29.169704, 44.638649>,  <41.035522, 28.967869, 45.021389>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.424400, 29.169704, 44.638649> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.589500, 29.522459, 44.729782>,  <40.688560, 29.734112, 44.784462>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.589500, 29.522459, 44.729782>,  <40.424400, 29.169704, 44.638649>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.589500, 29.522459, 44.729782> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131393, 0.305169, -0.943190,
		-0.901316, 0.359369, 0.241833,
		0.412754, 0.881887, 0.227836,
		40.713326, 29.787025, 44.798134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.675941, 29.325787, 44.580402>,  <40.424400, 29.169704, 44.638649>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.675941, 29.325787, 44.580402> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.499912, 28.975323, 44.501736>,  <39.394295, 28.765045, 44.454536>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.499912, 28.975323, 44.501736>,  <39.675941, 29.325787, 44.580402>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.499912, 28.975323, 44.501736> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058004, -0.246299, 0.967457,
		-0.896086, 0.414344, 0.159210,
		-0.440074, -0.876160, -0.196671,
		39.367889, 28.712475, 44.442734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.182533, 29.383841, 45.093201>,  <39.675941, 29.325787, 44.580402>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.182533, 29.383841, 45.093201> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.207859, 28.997887, 44.991230>,  <39.223053, 28.766314, 44.930046>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.207859, 28.997887, 44.991230>,  <39.182533, 29.383841, 45.093201>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.207859, 28.997887, 44.991230> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002988, -0.255256, 0.966869,
		-0.997989, -0.061978, -0.013278,
		0.063314, -0.964885, -0.254928,
		39.226852, 28.708422, 44.914753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.579453, 29.010111, 45.358685>,  <39.182533, 29.383841, 45.093201>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.579453, 29.010111, 45.358685> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.849133, 28.716015, 45.330761>,  <39.010941, 28.539557, 45.314007>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.849133, 28.716015, 45.330761>,  <38.579453, 29.010111, 45.358685>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.849133, 28.716015, 45.330761> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080599, -0.167206, 0.982622,
		-0.734137, -0.656858, -0.171990,
		0.674201, -0.735241, -0.069810,
		39.051392, 28.495443, 45.309818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.282051, 28.411369, 45.703087>,  <38.579453, 29.010111, 45.358685>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.282051, 28.411369, 45.703087> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.670666, 28.316757, 45.708221>,  <38.903835, 28.259991, 45.711300>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.670666, 28.316757, 45.708221>,  <38.282051, 28.411369, 45.703087>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.670666, 28.316757, 45.708221> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131963, -0.495456, 0.858551,
		-0.196713, -0.835810, -0.512568,
		0.971540, -0.236528, 0.012834,
		38.962128, 28.245798, 45.712070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.338280, 27.710173, 45.859779>,  <38.282051, 28.411369, 45.703087>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.338280, 27.710173, 45.859779> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.693848, 27.863420, 45.960205>,  <38.907188, 27.955370, 46.020462>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.693848, 27.863420, 45.960205>,  <38.338280, 27.710173, 45.859779>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.693848, 27.863420, 45.960205> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025608, -0.505685, 0.862338,
		0.457338, -0.772982, -0.439705,
		0.888924, 0.383120, 0.251064,
		38.960526, 27.978357, 46.035522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.686104, 27.098242, 46.140354>,  <38.338280, 27.710173, 45.859779>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.686104, 27.098242, 46.140354> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.871693, 27.423756, 46.280346>,  <38.983047, 27.619064, 46.364342>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.871693, 27.423756, 46.280346>,  <38.686104, 27.098242, 46.140354>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.871693, 27.423756, 46.280346> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001506, -0.395798, 0.918336,
		0.885849, -0.425555, -0.184864,
		0.463971, 0.813785, 0.349977,
		39.010883, 27.667891, 46.385338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.412651, 26.911255, 46.348377>,  <38.686104, 27.098242, 46.140354>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.412651, 26.911255, 46.348377> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.256210, 27.214790, 46.556686>,  <39.162346, 27.396912, 46.681671>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.256210, 27.214790, 46.556686>,  <39.412651, 26.911255, 46.348377>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.256210, 27.214790, 46.556686> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198120, -0.483166, 0.852819,
		0.898771, 0.436713, 0.038626,
		-0.391100, 0.758836, 0.520777,
		39.138882, 27.442442, 46.712921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.704350, 26.692667, 46.942436>,  <39.412651, 26.911255, 46.348377>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.704350, 26.692667, 46.942436> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.485870, 27.016357, 47.028984>,  <39.354782, 27.210571, 47.080914>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.485870, 27.016357, 47.028984>,  <39.704350, 26.692667, 46.942436>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.485870, 27.016357, 47.028984> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030621, -0.277423, 0.960260,
		0.837095, 0.517869, 0.176308,
		-0.546200, 0.809227, 0.216372,
		39.322010, 27.259125, 47.093895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.031120, 26.959705, 47.484722>,  <39.704350, 26.692667, 46.942436>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.031120, 26.959705, 47.484722> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.648533, 27.076420, 47.482254>,  <39.418980, 27.146448, 47.480774>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.648533, 27.076420, 47.482254>,  <40.031120, 26.959705, 47.484722>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.648533, 27.076420, 47.482254> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040152, -0.110622, 0.993051,
		0.289076, 0.950065, 0.117521,
		-0.956464, 0.291786, -0.006169,
		39.361595, 27.163956, 47.480404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.096893, 27.425596, 47.966572>,  <40.031120, 26.959705, 47.484722>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.096893, 27.425596, 47.966572> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.729980, 27.276482, 47.910542>,  <39.509834, 27.187012, 47.876923>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.729980, 27.276482, 47.910542>,  <40.096893, 27.425596, 47.966572>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.729980, 27.276482, 47.910542> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095315, -0.136007, 0.986112,
		-0.386663, 0.917895, 0.089225,
		-0.917282, -0.372789, -0.140078,
		39.454796, 27.164644, 47.868519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.791000, 27.663000, 48.526726>,  <40.096893, 27.425596, 47.966572>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.791000, 27.663000, 48.526726> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.541615, 27.374496, 48.406010>,  <39.391983, 27.201395, 48.333580>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.541615, 27.374496, 48.406010>,  <39.791000, 27.663000, 48.526726>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.541615, 27.374496, 48.406010> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116053, -0.296344, 0.948004,
		-0.773188, 0.626073, 0.101057,
		-0.623467, -0.721258, -0.301787,
		39.354576, 27.158119, 48.315475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.181629, 27.740505, 48.975731>,  <39.791000, 27.663000, 48.526726>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.181629, 27.740505, 48.975731> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.158939, 27.365770, 48.837677>,  <39.145325, 27.140930, 48.754845>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.158939, 27.365770, 48.837677>,  <39.181629, 27.740505, 48.975731>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.158939, 27.365770, 48.837677> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130455, -0.335773, 0.932866,
		-0.989830, 0.097941, -0.103169,
		-0.056724, -0.936837, -0.345135,
		39.141922, 27.084719, 48.734138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.678818, 27.396120, 49.466896>,  <39.181629, 27.740505, 48.975731>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.678818, 27.396120, 49.466896> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.879574, 27.116280, 49.263458>,  <39.000027, 26.948376, 49.141396>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.879574, 27.116280, 49.263458>,  <38.678818, 27.396120, 49.466896>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.879574, 27.116280, 49.263458> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032370, -0.572409, 0.819329,
		-0.864325, -0.427677, -0.264641,
		0.501891, -0.699600, -0.508591,
		39.030140, 26.906401, 49.110882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.237572, 26.790113, 49.393085>,  <38.678818, 27.396120, 49.466896>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.237572, 26.790113, 49.393085> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.620842, 26.680487, 49.360111>,  <38.850803, 26.614710, 49.340324>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.620842, 26.680487, 49.360111>,  <38.237572, 26.790113, 49.393085>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.620842, 26.680487, 49.360111> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075156, -0.518889, 0.851531,
		-0.276152, -0.809717, -0.517782,
		0.958171, -0.274067, -0.082438,
		38.908295, 26.598267, 49.335381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.947235, 27.350294, 49.843407>,  <38.237572, 26.790113, 49.393085>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.947235, 27.350294, 49.843407> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.018177, 27.530058, 50.193623>,  <38.060741, 27.637917, 50.403755>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.018177, 27.530058, 50.193623>,  <37.947235, 27.350294, 49.843407>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.018177, 27.530058, 50.193623> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510259, 0.802720, -0.308668,
		-0.841535, -0.392011, 0.371680,
		0.177354, 0.449408, 0.875544,
		38.071384, 27.664881, 50.456287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.297169, 27.572052, 50.190331>,  <37.947235, 27.350294, 49.843407>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.297169, 27.572052, 50.190331> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.574608, 27.815228, 50.344902>,  <37.741074, 27.961134, 50.437645>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.574608, 27.815228, 50.344902>,  <37.297169, 27.572052, 50.190331>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.574608, 27.815228, 50.344902> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522368, 0.793858, -0.311322,
		-0.496036, 0.014074, 0.868188,
		0.693599, 0.607940, 0.386430,
		37.782688, 27.997610, 50.460831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.952507, 28.202883, 50.220634>,  <37.297169, 27.572052, 50.190331>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.952507, 28.202883, 50.220634> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.334343, 28.308908, 50.275043>,  <37.563446, 28.372524, 50.307690>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.334343, 28.308908, 50.275043>,  <36.952507, 28.202883, 50.220634>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.334343, 28.308908, 50.275043> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150011, 0.822093, -0.549235,
		-0.257405, 0.503889, 0.824523,
		0.954589, 0.265063, 0.136022,
		37.620720, 28.388428, 50.315849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.900429, 28.868698, 50.561531>,  <36.952507, 28.202883, 50.220634>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.900429, 28.868698, 50.561531> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.246471, 28.836304, 50.363525>,  <37.454098, 28.816866, 50.244720>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.246471, 28.836304, 50.363525>,  <36.900429, 28.868698, 50.561531>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.246471, 28.836304, 50.363525> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175939, 0.875184, -0.450664,
		0.469726, 0.476963, 0.742875,
		0.865103, -0.080988, -0.495013,
		37.506001, 28.812008, 50.215023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.919743, 29.600100, 50.457371>,  <36.900429, 28.868698, 50.561531>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.919743, 29.600100, 50.457371> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.195637, 29.412376, 50.236820>,  <37.361172, 29.299744, 50.104488>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.195637, 29.412376, 50.236820>,  <36.919743, 29.600100, 50.457371>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.195637, 29.412376, 50.236820> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139014, 0.661506, -0.736943,
		0.710590, 0.584945, 0.391024,
		0.689736, -0.469307, -0.551375,
		37.402557, 29.271584, 50.071407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.134510, 30.082790, 50.052643>,  <36.919743, 29.600100, 50.457371>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.134510, 30.082790, 50.052643> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.251938, 29.773678, 49.827564>,  <37.322395, 29.588211, 49.692516>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.251938, 29.773678, 49.827564>,  <37.134510, 30.082790, 50.052643>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.251938, 29.773678, 49.827564> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139012, 0.547861, -0.824939,
		0.945775, 0.320400, 0.053411,
		0.293572, -0.772782, -0.562693,
		37.340008, 29.541843, 49.658756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.624020, 30.319872, 49.619427>,  <37.134510, 30.082790, 50.052643>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.624020, 30.319872, 49.619427> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.470871, 29.987589, 49.457767>,  <37.378983, 29.788219, 49.360771>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.470871, 29.987589, 49.457767>,  <37.624020, 30.319872, 49.619427>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.470871, 29.987589, 49.457767> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263821, 0.517585, -0.813944,
		0.885331, -0.205009, -0.417325,
		-0.382867, -0.830709, -0.404149,
		37.356010, 29.738377, 49.336521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.404194, 30.428848, 49.516727>,  <37.624020, 30.319872, 49.619427>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.404194, 30.428848, 49.516727> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.452789, 30.818460, 49.593159>,  <38.481945, 31.052227, 49.639015>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.452789, 30.818460, 49.593159>,  <38.404194, 30.428848, 49.516727>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.452789, 30.818460, 49.593159> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521038, -0.226425, 0.822953,
		0.844843, -0.000420, -0.535013,
		0.121487, 0.974029, 0.191075,
		38.489235, 31.110668, 49.650482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.139080, 30.599529, 49.664185>,  <38.404194, 30.428848, 49.516727>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.139080, 30.599529, 49.664185> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.923027, 30.864511, 49.871803>,  <38.793396, 31.023500, 49.996376>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.923027, 30.864511, 49.871803>,  <39.139080, 30.599529, 49.664185>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.923027, 30.864511, 49.871803> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452509, -0.291406, 0.842804,
		0.709574, 0.690098, -0.142370,
		-0.540130, 0.662455, 0.519050,
		38.760986, 31.063248, 50.027519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.627377, 30.884031, 50.143799>,  <39.139080, 30.599529, 49.664185>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.627377, 30.884031, 50.143799> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.265705, 30.977201, 50.287018>,  <39.048702, 31.033104, 50.372952>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.265705, 30.977201, 50.287018>,  <39.627377, 30.884031, 50.143799>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.265705, 30.977201, 50.287018> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311205, -0.214952, 0.925714,
		0.292585, 0.948442, 0.121868,
		-0.904182, 0.232925, 0.358052,
		38.994450, 31.047079, 50.394432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.750702, 31.352482, 50.664871>,  <39.627377, 30.884031, 50.143799>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.750702, 31.352482, 50.664871> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.378185, 31.225851, 50.736961>,  <39.154675, 31.149872, 50.780216>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.378185, 31.225851, 50.736961>,  <39.750702, 31.352482, 50.664871>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.378185, 31.225851, 50.736961> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224519, -0.109200, 0.968332,
		-0.286871, 0.942260, 0.172774,
		-0.931287, -0.316578, 0.180229,
		39.098801, 31.130878, 50.791031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.518970, 31.749739, 51.184559>,  <39.750702, 31.352482, 50.664871>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.518970, 31.749739, 51.184559> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.306007, 31.411320, 51.173691>,  <39.178230, 31.208267, 51.167168>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.306007, 31.411320, 51.173691>,  <39.518970, 31.749739, 51.184559>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.306007, 31.411320, 51.173691> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255251, -0.191069, 0.947808,
		-0.807084, 0.497688, 0.317683,
		-0.532412, -0.846049, -0.027173,
		39.146282, 31.157505, 51.165539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.058567, 31.867825, 51.681187>,  <39.518970, 31.749739, 51.184559>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.058567, 31.867825, 51.681187> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.046333, 31.470083, 51.640533>,  <39.038994, 31.231440, 51.616142>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.046333, 31.470083, 51.640533>,  <39.058567, 31.867825, 51.681187>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.046333, 31.470083, 51.640533> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089236, -0.103991, 0.990567,
		-0.995541, 0.021224, 0.091912,
		-0.030582, -0.994352, -0.101633,
		39.037159, 31.171778, 51.610043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.803673, 31.660551, 52.329880>,  <39.058567, 31.867825, 51.681187>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.803673, 31.660551, 52.329880> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.949883, 31.320520, 52.178215>,  <39.037609, 31.116501, 52.087215>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.949883, 31.320520, 52.178215>,  <38.803673, 31.660551, 52.329880>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.949883, 31.320520, 52.178215> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047176, -0.389904, 0.919646,
		-0.929607, -0.354038, -0.102415,
		0.365522, -0.850078, -0.379159,
		39.059540, 31.065496, 52.064468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.459976, 31.168226, 52.714314>,  <38.803673, 31.660551, 52.329880>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.459976, 31.168226, 52.714314> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.783554, 30.985121, 52.566769>,  <38.977703, 30.875257, 52.478241>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.783554, 30.985121, 52.566769>,  <38.459976, 31.168226, 52.714314>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.783554, 30.985121, 52.566769> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255005, -0.292109, 0.921762,
		-0.529696, -0.839717, -0.119569,
		0.808947, -0.457763, -0.368861,
		39.026237, 30.847792, 52.456112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.498417, 30.482496, 53.010822>,  <38.459976, 31.168226, 52.714314>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.498417, 30.482496, 53.010822> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.873768, 30.547962, 52.889065>,  <39.098980, 30.587242, 52.816010>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.873768, 30.547962, 52.889065>,  <38.498417, 30.482496, 53.010822>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.873768, 30.547962, 52.889065> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344405, -0.369498, 0.863051,
		0.028777, -0.914705, -0.403097,
		0.938380, 0.163664, -0.304396,
		39.155281, 30.597061, 52.797745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<36.313923, 35.073471, 37.472672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.636990, 35.223110, 37.654980>,  <36.830830, 35.312893, 37.764366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.636990, 35.223110, 37.654980>,  <36.313923, 35.073471, 37.472672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.636990, 35.223110, 37.654980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215359, -0.532409, 0.818633,
		0.548906, -0.759337, -0.349443,
		0.807665, 0.374097, 0.455772,
		36.879288, 35.335339, 37.791710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.457226, 34.597500, 38.015022>,  <36.313923, 35.073471, 37.472672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.457226, 34.597500, 38.015022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.690861, 34.905102, 38.118927>,  <36.831039, 35.089664, 38.181271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.690861, 34.905102, 38.118927>,  <36.457226, 34.597500, 38.015022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.690861, 34.905102, 38.118927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029711, -0.299559, 0.953615,
		0.811150, -0.564709, -0.152119,
		0.584083, 0.769005, 0.259765,
		36.866085, 35.135803, 38.196857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.062271, 34.268917, 38.384018>,  <36.457226, 34.597500, 38.015022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.062271, 34.268917, 38.384018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.020176, 34.653393, 38.486023>,  <36.994919, 34.884079, 38.547226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.020176, 34.653393, 38.486023>,  <37.062271, 34.268917, 38.384018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.020176, 34.653393, 38.486023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019307, -0.258366, 0.965854,
		0.994260, 0.096719, 0.045747,
		-0.105236, 0.961193, 0.255015,
		36.988605, 34.941750, 38.562527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.377853, 34.323166, 38.975117>,  <37.062271, 34.268917, 38.384018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.377853, 34.323166, 38.975117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.187588, 34.673485, 39.007923>,  <37.073429, 34.883675, 39.027607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.187588, 34.673485, 39.007923>,  <37.377853, 34.323166, 38.975117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.187588, 34.673485, 39.007923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018362, -0.103106, 0.994501,
		0.879436, 0.471542, 0.065126,
		-0.475663, 0.875795, 0.082017,
		37.044888, 34.936222, 39.032528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.750355, 34.723228, 39.428917>,  <37.377853, 34.323166, 38.975117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.750355, 34.723228, 39.428917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.377899, 34.869053, 39.432526>,  <37.154427, 34.956547, 39.434692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.377899, 34.869053, 39.432526>,  <37.750355, 34.723228, 39.428917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.377899, 34.869053, 39.432526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028388, -0.097139, 0.994866,
		0.363562, 0.926101, 0.100798,
		-0.931137, 0.364557, 0.009026,
		37.098557, 34.978420, 39.435234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.717590, 35.116653, 40.028065>,  <37.750355, 34.723228, 39.428917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.717590, 35.116653, 40.028065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.328053, 35.090321, 39.941071>,  <37.094330, 35.074520, 39.888874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.328053, 35.090321, 39.941071>,  <37.717590, 35.116653, 40.028065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.328053, 35.090321, 39.941071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218955, 0.015834, 0.975607,
		-0.060783, 0.997705, -0.029834,
		-0.973840, -0.065833, -0.217490,
		37.035900, 35.070572, 39.875824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.396271, 35.629829, 40.458210>,  <37.717590, 35.116653, 40.028065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.396271, 35.629829, 40.458210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.113575, 35.369423, 40.347427>,  <36.943958, 35.213181, 40.280956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.113575, 35.369423, 40.347427>,  <37.396271, 35.629829, 40.458210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.113575, 35.369423, 40.347427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300338, -0.078364, 0.950608,
		-0.640561, 0.755011, -0.140141,
		-0.706738, -0.651012, -0.276955,
		36.901554, 35.174118, 40.264339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.795555, 35.816006, 40.761971>,  <37.396271, 35.629829, 40.458210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.795555, 35.816006, 40.761971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.771786, 35.430187, 40.659122>,  <36.757526, 35.198696, 40.597412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.771786, 35.430187, 40.659122>,  <36.795555, 35.816006, 40.761971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.771786, 35.430187, 40.659122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319674, -0.225627, 0.920272,
		-0.945663, 0.136879, -0.294934,
		-0.059421, -0.964550, -0.257123,
		36.753960, 35.140823, 40.581985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.051357, 35.537502, 40.947926>,  <36.795555, 35.816006, 40.761971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.051357, 35.537502, 40.947926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.312710, 35.235680, 40.923477>,  <36.469521, 35.054585, 40.908806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.312710, 35.235680, 40.923477>,  <36.051357, 35.537502, 40.947926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.312710, 35.235680, 40.923477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200485, -0.250330, 0.947175,
		-0.730001, -0.606609, -0.314838,
		0.653379, -0.754559, -0.061125,
		36.508724, 35.009312, 40.905140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.687008, 34.868591, 41.120735>,  <36.051357, 35.537502, 40.947926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.687008, 34.868591, 41.120735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.067078, 34.750599, 41.161037>,  <36.295120, 34.679806, 41.185219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.067078, 34.750599, 41.161037>,  <35.687008, 34.868591, 41.120735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.067078, 34.750599, 41.161037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179806, -0.254624, 0.950177,
		-0.254624, -0.920953, -0.294977,
		-0.950177, 0.294977, -0.100759,
		36.352131, 34.662106, 41.191265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.463348, 34.303429, 41.496429>,  <35.687008, 34.868591, 41.120735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.463348, 34.303429, 41.496429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.858368, 34.345890, 41.542862>,  <36.095379, 34.371368, 41.570721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.858368, 34.345890, 41.542862>,  <35.463348, 34.303429, 41.496429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.858368, 34.345890, 41.542862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069213, -0.369453, 0.926668,
		0.141262, -0.923166, -0.357506,
		0.987550, 0.106158, 0.116085,
		36.154633, 34.377739, 41.577686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.757954, 33.728634, 41.799706>,  <35.463348, 34.303429, 41.496429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.757954, 33.728634, 41.799706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.016090, 34.012104, 41.913773>,  <36.170971, 34.182186, 41.982212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.016090, 34.012104, 41.913773>,  <35.757954, 33.728634, 41.799706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.016090, 34.012104, 41.913773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055400, -0.328904, 0.942737,
		0.761884, -0.624183, -0.172994,
		0.645339, 0.708673, 0.285167,
		36.209694, 34.224705, 41.999321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.205963, 33.270306, 41.696609>,  <35.757954, 33.728634, 41.799706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.205963, 33.270306, 41.696609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.818756, 33.255219, 41.795818>,  <34.586430, 33.246166, 41.855343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.818756, 33.255219, 41.795818>,  <35.205963, 33.270306, 41.696609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.818756, 33.255219, 41.795818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240183, 0.424830, -0.872829,
		-0.072447, -0.904487, -0.420303,
		-0.968020, -0.037716, 0.248020,
		34.528351, 33.243904, 41.870224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.910744, 33.066654, 41.044571>,  <35.205963, 33.270306, 41.696609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.910744, 33.066654, 41.044571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.621922, 33.233212, 41.265572>,  <34.448627, 33.333145, 41.398170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.621922, 33.233212, 41.265572>,  <34.910744, 33.066654, 41.044571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.621922, 33.233212, 41.265572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431214, 0.353626, -0.830062,
		-0.541011, -0.837594, -0.075781,
		-0.722054, 0.416395, 0.552498,
		34.405304, 33.358131, 41.431320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.355694, 32.978573, 40.636639>,  <34.910744, 33.066654, 41.044571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.355694, 32.978573, 40.636639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.243347, 33.254047, 40.904022>,  <34.175938, 33.419331, 41.064453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.243347, 33.254047, 40.904022>,  <34.355694, 32.978573, 40.636639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.243347, 33.254047, 40.904022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468386, 0.509557, -0.721779,
		-0.837692, -0.515818, 0.179453,
		-0.280865, 0.688682, 0.668454,
		34.159088, 33.460651, 41.104557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.598835, 33.231213, 40.573769>,  <34.355694, 32.978573, 40.636639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.598835, 33.231213, 40.573769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.779976, 33.546200, 40.741013>,  <33.888660, 33.735191, 40.841358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.779976, 33.546200, 40.741013>,  <33.598835, 33.231213, 40.573769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.779976, 33.546200, 40.741013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508317, 0.613305, -0.604542,
		-0.732486, 0.061238, 0.678023,
		0.452856, 0.787469, 0.418108,
		33.915833, 33.782440, 40.866444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.065277, 33.793556, 40.538475>,  <33.598835, 33.231213, 40.573769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.065277, 33.793556, 40.538475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.414574, 33.972088, 40.616688>,  <33.624153, 34.079208, 40.663616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.414574, 33.972088, 40.616688>,  <33.065277, 33.793556, 40.538475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.414574, 33.972088, 40.616688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154822, 0.634611, -0.757165,
		-0.462032, 0.630918, 0.623272,
		0.873245, 0.446331, 0.195531,
		33.676548, 34.105988, 40.675346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.952583, 34.385162, 40.326809>,  <33.065277, 33.793556, 40.538475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.952583, 34.385162, 40.326809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.348545, 34.427551, 40.364468>,  <33.586121, 34.452984, 40.387062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.348545, 34.427551, 40.364468>,  <32.952583, 34.385162, 40.326809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.348545, 34.427551, 40.364468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021651, 0.543333, -0.839238,
		-0.140093, 0.832802, 0.535551,
		0.989902, 0.105976, 0.094147,
		33.645515, 34.459343, 40.392712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.167824, 35.147907, 40.013569>,  <32.952583, 34.385162, 40.326809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.167824, 35.147907, 40.013569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.498528, 34.922886, 40.013020>,  <33.696949, 34.787872, 40.012688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.498528, 34.922886, 40.013020>,  <33.167824, 35.147907, 40.013569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.498528, 34.922886, 40.013020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267061, 0.394634, -0.879172,
		0.495125, 0.726495, 0.476503,
		0.826758, -0.562556, -0.001375,
		33.746555, 34.754120, 40.012608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.721748, 35.535320, 39.905220>,  <33.167824, 35.147907, 40.013569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.721748, 35.535320, 39.905220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.813988, 35.165249, 39.784641>,  <33.869331, 34.943207, 39.712296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.813988, 35.165249, 39.784641>,  <33.721748, 35.535320, 39.905220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.813988, 35.165249, 39.784641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267509, 0.358133, -0.894528,
		0.935555, 0.125640, 0.330079,
		0.230601, -0.925179, -0.301443,
		33.883167, 34.887695, 39.694210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.007320, 35.719269, 39.308895>,  <33.721748, 35.535320, 39.905220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.007320, 35.719269, 39.308895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.966228, 35.324936, 39.255863>,  <33.941574, 35.088337, 39.224045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.966228, 35.324936, 39.255863>,  <34.007320, 35.719269, 39.308895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.966228, 35.324936, 39.255863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131361, 0.145565, -0.980589,
		0.985997, -0.083321, -0.144454,
		-0.102731, -0.985834, -0.132582,
		33.935410, 35.029186, 39.216087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.466492, 35.493744, 38.796432>,  <34.007320, 35.719269, 39.308895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.466492, 35.493744, 38.796432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.160347, 35.236656, 38.809891>,  <33.976658, 35.082405, 38.817966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.160347, 35.236656, 38.809891>,  <34.466492, 35.493744, 38.796432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.160347, 35.236656, 38.809891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110144, 0.079293, -0.990748,
		0.634102, -0.761989, -0.131479,
		-0.765364, -0.642717, 0.033649,
		33.930737, 35.043842, 38.819984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.577328, 35.182495, 38.171268>,  <34.466492, 35.493744, 38.796432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.577328, 35.182495, 38.171268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.200245, 35.083466, 38.260715>,  <33.973995, 35.024048, 38.314384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.200245, 35.083466, 38.260715>,  <34.577328, 35.182495, 38.171268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.200245, 35.083466, 38.260715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234680, 0.015720, -0.971946,
		0.237111, -0.968742, -0.072920,
		-0.942711, -0.247572, 0.223617,
		33.917431, 35.009193, 38.327801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.396843, 34.631790, 37.815205>,  <34.577328, 35.182495, 38.171268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.396843, 34.631790, 37.815205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.034584, 34.779358, 37.898823>,  <33.817230, 34.867901, 37.948994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.034584, 34.779358, 37.898823>,  <34.396843, 34.631790, 37.815205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.034584, 34.779358, 37.898823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241430, -0.043356, -0.969449,
		-0.348591, -0.928447, 0.128335,
		-0.905647, 0.368925, 0.209041,
		33.762890, 34.890034, 37.961536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.894920, 34.215431, 37.411415>,  <34.396843, 34.631790, 37.815205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.894920, 34.215431, 37.411415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.734882, 34.573593, 37.489555>,  <33.638859, 34.788490, 37.536442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.734882, 34.573593, 37.489555>,  <33.894920, 34.215431, 37.411415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.734882, 34.573593, 37.489555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293788, 0.076600, -0.952797,
		-0.868107, -0.438605, 0.232413,
		-0.400098, 0.895409, 0.195354,
		33.614853, 34.842216, 37.548161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.516758, 33.689068, 37.241245>,  <33.894920, 34.215431, 37.411415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.516758, 33.689068, 37.241245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.796265, 33.708836, 36.955791>,  <33.963970, 33.720695, 36.784519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.796265, 33.708836, 36.955791>,  <33.516758, 33.689068, 37.241245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.796265, 33.708836, 36.955791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418682, -0.837143, 0.351990,
		-0.580023, -0.544748, -0.605660,
		0.698770, 0.049417, -0.713637,
		34.005898, 33.723660, 36.741699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.500031, 33.112114, 36.846382>,  <33.516758, 33.689068, 37.241245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.500031, 33.112114, 36.846382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.868217, 33.264362, 36.810913>,  <34.089130, 33.355713, 36.789631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.868217, 33.264362, 36.810913>,  <33.500031, 33.112114, 36.846382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.868217, 33.264362, 36.810913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377641, -0.807835, 0.452538,
		0.100612, -0.450034, -0.887326,
		0.920470, 0.380621, -0.088673,
		34.144360, 33.378548, 36.784309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.191753, 32.906200, 36.948654>,  <33.500031, 33.112114, 36.846382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.191753, 32.906200, 36.948654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.542904, 32.850193, 37.131836>,  <34.753593, 32.816589, 37.241745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.542904, 32.850193, 37.131836>,  <34.191753, 32.906200, 36.948654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.542904, 32.850193, 37.131836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353286, 0.834957, -0.421942,
		-0.323292, 0.532203, 0.782459,
		0.877879, -0.140022, 0.457955,
		34.806267, 32.808186, 37.269222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.639202, 32.562050, 36.662643>,  <34.191753, 32.906200, 36.948654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.639202, 32.562050, 36.662643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.909378, 32.856953, 36.668755>,  <35.071484, 33.033894, 36.672421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.909378, 32.856953, 36.668755>,  <34.639202, 32.562050, 36.662643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.909378, 32.856953, 36.668755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526201, -0.496393, 0.690440,
		0.516615, -0.458312, -0.723229,
		0.675442, 0.737255, 0.015280,
		35.112011, 33.078129, 36.673340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.320030, 32.178467, 36.638481>,  <34.639202, 32.562050, 36.662643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.320030, 32.178467, 36.638481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.389084, 32.560425, 36.735123>,  <35.430515, 32.789600, 36.793106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.389084, 32.560425, 36.735123>,  <35.320030, 32.178467, 36.638481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.389084, 32.560425, 36.735123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.743070, -0.287264, 0.604423,
		0.646565, 0.075187, -0.759145,
		0.172630, 0.954896, 0.241604,
		35.440872, 32.846893, 36.807606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.064110, 32.303989, 36.495785>,  <35.320030, 32.178467, 36.638481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.064110, 32.303989, 36.495785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.938637, 32.568760, 36.768093>,  <35.863354, 32.727623, 36.931480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.938637, 32.568760, 36.768093>,  <36.064110, 32.303989, 36.495785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.938637, 32.568760, 36.768093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.673455, -0.350332, 0.650942,
		0.669375, 0.662659, -0.335888,
		-0.313680, 0.661930, 0.680775,
		35.844532, 32.767338, 36.972324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.715950, 32.576153, 36.788448>,  <36.064110, 32.303989, 36.495785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.715950, 32.576153, 36.788448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.418499, 32.643799, 37.047188>,  <36.240028, 32.684387, 37.202431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.418499, 32.643799, 37.047188>,  <36.715950, 32.576153, 36.788448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.418499, 32.643799, 37.047188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520570, -0.460653, 0.718892,
		0.419550, 0.871320, 0.254517,
		-0.743629, 0.169117, 0.646850,
		36.195412, 32.694534, 37.241241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.079250, 32.670315, 37.459068>,  <36.715950, 32.576153, 36.788448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.079250, 32.670315, 37.459068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.708271, 32.563774, 37.564060>,  <36.485683, 32.499851, 37.627056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.708271, 32.563774, 37.564060>,  <37.079250, 32.670315, 37.459068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.708271, 32.563774, 37.564060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367948, -0.524712, 0.767654,
		-0.066737, 0.808539, 0.584646,
		-0.927448, -0.266351, 0.262482,
		36.430035, 32.483868, 37.642803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.083012, 32.772484, 38.188938>,  <37.079250, 32.670315, 37.459068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.083012, 32.772484, 38.188938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.769890, 32.540234, 38.099419>,  <36.582016, 32.400883, 38.045708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.769890, 32.540234, 38.099419>,  <37.083012, 32.772484, 38.188938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.769890, 32.540234, 38.099419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273516, -0.644107, 0.714364,
		-0.558927, 0.497998, 0.663023,
		-0.782809, -0.580624, -0.223798,
		36.535046, 32.366047, 38.032280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.679531, 32.595634, 38.826790>,  <37.083012, 32.772484, 38.188938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.679531, 32.595634, 38.826790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.579105, 32.309303, 38.566154>,  <36.518852, 32.137505, 38.409775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.579105, 32.309303, 38.566154>,  <36.679531, 32.595634, 38.826790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.579105, 32.309303, 38.566154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098490, -0.688542, 0.718477,
		-0.962948, 0.116208, 0.243368,
		-0.251061, -0.715825, -0.651585,
		36.503788, 32.094555, 38.370678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.194775, 32.151817, 39.211143>,  <36.679531, 32.595634, 38.826790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.194775, 32.151817, 39.211143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.336311, 31.935219, 38.906097>,  <36.421234, 31.805260, 38.723072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.336311, 31.935219, 38.906097>,  <36.194775, 32.151817, 39.211143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.336311, 31.935219, 38.906097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192728, -0.755653, 0.625975,
		-0.915233, -0.368474, -0.163021,
		0.353843, -0.541494, -0.762614,
		36.442463, 31.772770, 38.677315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.979485, 31.494392, 39.424412>,  <36.194775, 32.151817, 39.211143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.979485, 31.494392, 39.424412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.242149, 31.437658, 39.128120>,  <36.399750, 31.403618, 38.950344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.242149, 31.437658, 39.128120>,  <35.979485, 31.494392, 39.424412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.242149, 31.437658, 39.128120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388464, -0.778240, 0.493395,
		-0.646443, -0.611740, -0.455945,
		0.656663, -0.141834, -0.740727,
		36.439148, 31.395107, 38.905903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.922916, 30.748631, 39.294987>,  <35.979485, 31.494392, 39.424412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.922916, 30.748631, 39.294987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.271435, 30.875118, 39.144867>,  <36.480545, 30.951012, 39.054794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.271435, 30.875118, 39.144867>,  <35.922916, 30.748631, 39.294987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.271435, 30.875118, 39.144867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473540, -0.742506, 0.473755,
		-0.128850, -0.590499, -0.796686,
		0.871296, 0.316220, -0.375297,
		36.532825, 30.969984, 39.032276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.267277, 30.168991, 38.990547>,  <35.922916, 30.748631, 39.294987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.267277, 30.168991, 38.990547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.544376, 30.440775, 39.087246>,  <36.710636, 30.603846, 39.145264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.544376, 30.440775, 39.087246>,  <36.267277, 30.168991, 38.990547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.544376, 30.440775, 39.087246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520001, -0.702860, 0.485373,
		0.499702, -0.210534, -0.840222,
		0.692746, 0.679458, 0.241743,
		36.752201, 30.644613, 39.159767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.778858, 29.856045, 38.864544>,  <36.267277, 30.168991, 38.990547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.778858, 29.856045, 38.864544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.936733, 30.142719, 39.094532>,  <37.031456, 30.314724, 39.232525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.936733, 30.142719, 39.094532>,  <36.778858, 29.856045, 38.864544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.936733, 30.142719, 39.094532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538374, -0.687481, 0.487364,
		0.744565, 0.117192, -0.657183,
		0.394686, 0.716684, 0.574967,
		37.055138, 30.357725, 39.267021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.493282, 29.682123, 38.924183>,  <36.778858, 29.856045, 38.864544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.493282, 29.682123, 38.924183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.413414, 29.920031, 39.235664>,  <37.365494, 30.062775, 39.422554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.413414, 29.920031, 39.235664>,  <37.493282, 29.682123, 38.924183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.413414, 29.920031, 39.235664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599386, -0.554548, 0.577246,
		0.775158, 0.582002, -0.245771,
		-0.199667, 0.594769, 0.778706,
		37.353516, 30.098461, 39.469276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.158997, 29.776051, 39.237694>,  <37.493282, 29.682123, 38.924183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.158997, 29.776051, 39.237694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.918301, 29.910593, 39.527458>,  <37.773884, 29.991318, 39.701317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.918301, 29.910593, 39.527458>,  <38.158997, 29.776051, 39.237694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.918301, 29.910593, 39.527458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.616095, -0.381706, 0.689004,
		0.508262, 0.860909, 0.022462,
		-0.601744, 0.336356, 0.724409,
		37.737778, 30.011499, 39.744781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.555607, 30.132057, 39.765339>,  <38.158997, 29.776051, 39.237694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.555607, 30.132057, 39.765339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.233131, 30.022779, 39.975262>,  <38.039646, 29.957212, 40.101215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.233131, 30.022779, 39.975262>,  <38.555607, 30.132057, 39.765339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.233131, 30.022779, 39.975262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591539, -0.354393, 0.724215,
		-0.011865, 0.894298, 0.447314,
		-0.806189, -0.273196, 0.524807,
		37.991276, 29.940821, 40.132706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.808426, 30.311605, 40.328030>,  <38.555607, 30.132057, 39.765339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.808426, 30.311605, 40.328030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.501186, 30.061243, 40.382080>,  <38.316841, 29.911026, 40.414509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.501186, 30.061243, 40.382080>,  <38.808426, 30.311605, 40.328030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.501186, 30.061243, 40.382080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482974, -0.427746, 0.764048,
		-0.420424, 0.652130, 0.630849,
		-0.768102, -0.625908, 0.135127,
		38.270756, 29.873470, 40.422619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.672279, 30.387388, 41.053959>,  <38.808426, 30.311605, 40.328030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.672279, 30.387388, 41.053959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.494453, 30.045258, 40.947536>,  <38.387760, 29.839979, 40.883682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.494453, 30.045258, 40.947536>,  <38.672279, 30.387388, 41.053959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.494453, 30.045258, 40.947536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244420, -0.401577, 0.882607,
		-0.861756, 0.327345, 0.387585,
		-0.444563, -0.855325, -0.266052,
		38.361084, 29.788660, 40.867722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.243519, 30.209942, 41.599606>,  <38.672279, 30.387388, 41.053959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.243519, 30.209942, 41.599606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.266411, 29.861845, 41.403889>,  <38.280148, 29.652987, 41.286457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.266411, 29.861845, 41.403889>,  <38.243519, 30.209942, 41.599606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.266411, 29.861845, 41.403889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072707, -0.485161, 0.871397,
		-0.995710, -0.085448, 0.035505,
		0.057233, -0.870240, -0.489292,
		38.283581, 29.600773, 41.257099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.741230, 29.826624, 41.864799>,  <38.243519, 30.209942, 41.599606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.741230, 29.826624, 41.864799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.999790, 29.569689, 41.700081>,  <38.154926, 29.415527, 41.601250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.999790, 29.569689, 41.700081>,  <37.741230, 29.826624, 41.864799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.999790, 29.569689, 41.700081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078338, -0.480979, 0.873226,
		-0.758968, -0.596710, -0.260584,
		0.646398, -0.642337, -0.411792,
		38.193710, 29.376987, 41.576542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.465244, 29.187807, 41.993492>,  <37.741230, 29.826624, 41.864799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.465244, 29.187807, 41.993492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.858025, 29.176170, 41.918747>,  <38.093693, 29.169188, 41.873901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.858025, 29.176170, 41.918747>,  <37.465244, 29.187807, 41.993492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.858025, 29.176170, 41.918747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157457, -0.421482, 0.893062,
		-0.104741, -0.906370, -0.409296,
		0.981956, -0.029093, -0.186861,
		38.152611, 29.167442, 41.862690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.787556, 28.699137, 42.401588>,  <37.465244, 29.187807, 41.993492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.787556, 28.699137, 42.401588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.139072, 28.868160, 42.312897>,  <38.349983, 28.969574, 42.259682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.139072, 28.868160, 42.312897>,  <37.787556, 28.699137, 42.401588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.139072, 28.868160, 42.312897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386890, -0.358889, 0.849420,
		0.279352, -0.832252, -0.478874,
		0.878794, 0.422558, -0.221734,
		38.402710, 28.994928, 42.246376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.369415, 28.135323, 42.389137>,  <37.787556, 28.699137, 42.401588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.369415, 28.135323, 42.389137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.508625, 28.501932, 42.467987>,  <38.592152, 28.721899, 42.515297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.508625, 28.501932, 42.467987>,  <38.369415, 28.135323, 42.389137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.508625, 28.501932, 42.467987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282936, -0.303150, 0.909971,
		0.893769, -0.260924, -0.364823,
		0.348029, 0.916526, 0.197121,
		38.613033, 28.776890, 42.527122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.023739, 27.992634, 42.645538>,  <38.369415, 28.135323, 42.389137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.023739, 27.992634, 42.645538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.958076, 28.358690, 42.792816>,  <38.918678, 28.578325, 42.881184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.958076, 28.358690, 42.792816>,  <39.023739, 27.992634, 42.645538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.958076, 28.358690, 42.792816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485691, -0.249893, 0.837650,
		0.858579, 0.316332, -0.403456,
		-0.164154, 0.915143, 0.368193,
		38.908829, 28.633234, 42.903275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.644070, 28.040798, 43.029240>,  <39.023739, 27.992634, 42.645538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.644070, 28.040798, 43.029240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.394115, 28.327383, 43.153301>,  <39.244141, 28.499334, 43.227737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.394115, 28.327383, 43.153301>,  <39.644070, 28.040798, 43.029240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.394115, 28.327383, 43.153301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408972, -0.038000, 0.911755,
		0.665024, 0.696591, -0.269267,
		-0.624888, 0.716462, 0.310157,
		39.206650, 28.542322, 43.246349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.005447, 28.518267, 43.452370>,  <39.644070, 28.040798, 43.029240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.005447, 28.518267, 43.452370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.619507, 28.553535, 43.551399>,  <39.387943, 28.574697, 43.610817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.619507, 28.553535, 43.551399>,  <40.005447, 28.518267, 43.452370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.619507, 28.553535, 43.551399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242972, -0.059730, 0.968193,
		0.100156, 0.994313, 0.036207,
		-0.964849, 0.088173, 0.247572,
		39.330051, 28.579987, 43.625671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.031517, 29.002720, 44.065365>,  <40.005447, 28.518267, 43.452370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.031517, 29.002720, 44.065365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.666313, 28.839767, 44.073868>,  <39.447189, 28.741997, 44.078968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.666313, 28.839767, 44.073868>,  <40.031517, 29.002720, 44.065365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.666313, 28.839767, 44.073868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052840, -0.066432, 0.996391,
		-0.404499, 0.910839, 0.082179,
		-0.913011, -0.407381, 0.021257,
		39.392410, 28.717552, 44.080246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.105152, 29.789995, 44.147717>,  <40.031517, 29.002720, 44.065365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.105152, 29.789995, 44.147717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.428455, 29.966045, 44.304180>,  <40.622437, 30.071676, 44.398056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.428455, 29.966045, 44.304180>,  <40.105152, 29.789995, 44.147717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.428455, 29.966045, 44.304180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173116, 0.457321, -0.872289,
		-0.562803, 0.772752, 0.293442,
		0.808260, 0.440127, 0.391157,
		40.670933, 30.098083, 44.421528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.012493, 30.526094, 44.134403>,  <40.105152, 29.789995, 44.147717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.012493, 30.526094, 44.134403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.401100, 30.431572, 44.127308>,  <40.634266, 30.374859, 44.123051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.401100, 30.431572, 44.127308>,  <40.012493, 30.526094, 44.134403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.401100, 30.431572, 44.127308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079838, 0.396860, -0.914400,
		0.223119, 0.886939, 0.404422,
		0.971516, -0.236308, -0.017735,
		40.692554, 30.360680, 44.121986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.255325, 31.170025, 43.794403>,  <40.012493, 30.526094, 44.134403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.255325, 31.170025, 43.794403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.574062, 30.928352, 43.795788>,  <40.765305, 30.783348, 43.796619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.574062, 30.928352, 43.795788>,  <40.255325, 31.170025, 43.794403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.574062, 30.928352, 43.795788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381375, 0.498522, -0.778478,
		0.468617, 0.621642, 0.627662,
		0.796838, -0.604183, 0.003463,
		40.813114, 30.747097, 43.796825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.880829, 31.616247, 43.645023>,  <40.255325, 31.170025, 43.794403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.880829, 31.616247, 43.645023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.950752, 31.229744, 43.569355>,  <40.992706, 30.997843, 43.523952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.950752, 31.229744, 43.569355>,  <40.880829, 31.616247, 43.645023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.950752, 31.229744, 43.569355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158661, 0.217266, -0.963132,
		0.971734, 0.138353, 0.191288,
		0.174813, -0.966258, -0.189173,
		41.003197, 30.939867, 43.512604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.613533, 31.588968, 43.461056>,  <40.880829, 31.616247, 43.645023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.613533, 31.588968, 43.461056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.409832, 31.279375, 43.310528>,  <41.287613, 31.093620, 43.220211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.409832, 31.279375, 43.310528>,  <41.613533, 31.588968, 43.461056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.409832, 31.279375, 43.310528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225163, 0.302209, -0.926268,
		0.830640, -0.556437, 0.020371,
		-0.509253, -0.773982, -0.376316,
		41.257057, 31.047180, 43.197632>
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
