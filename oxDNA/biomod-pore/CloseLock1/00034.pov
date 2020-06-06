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
	<24.627121, 34.985588, 35.291359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.370165, 35.132870, 35.022507>,  <24.215992, 35.221237, 34.861195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.370165, 35.132870, 35.022507>,  <24.627121, 34.985588, 35.291359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.370165, 35.132870, 35.022507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.734498, 0.546117, -0.402826,
		0.218742, -0.752452, -0.621264,
		-0.642390, 0.368202, -0.672133,
		24.177448, 35.243332, 34.820866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.044363, 34.920425, 34.617847>,  <24.627121, 34.985588, 35.291359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.044363, 34.920425, 34.617847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.755453, 35.196808, 34.605850>,  <24.582108, 35.362637, 34.598652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.755453, 35.196808, 34.605850>,  <25.044363, 34.920425, 34.617847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.755453, 35.196808, 34.605850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576617, 0.577677, -0.577757,
		-0.381879, -0.434593, -0.815658,
		-0.722275, 0.690955, -0.029991,
		24.538771, 35.404095, 34.596851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.693064, 35.120213, 33.879700>,  <25.044363, 34.920425, 34.617847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.693064, 35.120213, 33.879700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.733860, 35.400383, 34.162258>,  <24.758339, 35.568485, 34.331795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.733860, 35.400383, 34.162258>,  <24.693064, 35.120213, 33.879700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.733860, 35.400383, 34.162258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.650691, 0.490150, -0.579960,
		-0.752461, 0.518798, -0.405772,
		0.101993, 0.700430, 0.706396,
		24.764458, 35.610512, 34.374176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.591387, 35.721840, 33.554096>,  <24.693064, 35.120213, 33.879700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.591387, 35.721840, 33.554096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.850792, 35.778267, 33.853302>,  <25.006435, 35.812122, 34.032825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.850792, 35.778267, 33.853302>,  <24.591387, 35.721840, 33.554096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.850792, 35.778267, 33.853302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.675789, 0.345583, -0.651062,
		-0.350344, 0.927725, 0.128786,
		0.648512, 0.141063, 0.748019,
		25.045345, 35.820587, 34.077709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.878716, 36.383213, 33.585411>,  <24.591387, 35.721840, 33.554096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.878716, 36.383213, 33.585411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.184242, 36.187435, 33.753708>,  <25.367558, 36.069969, 33.854687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.184242, 36.187435, 33.753708>,  <24.878716, 36.383213, 33.585411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.184242, 36.187435, 33.753708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644169, 0.537304, -0.544381,
		0.040379, 0.686837, 0.725689,
		0.763816, -0.489448, 0.420743,
		25.413387, 36.040600, 33.879932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.343288, 36.819519, 33.943722>,  <24.878716, 36.383213, 33.585411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.343288, 36.819519, 33.943722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.557932, 36.505379, 33.820259>,  <25.686718, 36.316895, 33.746181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.557932, 36.505379, 33.820259>,  <25.343288, 36.819519, 33.943722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.557932, 36.505379, 33.820259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599526, 0.612237, -0.515495,
		0.593817, 0.091573, 0.799372,
		0.536610, -0.785354, -0.308656,
		25.718916, 36.269772, 33.727661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.031950, 36.850288, 34.162769>,  <25.343288, 36.819519, 33.943722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.031950, 36.850288, 34.162769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.048845, 36.636440, 33.825157>,  <26.058983, 36.508129, 33.622589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.048845, 36.636440, 33.825157>,  <26.031950, 36.850288, 34.162769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.048845, 36.636440, 33.825157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.708118, 0.611982, -0.352202,
		0.704829, -0.582799, 0.404427,
		0.042239, -0.534625, -0.844033,
		26.061518, 36.476051, 33.571949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.745859, 36.827389, 34.050945>,  <26.031950, 36.850288, 34.162769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.745859, 36.827389, 34.050945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.619896, 36.697590, 33.694176>,  <26.544319, 36.619709, 33.480114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.619896, 36.697590, 33.694176>,  <26.745859, 36.827389, 34.050945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.619896, 36.697590, 33.694176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.744034, 0.499050, -0.444255,
		0.589277, -0.803523, 0.084285,
		-0.314907, -0.324500, -0.891927,
		26.525423, 36.600239, 33.426598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.258715, 36.478962, 33.601410>,  <26.745859, 36.827389, 34.050945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.258715, 36.478962, 33.601410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.974962, 36.599995, 33.346783>,  <26.804710, 36.672615, 33.194004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.974962, 36.599995, 33.346783>,  <27.258715, 36.478962, 33.601410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.974962, 36.599995, 33.346783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.679862, 0.531983, -0.504758,
		0.185917, -0.790847, -0.583091,
		-0.709381, 0.302579, -0.636572,
		26.762148, 36.690769, 33.155811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.618362, 36.406769, 32.990929>,  <27.258715, 36.478962, 33.601410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.618362, 36.406769, 32.990929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.316002, 36.654987, 32.907467>,  <27.134584, 36.803917, 32.857391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.316002, 36.654987, 32.907467>,  <27.618362, 36.406769, 32.990929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.316002, 36.654987, 32.907467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612471, 0.557699, -0.560224,
		-0.231279, -0.551268, -0.801632,
		-0.755903, 0.620545, -0.208651,
		27.089231, 36.841152, 32.844872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.636299, 36.584084, 32.363121>,  <27.618362, 36.406769, 32.990929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.636299, 36.584084, 32.363121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.406387, 36.895676, 32.463379>,  <27.268440, 37.082630, 32.523533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.406387, 36.895676, 32.463379>,  <27.636299, 36.584084, 32.363121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.406387, 36.895676, 32.463379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.633217, 0.617410, -0.466736,
		-0.518329, -0.109556, -0.848135,
		-0.574780, 0.778976, 0.250648,
		27.233953, 37.129368, 32.538574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.437201, 36.912071, 31.840683>,  <27.636299, 36.584084, 32.363121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.437201, 36.912071, 31.840683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.386572, 37.198856, 32.114895>,  <27.356194, 37.370926, 32.279423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.386572, 37.198856, 32.114895>,  <27.437201, 36.912071, 31.840683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.386572, 37.198856, 32.114895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541893, 0.628829, -0.557607,
		-0.830862, 0.300905, -0.468108,
		-0.126573, 0.716959, 0.685528,
		27.348600, 37.413944, 32.320553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.193188, 37.593822, 31.479425>,  <27.437201, 36.912071, 31.840683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.193188, 37.593822, 31.479425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.340994, 37.693604, 31.837471>,  <27.429678, 37.753471, 32.052299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.340994, 37.693604, 31.837471>,  <27.193188, 37.593822, 31.479425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.340994, 37.693604, 31.837471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617072, 0.654349, -0.437092,
		-0.694753, 0.713862, 0.087858,
		0.369513, 0.249456, 0.895115,
		27.451847, 37.768440, 32.106007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.216612, 38.235832, 31.485712>,  <27.193188, 37.593822, 31.479425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.216612, 38.235832, 31.485712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.462612, 38.201958, 31.799297>,  <27.610212, 38.181633, 31.987450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.462612, 38.201958, 31.799297>,  <27.216612, 38.235832, 31.485712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.462612, 38.201958, 31.799297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569610, 0.735214, -0.367430,
		-0.545267, 0.672525, 0.500394,
		0.615002, -0.084682, 0.783965,
		27.647112, 38.176552, 32.034489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.484926, 38.945461, 31.579388>,  <27.216612, 38.235832, 31.485712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.484926, 38.945461, 31.579388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.744650, 38.673943, 31.716579>,  <27.900484, 38.511032, 31.798895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.744650, 38.673943, 31.716579>,  <27.484926, 38.945461, 31.579388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.744650, 38.673943, 31.716579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.754234, 0.516847, -0.404968,
		0.097623, 0.521636, 0.847564,
		0.649307, -0.678796, 0.342980,
		27.939442, 38.470303, 31.819473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.086279, 39.306122, 31.881824>,  <27.484926, 38.945461, 31.579388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.086279, 39.306122, 31.881824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.227480, 38.944736, 31.784546>,  <28.312201, 38.727905, 31.726179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.227480, 38.944736, 31.784546>,  <28.086279, 39.306122, 31.881824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.227480, 38.944736, 31.784546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.814268, 0.424681, -0.395746,
		0.460822, -0.058326, 0.885574,
		0.353004, -0.903462, -0.243195,
		28.333382, 38.673698, 31.711588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.765205, 39.337444, 31.895121>,  <28.086279, 39.306122, 31.881824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.765205, 39.337444, 31.895121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.746342, 38.989143, 31.699341>,  <28.735023, 38.780163, 31.581873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.746342, 38.989143, 31.699341>,  <28.765205, 39.337444, 31.895121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.746342, 38.989143, 31.699341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.797998, 0.261881, -0.542787,
		0.600812, -0.416177, 0.682511,
		-0.047158, -0.870755, -0.489450,
		28.732195, 38.727917, 31.552505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.396616, 39.180824, 31.866779>,  <28.765205, 39.337444, 31.895121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.396616, 39.180824, 31.866779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.231852, 38.969620, 31.569717>,  <29.132994, 38.842899, 31.391479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.231852, 38.969620, 31.569717>,  <29.396616, 39.180824, 31.866779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.231852, 38.969620, 31.569717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.711628, 0.322641, -0.624091,
		0.569137, -0.785563, 0.242847,
		-0.411910, -0.528010, -0.742655,
		29.108278, 38.811218, 31.346922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.901827, 38.707870, 31.540615>,  <29.396616, 39.180824, 31.866779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.901827, 38.707870, 31.540615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.608288, 38.797958, 31.284258>,  <29.432163, 38.852009, 31.130444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.608288, 38.797958, 31.284258>,  <29.901827, 38.707870, 31.540615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.608288, 38.797958, 31.284258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.678947, 0.274091, -0.681106,
		0.022266, -0.934961, -0.354052,
		-0.733849, 0.225217, -0.640892,
		29.388132, 38.865524, 31.091990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.142490, 38.420128, 31.008657>,  <29.901827, 38.707870, 31.540615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.142490, 38.420128, 31.008657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.860447, 38.663094, 30.862305>,  <29.691221, 38.808872, 30.774494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.860447, 38.663094, 30.862305>,  <30.142490, 38.420128, 31.008657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.860447, 38.663094, 30.862305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540120, 0.125743, -0.832141,
		-0.459450, -0.784368, -0.416741,
		-0.705107, 0.607417, -0.365881,
		29.648914, 38.845318, 30.752541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.046801, 38.078533, 30.436703>,  <30.142490, 38.420128, 31.008657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.046801, 38.078533, 30.436703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.879169, 38.434849, 30.366421>,  <29.778591, 38.648636, 30.324251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.879169, 38.434849, 30.366421>,  <30.046801, 38.078533, 30.436703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.879169, 38.434849, 30.366421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377235, -0.005196, -0.926103,
		-0.825874, -0.454391, -0.333858,
		-0.419078, 0.890787, -0.175704,
		29.753447, 38.702084, 30.313709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.668343, 38.103996, 29.796152>,  <30.046801, 38.078533, 30.436703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.668343, 38.103996, 29.796152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.744478, 38.489918, 29.868732>,  <29.790159, 38.721470, 29.912281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.744478, 38.489918, 29.868732>,  <29.668343, 38.103996, 29.796152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.744478, 38.489918, 29.868732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317390, 0.114427, -0.941366,
		-0.928997, 0.236767, -0.284440,
		0.190337, 0.964805, 0.181450,
		29.801579, 38.779358, 29.923168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.482410, 38.447384, 29.157776>,  <29.668343, 38.103996, 29.796152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.482410, 38.447384, 29.157776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.747175, 38.667988, 29.360838>,  <29.906034, 38.800350, 29.482676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.747175, 38.667988, 29.360838>,  <29.482410, 38.447384, 29.157776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.747175, 38.667988, 29.360838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596728, 0.022169, -0.802137,
		-0.453638, 0.833876, -0.314425,
		0.661913, 0.551506, 0.507654,
		29.945749, 38.833439, 29.513134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.541370, 39.044716, 28.901649>,  <29.482410, 38.447384, 29.157776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.541370, 39.044716, 28.901649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.873629, 39.059788, 29.123857>,  <30.072985, 39.068832, 29.257183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.873629, 39.059788, 29.123857>,  <29.541370, 39.044716, 28.901649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.873629, 39.059788, 29.123857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514503, 0.329474, -0.791665,
		-0.212863, 0.943412, 0.254289,
		0.830648, 0.037683, 0.555522,
		30.122824, 39.071095, 29.290514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.807306, 39.728317, 28.739958>,  <29.541370, 39.044716, 28.901649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.807306, 39.728317, 28.739958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.095881, 39.487579, 28.876963>,  <30.269026, 39.343136, 28.959166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.095881, 39.487579, 28.876963>,  <29.807306, 39.728317, 28.739958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.095881, 39.487579, 28.876963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526962, 0.156245, -0.835403,
		0.449265, 0.783181, 0.429869,
		0.721437, -0.601842, 0.342511,
		30.312311, 39.307026, 28.979715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.546806, 40.029316, 28.644983>,  <29.807306, 39.728317, 28.739958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.546806, 40.029316, 28.644983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.514900, 39.631111, 28.624601>,  <30.495756, 39.392189, 28.612373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.514900, 39.631111, 28.624601>,  <30.546806, 40.029316, 28.644983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.514900, 39.631111, 28.624601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318644, 0.022969, -0.947596,
		0.944512, -0.091822, 0.315381,
		-0.079767, -0.995511, -0.050953,
		30.490971, 39.332458, 28.609316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.207525, 39.653683, 28.510071>,  <30.546806, 40.029316, 28.644983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.207525, 39.653683, 28.510071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.902151, 39.454361, 28.345699>,  <30.718927, 39.334766, 28.247076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.902151, 39.454361, 28.345699>,  <31.207525, 39.653683, 28.510071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.902151, 39.454361, 28.345699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560505, -0.194998, -0.804867,
		0.320938, -0.844790, 0.428169,
		-0.763435, -0.498303, -0.410927,
		30.673120, 39.304871, 28.222422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.268124, 38.822704, 28.529613>,  <31.207525, 39.653683, 28.510071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.268124, 38.822704, 28.529613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.111553, 39.025200, 28.222235>,  <31.017611, 39.146698, 28.037807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.111553, 39.025200, 28.222235>,  <31.268124, 38.822704, 28.529613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.111553, 39.025200, 28.222235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.811387, -0.204062, -0.547732,
		-0.434093, -0.837904, -0.330878,
		-0.391427, 0.506236, -0.768446,
		30.994125, 39.177071, 27.991701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.999258, 38.699703, 28.470913>,  <31.268124, 38.822704, 28.529613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.999258, 38.699703, 28.470913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.263062, 38.547318, 28.730116>,  <32.421345, 38.455887, 28.885637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.263062, 38.547318, 28.730116>,  <31.999258, 38.699703, 28.470913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.263062, 38.547318, 28.730116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240296, -0.709982, -0.661955,
		0.712253, 0.592280, -0.376697,
		0.659511, -0.380961, 0.648009,
		32.460915, 38.433029, 28.924519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.553928, 38.641384, 28.083563>,  <31.999258, 38.699703, 28.470913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.553928, 38.641384, 28.083563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.552773, 38.406319, 28.407204>,  <32.552078, 38.265282, 28.601389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.552773, 38.406319, 28.407204>,  <32.553928, 38.641384, 28.083563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.552773, 38.406319, 28.407204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125233, -0.802948, -0.582745,
		0.992123, 0.099642, 0.075915,
		-0.002890, -0.587662, 0.809102,
		32.551907, 38.230019, 28.649935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.230251, 38.198273, 28.358393>,  <32.553928, 38.641384, 28.083563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.230251, 38.198273, 28.358393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.858318, 38.054920, 28.391783>,  <32.635159, 37.968910, 28.411818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.858318, 38.054920, 28.391783>,  <33.230251, 38.198273, 28.358393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.858318, 38.054920, 28.391783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220617, -0.724504, -0.653010,
		0.294506, -0.588776, 0.752735,
		-0.929836, -0.358381, 0.083476,
		32.579369, 37.947407, 28.416826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.247711, 37.400124, 28.577211>,  <33.230251, 38.198273, 28.358393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.247711, 37.400124, 28.577211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.975903, 37.554611, 28.327702>,  <32.812817, 37.647305, 28.177996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.975903, 37.554611, 28.327702>,  <33.247711, 37.400124, 28.577211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.975903, 37.554611, 28.327702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311801, -0.617590, -0.722054,
		-0.664109, -0.685140, 0.299238,
		-0.679514, 0.386220, -0.623775,
		32.772049, 37.670475, 28.140570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.844791, 37.573353, 29.128126>,  <33.247711, 37.400124, 28.577211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.844791, 37.573353, 29.128126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.476555, 37.417839, 29.142912>,  <33.255615, 37.324532, 29.151783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.476555, 37.417839, 29.142912>,  <33.844791, 37.573353, 29.128126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.476555, 37.417839, 29.142912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390100, -0.919907, 0.039911,
		0.018487, 0.051161, 0.998519,
		-0.920587, -0.388785, 0.036964,
		33.200378, 37.301205, 29.154001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.816559, 37.059624, 29.553200>,  <33.844791, 37.573353, 29.128126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.816559, 37.059624, 29.553200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.581799, 36.976128, 29.240286>,  <33.440941, 36.926029, 29.052538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.581799, 36.976128, 29.240286>,  <33.816559, 37.059624, 29.553200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.581799, 36.976128, 29.240286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452652, -0.885687, -0.103268,
		-0.671303, -0.414711, 0.614301,
		-0.586905, -0.208740, -0.782285,
		33.405727, 36.913506, 29.005600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.326996, 36.441742, 29.525223>,  <33.816559, 37.059624, 29.553200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.326996, 36.441742, 29.525223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.414974, 36.474766, 29.136417>,  <33.467762, 36.494579, 28.903135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.414974, 36.474766, 29.136417>,  <33.326996, 36.441742, 29.525223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.414974, 36.474766, 29.136417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486722, -0.872815, 0.035997,
		-0.845414, -0.481017, -0.232158,
		0.219946, 0.082564, -0.972012,
		33.480957, 36.499535, 28.844814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.182301, 35.863346, 29.156298>,  <33.326996, 36.441742, 29.525223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.182301, 35.863346, 29.156298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.481365, 36.024601, 28.945213>,  <33.660805, 36.121353, 28.818562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.481365, 36.024601, 28.945213>,  <33.182301, 35.863346, 29.156298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.481365, 36.024601, 28.945213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534441, -0.836955, 0.117812,
		-0.394177, -0.370114, -0.841213,
		0.747661, 0.403140, -0.527713,
		33.705662, 36.145542, 28.786900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.240421, 35.246346, 29.620239>,  <33.182301, 35.863346, 29.156298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.240421, 35.246346, 29.620239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.936310, 35.481823, 29.510391>,  <32.753845, 35.623112, 29.444483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.936310, 35.481823, 29.510391>,  <33.240421, 35.246346, 29.620239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.936310, 35.481823, 29.510391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442140, -0.159235, 0.882698,
		0.475912, 0.792516, 0.381349,
		-0.760276, 0.588696, -0.274621,
		32.708225, 35.658432, 29.428005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.126801, 35.639919, 30.243252>,  <33.240421, 35.246346, 29.620239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.126801, 35.639919, 30.243252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.797371, 35.705471, 30.026043>,  <32.599712, 35.744801, 29.895718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.797371, 35.705471, 30.026043>,  <33.126801, 35.639919, 30.243252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.797371, 35.705471, 30.026043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564402, -0.141640, 0.813258,
		0.056361, 0.976259, 0.209143,
		-0.823574, 0.163877, -0.543020,
		32.550301, 35.754635, 29.863136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.770546, 36.113003, 30.603144>,  <33.126801, 35.639919, 30.243252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.770546, 36.113003, 30.603144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.496143, 35.962471, 30.354059>,  <32.331501, 35.872150, 30.204609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.496143, 35.962471, 30.354059>,  <32.770546, 36.113003, 30.603144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.496143, 35.962471, 30.354059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.669870, -0.007418, 0.742441,
		-0.284023, 0.926455, -0.247005,
		-0.686006, -0.376332, -0.622712,
		32.290340, 35.849571, 30.167246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.167770, 36.405087, 30.764957>,  <32.770546, 36.113003, 30.603144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.167770, 36.405087, 30.764957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.034054, 36.069374, 30.593441>,  <31.953825, 35.867947, 30.490532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.034054, 36.069374, 30.593441>,  <32.167770, 36.405087, 30.764957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.034054, 36.069374, 30.593441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.599686, -0.161567, 0.783755,
		-0.727068, 0.519140, -0.449294,
		-0.334288, -0.839279, -0.428791,
		31.933767, 35.817589, 30.464804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.521654, 36.521496, 30.900352>,  <32.167770, 36.405087, 30.764957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.521654, 36.521496, 30.900352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.492561, 36.138000, 30.790421>,  <31.475105, 35.907902, 30.724461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.492561, 36.138000, 30.790421>,  <31.521654, 36.521496, 30.900352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.492561, 36.138000, 30.790421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.665410, -0.158621, 0.729431,
		-0.742927, 0.235927, -0.626417,
		-0.072730, -0.958737, -0.274832,
		31.470743, 35.850380, 30.707972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.838879, 36.430580, 30.865496>,  <31.521654, 36.521496, 30.900352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.838879, 36.430580, 30.865496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.990824, 36.062439, 30.902702>,  <31.081991, 35.841553, 30.925026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.990824, 36.062439, 30.902702>,  <30.838879, 36.430580, 30.865496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.990824, 36.062439, 30.902702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.736222, -0.239912, 0.632787,
		-0.560073, -0.308852, -0.768719,
		0.379863, -0.920355, 0.093015,
		31.104782, 35.786331, 30.930607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.389217, 35.937763, 30.644152>,  <30.838879, 36.430580, 30.865496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.389217, 35.937763, 30.644152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.600403, 35.701096, 30.887850>,  <30.727114, 35.559093, 31.034069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.600403, 35.701096, 30.887850>,  <30.389217, 35.937763, 30.644152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.600403, 35.701096, 30.887850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.846830, -0.421069, 0.324930,
		0.064284, -0.687481, -0.723352,
		0.527964, -0.591668, 0.609248,
		30.758793, 35.523594, 31.070623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.227598, 35.186481, 30.470758>,  <30.389217, 35.937763, 30.644152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.227598, 35.186481, 30.470758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.364859, 35.231415, 30.843775>,  <30.447214, 35.258373, 31.067585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.364859, 35.231415, 30.843775>,  <30.227598, 35.186481, 30.470758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.364859, 35.231415, 30.843775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.800349, -0.484675, 0.352890,
		0.491620, -0.867451, -0.076411,
		0.343149, 0.112333, 0.932539,
		30.467804, 35.265114, 31.123537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.178038, 34.495625, 30.802010>,  <30.227598, 35.186481, 30.470758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.178038, 34.495625, 30.802010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.215656, 34.759373, 31.100374>,  <30.238228, 34.917622, 31.279392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.215656, 34.759373, 31.100374>,  <30.178038, 34.495625, 30.802010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.215656, 34.759373, 31.100374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.796875, -0.399261, 0.453411,
		0.596780, -0.637039, 0.487889,
		0.094045, 0.659373, 0.745911,
		30.243870, 34.957184, 31.324148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.800196, 34.136524, 31.301865>,  <30.178038, 34.495625, 30.802010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.800196, 34.136524, 31.301865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.827101, 34.491955, 31.483376>,  <29.843245, 34.705212, 31.592281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.827101, 34.491955, 31.483376>,  <29.800196, 34.136524, 31.301865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.827101, 34.491955, 31.483376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.846859, -0.189630, 0.496860,
		0.527546, -0.417706, 0.739741,
		0.067265, 0.888573, 0.453777,
		29.847281, 34.758526, 31.619509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.743090, 34.056934, 32.103447>,  <29.800196, 34.136524, 31.301865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.743090, 34.056934, 32.103447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.627169, 34.422337, 31.989241>,  <29.557615, 34.641579, 31.920717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.627169, 34.422337, 31.989241>,  <29.743090, 34.056934, 32.103447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.627169, 34.422337, 31.989241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.802053, -0.069026, 0.593250,
		0.522230, 0.400924, 0.752685,
		-0.289804, 0.913507, -0.285515,
		29.540228, 34.696388, 31.903585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.435247, 34.315666, 32.726254>,  <29.743090, 34.056934, 32.103447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.435247, 34.315666, 32.726254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.304592, 34.573212, 32.449486>,  <29.226198, 34.727737, 32.283424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.304592, 34.573212, 32.449486>,  <29.435247, 34.315666, 32.726254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.304592, 34.573212, 32.449486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.899321, 0.013469, 0.437081,
		0.290739, 0.765024, 0.574638,
		-0.326638, 0.643860, -0.691919,
		29.206600, 34.766369, 32.241909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.144926, 34.942551, 33.161964>,  <29.435247, 34.315666, 32.726254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.144926, 34.942551, 33.161964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.010004, 34.904449, 32.787338>,  <28.929050, 34.881588, 32.562561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.010004, 34.904449, 32.787338>,  <29.144926, 34.942551, 33.161964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.010004, 34.904449, 32.787338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.934662, -0.084892, 0.345253,
		-0.112393, 0.991827, -0.060394,
		-0.337304, -0.095252, -0.936565,
		28.908813, 34.875874, 32.506371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.563311, 35.390018, 33.181267>,  <29.144926, 34.942551, 33.161964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.563311, 35.390018, 33.181267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.497570, 35.142509, 32.873993>,  <28.458126, 34.994003, 32.689629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.497570, 35.142509, 32.873993>,  <28.563311, 35.390018, 33.181267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.497570, 35.142509, 32.873993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.904683, -0.215806, 0.367392,
		-0.393112, 0.755343, -0.524328,
		-0.164354, -0.618777, -0.768182,
		28.448263, 34.956875, 32.643539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.915339, 35.572788, 32.880947>,  <28.563311, 35.390018, 33.181267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.915339, 35.572788, 32.880947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.967859, 35.192242, 32.769474>,  <27.999371, 34.963913, 32.702591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.967859, 35.192242, 32.769474>,  <27.915339, 35.572788, 32.880947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.967859, 35.192242, 32.769474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.955510, -0.196350, 0.220107,
		-0.264122, 0.237388, -0.934819,
		0.131301, -0.951364, -0.278687,
		28.007250, 34.906834, 32.685867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.308878, 35.427315, 32.514721>,  <27.915339, 35.572788, 32.880947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.308878, 35.427315, 32.514721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.459396, 35.078239, 32.639183>,  <27.549707, 34.868793, 32.713860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.459396, 35.078239, 32.639183>,  <27.308878, 35.427315, 32.514721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.459396, 35.078239, 32.639183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.907906, -0.280386, 0.311592,
		-0.184680, -0.399749, -0.897827,
		0.376297, -0.872688, 0.311153,
		27.572285, 34.816433, 32.732529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.848192, 34.847313, 32.279022>,  <27.308878, 35.427315, 32.514721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.848192, 34.847313, 32.279022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.072840, 34.703808, 32.577248>,  <27.207628, 34.617702, 32.756184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.072840, 34.703808, 32.577248>,  <26.848192, 34.847313, 32.279022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.072840, 34.703808, 32.577248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.819748, -0.363509, 0.442577,
		0.112239, -0.859737, -0.498251,
		0.561618, -0.358766, 0.745568,
		27.241325, 34.596176, 32.800919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.654669, 34.140823, 32.374584>,  <26.848192, 34.847313, 32.279022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.654669, 34.140823, 32.374584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.805775, 34.260410, 32.725105>,  <26.896439, 34.332161, 32.935417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.805775, 34.260410, 32.725105>,  <26.654669, 34.140823, 32.374584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.805775, 34.260410, 32.725105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.757358, -0.444678, 0.478194,
		0.532638, -0.844323, 0.058441,
		0.377763, 0.298966, 0.876307,
		26.919104, 34.350101, 32.987999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.655308, 33.559788, 32.888195>,  <26.654669, 34.140823, 32.374584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.655308, 33.559788, 32.888195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.712700, 33.872730, 33.130627>,  <26.747135, 34.060497, 33.276085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.712700, 33.872730, 33.130627>,  <26.655308, 33.559788, 32.888195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.712700, 33.872730, 33.130627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.774038, -0.292890, 0.561320,
		0.616668, -0.549665, 0.563551,
		0.143480, 0.782358, 0.606077,
		26.755743, 34.107437, 33.312450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.389688, 33.301491, 33.518887>,  <26.655308, 33.559788, 32.888195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.389688, 33.301491, 33.518887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.388239, 33.698486, 33.567783>,  <26.387369, 33.936684, 33.597122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.388239, 33.698486, 33.567783>,  <26.389688, 33.301491, 33.518887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.388239, 33.698486, 33.567783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.845348, -0.068342, 0.529826,
		0.534203, -0.101419, 0.839251,
		-0.003622, 0.992494, 0.122243,
		26.387152, 33.996235, 33.604458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.457930, 33.435444, 34.306744>,  <26.389688, 33.301491, 33.518887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.457930, 33.435444, 34.306744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.283365, 33.743404, 34.120499>,  <26.178627, 33.928181, 34.008751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.283365, 33.743404, 34.120499>,  <26.457930, 33.435444, 34.306744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.283365, 33.743404, 34.120499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.816382, -0.121288, 0.564632,
		0.378238, 0.626530, 0.681466,
		-0.436412, 0.769902, -0.465612,
		26.152441, 33.974377, 33.980816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.174189, 33.668293, 34.937656>,  <26.457930, 33.435444, 34.306744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.174189, 33.668293, 34.937656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.025101, 34.033482, 35.004059>,  <25.935648, 34.252594, 35.043900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.025101, 34.033482, 35.004059>,  <26.174189, 33.668293, 34.937656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.025101, 34.033482, 35.004059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596233, 0.098536, 0.796741,
		0.711046, 0.395942, -0.581071,
		-0.372720, 0.912973, 0.166010,
		25.913284, 34.307373, 35.053864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.548325, 33.839233, 35.551289>,  <26.174189, 33.668293, 34.937656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.548325, 33.839233, 35.551289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.331430, 34.165607, 35.471058>,  <26.201294, 34.361431, 35.422920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.331430, 34.165607, 35.471058>,  <26.548325, 33.839233, 35.551289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.331430, 34.165607, 35.471058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518464, 0.512766, 0.684300,
		0.661191, 0.267063, -0.701073,
		-0.542238, 0.815934, -0.200574,
		26.168758, 34.410389, 35.410885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.082565, 34.231911, 35.232830>,  <26.548325, 33.839233, 35.551289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.082565, 34.231911, 35.232830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.942606, 34.598236, 35.153988>,  <26.858631, 34.818031, 35.106682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.942606, 34.598236, 35.153988>,  <27.082565, 34.231911, 35.232830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.942606, 34.598236, 35.153988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.847517, 0.399108, 0.349897,
		0.399108, -0.044623, -0.915817,
		-0.349897, 0.915817, -0.197107,
		26.837637, 34.872982, 35.094856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.610571, 34.643562, 34.828552>,  <27.082565, 34.231911, 35.232830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.610571, 34.643562, 34.828552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.367382, 34.878651, 35.042076>,  <27.221470, 35.019703, 35.170193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.367382, 34.878651, 35.042076>,  <27.610571, 34.643562, 34.828552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.367382, 34.878651, 35.042076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.789117, 0.521448, 0.324634,
		-0.087562, 0.618609, -0.780805,
		-0.607970, 0.587721, 0.533813,
		27.184992, 35.054966, 35.202221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.665651, 35.387203, 34.621811>,  <27.610571, 34.643562, 34.828552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.665651, 35.387203, 34.621811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.587719, 35.353859, 35.012726>,  <27.540960, 35.333851, 35.247276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.587719, 35.353859, 35.012726>,  <27.665651, 35.387203, 34.621811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.587719, 35.353859, 35.012726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.784535, 0.584767, 0.206283,
		-0.588682, 0.806907, -0.048528,
		-0.194829, -0.083363, 0.977288,
		27.529270, 35.328850, 35.305912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.903141, 35.998093, 34.901081>,  <27.665651, 35.387203, 34.621811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.903141, 35.998093, 34.901081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.864386, 35.764683, 35.223602>,  <27.841133, 35.624638, 35.417114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.864386, 35.764683, 35.223602>,  <27.903141, 35.998093, 34.901081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.864386, 35.764683, 35.223602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.802977, 0.432835, 0.409733,
		-0.588081, 0.687138, 0.426616,
		-0.096889, -0.583520, 0.806298,
		27.835320, 35.589626, 35.465492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.956121, 36.275349, 35.604649>,  <27.903141, 35.998093, 34.901081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.956121, 36.275349, 35.604649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.105209, 35.906956, 35.650021>,  <28.194662, 35.685921, 35.677242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.105209, 35.906956, 35.650021>,  <27.956121, 36.275349, 35.604649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.105209, 35.906956, 35.650021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.901667, 0.388332, 0.190250,
		-0.219266, 0.031366, 0.975161,
		0.372719, -0.920986, 0.113429,
		28.217026, 35.630661, 35.684048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.356102, 36.283691, 36.277824>,  <27.956121, 36.275349, 35.604649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.356102, 36.283691, 36.277824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.494503, 35.974529, 36.065075>,  <28.577543, 35.789032, 35.937424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.494503, 35.974529, 36.065075>,  <28.356102, 36.283691, 36.277824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.494503, 35.974529, 36.065075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.934337, 0.335458, 0.120339,
		0.085411, -0.538591, 0.838228,
		0.346004, -0.772909, -0.531877,
		28.598305, 35.742657, 35.905510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.796083, 36.283588, 36.998638>,  <28.356102, 36.283691, 36.277824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.796083, 36.283588, 36.998638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.166075, 36.139713, 36.949581>,  <29.388069, 36.053387, 36.920147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.166075, 36.139713, 36.949581>,  <28.796083, 36.283588, 36.998638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.166075, 36.139713, 36.949581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033465, -0.398558, 0.916532,
		-0.378537, -0.843671, -0.380696,
		0.924981, -0.359682, -0.122636,
		29.443567, 36.031807, 36.912788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.758667, 35.591320, 37.045414>,  <28.796083, 36.283588, 36.998638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.758667, 35.591320, 37.045414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.120234, 35.736279, 37.136280>,  <29.337173, 35.823254, 37.190800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.120234, 35.736279, 37.136280>,  <28.758667, 35.591320, 37.045414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.120234, 35.736279, 37.136280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006494, -0.542692, 0.839907,
		0.427658, -0.757731, -0.492902,
		0.903918, 0.362394, 0.227166,
		29.391409, 35.844997, 37.204430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.078074, 35.007145, 37.217293>,  <28.758667, 35.591320, 37.045414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.078074, 35.007145, 37.217293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.274414, 35.312634, 37.385006>,  <29.392220, 35.495926, 37.485634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.274414, 35.312634, 37.385006>,  <29.078074, 35.007145, 37.217293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.274414, 35.312634, 37.385006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006747, -0.484562, 0.874731,
		0.871216, -0.426535, -0.243001,
		0.490853, 0.763719, 0.419281,
		29.421669, 35.541748, 37.510792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.578680, 34.717014, 37.517769>,  <29.078074, 35.007145, 37.217293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.578680, 34.717014, 37.517769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.554661, 35.069935, 37.704502>,  <29.540249, 35.281689, 37.816544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.554661, 35.069935, 37.704502>,  <29.578680, 34.717014, 37.517769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.554661, 35.069935, 37.704502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269976, -0.435894, 0.858551,
		0.960993, 0.177591, -0.212025,
		-0.060050, 0.882303, 0.466836,
		29.536646, 35.334625, 37.844555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.162855, 34.747063, 37.937908>,  <29.578680, 34.717014, 37.517769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.162855, 34.747063, 37.937908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.930956, 35.025005, 38.108120>,  <29.791817, 35.191769, 38.210247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.930956, 35.025005, 38.108120>,  <30.162855, 34.747063, 37.937908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.930956, 35.025005, 38.108120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267219, -0.331220, 0.904924,
		0.769731, 0.638337, 0.006346,
		-0.579748, 0.694852, 0.425526,
		29.757032, 35.233459, 38.235779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.532166, 35.017609, 38.459183>,  <30.162855, 34.747063, 37.937908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.532166, 35.017609, 38.459183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.165298, 35.132397, 38.569782>,  <29.945179, 35.201271, 38.636143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.165298, 35.132397, 38.569782>,  <30.532166, 35.017609, 38.459183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.165298, 35.132397, 38.569782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204949, -0.255377, 0.944870,
		0.341765, 0.923271, 0.175408,
		-0.917166, 0.286974, 0.276502,
		29.890148, 35.218491, 38.652733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.605946, 35.597816, 38.933990>,  <30.532166, 35.017609, 38.459183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.605946, 35.597816, 38.933990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.253977, 35.412907, 38.977875>,  <30.042795, 35.301960, 39.004204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.253977, 35.412907, 38.977875>,  <30.605946, 35.597816, 38.933990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.253977, 35.412907, 38.977875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194136, -0.139068, 0.971067,
		-0.433641, 0.875764, 0.212113,
		-0.879924, -0.462273, 0.109712,
		29.990000, 35.274223, 39.010788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.445368, 35.691265, 39.712669>,  <30.605946, 35.597816, 38.933990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.445368, 35.691265, 39.712669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.156063, 35.440643, 39.596516>,  <29.982481, 35.290272, 39.526825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.156063, 35.440643, 39.596516>,  <30.445368, 35.691265, 39.712669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.156063, 35.440643, 39.596516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200755, -0.211573, 0.956522,
		-0.660750, 0.750112, 0.027239,
		-0.723262, -0.626553, -0.290385,
		29.939085, 35.252678, 39.509399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.813410, 35.826603, 40.038193>,  <30.445368, 35.691265, 39.712669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.813410, 35.826603, 40.038193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.818668, 35.441051, 39.931786>,  <29.821823, 35.209721, 39.867939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.818668, 35.441051, 39.931786>,  <29.813410, 35.826603, 40.038193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.818668, 35.441051, 39.931786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223324, -0.262154, 0.938830,
		-0.974656, 0.047065, -0.218703,
		0.013147, -0.963878, -0.266020,
		29.822613, 35.151890, 39.851978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.284687, 35.524811, 40.422260>,  <29.813410, 35.826603, 40.038193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.284687, 35.524811, 40.422260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.504082, 35.204426, 40.326241>,  <29.635717, 35.012196, 40.268627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.504082, 35.204426, 40.326241>,  <29.284687, 35.524811, 40.422260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.504082, 35.204426, 40.326241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194455, -0.401400, 0.895023,
		-0.813235, -0.444228, -0.375913,
		0.548485, -0.800962, -0.240050,
		29.668627, 34.964138, 40.254227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.864351, 34.864460, 40.617668>,  <29.284687, 35.524811, 40.422260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.864351, 34.864460, 40.617668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.254602, 34.783325, 40.584179>,  <29.488752, 34.734646, 40.564087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.254602, 34.783325, 40.584179>,  <28.864351, 34.864460, 40.617668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.254602, 34.783325, 40.584179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058594, -0.608479, 0.791404,
		-0.211468, -0.767209, -0.605534,
		0.975627, -0.202838, -0.083720,
		29.547291, 34.722473, 40.559063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.886169, 34.095444, 40.659878>,  <28.864351, 34.864460, 40.617668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.886169, 34.095444, 40.659878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.249454, 34.239971, 40.744350>,  <29.467426, 34.326687, 40.795036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.249454, 34.239971, 40.744350>,  <28.886169, 34.095444, 40.659878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.249454, 34.239971, 40.744350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102239, -0.680878, 0.725225,
		0.405828, -0.637068, -0.655323,
		0.908213, 0.361316, 0.211186,
		29.521919, 34.348366, 40.807705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.297554, 33.515759, 40.723709>,  <28.886169, 34.095444, 40.659878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.297554, 33.515759, 40.723709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.506615, 33.795860, 40.918224>,  <29.632051, 33.963921, 41.034931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.506615, 33.795860, 40.918224>,  <29.297554, 33.515759, 40.723709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.506615, 33.795860, 40.918224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294876, -0.683670, 0.667566,
		0.799927, -0.205510, -0.563810,
		0.522652, 0.700258, 0.486286,
		29.663410, 34.005939, 41.064110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.899094, 33.173836, 40.970535>,  <29.297554, 33.515759, 40.723709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.899094, 33.173836, 40.970535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.854773, 33.504944, 41.190544>,  <29.828180, 33.703609, 41.322548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.854773, 33.504944, 41.190544>,  <29.899094, 33.173836, 40.970535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.854773, 33.504944, 41.190544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243923, -0.513849, 0.822472,
		0.963444, 0.225294, -0.144976,
		-0.110802, 0.827769, 0.550020,
		29.821531, 33.753273, 41.355549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.328228, 33.007992, 41.477829>,  <29.899094, 33.173836, 40.970535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.328228, 33.007992, 41.477829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.132765, 33.329300, 41.614052>,  <30.015488, 33.522083, 41.695786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.132765, 33.329300, 41.614052>,  <30.328228, 33.007992, 41.477829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.132765, 33.329300, 41.614052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109679, -0.330677, 0.937349,
		0.865555, 0.495393, 0.073486,
		-0.488656, 0.803267, 0.340554,
		29.986168, 33.570282, 41.716217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.736765, 33.127758, 42.027534>,  <30.328228, 33.007992, 41.477829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.736765, 33.127758, 42.027534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.401398, 33.326981, 42.116070>,  <30.200176, 33.446514, 42.169189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.401398, 33.326981, 42.116070>,  <30.736765, 33.127758, 42.027534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.401398, 33.326981, 42.116070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064782, -0.312158, 0.947819,
		0.541162, 0.809009, 0.229454,
		-0.838420, 0.498059, 0.221337,
		30.149872, 33.476398, 42.182472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.898527, 33.461693, 42.660366>,  <30.736765, 33.127758, 42.027534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.898527, 33.461693, 42.660366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.501858, 33.420509, 42.629425>,  <30.263857, 33.395802, 42.610863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.501858, 33.420509, 42.629425>,  <30.898527, 33.461693, 42.660366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.501858, 33.420509, 42.629425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028298, -0.411748, 0.910858,
		-0.125625, 0.905463, 0.405407,
		-0.991674, -0.102954, -0.077348,
		30.204355, 33.389622, 42.606220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.537739, 33.627972, 43.393600>,  <30.898527, 33.461693, 42.660366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.537739, 33.627972, 43.393600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.290276, 33.392849, 43.185085>,  <30.141798, 33.251774, 43.059975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.290276, 33.392849, 43.185085>,  <30.537739, 33.627972, 43.393600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.290276, 33.392849, 43.185085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338214, -0.399624, 0.852005,
		-0.709136, 0.703406, 0.048424,
		-0.618657, -0.587810, -0.521290,
		30.104679, 33.216507, 43.028698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.811022, 33.657578, 43.651142>,  <30.537739, 33.627972, 43.393600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.811022, 33.657578, 43.651142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.862068, 33.307762, 43.463997>,  <29.892696, 33.097874, 43.351711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.862068, 33.307762, 43.463997>,  <29.811022, 33.657578, 43.651142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.862068, 33.307762, 43.463997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514577, -0.461646, 0.722561,
		-0.847895, 0.148543, -0.508930,
		0.127615, -0.874539, -0.467864,
		29.900352, 33.045399, 43.323639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.179369, 33.438538, 43.607704>,  <29.811022, 33.657578, 43.651142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.179369, 33.438538, 43.607704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.379812, 33.102009, 43.526649>,  <29.500078, 32.900089, 43.478016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.379812, 33.102009, 43.526649>,  <29.179369, 33.438538, 43.607704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.379812, 33.102009, 43.526649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.672651, -0.525997, 0.520450,
		-0.544457, -0.124493, -0.829499,
		0.501106, -0.841326, -0.202642,
		29.530144, 32.849609, 43.465858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.714424, 32.797230, 43.459290>,  <29.179369, 33.438538, 43.607704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.714424, 32.797230, 43.459290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.060627, 32.642891, 43.587048>,  <29.268349, 32.550285, 43.663704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.060627, 32.642891, 43.587048>,  <28.714424, 32.797230, 43.459290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.060627, 32.642891, 43.587048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498414, -0.600073, 0.625696,
		-0.049766, -0.700737, -0.711682,
		0.865509, -0.385851, 0.319394,
		29.320280, 32.527134, 43.682865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.461876, 32.117729, 43.581795>,  <28.714424, 32.797230, 43.459290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.461876, 32.117729, 43.581795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.827053, 32.126842, 43.744774>,  <29.046160, 32.132309, 43.842564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.827053, 32.126842, 43.744774>,  <28.461876, 32.117729, 43.581795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.827053, 32.126842, 43.744774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305865, -0.622759, 0.720151,
		0.270153, -0.782082, -0.561574,
		0.912942, 0.022785, 0.407452,
		29.100935, 32.133678, 43.867008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.676485, 31.409510, 43.690315>,  <28.461876, 32.117729, 43.581795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.676485, 31.409510, 43.690315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.907604, 31.630226, 43.930874>,  <29.046276, 31.762655, 44.075211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.907604, 31.630226, 43.930874>,  <28.676485, 31.409510, 43.690315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.907604, 31.630226, 43.930874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135349, -0.661863, 0.737305,
		0.804881, -0.507411, -0.307737,
		0.577796, 0.551790, 0.601398,
		29.080942, 31.795763, 44.111294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.831734, 30.893784, 44.181297>,  <28.676485, 31.409510, 43.690315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.831734, 30.893784, 44.181297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.924992, 31.234840, 44.368336>,  <28.980947, 31.439474, 44.480556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.924992, 31.234840, 44.368336>,  <28.831734, 30.893784, 44.181297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.924992, 31.234840, 44.368336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291203, -0.397561, 0.870141,
		0.927817, -0.339034, 0.155602,
		0.233147, 0.852644, 0.467592,
		28.994936, 31.490633, 44.508614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.293531, 30.706964, 44.711040>,  <28.831734, 30.893784, 44.181297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.293531, 30.706964, 44.711040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.106440, 31.052074, 44.787823>,  <28.994184, 31.259140, 44.833893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.106440, 31.052074, 44.787823>,  <29.293531, 30.706964, 44.711040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.106440, 31.052074, 44.787823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368220, -0.387636, 0.845076,
		0.803519, 0.324585, 0.499000,
		-0.467729, 0.862776, 0.191954,
		28.966122, 31.310907, 44.845409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.484306, 30.946112, 45.381725>,  <29.293531, 30.706964, 44.711040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.484306, 30.946112, 45.381725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.126734, 31.102140, 45.293427>,  <28.912191, 31.195759, 45.240448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.126734, 31.102140, 45.293427>,  <29.484306, 30.946112, 45.381725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.126734, 31.102140, 45.293427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387107, -0.423683, 0.818927,
		0.225913, 0.817518, 0.529743,
		-0.893930, 0.390073, -0.220752,
		28.858555, 31.219162, 45.227200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.258223, 31.129803, 46.031200>,  <29.484306, 30.946112, 45.381725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.258223, 31.129803, 46.031200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.926117, 31.156303, 45.809834>,  <28.726854, 31.172205, 45.677013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.926117, 31.156303, 45.809834>,  <29.258223, 31.129803, 46.031200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.926117, 31.156303, 45.809834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484893, -0.575482, 0.658558,
		-0.274853, 0.815126, 0.509927,
		-0.830262, 0.066253, -0.553421,
		28.677038, 31.176180, 45.643806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.706696, 31.389353, 46.434162>,  <29.258223, 31.129803, 46.031200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.706696, 31.389353, 46.434162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.513630, 31.203959, 46.136917>,  <28.397791, 31.092722, 45.958569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.513630, 31.203959, 46.136917>,  <28.706696, 31.389353, 46.434162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.513630, 31.203959, 46.136917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493037, -0.557472, 0.667937,
		-0.723843, 0.688772, 0.040558,
		-0.482666, -0.463485, -0.743112,
		28.368830, 31.064913, 45.913982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.982660, 31.423031, 46.566330>,  <28.706696, 31.389353, 46.434162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.982660, 31.423031, 46.566330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.048429, 31.110155, 46.325951>,  <28.087891, 30.922430, 46.181721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.048429, 31.110155, 46.325951>,  <27.982660, 31.423031, 46.566330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.048429, 31.110155, 46.325951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543112, -0.580366, 0.606799,
		-0.823404, 0.226612, -0.520243,
		0.164423, -0.782191, -0.600951,
		28.097757, 30.875498, 46.145664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.426855, 30.980942, 46.770607>,  <27.982660, 31.423031, 46.566330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.426855, 30.980942, 46.770607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.683485, 30.741579, 46.578651>,  <27.837463, 30.597961, 46.463478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.683485, 30.741579, 46.578651>,  <27.426855, 30.980942, 46.770607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.683485, 30.741579, 46.578651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135319, -0.704104, 0.697084,
		-0.755029, -0.382295, -0.532712,
		0.641576, -0.598405, -0.479887,
		27.875957, 30.562057, 46.434685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.169565, 30.287811, 46.787144>,  <27.426855, 30.980942, 46.770607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.169565, 30.287811, 46.787144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.554304, 30.248648, 46.684956>,  <27.785147, 30.225149, 46.623642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.554304, 30.248648, 46.684956>,  <27.169565, 30.287811, 46.787144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.554304, 30.248648, 46.684956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127823, -0.664782, 0.736021,
		-0.241895, -0.740594, -0.626903,
		0.961846, -0.097907, -0.255472,
		27.842857, 30.219275, 46.608315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.332634, 29.564907, 46.699917>,  <27.169565, 30.287811, 46.787144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.332634, 29.564907, 46.699917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.702766, 29.708921, 46.747478>,  <27.924847, 29.795330, 46.776016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.702766, 29.708921, 46.747478>,  <27.332634, 29.564907, 46.699917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.702766, 29.708921, 46.747478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203318, -0.735859, 0.645890,
		0.320040, -0.573486, -0.754115,
		0.925331, 0.360035, 0.118905,
		27.980366, 29.816933, 46.783150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.686771, 29.003996, 46.610073>,  <27.332634, 29.564907, 46.699917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.686771, 29.003996, 46.610073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.923628, 29.248302, 46.820343>,  <28.065742, 29.394886, 46.946507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.923628, 29.248302, 46.820343>,  <27.686771, 29.003996, 46.610073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.923628, 29.248302, 46.820343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251251, -0.759751, 0.599709,
		0.765663, -0.223037, -0.603336,
		0.592143, 0.610764, 0.525675,
		28.101271, 29.431532, 46.978046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.181219, 28.594275, 46.837749>,  <27.686771, 29.003996, 46.610073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.181219, 28.594275, 46.837749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.246670, 28.898697, 47.088833>,  <28.285940, 29.081350, 47.239483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.246670, 28.898697, 47.088833>,  <28.181219, 28.594275, 46.837749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.246670, 28.898697, 47.088833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205390, -0.648626, 0.732870,
		0.964905, 0.009010, -0.262445,
		0.163626, 0.761054, 0.627713,
		28.295757, 29.127012, 47.277145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.805906, 28.460573, 47.238125>,  <28.181219, 28.594275, 46.837749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.805906, 28.460573, 47.238125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.585968, 28.714096, 47.455734>,  <28.454006, 28.866211, 47.586300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.585968, 28.714096, 47.455734>,  <28.805906, 28.460573, 47.238125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.585968, 28.714096, 47.455734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146339, -0.568141, 0.809815,
		0.822348, 0.524883, 0.219638,
		-0.549844, 0.633808, 0.544021,
		28.421015, 28.904238, 47.618942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.124542, 28.536446, 47.893288>,  <28.805906, 28.460573, 47.238125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.124542, 28.536446, 47.893288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.743534, 28.624720, 47.977196>,  <28.514929, 28.677683, 48.027538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.743534, 28.624720, 47.977196>,  <29.124542, 28.536446, 47.893288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.743534, 28.624720, 47.977196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048421, -0.570391, 0.819945,
		0.300598, 0.791172, 0.532623,
		-0.952521, 0.220683, 0.209768,
		28.457777, 28.690926, 48.040127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.051830, 28.461096, 48.562847>,  <29.124542, 28.536446, 47.893288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.051830, 28.461096, 48.562847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.659029, 28.456924, 48.487415>,  <28.423349, 28.454422, 48.442154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.659029, 28.456924, 48.487415>,  <29.051830, 28.461096, 48.562847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.659029, 28.456924, 48.487415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128151, -0.696690, 0.705833,
		-0.138744, 0.717297, 0.682814,
		-0.982002, -0.010427, -0.188584,
		28.364428, 28.453796, 48.430840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.763405, 28.512848, 49.238491>,  <29.051830, 28.461096, 48.562847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.763405, 28.512848, 49.238491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.489063, 28.358337, 48.991787>,  <28.324457, 28.265631, 48.843765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.489063, 28.358337, 48.991787>,  <28.763405, 28.512848, 49.238491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.489063, 28.358337, 48.991787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238179, -0.681679, 0.691798,
		-0.687658, 0.621373, 0.375530,
		-0.685855, -0.386277, -0.616760,
		28.283306, 28.242455, 48.806759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.365496, 28.358328, 49.751873>,  <28.763405, 28.512848, 49.238491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.365496, 28.358328, 49.751873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.254856, 28.163702, 49.420391>,  <28.188473, 28.046926, 49.221504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.254856, 28.163702, 49.420391>,  <28.365496, 28.358328, 49.751873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.254856, 28.163702, 49.420391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052852, -0.853339, 0.518671,
		-0.959532, 0.187261, 0.210315,
		-0.276597, -0.486566, -0.828703,
		28.171877, 28.017733, 49.171780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.822535, 27.972691, 50.000923>,  <28.365496, 28.358328, 49.751873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.822535, 27.972691, 50.000923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.963316, 27.822779, 49.657837>,  <28.047785, 27.732832, 49.451984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.963316, 27.822779, 49.657837>,  <27.822535, 27.972691, 50.000923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.963316, 27.822779, 49.657837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244890, -0.921293, 0.302072,
		-0.903414, 0.103729, -0.416033,
		0.351954, -0.374778, -0.857711,
		28.068901, 27.710344, 49.400524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.358864, 27.429089, 49.753490>,  <27.822535, 27.972691, 50.000923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.358864, 27.429089, 49.753490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.709837, 27.356924, 49.575695>,  <27.920420, 27.313625, 49.469017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.709837, 27.356924, 49.575695>,  <27.358864, 27.429089, 49.753490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.709837, 27.356924, 49.575695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172477, -0.983268, 0.058620,
		-0.447623, 0.025228, -0.893866,
		0.877431, -0.180411, -0.444485,
		27.973066, 27.302801, 49.442348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.318913, 26.993467, 49.053337>,  <27.358864, 27.429089, 49.753490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.318913, 26.993467, 49.053337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.660650, 26.938942, 49.253944>,  <27.865692, 26.906227, 49.374310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.660650, 26.938942, 49.253944>,  <27.318913, 26.993467, 49.053337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.660650, 26.938942, 49.253944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275759, -0.936844, 0.215128,
		0.440516, -0.322090, -0.837976,
		0.854343, -0.136312, 0.501515,
		27.916954, 26.898048, 49.404400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.657949, 26.362801, 48.804173>,  <27.318913, 26.993467, 49.053337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.657949, 26.362801, 48.804173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.800259, 26.430593, 49.171803>,  <27.885643, 26.471270, 49.392380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.800259, 26.430593, 49.171803>,  <27.657949, 26.362801, 48.804173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.800259, 26.430593, 49.171803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257120, -0.927718, 0.270608,
		0.898508, -0.332588, -0.286477,
		0.355771, 0.169485, 0.919077,
		27.906990, 26.481440, 49.447525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.066593, 25.720896, 49.004745>,  <27.657949, 26.362801, 48.804173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.066593, 25.720896, 49.004745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.971130, 25.940985, 49.324821>,  <27.913853, 26.073038, 49.516865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.971130, 25.940985, 49.324821>,  <28.066593, 25.720896, 49.004745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.971130, 25.940985, 49.324821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336375, -0.819824, 0.463400,
		0.910985, -0.158568, 0.380739,
		-0.238659, 0.550222, 0.800186,
		27.899532, 26.106050, 49.564877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.555716, 25.627132, 49.629986>,  <28.066593, 25.720896, 49.004745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.555716, 25.627132, 49.629986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.178495, 25.722557, 49.722721>,  <27.952164, 25.779812, 49.778362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.178495, 25.722557, 49.722721>,  <28.555716, 25.627132, 49.629986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.178495, 25.722557, 49.722721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066476, -0.818011, 0.571348,
		0.325946, 0.523398, 0.787283,
		-0.943048, 0.238564, 0.231834,
		27.895580, 25.794127, 49.792271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.302519, 25.471689, 49.834225>,  <28.555716, 25.627132, 49.629986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.302519, 25.471689, 49.834225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.234316, 25.554747, 49.448933>,  <29.193394, 25.604582, 49.217758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.234316, 25.554747, 49.448933>,  <29.302519, 25.471689, 49.834225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.234316, 25.554747, 49.448933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012687, -0.977926, -0.208567,
		-0.985275, -0.023341, 0.169378,
		-0.170507, 0.207645, -0.963229,
		29.183165, 25.617041, 49.159966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.915356, 24.982714, 49.526569>,  <29.302519, 25.471689, 49.834225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.915356, 24.982714, 49.526569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.086672, 25.103737, 49.185974>,  <29.189461, 25.176350, 48.981617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.086672, 25.103737, 49.185974>,  <28.915356, 24.982714, 49.526569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.086672, 25.103737, 49.185974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032436, -0.936528, -0.349089,
		-0.903058, 0.177130, -0.391293,
		0.428291, 0.302556, -0.851485,
		29.215158, 25.194504, 48.930527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.508923, 24.748775, 48.879829>,  <28.915356, 24.982714, 49.526569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.508923, 24.748775, 48.879829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.864237, 24.826107, 48.713181>,  <29.077425, 24.872505, 48.613194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.864237, 24.826107, 48.713181>,  <28.508923, 24.748775, 48.879829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.864237, 24.826107, 48.713181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128720, -0.765952, -0.629880,
		-0.440885, 0.613140, -0.655499,
		0.888286, 0.193328, -0.416620,
		29.130722, 24.884106, 48.588196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.514580, 24.898470, 48.015457>,  <28.508923, 24.748775, 48.879829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.514580, 24.898470, 48.015457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.839348, 24.728729, 48.175816>,  <29.034208, 24.626884, 48.272030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.839348, 24.728729, 48.175816>,  <28.514580, 24.898470, 48.015457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.839348, 24.728729, 48.175816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101787, -0.779115, -0.618562,
		0.574829, 0.461417, -0.675771,
		0.811918, -0.424352, 0.400891,
		29.082924, 24.601423, 48.296082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.145000, 24.668818, 47.400040>,  <28.514580, 24.898470, 48.015457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.145000, 24.668818, 47.400040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.074003, 25.051952, 47.490410>,  <28.031404, 25.281834, 47.544632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.074003, 25.051952, 47.490410>,  <28.145000, 24.668818, 47.400040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.074003, 25.051952, 47.490410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169251, 0.255857, -0.951783,
		-0.969459, -0.130698, -0.207528,
		-0.177493, 0.957839, 0.225922,
		28.020756, 25.339304, 47.558186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.869221, 24.991951, 46.859882>,  <28.145000, 24.668818, 47.400040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.869221, 24.991951, 46.859882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.990158, 25.318373, 47.056915>,  <28.062721, 25.514227, 47.175137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.990158, 25.318373, 47.056915>,  <27.869221, 24.991951, 46.859882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.990158, 25.318373, 47.056915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069846, 0.496415, -0.865271,
		-0.950636, 0.296015, 0.093090,
		0.302344, 0.816056, 0.492585,
		28.080862, 25.563190, 47.204689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.475136, 25.658876, 46.539894>,  <27.869221, 24.991951, 46.859882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.475136, 25.658876, 46.539894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.796375, 25.781174, 46.744465>,  <27.989119, 25.854551, 46.867207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.796375, 25.781174, 46.744465>,  <27.475136, 25.658876, 46.539894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.796375, 25.781174, 46.744465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240759, 0.618621, -0.747892,
		-0.545042, 0.723760, 0.423202,
		0.803097, 0.305743, 0.511426,
		28.037304, 25.872896, 46.897892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.414541, 26.353613, 46.565460>,  <27.475136, 25.658876, 46.539894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.414541, 26.353613, 46.565460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.803137, 26.289152, 46.635014>,  <28.036295, 26.250475, 46.676746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.803137, 26.289152, 46.635014>,  <27.414541, 26.353613, 46.565460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.803137, 26.289152, 46.635014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236932, 0.634249, -0.735928,
		0.008309, 0.756147, 0.654349,
		0.971491, -0.161151, 0.173886,
		28.094584, 26.240807, 46.687180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.790333, 27.036894, 46.484688>,  <27.414541, 26.353613, 46.565460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.790333, 27.036894, 46.484688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.108141, 26.794003, 46.483372>,  <28.298826, 26.648268, 46.482582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.108141, 26.794003, 46.483372>,  <27.790333, 27.036894, 46.484688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.108141, 26.794003, 46.483372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408315, 0.538248, -0.737271,
		0.449462, 0.584434, 0.675590,
		0.794521, -0.607228, -0.003289,
		28.346497, 26.611834, 46.482384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.438456, 27.412201, 46.502525>,  <27.790333, 27.036894, 46.484688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.438456, 27.412201, 46.502525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.523205, 27.072224, 46.309566>,  <28.574055, 26.868238, 46.193790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.523205, 27.072224, 46.309566>,  <28.438456, 27.412201, 46.502525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.523205, 27.072224, 46.309566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318466, 0.526709, -0.788135,
		0.923953, 0.013359, 0.382274,
		0.211875, -0.849941, -0.482399,
		28.586767, 26.817242, 46.164848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.134588, 27.397720, 46.423347>,  <28.438456, 27.412201, 46.502525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.134588, 27.397720, 46.423347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.001017, 27.143158, 46.145218>,  <28.920874, 26.990419, 45.978340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.001017, 27.143158, 46.145218>,  <29.134588, 27.397720, 46.423347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.001017, 27.143158, 46.145218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590956, 0.433342, -0.680431,
		0.734344, -0.638123, 0.231383,
		-0.333931, -0.636408, -0.695324,
		28.900837, 26.952236, 45.936619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.646021, 27.168018, 46.048073>,  <29.134588, 27.397720, 46.423347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.646021, 27.168018, 46.048073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.365231, 27.052809, 45.787529>,  <29.196756, 26.983683, 45.631203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.365231, 27.052809, 45.787529>,  <29.646021, 27.168018, 46.048073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.365231, 27.052809, 45.787529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559375, 0.343121, -0.754564,
		0.440830, -0.894041, -0.079748,
		-0.701975, -0.288025, -0.651363,
		29.154638, 26.966402, 45.592121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.982464, 26.680119, 45.492371>,  <29.646021, 27.168018, 46.048073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.982464, 26.680119, 45.492371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.662386, 26.832176, 45.306820>,  <29.470339, 26.923410, 45.195488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.662386, 26.832176, 45.306820>,  <29.982464, 26.680119, 45.492371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.662386, 26.832176, 45.306820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591173, 0.369675, -0.716837,
		-0.101018, -0.847839, -0.520543,
		-0.800193, 0.380145, -0.463876,
		29.422327, 26.946220, 45.167656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.144520, 26.610163, 44.795391>,  <29.982464, 26.680119, 45.492371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.144520, 26.610163, 44.795391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.828434, 26.854771, 44.811417>,  <29.638783, 27.001535, 44.821033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.828434, 26.854771, 44.811417>,  <30.144520, 26.610163, 44.795391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.828434, 26.854771, 44.811417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352882, 0.507503, -0.786075,
		-0.501036, -0.607028, -0.616830,
		-0.790213, 0.611520, 0.040068,
		29.591370, 27.038227, 44.823437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.907782, 26.698378, 44.050591>,  <30.144520, 26.610163, 44.795391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.907782, 26.698378, 44.050591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.813658, 26.990641, 44.306953>,  <29.757183, 27.165998, 44.460773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.813658, 26.990641, 44.306953>,  <29.907782, 26.698378, 44.050591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.813658, 26.990641, 44.306953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284782, 0.682318, -0.673306,
		-0.929262, 0.024083, -0.368636,
		-0.235312, 0.730658, 0.640911,
		29.743065, 27.209839, 44.499226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.735367, 27.161348, 43.504833>,  <29.907782, 26.698378, 44.050591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.735367, 27.161348, 43.504833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.778017, 27.377298, 43.838821>,  <29.803608, 27.506868, 44.039215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.778017, 27.377298, 43.838821>,  <29.735367, 27.161348, 43.504833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.778017, 27.377298, 43.838821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378764, 0.754383, -0.536138,
		-0.919330, 0.373422, -0.124047,
		0.106627, 0.539873, 0.834966,
		29.810005, 27.539261, 44.089310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.492582, 27.804121, 43.358418>,  <29.735367, 27.161348, 43.504833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.492582, 27.804121, 43.358418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.706692, 27.885914, 43.686237>,  <29.835157, 27.934990, 43.882931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.706692, 27.885914, 43.686237>,  <29.492582, 27.804121, 43.358418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.706692, 27.885914, 43.686237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303444, 0.858935, -0.412495,
		-0.788291, 0.469487, 0.397718,
		0.535275, 0.204481, 0.819554,
		29.867273, 27.947258, 43.932102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.529554, 28.541080, 43.367737>,  <29.492582, 27.804121, 43.358418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.529554, 28.541080, 43.367737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.829683, 28.423302, 43.604488>,  <30.009760, 28.352634, 43.746540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.829683, 28.423302, 43.604488>,  <29.529554, 28.541080, 43.367737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.829683, 28.423302, 43.604488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521468, 0.813913, -0.256157,
		-0.406310, 0.500844, 0.764243,
		0.750322, -0.294449, 0.591875,
		30.054781, 28.334967, 43.782051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.764742, 29.085352, 43.669994>,  <29.529554, 28.541080, 43.367737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.764742, 29.085352, 43.669994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.062204, 28.818890, 43.647331>,  <30.240683, 28.659012, 43.633732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.062204, 28.818890, 43.647331>,  <29.764742, 29.085352, 43.669994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.062204, 28.818890, 43.647331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612490, 0.712808, -0.341702,
		0.268015, 0.219406, 0.938099,
		0.743656, -0.666157, -0.056659,
		30.285301, 28.619041, 43.630333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.325472, 29.460808, 43.927876>,  <29.764742, 29.085352, 43.669994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.325472, 29.460808, 43.927876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.499338, 29.162313, 43.726204>,  <30.603659, 28.983217, 43.605202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.499338, 29.162313, 43.726204>,  <30.325472, 29.460808, 43.927876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.499338, 29.162313, 43.726204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.726578, 0.621356, -0.293261,
		0.532118, -0.238857, 0.812280,
		0.434667, -0.746234, -0.504182,
		30.629738, 28.938444, 43.574947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.048204, 29.457396, 44.123745>,  <30.325472, 29.460808, 43.927876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.048204, 29.457396, 44.123745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.025167, 29.266689, 43.772888>,  <31.011345, 29.152266, 43.562374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.025167, 29.266689, 43.772888>,  <31.048204, 29.457396, 44.123745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.025167, 29.266689, 43.772888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.695339, 0.611293, -0.377921,
		0.716370, -0.631676, 0.296308,
		-0.057592, -0.476766, -0.877141,
		31.007891, 29.123659, 43.509747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.752193, 29.364845, 43.994831>,  <31.048204, 29.457396, 44.123745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.752193, 29.364845, 43.994831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.564184, 29.322662, 43.644299>,  <31.451378, 29.297352, 43.433979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.564184, 29.322662, 43.644299>,  <31.752193, 29.364845, 43.994831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.564184, 29.322662, 43.644299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.694333, 0.568810, -0.440860,
		0.544960, -0.815679, -0.194127,
		-0.470022, -0.105462, -0.876332,
		31.423178, 29.291025, 43.381401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.321201, 29.298298, 43.448345>,  <31.752193, 29.364845, 43.994831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.321201, 29.298298, 43.448345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.992096, 29.372128, 43.233315>,  <31.794632, 29.416426, 43.104294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.992096, 29.372128, 43.233315>,  <32.321201, 29.298298, 43.448345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.992096, 29.372128, 43.233315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550810, 0.492286, -0.673991,
		0.140241, -0.850639, -0.506700,
		-0.822764, 0.184574, -0.537579,
		31.745266, 29.427500, 43.072041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.480358, 29.199070, 42.768929>,  <32.321201, 29.298298, 43.448345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.480358, 29.199070, 42.768929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.166546, 29.446953, 42.777687>,  <31.978260, 29.595682, 42.782940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.166546, 29.446953, 42.777687>,  <32.480358, 29.199070, 42.768929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.166546, 29.446953, 42.777687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464530, 0.610731, -0.641264,
		-0.410768, -0.492918, -0.767008,
		-0.784526, 0.619709, 0.021894,
		31.931189, 29.632866, 42.784256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.470482, 29.490446, 42.145889>,  <32.480358, 29.199070, 42.768929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.470482, 29.490446, 42.145889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.246010, 29.731728, 42.372593>,  <32.111324, 29.876497, 42.508617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.246010, 29.731728, 42.372593>,  <32.470482, 29.490446, 42.145889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.246010, 29.731728, 42.372593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286198, 0.783927, -0.550952,
		-0.776637, -0.146978, -0.612562,
		-0.561182, 0.603204, 0.566762,
		32.077656, 29.912689, 42.542622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.127827, 29.830797, 41.681198>,  <32.470482, 29.490446, 42.145889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.127827, 29.830797, 41.681198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.079147, 30.070169, 41.997948>,  <32.049938, 30.213793, 42.188000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.079147, 30.070169, 41.997948>,  <32.127827, 29.830797, 41.681198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.079147, 30.070169, 41.997948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231714, 0.792893, -0.563586,
		-0.965141, 0.114902, -0.235158,
		-0.121698, 0.598430, 0.791878,
		32.042637, 30.249699, 42.235512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.682695, 30.432959, 41.548561>,  <32.127827, 29.830797, 41.681198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.682695, 30.432959, 41.548561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.883768, 30.571592, 41.865341>,  <32.004410, 30.654772, 42.055408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.883768, 30.571592, 41.865341>,  <31.682695, 30.432959, 41.548561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.883768, 30.571592, 41.865341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264648, 0.810431, -0.522650,
		-0.822966, 0.472315, 0.315666,
		0.502681, 0.346583, 0.791955,
		32.034573, 30.675568, 42.102928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.460381, 31.142517, 41.598343>,  <31.682695, 30.432959, 41.548561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.460381, 31.142517, 41.598343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.781990, 31.146187, 41.836151>,  <31.974957, 31.148388, 41.978836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.781990, 31.146187, 41.836151>,  <31.460381, 31.142517, 41.598343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.781990, 31.146187, 41.836151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382892, 0.756986, -0.529496,
		-0.454904, 0.653367, 0.605123,
		0.804025, 0.009173, 0.594525,
		32.023197, 31.148939, 42.014507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.467100, 31.795742, 41.905922>,  <31.460381, 31.142517, 41.598343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.467100, 31.795742, 41.905922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.828110, 31.625732, 41.878181>,  <32.044716, 31.523727, 41.861538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.828110, 31.625732, 41.878181>,  <31.467100, 31.795742, 41.905922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.828110, 31.625732, 41.878181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296589, 0.730220, -0.615479,
		0.312230, 0.534916, 0.785097,
		0.902523, -0.425022, -0.069347,
		32.098866, 31.498226, 41.857376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.944454, 32.381344, 41.991055>,  <31.467100, 31.795742, 41.905922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.944454, 32.381344, 41.991055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.136745, 32.084324, 41.804497>,  <32.252121, 31.906113, 41.692562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.136745, 32.084324, 41.804497>,  <31.944454, 32.381344, 41.991055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.136745, 32.084324, 41.804497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234101, 0.621261, -0.747818,
		0.845044, 0.250312, 0.472488,
		0.480726, -0.742549, -0.466395,
		32.280964, 31.861559, 41.664577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.371059, 32.772850, 41.599564>,  <31.944454, 32.381344, 41.991055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.371059, 32.772850, 41.599564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.420456, 32.401943, 41.458187>,  <32.450092, 32.179398, 41.373360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.420456, 32.401943, 41.458187>,  <32.371059, 32.772850, 41.599564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.420456, 32.401943, 41.458187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308702, 0.374391, -0.874377,
		0.943108, -0.001130, 0.332484,
		0.123491, -0.927270, -0.353440,
		32.457504, 32.123764, 41.352154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.182541, 32.696583, 41.360134>,  <32.371059, 32.772850, 41.599564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.182541, 32.696583, 41.360134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.931919, 32.441566, 41.180817>,  <32.781544, 32.288555, 41.073227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.931919, 32.441566, 41.180817>,  <33.182541, 32.696583, 41.360134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.931919, 32.441566, 41.180817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225555, 0.402252, -0.887310,
		0.746022, -0.657067, -0.108234,
		-0.626559, -0.637539, -0.448293,
		32.743950, 32.250305, 41.046329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.416592, 32.913395, 40.625038>,  <33.182541, 32.696583, 41.360134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.416592, 32.913395, 40.625038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.104942, 32.663265, 40.607475>,  <32.917953, 32.513187, 40.596939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.104942, 32.663265, 40.607475>,  <33.416592, 32.913395, 40.625038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.104942, 32.663265, 40.607475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030779, 0.031794, -0.999020,
		0.626109, -0.779716, -0.005525,
		-0.779127, -0.625326, -0.043906,
		32.871204, 32.475666, 40.594303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.534008, 32.345364, 40.162975>,  <33.416592, 32.913395, 40.625038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.534008, 32.345364, 40.162975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.140163, 32.413666, 40.177876>,  <32.903858, 32.454647, 40.186817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.140163, 32.413666, 40.177876>,  <33.534008, 32.345364, 40.162975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.140163, 32.413666, 40.177876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006449, 0.248491, -0.968613,
		-0.174654, -0.953465, -0.245767,
		-0.984609, 0.170757, 0.037251,
		32.844780, 32.464893, 40.189053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.235577, 32.026890, 39.572994>,  <33.534008, 32.345364, 40.162975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.235577, 32.026890, 39.572994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.964397, 32.301762, 39.677433>,  <32.801689, 32.466686, 39.740097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.964397, 32.301762, 39.677433>,  <33.235577, 32.026890, 39.572994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.964397, 32.301762, 39.677433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067414, 0.295571, -0.952939,
		-0.732015, -0.663642, -0.154055,
		-0.677945, 0.687180, 0.261101,
		32.761013, 32.507915, 39.755764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.799145, 31.971708, 39.083385>,  <33.235577, 32.026890, 39.572994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.799145, 31.971708, 39.083385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.718102, 32.336620, 39.225761>,  <32.669476, 32.555569, 39.311188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.718102, 32.336620, 39.225761>,  <32.799145, 31.971708, 39.083385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.718102, 32.336620, 39.225761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234749, 0.307628, -0.922094,
		-0.950706, -0.270382, 0.151829,
		-0.202611, 0.912282, 0.355936,
		32.657318, 32.610306, 39.332542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.131966, 32.146873, 38.715496>,  <32.799145, 31.971708, 39.083385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.131966, 32.146873, 38.715496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.276840, 32.488380, 38.865108>,  <32.363766, 32.693287, 38.954876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.276840, 32.488380, 38.865108>,  <32.131966, 32.146873, 38.715496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.276840, 32.488380, 38.865108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276204, 0.481554, -0.831755,
		-0.890242, 0.197944, 0.410228,
		0.362188, 0.853771, 0.374027,
		32.385498, 32.744511, 38.977318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.618298, 32.586941, 38.546986>,  <32.131966, 32.146873, 38.715496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.618298, 32.586941, 38.546986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.956257, 32.793964, 38.601063>,  <32.159031, 32.918179, 38.633511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.956257, 32.793964, 38.601063>,  <31.618298, 32.586941, 38.546986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.956257, 32.793964, 38.601063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142864, 0.461876, -0.875363,
		-0.515500, 0.720277, 0.464178,
		0.844896, 0.517564, 0.135196,
		32.209724, 32.949234, 38.641621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.464952, 33.268784, 38.255806>,  <31.618298, 32.586941, 38.546986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.464952, 33.268784, 38.255806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.863510, 33.298836, 38.271557>,  <32.102646, 33.316868, 38.281006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.863510, 33.298836, 38.271557>,  <31.464952, 33.268784, 38.255806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.863510, 33.298836, 38.271557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006854, 0.391368, -0.920209,
		-0.084546, 0.917162, 0.389443,
		0.996396, 0.075131, 0.039375,
		32.162430, 33.321377, 38.283371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.669519, 33.931110, 38.053112>,  <31.464952, 33.268784, 38.255806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.669519, 33.931110, 38.053112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.994339, 33.712261, 37.971889>,  <32.189232, 33.580952, 37.923157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.994339, 33.712261, 37.971889>,  <31.669519, 33.931110, 38.053112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.994339, 33.712261, 37.971889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012313, 0.331799, -0.943270,
		0.583458, 0.768483, 0.262700,
		0.812050, -0.547123, -0.203053,
		32.237953, 33.548122, 37.910973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.075005, 34.354340, 37.664715>,  <31.669519, 33.931110, 38.053112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.075005, 34.354340, 37.664715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.224957, 33.996864, 37.566097>,  <32.314926, 33.782379, 37.506927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.224957, 33.996864, 37.566097>,  <32.075005, 34.354340, 37.664715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.224957, 33.996864, 37.566097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093703, 0.228051, -0.969130,
		0.922327, 0.386408, 0.001750,
		0.374878, -0.893690, -0.246545,
		32.337421, 33.728756, 37.492134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.623272, 34.505066, 37.222687>,  <32.075005, 34.354340, 37.664715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.623272, 34.505066, 37.222687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.520172, 34.121506, 37.175217>,  <32.458313, 33.891369, 37.146736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.520172, 34.121506, 37.175217>,  <32.623272, 34.505066, 37.222687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.520172, 34.121506, 37.175217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014371, 0.119006, -0.992789,
		0.966106, -0.257594, -0.016893,
		-0.257747, -0.958897, -0.118674,
		32.442848, 33.833836, 37.139614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.128021, 34.264099, 36.796654>,  <32.623272, 34.505066, 37.222687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.128021, 34.264099, 36.796654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.824287, 34.004074, 36.785099>,  <32.642048, 33.848061, 36.778168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.824287, 34.004074, 36.785099>,  <33.128021, 34.264099, 36.796654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.824287, 34.004074, 36.785099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102267, -0.075381, -0.991897,
		0.642618, -0.756132, 0.123719,
		-0.759331, -0.650063, -0.028886,
		32.596489, 33.809055, 36.776432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.412415, 33.637814, 36.419258>,  <33.128021, 34.264099, 36.796654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.412415, 33.637814, 36.419258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.013142, 33.642311, 36.395584>,  <32.773579, 33.645012, 36.381378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.013142, 33.642311, 36.395584>,  <33.412415, 33.637814, 36.419258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.013142, 33.642311, 36.395584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057554, -0.112506, -0.991983,
		-0.017814, -0.993587, 0.111654,
		-0.998183, 0.011245, -0.059189,
		32.713688, 33.645687, 36.377827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.222858, 33.092239, 35.953125>,  <33.412415, 33.637814, 36.419258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.222858, 33.092239, 35.953125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.915348, 33.347847, 35.963215>,  <32.730843, 33.501213, 35.969269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.915348, 33.347847, 35.963215>,  <33.222858, 33.092239, 35.953125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.915348, 33.347847, 35.963215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012113, 0.053981, -0.998468,
		-0.639403, -0.767294, -0.049240,
		-0.768776, 0.639020, 0.025222,
		32.684715, 33.539555, 35.970783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.720402, 32.553883, 35.842896>,  <33.222858, 33.092239, 35.953125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.720402, 32.553883, 35.842896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.069172, 32.500584, 35.654430>,  <34.278435, 32.468605, 35.541351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.069172, 32.500584, 35.654430>,  <33.720402, 32.553883, 35.842896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.069172, 32.500584, 35.654430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258178, -0.692514, 0.673624,
		-0.416043, -0.708993, -0.569418,
		0.871924, -0.133245, -0.471162,
		34.330750, 32.460609, 35.513081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.771912, 31.805969, 35.609589>,  <33.720402, 32.553883, 35.842896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.771912, 31.805969, 35.609589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.139000, 31.959566, 35.650249>,  <34.359253, 32.051723, 35.674644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.139000, 31.959566, 35.650249>,  <33.771912, 31.805969, 35.609589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.139000, 31.959566, 35.650249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250137, -0.757459, 0.603065,
		0.308566, -0.528022, -0.791189,
		0.917725, 0.383991, 0.101648,
		34.414318, 32.074764, 35.680744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.195816, 31.282564, 35.458202>,  <33.771912, 31.805969, 35.609589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.195816, 31.282564, 35.458202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.417843, 31.525284, 35.685780>,  <34.551060, 31.670916, 35.822327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.417843, 31.525284, 35.685780>,  <34.195816, 31.282564, 35.458202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.417843, 31.525284, 35.685780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070585, -0.715879, 0.694647,
		0.828803, -0.345419, -0.440194,
		0.555070, 0.606797, 0.568941,
		34.584366, 31.707323, 35.856461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.875313, 30.867931, 35.718498>,  <34.195816, 31.282564, 35.458202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.875313, 30.867931, 35.718498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.802597, 31.175692, 35.963440>,  <34.758968, 31.360348, 36.110405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.802597, 31.175692, 35.963440>,  <34.875313, 30.867931, 35.718498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.802597, 31.175692, 35.963440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179509, -0.586298, 0.789957,
		0.966814, 0.253526, -0.031533,
		-0.181787, 0.769402, 0.612351,
		34.748062, 31.406511, 36.147144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.475391, 30.886137, 36.152073>,  <34.875313, 30.867931, 35.718498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.475391, 30.886137, 36.152073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.174885, 31.067583, 36.343838>,  <34.994583, 31.176451, 36.458897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.174885, 31.067583, 36.343838>,  <35.475391, 30.886137, 36.152073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.174885, 31.067583, 36.343838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249286, -0.477548, 0.842499,
		0.611112, 0.752450, 0.245685,
		-0.751265, 0.453616, 0.479410,
		34.949505, 31.203669, 36.487659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.762306, 30.986284, 36.766773>,  <35.475391, 30.886137, 36.152073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.762306, 30.986284, 36.766773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.371277, 31.002155, 36.849510>,  <35.136662, 31.011679, 36.899155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.371277, 31.002155, 36.849510>,  <35.762306, 30.986284, 36.766773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.371277, 31.002155, 36.849510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148798, -0.564947, 0.811600,
		0.149059, 0.824173, 0.546370,
		-0.977569, 0.039677, 0.206846,
		35.078007, 31.014059, 36.911564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.741444, 31.089651, 37.519905>,  <35.762306, 30.986284, 36.766773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.741444, 31.089651, 37.519905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.379406, 30.967915, 37.401123>,  <35.162182, 30.894873, 37.329853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.379406, 30.967915, 37.401123>,  <35.741444, 31.089651, 37.519905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.379406, 30.967915, 37.401123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082571, -0.559272, 0.824862,
		-0.417118, 0.771097, 0.481064,
		-0.905094, -0.304343, -0.296953,
		35.107880, 30.876612, 37.312038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.256096, 31.177458, 38.151829>,  <35.741444, 31.089651, 37.519905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.256096, 31.177458, 38.151829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.090656, 30.915854, 37.898464>,  <34.991394, 30.758890, 37.746445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.090656, 30.915854, 37.898464>,  <35.256096, 31.177458, 38.151829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.090656, 30.915854, 37.898464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051579, -0.677752, 0.733479,
		-0.908997, 0.336037, 0.246585,
		-0.413600, -0.654011, -0.633407,
		34.966576, 30.719650, 37.708443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.602818, 31.016479, 38.516590>,  <35.256096, 31.177458, 38.151829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.602818, 31.016479, 38.516590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.680294, 30.719166, 38.260460>,  <34.726780, 30.540777, 38.106781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.680294, 30.719166, 38.260460>,  <34.602818, 31.016479, 38.516590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.680294, 30.719166, 38.260460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317108, -0.665082, 0.676098,
		-0.928399, 0.072096, -0.364523,
		0.193694, -0.743282, -0.640324,
		34.738403, 30.496181, 38.068363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.029846, 30.636492, 38.591484>,  <34.602818, 31.016479, 38.516590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.029846, 30.636492, 38.591484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.320366, 30.397089, 38.456264>,  <34.494678, 30.253447, 38.375134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.320366, 30.397089, 38.456264>,  <34.029846, 30.636492, 38.591484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.320366, 30.397089, 38.456264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335962, -0.738141, 0.585045,
		-0.599680, -0.311348, -0.737188,
		0.726301, -0.598507, -0.338048,
		34.538258, 30.217537, 38.354851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.682880, 30.010490, 38.385937>,  <34.029846, 30.636492, 38.591484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.682880, 30.010490, 38.385937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.064873, 29.928879, 38.472092>,  <34.294067, 29.879911, 38.523785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.064873, 29.928879, 38.472092>,  <33.682880, 30.010490, 38.385937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.064873, 29.928879, 38.472092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296675, -0.651695, 0.698052,
		-0.002055, -0.730524, -0.682884,
		0.954976, -0.204029, 0.215389,
		34.351364, 29.867670, 38.536709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.648243, 29.427944, 38.540527>,  <33.682880, 30.010490, 38.385937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.648243, 29.427944, 38.540527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.010479, 29.499092, 38.694553>,  <34.227821, 29.541780, 38.786968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.010479, 29.499092, 38.694553>,  <33.648243, 29.427944, 38.540527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.010479, 29.499092, 38.694553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204954, -0.611314, 0.764388,
		0.371358, -0.771140, -0.517143,
		0.905587, 0.177871, 0.385064,
		34.282154, 29.552454, 38.810074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.875992, 28.723131, 38.763023>,  <33.648243, 29.427944, 38.540527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.875992, 28.723131, 38.763023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.107677, 28.989571, 38.950989>,  <34.246689, 29.149433, 39.063770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.107677, 28.989571, 38.950989>,  <33.875992, 28.723131, 38.763023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.107677, 28.989571, 38.950989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031475, -0.557757, 0.829407,
		0.814565, -0.495198, -0.302098,
		0.579218, 0.666098, 0.469915,
		34.281445, 29.189400, 39.091965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.531021, 28.407930, 38.912834>,  <33.875992, 28.723131, 38.763023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.531021, 28.407930, 38.912834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.477024, 28.700190, 39.180546>,  <34.444626, 28.875546, 39.341171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.477024, 28.700190, 39.180546>,  <34.531021, 28.407930, 38.912834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.477024, 28.700190, 39.180546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028073, -0.672368, 0.739684,
		0.990449, 0.118637, 0.070251,
		-0.134988, 0.730648, 0.669277,
		34.436527, 28.919384, 39.381329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.009777, 28.377203, 39.417603>,  <34.531021, 28.407930, 38.912834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.009777, 28.377203, 39.417603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.692017, 28.549126, 39.589275>,  <34.501362, 28.652279, 39.692280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.692017, 28.549126, 39.589275>,  <35.009777, 28.377203, 39.417603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.692017, 28.549126, 39.589275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013565, -0.693864, 0.719979,
		0.607245, 0.577772, 0.545374,
		-0.794399, 0.429805, 0.429183,
		34.453697, 28.678068, 39.718029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.129559, 28.213907, 40.075615>,  <35.009777, 28.377203, 39.417603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.129559, 28.213907, 40.075615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.760033, 28.365053, 40.100227>,  <34.538319, 28.455742, 40.114994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.760033, 28.365053, 40.100227>,  <35.129559, 28.213907, 40.075615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.760033, 28.365053, 40.100227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163338, -0.534369, 0.829320,
		0.346250, 0.756087, 0.555377,
		-0.923813, 0.377866, 0.061528,
		34.482887, 28.478413, 40.118687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.075928, 28.516739, 40.770344>,  <35.129559, 28.213907, 40.075615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.075928, 28.516739, 40.770344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.707039, 28.427887, 40.643749>,  <34.485706, 28.374577, 40.567791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.707039, 28.427887, 40.643749>,  <35.075928, 28.516739, 40.770344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.707039, 28.427887, 40.643749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244301, -0.299704, 0.922223,
		-0.299704, 0.927813, 0.222128,
		-0.922223, -0.222128, -0.316488,
		34.430370, 28.361248, 40.548801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.699146, 28.697300, 41.388496>,  <35.075928, 28.516739, 40.770344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.699146, 28.697300, 41.388496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.429020, 28.504484, 41.165218>,  <34.266945, 28.388794, 41.031250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.429020, 28.504484, 41.165218>,  <34.699146, 28.697300, 41.388496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.429020, 28.504484, 41.165218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464984, -0.309210, 0.829565,
		-0.572486, 0.819771, -0.015328,
		-0.675314, -0.482042, -0.558199,
		34.226425, 28.359871, 40.997757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.042854, 28.968323, 41.538670>,  <34.699146, 28.697300, 41.388496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.042854, 28.968323, 41.538670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.998535, 28.592215, 41.409912>,  <33.971943, 28.366550, 41.332657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.998535, 28.592215, 41.409912>,  <34.042854, 28.968323, 41.538670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.998535, 28.592215, 41.409912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457783, -0.239197, 0.856282,
		-0.882133, 0.242233, -0.403937,
		-0.110799, -0.940270, -0.321894,
		33.965294, 28.310133, 41.313343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.404621, 28.840157, 41.712898>,  <34.042854, 28.968323, 41.538670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.404621, 28.840157, 41.712898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.518993, 28.464260, 41.637928>,  <33.587616, 28.238722, 41.592945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.518993, 28.464260, 41.637928>,  <33.404621, 28.840157, 41.712898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.518993, 28.464260, 41.637928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.578884, -0.325265, 0.747727,
		-0.763633, -0.105303, -0.637006,
		0.285934, -0.939741, -0.187425,
		33.604774, 28.182337, 41.581699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.743908, 28.431627, 41.871403>,  <33.404621, 28.840157, 41.712898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.743908, 28.431627, 41.871403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.053089, 28.177874, 41.875492>,  <33.238598, 28.025621, 41.877945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.053089, 28.177874, 41.875492>,  <32.743908, 28.431627, 41.871403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.053089, 28.177874, 41.875492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365588, -0.432163, 0.824367,
		-0.518548, -0.640931, -0.565964,
		0.772951, -0.634384, 0.010220,
		33.284973, 27.987558, 41.878559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.488297, 27.837294, 41.965736>,  <32.743908, 28.431627, 41.871403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.488297, 27.837294, 41.965736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.863579, 27.802980, 42.099854>,  <33.088749, 27.782393, 42.180325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.863579, 27.802980, 42.099854>,  <32.488297, 27.837294, 41.965736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.863579, 27.802980, 42.099854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335949, -0.458528, 0.822734,
		0.083162, -0.884530, -0.459011,
		0.938202, -0.085784, 0.335289,
		33.145039, 27.777245, 42.200439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.425529, 27.265665, 42.235355>,  <32.488297, 27.837294, 41.965736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.425529, 27.265665, 42.235355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.756664, 27.417830, 42.400265>,  <32.955345, 27.509129, 42.499210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.756664, 27.417830, 42.400265>,  <32.425529, 27.265665, 42.235355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.756664, 27.417830, 42.400265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217287, -0.460106, 0.860865,
		0.517171, -0.802240, -0.298236,
		0.827841, 0.380411, 0.412270,
		33.005016, 27.531954, 42.523945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.700058, 26.727343, 42.616516>,  <32.425529, 27.265665, 42.235355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.700058, 26.727343, 42.616516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.878197, 27.046877, 42.778271>,  <32.985081, 27.238598, 42.875324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.878197, 27.046877, 42.778271>,  <32.700058, 26.727343, 42.616516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.878197, 27.046877, 42.778271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172514, -0.366624, 0.914235,
		0.878580, -0.476915, -0.025465,
		0.445349, 0.798836, 0.404383,
		33.011803, 27.286528, 42.899586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.156990, 26.513542, 43.176281>,  <32.700058, 26.727343, 42.616516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.156990, 26.513542, 43.176281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.045685, 26.892902, 43.237087>,  <32.978901, 27.120518, 43.273571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.045685, 26.892902, 43.237087>,  <33.156990, 26.513542, 43.176281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.045685, 26.892902, 43.237087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281146, -0.231761, 0.931259,
		0.918438, 0.216392, 0.331128,
		-0.278260, 0.948399, 0.152020,
		32.962208, 27.177422, 43.282692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.476337, 26.686161, 43.849197>,  <33.156990, 26.513542, 43.176281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.476337, 26.686161, 43.849197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.164196, 26.921631, 43.764812>,  <32.976910, 27.062912, 43.714180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.164196, 26.921631, 43.764812>,  <33.476337, 26.686161, 43.849197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.164196, 26.921631, 43.764812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362391, -0.150783, 0.919748,
		0.509622, 0.794183, 0.330995,
		-0.780357, 0.588674, -0.210962,
		32.930088, 27.098232, 43.701523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.496437, 27.175440, 44.413116>,  <33.476337, 26.686161, 43.849197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.496437, 27.175440, 44.413116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.132866, 27.177664, 44.246349>,  <32.914722, 27.178997, 44.146290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.132866, 27.177664, 44.246349>,  <33.496437, 27.175440, 44.413116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.132866, 27.177664, 44.246349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416229, -0.070941, 0.906488,
		-0.024538, 0.997465, 0.066794,
		-0.908929, 0.005559, -0.416915,
		32.860188, 27.179331, 44.121273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.189011, 27.666683, 44.743542>,  <33.496437, 27.175440, 44.413116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.189011, 27.666683, 44.743542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.902107, 27.430557, 44.595448>,  <32.729965, 27.288881, 44.506592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.902107, 27.430557, 44.595448>,  <33.189011, 27.666683, 44.743542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.902107, 27.430557, 44.595448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563780, 0.179373, 0.806212,
		-0.409509, 0.786990, -0.461464,
		-0.717255, -0.590315, -0.370234,
		32.686932, 27.253462, 44.484379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.549286, 28.014538, 44.815773>,  <33.189011, 27.666683, 44.743542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.549286, 28.014538, 44.815773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.465469, 27.624308, 44.789417>,  <32.415180, 27.390169, 44.773605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.465469, 27.624308, 44.789417>,  <32.549286, 28.014538, 44.815773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.465469, 27.624308, 44.789417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390375, 0.021686, 0.920400,
		-0.896493, 0.218585, -0.385386,
		-0.209543, -0.975577, -0.065889,
		32.402607, 27.331635, 44.769650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.900843, 27.899324, 45.088249>,  <32.549286, 28.014538, 44.815773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.900843, 27.899324, 45.088249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.997250, 27.511755, 45.066006>,  <32.055096, 27.279213, 45.052658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.997250, 27.511755, 45.066006>,  <31.900843, 27.899324, 45.088249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.997250, 27.511755, 45.066006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546415, -0.182830, 0.817316,
		-0.802086, -0.166601, -0.573501,
		0.241019, -0.968926, -0.055611,
		32.069553, 27.221077, 45.049324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.230440, 27.419825, 45.246025>,  <31.900843, 27.899324, 45.088249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.230440, 27.419825, 45.246025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.539854, 27.171791, 45.298386>,  <31.725502, 27.022970, 45.329803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.539854, 27.171791, 45.298386>,  <31.230440, 27.419825, 45.246025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.539854, 27.171791, 45.298386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312086, -0.192939, 0.930256,
		-0.551582, -0.760440, -0.342765,
		0.773537, -0.620085, 0.130901,
		31.771915, 26.985765, 45.337654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.969351, 26.742634, 45.576218>,  <31.230440, 27.419825, 45.246025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.969351, 26.742634, 45.576218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.358545, 26.745949, 45.668503>,  <31.592062, 26.747938, 45.723873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.358545, 26.745949, 45.668503>,  <30.969351, 26.742634, 45.576218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.358545, 26.745949, 45.668503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205387, -0.425276, 0.881451,
		0.105420, -0.905026, -0.412086,
		0.972987, 0.008286, 0.230713,
		31.650442, 26.748434, 45.737717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.125238, 26.139250, 45.904076>,  <30.969351, 26.742634, 45.576218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.125238, 26.139250, 45.904076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.429523, 26.377638, 46.006943>,  <31.612095, 26.520670, 46.068665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.429523, 26.377638, 46.006943>,  <31.125238, 26.139250, 45.904076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.429523, 26.377638, 46.006943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103094, -0.280238, 0.954378,
		0.640850, -0.752520, -0.151739,
		0.760712, 0.595970, 0.257171,
		31.657738, 26.556429, 46.084095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.326141, 25.848400, 46.489220>,  <31.125238, 26.139250, 45.904076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.326141, 25.848400, 46.489220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.546429, 26.182117, 46.499542>,  <31.678600, 26.382347, 46.505733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.546429, 26.182117, 46.499542>,  <31.326141, 25.848400, 46.489220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.546429, 26.182117, 46.499542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164114, -0.138538, 0.976665,
		0.818398, -0.533633, -0.213215,
		0.550719, 0.834292, 0.025802,
		31.711645, 26.432405, 46.507282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.881876, 25.705442, 46.834618>,  <31.326141, 25.848400, 46.489220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.881876, 25.705442, 46.834618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.831871, 26.096697, 46.901100>,  <31.801868, 26.331450, 46.940990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.831871, 26.096697, 46.901100>,  <31.881876, 25.705442, 46.834618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.831871, 26.096697, 46.901100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049672, -0.161139, 0.985681,
		0.990911, 0.131476, -0.028442,
		-0.125011, 0.978135, 0.166205,
		31.794369, 26.390137, 46.950962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.408009, 25.881804, 47.240051>,  <31.881876, 25.705442, 46.834618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.408009, 25.881804, 47.240051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.115780, 26.146954, 47.305603>,  <31.940441, 26.306044, 47.344936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.115780, 26.146954, 47.305603>,  <32.408009, 25.881804, 47.240051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.115780, 26.146954, 47.305603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210767, -0.009373, 0.977491,
		0.649488, 0.748673, -0.132864,
		-0.730576, 0.662873, 0.163884,
		31.896606, 26.345816, 47.354767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.662064, 26.380697, 47.730186>,  <32.408009, 25.881804, 47.240051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.662064, 26.380697, 47.730186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.274139, 26.477766, 47.739845>,  <32.041386, 26.536007, 47.745640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.274139, 26.477766, 47.739845>,  <32.662064, 26.380697, 47.730186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.274139, 26.477766, 47.739845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088276, 0.257010, 0.962369,
		0.227333, 0.935444, -0.270672,
		-0.969808, 0.242672, 0.024150,
		31.983196, 26.550568, 47.747089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.601807, 26.955513, 48.262241>,  <32.662064, 26.380697, 47.730186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.601807, 26.955513, 48.262241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.232903, 26.808266, 48.215034>,  <32.011559, 26.719917, 48.186710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.232903, 26.808266, 48.215034>,  <32.601807, 26.955513, 48.262241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.232903, 26.808266, 48.215034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136781, 0.025211, 0.990280,
		-0.361564, 0.929438, -0.073602,
		-0.922259, -0.368117, -0.118014,
		31.956224, 26.697830, 48.179630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.224300, 27.312010, 48.655197>,  <32.601807, 26.955513, 48.262241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.224300, 27.312010, 48.655197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.427242, 27.441719, 48.974556>,  <32.549007, 27.519545, 49.166172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.427242, 27.441719, 48.974556>,  <32.224300, 27.312010, 48.655197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.427242, 27.441719, 48.974556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.669331, 0.435264, -0.602114,
		-0.542763, 0.839877, 0.003786,
		0.507350, 0.324271, 0.798401,
		32.579449, 27.539000, 49.214077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.247952, 28.081564, 48.584179>,  <32.224300, 27.312010, 48.655197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.247952, 28.081564, 48.584179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.549900, 27.945883, 48.808716>,  <32.731068, 27.864475, 48.943439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.549900, 27.945883, 48.808716>,  <32.247952, 28.081564, 48.584179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.549900, 27.945883, 48.808716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.655867, 0.387317, -0.647938,
		0.002362, 0.857280, 0.514846,
		0.754872, -0.339201, 0.561347,
		32.776363, 27.844122, 48.977119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.694893, 28.673557, 48.725872>,  <32.247952, 28.081564, 48.584179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.694893, 28.673557, 48.725872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.928204, 28.354683, 48.788200>,  <33.068192, 28.163359, 48.825600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.928204, 28.354683, 48.788200>,  <32.694893, 28.673557, 48.725872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.928204, 28.354683, 48.788200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.660986, 0.354324, -0.661477,
		0.472108, 0.488822, 0.733598,
		0.583276, -0.797187, 0.155825,
		33.103188, 28.115526, 48.834949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.351685, 28.961103, 48.635391>,  <32.694893, 28.673557, 48.725872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.351685, 28.961103, 48.635391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.415676, 28.566814, 48.614407>,  <33.454071, 28.330240, 48.601814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.415676, 28.566814, 48.614407>,  <33.351685, 28.961103, 48.635391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.415676, 28.566814, 48.614407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.747259, 0.155666, -0.646043,
		0.644987, 0.064151, 0.761496,
		0.159983, -0.985725, -0.052465,
		33.463673, 28.271097, 48.598667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.987309, 28.957272, 48.473824>,  <33.351685, 28.961103, 48.635391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.987309, 28.957272, 48.473824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.873123, 28.585756, 48.379284>,  <33.804611, 28.362846, 48.322559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.873123, 28.585756, 48.379284>,  <33.987309, 28.957272, 48.473824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.873123, 28.585756, 48.379284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.688082, -0.026961, -0.725131,
		0.667121, -0.369628, 0.646779,
		-0.285467, -0.928788, -0.236349,
		33.787483, 28.307119, 48.308380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.581966, 28.640984, 48.270729>,  <33.987309, 28.957272, 48.473824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.581966, 28.640984, 48.270729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.262848, 28.471128, 48.099522>,  <34.071377, 28.369215, 47.996796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.262848, 28.471128, 48.099522>,  <34.581966, 28.640984, 48.270729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.262848, 28.471128, 48.099522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431803, 0.093045, -0.897156,
		0.420793, -0.900568, 0.109130,
		-0.797796, -0.424640, -0.428021,
		34.023510, 28.343737, 47.971115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.845901, 28.284609, 47.814034>,  <34.581966, 28.640984, 48.270729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.845901, 28.284609, 47.814034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.471027, 28.286491, 47.674511>,  <34.246105, 28.287621, 47.590797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.471027, 28.286491, 47.674511>,  <34.845901, 28.284609, 47.814034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.471027, 28.286491, 47.674511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348390, 0.063349, -0.935207,
		0.017689, -0.997980, -0.061011,
		-0.937183, 0.004713, -0.348807,
		34.189873, 28.287905, 47.569870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.842823, 27.809816, 47.281399>,  <34.845901, 28.284609, 47.814034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.842823, 27.809816, 47.281399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.541351, 28.068411, 47.234024>,  <34.360470, 28.223568, 47.205601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.541351, 28.068411, 47.234024>,  <34.842823, 27.809816, 47.281399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.541351, 28.068411, 47.234024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346956, 0.238303, -0.907101,
		-0.558206, -0.724752, -0.403906,
		-0.753676, 0.646487, -0.118435,
		34.315250, 28.262358, 47.198494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.739403, 27.714808, 46.635220>,  <34.842823, 27.809816, 47.281399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.739403, 27.714808, 46.635220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.531754, 28.053572, 46.681267>,  <34.407162, 28.256830, 46.708893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.531754, 28.053572, 46.681267>,  <34.739403, 27.714808, 46.635220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.531754, 28.053572, 46.681267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257560, 0.283436, -0.923757,
		-0.814967, -0.449897, -0.365269,
		-0.519126, 0.846910, 0.115116,
		34.376015, 28.307644, 46.715801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.366898, 27.860004, 46.076336>,  <34.739403, 27.714808, 46.635220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.366898, 27.860004, 46.076336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.397163, 28.224493, 46.238300>,  <34.415325, 28.443186, 46.335480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.397163, 28.224493, 46.238300>,  <34.366898, 27.860004, 46.076336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.397163, 28.224493, 46.238300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130000, 0.393591, -0.910047,
		-0.988622, 0.121499, -0.088677,
		0.075667, 0.911221, 0.404908,
		34.419865, 28.497860, 46.359772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.959591, 28.272055, 45.591366>,  <34.366898, 27.860004, 46.076336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.959591, 28.272055, 45.591366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.195652, 28.529964, 45.785679>,  <34.337288, 28.684710, 45.902267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.195652, 28.529964, 45.785679>,  <33.959591, 28.272055, 45.591366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.195652, 28.529964, 45.785679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045462, 0.627331, -0.777424,
		-0.806009, 0.436716, 0.399535,
		0.590155, 0.644775, 0.485781,
		34.372700, 28.723396, 45.931412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.665791, 28.817598, 45.421604>,  <33.959591, 28.272055, 45.591366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.665791, 28.817598, 45.421604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.022621, 28.942875, 45.551903>,  <34.236721, 29.018040, 45.630081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.022621, 28.942875, 45.551903>,  <33.665791, 28.817598, 45.421604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.022621, 28.942875, 45.551903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043948, 0.657321, -0.752329,
		-0.449744, 0.685450, 0.572616,
		0.892076, 0.313190, 0.325750,
		34.290245, 29.036831, 45.649628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.678040, 29.480440, 45.229721>,  <33.665791, 28.817598, 45.421604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.678040, 29.480440, 45.229721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.066196, 29.394497, 45.273869>,  <34.299091, 29.342932, 45.300358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.066196, 29.394497, 45.273869>,  <33.678040, 29.480440, 45.229721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.066196, 29.394497, 45.273869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235078, 0.735055, -0.635950,
		0.055513, 0.643063, 0.763798,
		0.970390, -0.214856, 0.110365,
		34.357315, 29.330040, 45.306976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.018723, 30.058107, 45.210503>,  <33.678040, 29.480440, 45.229721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.018723, 30.058107, 45.210503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.266151, 29.766806, 45.092514>,  <34.414608, 29.592024, 45.021721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.266151, 29.766806, 45.092514>,  <34.018723, 30.058107, 45.210503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.266151, 29.766806, 45.092514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403261, 0.616452, -0.676290,
		0.674348, 0.299386, 0.674998,
		0.618575, -0.728255, -0.294973,
		34.451725, 29.548328, 45.004021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.485458, 30.460592, 44.809738>,  <34.018723, 30.058107, 45.210503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.485458, 30.460592, 44.809738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.607540, 30.089138, 44.725365>,  <34.680790, 29.866266, 44.674740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.607540, 30.089138, 44.725365>,  <34.485458, 30.460592, 44.809738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.607540, 30.089138, 44.725365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429294, 0.331884, -0.839976,
		0.850035, 0.165810, 0.499948,
		0.305201, -0.928633, -0.210932,
		34.699100, 29.810549, 44.662086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.290401, 30.403250, 44.721176>,  <34.485458, 30.460592, 44.809738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.290401, 30.403250, 44.721176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.110916, 30.109097, 44.518055>,  <35.003223, 29.932604, 44.396183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.110916, 30.109097, 44.518055>,  <35.290401, 30.403250, 44.721176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.110916, 30.109097, 44.518055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427380, 0.322452, -0.844613,
		0.784856, -0.596017, 0.169599,
		-0.448717, -0.735383, -0.507805,
		34.976299, 29.888481, 44.365715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.916431, 30.113901, 44.330276>,  <35.290401, 30.403250, 44.721176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.916431, 30.113901, 44.330276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.586319, 29.980148, 44.148243>,  <35.388252, 29.899897, 44.039024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.586319, 29.980148, 44.148243>,  <35.916431, 30.113901, 44.330276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.586319, 29.980148, 44.148243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374597, 0.278888, -0.884250,
		0.422594, -0.900228, -0.104903,
		-0.825283, -0.334382, -0.455079,
		35.338734, 29.879833, 44.011719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.180477, 29.755045, 43.666264>,  <35.916431, 30.113901, 44.330276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.180477, 29.755045, 43.666264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.791660, 29.812609, 43.592052>,  <35.558369, 29.847147, 43.547527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.791660, 29.812609, 43.592052>,  <36.180477, 29.755045, 43.666264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.791660, 29.812609, 43.592052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212629, 0.204366, -0.955523,
		-0.099592, -0.968259, -0.229251,
		-0.972044, 0.143908, -0.185526,
		35.500046, 29.855782, 43.536396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.949303, 29.351662, 43.033066>,  <36.180477, 29.755045, 43.666264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.949303, 29.351662, 43.033066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.670322, 29.637970, 43.047138>,  <35.502934, 29.809755, 43.055580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.670322, 29.637970, 43.047138>,  <35.949303, 29.351662, 43.033066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.670322, 29.637970, 43.047138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142026, 0.186172, -0.972198,
		-0.702421, -0.673061, -0.231504,
		-0.697448, 0.715772, 0.035179,
		35.461086, 29.852701, 43.057693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.668941, 29.252457, 42.390598>,  <35.949303, 29.351662, 43.033066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.668941, 29.252457, 42.390598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.523613, 29.601505, 42.521156>,  <35.436417, 29.810934, 42.599491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.523613, 29.601505, 42.521156>,  <35.668941, 29.252457, 42.390598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.523613, 29.601505, 42.521156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149232, 0.291308, -0.944918,
		-0.919636, -0.392014, 0.024385,
		-0.363318, 0.872619, 0.326399,
		35.414619, 29.863291, 42.619076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.108482, 29.376926, 41.976910>,  <35.668941, 29.252457, 42.390598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.108482, 29.376926, 41.976910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.261086, 29.726505, 42.097351>,  <35.352646, 29.936253, 42.169617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.261086, 29.726505, 42.097351>,  <35.108482, 29.376926, 41.976910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.261086, 29.726505, 42.097351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039720, 0.309945, -0.949924,
		-0.923511, 0.374365, 0.083533,
		0.381509, 0.873948, 0.301107,
		35.375538, 29.988689, 42.187683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.931087, 29.810377, 41.501736>,  <35.108482, 29.376926, 41.976910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.931087, 29.810377, 41.501736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.200676, 30.041435, 41.685947>,  <35.362431, 30.180069, 41.796474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.200676, 30.041435, 41.685947>,  <34.931087, 29.810377, 41.501736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.200676, 30.041435, 41.685947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151581, 0.501994, -0.851484,
		-0.723039, 0.643684, 0.250770,
		0.673972, 0.577644, 0.460532,
		35.402866, 30.214729, 41.824108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.698895, 30.563274, 41.446003>,  <34.931087, 29.810377, 41.501736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.698895, 30.563274, 41.446003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.095604, 30.531025, 41.485783>,  <35.333630, 30.511675, 41.509651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.095604, 30.531025, 41.485783>,  <34.698895, 30.563274, 41.446003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.095604, 30.531025, 41.485783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127991, 0.605625, -0.785390,
		0.003092, 0.791655, 0.610960,
		0.991771, -0.080626, 0.099452,
		35.393135, 30.506838, 41.515617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.963333, 31.183260, 41.269829>,  <34.698895, 30.563274, 41.446003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.963333, 31.183260, 41.269829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.297497, 30.974947, 41.199551>,  <35.497997, 30.849958, 41.157383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.297497, 30.974947, 41.199551>,  <34.963333, 31.183260, 41.269829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.297497, 30.974947, 41.199551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185800, 0.568446, -0.801466,
		0.517264, 0.636910, 0.571649,
		0.835414, -0.520782, -0.175699,
		35.548122, 30.818712, 41.146839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.368961, 31.649488, 41.013878>,  <34.963333, 31.183260, 41.269829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.368961, 31.649488, 41.013878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.549221, 31.304117, 40.923187>,  <35.657379, 31.096895, 40.868774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.549221, 31.304117, 40.923187>,  <35.368961, 31.649488, 41.013878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.549221, 31.304117, 40.923187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393005, 0.419934, -0.818048,
		0.801535, 0.279551, 0.528576,
		0.450653, -0.863427, -0.226727,
		35.684418, 31.045090, 40.855167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.958229, 31.934891, 40.774338>,  <35.368961, 31.649488, 41.013878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.958229, 31.934891, 40.774338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.971172, 31.559893, 40.635742>,  <35.978939, 31.334894, 40.552586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.971172, 31.559893, 40.635742>,  <35.958229, 31.934891, 40.774338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.971172, 31.559893, 40.635742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532188, 0.309597, -0.787988,
		0.846008, -0.158900, 0.508942,
		0.032355, -0.937497, -0.346486,
		35.980881, 31.278643, 40.531796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.684029, 31.741089, 40.709175>,  <35.958229, 31.934891, 40.774338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.684029, 31.741089, 40.709175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.475201, 31.520710, 40.448746>,  <36.349903, 31.388483, 40.292488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.475201, 31.520710, 40.448746>,  <36.684029, 31.741089, 40.709175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.475201, 31.520710, 40.448746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494578, 0.426356, -0.757373,
		0.694861, -0.717411, 0.049897,
		-0.522074, -0.550947, -0.651074,
		36.318577, 31.355427, 40.253422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.147636, 31.617603, 40.261417>,  <36.684029, 31.741089, 40.709175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.147636, 31.617603, 40.261417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.827511, 31.538992, 40.034832>,  <36.635437, 31.491825, 39.898880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.827511, 31.538992, 40.034832>,  <37.147636, 31.617603, 40.261417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.827511, 31.538992, 40.034832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459317, 0.406308, -0.789900,
		0.385398, -0.892350, -0.234903,
		-0.800310, -0.196531, -0.566462,
		36.587418, 31.480034, 39.864895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.451958, 31.373680, 39.695610>,  <37.147636, 31.617603, 40.261417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.451958, 31.373680, 39.695610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.081928, 31.490316, 39.598282>,  <36.859909, 31.560299, 39.539883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.081928, 31.490316, 39.598282>,  <37.451958, 31.373680, 39.695610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.081928, 31.490316, 39.598282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374446, 0.593315, -0.712578,
		-0.063414, -0.750301, -0.658048,
		-0.925078, 0.291591, -0.243323,
		36.804405, 31.577793, 39.525284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.452641, 31.309982, 38.986984>,  <37.451958, 31.373680, 39.695610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.452641, 31.309982, 38.986984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.175697, 31.584835, 39.075069>,  <37.009533, 31.749746, 39.127918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.175697, 31.584835, 39.075069>,  <37.452641, 31.309982, 38.986984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.175697, 31.584835, 39.075069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333359, 0.575271, -0.746951,
		-0.639934, -0.443747, -0.627354,
		-0.692356, 0.687133, 0.220208,
		36.967991, 31.790976, 39.141132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.269054, 31.587446, 38.325607>,  <37.452641, 31.309982, 38.986984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.269054, 31.587446, 38.325607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.096207, 31.850714, 38.572212>,  <36.992500, 32.008675, 38.720177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.096207, 31.850714, 38.572212>,  <37.269054, 31.587446, 38.325607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.096207, 31.850714, 38.572212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175847, 0.732005, -0.658214,
		-0.884508, -0.176012, -0.432048,
		-0.432115, 0.658171, 0.616513,
		36.966572, 32.048164, 38.757168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.697617, 31.911736, 38.013462>,  <37.269054, 31.587446, 38.325607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.697617, 31.911736, 38.013462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.852409, 32.168030, 38.278702>,  <36.945286, 32.321804, 38.437847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.852409, 32.168030, 38.278702>,  <36.697617, 31.911736, 38.013462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.852409, 32.168030, 38.278702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007477, 0.721288, -0.692595,
		-0.922056, 0.263066, 0.283918,
		0.386985, 0.640734, 0.663101,
		36.968506, 32.360249, 38.477631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.466312, 32.565681, 37.821259>,  <36.697617, 31.911736, 38.013462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.466312, 32.565681, 37.821259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.735851, 32.687916, 38.090347>,  <36.897575, 32.761257, 38.251801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.735851, 32.687916, 38.090347>,  <36.466312, 32.565681, 37.821259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.735851, 32.687916, 38.090347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111733, 0.857853, -0.501601,
		-0.730376, 0.413166, 0.543916,
		0.673845, 0.305584, 0.672720,
		36.938004, 32.779591, 38.292164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.287720, 33.299213, 37.899757>,  <36.466312, 32.565681, 37.821259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.287720, 33.299213, 37.899757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.667351, 33.236507, 38.009071>,  <36.895130, 33.198883, 38.074661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.667351, 33.236507, 38.009071>,  <36.287720, 33.299213, 37.899757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.667351, 33.236507, 38.009071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236423, 0.927703, -0.288915,
		-0.208236, 0.338812, 0.917521,
		0.949074, -0.156761, 0.273284,
		36.952072, 33.189480, 38.091057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.574757, 33.786171, 38.489033>,  <36.287720, 33.299213, 37.899757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.574757, 33.786171, 38.489033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.910076, 33.626877, 38.340084>,  <37.111267, 33.531300, 38.250713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.910076, 33.626877, 38.340084>,  <36.574757, 33.786171, 38.489033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.910076, 33.626877, 38.340084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424586, 0.905303, -0.012348,
		0.342028, -0.147753, 0.928001,
		0.838298, -0.398240, -0.372373,
		37.161564, 33.507404, 38.228371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.093922, 34.215675, 38.901669>,  <36.574757, 33.786171, 38.489033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.093922, 34.215675, 38.901669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.287231, 34.075954, 38.580563>,  <37.403217, 33.992123, 38.387897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.287231, 34.075954, 38.580563>,  <37.093922, 34.215675, 38.901669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.287231, 34.075954, 38.580563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444499, 0.887875, -0.118741,
		0.754234, -0.299446, 0.584348,
		0.483272, -0.349300, -0.802769,
		37.432213, 33.971165, 38.339733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.657333, 34.578552, 38.980633>,  <37.093922, 34.215675, 38.901669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.657333, 34.578552, 38.980633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.694008, 34.454800, 38.602032>,  <37.716011, 34.380547, 38.374870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.694008, 34.454800, 38.602032>,  <37.657333, 34.578552, 38.980633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.694008, 34.454800, 38.602032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586420, 0.784983, -0.199784,
		0.804802, -0.536734, 0.253398,
		0.091682, -0.309384, -0.946507,
		37.721512, 34.361984, 38.318081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.319412, 34.867455, 38.845825>,  <37.657333, 34.578552, 38.980633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.319412, 34.867455, 38.845825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.165325, 34.770741, 38.489590>,  <38.072872, 34.712711, 38.275848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.165325, 34.770741, 38.489590>,  <38.319412, 34.867455, 38.845825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.165325, 34.770741, 38.489590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260373, 0.897381, -0.356249,
		0.885333, -0.369118, -0.282731,
		-0.385215, -0.241783, -0.890590,
		38.049763, 34.698204, 38.222412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.892605, 34.939545, 38.449299>,  <38.319412, 34.867455, 38.845825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.892605, 34.939545, 38.449299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.554081, 34.990913, 38.242504>,  <38.350967, 35.021736, 38.118427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.554081, 34.990913, 38.242504>,  <38.892605, 34.939545, 38.449299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.554081, 34.990913, 38.242504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317254, 0.901128, -0.295498,
		0.427918, -0.414096, -0.803374,
		-0.846307, 0.128425, -0.516983,
		38.300190, 35.029442, 38.087410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.080688, 35.003826, 37.782284>,  <38.892605, 34.939545, 38.449299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.080688, 35.003826, 37.782284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.717270, 35.170803, 37.775471>,  <38.499218, 35.270988, 37.771381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.717270, 35.170803, 37.775471>,  <39.080688, 35.003826, 37.782284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.717270, 35.170803, 37.775471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400140, 0.857705, -0.322847,
		-0.120159, -0.300138, -0.946298,
		-0.908543, 0.417445, -0.017036,
		38.444706, 35.296036, 37.770359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.860168, 35.356785, 37.086952>,  <39.080688, 35.003826, 37.782284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.860168, 35.356785, 37.086952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.732449, 35.532993, 37.422569>,  <38.655815, 35.638718, 37.623940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.732449, 35.532993, 37.422569>,  <38.860168, 35.356785, 37.086952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.732449, 35.532993, 37.422569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254296, 0.892744, -0.371942,
		-0.912897, 0.094604, -0.397076,
		-0.319300, 0.440520, 0.839041,
		38.636658, 35.665150, 37.674282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.397190, 35.865856, 36.926590>,  <38.860168, 35.356785, 37.086952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.397190, 35.865856, 36.926590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.571579, 35.951164, 37.276318>,  <38.676212, 36.002350, 37.486156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.571579, 35.951164, 37.276318>,  <38.397190, 35.865856, 36.926590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.571579, 35.951164, 37.276318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366806, 0.845048, -0.389034,
		-0.821814, 0.490316, 0.290193,
		0.435976, 0.213269, 0.874323,
		38.702374, 36.015144, 37.538616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.266605, 36.641438, 37.188789>,  <38.397190, 35.865856, 36.926590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.266605, 36.641438, 37.188789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.553413, 36.365250, 37.150555>,  <38.725498, 36.199535, 37.127613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.553413, 36.365250, 37.150555>,  <38.266605, 36.641438, 37.188789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.553413, 36.365250, 37.150555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506642, 0.610408, -0.608865,
		0.478752, 0.388137, 0.787494,
		0.717015, -0.690472, -0.095587,
		38.768517, 36.158108, 37.121880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.999786, 36.875824, 37.358253>,  <38.266605, 36.641438, 37.188789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.999786, 36.875824, 37.358253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.965260, 36.588600, 37.082008>,  <38.944542, 36.416267, 36.916264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.965260, 36.588600, 37.082008>,  <38.999786, 36.875824, 37.358253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.965260, 36.588600, 37.082008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594686, 0.519020, -0.613976,
		0.799311, -0.463694, 0.382217,
		-0.086319, -0.718057, -0.690611,
		38.939365, 36.373184, 36.874825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.583149, 36.866352, 37.057697>,  <38.999786, 36.875824, 37.358253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.583149, 36.866352, 37.057697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.333378, 36.732227, 36.775520>,  <39.183514, 36.651752, 36.606213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.333378, 36.732227, 36.775520>,  <39.583149, 36.866352, 37.057697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.333378, 36.732227, 36.775520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348507, 0.688673, -0.635823,
		0.699029, -0.642875, -0.313160,
		-0.624420, -0.335321, -0.705450,
		39.146049, 36.631634, 36.563885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.902809, 36.584595, 36.479912>,  <39.583149, 36.866352, 37.057697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.902809, 36.584595, 36.479912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.573093, 36.810825, 36.490231>,  <39.375263, 36.946564, 36.496422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.573093, 36.810825, 36.490231>,  <39.902809, 36.584595, 36.479912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.573093, 36.810825, 36.490231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536782, 0.795184, -0.282043,
		-0.180031, -0.218638, -0.959055,
		-0.824290, 0.565580, 0.025797,
		39.325806, 36.980499, 36.497971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.390743, 36.539772, 37.032925>,  <39.902809, 36.584595, 36.479912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.390743, 36.539772, 37.032925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.199329, 36.404476, 37.357048>,  <40.084480, 36.323299, 37.551521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.199329, 36.404476, 37.357048>,  <40.390743, 36.539772, 37.032925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.199329, 36.404476, 37.357048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.841311, 0.087591, 0.533408,
		-0.251397, 0.936974, 0.242651,
		-0.478535, -0.338242, 0.810307,
		40.055767, 36.303005, 37.600140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.828056, 35.897762, 36.854580>,  <40.390743, 36.539772, 37.032925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.828056, 35.897762, 36.854580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.223881, 35.867611, 36.805439>,  <41.461376, 35.849522, 36.775955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.223881, 35.867611, 36.805439>,  <40.828056, 35.897762, 36.854580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.223881, 35.867611, 36.805439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044033, 0.653507, -0.755639,
		0.137241, 0.753159, 0.643364,
		0.989559, -0.075375, -0.122852,
		41.520748, 35.844997, 36.768585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.121582, 36.550529, 37.051559>,  <40.828056, 35.897762, 36.854580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.121582, 36.550529, 37.051559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.365444, 36.363842, 36.795280>,  <41.511761, 36.251827, 36.641514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.365444, 36.363842, 36.795280>,  <41.121582, 36.550529, 37.051559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.365444, 36.363842, 36.795280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125610, 0.854950, -0.503272,
		0.782654, 0.226342, 0.579847,
		0.609652, -0.466722, -0.640699,
		41.548340, 36.223824, 36.603069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.801792, 37.015259, 36.982635>,  <41.121582, 36.550529, 37.051559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.801792, 37.015259, 36.982635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.799648, 36.767097, 36.668930>,  <41.798363, 36.618198, 36.480709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.799648, 36.767097, 36.668930>,  <41.801792, 37.015259, 36.982635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.799648, 36.767097, 36.668930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234825, 0.761561, -0.604055,
		0.972023, -0.187401, 0.141606,
		-0.005359, -0.620408, -0.784261,
		41.798042, 36.580975, 36.433651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.310394, 37.340805, 36.570568>,  <41.801792, 37.015259, 36.982635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.310394, 37.340805, 36.570568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.081429, 37.119141, 36.328827>,  <41.944050, 36.986141, 36.183781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.081429, 37.119141, 36.328827>,  <42.310394, 37.340805, 36.570568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.081429, 37.119141, 36.328827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267109, 0.570826, -0.776409,
		0.775239, -0.605856, -0.178728,
		-0.572414, -0.554163, -0.604356,
		41.909702, 36.952892, 36.147522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.733849, 37.312634, 35.972607>,  <42.310394, 37.340805, 36.570568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.733849, 37.312634, 35.972607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.364056, 37.237724, 35.839790>,  <42.142178, 37.192780, 35.760101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.364056, 37.237724, 35.839790>,  <42.733849, 37.312634, 35.972607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.364056, 37.237724, 35.839790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144311, 0.634267, -0.759526,
		0.352845, -0.750089, -0.559345,
		-0.924486, -0.187276, -0.332044,
		42.086708, 37.181541, 35.740177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.878986, 37.124313, 35.229942>,  <42.733849, 37.312634, 35.972607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.878986, 37.124313, 35.229942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.495018, 37.227074, 35.274769>,  <42.264637, 37.288731, 35.301666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.495018, 37.227074, 35.274769>,  <42.878986, 37.124313, 35.229942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.495018, 37.227074, 35.274769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067660, 0.600421, -0.796817,
		-0.271988, -0.757297, -0.593737,
		-0.959919, 0.256897, 0.112068,
		42.207043, 37.304142, 35.308388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.625793, 37.281845, 34.535023>,  <42.878986, 37.124313, 35.229942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.625793, 37.281845, 34.535023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.351044, 37.458046, 34.766251>,  <42.186195, 37.563766, 34.904987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.351044, 37.458046, 34.766251>,  <42.625793, 37.281845, 34.535023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.351044, 37.458046, 34.766251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113706, 0.720455, -0.684116,
		-0.717828, -0.535630, -0.444773,
		-0.686872, 0.440504, 0.578067,
		42.144981, 37.590199, 34.939671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.945648, 37.291264, 34.142441>,  <42.625793, 37.281845, 34.535023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.945648, 37.291264, 34.142441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.943985, 37.573986, 34.425400>,  <41.942986, 37.743618, 34.595177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.943985, 37.573986, 34.425400>,  <41.945648, 37.291264, 34.142441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.943985, 37.573986, 34.425400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098237, 0.703695, -0.703678,
		-0.995154, -0.072417, 0.066509,
		-0.004156, 0.706802, 0.707399,
		41.942738, 37.786026, 34.637619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.422577, 37.742374, 33.952354>,  <41.945648, 37.291264, 34.142441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.422577, 37.742374, 33.952354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.596691, 37.973827, 34.228241>,  <41.701160, 38.112701, 34.393772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.596691, 37.973827, 34.228241>,  <41.422577, 37.742374, 33.952354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.596691, 37.973827, 34.228241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352851, 0.814459, -0.460600,
		-0.828263, -0.042872, 0.558697,
		0.435289, 0.578635, 0.689713,
		41.727280, 38.147419, 34.435154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.886925, 38.335251, 34.162460>,  <41.422577, 37.742374, 33.952354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.886925, 38.335251, 34.162460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.271984, 38.432121, 34.210888>,  <41.503021, 38.490242, 34.239944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.271984, 38.432121, 34.210888>,  <40.886925, 38.335251, 34.162460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.271984, 38.432121, 34.210888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163970, 0.877297, -0.451070,
		-0.215450, 0.414371, 0.884239,
		0.962650, 0.242171, 0.121069,
		41.560780, 38.504772, 34.247208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.890408, 39.019882, 34.357937>,  <40.886925, 38.335251, 34.162460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.890408, 39.019882, 34.357937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.260578, 38.968307, 34.215408>,  <41.482681, 38.937363, 34.129890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.260578, 38.968307, 34.215408>,  <40.890408, 39.019882, 34.357937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.260578, 38.968307, 34.215408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091036, 0.837140, -0.539360,
		0.367837, 0.531575, 0.762971,
		0.925424, -0.128939, -0.356323,
		41.538204, 38.929626, 34.108513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.120087, 39.714367, 34.165024>,  <40.890408, 39.019882, 34.357937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.120087, 39.714367, 34.165024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.354679, 39.453842, 33.972424>,  <41.495434, 39.297527, 33.856865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.354679, 39.453842, 33.972424>,  <41.120087, 39.714367, 34.165024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.354679, 39.453842, 33.972424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075806, 0.635994, -0.767962,
		0.806410, 0.413893, 0.422370,
		0.586479, -0.651310, -0.481496,
		41.530624, 39.258450, 33.827976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.657211, 40.138062, 33.818302>,  <41.120087, 39.714367, 34.165024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.657211, 40.138062, 33.818302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.669426, 39.782745, 33.634995>,  <41.676754, 39.569557, 33.525009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.669426, 39.782745, 33.634995>,  <41.657211, 40.138062, 33.818302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.669426, 39.782745, 33.634995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151961, 0.457281, -0.876243,
		0.987915, -0.042884, 0.148948,
		0.030535, -0.888288, -0.458271,
		41.678585, 39.516258, 33.497513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.240402, 40.131294, 33.321217>,  <41.657211, 40.138062, 33.818302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.240402, 40.131294, 33.321217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.980858, 39.859512, 33.184208>,  <41.825130, 39.696442, 33.102001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.980858, 39.859512, 33.184208>,  <42.240402, 40.131294, 33.321217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.980858, 39.859512, 33.184208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137414, 0.338113, -0.931019,
		0.748399, -0.651166, -0.126020,
		-0.648857, -0.679457, -0.342523,
		41.786201, 39.655674, 33.081451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.528393, 39.964825, 32.718880>,  <42.240402, 40.131294, 33.321217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.528393, 39.964825, 32.718880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.145355, 39.850273, 32.706192>,  <41.915531, 39.781544, 32.698578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.145355, 39.850273, 32.706192>,  <42.528393, 39.964825, 32.718880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.145355, 39.850273, 32.706192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048629, 0.269151, -0.961869,
		0.284006, -0.919533, -0.271663,
		-0.957588, -0.286387, -0.031725,
		41.858078, 39.764362, 32.696674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.434605, 39.572674, 32.109116>,  <42.528393, 39.964825, 32.718880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.434605, 39.572674, 32.109116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.069996, 39.712868, 32.195175>,  <41.851231, 39.796986, 32.246811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.069996, 39.712868, 32.195175>,  <42.434605, 39.572674, 32.109116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.069996, 39.712868, 32.195175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147637, 0.209392, -0.966622,
		-0.383838, -0.912860, -0.139121,
		-0.911522, 0.350487, 0.215144,
		41.796539, 39.818012, 32.259720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.964008, 39.241932, 31.649237>,  <42.434605, 39.572674, 32.109116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.964008, 39.241932, 31.649237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.759079, 39.555809, 31.788824>,  <41.636120, 39.744137, 31.872576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.759079, 39.555809, 31.788824>,  <41.964008, 39.241932, 31.649237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.759079, 39.555809, 31.788824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266186, 0.241238, -0.933247,
		-0.816498, -0.571014, 0.085282,
		-0.512324, 0.784695, 0.348966,
		41.605381, 39.791218, 31.893515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.304501, 39.153461, 31.463312>,  <41.964008, 39.241932, 31.649237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.304501, 39.153461, 31.463312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.349438, 39.548481, 31.507359>,  <41.376400, 39.785492, 31.533787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.349438, 39.548481, 31.507359>,  <41.304501, 39.153461, 31.463312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.349438, 39.548481, 31.507359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208586, 0.131784, -0.969085,
		-0.971531, 0.085899, 0.220794,
		0.112341, 0.987550, 0.110115,
		41.383141, 39.844746, 31.540394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.718414, 39.550522, 31.181110>,  <41.304501, 39.153461, 31.463312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.718414, 39.550522, 31.181110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.021530, 39.811443, 31.174782>,  <41.203400, 39.967999, 31.170984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.021530, 39.811443, 31.174782>,  <40.718414, 39.550522, 31.181110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.021530, 39.811443, 31.174782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205827, 0.215962, -0.954461,
		-0.619187, 0.726536, 0.297916,
		0.757789, 0.652308, -0.015820,
		41.248867, 40.007137, 31.170036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.372124, 40.061764, 30.680008>,  <40.718414, 39.550522, 31.181110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.372124, 40.061764, 30.680008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.759369, 40.147488, 30.731901>,  <40.991714, 40.198921, 30.763037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.759369, 40.147488, 30.731901>,  <40.372124, 40.061764, 30.680008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.759369, 40.147488, 30.731901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081383, 0.220725, -0.971935,
		-0.236932, 0.951500, 0.196245,
		0.968112, 0.214311, 0.129733,
		41.049801, 40.211781, 30.770821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.411541, 40.764133, 30.526018>,  <40.372124, 40.061764, 30.680008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.411541, 40.764133, 30.526018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.743309, 40.551880, 30.456165>,  <40.942371, 40.424530, 30.414253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.743309, 40.551880, 30.456165>,  <40.411541, 40.764133, 30.526018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.743309, 40.551880, 30.456165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012565, 0.294813, -0.955472,
		0.558486, 0.794681, 0.237856,
		0.829419, -0.530629, -0.174634,
		40.992134, 40.392693, 30.403774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.771633, 41.108658, 30.085810>,  <40.411541, 40.764133, 30.526018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.771633, 41.108658, 30.085810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.897919, 40.732002, 30.039089>,  <40.973690, 40.506008, 30.011057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.897919, 40.732002, 30.039089>,  <40.771633, 41.108658, 30.085810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.897919, 40.732002, 30.039089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123411, 0.162802, -0.978910,
		0.940795, 0.294641, 0.167607,
		0.315713, -0.941638, -0.116801,
		40.992634, 40.449512, 30.004049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.506500, 41.115292, 29.866642>,  <40.771633, 41.108658, 30.085810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.506500, 41.115292, 29.866642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.277115, 40.809265, 29.749466>,  <41.139484, 40.625648, 29.679161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.277115, 40.809265, 29.749466>,  <41.506500, 41.115292, 29.866642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.277115, 40.809265, 29.749466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220977, 0.199868, -0.954580,
		0.788864, -0.612152, 0.054444,
		-0.573466, -0.765064, -0.292940,
		41.105076, 40.579746, 29.661585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.881611, 40.750317, 29.403803>,  <41.506500, 41.115292, 29.866642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.881611, 40.750317, 29.403803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.498405, 40.664440, 29.327780>,  <41.268482, 40.612915, 29.282166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.498405, 40.664440, 29.327780>,  <41.881611, 40.750317, 29.403803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.498405, 40.664440, 29.327780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125693, 0.281314, -0.951348,
		0.257711, -0.935292, -0.242517,
		-0.958012, -0.214690, -0.190057,
		41.211002, 40.600033, 29.270761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.850151, 40.387737, 28.652229>,  <41.881611, 40.750317, 29.403803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.850151, 40.387737, 28.652229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.488171, 40.520489, 28.758745>,  <41.270981, 40.600140, 28.822655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.488171, 40.520489, 28.758745>,  <41.850151, 40.387737, 28.652229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.488171, 40.520489, 28.758745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194348, 0.234339, -0.952530,
		-0.378530, -0.913750, -0.147566,
		-0.904956, 0.331882, 0.266290,
		41.216682, 40.620052, 28.838633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.789635, 39.828400, 28.264973>,  <41.850151, 40.387737, 28.652229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.789635, 39.828400, 28.264973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.631676, 39.768555, 27.902388>,  <41.536900, 39.732647, 27.684837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.631676, 39.768555, 27.902388>,  <41.789635, 39.828400, 28.264973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.631676, 39.768555, 27.902388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544096, 0.756929, -0.361965,
		0.740279, -0.636141, -0.217510,
		-0.394901, -0.149609, -0.906461,
		41.513206, 39.723671, 27.630449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.306370, 39.666058, 27.754326>,  <41.789635, 39.828400, 28.264973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.306370, 39.666058, 27.754326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.000439, 39.842731, 27.566730>,  <41.816879, 39.948734, 27.454174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.000439, 39.842731, 27.566730>,  <42.306370, 39.666058, 27.754326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.000439, 39.842731, 27.566730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614172, 0.719672, -0.323828,
		0.194488, -0.535714, -0.821696,
		-0.764831, 0.441682, -0.468988,
		41.770988, 39.975235, 27.426033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.154907, 39.342644, 27.707331>,  <42.306370, 39.666058, 27.754326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.154907, 39.342644, 27.707331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.502483, 39.203255, 27.566757>,  <43.711029, 39.119621, 27.482414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.502483, 39.203255, 27.566757>,  <43.154907, 39.342644, 27.707331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.502483, 39.203255, 27.566757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045253, -0.651177, 0.757575,
		-0.492836, -0.674195, -0.550068,
		0.868945, -0.348468, -0.351433,
		43.763168, 39.098713, 27.461327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.154987, 38.577740, 27.740944>,  <43.154907, 39.342644, 27.707331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.154987, 38.577740, 27.740944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.528053, 38.721653, 27.751438>,  <43.751892, 38.808002, 27.757734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.528053, 38.721653, 27.751438>,  <43.154987, 38.577740, 27.740944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.528053, 38.721653, 27.751438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185527, -0.540761, 0.820462,
		0.309378, -0.760349, -0.571099,
		0.932666, 0.359787, 0.026234,
		43.807854, 38.829590, 27.759308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.599895, 37.979988, 27.758877>,  <43.154987, 38.577740, 27.740944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.599895, 37.979988, 27.758877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.771027, 38.295528, 27.935364>,  <43.873707, 38.484852, 28.041256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.771027, 38.295528, 27.935364>,  <43.599895, 37.979988, 27.758877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.771027, 38.295528, 27.935364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252291, -0.572967, 0.779780,
		0.867936, -0.222296, -0.444151,
		0.427826, 0.788855, 0.441216,
		43.899376, 38.532185, 28.067728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.345959, 37.862663, 27.922157>,  <43.599895, 37.979988, 27.758877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.345959, 37.862663, 27.922157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.172882, 38.116768, 28.178040>,  <44.069035, 38.269230, 28.331568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.172882, 38.116768, 28.178040>,  <44.345959, 37.862663, 27.922157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.172882, 38.116768, 28.178040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180309, -0.634252, 0.751807,
		0.883328, 0.440644, 0.159891,
		-0.432690, 0.635262, 0.639704,
		44.043076, 38.307346, 28.369951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.738396, 37.876919, 28.587294>,  <44.345959, 37.862663, 27.922157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.738396, 37.876919, 28.587294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.389240, 38.040462, 28.693802>,  <44.179749, 38.138588, 28.757706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.389240, 38.040462, 28.693802>,  <44.738396, 37.876919, 28.587294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.389240, 38.040462, 28.693802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074369, -0.427858, 0.900781,
		0.482218, 0.806084, 0.343066,
		-0.872889, 0.408859, 0.266268,
		44.127373, 38.163120, 28.773682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.894886, 38.157604, 29.249113>,  <44.738396, 37.876919, 28.587294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.894886, 38.157604, 29.249113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.505089, 38.071552, 29.223530>,  <44.271210, 38.019920, 29.208179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.505089, 38.071552, 29.223530>,  <44.894886, 38.157604, 29.249113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.505089, 38.071552, 29.223530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025941, -0.391025, 0.920014,
		-0.222933, 0.894884, 0.386631,
		-0.974489, -0.215131, -0.063958,
		44.212742, 38.007011, 29.204342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.542992, 38.474945, 29.822964>,  <44.894886, 38.157604, 29.249113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.542992, 38.474945, 29.822964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.305054, 38.177475, 29.700914>,  <44.162289, 37.998993, 29.627686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.305054, 38.177475, 29.700914>,  <44.542992, 38.474945, 29.822964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.305054, 38.177475, 29.700914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182079, -0.245061, 0.952256,
		-0.782944, 0.622005, 0.010366,
		-0.594849, -0.743676, -0.305124,
		44.126598, 37.954372, 29.609377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.915863, 38.459728, 30.281031>,  <44.542992, 38.474945, 29.822964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.915863, 38.459728, 30.281031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.939808, 38.103458, 30.100758>,  <43.954174, 37.889698, 29.992594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.939808, 38.103458, 30.100758>,  <43.915863, 38.459728, 30.281031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.939808, 38.103458, 30.100758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058521, -0.453846, 0.889156,
		-0.996490, -0.026849, -0.079289,
		0.059858, -0.890676, -0.450682,
		43.957764, 37.836254, 29.965553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.356255, 38.104053, 30.533031>,  <43.915863, 38.459728, 30.281031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.356255, 38.104053, 30.533031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.579571, 37.801628, 30.396400>,  <43.713562, 37.620171, 30.314423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.579571, 37.801628, 30.396400>,  <43.356255, 38.104053, 30.533031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.579571, 37.801628, 30.396400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220351, -0.532058, 0.817533,
		-0.799848, -0.381154, -0.463643,
		0.558291, -0.756066, -0.341578,
		43.747059, 37.574810, 30.293928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.939793, 37.527138, 30.603256>,  <43.356255, 38.104053, 30.533031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.939793, 37.527138, 30.603256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.312294, 37.382034, 30.589569>,  <43.535797, 37.294971, 30.581358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.312294, 37.382034, 30.589569>,  <42.939793, 37.527138, 30.603256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.312294, 37.382034, 30.589569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205370, -0.600142, 0.773080,
		-0.300972, -0.712909, -0.633385,
		0.931257, -0.362754, -0.034216,
		43.591671, 37.273209, 30.579304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.909733, 36.815941, 30.816124>,  <42.939793, 37.527138, 30.603256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.909733, 36.815941, 30.816124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.303223, 36.882622, 30.842955>,  <43.539318, 36.922630, 30.859053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.303223, 36.882622, 30.842955>,  <42.909733, 36.815941, 30.816124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.303223, 36.882622, 30.842955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011154, -0.429236, 0.903124,
		0.179341, -0.887676, -0.424109,
		0.983724, 0.166698, 0.067079,
		43.598339, 36.932632, 30.863079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.275288, 36.132633, 30.925611>,  <42.909733, 36.815941, 30.816124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.275288, 36.132633, 30.925611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.536369, 36.406101, 31.056196>,  <43.693016, 36.570183, 31.134546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.536369, 36.406101, 31.056196>,  <43.275288, 36.132633, 30.925611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.536369, 36.406101, 31.056196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136877, -0.530226, 0.836734,
		0.745149, -0.501451, -0.439658,
		0.652699, 0.683671, 0.326461,
		43.732178, 36.611202, 31.154135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.710506, 35.776695, 31.244587>,  <43.275288, 36.132633, 30.925611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.710506, 35.776695, 31.244587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.800541, 36.129070, 31.411100>,  <43.854561, 36.340496, 31.511009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.800541, 36.129070, 31.411100>,  <43.710506, 35.776695, 31.244587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.800541, 36.129070, 31.411100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344193, -0.471593, 0.811869,
		0.911518, -0.039462, -0.409362,
		0.225090, 0.880933, 0.416283,
		43.868069, 36.393349, 31.535986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.370499, 35.691879, 31.630600>,  <43.710506, 35.776695, 31.244587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.370499, 35.691879, 31.630600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.197571, 36.022064, 31.775768>,  <44.093815, 36.220177, 31.862869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.197571, 36.022064, 31.775768>,  <44.370499, 35.691879, 31.630600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.197571, 36.022064, 31.775768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246106, -0.279181, 0.928165,
		0.867485, 0.490583, -0.082455,
		-0.432322, 0.825462, 0.362920,
		44.067875, 36.269703, 31.884644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.833443, 35.912006, 32.117519>,  <44.370499, 35.691879, 31.630600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.833443, 35.912006, 32.117519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.480202, 36.076256, 32.208309>,  <44.268257, 36.174805, 32.262783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.480202, 36.076256, 32.208309>,  <44.833443, 35.912006, 32.117519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.480202, 36.076256, 32.208309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162870, -0.185381, 0.969076,
		0.439998, 0.892763, 0.096833,
		-0.883106, 0.410620, 0.226971,
		44.215271, 36.199440, 32.276402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.981892, 36.108150, 32.785107>,  <44.833443, 35.912006, 32.117519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.981892, 36.108150, 32.785107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.586288, 36.137066, 32.733509>,  <44.348927, 36.154415, 32.702553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.586288, 36.137066, 32.733509>,  <44.981892, 36.108150, 32.785107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.586288, 36.137066, 32.733509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135823, -0.099311, 0.985743,
		0.058444, 0.992427, 0.108037,
		-0.989008, 0.072285, -0.128990,
		44.289585, 36.158752, 32.694813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.697308, 36.593304, 33.169907>,  <44.981892, 36.108150, 32.785107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.697308, 36.593304, 33.169907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.391788, 36.340691, 33.116558>,  <44.208477, 36.189121, 33.084549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.391788, 36.340691, 33.116558>,  <44.697308, 36.593304, 33.169907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.391788, 36.340691, 33.116558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016074, -0.225175, 0.974186,
		-0.645260, 0.741933, 0.182138,
		-0.763794, -0.631531, -0.133371,
		44.162651, 36.151230, 33.076546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.246227, 36.700264, 33.670540>,  <44.697308, 36.593304, 33.169907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.246227, 36.700264, 33.670540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.172459, 36.328308, 33.543232>,  <44.128197, 36.105137, 33.466846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.172459, 36.328308, 33.543232>,  <44.246227, 36.700264, 33.670540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.172459, 36.328308, 33.543232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044983, -0.331475, 0.942391,
		-0.981817, 0.159482, 0.102961,
		-0.184424, -0.929887, -0.318273,
		44.117130, 36.049343, 33.447750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.695728, 36.432232, 34.018623>,  <44.246227, 36.700264, 33.670540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.695728, 36.432232, 34.018623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.846508, 36.089436, 33.878067>,  <43.936977, 35.883759, 33.793732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.846508, 36.089436, 33.878067>,  <43.695728, 36.432232, 34.018623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.846508, 36.089436, 33.878067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145856, -0.429565, 0.891179,
		-0.914676, -0.284681, -0.286923,
		0.376954, -0.856989, -0.351391,
		43.959595, 35.832340, 33.772652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.247913, 35.858601, 34.204098>,  <43.695728, 36.432232, 34.018623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.247913, 35.858601, 34.204098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.617947, 35.718552, 34.145267>,  <43.839966, 35.634521, 34.109970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.617947, 35.718552, 34.145267>,  <43.247913, 35.858601, 34.204098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.617947, 35.718552, 34.145267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056194, -0.509233, 0.858792,
		-0.375576, -0.786192, -0.490759,
		0.925086, -0.350119, -0.147077,
		43.895473, 35.613514, 34.101143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.241268, 35.197689, 34.328270>,  <43.247913, 35.858601, 34.204098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.241268, 35.197689, 34.328270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.633930, 35.266613, 34.360905>,  <43.869530, 35.307968, 34.380486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.633930, 35.266613, 34.360905>,  <43.241268, 35.197689, 34.328270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.633930, 35.266613, 34.360905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023105, -0.532327, 0.846223,
		0.189244, -0.828817, -0.526545,
		0.981658, 0.172309, 0.081589,
		43.928429, 35.318306, 34.385380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.540348, 34.559761, 34.587944>,  <43.241268, 35.197689, 34.328270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.540348, 34.559761, 34.587944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.817791, 34.837013, 34.666416>,  <43.984257, 35.003365, 34.713501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.817791, 34.837013, 34.666416>,  <43.540348, 34.559761, 34.587944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.817791, 34.837013, 34.666416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076613, -0.341775, 0.936654,
		0.716272, -0.634636, -0.290159,
		0.693603, 0.693129, 0.196182,
		44.025871, 35.044952, 34.725269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.103100, 34.213184, 34.898842>,  <43.540348, 34.559761, 34.587944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.103100, 34.213184, 34.898842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.125164, 34.600040, 34.998112>,  <44.138401, 34.832153, 35.057674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.125164, 34.600040, 34.998112>,  <44.103100, 34.213184, 34.898842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.125164, 34.600040, 34.998112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294747, -0.253250, 0.921406,
		0.953982, 0.022328, -0.299031,
		0.055156, 0.967143, 0.248178,
		44.141712, 34.890182, 35.072563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.553116, 34.234562, 35.387775>,  <44.103100, 34.213184, 34.898842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.553116, 34.234562, 35.387775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.425510, 34.611320, 35.429859>,  <44.348946, 34.837376, 35.455109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.425510, 34.611320, 35.429859>,  <44.553116, 34.234562, 35.387775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.425510, 34.611320, 35.429859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351536, 0.014505, 0.936062,
		0.880143, 0.335602, -0.335736,
		-0.319015, 0.941892, 0.105210,
		44.329807, 34.893887, 35.461422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.207054, 34.640560, 35.604683>,  <44.553116, 34.234562, 35.387775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.207054, 34.640560, 35.604683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.875027, 34.828995, 35.724052>,  <44.675808, 34.942055, 35.795673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.875027, 34.828995, 35.724052>,  <45.207054, 34.640560, 35.604683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.875027, 34.828995, 35.724052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286861, -0.098198, 0.952926,
		0.478216, 0.876603, -0.053625,
		-0.830072, 0.471088, 0.298423,
		44.626003, 34.970322, 35.813580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.690201, 34.307072, 36.111412>,  <45.207054, 34.640560, 35.604683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.690201, 34.307072, 36.111412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.737698, 34.511913, 35.771141>,  <45.766197, 34.634819, 35.566978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.737698, 34.511913, 35.771141>,  <45.690201, 34.307072, 36.111412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.737698, 34.511913, 35.771141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.992914, -0.057197, 0.104166,
		0.004688, -0.857015, -0.515270,
		0.118744, 0.512107, -0.850674,
		45.773319, 34.665546, 35.515938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.267357, 34.010544, 35.748695>,  <45.690201, 34.307072, 36.111412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.267357, 34.010544, 35.748695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.241703, 34.377106, 35.590668>,  <46.226311, 34.597042, 35.495850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.241703, 34.377106, 35.590668>,  <46.267357, 34.010544, 35.748695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.241703, 34.377106, 35.590668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.989899, 0.108582, 0.091160,
		0.126438, -0.385234, -0.914116,
		-0.064139, 0.916409, -0.395071,
		46.222462, 34.652027, 35.472145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.956989, 34.170437, 35.353203>,  <46.267357, 34.010544, 35.748695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.956989, 34.170437, 35.353203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.797382, 34.535587, 35.387699>,  <46.701618, 34.754677, 35.408398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.797382, 34.535587, 35.387699>,  <46.956989, 34.170437, 35.353203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.797382, 34.535587, 35.387699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.887219, 0.360614, 0.287750,
		0.231581, 0.191333, -0.953814,
		-0.399015, 0.912879, 0.086243,
		46.677677, 34.809452, 35.413570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.331490, 34.919594, 35.145554>,  <46.956989, 34.170437, 35.353203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.331490, 34.919594, 35.145554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.720955, 34.981468, 35.212551>,  <47.954636, 35.018593, 35.252750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.720955, 34.981468, 35.212551>,  <47.331490, 34.919594, 35.145554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.720955, 34.981468, 35.212551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065795, -0.894025, 0.443159,
		0.218293, -0.420467, -0.880656,
		0.973662, 0.154682, 0.167495,
		48.013054, 35.027874, 35.262798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<32.057011, 33.607586, 45.782352> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.688494, 33.705322, 45.661350>,  <31.467382, 33.763966, 45.588749>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.688494, 33.705322, 45.661350>,  <32.057011, 33.607586, 45.782352>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.688494, 33.705322, 45.661350> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385437, 0.470822, -0.793577,
		-0.051482, -0.847715, -0.527947,
		-0.921297, 0.244346, -0.302502,
		31.412106, 33.778625, 45.570599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.899706, 33.405655, 45.125912>,  <32.057011, 33.607586, 45.782352>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.899706, 33.405655, 45.125912> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.597202, 33.666393, 45.148434>,  <31.415699, 33.822834, 45.161949>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.597202, 33.666393, 45.148434>,  <31.899706, 33.405655, 45.125912>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.597202, 33.666393, 45.148434> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311330, 0.434220, -0.845297,
		-0.575452, -0.621734, -0.531322,
		-0.756260, 0.651844, 0.056308,
		31.370325, 33.861946, 45.165325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.837090, 33.540539, 44.417503>,  <31.899706, 33.405655, 45.125912>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.837090, 33.540539, 44.417503> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.633026, 33.836700, 44.592567>,  <31.510588, 34.014397, 44.697605>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.633026, 33.836700, 44.592567>,  <31.837090, 33.540539, 44.417503>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.633026, 33.836700, 44.592567> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168629, 0.585083, -0.793248,
		-0.843388, -0.330880, -0.423338,
		-0.510157, 0.740403, 0.437656,
		31.479979, 34.058823, 44.723866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.388531, 33.685947, 43.925888>,  <31.837090, 33.540539, 44.417503>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.388531, 33.685947, 43.925888> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.443171, 33.997444, 44.170807>,  <31.475954, 34.184341, 44.317757>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.443171, 33.997444, 44.170807>,  <31.388531, 33.685947, 43.925888>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.443171, 33.997444, 44.170807> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059679, 0.610495, -0.789768,
		-0.988827, 0.144424, 0.036920,
		0.136601, 0.778741, 0.612293,
		31.484152, 34.231068, 44.354496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.919546, 34.124813, 43.721397>,  <31.388531, 33.685947, 43.925888>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.919546, 34.124813, 43.721397> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.187691, 34.348248, 43.916782>,  <31.348577, 34.482307, 44.034012>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.187691, 34.348248, 43.916782>,  <30.919546, 34.124813, 43.721397>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.187691, 34.348248, 43.916782> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014868, 0.668250, -0.743789,
		-0.741886, 0.491345, 0.456274,
		0.670361, 0.558590, 0.488460,
		31.388800, 34.515823, 44.063320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.606007, 34.786636, 43.806877>,  <30.919546, 34.124813, 43.721397>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.606007, 34.786636, 43.806877> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.005268, 34.810925, 43.807503>,  <31.244825, 34.825497, 43.807877>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.005268, 34.810925, 43.807503>,  <30.606007, 34.786636, 43.806877>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.005268, 34.810925, 43.807503> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045103, 0.758186, -0.650476,
		-0.040679, 0.649205, 0.759525,
		0.998154, 0.060717, 0.001562,
		31.304714, 34.829140, 43.807972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.715591, 35.436462, 43.577847>,  <30.606007, 34.786636, 43.806877>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.715591, 35.436462, 43.577847> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.079323, 35.272099, 43.551678>,  <31.297562, 35.173481, 43.535976>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.079323, 35.272099, 43.551678>,  <30.715591, 35.436462, 43.577847>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.079323, 35.272099, 43.551678> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171991, 0.514381, -0.840138,
		0.378873, 0.752707, 0.538413,
		0.909326, -0.410907, -0.065427,
		31.352121, 35.148827, 43.532051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.178411, 35.965324, 43.300922>,  <30.715591, 35.436462, 43.577847>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.178411, 35.965324, 43.300922> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.400869, 35.637474, 43.245918>,  <31.534344, 35.440762, 43.212917>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.400869, 35.637474, 43.245918>,  <31.178411, 35.965324, 43.300922>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.400869, 35.637474, 43.245918> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334330, 0.372120, -0.865881,
		0.760872, 0.435583, 0.480980,
		0.556145, -0.819631, -0.137507,
		31.567713, 35.391586, 43.204666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.732786, 36.236076, 42.916096>,  <31.178411, 35.965324, 43.300922>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.732786, 36.236076, 42.916096> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.729633, 35.849636, 42.812881>,  <31.727741, 35.617771, 42.750954>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.729633, 35.849636, 42.812881>,  <31.732786, 36.236076, 42.916096>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.729633, 35.849636, 42.812881> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310784, 0.242897, -0.918920,
		0.950448, -0.087437, 0.298335,
		-0.007883, -0.966103, -0.258035,
		31.727268, 35.559807, 42.735470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.342781, 36.161453, 42.535496>,  <31.732786, 36.236076, 42.916096>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.342781, 36.161453, 42.535496> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.125332, 35.841015, 42.435322>,  <31.994862, 35.648750, 42.375217>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.125332, 35.841015, 42.435322>,  <32.342781, 36.161453, 42.535496>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.125332, 35.841015, 42.435322> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340250, 0.062421, -0.938261,
		0.767270, -0.595272, 0.238639,
		-0.543625, -0.801096, -0.250435,
		31.962244, 35.600685, 42.360191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.785236, 35.724041, 42.163387>,  <32.342781, 36.161453, 42.535496>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.785236, 35.724041, 42.163387> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.415573, 35.622017, 42.049637>,  <32.193775, 35.560802, 41.981388>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.415573, 35.622017, 42.049637>,  <32.785236, 35.724041, 42.163387>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.415573, 35.622017, 42.049637> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291951, 0.008497, -0.956396,
		0.246353, -0.966888, 0.066612,
		-0.924162, -0.255059, -0.284377,
		32.138325, 35.545498, 41.964325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.838043, 35.136372, 41.745781>,  <32.785236, 35.724041, 42.163387>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.838043, 35.136372, 41.745781> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.478348, 35.290241, 41.662457>,  <32.262531, 35.382565, 41.612461>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.478348, 35.290241, 41.662457>,  <32.838043, 35.136372, 41.745781>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.478348, 35.290241, 41.662457> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253838, 0.071009, -0.964637,
		-0.356279, -0.920317, -0.161499,
		-0.899239, 0.384674, -0.208313,
		32.208576, 35.405643, 41.599964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.548447, 34.692295, 41.233875>,  <32.838043, 35.136372, 41.745781>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.548447, 34.692295, 41.233875> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.375462, 35.051945, 41.206898>,  <32.271671, 35.267735, 41.190712>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.375462, 35.051945, 41.206898>,  <32.548447, 34.692295, 41.233875>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.375462, 35.051945, 41.206898> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206189, 0.025799, -0.978172,
		-0.877762, -0.436926, -0.196547,
		-0.432459, 0.899128, -0.067444,
		32.245724, 35.321682, 41.186665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.189522, 34.689625, 40.502533>,  <32.548447, 34.692295, 41.233875>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.189522, 34.689625, 40.502533> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.245232, 35.062027, 40.637486>,  <32.278660, 35.285469, 40.718456>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.245232, 35.062027, 40.637486>,  <32.189522, 34.689625, 40.502533>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.245232, 35.062027, 40.637486> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253198, 0.295893, -0.921053,
		-0.957336, 0.213707, -0.194517,
		0.139279, 0.931008, 0.337380,
		32.287014, 35.341328, 40.738701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.777786, 35.142708, 40.045105>,  <32.189522, 34.689625, 40.502533>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.777786, 35.142708, 40.045105> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.037331, 35.396500, 40.213116>,  <32.193058, 35.548775, 40.313923>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.037331, 35.396500, 40.213116>,  <31.777786, 35.142708, 40.045105>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.037331, 35.396500, 40.213116> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361904, 0.228234, -0.903844,
		-0.669333, 0.738476, -0.081528,
		0.648860, 0.634478, 0.420022,
		32.231987, 35.586842, 40.339123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.805452, 35.560829, 39.589386>,  <31.777786, 35.142708, 40.045105>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.805452, 35.560829, 39.589386> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.131649, 35.683140, 39.785946>,  <32.327366, 35.756527, 39.903881>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.131649, 35.683140, 39.785946>,  <31.805452, 35.560829, 39.589386>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.131649, 35.683140, 39.785946> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349862, 0.415917, -0.839410,
		-0.461051, 0.856455, 0.232199,
		0.815493, 0.305773, 0.491400,
		32.376297, 35.774872, 39.933365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.980959, 36.274017, 39.376190>,  <31.805452, 35.560829, 39.589386>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.980959, 36.274017, 39.376190> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.312923, 36.132927, 39.549084>,  <32.512104, 36.048271, 39.652821>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.312923, 36.132927, 39.549084>,  <31.980959, 36.274017, 39.376190>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.312923, 36.132927, 39.549084> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551499, 0.401720, -0.731075,
		0.084231, 0.845106, 0.527921,
		0.829912, -0.352727, 0.432238,
		32.561897, 36.027107, 39.678757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.500843, 36.804180, 39.356529>,  <31.980959, 36.274017, 39.376190>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.500843, 36.804180, 39.356529> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.726002, 36.475166, 39.389011>,  <32.861095, 36.277760, 39.408501>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.726002, 36.475166, 39.389011>,  <32.500843, 36.804180, 39.356529>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.726002, 36.475166, 39.389011> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610934, 0.347880, -0.711153,
		0.556695, 0.449915, 0.698331,
		0.562894, -0.822530, 0.081206,
		32.894871, 36.228409, 39.413372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.201164, 36.976196, 39.289726>,  <32.500843, 36.804180, 39.356529>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.201164, 36.976196, 39.289726> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.217808, 36.591206, 39.182468>,  <33.227795, 36.360210, 39.118114>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.217808, 36.591206, 39.182468>,  <33.201164, 36.976196, 39.289726>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.217808, 36.591206, 39.182468> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.721006, 0.214717, -0.658822,
		0.691678, -0.165919, 0.702889,
		0.041611, -0.962480, -0.268144,
		33.230289, 36.302460, 39.102024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.837502, 36.865654, 39.062435>,  <33.201164, 36.976196, 39.289726>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.837502, 36.865654, 39.062435> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.669582, 36.527225, 38.931019>,  <33.568832, 36.324169, 38.852169>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.669582, 36.527225, 38.931019>,  <33.837502, 36.865654, 39.062435>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.669582, 36.527225, 38.931019> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.675367, -0.049365, -0.735827,
		0.606341, -0.530786, 0.592129,
		-0.419797, -0.846067, -0.328544,
		33.543644, 36.273407, 38.832455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.417595, 36.500656, 38.841698>,  <33.837502, 36.865654, 39.062435>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.417595, 36.500656, 38.841698> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.092175, 36.340992, 38.672554>,  <33.896923, 36.245193, 38.571068>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.092175, 36.340992, 38.672554>,  <34.417595, 36.500656, 38.841698>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.092175, 36.340992, 38.672554> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423852, 0.090792, -0.901169,
		0.398100, -0.912376, 0.095320,
		-0.813551, -0.399157, -0.422857,
		33.848110, 36.221245, 38.545696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.656212, 35.898129, 38.476494>,  <34.417595, 36.500656, 38.841698>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.656212, 35.898129, 38.476494> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.310020, 36.035419, 38.330544>,  <34.102306, 36.117794, 38.242973>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.310020, 36.035419, 38.330544>,  <34.656212, 35.898129, 38.476494>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.310020, 36.035419, 38.330544> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441501, 0.178491, -0.879328,
		-0.236686, -0.922135, -0.306018,
		-0.865481, 0.343232, -0.364878,
		34.050377, 36.138390, 38.221081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.215061, 36.101799, 37.985966>,  <34.656212, 35.898129, 38.476494>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.215061, 36.101799, 37.985966> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.583031, 36.122463, 38.141438>,  <35.803814, 36.134861, 38.234722>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.583031, 36.122463, 38.141438>,  <35.215061, 36.101799, 37.985966>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.583031, 36.122463, 38.141438> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298972, -0.548942, 0.780563,
		0.253690, -0.834262, -0.489539,
		0.919922, 0.051663, 0.388682,
		35.859009, 36.137962, 38.258041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.213066, 35.467045, 38.262070>,  <35.215061, 36.101799, 37.985966>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.213066, 35.467045, 38.262070> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.507450, 35.676270, 38.434006>,  <35.684082, 35.801804, 38.537167>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.507450, 35.676270, 38.434006>,  <35.213066, 35.467045, 38.262070>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.507450, 35.676270, 38.434006> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247097, -0.383575, 0.889839,
		0.630320, -0.761100, -0.153048,
		0.735961, 0.523066, 0.429840,
		35.728237, 35.833191, 38.562958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.588379, 35.036037, 38.738899>,  <35.213066, 35.467045, 38.262070>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.588379, 35.036037, 38.738899> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.700333, 35.404892, 38.845734>,  <35.767506, 35.626205, 38.909836>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.700333, 35.404892, 38.845734>,  <35.588379, 35.036037, 38.738899>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.700333, 35.404892, 38.845734> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014559, -0.282254, 0.959229,
		0.959923, -0.264584, -0.092424,
		0.279884, 0.922132, 0.267090,
		35.784298, 35.681530, 38.925861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.254131, 34.963928, 39.093910>,  <35.588379, 35.036037, 38.738899>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.254131, 34.963928, 39.093910> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.076263, 35.294010, 39.233227>,  <35.969543, 35.492058, 39.316818>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.076263, 35.294010, 39.233227>,  <36.254131, 34.963928, 39.093910>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.076263, 35.294010, 39.233227> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055680, -0.413565, 0.908770,
		0.893962, 0.384710, 0.229848,
		-0.444670, 0.825204, 0.348291,
		35.942863, 35.541573, 39.337715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.488373, 35.084888, 39.767162>,  <36.254131, 34.963928, 39.093910>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.488373, 35.084888, 39.767162> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.165596, 35.321018, 39.759491>,  <35.971931, 35.462696, 39.754887>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.165596, 35.321018, 39.759491>,  <36.488373, 35.084888, 39.767162>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.165596, 35.321018, 39.759491> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215546, -0.264096, 0.940103,
		0.549897, 0.762741, 0.340352,
		-0.806940, 0.590321, -0.019180,
		35.923515, 35.498116, 39.753738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.581146, 35.428478, 40.408268>,  <36.488373, 35.084888, 39.767162>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.581146, 35.428478, 40.408268> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.195362, 35.468220, 40.310333>,  <35.963890, 35.492065, 40.251572>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.195362, 35.468220, 40.310333>,  <36.581146, 35.428478, 40.408268>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.195362, 35.468220, 40.310333> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264202, -0.350660, 0.898463,
		0.003408, 0.931218, 0.364446,
		-0.964461, 0.099349, -0.244835,
		35.906025, 35.498024, 40.236881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.267178, 35.728634, 40.926041>,  <36.581146, 35.428478, 40.408268>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.267178, 35.728634, 40.926041> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.951092, 35.560204, 40.747936>,  <35.761440, 35.459145, 40.641075>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.951092, 35.560204, 40.747936>,  <36.267178, 35.728634, 40.926041>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.951092, 35.560204, 40.747936> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324366, -0.329064, 0.886851,
		-0.519946, 0.845232, 0.123451,
		-0.790217, -0.421071, -0.445259,
		35.714027, 35.433884, 40.614357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.664799, 35.908447, 41.315144>,  <36.267178, 35.728634, 40.926041>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.664799, 35.908447, 41.315144> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.552979, 35.584900, 41.108231>,  <35.485886, 35.390770, 40.984081>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.552979, 35.584900, 41.108231>,  <35.664799, 35.908447, 41.315144>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.552979, 35.584900, 41.108231> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456506, -0.361991, 0.812752,
		-0.844661, 0.463349, -0.268058,
		-0.279553, -0.808870, -0.517281,
		35.469112, 35.342239, 40.953045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.076504, 35.660160, 41.693405>,  <35.664799, 35.908447, 41.315144>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.076504, 35.660160, 41.693405> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.148911, 35.351864, 41.449047>,  <35.192356, 35.166885, 41.302433>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.148911, 35.351864, 41.449047>,  <35.076504, 35.660160, 41.693405>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.148911, 35.351864, 41.449047> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467374, -0.613948, 0.636105,
		-0.865329, 0.170369, -0.471360,
		0.181018, -0.770741, -0.610893,
		35.203217, 35.120640, 41.265778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.467762, 35.390842, 41.446457>,  <35.076504, 35.660160, 41.693405>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.467762, 35.390842, 41.446457> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.744858, 35.102528, 41.436844>,  <34.911114, 34.929539, 41.431076>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.744858, 35.102528, 41.436844>,  <34.467762, 35.390842, 41.446457>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.744858, 35.102528, 41.436844> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467315, -0.474014, 0.746276,
		-0.549298, -0.505744, -0.665203,
		0.692740, -0.720787, -0.024033,
		34.952679, 34.886292, 41.429634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.066776, 34.794346, 41.524574>,  <34.467762, 35.390842, 41.446457>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.066776, 34.794346, 41.524574> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.447487, 34.688663, 41.586952>,  <34.675915, 34.625256, 41.624378>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.447487, 34.688663, 41.586952>,  <34.066776, 34.794346, 41.524574>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.447487, 34.688663, 41.586952> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275073, -0.509788, 0.815138,
		-0.135863, -0.818726, -0.557880,
		0.951775, -0.264205, 0.155947,
		34.733021, 34.609402, 41.633736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.847359, 34.185806, 41.624752>,  <34.066776, 34.794346, 41.524574>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.847359, 34.185806, 41.624752> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.210419, 34.241505, 41.783138>,  <34.428253, 34.274925, 41.878170>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.210419, 34.241505, 41.783138>,  <33.847359, 34.185806, 41.624752>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.210419, 34.241505, 41.783138> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295043, -0.459330, 0.837834,
		0.298544, -0.877283, -0.375826,
		0.907646, 0.139245, 0.395967,
		34.482712, 34.283279, 41.901928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.991325, 33.526066, 41.929031>,  <33.847359, 34.185806, 41.624752>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.991325, 33.526066, 41.929031> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.207428, 33.802414, 42.121208>,  <34.337090, 33.968224, 42.236515>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.207428, 33.802414, 42.121208>,  <33.991325, 33.526066, 41.929031>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.207428, 33.802414, 42.121208> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345491, -0.338495, 0.875247,
		0.767307, -0.638846, 0.055815,
		0.540255, 0.690867, 0.480445,
		34.369503, 34.009674, 42.265343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.268059, 33.182545, 42.405865>,  <33.991325, 33.526066, 41.929031>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.268059, 33.182545, 42.405865> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.297039, 33.551754, 42.557011>,  <34.314426, 33.773281, 42.647697>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.297039, 33.551754, 42.557011>,  <34.268059, 33.182545, 42.405865>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.297039, 33.551754, 42.557011> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199169, -0.357835, 0.912297,
		0.977283, -0.141358, 0.157911,
		0.072454, 0.923023, 0.377861,
		34.318775, 33.828659, 42.670368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.638554, 33.101631, 42.980209>,  <34.268059, 33.182545, 42.405865>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.638554, 33.101631, 42.980209> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.462864, 33.458191, 43.024902>,  <34.357452, 33.672127, 43.051720>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.462864, 33.458191, 43.024902>,  <34.638554, 33.101631, 42.980209>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.462864, 33.458191, 43.024902> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265597, -0.247655, 0.931732,
		0.858220, 0.379562, 0.345529,
		-0.439222, 0.891403, 0.111732,
		34.331097, 33.725613, 43.058422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.935066, 33.361088, 43.537350>,  <34.638554, 33.101631, 42.980209>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.935066, 33.361088, 43.537350> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.601086, 33.579624, 43.510944>,  <34.400696, 33.710747, 43.495102>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.601086, 33.579624, 43.510944>,  <34.935066, 33.361088, 43.537350>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.601086, 33.579624, 43.510944> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246381, -0.263847, 0.932567,
		0.492082, 0.794918, 0.354909,
		-0.834956, 0.546342, -0.066018,
		34.350597, 33.743526, 43.491138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.932335, 33.715252, 44.210331>,  <34.935066, 33.361088, 43.537350>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.932335, 33.715252, 44.210331> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.566299, 33.758221, 44.054859>,  <34.346680, 33.784000, 43.961575>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.566299, 33.758221, 44.054859>,  <34.932335, 33.715252, 44.210331>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.566299, 33.758221, 44.054859> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401238, -0.338734, 0.851039,
		-0.040239, 0.934730, 0.353073,
		-0.915089, 0.107421, -0.388680,
		34.291771, 33.790447, 43.938255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.582306, 33.950535, 44.754818>,  <34.932335, 33.715252, 44.210331>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.582306, 33.950535, 44.754818> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.300297, 33.817768, 44.504131>,  <34.131092, 33.738110, 44.353718>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.300297, 33.817768, 44.504131>,  <34.582306, 33.950535, 44.754818>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.300297, 33.817768, 44.504131> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494036, -0.404144, 0.769803,
		-0.508794, 0.852349, 0.120952,
		-0.705023, -0.331916, -0.626717,
		34.088791, 33.718193, 44.316116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<33.993984, 33.808113, 45.165764> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.885071, 33.584888, 44.852222>,  <33.819721, 33.450954, 44.664097>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.885071, 33.584888, 44.852222>,  <33.993984, 33.808113, 45.165764>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.885071, 33.584888, 44.852222> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447391, -0.647800, 0.616601,
		-0.851882, 0.518581, -0.073285,
		-0.272283, -0.558059, -0.783857,
		33.803387, 33.417469, 44.617065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.254627, 33.750549, 45.210037>,  <33.993984, 33.808113, 45.165764>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.254627, 33.750549, 45.210037> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.410641, 33.458141, 44.986080>,  <33.504250, 33.282696, 44.851704>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.410641, 33.458141, 44.986080>,  <33.254627, 33.750549, 45.210037>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.410641, 33.458141, 44.986080> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509073, -0.677862, 0.530421,
		-0.767282, 0.078148, -0.636530,
		0.390029, -0.731024, -0.559895,
		33.527649, 33.238834, 44.818111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.730042, 33.315025, 44.922371>,  <33.254627, 33.750549, 45.210037>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.730042, 33.315025, 44.922371> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.044796, 33.068768, 44.905430>,  <33.233646, 32.921013, 44.895267>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.044796, 33.068768, 44.905430>,  <32.730042, 33.315025, 44.922371>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.044796, 33.068768, 44.905430> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535953, -0.715816, 0.447618,
		-0.305887, -0.329527, -0.893221,
		0.786884, -0.615645, -0.042348,
		33.280861, 32.884075, 44.892727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.320694, 32.636810, 44.861389>,  <32.730042, 33.315025, 44.922371>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.320694, 32.636810, 44.861389> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.701115, 32.576263, 44.969162>,  <32.929367, 32.539936, 45.033825>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.701115, 32.576263, 44.969162>,  <32.320694, 32.636810, 44.861389>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.701115, 32.576263, 44.969162> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273569, -0.817894, 0.506171,
		0.143748, -0.555102, -0.819267,
		0.951050, -0.151365, 0.269429,
		32.986431, 32.530853, 45.049992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.437969, 31.809080, 44.960678>,  <32.320694, 32.636810, 44.861389>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.437969, 31.809080, 44.960678> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.706123, 32.033497, 45.154922>,  <32.867016, 32.168148, 45.271469>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.706123, 32.033497, 45.154922>,  <32.437969, 31.809080, 44.960678>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.706123, 32.033497, 45.154922> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280061, -0.414737, 0.865771,
		0.687135, -0.716399, -0.120906,
		0.670382, 0.561040, 0.485616,
		32.907238, 32.201809, 45.300606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.842312, 31.318584, 45.414387>,  <32.437969, 31.809080, 44.960678>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.842312, 31.318584, 45.414387> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.914215, 31.677982, 45.574585>,  <32.957355, 31.893621, 45.670704>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.914215, 31.677982, 45.574585>,  <32.842312, 31.318584, 45.414387>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.914215, 31.677982, 45.574585> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303621, -0.336577, 0.891364,
		0.935683, -0.281826, 0.212300,
		0.179754, 0.898493, 0.400498,
		32.968140, 31.947531, 45.694733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.329243, 31.159145, 45.952900>,  <32.842312, 31.318584, 45.414387>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.329243, 31.159145, 45.952900> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.217190, 31.528528, 46.057781>,  <33.149960, 31.750158, 46.120712>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.217190, 31.528528, 46.057781>,  <33.329243, 31.159145, 45.952900>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.217190, 31.528528, 46.057781> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239439, -0.331725, 0.912484,
		0.929621, 0.192832, 0.314038,
		-0.280130, 0.923458, 0.262207,
		33.133152, 31.805565, 46.136444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.540936, 31.343428, 46.613541>,  <33.329243, 31.159145, 45.952900>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.540936, 31.343428, 46.613541> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.241238, 31.605860, 46.577343>,  <33.061420, 31.763319, 46.555622>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.241238, 31.605860, 46.577343>,  <33.540936, 31.343428, 46.613541>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.241238, 31.605860, 46.577343> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244414, -0.146914, 0.958477,
		0.615543, 0.740253, 0.270430,
		-0.749245, 0.656080, -0.090497,
		33.016464, 31.802685, 46.550194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.660324, 31.798067, 47.100597>,  <33.540936, 31.343428, 46.613541>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.660324, 31.798067, 47.100597> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.271801, 31.805218, 47.005737>,  <33.038689, 31.809507, 46.948822>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.271801, 31.805218, 47.005737>,  <33.660324, 31.798067, 47.100597>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.271801, 31.805218, 47.005737> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237348, -0.136063, 0.961849,
		-0.015073, 0.990539, 0.136402,
		-0.971308, 0.017876, -0.237153,
		32.980408, 31.810581, 46.934589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.311977, 32.121723, 47.547630>,  <33.660324, 31.798067, 47.100597>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.311977, 32.121723, 47.547630> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.011089, 31.912027, 47.387959>,  <32.830559, 31.786211, 47.292156>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.011089, 31.912027, 47.387959>,  <33.311977, 32.121723, 47.547630>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.011089, 31.912027, 47.387959> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309296, -0.253997, 0.916418,
		-0.581810, 0.812810, 0.028917,
		-0.752218, -0.524237, -0.399177,
		32.785423, 31.754757, 47.268204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.791073, 32.222935, 48.000614>,  <33.311977, 32.121723, 47.547630>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.791073, 32.222935, 48.000614> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.669159, 31.904310, 47.791771>,  <32.596008, 31.713137, 47.666466>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.669159, 31.904310, 47.791771>,  <32.791073, 32.222935, 48.000614>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.669159, 31.904310, 47.791771> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362532, -0.409897, 0.836992,
		-0.880724, 0.444388, -0.163845,
		-0.304789, -0.796558, -0.522110,
		32.577721, 31.665342, 47.635139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.083702, 32.197777, 48.242680>,  <32.791073, 32.222935, 48.000614>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.083702, 32.197777, 48.242680> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.219425, 31.855228, 48.086987>,  <32.300861, 31.649700, 47.993572>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.219425, 31.855228, 48.086987>,  <32.083702, 32.197777, 48.242680>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.219425, 31.855228, 48.086987> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451909, -0.511299, 0.730994,
		-0.825014, -0.072136, -0.560489,
		0.339309, -0.856370, -0.389230,
		32.321217, 31.598318, 47.970219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.576202, 31.813107, 48.465149>,  <32.083702, 32.197777, 48.242680>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.576202, 31.813107, 48.465149> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.881155, 31.565174, 48.390766>,  <32.064125, 31.416414, 48.346138>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.881155, 31.565174, 48.390766>,  <31.576202, 31.813107, 48.465149>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.881155, 31.565174, 48.390766> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322119, -0.612713, 0.721680,
		-0.561257, -0.490298, -0.666782,
		0.762384, -0.619831, -0.185956,
		32.109871, 31.379225, 48.334980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.291561, 31.137295, 48.508350>,  <31.576202, 31.813107, 48.465149>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.291561, 31.137295, 48.508350> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.688545, 31.107735, 48.547466>,  <31.926735, 31.089998, 48.570934>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.688545, 31.107735, 48.547466>,  <31.291561, 31.137295, 48.508350>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.688545, 31.107735, 48.547466> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122129, -0.528517, 0.840092,
		-0.010401, -0.845700, -0.533557,
		0.992460, -0.073901, 0.097787,
		31.986282, 31.085564, 48.576801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.418135, 30.480833, 48.489697>,  <31.291561, 31.137295, 48.508350>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.418135, 30.480833, 48.489697> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.729710, 30.647606, 48.677067>,  <31.916655, 30.747669, 48.789490>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.729710, 30.647606, 48.677067>,  <31.418135, 30.480833, 48.489697>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.729710, 30.647606, 48.677067> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174528, -0.573325, 0.800524,
		0.602324, -0.705313, -0.373819,
		0.778939, 0.416932, 0.468424,
		31.963392, 30.772686, 48.817593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.712093, 29.928837, 48.857990>,  <31.418135, 30.480833, 48.489697>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.712093, 29.928837, 48.857990> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.902639, 30.227442, 49.043808>,  <32.016968, 30.406605, 49.155296>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.902639, 30.227442, 49.043808>,  <31.712093, 29.928837, 48.857990>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.902639, 30.227442, 49.043808> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098688, -0.479604, 0.871918,
		0.873693, -0.461194, -0.154794,
		0.476363, 0.746512, 0.464541,
		32.045547, 30.451395, 49.183170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.348118, 29.659208, 49.229870>,  <31.712093, 29.928837, 48.857990>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.348118, 29.659208, 49.229870> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.219810, 29.996756, 49.401913>,  <32.142826, 30.199284, 49.505138>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.219810, 29.996756, 49.401913>,  <32.348118, 29.659208, 49.229870>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.219810, 29.996756, 49.401913> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137256, -0.490721, 0.860438,
		0.937159, 0.216970, 0.273236,
		-0.320771, 0.843870, 0.430103,
		32.123581, 30.249916, 49.530945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.609825, 29.650331, 49.847355>,  <32.348118, 29.659208, 49.229870>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.609825, 29.650331, 49.847355> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.357765, 29.953588, 49.914436>,  <32.206528, 30.135542, 49.954685>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.357765, 29.953588, 49.914436>,  <32.609825, 29.650331, 49.847355>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.357765, 29.953588, 49.914436> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324150, -0.453123, 0.830426,
		0.705573, 0.468934, 0.531289,
		-0.630154, 0.758143, 0.167706,
		32.168720, 30.181032, 49.964748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.637524, 30.043037, 50.566917>,  <32.609825, 29.650331, 49.847355>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.637524, 30.043037, 50.566917> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.264915, 30.092178, 50.429989>,  <32.041351, 30.121662, 50.347832>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.264915, 30.092178, 50.429989>,  <32.637524, 30.043037, 50.566917>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.264915, 30.092178, 50.429989> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363358, -0.355239, 0.861264,
		-0.015799, 0.926667, 0.375550,
		-0.931516, 0.122852, -0.342324,
		31.985460, 30.129034, 50.327293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.159115, 30.405197, 51.076965>,  <32.637524, 30.043037, 50.566917>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.159115, 30.405197, 51.076965> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.907486, 30.200314, 50.843075>,  <31.756508, 30.077383, 50.702740>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.907486, 30.200314, 50.843075>,  <32.159115, 30.405197, 51.076965>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.907486, 30.200314, 50.843075> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455453, -0.366714, 0.811223,
		-0.629944, 0.776636, -0.002596,
		-0.629073, -0.512208, -0.584731,
		31.718763, 30.046652, 50.667656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.492886, 30.397108, 51.464031>,  <32.159115, 30.405197, 51.076965>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.492886, 30.397108, 51.464031> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.428082, 30.125525, 51.177601>,  <31.389198, 29.962574, 51.005741>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.428082, 30.125525, 51.177601>,  <31.492886, 30.397108, 51.464031>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.428082, 30.125525, 51.177601> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.657452, -0.466877, 0.591424,
		-0.735874, 0.566602, -0.370746,
		-0.162010, -0.678961, -0.716076,
		31.379478, 29.921837, 50.962780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.726475, 30.306723, 51.352203>,  <31.492886, 30.397108, 51.464031>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.726475, 30.306723, 51.352203> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.908262, 29.962198, 51.261337>,  <31.017334, 29.755484, 51.206818>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.908262, 29.962198, 51.261337>,  <30.726475, 30.306723, 51.352203>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.908262, 29.962198, 51.261337> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.646737, -0.494418, 0.580760,
		-0.612528, -0.117021, -0.781739,
		0.454467, -0.861311, -0.227163,
		31.044601, 29.703804, 51.193188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.282877, 29.918505, 51.745617>,  <30.726475, 30.306723, 51.352203>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.282877, 29.918505, 51.745617> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.477692, 29.615662, 51.571453>,  <30.594582, 29.433956, 51.466953>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.477692, 29.615662, 51.571453>,  <30.282877, 29.918505, 51.745617>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.477692, 29.615662, 51.571453> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.622864, -0.650570, 0.434510,
		-0.612237, 0.059580, -0.788426,
		0.487038, -0.757106, -0.435413,
		30.623802, 29.388531, 51.440830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.807098, 29.457037, 51.450932>,  <30.282877, 29.918505, 51.745617>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.807098, 29.457037, 51.450932> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.134754, 29.242159, 51.531361>,  <30.331348, 29.113232, 51.579620>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.134754, 29.242159, 51.531361>,  <29.807098, 29.457037, 51.450932>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.134754, 29.242159, 51.531361> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569326, -0.718779, 0.399030,
		-0.069828, -0.441339, -0.894619,
		0.819141, -0.537194, 0.201075,
		30.380497, 29.081001, 51.591682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.085711, 29.519014, 51.829075>,  <29.807098, 29.457037, 51.450932>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.085711, 29.519014, 51.829075> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.712034, 29.639610, 51.752769>,  <28.487829, 29.711967, 51.706985>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.712034, 29.639610, 51.752769>,  <29.085711, 29.519014, 51.829075>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.712034, 29.639610, 51.752769> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234852, 0.117154, -0.964945,
		-0.268573, -0.946244, -0.180250,
		-0.934191, 0.301490, -0.190763,
		28.431776, 29.730057, 51.695541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.917521, 29.197203, 51.204536>,  <29.085711, 29.519014, 51.829075>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.917521, 29.197203, 51.204536> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.662212, 29.503891, 51.232117>,  <28.509027, 29.687904, 51.248665>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.662212, 29.503891, 51.232117>,  <28.917521, 29.197203, 51.204536>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.662212, 29.503891, 51.232117> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175483, 0.232117, -0.956728,
		-0.749546, -0.598550, -0.282699,
		-0.638269, 0.766720, 0.068947,
		28.470732, 29.733908, 51.252800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.533287, 29.155554, 50.533520>,  <28.917521, 29.197203, 51.204536>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.533287, 29.155554, 50.533520> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.506260, 29.527323, 50.678631>,  <28.490044, 29.750383, 50.765697>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.506260, 29.527323, 50.678631>,  <28.533287, 29.155554, 50.533520>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.506260, 29.527323, 50.678631> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229367, 0.368343, -0.900952,
		-0.970992, 0.022337, -0.238066,
		-0.067566, 0.929421, 0.362782,
		28.485991, 29.806149, 50.787464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.147190, 29.495743, 50.030273>,  <28.533287, 29.155554, 50.533520>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.147190, 29.495743, 50.030273> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.354609, 29.767614, 50.237793>,  <28.479059, 29.930737, 50.362305>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.354609, 29.767614, 50.237793>,  <28.147190, 29.495743, 50.030273>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.354609, 29.767614, 50.237793> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286241, 0.433748, -0.854359,
		-0.805714, 0.591526, 0.030367,
		0.518547, 0.679677, 0.518795,
		28.510172, 29.971518, 50.393433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.027218, 30.111643, 49.710590>,  <28.147190, 29.495743, 50.030273>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.027218, 30.111643, 49.710590> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.350775, 30.197378, 49.929588>,  <28.544909, 30.248819, 50.060989>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.350775, 30.197378, 49.929588>,  <28.027218, 30.111643, 49.710590>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.350775, 30.197378, 49.929588> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416505, 0.448359, -0.790884,
		-0.414994, 0.867774, 0.273400,
		0.808891, 0.214339, 0.547499,
		28.593441, 30.261681, 50.093838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.089930, 30.830294, 49.712566>,  <28.027218, 30.111643, 49.710590>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.089930, 30.830294, 49.712566> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.452541, 30.680557, 49.790615>,  <28.670109, 30.590715, 49.837444>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.452541, 30.680557, 49.790615>,  <28.089930, 30.830294, 49.712566>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.452541, 30.680557, 49.790615> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345882, 0.393688, -0.851690,
		0.242006, 0.839571, 0.486368,
		0.906531, -0.374340, 0.195117,
		28.724501, 30.568254, 49.849152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.536465, 31.406538, 49.723412>,  <28.089930, 30.830294, 49.712566>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.536465, 31.406538, 49.723412> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.796787, 31.102924, 49.716267>,  <28.952980, 30.920755, 49.711979>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.796787, 31.102924, 49.716267>,  <28.536465, 31.406538, 49.723412>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.796787, 31.102924, 49.716267> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372553, 0.339753, -0.863581,
		0.661556, 0.555369, 0.503894,
		0.650806, -0.759034, -0.017861,
		28.992029, 30.875214, 49.710907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.319023, 31.724691, 49.691422>,  <28.536465, 31.406538, 49.723412>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.319023, 31.724691, 49.691422> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.322197, 31.353275, 49.542965>,  <29.324102, 31.130426, 49.453892>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.322197, 31.353275, 49.542965>,  <29.319023, 31.724691, 49.691422>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.322197, 31.353275, 49.542965> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446314, 0.335426, -0.829634,
		0.894841, -0.159064, 0.417083,
		0.007936, -0.928541, -0.371146,
		29.324577, 31.074713, 49.431622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.048111, 31.421480, 49.578510>,  <29.319023, 31.724691, 49.691422>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.048111, 31.421480, 49.578510> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.805550, 31.232929, 49.322361>,  <29.660013, 31.119799, 49.168671>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.805550, 31.232929, 49.322361>,  <30.048111, 31.421480, 49.578510>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.805550, 31.232929, 49.322361> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522232, 0.371208, -0.767775,
		0.599624, -0.800005, 0.021067,
		-0.606403, -0.471378, -0.640373,
		29.623629, 31.091516, 49.130249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.466122, 31.048290, 49.062645>,  <30.048111, 31.421480, 49.578510>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.466122, 31.048290, 49.062645> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.103407, 31.085335, 48.898129>,  <29.885778, 31.107561, 48.799419>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.103407, 31.085335, 48.898129>,  <30.466122, 31.048290, 49.062645>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.103407, 31.085335, 48.898129> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419637, 0.291973, -0.859451,
		0.040490, -0.951932, -0.303622,
		-0.906789, 0.092612, -0.411287,
		29.831369, 31.113119, 48.774742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.515570, 30.769356, 48.363865>,  <30.466122, 31.048290, 49.062645>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.515570, 30.769356, 48.363865> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.183767, 30.991802, 48.343266>,  <29.984686, 31.125271, 48.330906>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.183767, 30.991802, 48.343266>,  <30.515570, 30.769356, 48.363865>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.183767, 30.991802, 48.343266> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313519, 0.387352, -0.866986,
		-0.462197, -0.735317, -0.495664,
		-0.829506, 0.556119, -0.051503,
		29.934916, 31.158638, 48.327816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.341227, 30.735262, 47.699669>,  <30.515570, 30.769356, 48.363865>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.341227, 30.735262, 47.699669> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.158941, 31.064266, 47.835789>,  <30.049570, 31.261669, 47.917461>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.158941, 31.064266, 47.835789>,  <30.341227, 30.735262, 47.699669>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.158941, 31.064266, 47.835789> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290048, 0.498649, -0.816836,
		-0.841545, -0.273540, -0.465808,
		-0.455712, 0.822512, 0.340296,
		30.022228, 31.311020, 47.937878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.985924, 31.045301, 47.095051>,  <30.341227, 30.735262, 47.699669>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.985924, 31.045301, 47.095051> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.975540, 31.356411, 47.346256>,  <29.969311, 31.543076, 47.496979>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.975540, 31.356411, 47.346256>,  <29.985924, 31.045301, 47.095051>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.975540, 31.356411, 47.346256> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220034, 0.617259, -0.755365,
		-0.975147, 0.118576, -0.187159,
		-0.025957, 0.777773, 0.628009,
		29.967752, 31.589743, 47.534660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.554499, 31.459759, 46.762714>,  <29.985924, 31.045301, 47.095051>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.554499, 31.459759, 46.762714> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.729019, 31.708860, 47.022503>,  <29.833731, 31.858322, 47.178375>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.729019, 31.708860, 47.022503>,  <29.554499, 31.459759, 46.762714>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.729019, 31.708860, 47.022503> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105201, 0.681544, -0.724176,
		-0.893630, 0.384284, 0.231844,
		0.436301, 0.622755, 0.649475,
		29.859909, 31.895687, 47.217346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.333941, 32.154224, 46.671410>,  <29.554499, 31.459759, 46.762714>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.333941, 32.154224, 46.671410> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.661091, 32.227379, 46.889633>,  <29.857382, 32.271271, 47.020565>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.661091, 32.227379, 46.889633>,  <29.333941, 32.154224, 46.671410>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.661091, 32.227379, 46.889633> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211743, 0.785942, -0.580912,
		-0.535019, 0.590632, 0.604077,
		0.817875, 0.182889, 0.545556,
		29.906454, 32.282246, 47.053299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.367641, 32.867584, 46.758640>,  <29.333941, 32.154224, 46.671410>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.367641, 32.867584, 46.758640> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.742729, 32.741142, 46.816269>,  <29.967783, 32.665276, 46.850845>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.742729, 32.741142, 46.816269>,  <29.367641, 32.867584, 46.758640>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.742729, 32.741142, 46.816269> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347323, 0.845074, -0.406469,
		0.006733, 0.431195, 0.902234,
		0.937721, -0.316104, 0.144074,
		30.024046, 32.646313, 46.859489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.805725, 33.464764, 46.910984>,  <29.367641, 32.867584, 46.758640>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.805725, 33.464764, 46.910984> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.067942, 33.193005, 46.779114>,  <30.225271, 33.029949, 46.699993>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.067942, 33.193005, 46.779114>,  <29.805725, 33.464764, 46.910984>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.067942, 33.193005, 46.779114> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587919, 0.733147, -0.341829,
		0.473939, 0.030260, 0.880038,
		0.655540, -0.679397, -0.329677,
		30.264605, 32.989185, 46.680210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.434319, 33.887764, 46.969856>,  <29.805725, 33.464764, 46.910984>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.434319, 33.887764, 46.969856> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.515869, 33.580063, 46.727638>,  <30.564798, 33.395443, 46.582310>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.515869, 33.580063, 46.727638>,  <30.434319, 33.887764, 46.969856>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.515869, 33.580063, 46.727638> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514155, 0.610497, -0.602444,
		0.833114, -0.188519, 0.519982,
		0.203875, -0.769256, -0.605541,
		30.577032, 33.349285, 46.545975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.068771, 34.148457, 46.747524>,  <30.434319, 33.887764, 46.969856>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.068771, 34.148457, 46.747524> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.984430, 33.859222, 46.484409>,  <30.933825, 33.685680, 46.326542>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.984430, 33.859222, 46.484409>,  <31.068771, 34.148457, 46.747524>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.984430, 33.859222, 46.484409> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453172, 0.523928, -0.721203,
		0.866127, -0.450159, 0.217211,
		-0.210853, -0.723088, -0.657788,
		30.921175, 33.642296, 46.287071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.665970, 33.814377, 46.361477>,  <31.068771, 34.148457, 46.747524>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.665970, 33.814377, 46.361477> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.341211, 33.779091, 46.130638>,  <31.146357, 33.757919, 45.992134>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.341211, 33.779091, 46.130638>,  <31.665970, 33.814377, 46.361477>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.341211, 33.779091, 46.130638> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475429, 0.473781, -0.741281,
		0.338809, -0.876213, -0.342722,
		-0.811896, -0.088213, -0.577099,
		31.097643, 33.752628, 45.957508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<42.095078, 40.267792, 30.131878> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.745159, 40.392483, 30.280231>,  <41.535210, 40.467300, 30.369244>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.745159, 40.392483, 30.280231>,  <42.095078, 40.267792, 30.131878>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.745159, 40.392483, 30.280231> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347672, -0.129230, 0.928668,
		0.337425, 0.941341, 0.004670,
		-0.874796, 0.311732, 0.370884,
		41.482719, 40.486004, 30.391497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.247032, 40.622650, 30.707153>,  <42.095078, 40.267792, 30.131878>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.247032, 40.622650, 30.707153> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.872978, 40.490795, 30.759092>,  <41.648544, 40.411682, 30.790257>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.872978, 40.490795, 30.759092>,  <42.247032, 40.622650, 30.707153>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.872978, 40.490795, 30.759092> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188699, -0.153219, 0.970009,
		-0.299853, 0.931593, 0.205482,
		-0.935137, -0.329634, 0.129847,
		41.592438, 40.391903, 30.798046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.046932, 40.988594, 31.288452>,  <42.247032, 40.622650, 30.707153>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.046932, 40.988594, 31.288452> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.798954, 40.679493, 31.234016>,  <41.650169, 40.494030, 31.201355>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.798954, 40.679493, 31.234016>,  <42.046932, 40.988594, 31.288452>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.798954, 40.679493, 31.234016> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086871, -0.104775, 0.990694,
		-0.779824, 0.625995, -0.002175,
		-0.619942, -0.772756, -0.136087,
		41.612972, 40.447666, 31.193190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.493587, 41.112015, 31.801935>,  <42.046932, 40.988594, 31.288452>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.493587, 41.112015, 31.801935> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.445602, 40.725498, 31.710825>,  <41.416809, 40.493587, 31.656158>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.445602, 40.725498, 31.710825>,  <41.493587, 41.112015, 31.801935>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.445602, 40.725498, 31.710825> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023133, -0.226648, 0.973702,
		-0.992509, 0.122079, 0.004837,
		-0.119965, -0.966296, -0.227774,
		41.409615, 40.435608, 31.642492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.873703, 40.776928, 32.215717>,  <41.493587, 41.112015, 31.801935>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.873703, 40.776928, 32.215717> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.150009, 40.501633, 32.127026>,  <41.315792, 40.336456, 32.073811>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.150009, 40.501633, 32.127026>,  <40.873703, 40.776928, 32.215717>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.150009, 40.501633, 32.127026> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008480, -0.298917, 0.954241,
		-0.723027, -0.661039, -0.200646,
		0.690768, -0.688241, -0.221731,
		41.357239, 40.295162, 32.060505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.695679, 40.224945, 32.719257>,  <40.873703, 40.776928, 32.215717>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.695679, 40.224945, 32.719257> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.026497, 40.079891, 32.547451>,  <41.224987, 39.992859, 32.444366>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.026497, 40.079891, 32.547451>,  <40.695679, 40.224945, 32.719257>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.026497, 40.079891, 32.547451> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090735, -0.667947, 0.738656,
		-0.554757, -0.649878, -0.519522,
		0.827050, -0.362636, -0.429515,
		41.274612, 39.971100, 32.418598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.613750, 39.432446, 32.706726>,  <40.695679, 40.224945, 32.719257>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.613750, 39.432446, 32.706726> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.993626, 39.557217, 32.695423>,  <41.221550, 39.632080, 32.688641>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.993626, 39.557217, 32.695423>,  <40.613750, 39.432446, 32.706726>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.993626, 39.557217, 32.695423> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215584, -0.585559, 0.781438,
		0.227205, -0.748212, -0.623343,
		0.949685, 0.311929, -0.028261,
		41.278530, 39.650795, 32.686943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.988155, 38.754093, 32.600937>,  <40.613750, 39.432446, 32.706726>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.988155, 38.754093, 32.600937> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.240654, 39.021458, 32.758289>,  <41.392155, 39.181877, 32.852699>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.240654, 39.021458, 32.758289>,  <40.988155, 38.754093, 32.600937>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.240654, 39.021458, 32.758289> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181487, -0.620430, 0.762974,
		0.754045, -0.410234, -0.512955,
		0.631251, 0.668412, 0.393380,
		41.430031, 39.221981, 32.876305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.567532, 38.411724, 32.834850>,  <40.988155, 38.754093, 32.600937>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.567532, 38.411724, 32.834850> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.590614, 38.756340, 33.036613>,  <41.604465, 38.963108, 33.157669>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.590614, 38.756340, 33.036613>,  <41.567532, 38.411724, 32.834850>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.590614, 38.756340, 33.036613> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357000, -0.489646, 0.795486,
		0.932320, 0.134165, -0.335826,
		0.057709, 0.861537, 0.504404,
		41.607925, 39.014801, 33.187935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.280312, 38.436760, 33.085777>,  <41.567532, 38.411724, 32.834850>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.280312, 38.436760, 33.085777> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.047180, 38.675392, 33.306469>,  <41.907303, 38.818573, 33.438885>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.047180, 38.675392, 33.306469>,  <42.280312, 38.436760, 33.085777>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.047180, 38.675392, 33.306469> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448914, -0.329565, 0.830580,
		0.677338, 0.731763, -0.075733,
		-0.582829, 0.596581, 0.551726,
		41.872330, 38.854366, 33.471985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.698196, 38.768444, 33.682480>,  <42.280312, 38.436760, 33.085777>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.698196, 38.768444, 33.682480> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.314026, 38.793354, 33.791073>,  <42.083523, 38.808300, 33.856228>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.314026, 38.793354, 33.791073>,  <42.698196, 38.768444, 33.682480>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.314026, 38.793354, 33.791073> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230636, -0.368689, 0.900486,
		0.156173, 0.927464, 0.339735,
		-0.960425, 0.062277, 0.271486,
		42.025898, 38.812038, 33.872520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.801296, 38.851051, 34.420666>,  <42.698196, 38.768444, 33.682480>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.801296, 38.851051, 34.420666> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.417927, 38.748581, 34.370392>,  <42.187904, 38.687099, 34.340225>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.417927, 38.748581, 34.370392>,  <42.801296, 38.851051, 34.420666>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.417927, 38.748581, 34.370392> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010929, -0.407195, 0.913276,
		-0.285138, 0.876679, 0.387466,
		-0.958424, -0.256176, -0.125688,
		42.130398, 38.671730, 34.332684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.340115, 39.096176, 35.063816>,  <42.801296, 38.851051, 34.420666>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.340115, 39.096176, 35.063816> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.202904, 38.777905, 34.864124>,  <42.120575, 38.586941, 34.744308>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.202904, 38.777905, 34.864124>,  <42.340115, 39.096176, 35.063816>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.202904, 38.777905, 34.864124> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049882, -0.515297, 0.855558,
		-0.937999, 0.318384, 0.137073,
		-0.343030, -0.795676, -0.499230,
		42.099995, 38.539204, 34.714355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.891361, 38.820110, 35.511105>,  <42.340115, 39.096176, 35.063816>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.891361, 38.820110, 35.511105> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.933201, 38.523357, 35.246174>,  <41.958305, 38.345306, 35.087215>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.933201, 38.523357, 35.246174>,  <41.891361, 38.820110, 35.511105>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.933201, 38.523357, 35.246174> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189248, -0.668655, 0.719087,
		-0.976343, 0.050129, -0.210338,
		0.104597, -0.741881, -0.662323,
		41.964581, 38.300793, 35.047478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.375210, 38.265469, 35.729916>,  <41.891361, 38.820110, 35.511105>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.375210, 38.265469, 35.729916> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.611382, 38.049473, 35.489979>,  <41.753086, 37.919876, 35.346016>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.611382, 38.049473, 35.489979>,  <41.375210, 38.265469, 35.729916>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.611382, 38.049473, 35.489979> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218945, -0.822508, 0.524924,
		-0.776823, -0.178600, -0.603862,
		0.590432, -0.539985, -0.599839,
		41.788509, 37.887478, 35.310028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.967922, 37.649967, 35.499821>,  <41.375210, 38.265469, 35.729916>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.967922, 37.649967, 35.499821> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.353039, 37.551632, 35.454933>,  <41.584110, 37.492630, 35.428001>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.353039, 37.551632, 35.454933>,  <40.967922, 37.649967, 35.499821>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.353039, 37.551632, 35.454933> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167057, -0.867839, 0.467918,
		-0.212420, -0.431762, -0.876618,
		0.962793, -0.245840, -0.112217,
		41.641876, 37.477879, 35.421268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.959354, 37.021133, 35.201786>,  <40.967922, 37.649967, 35.499821>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.959354, 37.021133, 35.201786> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.307301, 37.069435, 35.393097>,  <41.516068, 37.098415, 35.507885>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.307301, 37.069435, 35.393097>,  <40.959354, 37.021133, 35.201786>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.307301, 37.069435, 35.393097> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193740, -0.808031, 0.556373,
		0.453651, -0.576631, -0.679483,
		0.869865, 0.120757, 0.478281,
		41.568260, 37.105663, 35.536583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.180439, 36.277451, 35.273727>,  <40.959354, 37.021133, 35.201786>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.180439, 36.277451, 35.273727> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.412312, 36.475876, 35.532307>,  <41.551437, 36.594929, 35.687454>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.412312, 36.475876, 35.532307>,  <41.180439, 36.277451, 35.273727>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.412312, 36.475876, 35.532307> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032873, -0.806930, 0.589732,
		0.814179, -0.320607, -0.484070,
		0.579683, 0.496060, 0.646446,
		41.586216, 36.624695, 35.726242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.810204, 35.912090, 35.337818>,  <41.180439, 36.277451, 35.273727>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.810204, 35.912090, 35.337818> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.796139, 36.121063, 35.678600>,  <41.787701, 36.246449, 35.883068>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.796139, 36.121063, 35.678600>,  <41.810204, 35.912090, 35.337818>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.796139, 36.121063, 35.678600> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418953, -0.766251, 0.487174,
		0.907327, 0.374060, -0.191930,
		-0.035166, 0.522436, 0.851953,
		41.785587, 36.277794, 35.934185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.418972, 35.648602, 35.776524>,  <41.810204, 35.912090, 35.337818>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.418972, 35.648602, 35.776524> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.170074, 35.833443, 36.029274>,  <42.020737, 35.944347, 36.180923>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.170074, 35.833443, 36.029274>,  <42.418972, 35.648602, 35.776524>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.170074, 35.833443, 36.029274> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203365, -0.684045, 0.700518,
		0.755947, 0.564395, 0.331667,
		-0.622243, 0.462105, 0.631880,
		41.983402, 35.972073, 36.218838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.842419, 35.683750, 36.476135>,  <42.418972, 35.648602, 35.776524>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.842419, 35.683750, 36.476135> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.458458, 35.745792, 36.569538>,  <42.228081, 35.783016, 36.625580>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.458458, 35.745792, 36.569538>,  <42.842419, 35.683750, 36.476135>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.458458, 35.745792, 36.569538> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099817, -0.589257, 0.801756,
		0.261950, 0.792918, 0.550149,
		-0.959905, 0.155106, 0.233503,
		42.170486, 35.792324, 36.639587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.499100, 35.612301, 36.060902>,  <42.842419, 35.683750, 36.476135>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.499100, 35.612301, 36.060902> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.856796, 35.444675, 35.998013>,  <44.071415, 35.344101, 35.960281>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.856796, 35.444675, 35.998013>,  <43.499100, 35.612301, 36.060902>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.856796, 35.444675, 35.998013> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195585, -0.049910, -0.979416,
		0.402592, 0.906583, -0.126595,
		0.894240, -0.419065, -0.157221,
		44.125069, 35.318954, 35.950848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.906170, 36.102978, 35.720585>,  <43.499100, 35.612301, 36.060902>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.906170, 36.102978, 35.720585> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.027592, 35.731316, 35.636189>,  <44.100445, 35.508316, 35.585548>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.027592, 35.731316, 35.636189>,  <43.906170, 36.102978, 35.720585>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.027592, 35.731316, 35.636189> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109286, 0.186028, -0.976448,
		0.946526, 0.319465, -0.045074,
		0.303555, -0.929159, -0.210993,
		44.118660, 35.452568, 35.572891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.409191, 36.168194, 35.252167>,  <43.906170, 36.102978, 35.720585>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.409191, 36.168194, 35.252167> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.313553, 35.782391, 35.207333>,  <44.256172, 35.550911, 35.180431>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.313553, 35.782391, 35.207333>,  <44.409191, 36.168194, 35.252167>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.313553, 35.782391, 35.207333> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191528, 0.066321, -0.979244,
		0.951920, -0.255596, 0.168873,
		-0.239091, -0.964506, -0.112086,
		44.241825, 35.493038, 35.173706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.997086, 35.895317, 34.919132>,  <44.409191, 36.168194, 35.252167>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.997086, 35.895317, 34.919132> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.689018, 35.653126, 34.838902>,  <44.504177, 35.507809, 34.790764>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.689018, 35.653126, 34.838902>,  <44.997086, 35.895317, 34.919132>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.689018, 35.653126, 34.838902> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171771, 0.105957, -0.979422,
		0.614275, -0.788774, 0.022400,
		-0.770170, -0.605482, -0.200575,
		44.457966, 35.471481, 34.778728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.257530, 35.420200, 34.392185>,  <44.997086, 35.895317, 34.919132>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.257530, 35.420200, 34.392185> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.858032, 35.400185, 34.391823>,  <44.618332, 35.388176, 34.391605>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.858032, 35.400185, 34.391823>,  <45.257530, 35.420200, 34.392185>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.858032, 35.400185, 34.391823> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002248, 0.062870, -0.998019,
		0.049981, -0.996767, -0.062903,
		-0.998748, -0.050023, -0.000901,
		44.558407, 35.385174, 34.391552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.996841, 35.005699, 33.838112>,  <45.257530, 35.420200, 34.392185>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.996841, 35.005699, 33.838112> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.653675, 35.191700, 33.925529>,  <44.447777, 35.303299, 33.977978>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.653675, 35.191700, 33.925529>,  <44.996841, 35.005699, 33.838112>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.653675, 35.191700, 33.925529> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036145, 0.369674, -0.928458,
		-0.512522, -0.804436, -0.300340,
		-0.857913, 0.464999, 0.218542,
		44.396301, 35.331200, 33.991093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.555180, 34.813831, 33.294827>,  <44.996841, 35.005699, 33.838112>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.555180, 34.813831, 33.294827> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.396034, 35.144672, 33.453621>,  <44.300549, 35.343178, 33.548897>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.396034, 35.144672, 33.453621>,  <44.555180, 34.813831, 33.294827>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.396034, 35.144672, 33.453621> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241680, 0.322941, -0.915041,
		-0.885041, -0.460004, 0.071409,
		-0.397862, 0.827106, 0.396990,
		44.276676, 35.392803, 33.572720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.888386, 34.883087, 32.933857>,  <44.555180, 34.813831, 33.294827>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.888386, 34.883087, 32.933857> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.953094, 35.250851, 33.077251>,  <43.991920, 35.471508, 33.163288>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.953094, 35.250851, 33.077251>,  <43.888386, 34.883087, 32.933857>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.953094, 35.250851, 33.077251> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159558, 0.382858, -0.909923,
		-0.973843, 0.090002, 0.208636,
		0.161773, 0.919412, 0.358483,
		44.001625, 35.526676, 33.184795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.248264, 35.329826, 32.732121>,  <43.888386, 34.883087, 32.933857>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.248264, 35.329826, 32.732121> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.528751, 35.589226, 32.850605>,  <43.697044, 35.744865, 32.921696>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.528751, 35.589226, 32.850605>,  <43.248264, 35.329826, 32.732121>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.528751, 35.589226, 32.850605> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126311, 0.521910, -0.843596,
		-0.701669, 0.554129, 0.447885,
		0.701217, 0.648499, 0.296216,
		43.739117, 35.783775, 32.939468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.047913, 35.979969, 32.592052>,  <43.248264, 35.329826, 32.732121>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.047913, 35.979969, 32.592052> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.438828, 36.062935, 32.609459>,  <43.673374, 36.112713, 32.619904>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.438828, 36.062935, 32.609459>,  <43.047913, 35.979969, 32.592052>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.438828, 36.062935, 32.609459> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107865, 0.663551, -0.740314,
		-0.182423, 0.718805, 0.670851,
		0.977285, 0.207412, 0.043513,
		43.732014, 36.125160, 32.622513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.080463, 36.704140, 32.625240>,  <43.047913, 35.979969, 32.592052>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.080463, 36.704140, 32.625240> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.420273, 36.534084, 32.500301>,  <43.624161, 36.432053, 32.425339>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.420273, 36.534084, 32.500301>,  <43.080463, 36.704140, 32.625240>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.420273, 36.534084, 32.500301> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058216, 0.512915, -0.856463,
		0.524326, 0.745771, 0.410984,
		0.849526, -0.425140, -0.312350,
		43.675129, 36.406544, 32.406597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.487808, 37.265488, 32.397961>,  <43.080463, 36.704140, 32.625240>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.487808, 37.265488, 32.397961> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.643406, 36.938324, 32.228390>,  <43.736767, 36.742027, 32.126648>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.643406, 36.938324, 32.228390>,  <43.487808, 37.265488, 32.397961>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.643406, 36.938324, 32.228390> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257759, 0.538419, -0.802288,
		0.884444, 0.202818, 0.420266,
		0.388998, -0.817906, -0.423923,
		43.760105, 36.692951, 32.101212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.163319, 37.437119, 32.228371>,  <43.487808, 37.265488, 32.397961>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.163319, 37.437119, 32.228371> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.056377, 37.133331, 31.991142>,  <43.992214, 36.951057, 31.848806>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.056377, 37.133331, 31.991142>,  <44.163319, 37.437119, 32.228371>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.056377, 37.133331, 31.991142> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138933, 0.578660, -0.803648,
		0.953531, -0.297251, -0.049189,
		-0.267349, -0.759470, -0.593068,
		43.976173, 36.905491, 31.813221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.461208, 37.582077, 31.631388>,  <44.163319, 37.437119, 32.228371>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.461208, 37.582077, 31.631388> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.244915, 37.283554, 31.476143>,  <44.115139, 37.104439, 31.382996>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.244915, 37.283554, 31.476143>,  <44.461208, 37.582077, 31.631388>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.244915, 37.283554, 31.476143> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162920, 0.359730, -0.918723,
		0.825269, -0.560012, -0.072928,
		-0.540730, -0.746312, -0.388110,
		44.082695, 37.059662, 31.359711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.835335, 37.238663, 31.020781>,  <44.461208, 37.582077, 31.631388>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.835335, 37.238663, 31.020781> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.448673, 37.151218, 30.967432>,  <44.216675, 37.098751, 30.935423>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.448673, 37.151218, 30.967432>,  <44.835335, 37.238663, 31.020781>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.448673, 37.151218, 30.967432> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064994, 0.294321, -0.953494,
		0.247695, -0.930369, -0.270299,
		-0.966655, -0.218608, -0.133371,
		44.158676, 37.085636, 30.927420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.874901, 36.870773, 30.439299>,  <44.835335, 37.238663, 31.020781>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.874901, 36.870773, 30.439299> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.496132, 36.993614, 30.477304>,  <44.268871, 37.067318, 30.500109>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.496132, 36.993614, 30.477304>,  <44.874901, 36.870773, 30.439299>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.496132, 36.993614, 30.477304> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002871, 0.287477, -0.957783,
		-0.321453, -0.907218, -0.271336,
		-0.946921, 0.307103, 0.095015,
		44.212055, 37.085747, 30.505810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.522072, 36.700966, 29.791592>,  <44.874901, 36.870773, 30.439299>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.522072, 36.700966, 29.791592> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.286758, 36.974857, 29.963671>,  <44.145569, 37.139191, 30.066917>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.286758, 36.974857, 29.963671>,  <44.522072, 36.700966, 29.791592>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.286758, 36.974857, 29.963671> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117876, 0.453699, -0.883325,
		-0.800017, -0.570356, -0.186191,
		-0.588284, 0.684727, 0.430198,
		44.110271, 37.180275, 30.092730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.932049, 36.695042, 29.332218>,  <44.522072, 36.700966, 29.791592>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.932049, 36.695042, 29.332218> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.939144, 37.033035, 29.546021>,  <43.943401, 37.235832, 29.674301>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.939144, 37.033035, 29.546021>,  <43.932049, 36.695042, 29.332218>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.939144, 37.033035, 29.546021> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135905, 0.531665, -0.835980,
		-0.990563, -0.057814, 0.124268,
		0.017738, 0.844980, 0.534504,
		43.944466, 37.286530, 29.706371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.289474, 37.073227, 29.151989>,  <43.932049, 36.695042, 29.332218>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.289474, 37.073227, 29.151989> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.534634, 37.353424, 29.298231>,  <43.681728, 37.521542, 29.385977>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.534634, 37.353424, 29.298231>,  <43.289474, 37.073227, 29.151989>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.534634, 37.353424, 29.298231> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241669, 0.606703, -0.757303,
		-0.752299, 0.375793, 0.541133,
		0.612897, 0.700494, 0.365605,
		43.718502, 37.563572, 29.407913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.896107, 37.872334, 29.172569>,  <43.289474, 37.073227, 29.151989>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.896107, 37.872334, 29.172569> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.286476, 37.957478, 29.191591>,  <43.520699, 38.008564, 29.203005>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.286476, 37.957478, 29.191591>,  <42.896107, 37.872334, 29.172569>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.286476, 37.957478, 29.191591> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088538, 0.585901, -0.805531,
		-0.199329, 0.781927, 0.590642,
		0.975925, 0.212860, 0.047557,
		43.579254, 38.021336, 29.205858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.004154, 38.641247, 29.124487>,  <42.896107, 37.872334, 29.172569>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.004154, 38.641247, 29.124487> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.333900, 38.455406, 28.995136>,  <43.531750, 38.343903, 28.917526>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.333900, 38.455406, 28.995136>,  <43.004154, 38.641247, 29.124487>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.333900, 38.455406, 28.995136> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031590, 0.532625, -0.845762,
		0.565178, 0.707431, 0.424400,
		0.824364, -0.464599, -0.323376,
		43.581211, 38.316025, 28.898123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<35.611721, 34.583183, 42.543304> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.275894, 34.496433, 42.344070>,  <35.074398, 34.444382, 42.224529>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.275894, 34.496433, 42.344070>,  <35.611721, 34.583183, 42.543304>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.275894, 34.496433, 42.344070> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456936, 0.213970, -0.863381,
		0.293823, -0.952461, -0.080543,
		-0.839570, -0.216878, -0.498082,
		35.024025, 34.431370, 42.194645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.827122, 34.090580, 42.012943>,  <35.611721, 34.583183, 42.543304>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.827122, 34.090580, 42.012943> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.486511, 34.275379, 41.913773>,  <35.282146, 34.386257, 41.854271>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.486511, 34.275379, 41.913773>,  <35.827122, 34.090580, 42.012943>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.486511, 34.275379, 41.913773> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396373, 0.257686, -0.881184,
		-0.343218, -0.848620, -0.402549,
		-0.851522, 0.461998, -0.247928,
		35.231056, 34.413979, 41.839394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.652435, 33.822430, 41.401924>,  <35.827122, 34.090580, 42.012943>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.652435, 33.822430, 41.401924> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.459427, 34.172329, 41.419785>,  <35.343620, 34.382267, 41.430500>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.459427, 34.172329, 41.419785>,  <35.652435, 33.822430, 41.401924>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.459427, 34.172329, 41.419785> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284749, 0.204877, -0.936453,
		-0.828306, -0.439143, -0.347940,
		-0.482522, 0.874745, 0.044655,
		35.314671, 34.434753, 41.433182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.467228, 34.012814, 40.679329>,  <35.652435, 33.822430, 41.401924>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.467228, 34.012814, 40.679329> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.404564, 34.369602, 40.848957>,  <35.366966, 34.583675, 40.950733>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.404564, 34.369602, 40.848957>,  <35.467228, 34.012814, 40.679329>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.404564, 34.369602, 40.848957> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144395, 0.445447, -0.883588,
		-0.977040, -0.077189, -0.198581,
		-0.156660, 0.891975, 0.424074,
		35.357567, 34.637196, 40.976181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.245102, 34.329422, 40.142673>,  <35.467228, 34.012814, 40.679329>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.245102, 34.329422, 40.142673> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.281731, 34.629375, 40.404755>,  <35.303707, 34.809349, 40.562004>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.281731, 34.629375, 40.404755>,  <35.245102, 34.329422, 40.142673>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.281731, 34.629375, 40.404755> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050501, 0.660614, -0.749025,
		-0.994517, 0.035503, 0.098365,
		0.091574, 0.749885, 0.655199,
		35.309204, 34.854340, 40.601315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.744823, 34.850361, 40.013573>,  <35.245102, 34.329422, 40.142673>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.744823, 34.850361, 40.013573> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.045238, 35.035484, 40.201935>,  <35.225487, 35.146557, 40.314953>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.045238, 35.035484, 40.201935>,  <34.744823, 34.850361, 40.013573>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.045238, 35.035484, 40.201935> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157247, 0.567318, -0.808346,
		-0.641265, 0.681145, 0.353300,
		0.751034, 0.462809, 0.470909,
		35.270550, 35.174328, 40.343208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.621033, 35.507481, 39.955978>,  <34.744823, 34.850361, 40.013573>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.621033, 35.507481, 39.955978> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.013702, 35.470348, 40.022560>,  <35.249302, 35.448071, 40.062508>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.013702, 35.470348, 40.022560>,  <34.621033, 35.507481, 39.955978>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.013702, 35.470348, 40.022560> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189991, 0.545623, -0.816210,
		-0.015053, 0.832874, 0.553258,
		0.981670, -0.092828, 0.166452,
		35.308205, 35.442501, 40.072495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.861576, 36.153923, 39.908543>,  <34.621033, 35.507481, 39.955978>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.861576, 36.153923, 39.908543> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.188068, 35.933235, 39.839993>,  <35.383965, 35.800823, 39.798862>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.188068, 35.933235, 39.839993>,  <34.861576, 36.153923, 39.908543>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.188068, 35.933235, 39.839993> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221254, 0.572554, -0.789448,
		0.533677, 0.606455, 0.589408,
		0.816232, -0.551719, -0.171379,
		35.432938, 35.767719, 39.788578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.284912, 36.656395, 39.677490>,  <34.861576, 36.153923, 39.908543>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.284912, 36.656395, 39.677490> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.481995, 36.321770, 39.581654>,  <35.600243, 36.120995, 39.524151>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.481995, 36.321770, 39.581654>,  <35.284912, 36.656395, 39.677490>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.481995, 36.321770, 39.581654> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336709, 0.437157, -0.833978,
		0.802414, 0.330234, 0.497069,
		0.492705, -0.836564, -0.239588,
		35.629807, 36.070801, 39.509777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.980900, 36.822861, 39.448376>,  <35.284912, 36.656395, 39.677490>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.980900, 36.822861, 39.448376> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.921509, 36.465202, 39.279400>,  <35.885872, 36.250607, 39.178013>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.921509, 36.465202, 39.279400>,  <35.980900, 36.822861, 39.448376>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.921509, 36.465202, 39.279400> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332631, 0.357130, -0.872820,
		0.931295, -0.270113, 0.244394,
		-0.148479, -0.894146, -0.422441,
		35.876965, 36.196957, 39.152668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.545120, 36.827312, 39.018215>,  <35.980900, 36.822861, 39.448376>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.545120, 36.827312, 39.018215> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.299854, 36.529270, 38.913261>,  <36.152695, 36.350445, 38.850288>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.299854, 36.529270, 38.913261>,  <36.545120, 36.827312, 39.018215>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.299854, 36.529270, 38.913261> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302355, 0.085498, -0.949353,
		0.729800, -0.661446, 0.172861,
		-0.613167, -0.745104, -0.262388,
		36.115906, 36.305740, 38.834545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.000259, 36.321690, 38.826630>,  <36.545120, 36.827312, 39.018215>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.000259, 36.321690, 38.826630> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.650909, 36.278957, 38.636555>,  <36.441299, 36.253319, 38.522511>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.650909, 36.278957, 38.636555>,  <37.000259, 36.321690, 38.826630>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.650909, 36.278957, 38.636555> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473238, 0.044575, -0.879807,
		0.115170, -0.993278, 0.011625,
		-0.873374, -0.106829, -0.475190,
		36.388897, 36.246910, 38.493999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.877041, 35.596649, 38.386272>,  <37.000259, 36.321690, 38.826630>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.877041, 35.596649, 38.386272> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.747143, 35.967171, 38.309849>,  <36.669205, 36.189484, 38.263996>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.747143, 35.967171, 38.309849>,  <36.877041, 35.596649, 38.386272>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.747143, 35.967171, 38.309849> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434054, -0.033515, -0.900263,
		-0.840320, -0.375286, -0.391182,
		-0.324745, 0.926303, -0.191058,
		36.649719, 36.245060, 38.252533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.621803, 35.677975, 37.647224>,  <36.877041, 35.596649, 38.386272>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.621803, 35.677975, 37.647224> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.758064, 36.035286, 37.764530>,  <36.839821, 36.249672, 37.834911>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.758064, 36.035286, 37.764530>,  <36.621803, 35.677975, 37.647224>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.758064, 36.035286, 37.764530> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419693, 0.134637, -0.897625,
		-0.841316, 0.428860, -0.329039,
		0.340655, 0.893282, 0.293262,
		36.860260, 36.303272, 37.852509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.279678, 35.835609, 37.766346>,  <36.621803, 35.677975, 37.647224>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.279678, 35.835609, 37.766346> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.637383, 35.657417, 37.749165>,  <37.852005, 35.550503, 37.738853>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.637383, 35.657417, 37.749165>,  <37.279678, 35.835609, 37.766346>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.637383, 35.657417, 37.749165> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398571, -0.836377, 0.376317,
		-0.203571, -0.319403, -0.925495,
		0.894259, -0.445482, -0.042958,
		37.905659, 35.523773, 37.736279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.206688, 35.256706, 37.416389>,  <37.279678, 35.835609, 37.766346>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.206688, 35.256706, 37.416389> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.545547, 35.157269, 37.604233>,  <37.748863, 35.097607, 37.716938>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.545547, 35.157269, 37.604233>,  <37.206688, 35.256706, 37.416389>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.545547, 35.157269, 37.604233> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376462, -0.904519, 0.200304,
		0.374977, -0.346478, -0.859852,
		0.847153, -0.248592, 0.469610,
		37.799694, 35.082691, 37.745117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.364632, 34.637093, 37.113258>,  <37.206688, 35.256706, 37.416389>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.364632, 34.637093, 37.113258> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.600815, 34.623501, 37.435799>,  <37.742523, 34.615345, 37.629322>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.600815, 34.623501, 37.435799>,  <37.364632, 34.637093, 37.113258>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.600815, 34.623501, 37.435799> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263119, -0.952631, 0.152524,
		0.762972, -0.302226, -0.571431,
		0.590459, -0.033983, 0.806352,
		37.777954, 34.613304, 37.677704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.792015, 33.964203, 37.127914>,  <37.364632, 34.637093, 37.113258>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.792015, 33.964203, 37.127914> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.748344, 34.088463, 37.505608>,  <37.722141, 34.163021, 37.732224>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.748344, 34.088463, 37.505608>,  <37.792015, 33.964203, 37.127914>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.748344, 34.088463, 37.505608> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047129, -0.950460, 0.307253,
		0.992905, -0.010957, 0.118405,
		-0.109173, 0.310653, 0.944233,
		37.715591, 34.181660, 37.788879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.127537, 33.402889, 37.416340>,  <37.792015, 33.964203, 37.127914>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.127537, 33.402889, 37.416340> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.891861, 33.599163, 37.673115>,  <37.750454, 33.716927, 37.827179>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.891861, 33.599163, 37.673115>,  <38.127537, 33.402889, 37.416340>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.891861, 33.599163, 37.673115> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045724, -0.813458, 0.579823,
		0.806701, 0.312273, 0.501717,
		-0.589188, 0.490684, 0.641939,
		37.715103, 33.746368, 37.865696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.392536, 33.241730, 38.154850>,  <38.127537, 33.402889, 37.416340>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.392536, 33.241730, 38.154850> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.001080, 33.322704, 38.140583>,  <37.766205, 33.371288, 38.132023>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.001080, 33.322704, 38.140583>,  <38.392536, 33.241730, 38.154850>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.001080, 33.322704, 38.140583> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188741, -0.816211, 0.546055,
		0.081431, 0.541126, 0.836990,
		-0.978645, 0.202440, -0.035668,
		37.707485, 33.383438, 38.129883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.162220, 32.736465, 38.513096>,  <38.392536, 33.241730, 38.154850>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.162220, 32.736465, 38.513096> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.821159, 32.931068, 38.436886>,  <37.616524, 33.047832, 38.391159>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.821159, 32.931068, 38.436886>,  <38.162220, 32.736465, 38.513096>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.821159, 32.931068, 38.436886> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516236, -0.728225, 0.450766,
		0.080560, 0.482698, 0.872074,
		-0.852649, 0.486510, -0.190520,
		37.565365, 33.077023, 38.379730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.863194, 33.083256, 39.097481>,  <38.162220, 32.736465, 38.513096>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.863194, 33.083256, 39.097481> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.563641, 33.000053, 38.845795>,  <37.383911, 32.950134, 38.694782>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.563641, 33.000053, 38.845795>,  <37.863194, 33.083256, 39.097481>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.563641, 33.000053, 38.845795> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320376, -0.717512, 0.618494,
		-0.580119, 0.664764, 0.470692,
		-0.748880, -0.208002, -0.629217,
		37.338978, 32.937653, 38.657028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.238338, 33.137375, 39.460938>,  <37.863194, 33.083256, 39.097481>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.238338, 33.137375, 39.460938> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.155251, 32.892117, 39.156071>,  <37.105396, 32.744961, 38.973152>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.155251, 32.892117, 39.156071>,  <37.238338, 33.137375, 39.460938>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.155251, 32.892117, 39.156071> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442671, -0.635891, 0.632207,
		-0.872293, 0.468711, -0.139336,
		-0.207720, -0.613150, -0.762168,
		37.092934, 32.708172, 38.927422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.532089, 33.019382, 39.514984>,  <37.238338, 33.137375, 39.460938>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.532089, 33.019382, 39.514984> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.656582, 32.723667, 39.276123>,  <36.731277, 32.546238, 39.132809>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.656582, 32.723667, 39.276123>,  <36.532089, 33.019382, 39.514984>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.656582, 32.723667, 39.276123> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517119, -0.658930, 0.546259,
		-0.797325, 0.138788, -0.587377,
		0.311226, -0.739290, -0.597151,
		36.749950, 32.501881, 39.096977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.944328, 32.632202, 39.295120>,  <36.532089, 33.019382, 39.514984>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.944328, 32.632202, 39.295120> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.262814, 32.391071, 39.274574>,  <36.453907, 32.246391, 39.262245>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.262814, 32.391071, 39.274574>,  <35.944328, 32.632202, 39.295120>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.262814, 32.391071, 39.274574> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448443, -0.645029, 0.618738,
		-0.406126, -0.469614, -0.783916,
		0.796217, -0.602827, -0.051368,
		36.501678, 32.210224, 39.259163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.643692, 31.981075, 39.182392>,  <35.944328, 32.632202, 39.295120>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.643692, 31.981075, 39.182392> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.009323, 31.846226, 39.272549>,  <36.228703, 31.765316, 39.326645>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.009323, 31.846226, 39.272549>,  <35.643692, 31.981075, 39.182392>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.009323, 31.846226, 39.272549> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394978, -0.614135, 0.683250,
		-0.091917, -0.713572, -0.694526,
		0.914080, -0.337125, 0.225396,
		36.283546, 31.745089, 39.340168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.539272, 31.221455, 39.176342>,  <35.643692, 31.981075, 39.182392>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.539272, 31.221455, 39.176342> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.885601, 31.283516, 39.366615>,  <36.093399, 31.320753, 39.480778>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.885601, 31.283516, 39.366615>,  <35.539272, 31.221455, 39.176342>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.885601, 31.283516, 39.366615> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261538, -0.670142, 0.694627,
		0.426549, -0.725835, -0.539648,
		0.865826, 0.155154, 0.475682,
		36.145348, 31.330063, 39.509319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.766396, 30.542910, 39.398434>,  <35.539272, 31.221455, 39.176342>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.766396, 30.542910, 39.398434> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.963070, 30.780687, 39.652954>,  <36.081074, 30.923353, 39.805668>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.963070, 30.780687, 39.652954>,  <35.766396, 30.542910, 39.398434>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.963070, 30.780687, 39.652954> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289853, -0.577331, 0.763331,
		0.821114, -0.559755, -0.111566,
		0.491688, 0.594443, 0.636301,
		36.110577, 30.959021, 39.843845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.494549, 29.790634, 39.282516>,  <35.766396, 30.542910, 39.398434>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.494549, 29.790634, 39.282516> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.139988, 29.708937, 39.116348>,  <34.927250, 29.659918, 39.016647>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.139988, 29.708937, 39.116348>,  <35.494549, 29.790634, 39.282516>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.139988, 29.708937, 39.116348> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266971, 0.507568, -0.819208,
		0.378168, -0.837054, -0.395385,
		-0.886406, -0.204242, -0.415415,
		34.874065, 29.647663, 38.991722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.608284, 29.533255, 38.634949>,  <35.494549, 29.790634, 39.282516>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.608284, 29.533255, 38.634949> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.226025, 29.648775, 38.611893>,  <34.996670, 29.718088, 38.598057>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.226025, 29.648775, 38.611893>,  <35.608284, 29.533255, 38.634949>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.226025, 29.648775, 38.611893> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186393, 0.441609, -0.877633,
		-0.228006, -0.849456, -0.475855,
		-0.955652, 0.288802, -0.057643,
		34.939327, 29.735416, 38.594601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.398952, 29.348942, 37.892921>,  <35.608284, 29.533255, 38.634949>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.398952, 29.348942, 37.892921> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.168228, 29.637779, 38.045692>,  <35.029793, 29.811081, 38.137356>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.168228, 29.637779, 38.045692>,  <35.398952, 29.348942, 37.892921>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.168228, 29.637779, 38.045692> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003564, 0.465317, -0.885137,
		-0.816867, -0.511921, -0.265828,
		-0.576814, 0.722092, 0.381927,
		34.995182, 29.854406, 38.160271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.021156, 29.539667, 37.264416>,  <35.398952, 29.348942, 37.892921>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.021156, 29.539667, 37.264416> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.911507, 29.836245, 37.509403>,  <34.845718, 30.014191, 37.656395>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.911507, 29.836245, 37.509403>,  <35.021156, 29.539667, 37.264416>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.911507, 29.836245, 37.509403> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307706, 0.535761, -0.786306,
		-0.911139, -0.404004, 0.081283,
		-0.274123, 0.741445, 0.612467,
		34.829269, 30.058678, 37.693142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.361267, 29.788225, 37.030777>,  <35.021156, 29.539667, 37.264416>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.361267, 29.788225, 37.030777> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.570251, 30.064394, 37.230915>,  <34.695644, 30.230095, 37.350998>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.570251, 30.064394, 37.230915>,  <34.361267, 29.788225, 37.030777>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.570251, 30.064394, 37.230915> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079736, 0.623796, -0.777509,
		-0.848925, 0.366325, 0.380962,
		0.522464, 0.690424, 0.500347,
		34.726990, 30.271521, 37.381020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.952232, 30.342548, 36.921394>,  <34.361267, 29.788225, 37.030777>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.952232, 30.342548, 36.921394> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.289429, 30.504372, 37.063210>,  <34.491745, 30.601465, 37.148300>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.289429, 30.504372, 37.063210>,  <33.952232, 30.342548, 36.921394>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.289429, 30.504372, 37.063210> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083054, 0.749065, -0.657269,
		-0.531478, 0.524626, 0.665055,
		0.842991, 0.404559, 0.354539,
		34.542328, 30.625740, 37.169571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.785900, 31.008640, 37.126343>,  <33.952232, 30.342548, 36.921394>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.785900, 31.008640, 37.126343> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.179588, 31.001945, 37.055878>,  <34.415802, 30.997929, 37.013599>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.179588, 31.001945, 37.055878>,  <33.785900, 31.008640, 37.126343>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.179588, 31.001945, 37.055878> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098245, 0.776315, -0.622642,
		0.147181, 0.630122, 0.762419,
		0.984218, -0.016737, -0.176165,
		34.474854, 30.996923, 37.003029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.915092, 31.739374, 37.036049>,  <33.785900, 31.008640, 37.126343>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.915092, 31.739374, 37.036049> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.251312, 31.603418, 36.867313>,  <34.453045, 31.521845, 36.766071>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.251312, 31.603418, 36.867313>,  <33.915092, 31.739374, 37.036049>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.251312, 31.603418, 36.867313> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017185, 0.795026, -0.606332,
		0.541463, 0.502403, 0.674099,
		0.840549, -0.339891, -0.421843,
		34.503475, 31.501451, 36.740761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.407860, 32.363941, 36.981148>,  <33.915092, 31.739374, 37.036049>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.407860, 32.363941, 36.981148> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.516514, 32.076591, 36.724976>,  <34.581707, 31.904182, 36.571270>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.516514, 32.076591, 36.724976>,  <34.407860, 32.363941, 36.981148>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.516514, 32.076591, 36.724976> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195422, 0.692762, -0.694183,
		0.942351, 0.063408, 0.328563,
		0.271633, -0.718373, -0.640434,
		34.598003, 31.861080, 36.532845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.075283, 32.563362, 36.726471>,  <34.407860, 32.363941, 36.981148>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.075283, 32.563362, 36.726471> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.928486, 32.311760, 36.452343>,  <34.840408, 32.160797, 36.287865>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.928486, 32.311760, 36.452343>,  <35.075283, 32.563362, 36.726471>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.928486, 32.311760, 36.452343> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215698, 0.659106, -0.720454,
		0.904871, -0.412223, -0.106210,
		-0.366991, -0.629008, -0.685322,
		34.818390, 32.123058, 36.246746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.583450, 32.446465, 36.050320>,  <35.075283, 32.563362, 36.726471>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.583450, 32.446465, 36.050320> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.199299, 32.377052, 35.963085>,  <34.968807, 32.335403, 35.910744>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.199299, 32.377052, 35.963085>,  <35.583450, 32.446465, 36.050320>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.199299, 32.377052, 35.963085> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047785, 0.668391, -0.742273,
		0.274576, -0.723284, -0.633616,
		-0.960377, -0.173533, -0.218086,
		34.911186, 32.324993, 35.897659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.477844, 32.330750, 35.298538>,  <35.583450, 32.446465, 36.050320>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.477844, 32.330750, 35.298538> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.180492, 32.540092, 35.465141>,  <35.002083, 32.665699, 35.565105>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.180492, 32.540092, 35.465141>,  <35.477844, 32.330750, 35.298538>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.180492, 32.540092, 35.465141> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075416, 0.684322, -0.725269,
		-0.664605, -0.507738, -0.548180,
		-0.743379, 0.523360, 0.416512,
		34.957478, 32.697102, 35.590096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<34.441242, 27.417477, 41.989777> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.081081, 27.587904, 41.954601>,  <33.864983, 27.690161, 41.933495>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.081081, 27.587904, 41.954601>,  <34.441242, 27.417477, 41.989777>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.081081, 27.587904, 41.954601> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078199, -0.040338, -0.996121,
		-0.427963, -0.903791, 0.003003,
		-0.900407, 0.426069, -0.087939,
		33.810959, 27.715725, 41.928219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.013107, 27.012547, 41.356991>,  <34.441242, 27.417477, 41.989777>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.013107, 27.012547, 41.356991> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.844776, 27.371698, 41.408710>,  <33.743778, 27.587189, 41.439743>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.844776, 27.371698, 41.408710>,  <34.013107, 27.012547, 41.356991>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.844776, 27.371698, 41.408710> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296288, 0.270762, -0.915916,
		-0.857392, -0.347130, -0.379974,
		-0.420824, 0.897880, 0.129299,
		33.718529, 27.641062, 41.447498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.622448, 27.197714, 40.828461>,  <34.013107, 27.012547, 41.356991>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.622448, 27.197714, 40.828461> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.763260, 27.532360, 40.996342>,  <33.847748, 27.733149, 41.097069>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.763260, 27.532360, 40.996342>,  <33.622448, 27.197714, 40.828461>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.763260, 27.532360, 40.996342> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219654, 0.362040, -0.905913,
		-0.909851, 0.411096, -0.056318,
		0.352028, 0.836616, 0.419702,
		33.868870, 27.783344, 41.122253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.457348, 27.548517, 40.302429>,  <33.622448, 27.197714, 40.828461>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.457348, 27.548517, 40.302429> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.672401, 27.805790, 40.520515>,  <33.801434, 27.960154, 40.651367>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.672401, 27.805790, 40.520515>,  <33.457348, 27.548517, 40.302429>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.672401, 27.805790, 40.520515> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245493, 0.499203, -0.830981,
		-0.806647, 0.580613, 0.110492,
		0.537636, 0.643183, 0.545217,
		33.833691, 27.998745, 40.684082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.268311, 28.199305, 40.070099>,  <33.457348, 27.548517, 40.302429>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.268311, 28.199305, 40.070099> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.631611, 28.251463, 40.229130>,  <33.849590, 28.282759, 40.324551>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.631611, 28.251463, 40.229130>,  <33.268311, 28.199305, 40.070099>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.631611, 28.251463, 40.229130> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194062, 0.710540, -0.676367,
		-0.370693, 0.691469, 0.620046,
		0.908255, 0.130397, 0.397580,
		33.904087, 28.290583, 40.348404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.281197, 28.928932, 40.189159>,  <33.268311, 28.199305, 40.070099>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.281197, 28.928932, 40.189159> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.655861, 28.789324, 40.177448>,  <33.880657, 28.705559, 40.170422>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.655861, 28.789324, 40.177448>,  <33.281197, 28.928932, 40.189159>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.655861, 28.789324, 40.177448> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266815, 0.765194, -0.585908,
		0.226898, 0.540983, 0.809848,
		0.936657, -0.349021, -0.029278,
		33.936859, 28.684618, 40.168663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.617287, 29.494326, 40.281853>,  <33.281197, 28.928932, 40.189159>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.617287, 29.494326, 40.281853> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.872284, 29.237206, 40.111954>,  <34.025284, 29.082933, 40.010014>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.872284, 29.237206, 40.111954>,  <33.617287, 29.494326, 40.281853>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.872284, 29.237206, 40.111954> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367773, 0.738314, -0.565364,
		0.677013, 0.204204, 0.707074,
		0.637492, -0.642801, -0.424747,
		34.063530, 29.044365, 39.984531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.238987, 30.041393, 40.066372>,  <33.617287, 29.494326, 40.281853>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.238987, 30.041393, 40.066372> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.297234, 29.692617, 39.879391>,  <34.332180, 29.483351, 39.767200>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.297234, 29.692617, 39.879391>,  <34.238987, 30.041393, 40.066372>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.297234, 29.692617, 39.879391> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372437, 0.486046, -0.790601,
		0.916563, -0.058978, 0.395517,
		0.145612, -0.871941, -0.467457,
		34.340916, 29.431036, 39.739155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.992710, 30.067335, 39.783325>,  <34.238987, 30.041393, 40.066372>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.992710, 30.067335, 39.783325> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.785370, 29.801065, 39.568592>,  <34.660965, 29.641304, 39.439751>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.785370, 29.801065, 39.568592>,  <34.992710, 30.067335, 39.783325>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.785370, 29.801065, 39.568592> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105822, 0.573001, -0.812694,
		0.848598, -0.478066, -0.226570,
		-0.518346, -0.665675, -0.536837,
		34.629868, 29.601362, 39.407539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.725803, 30.126678, 40.048107>,  <34.992710, 30.067335, 39.783325>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.725803, 30.126678, 40.048107> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.849335, 30.481617, 40.185070>,  <35.923454, 30.694580, 40.267246>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.849335, 30.481617, 40.185070>,  <35.725803, 30.126678, 40.048107>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.849335, 30.481617, 40.185070> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192574, -0.294214, 0.936138,
		0.931420, -0.355040, 0.080020,
		0.308824, 0.887347, 0.342408,
		35.941982, 30.747822, 40.287792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.200375, 29.974413, 40.501122>,  <35.725803, 30.126678, 40.048107>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.200375, 29.974413, 40.501122> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.080635, 30.345625, 40.589806>,  <36.008793, 30.568352, 40.643017>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.080635, 30.345625, 40.589806>,  <36.200375, 29.974413, 40.501122>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.080635, 30.345625, 40.589806> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055670, -0.214983, 0.975030,
		0.952519, 0.304214, 0.012691,
		-0.299346, 0.928028, 0.221711,
		35.990829, 30.624033, 40.656319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.660622, 30.211617, 41.065434>,  <36.200375, 29.974413, 40.501122>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.660622, 30.211617, 41.065434> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.307201, 30.396917, 41.092945>,  <36.095150, 30.508099, 41.109451>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.307201, 30.396917, 41.092945>,  <36.660622, 30.211617, 41.065434>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.307201, 30.396917, 41.092945> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053321, -0.245401, 0.967954,
		0.465283, 0.851573, 0.241526,
		-0.883554, 0.463251, 0.068774,
		36.042133, 30.535892, 41.113579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.658318, 30.453903, 41.772717>,  <36.660622, 30.211617, 41.065434>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.658318, 30.453903, 41.772717> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.266727, 30.482729, 41.696388>,  <36.031773, 30.500025, 41.650593>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.266727, 30.482729, 41.696388>,  <36.658318, 30.453903, 41.772717>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.266727, 30.482729, 41.696388> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203487, -0.280473, 0.938045,
		0.014081, 0.957153, 0.289241,
		-0.978976, 0.072065, -0.190819,
		35.973034, 30.504349, 41.639141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.354683, 30.763546, 42.405445>,  <36.658318, 30.453903, 41.772717>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.354683, 30.763546, 42.405445> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.034382, 30.614834, 42.217583>,  <35.842201, 30.525606, 42.104866>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.034382, 30.614834, 42.217583>,  <36.354683, 30.763546, 42.405445>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.034382, 30.614834, 42.217583> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469725, -0.096786, 0.877491,
		-0.371689, 0.923262, -0.097133,
		-0.800753, -0.371780, -0.469653,
		35.794155, 30.503300, 42.076687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.735161, 31.188501, 42.552723>,  <36.354683, 30.763546, 42.405445>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.735161, 31.188501, 42.552723> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.630814, 30.811808, 42.467789>,  <35.568207, 30.585793, 42.416828>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.630814, 30.811808, 42.467789>,  <35.735161, 31.188501, 42.552723>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.630814, 30.811808, 42.467789> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450806, -0.075663, 0.889409,
		-0.853652, 0.327743, -0.404801,
		-0.260869, -0.941732, -0.212338,
		35.552551, 30.529287, 42.404087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.033146, 31.100330, 42.829609>,  <35.735161, 31.188501, 42.552723>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.033146, 31.100330, 42.829609> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.162971, 30.724737, 42.784046>,  <35.240868, 30.499382, 42.756710>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.162971, 30.724737, 42.784046>,  <35.033146, 31.100330, 42.829609>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.162971, 30.724737, 42.784046> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365271, -0.235505, 0.900619,
		-0.872489, -0.250699, -0.419419,
		0.324560, -0.938982, -0.113903,
		35.260338, 30.443043, 42.749874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.578316, 30.756594, 43.304131>,  <35.033146, 31.100330, 42.829609>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.578316, 30.756594, 43.304131> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.840946, 30.471809, 43.204517>,  <34.998524, 30.300938, 43.144749>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.840946, 30.471809, 43.204517>,  <34.578316, 30.756594, 43.304131>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.840946, 30.471809, 43.204517> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193810, -0.478329, 0.856527,
		-0.728934, -0.514111, -0.452046,
		0.656577, -0.711963, -0.249030,
		35.037918, 30.258221, 43.129807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.251968, 30.125216, 43.446671>,  <34.578316, 30.756594, 43.304131>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.251968, 30.125216, 43.446671> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.644043, 30.047821, 43.463673>,  <34.879288, 30.001385, 43.473873>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.644043, 30.047821, 43.463673>,  <34.251968, 30.125216, 43.446671>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.644043, 30.047821, 43.463673> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143499, -0.545556, 0.825698,
		-0.136569, -0.815434, -0.562509,
		0.980182, -0.193484, 0.042508,
		34.938099, 29.989777, 43.476425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.325813, 29.342438, 43.375805>,  <34.251968, 30.125216, 43.446671>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.325813, 29.342438, 43.375805> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.627991, 29.533255, 43.555466>,  <34.809296, 29.647745, 43.663261>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.627991, 29.533255, 43.555466>,  <34.325813, 29.342438, 43.375805>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.627991, 29.533255, 43.555466> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146608, -0.545054, 0.825483,
		0.638604, -0.689453, -0.341817,
		0.755441, 0.477044, 0.449153,
		34.854622, 29.676367, 43.690212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.711819, 28.799585, 43.648109>,  <34.325813, 29.342438, 43.375805>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.711819, 28.799585, 43.648109> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.738884, 29.135275, 43.863934>,  <34.755123, 29.336689, 43.993427>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.738884, 29.135275, 43.863934>,  <34.711819, 28.799585, 43.648109>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.738884, 29.135275, 43.863934> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068648, -0.535600, 0.841677,
		0.995344, -0.093993, 0.021369,
		0.067666, 0.839225, 0.539558,
		34.759186, 29.387043, 44.025803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.984196, 28.597816, 44.268150>,  <34.711819, 28.799585, 43.648109>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.984196, 28.597816, 44.268150> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.898655, 28.969618, 44.388344>,  <34.847332, 29.192699, 44.460461>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.898655, 28.969618, 44.388344>,  <34.984196, 28.597816, 44.268150>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.898655, 28.969618, 44.388344> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098901, -0.326617, 0.939968,
		0.971847, 0.171293, 0.161776,
		-0.213849, 0.929505, 0.300481,
		34.834499, 29.248470, 44.478489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.458832, 28.810019, 44.756958>,  <34.984196, 28.597816, 44.268150>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.458832, 28.810019, 44.756958> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.142181, 29.037409, 44.846542>,  <34.952190, 29.173843, 44.900291>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.142181, 29.037409, 44.846542>,  <35.458832, 28.810019, 44.756958>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.142181, 29.037409, 44.846542> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012682, -0.351176, 0.936223,
		0.610870, 0.743982, 0.270792,
		-0.791629, 0.568477, 0.223959,
		34.904694, 29.207952, 44.913731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.615639, 28.977083, 45.430443>,  <35.458832, 28.810019, 44.756958>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.615639, 28.977083, 45.430443> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.237549, 29.103123, 45.396347>,  <35.010696, 29.178745, 45.375889>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.237549, 29.103123, 45.396347>,  <35.615639, 28.977083, 45.430443>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.237549, 29.103123, 45.396347> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197463, -0.344007, 0.917969,
		0.259925, 0.884519, 0.387384,
		-0.945224, 0.315097, -0.085243,
		34.953983, 29.197651, 45.370773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<27.754602, 31.854719, 44.903999> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.099907, 31.684660, 45.012833>,  <28.307089, 31.582624, 45.078133>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.099907, 31.684660, 45.012833>,  <27.754602, 31.854719, 44.903999>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.099907, 31.684660, 45.012833> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485855, 0.553736, -0.676256,
		0.136846, 0.715978, 0.684579,
		0.863260, -0.425149, 0.272085,
		28.358885, 31.557116, 45.094460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.292751, 32.371586, 45.077457>,  <27.754602, 31.854719, 44.903999>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.292751, 32.371586, 45.077457> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.519051, 32.049156, 45.007977>,  <28.654831, 31.855698, 44.966290>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.519051, 32.049156, 45.007977>,  <28.292751, 32.371586, 45.077457>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.519051, 32.049156, 45.007977> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.678983, 0.574933, -0.456546,
		0.467877, 0.140349, 0.872578,
		0.565750, -0.806074, -0.173704,
		28.688776, 31.807335, 44.955864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.022211, 32.556099, 45.205879>,  <28.292751, 32.371586, 45.077457>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.022211, 32.556099, 45.205879> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.024918, 32.235806, 44.966286>,  <29.026543, 32.043629, 44.822529>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.024918, 32.235806, 44.966286>,  <29.022211, 32.556099, 45.205879>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.024918, 32.235806, 44.966286> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618975, 0.473804, -0.626402,
		0.785381, -0.366515, 0.498842,
		0.006768, -0.800735, -0.598980,
		29.026947, 31.995584, 44.786591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.752474, 32.435089, 44.960587>,  <29.022211, 32.556099, 45.205879>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.752474, 32.435089, 44.960587> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.544037, 32.233128, 44.685329>,  <29.418976, 32.111950, 44.520176>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.544037, 32.233128, 44.685329>,  <29.752474, 32.435089, 44.960587>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.544037, 32.233128, 44.685329> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527999, 0.442763, -0.724692,
		0.670583, -0.740967, 0.035869,
		-0.521091, -0.504905, -0.688139,
		29.387709, 32.081657, 44.478889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.266592, 32.225513, 44.449200>,  <29.752474, 32.435089, 44.960587>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.266592, 32.225513, 44.449200> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.907244, 32.213223, 44.273937>,  <29.691635, 32.205849, 44.168777>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.907244, 32.213223, 44.273937>,  <30.266592, 32.225513, 44.449200>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.907244, 32.213223, 44.273937> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399528, 0.357298, -0.844225,
		0.182495, -0.933485, -0.308710,
		-0.898372, -0.030728, -0.438158,
		29.637732, 32.204002, 44.142490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.394478, 31.819807, 43.791191>,  <30.266592, 32.225513, 44.449200>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.394478, 31.819807, 43.791191> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.074394, 32.057861, 43.761593>,  <29.882343, 32.200695, 43.743835>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.074394, 32.057861, 43.761593>,  <30.394478, 31.819807, 43.791191>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.074394, 32.057861, 43.761593> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312513, 0.308499, -0.898423,
		-0.511859, -0.742051, -0.432852,
		-0.800210, 0.595137, -0.073993,
		29.834332, 32.236404, 43.739395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.244139, 31.797106, 43.084137>,  <30.394478, 31.819807, 43.791191>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.244139, 31.797106, 43.084137> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.038250, 32.108749, 43.227272>,  <29.914717, 32.295734, 43.313152>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.038250, 32.108749, 43.227272>,  <30.244139, 31.797106, 43.084137>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.038250, 32.108749, 43.227272> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227755, 0.526635, -0.819014,
		-0.826552, -0.340066, -0.448517,
		-0.514723, 0.779109, 0.357839,
		29.883833, 32.342484, 43.334625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.786798, 31.999409, 42.623978>,  <30.244139, 31.797106, 43.084137>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.786798, 31.999409, 42.623978> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.838509, 32.327251, 42.847237>,  <29.869535, 32.523956, 42.981194>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.838509, 32.327251, 42.847237>,  <29.786798, 31.999409, 42.623978>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.838509, 32.327251, 42.847237> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064119, 0.568603, -0.820109,
		-0.989533, 0.070234, 0.126060,
		0.129278, 0.819608, 0.558149,
		29.877293, 32.573135, 43.014683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.277351, 32.504261, 42.370060>,  <29.786798, 31.999409, 42.623978>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.277351, 32.504261, 42.370060> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.536764, 32.732170, 42.571957>,  <29.692413, 32.868916, 42.693096>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.536764, 32.732170, 42.571957>,  <29.277351, 32.504261, 42.370060>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.536764, 32.732170, 42.571957> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059112, 0.623401, -0.779664,
		-0.758887, 0.535476, 0.370617,
		0.648534, 0.569769, 0.504744,
		29.731325, 32.903099, 42.723381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.992815, 33.212826, 42.285313>,  <29.277351, 32.504261, 42.370060>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.992815, 33.212826, 42.285313> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.371561, 33.253887, 42.407238>,  <29.598808, 33.278522, 42.480392>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.371561, 33.253887, 42.407238>,  <28.992815, 33.212826, 42.285313>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.371561, 33.253887, 42.407238> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073348, 0.853814, -0.515385,
		-0.313157, 0.510357, 0.800917,
		0.946865, 0.102650, 0.304812,
		29.655621, 33.284683, 42.498680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.060350, 33.880207, 42.661453>,  <28.992815, 33.212826, 42.285313>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.060350, 33.880207, 42.661453> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.380529, 33.732826, 42.472340>,  <29.572636, 33.644398, 42.358871>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.380529, 33.732826, 42.472340>,  <29.060350, 33.880207, 42.661453>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.380529, 33.732826, 42.472340> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003776, 0.785643, -0.618668,
		0.599392, 0.496996, 0.627474,
		0.800446, -0.368456, -0.472785,
		29.620663, 33.622288, 42.330505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.343534, 34.426033, 42.441624>,  <29.060350, 33.880207, 42.661453>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.343534, 34.426033, 42.441624> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.537661, 34.172966, 42.200230>,  <29.654137, 34.021126, 42.055393>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.537661, 34.172966, 42.200230>,  <29.343534, 34.426033, 42.441624>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.537661, 34.172966, 42.200230> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159372, 0.742671, -0.650416,
		0.859691, 0.219479, 0.461260,
		0.485317, -0.632668, -0.603488,
		29.683256, 33.983166, 42.019184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.820236, 34.820644, 42.113777>,  <29.343534, 34.426033, 42.441624>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.820236, 34.820644, 42.113777> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.818968, 34.499229, 41.875679>,  <29.818207, 34.306381, 41.732822>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.818968, 34.499229, 41.875679>,  <29.820236, 34.820644, 42.113777>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.818968, 34.499229, 41.875679> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264224, 0.573418, -0.775486,
		0.964456, -0.159735, 0.210498,
		-0.003169, -0.803540, -0.595242,
		29.818016, 34.258167, 41.697105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.435192, 34.882557, 41.707531>,  <29.820236, 34.820644, 42.113777>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.435192, 34.882557, 41.707531> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.180529, 34.635632, 41.522671>,  <30.027731, 34.487476, 41.411755>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.180529, 34.635632, 41.522671>,  <30.435192, 34.882557, 41.707531>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.180529, 34.635632, 41.522671> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100558, 0.527733, -0.843437,
		0.764560, -0.583456, -0.273911,
		-0.636660, -0.617314, -0.462155,
		29.989531, 34.450436, 41.384026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.144753, 34.679760, 41.957943>,  <30.435192, 34.882557, 41.707531>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.144753, 34.679760, 41.957943> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.422998, 34.947071, 42.063419>,  <31.589945, 35.107456, 42.126705>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.422998, 34.947071, 42.063419>,  <31.144753, 34.679760, 41.957943>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.422998, 34.947071, 42.063419> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142093, -0.231808, 0.962328,
		0.704224, -0.706876, -0.066291,
		0.695613, 0.668275, 0.263686,
		31.631683, 35.147552, 42.142525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.652863, 34.297009, 42.319008>,  <31.144753, 34.679760, 41.957943>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.652863, 34.297009, 42.319008> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.669949, 34.673565, 42.452847>,  <31.680201, 34.899498, 42.533150>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.669949, 34.673565, 42.452847>,  <31.652863, 34.297009, 42.319008>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.669949, 34.673565, 42.452847> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259573, -0.312943, 0.913613,
		0.964779, -0.125875, 0.230993,
		0.042714, 0.941394, 0.334594,
		31.682762, 34.955982, 42.553226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.154636, 34.323917, 42.880501>,  <31.652863, 34.297009, 42.319008>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.154636, 34.323917, 42.880501> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.941956, 34.648285, 42.978237>,  <31.814346, 34.842907, 43.036877>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.941956, 34.648285, 42.978237>,  <32.154636, 34.323917, 42.880501>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.941956, 34.648285, 42.978237> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045077, -0.315185, 0.947959,
		0.845729, 0.493021, 0.204139,
		-0.531706, 0.810918, 0.244337,
		31.782444, 34.891560, 43.051537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.548122, 34.677464, 43.346321>,  <32.154636, 34.323917, 42.880501>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.548122, 34.677464, 43.346321> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.169491, 34.794132, 43.401337>,  <31.942312, 34.864136, 43.434345>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.169491, 34.794132, 43.401337>,  <32.548122, 34.677464, 43.346321>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.169491, 34.794132, 43.401337> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032279, -0.338662, 0.940354,
		0.320857, 0.894557, 0.311155,
		-0.946577, 0.291676, 0.137538,
		31.885517, 34.881634, 43.442596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.611629, 34.997890, 43.998970>,  <32.548122, 34.677464, 43.346321>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.611629, 34.997890, 43.998970> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.220539, 34.943481, 43.935036>,  <31.985886, 34.910835, 43.896675>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.220539, 34.943481, 43.935036>,  <32.611629, 34.997890, 43.998970>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.220539, 34.943481, 43.935036> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102678, -0.354217, 0.929510,
		-0.183053, 0.925218, 0.332361,
		-0.977727, -0.136023, -0.159840,
		31.927221, 34.902676, 43.887085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.234852, 35.292564, 44.656933>,  <32.611629, 34.997890, 43.998970>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.234852, 35.292564, 44.656933> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.972780, 35.045357, 44.483128>,  <31.815538, 34.897034, 44.378845>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.972780, 35.045357, 44.483128>,  <32.234852, 35.292564, 44.656933>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.972780, 35.045357, 44.483128> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307433, -0.307265, 0.900596,
		-0.690095, 0.723631, 0.011313,
		-0.655175, -0.618018, -0.434510,
		31.776228, 34.859951, 44.352776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.672794, 35.303696, 45.107620>,  <32.234852, 35.292564, 44.656933>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.672794, 35.303696, 45.107620> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.603191, 34.980980, 44.881763>,  <31.561430, 34.787350, 44.746250>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.603191, 34.980980, 44.881763>,  <31.672794, 35.303696, 45.107620>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.603191, 34.980980, 44.881763> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515220, -0.414057, 0.750403,
		-0.839208, 0.421487, -0.343625,
		-0.174005, -0.806787, -0.564639,
		31.550989, 34.738945, 44.712372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.997368, 35.179924, 45.201504>,  <31.672794, 35.303696, 45.107620>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.997368, 35.179924, 45.201504> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.133986, 34.824966, 45.077648>,  <31.215956, 34.611992, 45.003334>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.133986, 34.824966, 45.077648>,  <30.997368, 35.179924, 45.201504>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.133986, 34.824966, 45.077648> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.598513, -0.459368, 0.656325,
		-0.724659, -0.038840, -0.688012,
		0.341543, -0.887396, -0.309639,
		31.236448, 34.558746, 44.984756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.365305, 34.668411, 45.195877>,  <30.997368, 35.179924, 45.201504>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.365305, 34.668411, 45.195877> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.685518, 34.429050, 45.182808>,  <30.877645, 34.285435, 45.174965>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.685518, 34.429050, 45.182808>,  <30.365305, 34.668411, 45.195877>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.685518, 34.429050, 45.182808> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467697, -0.657911, 0.590264,
		-0.374711, -0.457243, -0.806548,
		0.800531, -0.598399, -0.032676,
		30.925678, 34.249531, 45.173004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.219271, 34.001514, 45.076427>,  <30.365305, 34.668411, 45.195877>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.219271, 34.001514, 45.076427> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.572475, 33.955818, 45.258522>,  <30.784399, 33.928402, 45.367779>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.572475, 33.955818, 45.258522>,  <30.219271, 34.001514, 45.076427>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.572475, 33.955818, 45.258522> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354664, -0.797689, 0.487757,
		0.307413, -0.592150, -0.744886,
		0.883013, -0.114241, 0.455234,
		30.837379, 33.921547, 45.395092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.182070, 33.353516, 45.122368>,  <30.219271, 34.001514, 45.076427>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.182070, 33.353516, 45.122368> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.466679, 33.472416, 45.377045>,  <30.637444, 33.543758, 45.529850>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.466679, 33.472416, 45.377045>,  <30.182070, 33.353516, 45.122368>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.466679, 33.472416, 45.377045> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228261, -0.759188, 0.609533,
		0.664554, -0.579029, -0.472328,
		0.711523, 0.297253, 0.636691,
		30.680136, 33.561592, 45.568050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.327948, 32.747097, 45.500328>,  <30.182070, 33.353516, 45.122368>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.327948, 32.747097, 45.500328> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.521795, 32.998116, 45.744076>,  <30.638103, 33.148727, 45.890324>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.521795, 32.998116, 45.744076>,  <30.327948, 32.747097, 45.500328>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.521795, 32.998116, 45.744076> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108103, -0.648331, 0.753645,
		0.868019, -0.431105, -0.246354,
		0.484619, 0.627547, 0.609368,
		30.667181, 33.186378, 45.926888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.771210, 32.322735, 45.820160>,  <30.327948, 32.747097, 45.500328>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.771210, 32.322735, 45.820160> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.742691, 32.640907, 46.060894>,  <30.725580, 32.831810, 46.205334>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.742691, 32.640907, 46.060894>,  <30.771210, 32.322735, 45.820160>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.742691, 32.640907, 46.060894> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264169, -0.596882, 0.757593,
		0.961838, -0.104973, 0.252683,
		-0.071295, 0.795432, 0.601834,
		30.721302, 32.879536, 46.241444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.283236, 32.335140, 46.388367>,  <30.771210, 32.322735, 45.820160>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.283236, 32.335140, 46.388367> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.943991, 32.522388, 46.487617>,  <30.740444, 32.634739, 46.547169>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.943991, 32.522388, 46.487617>,  <31.283236, 32.335140, 46.388367>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.943991, 32.522388, 46.487617> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107350, -0.610441, 0.784753,
		0.518827, 0.638923, 0.567976,
		-0.848113, 0.468123, 0.248125,
		30.689556, 32.662827, 46.562054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.003639, 32.576542, 46.527477>,  <31.283236, 32.335140, 46.388367>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.003639, 32.576542, 46.527477> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.331306, 32.347466, 46.539986>,  <32.527908, 32.210018, 46.547489>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.331306, 32.347466, 46.539986>,  <32.003639, 32.576542, 46.527477>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.331306, 32.347466, 46.539986> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393397, 0.521359, -0.757248,
		0.417368, 0.632618, 0.652379,
		0.819172, -0.572695, 0.031271,
		32.577057, 32.175655, 46.549366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.587975, 32.976139, 46.314423>,  <32.003639, 32.576542, 46.527477>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.587975, 32.976139, 46.314423> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.769558, 32.622189, 46.272652>,  <32.878510, 32.409817, 46.247589>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.769558, 32.622189, 46.272652>,  <32.587975, 32.976139, 46.314423>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.769558, 32.622189, 46.272652> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528879, 0.361918, -0.767660,
		0.717082, 0.293260, 0.632291,
		0.453962, -0.884881, -0.104426,
		32.905746, 32.356724, 46.241325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.417721, 33.025921, 46.233463>,  <32.587975, 32.976139, 46.314423>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.417721, 33.025921, 46.233463> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.284389, 32.694710, 46.053123>,  <33.204391, 32.495983, 45.944920>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.284389, 32.694710, 46.053123>,  <33.417721, 33.025921, 46.233463>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.284389, 32.694710, 46.053123> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525881, 0.233609, -0.817849,
		0.782522, -0.509705, 0.357575,
		-0.333329, -0.828026, -0.450848,
		33.184391, 32.446301, 45.917870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.987904, 32.719296, 45.894505>,  <33.417721, 33.025921, 46.233463>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.987904, 32.719296, 45.894505> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.673195, 32.558525, 45.707127>,  <33.484371, 32.462063, 45.594700>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.673195, 32.558525, 45.707127>,  <33.987904, 32.719296, 45.894505>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.673195, 32.558525, 45.707127> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383075, 0.277135, -0.881164,
		0.483987, -0.872726, -0.064074,
		-0.786772, -0.401927, -0.468449,
		33.437164, 32.437946, 45.566593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.235630, 32.272675, 45.281158>,  <33.987904, 32.719296, 45.894505>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.235630, 32.272675, 45.281158> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.852665, 32.371170, 45.220848>,  <33.622887, 32.430267, 45.184662>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.852665, 32.371170, 45.220848>,  <34.235630, 32.272675, 45.281158>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.852665, 32.371170, 45.220848> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231575, 0.342981, -0.910350,
		-0.172450, -0.906494, -0.385397,
		-0.957410, 0.246238, -0.150774,
		33.565441, 32.445042, 45.175617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.260502, 32.024765, 44.705700>,  <34.235630, 32.272675, 45.281158>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.260502, 32.024765, 44.705700> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.975239, 32.300285, 44.757793>,  <33.804081, 32.465599, 44.789051>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.975239, 32.300285, 44.757793>,  <34.260502, 32.024765, 44.705700>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.975239, 32.300285, 44.757793> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256468, 0.429275, -0.865995,
		-0.652408, -0.584185, -0.482795,
		-0.713153, 0.688804, 0.130238,
		33.761292, 32.506927, 44.796864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.978573, 32.259323, 44.009075>,  <34.260502, 32.024765, 44.705700>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.978573, 32.259323, 44.009075> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.883713, 32.559589, 44.255737>,  <33.826797, 32.739750, 44.403736>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.883713, 32.559589, 44.255737>,  <33.978573, 32.259323, 44.009075>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.883713, 32.559589, 44.255737> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221027, 0.659811, -0.718190,
		-0.945994, -0.034022, -0.322392,
		-0.237152, 0.750661, 0.616658,
		33.812569, 32.784786, 44.440735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.615070, 32.641758, 43.631443>,  <33.978573, 32.259323, 44.009075>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.615070, 32.641758, 43.631443> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.682262, 32.887257, 43.940014>,  <33.722576, 33.034557, 44.125156>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.682262, 32.887257, 43.940014>,  <33.615070, 32.641758, 43.631443>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.682262, 32.887257, 43.940014> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063990, 0.774108, -0.629811,
		-0.983712, 0.155158, 0.090760,
		0.167978, 0.613745, 0.771427,
		33.732655, 33.071381, 44.171444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.185104, 33.187107, 43.528484>,  <33.615070, 32.641758, 43.631443>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.185104, 33.187107, 43.528484> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.457912, 33.336262, 43.780136>,  <33.621597, 33.425755, 43.931126>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.457912, 33.336262, 43.780136>,  <33.185104, 33.187107, 43.528484>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.457912, 33.336262, 43.780136> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195699, 0.735824, -0.648278,
		-0.704665, 0.565258, 0.428872,
		0.682019, 0.372889, 0.629130,
		33.662518, 33.448128, 43.968876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.101841, 33.835468, 43.448643>,  <33.185104, 33.187107, 43.528484>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.101841, 33.835468, 43.448643> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.470520, 33.818596, 43.602886>,  <33.691727, 33.808472, 43.695431>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.470520, 33.818596, 43.602886>,  <33.101841, 33.835468, 43.448643>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.470520, 33.818596, 43.602886> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337721, 0.576308, -0.744187,
		-0.190835, 0.816143, 0.545429,
		0.921698, -0.042186, 0.385608,
		33.747028, 33.805939, 43.718567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.313915, 34.446819, 43.302570>,  <33.101841, 33.835468, 43.448643>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.313915, 34.446819, 43.302570> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.644512, 34.233383, 43.374340>,  <33.842869, 34.105320, 43.417400>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.644512, 34.233383, 43.374340>,  <33.313915, 34.446819, 43.302570>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.644512, 34.233383, 43.374340> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436501, 0.406153, -0.802812,
		0.355502, 0.741834, 0.568595,
		0.826489, -0.533594, 0.179423,
		33.892460, 34.073303, 43.428165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.866859, 34.919994, 43.221165>,  <33.313915, 34.446819, 43.302570>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.866859, 34.919994, 43.221165> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.030510, 34.556370, 43.189613>,  <34.128700, 34.338196, 43.170681>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.030510, 34.556370, 43.189613>,  <33.866859, 34.919994, 43.221165>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.030510, 34.556370, 43.189613> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532729, 0.308147, -0.788191,
		0.740823, 0.280443, 0.610355,
		0.409122, -0.909064, -0.078882,
		34.153248, 34.283649, 43.165947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.438259, 35.080662, 43.058125>,  <33.866859, 34.919994, 43.221165>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.438259, 35.080662, 43.058125> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.426643, 34.695217, 42.951832>,  <34.419674, 34.463951, 42.888054>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.426643, 34.695217, 42.951832>,  <34.438259, 35.080662, 43.058125>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.426643, 34.695217, 42.951832> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525323, 0.211461, -0.824208,
		0.850407, -0.163534, 0.500065,
		-0.029042, -0.963608, -0.265736,
		34.417931, 34.406136, 42.872112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.105759, 34.853401, 42.958092>,  <34.438259, 35.080662, 43.058125>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.105759, 34.853401, 42.958092> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.863934, 34.631256, 42.729679>,  <34.718838, 34.497967, 42.592632>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.863934, 34.631256, 42.729679>,  <35.105759, 34.853401, 42.958092>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.863934, 34.631256, 42.729679> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521816, 0.265514, -0.810685,
		0.601844, -0.788080, 0.129281,
		-0.604559, -0.555367, -0.571031,
		34.682568, 34.464645, 42.558369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<31.254049, 38.522640, 29.321079> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.983120, 38.798923, 29.219761>,  <30.820562, 38.964691, 29.158970>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.983120, 38.798923, 29.219761>,  <31.254049, 38.522640, 29.321079>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.983120, 38.798923, 29.219761> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289905, 0.065852, 0.954787,
		0.676156, 0.720132, 0.155635,
		-0.677324, 0.690705, -0.253296,
		30.779922, 39.006134, 29.143772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.292690, 39.145695, 29.817612>,  <31.254049, 38.522640, 29.321079>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.292690, 39.145695, 29.817612> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.938963, 39.108601, 29.634577>,  <30.726727, 39.086342, 29.524755>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.938963, 39.108601, 29.634577>,  <31.292690, 39.145695, 29.817612>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.938963, 39.108601, 29.634577> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465871, 0.110613, 0.877912,
		-0.030801, 0.989528, -0.141021,
		-0.884316, -0.092738, -0.457585,
		30.673668, 39.080780, 29.497301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.745531, 39.632286, 30.140194>,  <31.292690, 39.145695, 29.817612>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.745531, 39.632286, 30.140194> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.511921, 39.383289, 29.931803>,  <30.371756, 39.233891, 29.806768>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.511921, 39.383289, 29.931803>,  <30.745531, 39.632286, 30.140194>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.511921, 39.383289, 29.931803> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.708404, 0.077493, 0.701540,
		-0.396333, 0.778778, -0.486235,
		-0.584023, -0.622495, -0.520977,
		30.336714, 39.196541, 29.775509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.026190, 39.982277, 30.050226>,  <30.745531, 39.632286, 30.140194>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.026190, 39.982277, 30.050226> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.005011, 39.582859, 30.054213>,  <29.992304, 39.343208, 30.056604>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.005011, 39.582859, 30.054213>,  <30.026190, 39.982277, 30.050226>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.005011, 39.582859, 30.054213> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.758478, 0.046705, 0.650024,
		-0.649545, 0.026858, -0.759849,
		-0.052947, -0.998548, 0.009966,
		29.989126, 39.283295, 30.057203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.263794, 39.915497, 30.196253>,  <30.026190, 39.982277, 30.050226>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.263794, 39.915497, 30.196253> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.407732, 39.544518, 30.236956>,  <29.494095, 39.321930, 30.261377>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.407732, 39.544518, 30.236956>,  <29.263794, 39.915497, 30.196253>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.407732, 39.544518, 30.236956> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.705580, -0.199147, 0.680072,
		-0.610466, -0.316516, -0.726050,
		0.359845, -0.927447, 0.101755,
		29.515686, 39.266285, 30.267483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.657358, 39.621593, 30.295013>,  <29.263794, 39.915497, 30.196253>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.657358, 39.621593, 30.295013> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.953806, 39.370262, 30.389624>,  <29.131676, 39.219463, 30.446390>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.953806, 39.370262, 30.389624>,  <28.657358, 39.621593, 30.295013>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.953806, 39.370262, 30.389624> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.593289, -0.448036, 0.668784,
		-0.314242, -0.635979, -0.704828,
		0.741121, -0.628327, 0.236527,
		29.176142, 39.181763, 30.460581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.495829, 38.915417, 30.186674>,  <28.657358, 39.621593, 30.295013>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.495829, 38.915417, 30.186674> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.766510, 38.915260, 30.481176>,  <28.928919, 38.915165, 30.657877>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.766510, 38.915260, 30.481176>,  <28.495829, 38.915417, 30.186674>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.766510, 38.915260, 30.481176> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.603278, -0.573534, 0.554178,
		0.422049, -0.819181, -0.388351,
		0.676705, -0.000393, 0.736254,
		28.969521, 38.915142, 30.702053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.630409, 38.153851, 30.335918>,  <28.495829, 38.915417, 30.186674>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.630409, 38.153851, 30.335918> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.744696, 38.365887, 30.655260>,  <28.813267, 38.493111, 30.846865>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.744696, 38.365887, 30.655260>,  <28.630409, 38.153851, 30.335918>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.744696, 38.365887, 30.655260> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539633, -0.599448, 0.591150,
		0.791936, -0.599718, 0.114784,
		0.285716, 0.530094, 0.798352,
		28.830410, 38.524914, 30.894766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.609016, 37.723320, 30.826487>,  <28.630409, 38.153851, 30.335918>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.609016, 37.723320, 30.826487> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.652351, 38.053581, 31.047956>,  <28.678352, 38.251740, 31.180840>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.652351, 38.053581, 31.047956>,  <28.609016, 37.723320, 30.826487>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.652351, 38.053581, 31.047956> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514040, -0.430190, 0.742091,
		0.850897, -0.365006, 0.377815,
		0.108335, 0.825655, 0.553676,
		28.684853, 38.301277, 31.214060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.801346, 37.466232, 31.585428>,  <28.609016, 37.723320, 30.826487>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.801346, 37.466232, 31.585428> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.660973, 37.836269, 31.643475>,  <28.576750, 38.058292, 31.678303>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.660973, 37.836269, 31.643475>,  <28.801346, 37.466232, 31.585428>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.660973, 37.836269, 31.643475> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552587, -0.329702, 0.765470,
		0.755973, 0.188437, 0.626895,
		-0.350932, 0.925088, 0.145117,
		28.555693, 38.113796, 31.687010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.800564, 37.637539, 32.350693>,  <28.801346, 37.466232, 31.585428>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.800564, 37.637539, 32.350693> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.534540, 37.876583, 32.171562>,  <28.374926, 38.020012, 32.064083>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.534540, 37.876583, 32.171562>,  <28.800564, 37.637539, 32.350693>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.534540, 37.876583, 32.171562> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.659075, -0.187716, 0.728274,
		0.351162, 0.779499, 0.518716,
		-0.665060, 0.597615, -0.447830,
		28.335022, 38.055866, 32.037212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.560160, 38.031319, 32.914654>,  <28.800564, 37.637539, 32.350693>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.560160, 38.031319, 32.914654> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.260406, 38.050125, 32.650467>,  <28.080555, 38.061409, 32.491955>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.260406, 38.050125, 32.650467>,  <28.560160, 38.031319, 32.914654>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.260406, 38.050125, 32.650467> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.651020, -0.234347, 0.721980,
		-0.120832, 0.971015, 0.206226,
		-0.749382, 0.047019, -0.660467,
		28.035591, 38.064232, 32.452328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.990885, 37.975067, 33.298046>,  <28.560160, 38.031319, 32.914654>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.990885, 37.975067, 33.298046> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.810181, 37.963295, 32.941383>,  <27.701759, 37.956230, 32.727386>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.810181, 37.963295, 32.941383>,  <27.990885, 37.975067, 33.298046>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.810181, 37.963295, 32.941383> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.767180, -0.497316, 0.405108,
		-0.455356, 0.867070, 0.202088,
		-0.451758, -0.029431, -0.891655,
		27.674654, 37.954464, 32.673885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.230448, 38.128159, 33.378803>,  <27.990885, 37.975067, 33.298046>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.230448, 38.128159, 33.378803> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.281586, 37.939842, 33.029629>,  <27.312269, 37.826855, 32.820126>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.281586, 37.939842, 33.029629>,  <27.230448, 38.128159, 33.378803>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.281586, 37.939842, 33.029629> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.810563, -0.556792, 0.181577,
		-0.571527, 0.684356, -0.452784,
		0.127844, -0.470786, -0.872935,
		27.319939, 37.798607, 32.767750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.551060, 38.096394, 32.962227>,  <27.230448, 38.128159, 33.378803>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.551060, 38.096394, 32.962227> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.781647, 37.788162, 32.853497>,  <26.919998, 37.603222, 32.788258>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.781647, 37.788162, 32.853497>,  <26.551060, 38.096394, 32.962227>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.781647, 37.788162, 32.853497> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.710614, -0.636997, 0.298768,
		-0.403380, 0.020936, -0.914793,
		0.576466, -0.770582, -0.271830,
		26.954586, 37.556988, 32.771946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.117950, 37.691257, 32.644207>,  <26.551060, 38.096394, 32.962227>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.117950, 37.691257, 32.644207> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.411358, 37.428997, 32.715832>,  <26.587402, 37.271641, 32.758808>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.411358, 37.428997, 32.715832>,  <26.117950, 37.691257, 32.644207>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.411358, 37.428997, 32.715832> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.679353, -0.715297, 0.163801,
		0.020687, -0.241798, -0.970106,
		0.733520, -0.655656, 0.179063,
		26.631414, 37.232300, 32.769550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.845913, 37.047852, 32.303215>,  <26.117950, 37.691257, 32.644207>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.845913, 37.047852, 32.303215> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.116026, 36.961052, 32.585178>,  <26.278095, 36.908974, 32.754356>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.116026, 36.961052, 32.585178>,  <25.845913, 37.047852, 32.303215>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.116026, 36.961052, 32.585178> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.628879, -0.668759, 0.396577,
		0.385360, -0.711107, -0.588069,
		0.675285, -0.216999, 0.704913,
		26.318611, 36.895950, 32.796654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.804426, 36.343357, 32.315651>,  <25.845913, 37.047852, 32.303215>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.804426, 36.343357, 32.315651> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.024973, 36.428532, 32.638302>,  <26.157301, 36.479637, 32.831894>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.024973, 36.428532, 32.638302>,  <25.804426, 36.343357, 32.315651>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.024973, 36.428532, 32.638302> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534789, -0.651880, 0.537637,
		0.640308, -0.727812, -0.245550,
		0.551368, 0.212936, 0.806630,
		26.190384, 36.492413, 32.880291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.005934, 35.747322, 32.543018>,  <25.804426, 36.343357, 32.315651>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.005934, 35.747322, 32.543018> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.012386, 36.000149, 32.852917>,  <26.016258, 36.151844, 33.038857>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.012386, 36.000149, 32.852917>,  <26.005934, 35.747322, 32.543018>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.012386, 36.000149, 32.852917> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479978, -0.674838, 0.560549,
		0.877132, -0.380903, 0.292493,
		0.016130, 0.632066, 0.774747,
		26.017225, 36.189770, 33.085342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.341885, 35.307636, 33.050217>,  <26.005934, 35.747322, 32.543018>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.341885, 35.307636, 33.050217> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.173931, 35.601120, 33.263897>,  <26.073158, 35.777210, 33.392105>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.173931, 35.601120, 33.263897>,  <26.341885, 35.307636, 33.050217>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.173931, 35.601120, 33.263897> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378983, -0.676567, 0.631371,
		0.824663, 0.062651, 0.562143,
		-0.419883, 0.733711, 0.534196,
		26.047966, 35.821232, 33.424156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.731144, 35.096973, 33.429657>,  <26.341885, 35.307636, 33.050217>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.731144, 35.096973, 33.429657> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.861095, 34.764118, 33.609436>,  <25.939066, 34.564407, 33.717304>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.861095, 34.764118, 33.609436>,  <25.731144, 35.096973, 33.429657>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.861095, 34.764118, 33.609436> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.904790, 0.135112, -0.403857,
		0.275337, 0.537863, 0.796802,
		0.324877, -0.832135, 0.449452,
		25.958559, 34.514477, 33.744270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.360048, 35.255497, 33.785336>,  <25.731144, 35.096973, 33.429657>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.360048, 35.255497, 33.785336> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.380579, 34.859940, 33.729534>,  <26.392897, 34.622604, 33.696053>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.380579, 34.859940, 33.729534>,  <26.360048, 35.255497, 33.785336>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.380579, 34.859940, 33.729534> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.918073, 0.101700, -0.383143,
		0.393074, -0.108409, 0.913094,
		0.051326, -0.988891, -0.139503,
		26.395977, 34.563271, 33.687683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.998692, 35.140034, 34.013023>,  <26.360048, 35.255497, 33.785336>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.998692, 35.140034, 34.013023> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.898180, 34.828793, 33.782749>,  <26.837873, 34.642048, 33.644585>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.898180, 34.828793, 33.782749>,  <26.998692, 35.140034, 34.013023>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.898180, 34.828793, 33.782749> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.860688, 0.092471, -0.500665,
		0.442803, -0.621293, 0.646468,
		-0.251280, -0.778103, -0.575686,
		26.822796, 34.595364, 33.610043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.537584, 34.615192, 34.024578>,  <26.998692, 35.140034, 34.013023>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.537584, 34.615192, 34.024578> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.325048, 34.546211, 33.692810>,  <27.197527, 34.504822, 33.493748>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.325048, 34.546211, 33.692810>,  <27.537584, 34.615192, 34.024578>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.325048, 34.546211, 33.692810> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.840243, 0.017567, -0.541925,
		0.108025, -0.984862, 0.135567,
		-0.531340, -0.172451, -0.829421,
		27.165646, 34.494476, 33.443985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.863157, 33.934998, 33.717716>,  <27.537584, 34.615192, 34.024578>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.863157, 33.934998, 33.717716> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.687311, 34.178619, 33.453659>,  <27.581804, 34.324791, 33.295223>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.687311, 34.178619, 33.453659>,  <27.863157, 33.934998, 33.717716>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.687311, 34.178619, 33.453659> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.826302, -0.013869, -0.563057,
		-0.352088, -0.793006, -0.497166,
		-0.439613, 0.609055, -0.660146,
		27.555428, 34.361336, 33.255615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.148540, 33.685364, 33.081230>,  <27.863157, 33.934998, 33.717716>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.148540, 33.685364, 33.081230> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.975109, 34.028320, 32.970318>,  <27.871050, 34.234097, 32.903770>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.975109, 34.028320, 32.970318>,  <28.148540, 33.685364, 33.081230>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.975109, 34.028320, 32.970318> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.753088, 0.175796, -0.633998,
		-0.494843, -0.483703, -0.721915,
		-0.433577, 0.857396, -0.277280,
		27.845036, 34.285538, 32.887135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.274700, 33.701366, 32.376022>,  <28.148540, 33.685364, 33.081230>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.274700, 33.701366, 32.376022> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.186625, 34.081841, 32.462528>,  <28.133780, 34.310123, 32.514431>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.186625, 34.081841, 32.462528>,  <28.274700, 33.701366, 32.376022>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.186625, 34.081841, 32.462528> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.781657, 0.304681, -0.544226,
		-0.583549, 0.049212, -0.810585,
		-0.220187, 0.951182, 0.216263,
		28.120569, 34.367195, 32.527409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.250488, 34.086647, 31.681887>,  <28.274700, 33.701366, 32.376022>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.250488, 34.086647, 31.681887> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.313854, 34.351765, 31.974628>,  <28.351873, 34.510834, 32.150272>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.313854, 34.351765, 31.974628>,  <28.250488, 34.086647, 31.681887>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.313854, 34.351765, 31.974628> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.738815, 0.412151, -0.533182,
		-0.655024, 0.625168, -0.424392,
		0.158415, 0.662795, 0.731853,
		28.361380, 34.550602, 32.194183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.483150, 34.649750, 31.277460>,  <28.250488, 34.086647, 31.681887>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.483150, 34.649750, 31.277460> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.606661, 34.735390, 31.648149>,  <28.680767, 34.786774, 31.870564>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.606661, 34.735390, 31.648149>,  <28.483150, 34.649750, 31.277460>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.606661, 34.735390, 31.648149> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.819215, 0.435187, -0.373496,
		-0.483265, 0.874512, -0.041022,
		0.308775, 0.214104, 0.926724,
		28.699293, 34.799622, 31.926167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.762606, 35.413597, 31.179514>,  <28.483150, 34.649750, 31.277460>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.762606, 35.413597, 31.179514> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.894054, 35.258080, 31.523804>,  <28.972923, 35.164768, 31.730377>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.894054, 35.258080, 31.523804>,  <28.762606, 35.413597, 31.179514>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.894054, 35.258080, 31.523804> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.929779, 0.293247, -0.222525,
		-0.165889, 0.873412, 0.457857,
		0.328621, -0.388791, 0.860726,
		28.992641, 35.141441, 31.782022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.160707, 35.893742, 31.480509>,  <28.762606, 35.413597, 31.179514>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.160707, 35.893742, 31.480509> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.271538, 35.546642, 31.645554>,  <29.338036, 35.338383, 31.744581>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.271538, 35.546642, 31.645554>,  <29.160707, 35.893742, 31.480509>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.271538, 35.546642, 31.645554> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.945653, 0.170204, -0.277077,
		0.170204, 0.466958, 0.867745,
		0.277077, -0.867745, 0.412611,
		29.354660, 35.286320, 31.769337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.663288, 35.967915, 32.021790>,  <29.160707, 35.893742, 31.480509>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.663288, 35.967915, 32.021790> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.716423, 35.606220, 31.859453>,  <29.748304, 35.389202, 31.762053>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.716423, 35.606220, 31.859453>,  <29.663288, 35.967915, 32.021790>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.716423, 35.606220, 31.859453> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.986622, 0.159682, -0.032852,
		0.094511, -0.396044, 0.913355,
		0.132835, -0.904241, -0.405837,
		29.756273, 35.334949, 31.737701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.295153, 35.787003, 32.289822>,  <29.663288, 35.967915, 32.021790>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.295153, 35.787003, 32.289822> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.255905, 35.532093, 31.984076>,  <30.232357, 35.379147, 31.800627>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.255905, 35.532093, 31.984076>,  <30.295153, 35.787003, 32.289822>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.255905, 35.532093, 31.984076> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.965835, 0.124146, -0.227486,
		0.239863, -0.760573, 0.603319,
		-0.098120, -0.637272, -0.764367,
		30.226469, 35.340912, 31.754765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.988741, 35.281845, 32.318157>,  <30.295153, 35.787003, 32.289822>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.988741, 35.281845, 32.318157> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.834154, 35.288136, 31.949291>,  <30.741402, 35.291908, 31.727970>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.834154, 35.288136, 31.949291>,  <30.988741, 35.281845, 32.318157>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.834154, 35.288136, 31.949291> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.921296, -0.040133, -0.386785,
		-0.043097, -0.999070, 0.001011,
		-0.386466, 0.015738, -0.922169,
		30.718214, 35.292854, 31.672640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.417492, 34.823711, 31.891830>,  <30.988741, 35.281845, 32.318157>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.417492, 34.823711, 31.891830> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.215757, 35.073284, 31.653049>,  <31.094717, 35.223026, 31.509781>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.215757, 35.073284, 31.653049>,  <31.417492, 34.823711, 31.891830>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.215757, 35.073284, 31.653049> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.788908, 0.051846, -0.612321,
		-0.351097, -0.779757, -0.518373,
		-0.504337, 0.623932, -0.596953,
		31.064457, 35.260464, 31.473963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.566896, 34.598984, 31.182755>,  <31.417492, 34.823711, 31.891830>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.566896, 34.598984, 31.182755> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.463919, 34.981377, 31.126444>,  <31.402132, 35.210812, 31.092657>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.463919, 34.981377, 31.126444>,  <31.566896, 34.598984, 31.182755>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.463919, 34.981377, 31.126444> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.673014, 0.072857, -0.736032,
		-0.693379, -0.284231, -0.662147,
		-0.257445, 0.955984, -0.140774,
		31.386684, 35.268173, 31.084211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.498144, 34.624424, 30.477285>,  <31.566896, 34.598984, 31.182755>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.498144, 34.624424, 30.477285> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.514378, 35.009258, 30.585173>,  <31.524118, 35.240158, 30.649904>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.514378, 35.009258, 30.585173>,  <31.498144, 34.624424, 30.477285>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.514378, 35.009258, 30.585173> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513106, 0.211562, -0.831843,
		-0.857365, 0.172153, -0.485065,
		0.040583, 0.962084, 0.269719,
		31.526552, 35.297882, 30.666088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.316236, 34.858685, 29.830263>,  <31.498144, 34.624424, 30.477285>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.316236, 34.858685, 29.830263> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.491890, 35.151081, 30.039188>,  <31.597282, 35.326519, 30.164543>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.491890, 35.151081, 30.039188>,  <31.316236, 34.858685, 29.830263>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.491890, 35.151081, 30.039188> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565702, 0.226671, -0.792844,
		-0.697957, 0.643637, -0.313986,
		0.439132, 0.730994, 0.522314,
		31.623629, 35.370380, 30.195883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.457201, 35.267544, 29.294630>,  <31.316236, 34.858685, 29.830263>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.457201, 35.267544, 29.294630> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.674360, 35.463528, 29.567451>,  <31.804655, 35.581120, 29.731144>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.674360, 35.463528, 29.567451>,  <31.457201, 35.267544, 29.294630>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.674360, 35.463528, 29.567451> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601290, 0.340192, -0.722993,
		-0.586269, 0.802624, -0.109920,
		0.542898, 0.489963, 0.682054,
		31.837231, 35.610516, 29.772068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.559286, 35.840431, 29.043974>,  <31.457201, 35.267544, 29.294630>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.559286, 35.840431, 29.043974> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.862825, 35.789444, 29.299442>,  <32.044949, 35.758854, 29.452724>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.862825, 35.789444, 29.299442>,  <31.559286, 35.840431, 29.043974>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.862825, 35.789444, 29.299442> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621812, 0.433392, -0.652320,
		-0.193647, 0.892146, 0.408138,
		0.758848, -0.127465, 0.638672,
		32.090481, 35.751205, 29.491043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.842487, 36.529083, 29.205238>,  <31.559286, 35.840431, 29.043974>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.842487, 36.529083, 29.205238> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.093048, 36.218559, 29.233423>,  <32.243385, 36.032246, 29.250334>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.093048, 36.218559, 29.233423>,  <31.842487, 36.529083, 29.205238>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.093048, 36.218559, 29.233423> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584617, 0.408078, -0.701210,
		0.515601, 0.480433, 0.709464,
		0.626401, -0.776310, 0.070464,
		32.280968, 35.985668, 29.254562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.410892, 36.836323, 28.889128>,  <31.842487, 36.529083, 29.205238>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.410892, 36.836323, 28.889128> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.500565, 36.446907, 28.871433>,  <32.554367, 36.213257, 28.860817>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.500565, 36.446907, 28.871433>,  <32.410892, 36.836323, 28.889128>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.500565, 36.446907, 28.871433> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.757463, 0.202622, -0.620640,
		0.613184, 0.105625, 0.782846,
		0.224177, -0.973544, -0.044237,
		32.567818, 36.154842, 28.858162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<35.552948, 29.378836, 46.032661> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.189232, 29.260786, 45.915291>,  <34.971004, 29.189957, 45.844868>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.189232, 29.260786, 45.915291>,  <35.552948, 29.378836, 46.032661>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.189232, 29.260786, 45.915291> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225691, -0.242689, 0.943486,
		-0.349656, 0.924123, 0.154067,
		-0.909288, -0.295124, -0.293424,
		34.916447, 29.172249, 45.827263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.190113, 29.449839, 46.627678>,  <35.552948, 29.378836, 46.032661>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.190113, 29.449839, 46.627678> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.928425, 29.248852, 46.401573>,  <34.771412, 29.128260, 46.265911>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.928425, 29.248852, 46.401573>,  <35.190113, 29.449839, 46.627678>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.928425, 29.248852, 46.401573> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421719, -0.378067, 0.824148,
		-0.627815, 0.777555, 0.035438,
		-0.654218, -0.502468, -0.565265,
		34.732159, 29.098112, 46.231995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.499729, 29.703075, 46.837059>,  <35.190113, 29.449839, 46.627678>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.499729, 29.703075, 46.837059> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.480476, 29.330858, 46.691860>,  <34.468925, 29.107527, 46.604740>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.480476, 29.330858, 46.691860>,  <34.499729, 29.703075, 46.837059>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.480476, 29.330858, 46.691860> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.558205, -0.276313, 0.782342,
		-0.828306, 0.240286, -0.506134,
		-0.048135, -0.930545, -0.363000,
		34.466038, 29.051695, 46.582958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.864914, 29.531054, 46.884701>,  <34.499729, 29.703075, 46.837059>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.864914, 29.531054, 46.884701> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.019409, 29.164232, 46.845032>,  <34.112106, 28.944139, 46.821228>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.019409, 29.164232, 46.845032>,  <33.864914, 29.531054, 46.884701>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.019409, 29.164232, 46.845032> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509486, -0.301728, 0.805843,
		-0.768925, -0.260717, -0.583764,
		0.386235, -0.917053, -0.099175,
		34.135281, 28.889116, 46.815281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.325413, 29.088829, 47.096855>,  <33.864914, 29.531054, 46.884701>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.325413, 29.088829, 47.096855> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.625378, 28.824221, 47.094959>,  <33.805355, 28.665455, 47.093822>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.625378, 28.824221, 47.094959>,  <33.325413, 29.088829, 47.096855>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.625378, 28.824221, 47.094959> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460719, -0.527395, 0.713857,
		-0.474732, -0.533146, -0.700275,
		0.749912, -0.661521, -0.004740,
		33.850349, 28.625765, 47.093536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.962486, 28.439747, 47.157413>,  <33.325413, 29.088829, 47.096855>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.962486, 28.439747, 47.157413> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.345287, 28.403229, 47.267544>,  <33.574970, 28.381317, 47.333622>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.345287, 28.403229, 47.267544>,  <32.962486, 28.439747, 47.157413>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.345287, 28.403229, 47.267544> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287593, -0.422454, 0.859548,
		0.037841, -0.901775, -0.430546,
		0.957005, -0.091296, 0.275330,
		33.632389, 28.375839, 47.350143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.994091, 27.741257, 47.490265>,  <32.962486, 28.439747, 47.157413>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.994091, 27.741257, 47.490265> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.332050, 27.910442, 47.621258>,  <33.534824, 28.011953, 47.699856>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.332050, 27.910442, 47.621258>,  <32.994091, 27.741257, 47.490265>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.332050, 27.910442, 47.621258> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153003, -0.395549, 0.905611,
		0.512579, -0.815255, -0.269484,
		0.844898, 0.422965, 0.327486,
		33.585522, 28.037333, 47.719505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.238754, 27.206926, 47.843613>,  <32.994091, 27.741257, 47.490265>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.238754, 27.206926, 47.843613> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.416016, 27.538322, 47.980564>,  <33.522373, 27.737160, 48.062733>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.416016, 27.538322, 47.980564>,  <33.238754, 27.206926, 47.843613>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.416016, 27.538322, 47.980564> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323255, -0.208547, 0.923046,
		0.836137, -0.519722, 0.175396,
		0.443150, 0.828491, 0.342376,
		33.548962, 27.786869, 48.083279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.545532, 26.966785, 48.463886>,  <33.238754, 27.206926, 47.843613>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.545532, 26.966785, 48.463886> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.538815, 27.365002, 48.501007>,  <33.534782, 27.603931, 48.523281>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.538815, 27.365002, 48.501007>,  <33.545532, 26.966785, 48.463886>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.538815, 27.365002, 48.501007> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321320, -0.093265, 0.942367,
		0.946821, -0.013990, 0.321455,
		-0.016797, 0.995543, 0.092801,
		33.533775, 27.663664, 48.528847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.922935, 27.111168, 49.070282>,  <33.545532, 26.966785, 48.463886>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.922935, 27.111168, 49.070282> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.662552, 27.403963, 48.989841>,  <33.506321, 27.579639, 48.941578>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.662552, 27.403963, 48.989841>,  <33.922935, 27.111168, 49.070282>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.662552, 27.403963, 48.989841> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508479, -0.223760, 0.831493,
		0.563645, 0.643525, 0.517860,
		-0.650963, 0.731988, -0.201098,
		33.467262, 27.623560, 48.929512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.796326, 27.320353, 49.741261>,  <33.922935, 27.111168, 49.070282>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.796326, 27.320353, 49.741261> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.504551, 27.477617, 49.517353>,  <33.329487, 27.571976, 49.383007>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.504551, 27.477617, 49.517353>,  <33.796326, 27.320353, 49.741261>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.504551, 27.477617, 49.517353> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.657794, -0.178643, 0.731706,
		0.187682, 0.901947, 0.388930,
		-0.729440, 0.393164, -0.559768,
		33.285721, 27.595566, 49.349422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.383369, 27.711313, 50.232712>,  <33.796326, 27.320353, 49.741261>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.383369, 27.711313, 50.232712> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.153767, 27.654202, 49.910191>,  <33.016006, 27.619934, 49.716679>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.153767, 27.654202, 49.910191>,  <33.383369, 27.711313, 50.232712>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.153767, 27.654202, 49.910191> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.788305, -0.170078, 0.591311,
		-0.221563, 0.975032, -0.014929,
		-0.574008, -0.142781, -0.806305,
		32.981564, 27.611366, 49.668301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.918598, 28.194757, 50.188995>,  <33.383369, 27.711313, 50.232712>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.918598, 28.194757, 50.188995> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.785290, 27.845282, 50.047241>,  <32.705303, 27.635595, 49.962189>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.785290, 27.845282, 50.047241>,  <32.918598, 28.194757, 50.188995>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.785290, 27.845282, 50.047241> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.573090, -0.110747, 0.811974,
		-0.748663, 0.473706, -0.463795,
		-0.333273, -0.873692, -0.354389,
		32.685307, 27.583174, 49.940926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.217144, 28.294641, 50.281193>,  <32.918598, 28.194757, 50.188995>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.217144, 28.294641, 50.281193> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.359402, 27.921234, 50.299343>,  <32.444756, 27.697189, 50.310234>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.359402, 27.921234, 50.299343>,  <32.217144, 28.294641, 50.281193>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.359402, 27.921234, 50.299343> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.615184, -0.197260, 0.763307,
		-0.703611, -0.299379, -0.644441,
		0.355640, -0.933521, 0.045379,
		32.466095, 27.641178, 50.312958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.477766, 28.588947, 50.644035>,  <32.217144, 28.294641, 50.281193>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.477766, 28.588947, 50.644035> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.349812, 28.943716, 50.777328>,  <31.273039, 29.156578, 50.857304>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.349812, 28.943716, 50.777328>,  <31.477766, 28.588947, 50.644035>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.349812, 28.943716, 50.777328> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288692, 0.426227, -0.857314,
		-0.902402, -0.178043, -0.392392,
		-0.319887, 0.886923, 0.333228,
		31.253845, 29.209793, 50.877296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.270947, 28.983578, 50.079437>,  <31.477766, 28.588947, 50.644035>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.270947, 28.983578, 50.079437> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.290211, 29.284149, 50.342659>,  <31.301769, 29.464493, 50.500591>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.290211, 29.284149, 50.342659>,  <31.270947, 28.983578, 50.079437>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.290211, 29.284149, 50.342659> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273323, 0.623758, -0.732271,
		-0.960716, 0.215127, -0.175343,
		0.048160, 0.751429, 0.658054,
		31.304659, 29.509579, 50.540073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.906174, 29.510818, 49.786903>,  <31.270947, 28.983578, 50.079437>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.906174, 29.510818, 49.786903> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.164234, 29.652790, 50.057549>,  <31.319071, 29.737972, 50.219936>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.164234, 29.652790, 50.057549>,  <30.906174, 29.510818, 49.786903>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.164234, 29.652790, 50.057549> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339786, 0.659891, -0.670141,
		-0.684342, 0.662247, 0.305130,
		0.645151, 0.354927, 0.676614,
		31.357780, 29.759268, 50.260532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.825455, 30.220068, 49.838127>,  <30.906174, 29.510818, 49.786903>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.825455, 30.220068, 49.838127> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.196484, 30.184704, 49.983341>,  <31.419100, 30.163485, 50.070469>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.196484, 30.184704, 49.983341>,  <30.825455, 30.220068, 49.838127>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.196484, 30.184704, 49.983341> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323921, 0.674565, -0.663353,
		-0.186244, 0.732902, 0.654345,
		0.927571, -0.088411, 0.363036,
		31.474754, 30.158180, 50.092251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.081562, 30.932730, 49.936684>,  <30.825455, 30.220068, 49.838127>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.081562, 30.932730, 49.936684> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.409681, 30.704144, 49.945957>,  <31.606554, 30.566992, 49.951523>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.409681, 30.704144, 49.945957>,  <31.081562, 30.932730, 49.936684>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.409681, 30.704144, 49.945957> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413316, 0.564296, -0.714661,
		0.395321, 0.595818, 0.699087,
		0.820299, -0.571464, 0.023183,
		31.655771, 30.532703, 49.952911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.661083, 31.440062, 49.847946>,  <31.081562, 30.932730, 49.936684>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.661083, 31.440062, 49.847946> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.829027, 31.084414, 49.775078>,  <31.929794, 30.871025, 49.731358>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.829027, 31.084414, 49.775078>,  <31.661083, 31.440062, 49.847946>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.829027, 31.084414, 49.775078> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.645847, 0.433713, -0.628311,
		0.637652, 0.146149, 0.756334,
		0.419859, -0.889119, -0.182168,
		31.954985, 30.817678, 49.720428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.462730, 31.507372, 49.821125>,  <31.661083, 31.440062, 49.847946>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.462730, 31.507372, 49.821125> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.318813, 31.203493, 49.604454>,  <32.232464, 31.021166, 49.474453>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.318813, 31.203493, 49.604454>,  <32.462730, 31.507372, 49.821125>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.318813, 31.203493, 49.604454> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500199, 0.333030, -0.799308,
		0.787625, -0.558528, 0.260178,
		-0.359789, -0.759696, -0.541678,
		32.210876, 30.975584, 49.441952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.991722, 31.338787, 49.395596>,  <32.462730, 31.507372, 49.821125>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.991722, 31.338787, 49.395596> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.668522, 31.171673, 49.229420>,  <32.474602, 31.071404, 49.129715>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.668522, 31.171673, 49.229420>,  <32.991722, 31.338787, 49.395596>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.668522, 31.171673, 49.229420> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329914, 0.263385, -0.906523,
		0.488156, -0.869530, -0.074981,
		-0.807998, -0.417788, -0.415443,
		32.426121, 31.046337, 49.104786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.288189, 30.950974, 48.817318>,  <32.991722, 31.338787, 49.395596>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.288189, 30.950974, 48.817318> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.898300, 31.010532, 48.750687>,  <32.664368, 31.046268, 48.710709>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.898300, 31.010532, 48.750687>,  <33.288189, 30.950974, 48.817318>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.898300, 31.010532, 48.750687> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175952, 0.052051, -0.983022,
		-0.137702, -0.987481, -0.076934,
		-0.974720, 0.148900, -0.166582,
		32.605885, 31.055202, 48.700710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.118752, 30.598497, 48.204391>,  <33.288189, 30.950974, 48.817318>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.118752, 30.598497, 48.204391> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.796047, 30.834730, 48.211845>,  <32.602425, 30.976469, 48.216316>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.796047, 30.834730, 48.211845>,  <33.118752, 30.598497, 48.204391>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.796047, 30.834730, 48.211845> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115561, 0.188629, -0.975226,
		-0.579464, -0.784623, -0.220426,
		-0.806763, 0.590581, 0.018632,
		32.554020, 31.011904, 48.217434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.784798, 30.485468, 47.527245>,  <33.118752, 30.598497, 48.204391>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.784798, 30.485468, 47.527245> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.622082, 30.832308, 47.642250>,  <32.524452, 31.040411, 47.711254>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.622082, 30.832308, 47.642250>,  <32.784798, 30.485468, 47.527245>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.622082, 30.832308, 47.642250> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198557, 0.391126, -0.898663,
		-0.891683, -0.308479, -0.331275,
		-0.406789, 0.867099, 0.287510,
		32.500046, 31.092438, 47.728504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.143879, 30.591997, 47.117645>,  <32.784798, 30.485468, 47.527245>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.143879, 30.591997, 47.117645> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.259991, 30.949547, 47.254311>,  <32.329659, 31.164076, 47.336308>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.259991, 30.949547, 47.254311>,  <32.143879, 30.591997, 47.117645>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.259991, 30.949547, 47.254311> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143484, 0.312341, -0.939072,
		-0.946124, 0.321615, -0.037591,
		0.290278, 0.893872, 0.341660,
		32.347073, 31.217709, 47.356808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.887487, 31.057556, 46.701481>,  <32.143879, 30.591997, 47.117645>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.887487, 31.057556, 46.701481> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.142906, 31.300190, 46.890926>,  <32.296158, 31.445770, 47.004593>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.142906, 31.300190, 46.890926>,  <31.887487, 31.057556, 46.701481>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.142906, 31.300190, 46.890926> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115429, 0.532968, -0.838225,
		-0.760875, 0.589917, 0.270309,
		0.638549, 0.606583, 0.473616,
		32.334473, 31.482164, 47.033012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.706514, 31.776169, 46.708336>,  <31.887487, 31.057556, 46.701481>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.706514, 31.776169, 46.708336> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.101952, 31.795031, 46.765556>,  <32.339214, 31.806349, 46.799889>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.101952, 31.795031, 46.765556>,  <31.706514, 31.776169, 46.708336>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.101952, 31.795031, 46.765556> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074003, 0.675133, -0.733975,
		-0.131190, 0.736188, 0.663940,
		0.988591, 0.047157, 0.143051,
		32.398529, 31.809177, 46.808472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.207411, 32.183601, 47.135963>,  <31.706514, 31.776169, 46.708336>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.207411, 32.183601, 47.135963> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.842106, 32.317905, 47.043690>,  <30.622923, 32.398487, 46.988327>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.842106, 32.317905, 47.043690>,  <31.207411, 32.183601, 47.135963>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.842106, 32.317905, 47.043690> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351218, -0.362086, 0.863446,
		0.206387, 0.869573, 0.448606,
		-0.913264, 0.335762, -0.230680,
		30.568127, 32.418633, 46.974487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.967369, 32.607780, 47.691917>,  <31.207411, 32.183601, 47.135963>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.967369, 32.607780, 47.691917> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.635263, 32.507771, 47.492661>,  <30.435999, 32.447765, 47.373108>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.635263, 32.507771, 47.492661>,  <30.967369, 32.607780, 47.691917>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.635263, 32.507771, 47.492661> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444077, -0.243362, 0.862305,
		-0.336830, 0.937155, 0.091023,
		-0.830266, -0.250029, -0.498140,
		30.386183, 32.432762, 47.343220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.492514, 32.582157, 48.205776>,  <30.967369, 32.607780, 47.691917>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.492514, 32.582157, 48.205776> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.323483, 32.386269, 47.900726>,  <30.222065, 32.268734, 47.717697>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.323483, 32.386269, 47.900726>,  <30.492514, 32.582157, 48.205776>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.323483, 32.386269, 47.900726> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524305, -0.554270, 0.646444,
		-0.739279, 0.673021, -0.022542,
		-0.422576, -0.489721, -0.762629,
		30.196711, 32.239353, 47.671936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.850988, 32.450111, 48.431835>,  <30.492514, 32.582157, 48.205776>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.850988, 32.450111, 48.431835> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.886631, 32.180557, 48.138458>,  <29.908016, 32.018826, 47.962433>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.886631, 32.180557, 48.138458>,  <29.850988, 32.450111, 48.431835>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.886631, 32.180557, 48.138458> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506548, -0.664688, 0.549181,
		-0.857595, 0.322588, -0.400584,
		0.089104, -0.673890, -0.733439,
		29.913363, 31.978390, 47.918427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.222048, 32.278347, 48.326424>,  <29.850988, 32.450111, 48.431835>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.222048, 32.278347, 48.326424> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.462746, 31.985157, 48.199524>,  <29.607164, 31.809242, 48.123386>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.462746, 31.985157, 48.199524>,  <29.222048, 32.278347, 48.326424>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.462746, 31.985157, 48.199524> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391412, -0.616875, 0.682834,
		-0.696205, -0.286716, -0.658097,
		0.601743, -0.732980, -0.317248,
		29.643269, 31.765263, 48.104351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.780476, 31.751053, 48.302399>,  <29.222048, 32.278347, 48.326424>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.780476, 31.751053, 48.302399> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.142357, 31.581547, 48.319996>,  <29.359486, 31.479843, 48.330555>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.142357, 31.581547, 48.319996>,  <28.780476, 31.751053, 48.302399>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.142357, 31.581547, 48.319996> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359569, -0.704088, 0.612348,
		-0.228518, -0.569811, -0.789364,
		0.904704, -0.423763, 0.043990,
		29.413769, 31.454418, 48.333195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.752808, 30.990372, 48.106850>,  <28.780476, 31.751053, 48.302399>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.752808, 30.990372, 48.106850> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.074959, 31.055685, 48.334782>,  <29.268250, 31.094873, 48.471539>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.074959, 31.055685, 48.334782>,  <28.752808, 30.990372, 48.106850>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.074959, 31.055685, 48.334782> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367681, -0.616417, 0.696305,
		0.464946, -0.770304, -0.436413,
		0.805379, 0.163284, 0.569827,
		29.316572, 31.104670, 48.505730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.733528, 30.293985, 47.643799>,  <28.752808, 30.990372, 48.106850>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.733528, 30.293985, 47.643799> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.532658, 30.013250, 47.441711>,  <28.412136, 29.844809, 47.320457>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.532658, 30.013250, 47.441711>,  <28.733528, 30.293985, 47.643799>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.532658, 30.013250, 47.441711> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182275, 0.485194, -0.855197,
		0.845338, -0.521547, -0.115724,
		-0.502175, -0.701837, -0.505218,
		28.382006, 29.802700, 47.290146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.185081, 30.214691, 46.999901>,  <28.733528, 30.293985, 47.643799>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.185081, 30.214691, 46.999901> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.803425, 30.110895, 46.940197>,  <28.574430, 30.048616, 46.904373>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.803425, 30.110895, 46.940197>,  <29.185081, 30.214691, 46.999901>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.803425, 30.110895, 46.940197> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016645, 0.451847, -0.891940,
		0.298894, -0.853522, -0.426806,
		-0.954141, -0.259491, -0.149261,
		28.517183, 30.033047, 46.895420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.080315, 29.922783, 46.281040>,  <29.185081, 30.214691, 46.999901>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.080315, 29.922783, 46.281040> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.714706, 30.041412, 46.391754>,  <28.495342, 30.112591, 46.458183>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.714706, 30.041412, 46.391754>,  <29.080315, 29.922783, 46.281040>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.714706, 30.041412, 46.391754> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167146, 0.346358, -0.923092,
		-0.369632, -0.889988, -0.267007,
		-0.914021, 0.296575, 0.276783,
		28.440500, 30.130384, 46.474789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.621147, 29.732862, 45.771164>,  <29.080315, 29.922783, 46.281040>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.621147, 29.732862, 45.771164> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.428900, 30.023567, 45.967457>,  <28.313551, 30.197990, 46.085232>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.428900, 30.023567, 45.967457>,  <28.621147, 29.732862, 45.771164>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.428900, 30.023567, 45.967457> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231267, 0.434749, -0.870350,
		-0.845884, -0.531798, -0.040872,
		-0.480619, 0.726763, 0.490735,
		28.284714, 30.241596, 46.114677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.039545, 29.864677, 45.323196>,  <28.621147, 29.732862, 45.771164>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.039545, 29.864677, 45.323196> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.081875, 30.184341, 45.559891>,  <28.107273, 30.376141, 45.701908>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.081875, 30.184341, 45.559891>,  <28.039545, 29.864677, 45.323196>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.081875, 30.184341, 45.559891> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024659, 0.596999, -0.801863,
		-0.994079, 0.070264, 0.082883,
		0.105823, 0.799159, 0.591731,
		28.113623, 30.424089, 45.737411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.863197, 30.404039, 44.867634>,  <28.039545, 29.864677, 45.323196>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.863197, 30.404039, 44.867634> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.998524, 30.614832, 45.179489>,  <28.079720, 30.741306, 45.366604>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.998524, 30.614832, 45.179489>,  <27.863197, 30.404039, 44.867634>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.998524, 30.614832, 45.179489> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226819, 0.758399, -0.611051,
		-0.913288, 0.383566, 0.137051,
		0.338318, 0.526980, 0.779637,
		28.100019, 30.772926, 45.413380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.636597, 31.152088, 44.835320>,  <27.863197, 30.404039, 44.867634>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.636597, 31.152088, 44.835320> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.954561, 31.161079, 45.077843>,  <28.145340, 31.166475, 45.223358>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.954561, 31.161079, 45.077843>,  <27.636597, 31.152088, 44.835320>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.954561, 31.161079, 45.077843> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444058, 0.659399, -0.606635,
		-0.413437, 0.751457, 0.514180,
		0.794910, 0.022479, 0.606311,
		28.193035, 31.167824, 45.259735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<30.716721, 26.244299, 48.190441> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.092829, 26.380098, 48.180382>,  <31.318493, 26.461578, 48.174347>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.092829, 26.380098, 48.180382>,  <30.716721, 26.244299, 48.190441>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.092829, 26.380098, 48.180382> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077404, 0.141280, -0.986939,
		-0.331510, 0.929937, 0.159120,
		0.940271, 0.339496, -0.025145,
		31.374910, 26.481947, 48.172840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.731077, 26.827229, 47.697163>,  <30.716721, 26.244299, 48.190441>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.731077, 26.827229, 47.697163> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.116831, 26.726391, 47.729187>,  <31.348284, 26.665888, 47.748402>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.116831, 26.726391, 47.729187>,  <30.731077, 26.827229, 47.697163>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.116831, 26.726391, 47.729187> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143362, 0.243813, -0.959168,
		0.222278, 0.936486, 0.271270,
		0.964386, -0.252092, 0.080062,
		31.406147, 26.650763, 47.753204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.089338, 27.360762, 47.609566>,  <30.731077, 26.827229, 47.697163>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.089338, 27.360762, 47.609566> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.311775, 27.047087, 47.499428>,  <31.445238, 26.858883, 47.433346>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.311775, 27.047087, 47.499428>,  <31.089338, 27.360762, 47.609566>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.311775, 27.047087, 47.499428> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074360, 0.376905, -0.923262,
		0.827786, 0.492947, 0.267906,
		0.556095, -0.784185, -0.275341,
		31.478603, 26.811831, 47.416824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.469793, 27.628523, 47.141533>,  <31.089338, 27.360762, 47.609566>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.469793, 27.628523, 47.141533> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.576220, 27.247591, 47.081833>,  <31.640076, 27.019032, 47.046013>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.576220, 27.247591, 47.081833>,  <31.469793, 27.628523, 47.141533>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.576220, 27.247591, 47.081833> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314902, 0.232203, -0.920282,
		0.911069, 0.197856, 0.361672,
		0.266065, -0.952331, -0.149248,
		31.656038, 26.961891, 47.037060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.106430, 27.595356, 46.693939>,  <31.469793, 27.628523, 47.141533>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.106430, 27.595356, 46.693939> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.027279, 27.208778, 46.628426>,  <31.979788, 26.976831, 46.589115>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.027279, 27.208778, 46.628426>,  <32.106430, 27.595356, 46.693939>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.027279, 27.208778, 46.628426> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289842, 0.101933, -0.951631,
		0.936395, -0.235779, 0.259946,
		-0.197878, -0.966446, -0.163788,
		31.967916, 26.918844, 46.579288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.736835, 27.240564, 46.420910>,  <32.106430, 27.595356, 46.693939>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.736835, 27.240564, 46.420910> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.401562, 27.049376, 46.315849>,  <32.200397, 26.934662, 46.252811>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.401562, 27.049376, 46.315849>,  <32.736835, 27.240564, 46.420910>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.401562, 27.049376, 46.315849> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347822, -0.097549, -0.932472,
		0.420073, -0.872942, 0.248013,
		-0.838187, -0.477971, -0.262651,
		32.150105, 26.905985, 46.237053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.958214, 26.696508, 45.977028>,  <32.736835, 27.240564, 46.420910>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.958214, 26.696508, 45.977028> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.566242, 26.721586, 45.901333>,  <32.331059, 26.736633, 45.855915>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.566242, 26.721586, 45.901333>,  <32.958214, 26.696508, 45.977028>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.566242, 26.721586, 45.901333> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185467, -0.061401, -0.980730,
		-0.073118, -0.996141, 0.048538,
		-0.979926, 0.062707, -0.189241,
		32.272263, 26.740395, 45.844563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.824532, 26.217297, 45.444668>,  <32.958214, 26.696508, 45.977028>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.824532, 26.217297, 45.444668> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.500118, 26.450241, 45.422482>,  <32.305470, 26.590008, 45.409172>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.500118, 26.450241, 45.422482>,  <32.824532, 26.217297, 45.444668>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.500118, 26.450241, 45.422482> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145325, 0.108734, -0.983391,
		-0.566656, -0.805627, -0.172819,
		-0.811037, 0.582359, -0.055463,
		32.256805, 26.624949, 45.405842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.404644, 26.009266, 44.847126>,  <32.824532, 26.217297, 45.444668>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.404644, 26.009266, 44.847126> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.299301, 26.388927, 44.916122>,  <32.236095, 26.616724, 44.957520>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.299301, 26.388927, 44.916122>,  <32.404644, 26.009266, 44.847126>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.299301, 26.388927, 44.916122> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032893, 0.187538, -0.981707,
		-0.964138, -0.252864, -0.080610,
		-0.263356, 0.949152, 0.172495,
		32.220295, 26.673674, 44.967873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.888083, 26.170624, 44.435768>,  <32.404644, 26.009266, 44.847126>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.888083, 26.170624, 44.435768> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.038177, 26.526020, 44.541435>,  <32.128235, 26.739258, 44.604836>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.038177, 26.526020, 44.541435>,  <31.888083, 26.170624, 44.435768>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.038177, 26.526020, 44.541435> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019002, 0.277554, -0.960522,
		-0.926734, 0.365443, 0.087265,
		0.375237, 0.888490, 0.264163,
		32.150749, 26.792566, 44.620686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.682886, 26.661722, 43.883205>,  <31.888083, 26.170624, 44.435768>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.682886, 26.661722, 43.883205> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.988111, 26.854523, 44.055439>,  <32.171246, 26.970203, 44.158779>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.988111, 26.854523, 44.055439>,  <31.682886, 26.661722, 43.883205>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.988111, 26.854523, 44.055439> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228838, 0.421568, -0.877447,
		-0.604453, 0.768084, 0.211383,
		0.763066, 0.482003, 0.430585,
		32.217030, 26.999125, 44.184616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.789272, 27.368042, 43.517834>,  <31.682886, 26.661722, 43.883205>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.789272, 27.368042, 43.517834> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.129391, 27.282251, 43.710083>,  <32.333462, 27.230778, 43.825432>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.129391, 27.282251, 43.710083>,  <31.789272, 27.368042, 43.517834>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.129391, 27.282251, 43.710083> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522962, 0.447080, -0.725693,
		-0.059234, 0.868401, 0.492312,
		0.850295, -0.214475, 0.480623,
		32.384480, 27.217909, 43.854271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.310238, 27.879232, 43.783031>,  <31.789272, 27.368042, 43.517834>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.310238, 27.879232, 43.783031> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.969555, 28.084799, 43.742073>,  <30.765144, 28.208139, 43.717499>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.969555, 28.084799, 43.742073>,  <31.310238, 27.879232, 43.783031>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.969555, 28.084799, 43.742073> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368139, -0.447751, 0.814858,
		0.372920, 0.731717, 0.570545,
		-0.851707, 0.513916, -0.102398,
		30.714043, 28.238974, 43.711353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.046776, 27.911350, 44.456955>,  <31.310238, 27.879232, 43.783031>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.046776, 27.911350, 44.456955> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.732615, 28.060509, 44.259335>,  <30.544117, 28.150003, 44.140762>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.732615, 28.060509, 44.259335>,  <31.046776, 27.911350, 44.456955>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.732615, 28.060509, 44.259335> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.618964, -0.479093, 0.622377,
		-0.004616, 0.794619, 0.607091,
		-0.785405, 0.372895, -0.494053,
		30.496992, 28.172377, 44.111118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.575804, 28.083099, 44.991817>,  <31.046776, 27.911350, 44.456955>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.575804, 28.083099, 44.991817> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.372541, 28.030634, 44.651329>,  <30.250584, 27.999155, 44.447037>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.372541, 28.030634, 44.651329>,  <30.575804, 28.083099, 44.991817>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.372541, 28.030634, 44.651329> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.675626, -0.552240, 0.488427,
		-0.534140, 0.823303, 0.192008,
		-0.508157, -0.131162, -0.851218,
		30.220095, 27.991285, 44.395962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.854422, 28.223646, 45.183170>,  <30.575804, 28.083099, 44.991817>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.854422, 28.223646, 45.183170> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.855110, 28.000988, 44.850872>,  <29.855522, 27.867393, 44.651493>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.855110, 28.000988, 44.850872>,  <29.854422, 28.223646, 45.183170>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.855110, 28.000988, 44.850872> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.695539, -0.597550, 0.398949,
		-0.718487, 0.577132, -0.388195,
		0.001719, -0.556644, -0.830750,
		29.855625, 27.833994, 44.601646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.194721, 28.293900, 45.004528>,  <29.854422, 28.223646, 45.183170>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.194721, 28.293900, 45.004528> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.341400, 27.954626, 44.851627>,  <29.429407, 27.751062, 44.759888>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.341400, 27.954626, 44.851627>,  <29.194721, 28.293900, 45.004528>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.341400, 27.954626, 44.851627> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.694334, -0.522978, 0.494362,
		-0.619221, 0.084133, -0.780696,
		0.366695, -0.848184, -0.382256,
		29.451408, 27.700171, 44.736950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.641052, 27.873766, 44.923069>,  <29.194721, 28.293900, 45.004528>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.641052, 27.873766, 44.923069> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.951860, 27.623268, 44.897598>,  <29.138346, 27.472969, 44.882317>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.951860, 27.623268, 44.897598>,  <28.641052, 27.873766, 44.923069>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.951860, 27.623268, 44.897598> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538134, -0.713345, 0.448944,
		-0.326574, -0.314572, -0.891288,
		0.777021, -0.626246, -0.063678,
		29.184967, 27.435394, 44.878494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.188820, 27.323830, 44.825703>,  <28.641052, 27.873766, 44.923069>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.188820, 27.323830, 44.825703> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.562069, 27.201700, 44.901657>,  <28.786018, 27.128424, 44.947231>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.562069, 27.201700, 44.901657>,  <28.188820, 27.323830, 44.825703>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.562069, 27.201700, 44.901657> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358180, -0.835488, 0.416734,
		0.031414, -0.456880, -0.888974,
		0.933124, -0.305321, 0.189891,
		28.842007, 27.110104, 44.958626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.280848, 26.541986, 44.757793>,  <28.188820, 27.323830, 44.825703>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.280848, 26.541986, 44.757793> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.560408, 26.681152, 45.007751>,  <28.728144, 26.764652, 45.157726>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.560408, 26.681152, 45.007751>,  <28.280848, 26.541986, 44.757793>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.560408, 26.681152, 45.007751> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226885, -0.720733, 0.655033,
		0.678277, -0.599582, -0.424785,
		0.698902, 0.347917, 0.624892,
		28.770079, 26.785528, 45.195221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.615294, 25.976650, 45.136688>,  <28.280848, 26.541986, 44.757793>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.615294, 25.976650, 45.136688> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.701929, 26.289686, 45.370148>,  <28.753910, 26.477507, 45.510223>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.701929, 26.289686, 45.370148>,  <28.615294, 25.976650, 45.136688>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.701929, 26.289686, 45.370148> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161621, -0.560846, 0.811992,
		0.962791, -0.270199, 0.005009,
		0.216590, 0.782588, 0.583647,
		28.766907, 26.524464, 45.545242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.868471, 25.653980, 45.729073>,  <28.615294, 25.976650, 45.136688>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.868471, 25.653980, 45.729073> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.816765, 26.025320, 45.868477>,  <28.785742, 26.248123, 45.952118>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.816765, 26.025320, 45.868477>,  <28.868471, 25.653980, 45.729073>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.816765, 26.025320, 45.868477> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220462, -0.369570, 0.902671,
		0.966792, 0.039849, 0.252438,
		-0.129264, 0.928348, 0.348512,
		28.777987, 26.303825, 45.973030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.223787, 25.689901, 46.327095>,  <28.868471, 25.653980, 45.729073>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.223787, 25.689901, 46.327095> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.954220, 25.980465, 46.381004>,  <28.792479, 26.154802, 46.413349>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.954220, 25.980465, 46.381004>,  <29.223787, 25.689901, 46.327095>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.954220, 25.980465, 46.381004> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208195, -0.361754, 0.908729,
		0.708864, 0.584351, 0.395027,
		-0.673919, 0.726408, 0.134775,
		28.752045, 26.198387, 46.421436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.325199, 25.986456, 46.976189>,  <29.223787, 25.689901, 46.327095>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.325199, 25.986456, 46.976189> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.944452, 26.071171, 46.887558>,  <28.716003, 26.122000, 46.834377>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.944452, 26.071171, 46.887558>,  <29.325199, 25.986456, 46.976189>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.944452, 26.071171, 46.887558> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288801, -0.377504, 0.879821,
		0.102686, 0.901464, 0.420497,
		-0.951866, 0.211785, -0.221579,
		28.658892, 26.134706, 46.821083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.069288, 26.234137, 47.599861>,  <29.325199, 25.986456, 46.976189>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.069288, 26.234137, 47.599861> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.740389, 26.158464, 47.385155>,  <28.543049, 26.113062, 47.256332>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.740389, 26.158464, 47.385155>,  <29.069288, 26.234137, 47.599861>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.740389, 26.158464, 47.385155> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423863, -0.425826, 0.799382,
		-0.379795, 0.884807, 0.269949,
		-0.822250, -0.189180, -0.536764,
		28.493713, 26.101709, 47.224125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.467335, 26.586716, 47.866558>,  <29.069288, 26.234137, 47.599861>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.467335, 26.586716, 47.866558> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.346718, 26.268459, 47.656403>,  <28.274347, 26.077505, 47.530312>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.346718, 26.268459, 47.656403>,  <28.467335, 26.586716, 47.866558>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.346718, 26.268459, 47.656403> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497104, -0.339020, 0.798720,
		-0.813610, 0.502019, -0.293287,
		-0.301542, -0.795640, -0.525385,
		28.256256, 26.029768, 47.498787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.497688, 27.164551, 48.265003>,  <28.467335, 26.586716, 47.866558>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.497688, 27.164551, 48.265003> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.324472, 27.315842, 48.592274>,  <28.220543, 27.406616, 48.788635>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.324472, 27.315842, 48.592274>,  <28.497688, 27.164551, 48.265003>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.324472, 27.315842, 48.592274> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154773, 0.863021, -0.480874,
		-0.887987, -0.334871, -0.315184,
		-0.433041, 0.378228, 0.818181,
		28.194561, 27.429310, 48.837727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.848452, 27.377226, 48.053936>,  <28.497688, 27.164551, 48.265003>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.848452, 27.377226, 48.053936> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.931431, 27.582380, 48.387142>,  <27.981218, 27.705473, 48.587067>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.931431, 27.582380, 48.387142>,  <27.848452, 27.377226, 48.053936>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.931431, 27.582380, 48.387142> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165292, 0.857672, -0.486906,
		-0.964180, -0.036683, 0.262699,
		0.207449, 0.512887, 0.833014,
		27.993666, 27.736246, 48.637047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.287519, 27.715080, 48.200920>,  <27.848452, 27.377226, 48.053936>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.287519, 27.715080, 48.200920> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.609041, 27.892300, 48.359718>,  <27.801954, 27.998631, 48.454998>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.609041, 27.892300, 48.359718>,  <27.287519, 27.715080, 48.200920>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.609041, 27.892300, 48.359718> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153556, 0.799246, -0.581056,
		-0.574732, 0.406095, 0.710471,
		0.803806, 0.443048, 0.396994,
		27.850183, 28.025215, 48.478817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.124922, 28.405611, 48.088985>,  <27.287519, 27.715080, 48.200920>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.124922, 28.405611, 48.088985> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.503094, 28.458796, 48.207970>,  <27.729998, 28.490705, 48.279362>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.503094, 28.458796, 48.207970>,  <27.124922, 28.405611, 48.088985>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.503094, 28.458796, 48.207970> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023489, 0.938388, -0.344784,
		-0.324977, 0.318983, 0.890303,
		0.945430, 0.132959, 0.297461,
		27.786722, 28.498684, 48.297207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.210052, 29.122900, 48.231861>,  <27.124922, 28.405611, 48.088985>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.210052, 29.122900, 48.231861> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.586973, 29.000711, 48.177078>,  <27.813126, 28.927399, 48.144207>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.586973, 29.000711, 48.177078>,  <27.210052, 29.122900, 48.231861>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.586973, 29.000711, 48.177078> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178502, 0.804578, -0.566385,
		0.283207, 0.509257, 0.812681,
		0.942301, -0.305469, -0.136959,
		27.869663, 28.909071, 48.135990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.621679, 29.633295, 48.271046>,  <27.210052, 29.122900, 48.231861>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.621679, 29.633295, 48.271046> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.877552, 29.417997, 48.051556>,  <28.031076, 29.288818, 47.919861>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.877552, 29.417997, 48.051556>,  <27.621679, 29.633295, 48.271046>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.877552, 29.417997, 48.051556> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190638, 0.802687, -0.565111,
		0.744624, 0.256882, 0.616073,
		0.639681, -0.538242, -0.548729,
		28.069456, 29.256525, 47.886936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.117968, 30.238092, 48.037354>,  <27.621679, 29.633295, 48.271046>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.117968, 30.238092, 48.037354> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.187057, 29.914082, 47.813206>,  <28.228512, 29.719675, 47.678715>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.187057, 29.914082, 47.813206>,  <28.117968, 30.238092, 48.037354>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.187057, 29.914082, 47.813206> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153507, 0.584111, -0.797026,
		0.972935, 0.051644, 0.225235,
		0.172724, -0.810029, -0.560374,
		28.238874, 29.671072, 47.645092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.727827, 30.363516, 48.517067>,  <28.117968, 30.238092, 48.037354>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.727827, 30.363516, 48.517067> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.018375, 30.583895, 48.681431>,  <29.192703, 30.716122, 48.780048>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.018375, 30.583895, 48.681431>,  <28.727827, 30.363516, 48.517067>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.018375, 30.583895, 48.681431> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110109, -0.496850, 0.860823,
		0.678427, -0.670520, -0.300232,
		0.726369, 0.550948, 0.410907,
		29.236286, 30.749180, 48.804703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.253523, 29.855160, 48.943573>,  <28.727827, 30.363516, 48.517067>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.253523, 29.855160, 48.943573> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.282480, 30.236496, 49.060810>,  <29.299854, 30.465298, 49.131153>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.282480, 30.236496, 49.060810>,  <29.253523, 29.855160, 48.943573>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.282480, 30.236496, 49.060810> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007495, -0.293334, 0.955981,
		0.997348, -0.071403, -0.014090,
		0.072393, 0.953340, 0.293091,
		29.304197, 30.522497, 49.148739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.739737, 29.827251, 49.515198>,  <29.253523, 29.855160, 48.943573>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.739737, 29.827251, 49.515198> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.536850, 30.166245, 49.577812>,  <29.415117, 30.369640, 49.615383>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.536850, 30.166245, 49.577812>,  <29.739737, 29.827251, 49.515198>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.536850, 30.166245, 49.577812> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042948, -0.206270, 0.977552,
		0.860747, 0.489109, 0.141022,
		-0.507218, 0.847482, 0.156540,
		29.384684, 30.420488, 49.624775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.928375, 30.107294, 50.168411>,  <29.739737, 29.827251, 49.515198>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.928375, 30.107294, 50.168411> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.565702, 30.261202, 50.099266>,  <29.348099, 30.353546, 50.057777>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.565702, 30.261202, 50.099266>,  <29.928375, 30.107294, 50.168411>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.565702, 30.261202, 50.099266> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279871, -0.242123, 0.929004,
		0.315600, 0.890689, 0.327214,
		-0.906680, 0.384772, -0.172864,
		29.293699, 30.376633, 50.047405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.677124, 30.477665, 50.791847>,  <29.928375, 30.107294, 50.168411>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.677124, 30.477665, 50.791847> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.335443, 30.433422, 50.588631>,  <29.130436, 30.406876, 50.466702>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.335443, 30.433422, 50.588631>,  <29.677124, 30.477665, 50.791847>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.335443, 30.433422, 50.588631> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466295, -0.269307, 0.842640,
		-0.230022, 0.956681, 0.178467,
		-0.854201, -0.110607, -0.508043,
		29.079184, 30.400240, 50.436218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.160570, 30.836624, 51.131199>,  <29.677124, 30.477665, 50.791847>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.160570, 30.836624, 51.131199> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.966820, 30.569872, 50.904697>,  <28.850571, 30.409821, 50.768795>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.966820, 30.569872, 50.904697>,  <29.160570, 30.836624, 51.131199>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.966820, 30.569872, 50.904697> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.684140, -0.114687, 0.720277,
		-0.545283, 0.736284, -0.400689,
		-0.484375, -0.666883, -0.566258,
		28.821507, 30.369806, 50.734821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.414648, 30.947033, 51.384018>,  <29.160570, 30.836624, 51.131199>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.414648, 30.947033, 51.384018> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.439600, 30.608116, 51.173038>,  <28.454571, 30.404766, 51.046452>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.439600, 30.608116, 51.173038>,  <28.414648, 30.947033, 51.384018>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.439600, 30.608116, 51.173038> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.713566, -0.407357, 0.569986,
		-0.697806, 0.340815, -0.630010,
		0.062379, -0.847293, -0.527450,
		28.458313, 30.353928, 51.014805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.660023, 30.756371, 51.149174>,  <28.414648, 30.947033, 51.384018>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.660023, 30.756371, 51.149174> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.891098, 30.432316, 51.189075>,  <28.029743, 30.237883, 51.213017>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.891098, 30.432316, 51.189075>,  <27.660023, 30.756371, 51.149174>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.891098, 30.432316, 51.189075> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467738, -0.228397, 0.853848,
		-0.668951, -0.539917, -0.510875,
		0.577690, -0.810138, 0.099753,
		28.064405, 30.189274, 51.219002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.230326, 30.270176, 51.494431>,  <27.660023, 30.756371, 51.149174>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.230326, 30.270176, 51.494431> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.598461, 30.115011, 51.514416>,  <27.819344, 30.021912, 51.526405>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.598461, 30.115011, 51.514416>,  <27.230326, 30.270176, 51.494431>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.598461, 30.115011, 51.514416> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132002, -0.187819, 0.973293,
		-0.368171, -0.902356, -0.224063,
		0.920340, -0.387915, 0.049963,
		27.874563, 29.998638, 51.529404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<32.925034, 36.445492, 37.706059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.283218, 36.305927, 37.816624>,  <33.498131, 36.222187, 37.882961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.283218, 36.305927, 37.816624>,  <32.925034, 36.445492, 37.706059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.283218, 36.305927, 37.816624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425612, -0.489238, 0.761249,
		-0.130376, -0.799316, -0.586596,
		0.895465, -0.348911, 0.276414,
		33.551857, 36.201256, 37.899548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.807587, 35.802532, 37.854515>,  <32.925034, 36.445492, 37.706059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.807587, 35.802532, 37.854515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.126545, 35.908081, 38.071598>,  <33.317921, 35.971409, 38.201847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.126545, 35.908081, 38.071598>,  <32.807587, 35.802532, 37.854515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.126545, 35.908081, 38.071598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434613, -0.372811, 0.819831,
		0.418659, -0.889597, -0.182595,
		0.797393, 0.263872, 0.542711,
		33.365765, 35.987244, 38.234413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.926823, 35.281235, 38.344173>,  <32.807587, 35.802532, 37.854515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.926823, 35.281235, 38.344173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.132706, 35.589191, 38.495083>,  <33.256233, 35.773968, 38.585629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.132706, 35.589191, 38.495083>,  <32.926823, 35.281235, 38.344173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.132706, 35.589191, 38.495083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316650, -0.238230, 0.918139,
		0.796751, -0.592036, 0.121170,
		0.514705, 0.769896, 0.377278,
		33.287117, 35.820160, 38.608265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.408485, 35.031616, 38.896603>,  <32.926823, 35.281235, 38.344173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.408485, 35.031616, 38.896603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.352543, 35.421333, 38.967258>,  <33.318977, 35.655163, 39.009651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.352543, 35.421333, 38.967258>,  <33.408485, 35.031616, 38.896603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.352543, 35.421333, 38.967258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422809, -0.220070, 0.879091,
		0.895362, 0.048262, 0.442716,
		-0.139855, 0.974289, 0.176637,
		33.310585, 35.713619, 39.020248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.620861, 35.172077, 39.544044>,  <33.408485, 35.031616, 38.896603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.620861, 35.172077, 39.544044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.384350, 35.489113, 39.484451>,  <33.242443, 35.679333, 39.448696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.384350, 35.489113, 39.484451>,  <33.620861, 35.172077, 39.544044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.384350, 35.489113, 39.484451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372097, -0.104219, 0.922324,
		0.715495, 0.600787, 0.356542,
		-0.591279, 0.792587, -0.148983,
		33.206966, 35.726891, 39.439758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.660522, 35.517624, 40.232452>,  <33.620861, 35.172077, 39.544044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.660522, 35.517624, 40.232452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.333122, 35.648411, 40.043495>,  <33.136684, 35.726883, 39.930122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.333122, 35.648411, 40.043495>,  <33.660522, 35.517624, 40.232452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.333122, 35.648411, 40.043495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472944, 0.083352, 0.877141,
		0.326173, 0.941352, 0.086414,
		-0.818496, 0.326969, -0.472394,
		33.087574, 35.746502, 39.901775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.458519, 36.093124, 40.549480>,  <33.660522, 35.517624, 40.232452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.458519, 36.093124, 40.549480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.122078, 35.984467, 40.362396>,  <32.920212, 35.919270, 40.250145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.122078, 35.984467, 40.362396>,  <33.458519, 36.093124, 40.549480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.122078, 35.984467, 40.362396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521130, 0.175497, 0.835239,
		-0.144807, 0.946260, -0.289175,
		-0.841103, -0.271646, -0.467712,
		32.869747, 35.902973, 40.222084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.918640, 36.636829, 40.579487>,  <33.458519, 36.093124, 40.549480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.918640, 36.636829, 40.579487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.731522, 36.287277, 40.526562>,  <32.619251, 36.077545, 40.494808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.731522, 36.287277, 40.526562>,  <32.918640, 36.636829, 40.579487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.731522, 36.287277, 40.526562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505051, 0.141445, 0.851420,
		-0.725321, 0.465116, -0.507520,
		-0.467795, -0.873877, -0.132314,
		32.591183, 36.025116, 40.486866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.465233, 36.570503, 41.180958>,  <32.918640, 36.636829, 40.579487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.465233, 36.570503, 41.180958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.412872, 36.201599, 41.035461>,  <32.381454, 35.980259, 40.948162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.412872, 36.201599, 41.035461>,  <32.465233, 36.570503, 41.180958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.412872, 36.201599, 41.035461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.616004, -0.211813, 0.758732,
		-0.776791, 0.323386, -0.540387,
		-0.130902, -0.922257, -0.363741,
		32.373600, 35.924923, 40.926338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.654268, 36.466015, 41.122047>,  <32.465233, 36.570503, 41.180958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.654268, 36.466015, 41.122047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.826538, 36.106384, 41.153492>,  <31.929899, 35.890606, 41.172359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.826538, 36.106384, 41.153492>,  <31.654268, 36.466015, 41.122047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.826538, 36.106384, 41.153492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.658995, -0.253762, 0.708047,
		-0.616641, -0.356742, -0.701776,
		0.430674, -0.899077, 0.078611,
		31.955740, 35.836662, 41.177074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.082668, 35.970047, 41.197861>,  <31.654268, 36.466015, 41.122047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.082668, 35.970047, 41.197861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.424673, 35.796642, 41.311722>,  <31.629875, 35.692600, 41.380039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.424673, 35.796642, 41.311722>,  <31.082668, 35.970047, 41.197861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.424673, 35.796642, 41.311722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417996, -0.251154, 0.873042,
		-0.306985, -0.865441, -0.395946,
		0.855009, -0.433514, 0.284650,
		31.681175, 35.666588, 41.397118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.976280, 35.271763, 41.474129>,  <31.082668, 35.970047, 41.197861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.976280, 35.271763, 41.474129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.329250, 35.364864, 41.637661>,  <31.541033, 35.420727, 41.735783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.329250, 35.364864, 41.637661>,  <30.976280, 35.271763, 41.474129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.329250, 35.364864, 41.637661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303317, -0.382805, 0.872616,
		0.359612, -0.894027, -0.267199,
		0.882427, 0.232758, 0.408835,
		31.593979, 35.434692, 41.760311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.759417, 34.709988, 41.013023>,  <30.976280, 35.271763, 41.474129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.759417, 34.709988, 41.013023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.379642, 34.596806, 40.958611>,  <30.151777, 34.528896, 40.925964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.379642, 34.596806, 40.958611>,  <30.759417, 34.709988, 41.013023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.379642, 34.596806, 40.958611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012712, 0.467569, -0.883865,
		0.313701, -0.837445, -0.447524,
		-0.949437, -0.282958, -0.136031,
		30.094812, 34.511917, 40.917801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.820297, 34.441059, 40.428204>,  <30.759417, 34.709988, 41.013023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.820297, 34.441059, 40.428204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.426271, 34.500137, 40.463608>,  <30.189856, 34.535583, 40.484848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.426271, 34.500137, 40.463608>,  <30.820297, 34.441059, 40.428204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.426271, 34.500137, 40.463608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042452, 0.289825, -0.956138,
		-0.166872, -0.945614, -0.279226,
		-0.985064, 0.147699, 0.088507,
		30.130753, 34.544449, 40.490158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.456955, 33.978577, 39.939335>,  <30.820297, 34.441059, 40.428204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.456955, 33.978577, 39.939335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.179859, 34.254696, 40.022858>,  <30.013601, 34.420368, 40.072971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.179859, 34.254696, 40.022858>,  <30.456955, 33.978577, 39.939335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.179859, 34.254696, 40.022858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141678, 0.153630, -0.977919,
		-0.707134, -0.707027, -0.008626,
		-0.692740, 0.690297, 0.208807,
		29.972036, 34.461784, 40.085499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.713491, 33.908432, 39.555012>,  <30.456955, 33.978577, 39.939335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.713491, 33.908432, 39.555012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.768127, 34.291935, 39.654709>,  <29.800909, 34.522038, 39.714527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.768127, 34.291935, 39.654709>,  <29.713491, 33.908432, 39.555012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.768127, 34.291935, 39.654709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227938, 0.275263, -0.933956,
		-0.964047, 0.070760, 0.256136,
		0.136591, 0.958761, 0.249238,
		29.809105, 34.579563, 39.729481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.167997, 34.255245, 39.242950>,  <29.713491, 33.908432, 39.555012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.167997, 34.255245, 39.242950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.430319, 34.545979, 39.324566>,  <29.587711, 34.720421, 39.373535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.430319, 34.545979, 39.324566>,  <29.167997, 34.255245, 39.242950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.430319, 34.545979, 39.324566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198221, 0.426572, -0.882465,
		-0.728442, 0.538281, 0.423822,
		0.655805, 0.726835, 0.204034,
		29.627060, 34.764030, 39.385777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.752598, 34.822224, 39.066849>,  <29.167997, 34.255245, 39.242950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.752598, 34.822224, 39.066849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.122530, 34.974369, 39.065510>,  <29.344490, 35.065655, 39.064705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.122530, 34.974369, 39.065510>,  <28.752598, 34.822224, 39.066849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.122530, 34.974369, 39.065510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274593, 0.661510, -0.697856,
		-0.263223, 0.646319, 0.716230,
		0.924831, 0.380364, -0.003350,
		29.399979, 35.088478, 39.064507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.735998, 35.567074, 39.083736>,  <28.752598, 34.822224, 39.066849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.735998, 35.567074, 39.083736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.093073, 35.459480, 38.939091>,  <29.307318, 35.394924, 38.852303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.093073, 35.459480, 38.939091>,  <28.735998, 35.567074, 39.083736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.093073, 35.459480, 38.939091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160886, 0.559301, -0.813202,
		0.420986, 0.784111, 0.456004,
		0.892685, -0.268982, -0.361610,
		29.360878, 35.378784, 38.830608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.927864, 36.156239, 38.749397>,  <28.735998, 35.567074, 39.083736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.927864, 36.156239, 38.749397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.185959, 35.888542, 38.602001>,  <29.340816, 35.727924, 38.513561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.185959, 35.888542, 38.602001>,  <28.927864, 36.156239, 38.749397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.185959, 35.888542, 38.602001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075167, 0.535600, -0.841119,
		0.760276, 0.515022, 0.395893,
		0.645236, -0.669241, -0.368492,
		29.379530, 35.687771, 38.491455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.511023, 36.484467, 38.428741>,  <28.927864, 36.156239, 38.749397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.511023, 36.484467, 38.428741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.518541, 36.132004, 38.239761>,  <29.523052, 35.920525, 38.126373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.518541, 36.132004, 38.239761>,  <29.511023, 36.484467, 38.428741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.518541, 36.132004, 38.239761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280091, 0.458251, -0.843537,
		0.959789, -0.116473, 0.255418,
		0.018796, -0.881158, -0.472448,
		29.524179, 35.867657, 38.098026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.198757, 36.338982, 38.140556>,  <29.511023, 36.484467, 38.428741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.198757, 36.338982, 38.140556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.956196, 36.103973, 37.926231>,  <29.810659, 35.962967, 37.797638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.956196, 36.103973, 37.926231>,  <30.198757, 36.338982, 38.140556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.956196, 36.103973, 37.926231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440046, 0.313290, -0.841552,
		0.662295, -0.746100, 0.068557,
		-0.606403, -0.587524, -0.535809,
		29.774275, 35.927715, 37.765488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.656471, 35.922226, 37.642395>,  <30.198757, 36.338982, 38.140556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.656471, 35.922226, 37.642395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.280155, 35.926113, 37.506855>,  <30.054365, 35.928444, 37.425529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.280155, 35.926113, 37.506855>,  <30.656471, 35.922226, 37.642395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.280155, 35.926113, 37.506855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307160, 0.447316, -0.839977,
		0.143412, -0.894323, -0.423815,
		-0.940790, 0.009716, -0.338850,
		29.997919, 35.929028, 37.405201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.684713, 36.004475, 36.870930>,  <30.656471, 35.922226, 37.642395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.684713, 36.004475, 36.870930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.285223, 36.008671, 36.890682>,  <30.045528, 36.011189, 36.902534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.285223, 36.008671, 36.890682>,  <30.684713, 36.004475, 36.870930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.285223, 36.008671, 36.890682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045909, 0.218138, -0.974837,
		-0.020997, -0.975862, -0.217378,
		-0.998725, 0.010489, 0.049381,
		29.985605, 36.011818, 36.905499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.355734, 35.507179, 36.370842>,  <30.684713, 36.004475, 36.870930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.355734, 35.507179, 36.370842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.129166, 35.825195, 36.457634>,  <29.993225, 36.016006, 36.509708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.129166, 35.825195, 36.457634>,  <30.355734, 35.507179, 36.370842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.129166, 35.825195, 36.457634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226929, 0.102643, -0.968487,
		-0.792259, -0.597808, 0.122279,
		-0.566418, 0.795041, 0.216979,
		29.959240, 36.063709, 36.522728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.616888, 35.424225, 35.738178>,  <30.355734, 35.507179, 36.370842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.616888, 35.424225, 35.738178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.574625, 35.063786, 35.906395>,  <30.549267, 34.847523, 36.007324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.574625, 35.063786, 35.906395>,  <30.616888, 35.424225, 35.738178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.574625, 35.063786, 35.906395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.845232, 0.141404, 0.515351,
		-0.523850, 0.409903, 0.746700,
		-0.105658, -0.901102, 0.420538,
		30.542927, 34.793453, 36.032555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.180553, 35.337074, 36.110458>,  <30.616888, 35.424225, 35.738178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.180553, 35.337074, 36.110458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.031778, 35.002647, 36.271778>,  <30.942514, 34.801991, 36.368572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.031778, 35.002647, 36.271778>,  <31.180553, 35.337074, 36.110458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.031778, 35.002647, 36.271778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.835361, -0.112019, 0.538168,
		-0.404767, 0.537068, 0.740083,
		-0.371936, -0.836068, 0.403303,
		30.920198, 34.751827, 36.392769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.770422, 34.842655, 36.427776>,  <31.180553, 35.337074, 36.110458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.770422, 34.842655, 36.427776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.810419, 34.744263, 36.813419>,  <31.834417, 34.685226, 37.044804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.810419, 34.744263, 36.813419>,  <31.770422, 34.842655, 36.427776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.810419, 34.744263, 36.813419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.993840, -0.021851, -0.108652,
		0.047792, 0.969029, 0.242280,
		0.099993, -0.245980, 0.964103,
		31.840418, 34.670467, 37.102650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.655531, 34.299107, 36.072254>,  <31.770422, 34.842655, 36.427776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.655531, 34.299107, 36.072254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.963911, 34.048965, 36.023979>,  <32.148941, 33.898880, 35.995014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.963911, 34.048965, 36.023979>,  <31.655531, 34.299107, 36.072254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.963911, 34.048965, 36.023979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062776, -0.113965, 0.991499,
		-0.633794, -0.771973, -0.048604,
		0.770950, -0.625355, -0.120692,
		32.195198, 33.861359, 35.987770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.382589, 33.648590, 36.368450>,  <31.655531, 34.299107, 36.072254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.382589, 33.648590, 36.368450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.782419, 33.658550, 36.374569>,  <32.022316, 33.664528, 36.378239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.782419, 33.658550, 36.374569>,  <31.382589, 33.648590, 36.368450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.782419, 33.658550, 36.374569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004282, -0.392974, 0.919540,
		0.028908, -0.919213, -0.392699,
		0.999573, 0.024900, 0.015296,
		32.082291, 33.666019, 36.379158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.649220, 32.994003, 36.634014>,  <31.382589, 33.648590, 36.368450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.649220, 32.994003, 36.634014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.943344, 33.259453, 36.689030>,  <32.119820, 33.418724, 36.722038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.943344, 33.259453, 36.689030>,  <31.649220, 32.994003, 36.634014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.943344, 33.259453, 36.689030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137994, -0.345297, 0.928293,
		0.663530, -0.663607, -0.345477,
		0.735314, 0.663623, 0.137542,
		32.163937, 33.458538, 36.730293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.256710, 32.537998, 36.957561>,  <31.649220, 32.994003, 36.634014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.256710, 32.537998, 36.957561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.321800, 32.926514, 37.026978>,  <32.360855, 33.159622, 37.068626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.321800, 32.926514, 37.026978>,  <32.256710, 32.537998, 36.957561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.321800, 32.926514, 37.026978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282815, -0.214416, 0.934902,
		0.945271, -0.103050, -0.309586,
		0.162722, 0.971291, 0.173537,
		32.370617, 33.217899, 37.079041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.821045, 32.490425, 37.315243>,  <32.256710, 32.537998, 36.957561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.821045, 32.490425, 37.315243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.693417, 32.866592, 37.362255>,  <32.616840, 33.092293, 37.390461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.693417, 32.866592, 37.362255>,  <32.821045, 32.490425, 37.315243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.693417, 32.866592, 37.362255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235819, -0.041330, 0.970918,
		0.917922, 0.337511, -0.208580,
		-0.319075, 0.940414, 0.117529,
		32.597694, 33.148716, 37.397514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.363815, 32.953304, 37.678337>,  <32.821045, 32.490425, 37.315243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.363815, 32.953304, 37.678337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.999439, 33.110413, 37.728806>,  <32.780815, 33.204678, 37.759087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.999439, 33.110413, 37.728806>,  <33.363815, 32.953304, 37.678337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.999439, 33.110413, 37.728806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099790, -0.086972, 0.991200,
		0.400285, 0.915516, 0.040032,
		-0.910941, 0.392768, 0.126173,
		32.726158, 33.228245, 37.766659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.485058, 33.190708, 38.315445>,  <33.363815, 32.953304, 37.678337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.485058, 33.190708, 38.315445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.089111, 33.247391, 38.311981>,  <32.851543, 33.281403, 38.309902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.089111, 33.247391, 38.311981>,  <33.485058, 33.190708, 38.315445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.089111, 33.247391, 38.311981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052539, -0.308985, 0.949615,
		0.131894, 0.940450, 0.313300,
		-0.989871, 0.141709, -0.008657,
		32.792149, 33.289902, 38.309383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.367142, 33.552582, 38.909584>,  <33.485058, 33.190708, 38.315445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.367142, 33.552582, 38.909584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.012737, 33.390293, 38.819805>,  <32.800095, 33.292919, 38.765938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.012737, 33.390293, 38.819805>,  <33.367142, 33.552582, 38.909584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.012737, 33.390293, 38.819805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164733, -0.177052, 0.970317,
		-0.433419, 0.896684, 0.090034,
		-0.886009, -0.405722, -0.224451,
		32.746933, 33.268578, 38.752468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.807129, 33.930580, 39.249344>,  <33.367142, 33.552582, 38.909584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.807129, 33.930580, 39.249344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.692097, 33.554127, 39.178272>,  <32.623077, 33.328255, 39.135628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.692097, 33.554127, 39.178272>,  <32.807129, 33.930580, 39.249344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.692097, 33.554127, 39.178272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063863, -0.203950, 0.976896,
		-0.955625, 0.269588, 0.118755,
		-0.287580, -0.941131, -0.177682,
		32.605824, 33.271786, 39.124966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.468887, 33.743221, 39.897919>,  <32.807129, 33.930580, 39.249344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.468887, 33.743221, 39.897919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.504044, 33.399170, 39.696941>,  <32.525139, 33.192738, 39.576355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.504044, 33.399170, 39.696941>,  <32.468887, 33.743221, 39.897919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.504044, 33.399170, 39.696941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074930, -0.508672, 0.857694,
		-0.993308, -0.037738, -0.109159,
		0.087894, -0.860133, -0.502440,
		32.530411, 33.141129, 39.546211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.813225, 33.266117, 40.075390>,  <32.468887, 33.743221, 39.897919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.813225, 33.266117, 40.075390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.120556, 33.025997, 39.986565>,  <32.304955, 32.881924, 39.933270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.120556, 33.025997, 39.986565>,  <31.813225, 33.266117, 40.075390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.120556, 33.025997, 39.986565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193477, -0.548534, 0.813435,
		-0.610113, -0.582022, -0.537599,
		0.768328, -0.600301, -0.222061,
		32.351055, 32.845909, 39.919949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.575350, 32.484943, 40.123470>,  <31.813225, 33.266117, 40.075390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.575350, 32.484943, 40.123470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.970852, 32.507492, 40.178875>,  <32.208153, 32.521023, 40.212116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.970852, 32.507492, 40.178875>,  <31.575350, 32.484943, 40.123470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.970852, 32.507492, 40.178875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086570, -0.539472, 0.837541,
		0.121936, -0.840115, -0.528525,
		0.988756, 0.056372, 0.138510,
		32.267479, 32.524403, 40.220428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.725689, 31.887299, 40.436913>,  <31.575350, 32.484943, 40.123470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.725689, 31.887299, 40.436913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.081856, 32.061714, 40.489113>,  <32.295555, 32.166363, 40.520435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.081856, 32.061714, 40.489113>,  <31.725689, 31.887299, 40.436913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.081856, 32.061714, 40.489113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211028, -0.649553, 0.730444,
		0.403271, -0.622858, -0.670388,
		0.890416, 0.436037, 0.130505,
		32.348980, 32.192524, 40.528263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.102585, 31.246243, 40.589539>,  <31.725689, 31.887299, 40.436913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.102585, 31.246243, 40.589539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.298325, 31.573162, 40.711231>,  <32.415768, 31.769314, 40.784248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.298325, 31.573162, 40.711231>,  <32.102585, 31.246243, 40.589539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.298325, 31.573162, 40.711231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191361, -0.440987, 0.876876,
		0.850834, -0.370879, -0.372196,
		0.489348, 0.817300, 0.304235,
		32.445129, 31.818352, 40.802502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.697159, 31.000374, 40.904049>,  <32.102585, 31.246243, 40.589539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.697159, 31.000374, 40.904049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.575306, 31.347258, 41.061604>,  <32.502193, 31.555387, 41.156136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.575306, 31.347258, 41.061604>,  <32.697159, 31.000374, 40.904049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.575306, 31.347258, 41.061604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153740, -0.363349, 0.918881,
		0.939981, 0.340476, -0.022637,
		-0.304632, 0.867210, 0.393885,
		32.483917, 31.607420, 41.179768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.216091, 31.014921, 41.345905>,  <32.697159, 31.000374, 40.904049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.216091, 31.014921, 41.345905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.915863, 31.266348, 41.427441>,  <32.735725, 31.417204, 41.476360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.915863, 31.266348, 41.427441>,  <33.216091, 31.014921, 41.345905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.915863, 31.266348, 41.427441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014874, -0.292328, 0.956203,
		0.660626, 0.720727, 0.210063,
		-0.750568, 0.628568, 0.203839,
		32.690693, 31.454918, 41.488594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.386055, 31.217936, 41.976467>,  <33.216091, 31.014921, 41.345905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.386055, 31.217936, 41.976467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.990772, 31.247917, 41.923050>,  <32.753605, 31.265905, 41.890999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.990772, 31.247917, 41.923050>,  <33.386055, 31.217936, 41.976467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.990772, 31.247917, 41.923050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152414, -0.565998, 0.810195,
		-0.014858, 0.820993, 0.570745,
		-0.988205, 0.074952, -0.133540,
		32.694309, 31.270403, 41.882988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.167461, 31.005642, 42.533173>,  <33.386055, 31.217936, 41.976467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.167461, 31.005642, 42.533173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.796463, 31.079290, 42.403038>,  <32.573864, 31.123480, 42.324955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.796463, 31.079290, 42.403038>,  <33.167461, 31.005642, 42.533173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.796463, 31.079290, 42.403038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355529, -0.703401, 0.615489,
		-0.115520, 0.686533, 0.717864,
		-0.927499, 0.184120, -0.325339,
		32.518215, 31.134527, 42.305435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.722347, 31.018347, 43.187160>,  <33.167461, 31.005642, 42.533173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.722347, 31.018347, 43.187160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.522415, 30.917980, 42.855568>,  <32.402454, 30.857759, 42.656612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.522415, 30.917980, 42.855568>,  <32.722347, 31.018347, 43.187160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.522415, 30.917980, 42.855568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488520, -0.708670, 0.509054,
		-0.715205, 0.659414, 0.231636,
		-0.499831, -0.250919, -0.828981,
		32.372467, 30.842705, 42.606873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.969376, 30.925167, 43.356792>,  <32.722347, 31.018347, 43.187160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.969376, 30.925167, 43.356792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.009399, 30.720711, 43.015331>,  <32.033413, 30.598038, 42.810455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.009399, 30.720711, 43.015331>,  <31.969376, 30.925167, 43.356792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.009399, 30.720711, 43.015331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497271, -0.768812, 0.402056,
		-0.861806, 0.384269, -0.331101,
		0.100057, -0.511141, -0.853653,
		32.039417, 30.567368, 42.759235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.303827, 30.651011, 43.189598>,  <31.969376, 30.925167, 43.356792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.303827, 30.651011, 43.189598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.546429, 30.408834, 42.983456>,  <31.691990, 30.263529, 42.859768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.546429, 30.408834, 42.983456>,  <31.303827, 30.651011, 43.189598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.546429, 30.408834, 42.983456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.602830, -0.772799, 0.198438,
		-0.518413, 0.190321, -0.833682,
		0.606502, -0.605441, -0.515360,
		31.728380, 30.227201, 42.828846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.851664, 30.379061, 42.691540>,  <31.303827, 30.651011, 43.189598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.851664, 30.379061, 42.691540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.175123, 30.146118, 42.724884>,  <31.369200, 30.006353, 42.744892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.175123, 30.146118, 42.724884>,  <30.851664, 30.379061, 42.691540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.175123, 30.146118, 42.724884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.588230, -0.802451, 0.100287,
		0.008491, -0.130133, -0.991460,
		0.808649, -0.582355, 0.083361,
		31.417719, 29.971411, 42.749893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.666452, 29.756552, 42.416458>,  <30.851664, 30.379061, 42.691540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.666452, 29.756552, 42.416458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.996019, 29.658461, 42.620819>,  <31.193760, 29.599606, 42.743435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.996019, 29.658461, 42.620819>,  <30.666452, 29.756552, 42.416458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.996019, 29.658461, 42.620819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460928, -0.814474, 0.352388,
		0.329702, -0.525829, -0.784092,
		0.823919, -0.245228, 0.510903,
		31.243195, 29.584892, 42.774090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.946108, 29.099445, 42.184898>,  <30.666452, 29.756552, 42.416458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.946108, 29.099445, 42.184898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.060850, 29.187305, 42.557880>,  <31.129696, 29.240021, 42.781670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.060850, 29.187305, 42.557880>,  <30.946108, 29.099445, 42.184898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.060850, 29.187305, 42.557880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440908, -0.833867, 0.332064,
		0.850480, -0.506379, -0.142352,
		0.286853, 0.219650, 0.932453,
		31.146906, 29.253201, 42.837616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.285568, 28.457449, 42.426991>,  <30.946108, 29.099445, 42.184898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.285568, 28.457449, 42.426991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.172209, 28.662361, 42.751274>,  <31.104193, 28.785309, 42.945847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.172209, 28.662361, 42.751274>,  <31.285568, 28.457449, 42.426991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.172209, 28.662361, 42.751274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412223, -0.828359, 0.379333,
		0.865886, -0.226693, 0.445928,
		-0.283397, 0.512281, 0.810712,
		31.087191, 28.816046, 42.994488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.431881, 28.008194, 43.096310>,  <31.285568, 28.457449, 42.426991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.431881, 28.008194, 43.096310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.169682, 28.284904, 43.217484>,  <31.012362, 28.450932, 43.290188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.169682, 28.284904, 43.217484>,  <31.431881, 28.008194, 43.096310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.169682, 28.284904, 43.217484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394290, -0.655615, 0.643976,
		0.644096, 0.302680, 0.702514,
		-0.655497, 0.691776, 0.302935,
		30.973032, 28.492437, 43.308365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.029388, 28.056303, 43.616402>,  <31.431881, 28.008194, 43.096310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.029388, 28.056303, 43.616402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.301933, 27.763575, 43.611061>,  <32.465462, 27.587936, 43.607857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.301933, 27.763575, 43.611061>,  <32.029388, 28.056303, 43.616402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.301933, 27.763575, 43.611061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460185, 0.442502, -0.769689,
		0.569185, 0.518294, 0.638279,
		0.681365, -0.731822, -0.013354,
		32.506344, 27.544027, 43.607056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.640179, 28.430109, 43.361298>,  <32.029388, 28.056303, 43.616402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.640179, 28.430109, 43.361298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.756042, 28.047325, 43.354073>,  <32.825562, 27.817656, 43.349735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.756042, 28.047325, 43.354073>,  <32.640179, 28.430109, 43.361298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.756042, 28.047325, 43.354073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536822, 0.178058, -0.824693,
		0.792414, 0.229183, 0.565293,
		0.289660, -0.956959, -0.018065,
		32.842941, 27.760237, 43.348652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.336739, 28.442755, 43.417988>,  <32.640179, 28.430109, 43.361298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.336739, 28.442755, 43.417988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.224979, 28.094713, 43.255581>,  <33.157925, 27.885887, 43.158134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.224979, 28.094713, 43.255581>,  <33.336739, 28.442755, 43.417988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.224979, 28.094713, 43.255581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529686, 0.213021, -0.821008,
		0.800855, -0.444452, 0.401365,
		-0.279400, -0.870106, -0.406019,
		33.141159, 27.833681, 43.133774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.954979, 28.119625, 43.161552>,  <33.336739, 28.442755, 43.417988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.954979, 28.119625, 43.161552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.648571, 27.961386, 42.958881>,  <33.464725, 27.866442, 42.837280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.648571, 27.961386, 42.958881>,  <33.954979, 28.119625, 43.161552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.648571, 27.961386, 42.958881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500106, 0.128465, -0.856382,
		0.403874, -0.909394, 0.099436,
		-0.766015, -0.395599, -0.506677,
		33.418766, 27.842707, 42.806877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.297829, 27.719393, 42.638393>,  <33.954979, 28.119625, 43.161552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.297829, 27.719393, 42.638393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.927063, 27.770172, 42.497135>,  <33.704601, 27.800640, 42.412380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.927063, 27.770172, 42.497135>,  <34.297829, 27.719393, 42.638393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.927063, 27.770172, 42.497135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349349, -0.051751, -0.935563,
		-0.137044, -0.990558, 0.003619,
		-0.926917, 0.126949, -0.353142,
		33.648987, 27.808256, 42.391193>
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
