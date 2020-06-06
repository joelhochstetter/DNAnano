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
	<24.564314, 35.424316, 35.119003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.346315, 35.096180, 35.049706>,  <24.215517, 34.899296, 35.008125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.346315, 35.096180, 35.049706>,  <24.564314, 35.424316, 35.119003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.346315, 35.096180, 35.049706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.809103, -0.568759, 0.147874,
		-0.219844, -0.059585, 0.973714,
		-0.544997, -0.820343, -0.173249,
		24.182816, 34.850079, 34.997730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.628605, 34.961578, 35.716206>,  <24.564314, 35.424316, 35.119003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.628605, 34.961578, 35.716206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.573692, 34.802261, 35.353436>,  <24.540745, 34.706673, 35.135773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.573692, 34.802261, 35.353436>,  <24.628605, 34.961578, 35.716206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.573692, 34.802261, 35.353436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.814683, -0.566200, 0.125337,
		-0.563423, -0.721653, 0.402208,
		-0.137280, -0.398290, -0.906929,
		24.532509, 34.682774, 35.081356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.470654, 34.292599, 35.767704>,  <24.628605, 34.961578, 35.716206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.470654, 34.292599, 35.767704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.639168, 34.291298, 35.404934>,  <24.740276, 34.290516, 35.187271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.639168, 34.291298, 35.404934>,  <24.470654, 34.292599, 35.767704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.639168, 34.291298, 35.404934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562870, -0.783158, 0.264274,
		-0.711124, -0.621814, -0.328101,
		0.421284, -0.003253, -0.906923,
		24.765553, 34.290321, 35.132858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.408815, 33.653072, 35.556374>,  <24.470654, 34.292599, 35.767704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.408815, 33.653072, 35.556374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.701672, 33.804420, 35.329815>,  <24.877386, 33.895229, 35.193878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.701672, 33.804420, 35.329815>,  <24.408815, 33.653072, 35.556374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.701672, 33.804420, 35.329815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574721, -0.789459, 0.215522,
		-0.365602, -0.483313, -0.795452,
		0.732141, 0.378368, -0.566398,
		24.921314, 33.917931, 35.159897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.722610, 33.210766, 34.938728>,  <24.408815, 33.653072, 35.556374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.722610, 33.210766, 34.938728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.958765, 33.461655, 35.141918>,  <25.100458, 33.612186, 35.263832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.958765, 33.461655, 35.141918>,  <24.722610, 33.210766, 34.938728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.958765, 33.461655, 35.141918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509055, -0.777767, 0.368704,
		0.626343, 0.040908, -0.778473,
		0.590387, 0.627221, 0.507973,
		25.135881, 33.649822, 35.294312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.222631, 32.986111, 34.366776>,  <24.722610, 33.210766, 34.938728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.222631, 32.986111, 34.366776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.514812, 33.139317, 34.592957>,  <25.690121, 33.231239, 34.728664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.514812, 33.139317, 34.592957>,  <25.222631, 32.986111, 34.366776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.514812, 33.139317, 34.592957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.682855, -0.424319, -0.594694,
		0.012156, 0.820520, -0.571489,
		0.730452, 0.383015, 0.565454,
		25.733948, 33.254223, 34.762592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.688065, 33.384808, 33.885826>,  <25.222631, 32.986111, 34.366776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.688065, 33.384808, 33.885826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.857002, 33.241669, 34.218952>,  <25.958364, 33.155785, 34.418827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.857002, 33.241669, 34.218952>,  <25.688065, 33.384808, 33.885826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.857002, 33.241669, 34.218952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.821049, -0.238264, -0.518756,
		0.384063, 0.902871, 0.193179,
		0.422343, -0.357845, 0.832811,
		25.983706, 33.134315, 34.468796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.239449, 33.652653, 33.871506>,  <25.688065, 33.384808, 33.885826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.239449, 33.652653, 33.871506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.298237, 33.327732, 34.097275>,  <26.333509, 33.132782, 34.232735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.298237, 33.327732, 34.097275>,  <26.239449, 33.652653, 33.871506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.298237, 33.327732, 34.097275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.804844, -0.233504, -0.545621,
		0.575001, 0.534462, 0.619455,
		0.146969, -0.812297, 0.564423,
		26.342327, 33.084042, 34.266602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.909256, 33.759735, 34.100540>,  <26.239449, 33.652653, 33.871506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.909256, 33.759735, 34.100540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.780479, 33.381031, 34.100201>,  <26.703213, 33.153809, 34.099998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.780479, 33.381031, 34.100201>,  <26.909256, 33.759735, 34.100540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.780479, 33.381031, 34.100201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.685250, -0.232401, -0.690234,
		0.653288, -0.222796, 0.723586,
		-0.321944, -0.946759, -0.000846,
		26.683897, 33.097004, 34.099945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.466593, 33.402626, 34.018013>,  <26.909256, 33.759735, 34.100540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.466593, 33.402626, 34.018013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.193396, 33.125137, 33.926559>,  <27.029476, 32.958645, 33.871689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.193396, 33.125137, 33.926559>,  <27.466593, 33.402626, 34.018013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.193396, 33.125137, 33.926559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473010, -0.181554, -0.862148,
		0.556579, -0.696988, 0.452136,
		-0.682994, -0.693719, -0.228634,
		26.988497, 32.917023, 33.857971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.850258, 32.802200, 33.950748>,  <27.466593, 33.402626, 34.018013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.850258, 32.802200, 33.950748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.508129, 32.751831, 33.749725>,  <27.302853, 32.721611, 33.629112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.508129, 32.751831, 33.749725>,  <27.850258, 32.802200, 33.950748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.508129, 32.751831, 33.749725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509797, -0.031632, -0.859713,
		0.092361, -0.991535, 0.091250,
		-0.855322, -0.125923, -0.502560,
		27.251532, 32.714054, 33.598957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.022743, 32.295235, 33.649029>,  <27.850258, 32.802200, 33.950748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.022743, 32.295235, 33.649029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.726450, 32.449360, 33.428902>,  <27.548674, 32.541836, 33.296825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.726450, 32.449360, 33.428902>,  <28.022743, 32.295235, 33.649029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.726450, 32.449360, 33.428902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465755, -0.295792, -0.834014,
		-0.484137, -0.874094, 0.039640,
		-0.740732, 0.385315, -0.550317,
		27.504230, 32.564953, 33.263805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.845982, 31.816067, 33.095333>,  <28.022743, 32.295235, 33.649029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.845982, 31.816067, 33.095333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.709280, 32.164814, 32.955017>,  <27.627260, 32.374062, 32.870827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.709280, 32.164814, 32.955017>,  <27.845982, 31.816067, 33.095333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.709280, 32.164814, 32.955017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497605, -0.148774, -0.854549,
		-0.797242, -0.466599, -0.383001,
		-0.341751, 0.871866, -0.350791,
		27.606754, 32.426373, 32.849781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.637327, 31.676414, 32.384041>,  <27.845982, 31.816067, 33.095333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.637327, 31.676414, 32.384041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.651670, 32.075916, 32.397892>,  <27.660276, 32.315617, 32.406204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.651670, 32.075916, 32.397892>,  <27.637327, 31.676414, 32.384041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.651670, 32.075916, 32.397892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608008, 0.005700, -0.793910,
		-0.793121, 0.049523, -0.607048,
		0.035857, 0.998757, 0.034631,
		27.662428, 32.375542, 32.408279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.265419, 31.993773, 31.726938>,  <27.637327, 31.676414, 32.384041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.265419, 31.993773, 31.726938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.536013, 32.250343, 31.871681>,  <27.698370, 32.404285, 31.958527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.536013, 32.250343, 31.871681>,  <27.265419, 31.993773, 31.726938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.536013, 32.250343, 31.871681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463094, 0.011558, -0.886234,
		-0.572634, 0.767099, -0.289222,
		0.676486, 0.641425, 0.361858,
		27.738958, 32.442772, 31.980238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.286884, 32.379440, 31.206905>,  <27.265419, 31.993773, 31.726938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.286884, 32.379440, 31.206905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.616611, 32.471371, 31.413858>,  <27.814447, 32.526527, 31.538031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.616611, 32.471371, 31.413858>,  <27.286884, 32.379440, 31.206905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.616611, 32.471371, 31.413858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521681, 0.046595, -0.851867,
		-0.219887, 0.972116, -0.081486,
		0.824317, 0.229824, 0.517380,
		27.863907, 32.540318, 31.569073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.782766, 32.672649, 30.681080>,  <27.286884, 32.379440, 31.206905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.782766, 32.672649, 30.681080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.034554, 32.592720, 30.981436>,  <28.185627, 32.544762, 31.161650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.034554, 32.592720, 30.981436>,  <27.782766, 32.672649, 30.681080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.034554, 32.592720, 30.981436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.771425, 0.044898, -0.634735,
		0.093123, 0.978802, 0.182413,
		0.629470, -0.199827, 0.750891,
		28.223394, 32.532772, 31.206703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.379393, 33.148621, 30.559681>,  <27.782766, 32.672649, 30.681080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.379393, 33.148621, 30.559681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.493145, 32.825226, 30.765779>,  <28.561396, 32.631187, 30.889439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.493145, 32.825226, 30.765779>,  <28.379393, 33.148621, 30.559681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.493145, 32.825226, 30.765779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.752397, -0.144865, -0.642583,
		0.594161, 0.570406, 0.567107,
		0.284379, -0.808487, 0.515245,
		28.578459, 32.582680, 30.920353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.061314, 33.113369, 30.466848>,  <28.379393, 33.148621, 30.559681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.061314, 33.113369, 30.466848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.986095, 32.739719, 30.588211>,  <28.940964, 32.515530, 30.661028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.986095, 32.739719, 30.588211>,  <29.061314, 33.113369, 30.466848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.986095, 32.739719, 30.588211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.695396, -0.344783, -0.630515,
		0.693586, 0.092420, 0.714420,
		-0.188048, -0.934122, 0.303405,
		28.929682, 32.459484, 30.679232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.714087, 32.889977, 30.729183>,  <29.061314, 33.113369, 30.466848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.714087, 32.889977, 30.729183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.515297, 32.553883, 30.642448>,  <29.396023, 32.352226, 30.590406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.515297, 32.553883, 30.642448>,  <29.714087, 32.889977, 30.729183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.515297, 32.553883, 30.642448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.777844, -0.320572, -0.540547,
		0.384675, -0.437305, 0.812889,
		-0.496974, -0.840237, -0.216839,
		29.366205, 32.301811, 30.577396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.187206, 32.510334, 30.723181>,  <29.714087, 32.889977, 30.729183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.187206, 32.510334, 30.723181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.918291, 32.287174, 30.528540>,  <29.756943, 32.153278, 30.411755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.918291, 32.287174, 30.528540>,  <30.187206, 32.510334, 30.723181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.918291, 32.287174, 30.528540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.740224, -0.497698, -0.452067,
		0.010026, -0.664113, 0.747564,
		-0.672286, -0.557897, -0.486603,
		29.716606, 32.119804, 30.382559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.450737, 31.867804, 30.784155>,  <30.187206, 32.510334, 30.723181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.450737, 31.867804, 30.784155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.209599, 31.849604, 30.465530>,  <30.064917, 31.838684, 30.274357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.209599, 31.849604, 30.465530>,  <30.450737, 31.867804, 30.784155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.209599, 31.849604, 30.465530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.731256, -0.430839, -0.528812,
		-0.319129, -0.901281, 0.293002,
		-0.602845, -0.045500, -0.796560,
		30.028746, 31.835955, 30.226562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.289511, 31.144302, 30.638674>,  <30.450737, 31.867804, 30.784155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.289511, 31.144302, 30.638674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.260099, 31.364866, 30.306278>,  <30.242453, 31.497206, 30.106842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.260099, 31.364866, 30.306278>,  <30.289511, 31.144302, 30.638674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.260099, 31.364866, 30.306278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.847822, -0.404211, -0.343236,
		-0.525158, -0.729766, -0.437779,
		-0.073527, 0.551412, -0.830987,
		30.238041, 31.530291, 30.056982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.626907, 30.758669, 30.236534>,  <30.289511, 31.144302, 30.638674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.626907, 30.758669, 30.236534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.590109, 31.094078, 30.021717>,  <30.568029, 31.295324, 29.892826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.590109, 31.094078, 30.021717>,  <30.626907, 30.758669, 30.236534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.590109, 31.094078, 30.021717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.910207, -0.147898, -0.386846,
		-0.403807, -0.524408, -0.749624,
		-0.091998, 0.838524, -0.537042,
		30.562510, 31.345634, 29.860605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.551342, 30.768898, 29.478050>,  <30.626907, 30.758669, 30.236534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.551342, 30.768898, 29.478050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.753710, 31.090202, 29.603792>,  <30.875132, 31.282986, 29.679237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.753710, 31.090202, 29.603792>,  <30.551342, 30.768898, 29.478050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.753710, 31.090202, 29.603792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.846226, -0.391566, -0.361356,
		-0.167173, 0.448831, -0.877841,
		0.505921, 0.803260, 0.314353,
		30.905485, 31.331181, 29.698097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.991966, 30.984154, 28.902533>,  <30.551342, 30.768898, 29.478050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.991966, 30.984154, 28.902533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.147451, 31.098598, 29.252855>,  <31.240744, 31.167265, 29.463049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.147451, 31.098598, 29.252855>,  <30.991966, 30.984154, 28.902533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.147451, 31.098598, 29.252855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.866670, -0.436160, -0.242172,
		0.312704, 0.853172, -0.417508,
		0.388715, 0.286113, 0.875808,
		31.264067, 31.184433, 29.515598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.623182, 31.347864, 28.730364>,  <30.991966, 30.984154, 28.902533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.623182, 31.347864, 28.730364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.620102, 31.175592, 29.091352>,  <31.618254, 31.072229, 29.307945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.620102, 31.175592, 29.091352>,  <31.623182, 31.347864, 28.730364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.620102, 31.175592, 29.091352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.858036, -0.466322, -0.215217,
		0.513532, 0.772696, 0.373130,
		-0.007702, -0.430679, 0.902472,
		31.617792, 31.046389, 29.362095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.317518, 31.974939, 28.424477>,  <31.623182, 31.347864, 28.730364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.317518, 31.974939, 28.424477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.578680, 31.694368, 28.310135>,  <31.735376, 31.526026, 28.241529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.578680, 31.694368, 28.310135>,  <31.317518, 31.974939, 28.424477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.578680, 31.694368, 28.310135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.687925, -0.707068, 0.163753,
		-0.316981, 0.089733, -0.944178,
		0.652903, -0.701429, -0.285856,
		31.774551, 31.483940, 28.224379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.936914, 31.587946, 27.861376>,  <31.317518, 31.974939, 28.424477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.936914, 31.587946, 27.861376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.233921, 31.380358, 28.030771>,  <31.412125, 31.255804, 28.132408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.233921, 31.380358, 28.030771>,  <30.936914, 31.587946, 27.861376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.233921, 31.380358, 28.030771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.614028, -0.779995, 0.120736,
		0.267660, -0.349681, -0.897820,
		0.742514, -0.518971, 0.423488,
		31.456675, 31.224667, 28.157818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.088928, 31.046478, 27.432209>,  <30.936914, 31.587946, 27.861376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.088928, 31.046478, 27.432209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.198221, 30.962700, 27.807756>,  <31.263798, 30.912434, 28.033085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.198221, 30.962700, 27.807756>,  <31.088928, 31.046478, 27.432209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.198221, 30.962700, 27.807756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.629039, -0.777314, 0.009662,
		0.727773, -0.593225, -0.344137,
		0.273234, -0.209444, 0.938870,
		31.280191, 30.899866, 28.089417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.114592, 30.273520, 27.397038>,  <31.088928, 31.046478, 27.432209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.114592, 30.273520, 27.397038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.031075, 30.421238, 27.759258>,  <30.980965, 30.509869, 27.976591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.031075, 30.421238, 27.759258>,  <31.114592, 30.273520, 27.397038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.031075, 30.421238, 27.759258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579710, -0.792476, 0.189520,
		0.787618, -0.485387, 0.379548,
		-0.208792, 0.369297, 0.905553,
		30.968437, 30.532026, 28.030924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.293758, 30.063559, 28.134897>,  <31.114592, 30.273520, 27.397038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.293758, 30.063559, 28.134897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.629305, 29.995047, 28.341572>,  <31.830633, 29.953939, 28.465576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.629305, 29.995047, 28.341572>,  <31.293758, 30.063559, 28.134897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.629305, 29.995047, 28.341572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543069, -0.328043, 0.772958,
		0.037104, -0.929006, -0.368200,
		0.838868, -0.171278, 0.516686,
		31.880964, 29.943663, 28.496578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.202908, 29.399757, 28.471760>,  <31.293758, 30.063559, 28.134897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.202908, 29.399757, 28.471760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.487135, 29.576881, 28.690487>,  <31.657671, 29.683155, 28.821722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.487135, 29.576881, 28.690487>,  <31.202908, 29.399757, 28.471760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.487135, 29.576881, 28.690487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405660, -0.377172, 0.832575,
		0.574917, -0.813425, -0.088377,
		0.710570, 0.442811, 0.546816,
		31.700306, 29.709724, 28.854532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.715416, 28.831448, 28.741028>,  <31.202908, 29.399757, 28.471760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.715416, 28.831448, 28.741028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.668270, 29.159746, 28.964628>,  <31.639982, 29.356726, 29.098789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.668270, 29.159746, 28.964628>,  <31.715416, 28.831448, 28.741028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.668270, 29.159746, 28.964628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387941, -0.556248, 0.734908,
		0.914117, -0.130239, 0.383964,
		-0.117865, 0.820747, 0.559001,
		31.632910, 29.405970, 29.132328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.610092, 28.533239, 29.436302>,  <31.715416, 28.831448, 28.741028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.610092, 28.533239, 29.436302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.499912, 28.910902, 29.508633>,  <31.433805, 29.137499, 29.552031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.499912, 28.910902, 29.508633>,  <31.610092, 28.533239, 29.436302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.499912, 28.910902, 29.508633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506135, -0.302356, 0.807718,
		0.817286, 0.130963, 0.561153,
		-0.275449, 0.944155, 0.180826,
		31.417278, 29.194149, 29.562881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.519884, 28.601955, 30.176222>,  <31.610092, 28.533239, 29.436302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.519884, 28.601955, 30.176222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.337778, 28.910551, 29.998442>,  <31.228514, 29.095709, 29.891773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.337778, 28.910551, 29.998442>,  <31.519884, 28.601955, 30.176222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.337778, 28.910551, 29.998442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555038, 0.144399, 0.819196,
		0.696179, 0.619640, 0.362466,
		-0.455267, 0.771489, -0.444451,
		31.201199, 29.141998, 29.865107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.696108, 29.260773, 30.481081>,  <31.519884, 28.601955, 30.176222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.696108, 29.260773, 30.481081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.338251, 29.305878, 30.308153>,  <31.123537, 29.332941, 30.204397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.338251, 29.305878, 30.308153>,  <31.696108, 29.260773, 30.481081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.338251, 29.305878, 30.308153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367654, 0.363996, 0.855767,
		0.253860, 0.924550, -0.284189,
		-0.894643, 0.112762, -0.432318,
		31.069859, 29.339706, 30.178457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.438845, 29.923861, 30.676931>,  <31.696108, 29.260773, 30.481081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.438845, 29.923861, 30.676931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.111658, 29.705750, 30.603607>,  <30.915346, 29.574883, 30.559612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.111658, 29.705750, 30.603607>,  <31.438845, 29.923861, 30.676931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.111658, 29.705750, 30.603607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412163, 0.333202, 0.847997,
		-0.401313, 0.769187, -0.497292,
		-0.817967, -0.545278, -0.183312,
		30.866268, 29.542166, 30.548613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.871477, 30.394917, 30.952980>,  <31.438845, 29.923861, 30.676931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.871477, 30.394917, 30.952980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.722326, 30.024359, 30.931974>,  <30.632835, 29.802025, 30.919371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.722326, 30.024359, 30.931974>,  <30.871477, 30.394917, 30.952980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.722326, 30.024359, 30.931974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.633562, 0.212845, 0.743839,
		-0.677909, 0.310634, -0.666292,
		-0.372879, -0.926392, -0.052516,
		30.610462, 29.746441, 30.916220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.183929, 30.473696, 31.054285>,  <30.871477, 30.394917, 30.952980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.183929, 30.473696, 31.054285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.294218, 30.107958, 31.172915>,  <30.360392, 29.888515, 31.244091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.294218, 30.107958, 31.172915>,  <30.183929, 30.473696, 31.054285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.294218, 30.107958, 31.172915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410261, 0.167080, 0.896532,
		-0.869290, -0.368864, -0.329052,
		0.275720, -0.914344, 0.296571,
		30.376934, 29.833654, 31.261887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.629143, 30.294136, 31.358114>,  <30.183929, 30.473696, 31.054285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.629143, 30.294136, 31.358114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.908787, 30.047125, 31.502287>,  <30.076572, 29.898918, 31.588791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.908787, 30.047125, 31.502287>,  <29.629143, 30.294136, 31.358114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.908787, 30.047125, 31.502287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455487, 0.003938, 0.890234,
		-0.551162, -0.786540, -0.278522,
		0.699108, -0.617527, 0.360429,
		30.118519, 29.861866, 31.610416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.363796, 29.758026, 31.752520>,  <29.629143, 30.294136, 31.358114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.363796, 29.758026, 31.752520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.744604, 29.747425, 31.874474>,  <29.973089, 29.741064, 31.947645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.744604, 29.747425, 31.874474>,  <29.363796, 29.758026, 31.752520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.744604, 29.747425, 31.874474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305832, -0.118644, 0.944664,
		0.011139, -0.992583, -0.121056,
		0.952020, -0.026500, 0.304886,
		30.030210, 29.739473, 31.965939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.369896, 29.142847, 32.205868>,  <29.363796, 29.758026, 31.752520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.369896, 29.142847, 32.205868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.687090, 29.364750, 32.306599>,  <29.877407, 29.497892, 32.367035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.687090, 29.364750, 32.306599>,  <29.369896, 29.142847, 32.205868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.687090, 29.364750, 32.306599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197868, -0.156417, 0.967668,
		0.576212, -0.817176, -0.014268,
		0.792987, 0.554759, 0.251823,
		29.924986, 29.531178, 32.382145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.777412, 28.784870, 32.696465>,  <29.369896, 29.142847, 32.205868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.777412, 28.784870, 32.696465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.884672, 29.165030, 32.759510>,  <29.949028, 29.393126, 32.797337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.884672, 29.165030, 32.759510>,  <29.777412, 28.784870, 32.696465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.884672, 29.165030, 32.759510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327647, -0.063879, 0.942638,
		0.905949, -0.304408, 0.294266,
		0.268150, 0.950397, 0.157609,
		29.965117, 29.450150, 32.806793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.921391, 28.842604, 33.448292>,  <29.777412, 28.784870, 32.696465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.921391, 28.842604, 33.448292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.880886, 29.222992, 33.331398>,  <29.856583, 29.451225, 33.261261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.880886, 29.222992, 33.331398>,  <29.921391, 28.842604, 33.448292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.880886, 29.222992, 33.331398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356202, 0.239615, 0.903164,
		0.928906, 0.195551, 0.314474,
		-0.101262, 0.950970, -0.292235,
		29.850508, 29.508284, 33.243729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.918386, 29.155033, 34.035019>,  <29.921391, 28.842604, 33.448292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.918386, 29.155033, 34.035019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.785395, 29.444580, 33.793201>,  <29.705599, 29.618309, 33.648109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.785395, 29.444580, 33.793201>,  <29.918386, 29.155033, 34.035019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.785395, 29.444580, 33.793201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463604, 0.432772, 0.773162,
		0.821297, 0.537329, 0.191701,
		-0.332479, 0.723869, -0.604542,
		29.685652, 29.661741, 33.611839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.039375, 29.687920, 34.475307>,  <29.918386, 29.155033, 34.035019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.039375, 29.687920, 34.475307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.793837, 29.810488, 34.184296>,  <29.646513, 29.884027, 34.009689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.793837, 29.810488, 34.184296>,  <30.039375, 29.687920, 34.475307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.793837, 29.810488, 34.184296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462064, 0.607770, 0.645842,
		0.640068, 0.732614, -0.231493,
		-0.613848, 0.306418, -0.727529,
		29.609682, 29.902412, 33.966038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.978680, 30.425306, 34.443333>,  <30.039375, 29.687920, 34.475307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.978680, 30.425306, 34.443333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.649282, 30.295366, 34.257286>,  <29.451645, 30.217402, 34.145660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.649282, 30.295366, 34.257286>,  <29.978680, 30.425306, 34.443333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.649282, 30.295366, 34.257286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554956, 0.631517, 0.541489,
		0.117823, 0.704029, -0.700329,
		-0.823494, -0.324851, -0.465113,
		29.402235, 30.197910, 34.117752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.485468, 31.001657, 34.272388>,  <29.978680, 30.425306, 34.443333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.485468, 31.001657, 34.272388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.284191, 30.661539, 34.334095>,  <29.163425, 30.457468, 34.371120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.284191, 30.661539, 34.334095>,  <29.485468, 31.001657, 34.272388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.284191, 30.661539, 34.334095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.612577, 0.476875, 0.630350,
		-0.609549, 0.222685, -0.760829,
		-0.503190, -0.850295, 0.154267,
		29.133234, 30.406450, 34.380375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.889694, 31.344473, 34.343822>,  <29.485468, 31.001657, 34.272388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.889694, 31.344473, 34.343822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.829376, 30.970253, 34.471581>,  <28.793186, 30.745722, 34.548233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.829376, 30.970253, 34.471581>,  <28.889694, 31.344473, 34.343822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.829376, 30.970253, 34.471581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.647280, 0.337639, 0.683395,
		-0.747188, -0.103683, -0.656475,
		-0.150795, -0.935548, 0.319391,
		28.784138, 30.689589, 34.567398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.158125, 31.288305, 34.370289>,  <28.889694, 31.344473, 34.343822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.158125, 31.288305, 34.370289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.306660, 31.013371, 34.619987>,  <28.395781, 30.848410, 34.769806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.306660, 31.013371, 34.619987>,  <28.158125, 31.288305, 34.370289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.306660, 31.013371, 34.619987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559419, 0.370967, 0.741238,
		-0.741052, -0.624463, -0.246754,
		0.371339, -0.687335, 0.624242,
		28.418062, 30.807171, 34.807259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.590176, 30.912825, 34.664303>,  <28.158125, 31.288305, 34.370289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.590176, 30.912825, 34.664303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.902636, 30.871164, 34.910542>,  <28.090113, 30.846169, 35.058285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.902636, 30.871164, 34.910542>,  <27.590176, 30.912825, 34.664303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.902636, 30.871164, 34.910542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581396, 0.238018, 0.778027,
		-0.227556, -0.965660, 0.125374,
		0.781151, -0.104153, 0.615594,
		28.136980, 30.839918, 35.095219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.376917, 30.544018, 35.324371>,  <27.590176, 30.912825, 34.664303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.376917, 30.544018, 35.324371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.715473, 30.728876, 35.430237>,  <27.918606, 30.839792, 35.493755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.715473, 30.728876, 35.430237>,  <27.376917, 30.544018, 35.324371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.715473, 30.728876, 35.430237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468821, 0.410803, 0.781952,
		0.252651, -0.785915, 0.564362,
		0.846389, 0.462145, 0.264664,
		27.969389, 30.867519, 35.509636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.478840, 30.302416, 36.016010>,  <27.376917, 30.544018, 35.324371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.478840, 30.302416, 36.016010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.689074, 30.637833, 35.958588>,  <27.815214, 30.839083, 35.924133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.689074, 30.637833, 35.958588>,  <27.478840, 30.302416, 36.016010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.689074, 30.637833, 35.958588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404200, 0.394616, 0.825167,
		0.748588, -0.375667, 0.546343,
		0.525584, 0.838542, -0.143560,
		27.846748, 30.889395, 35.915520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.867914, 30.402163, 36.629402>,  <27.478840, 30.302416, 36.016010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.867914, 30.402163, 36.629402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.897446, 30.758192, 36.449482>,  <27.915165, 30.971809, 36.341530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.897446, 30.758192, 36.449482>,  <27.867914, 30.402163, 36.629402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.897446, 30.758192, 36.449482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417544, 0.437185, 0.796571,
		0.905652, 0.129000, 0.403922,
		0.073831, 0.890072, -0.449801,
		27.919596, 31.025213, 36.314541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.234140, 30.867086, 37.141422>,  <27.867914, 30.402163, 36.629402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.234140, 30.867086, 37.141422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.028990, 31.095783, 36.885277>,  <27.905899, 31.233002, 36.731590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.028990, 31.095783, 36.885277>,  <28.234140, 30.867086, 37.141422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.028990, 31.095783, 36.885277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363411, 0.531210, 0.765342,
		0.777746, 0.625243, -0.064669,
		-0.512877, 0.571740, -0.640367,
		27.875126, 31.267305, 36.693169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.511290, 31.495026, 37.262562>,  <28.234140, 30.867086, 37.141422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.511290, 31.495026, 37.262562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.138939, 31.528233, 37.120251>,  <27.915529, 31.548157, 37.034863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.138939, 31.528233, 37.120251>,  <28.511290, 31.495026, 37.262562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.138939, 31.528233, 37.120251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206993, 0.682600, 0.700865,
		0.301040, 0.726062, -0.618231,
		-0.930875, 0.083019, -0.355779,
		27.859676, 31.553139, 37.013515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.411293, 32.228382, 37.362709>,  <28.511290, 31.495026, 37.262562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.411293, 32.228382, 37.362709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.071386, 32.017601, 37.356773>,  <27.867443, 31.891132, 37.353210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.071386, 32.017601, 37.356773>,  <28.411293, 32.228382, 37.362709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.071386, 32.017601, 37.356773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462813, 0.732265, 0.499592,
		-0.252392, 0.431406, -0.866133,
		-0.849766, -0.526951, -0.014842,
		27.816456, 31.859516, 37.352322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.131088, 31.931902, 37.642208>,  <28.411293, 32.228382, 37.362709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.131088, 31.931902, 37.642208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.455116, 32.124397, 37.508224>,  <29.649532, 32.239895, 37.427834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.455116, 32.124397, 37.508224>,  <29.131088, 31.931902, 37.642208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.455116, 32.124397, 37.508224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420340, -0.078362, 0.903977,
		0.408782, -0.873079, -0.265763,
		0.810069, 0.481241, -0.334957,
		29.698137, 32.268768, 37.407738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.805691, 31.613537, 37.864986>,  <29.131088, 31.931902, 37.642208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.805691, 31.613537, 37.864986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.831207, 32.009010, 37.810680>,  <29.846518, 32.246296, 37.778099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.831207, 32.009010, 37.810680>,  <29.805691, 31.613537, 37.864986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.831207, 32.009010, 37.810680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563195, 0.076639, 0.822762,
		0.823858, -0.128945, -0.551934,
		0.063791, 0.988686, -0.135761,
		29.850344, 32.305614, 37.769951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.464527, 31.765396, 37.963921>,  <29.805691, 31.613537, 37.864986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.464527, 31.765396, 37.963921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.254307, 32.096260, 38.043518>,  <30.128174, 32.294781, 38.091278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.254307, 32.096260, 38.043518>,  <30.464527, 31.765396, 37.963921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.254307, 32.096260, 38.043518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486147, 0.100028, 0.868133,
		0.698182, 0.552990, -0.454692,
		-0.525551, 0.827162, 0.198996,
		30.096642, 32.344410, 38.103218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.962477, 32.298138, 37.920235>,  <30.464527, 31.765396, 37.963921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.962477, 32.298138, 37.920235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.674047, 32.342171, 38.193859>,  <30.500990, 32.368591, 38.358032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.674047, 32.342171, 38.193859>,  <30.962477, 32.298138, 37.920235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.674047, 32.342171, 38.193859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.692852, 0.119700, 0.711075,
		-0.003607, 0.986689, -0.162581,
		-0.721071, 0.110079, 0.684061,
		30.457726, 32.375195, 38.399078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.169071, 32.718990, 38.460838>,  <30.962477, 32.298138, 37.920235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.169071, 32.718990, 38.460838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.841675, 32.570599, 38.636314>,  <30.645237, 32.481564, 38.741600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.841675, 32.570599, 38.636314>,  <31.169071, 32.718990, 38.460838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.841675, 32.570599, 38.636314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508907, -0.113803, 0.853266,
		-0.266623, 0.921640, 0.281943,
		-0.818490, -0.370983, 0.438686,
		30.596128, 32.459305, 38.767921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.774727, 32.995434, 39.102512>,  <31.169071, 32.718990, 38.460838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.774727, 32.995434, 39.102512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.726910, 32.598309, 39.104740>,  <30.698219, 32.360035, 39.106075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.726910, 32.598309, 39.104740>,  <30.774727, 32.995434, 39.102512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.726910, 32.598309, 39.104740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471459, -0.051827, 0.880364,
		-0.873748, 0.107866, 0.474267,
		-0.119542, -0.992814, 0.005571,
		30.691048, 32.300465, 39.106411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.320787, 32.809082, 39.680367>,  <30.774727, 32.995434, 39.102512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.320787, 32.809082, 39.680367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.563772, 32.503876, 39.591999>,  <30.709562, 32.320751, 39.538979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.563772, 32.503876, 39.591999>,  <30.320787, 32.809082, 39.680367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.563772, 32.503876, 39.591999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358209, 0.014898, 0.933523,
		-0.708997, -0.646213, 0.282367,
		0.607461, -0.763011, -0.220917,
		30.746010, 32.274971, 39.525723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.155964, 32.203003, 40.021450>,  <30.320787, 32.809082, 39.680367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.155964, 32.203003, 40.021450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.549273, 32.192997, 39.949280>,  <30.785257, 32.186993, 39.905979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.549273, 32.192997, 39.949280>,  <30.155964, 32.203003, 40.021450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.549273, 32.192997, 39.949280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179936, -0.020636, 0.983462,
		-0.028354, -0.999474, -0.015784,
		0.983270, -0.025045, -0.180426,
		30.844254, 32.185490, 39.895153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.384501, 31.763920, 40.522797>,  <30.155964, 32.203003, 40.021450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.384501, 31.763920, 40.522797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.687328, 32.013844, 40.446423>,  <30.869026, 32.163799, 40.400597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.687328, 32.013844, 40.446423>,  <30.384501, 31.763920, 40.522797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.687328, 32.013844, 40.446423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140383, 0.129852, 0.981545,
		0.638073, -0.769903, 0.010594,
		0.757070, 0.624810, -0.190936,
		30.914450, 32.201286, 40.389141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.044035, 31.522301, 40.845940>,  <30.384501, 31.763920, 40.522797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.044035, 31.522301, 40.845940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.082035, 31.917200, 40.794846>,  <31.104836, 32.154140, 40.764187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.082035, 31.917200, 40.794846>,  <31.044035, 31.522301, 40.845940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.082035, 31.917200, 40.794846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265101, 0.098594, 0.959167,
		0.959529, -0.124984, -0.252354,
		0.095000, 0.987248, -0.127738,
		31.110535, 32.213375, 40.756523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.617138, 31.761545, 41.294434>,  <31.044035, 31.522301, 40.845940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.617138, 31.761545, 41.294434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.396883, 32.091648, 41.244228>,  <31.264730, 32.289711, 41.214108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.396883, 32.091648, 41.244228>,  <31.617138, 31.761545, 41.294434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.396883, 32.091648, 41.244228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209536, 0.282190, 0.936196,
		0.808020, 0.489204, -0.328304,
		-0.550635, 0.825257, -0.125509,
		31.231693, 32.339226, 41.206577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.089138, 32.227741, 41.515072>,  <31.617138, 31.761545, 41.294434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.089138, 32.227741, 41.515072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.740740, 32.423653, 41.499626>,  <31.531702, 32.541199, 41.490356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.740740, 32.423653, 41.499626>,  <32.089138, 32.227741, 41.515072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.740740, 32.423653, 41.499626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305197, 0.600989, 0.738692,
		0.385004, 0.631609, -0.672935,
		-0.870992, 0.489777, -0.038618,
		31.479443, 32.570587, 41.488041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.348698, 32.829449, 41.658230>,  <32.089138, 32.227741, 41.515072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.348698, 32.829449, 41.658230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.954414, 32.842613, 41.724319>,  <31.717844, 32.850513, 41.763973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.954414, 32.842613, 41.724319>,  <32.348698, 32.829449, 41.658230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.954414, 32.842613, 41.724319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165631, 0.368631, 0.914701,
		-0.030802, 0.928993, -0.368813,
		-0.985707, 0.032912, 0.165224,
		31.658703, 32.852486, 41.773888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.198811, 33.497421, 41.982742>,  <32.348698, 32.829449, 41.658230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.198811, 33.497421, 41.982742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.888626, 33.266979, 42.086094>,  <31.702515, 33.128716, 42.148106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.888626, 33.266979, 42.086094>,  <32.198811, 33.497421, 41.982742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.888626, 33.266979, 42.086094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045646, 0.356995, 0.932990,
		-0.629740, 0.735294, -0.250540,
		-0.775464, -0.576105, 0.258377,
		31.655987, 33.094147, 42.163609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.840506, 33.920162, 42.537983>,  <32.198811, 33.497421, 41.982742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.840506, 33.920162, 42.537983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.706781, 33.545330, 42.578232>,  <31.626547, 33.320431, 42.602383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.706781, 33.545330, 42.578232>,  <31.840506, 33.920162, 42.537983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.706781, 33.545330, 42.578232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003819, 0.108116, 0.994131,
		-0.942456, 0.331963, -0.039723,
		-0.334309, -0.937076, 0.100626,
		31.606489, 33.264206, 42.608421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.175877, 33.995712, 42.963131>,  <31.840506, 33.920162, 42.537983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.175877, 33.995712, 42.963131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.318569, 33.622177, 42.973637>,  <31.404184, 33.398056, 42.979942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.318569, 33.622177, 42.973637>,  <31.175877, 33.995712, 42.963131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.318569, 33.622177, 42.973637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239677, 0.118662, 0.963574,
		-0.902939, -0.337439, 0.266150,
		0.356729, -0.933838, 0.026268,
		31.425589, 33.342026, 42.981518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.767687, 33.783298, 43.533253>,  <31.175877, 33.995712, 42.963131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.767687, 33.783298, 43.533253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.069241, 33.521809, 43.507034>,  <31.250174, 33.364914, 43.491302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.069241, 33.521809, 43.507034>,  <30.767687, 33.783298, 43.533253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.069241, 33.521809, 43.507034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106625, 0.023289, 0.994026,
		-0.648296, -0.756372, 0.087261,
		0.753886, -0.653727, -0.065550,
		31.295406, 33.325691, 43.487370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.647551, 33.289780, 44.065159>,  <30.767687, 33.783298, 43.533253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.647551, 33.289780, 44.065159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.041140, 33.290802, 43.993835>,  <31.277292, 33.291416, 43.951042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.041140, 33.290802, 43.993835>,  <30.647551, 33.289780, 44.065159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.041140, 33.290802, 43.993835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177972, 0.048969, 0.982816,
		0.011240, -0.998797, 0.047729,
		0.983971, 0.002552, -0.178309,
		31.336330, 33.291569, 43.940342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.926291, 32.640881, 44.398518>,  <30.647551, 33.289780, 44.065159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.926291, 32.640881, 44.398518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.225771, 32.901142, 44.347759>,  <31.405458, 33.057297, 44.317303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.225771, 32.901142, 44.347759>,  <30.926291, 32.640881, 44.398518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.225771, 32.901142, 44.347759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136933, 0.035502, 0.989944,
		0.648612, -0.758547, -0.062516,
		0.748700, 0.650650, -0.126897,
		31.450380, 33.096336, 44.309689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.276218, 32.455299, 44.941311>,  <30.926291, 32.640881, 44.398518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.276218, 32.455299, 44.941311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.466700, 32.796780, 44.856998>,  <31.580988, 33.001667, 44.806412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.466700, 32.796780, 44.856998>,  <31.276218, 32.455299, 44.941311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.466700, 32.796780, 44.856998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300357, 0.067370, 0.951444,
		0.826449, -0.516387, -0.224334,
		0.476201, 0.853701, -0.210779,
		31.609560, 33.052891, 44.793766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.942440, 32.370037, 45.171940>,  <31.276218, 32.455299, 44.941311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.942440, 32.370037, 45.171940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.906534, 32.767727, 45.148399>,  <31.884991, 33.006340, 45.134274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.906534, 32.767727, 45.148399>,  <31.942440, 32.370037, 45.171940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.906534, 32.767727, 45.148399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285508, 0.082300, 0.954836,
		0.954163, 0.068909, -0.291246,
		-0.089767, 0.994222, -0.058853,
		31.879604, 33.065994, 45.130745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.528320, 32.689346, 45.380596>,  <31.942440, 32.370037, 45.171940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.528320, 32.689346, 45.380596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.276524, 32.996826, 45.425919>,  <32.125446, 33.181316, 45.453110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.276524, 32.996826, 45.425919>,  <32.528320, 32.689346, 45.380596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.276524, 32.996826, 45.425919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233024, 0.047660, 0.971303,
		0.741242, 0.637830, -0.209128,
		-0.629493, 0.768702, 0.113301,
		32.087677, 33.227436, 45.459908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.938721, 33.276440, 45.741184>,  <32.528320, 32.689346, 45.380596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.938721, 33.276440, 45.741184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.550850, 33.331619, 45.821873>,  <32.318127, 33.364727, 45.870285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.550850, 33.331619, 45.821873>,  <32.938721, 33.276440, 45.741184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.550850, 33.331619, 45.821873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206907, 0.024191, 0.978061,
		0.130044, 0.990144, -0.052000,
		-0.969679, 0.137950, 0.201722,
		32.259945, 33.373005, 45.882389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.932243, 33.839081, 46.138008>,  <32.938721, 33.276440, 45.741184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.932243, 33.839081, 46.138008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.574089, 33.684410, 46.226330>,  <32.359196, 33.591606, 46.279324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.574089, 33.684410, 46.226330>,  <32.932243, 33.839081, 46.138008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.574089, 33.684410, 46.226330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130149, 0.246960, 0.960246,
		-0.425838, 0.888532, -0.170799,
		-0.895390, -0.386680, 0.220807,
		32.305473, 33.568405, 46.292572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.650543, 34.300873, 46.614021>,  <32.932243, 33.839081, 46.138008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.650543, 34.300873, 46.614021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.405025, 33.990677, 46.673176>,  <32.257713, 33.804558, 46.708668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.405025, 33.990677, 46.673176>,  <32.650543, 34.300873, 46.614021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.405025, 33.990677, 46.673176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018786, 0.201615, 0.979285,
		-0.789242, 0.598301, -0.138319,
		-0.613794, -0.775491, 0.147884,
		32.220886, 33.758030, 46.717541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.165028, 34.499043, 47.087040>,  <32.650543, 34.300873, 46.614021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.165028, 34.499043, 47.087040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.137928, 34.100868, 47.113918>,  <32.121670, 33.861961, 47.130043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.137928, 34.100868, 47.113918>,  <32.165028, 34.499043, 47.087040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.137928, 34.100868, 47.113918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254381, 0.082356, 0.963591,
		-0.964728, 0.048189, -0.258800,
		-0.067748, -0.995437, 0.067193,
		32.117603, 33.802238, 47.134075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.596123, 34.337643, 47.443455>,  <32.165028, 34.499043, 47.087040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.596123, 34.337643, 47.443455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.829512, 34.015388, 47.484459>,  <31.969545, 33.822037, 47.509060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.829512, 34.015388, 47.484459>,  <31.596123, 34.337643, 47.443455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.829512, 34.015388, 47.484459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198782, -0.019291, 0.979854,
		-0.787431, -0.592093, -0.171402,
		0.583471, -0.805639, 0.102507,
		32.004555, 33.773697, 47.515209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.230555, 33.941414, 47.915054>,  <31.596123, 34.337643, 47.443455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.230555, 33.941414, 47.915054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.615776, 33.835030, 47.931976>,  <31.846909, 33.771198, 47.942131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.615776, 33.835030, 47.931976>,  <31.230555, 33.941414, 47.915054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.615776, 33.835030, 47.931976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035035, 0.032019, 0.998873,
		-0.267018, -0.963451, 0.021518,
		0.963054, -0.265963, 0.042304,
		31.904692, 33.755241, 47.944668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.256575, 33.334965, 48.353249>,  <31.230555, 33.941414, 47.915054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.256575, 33.334965, 48.353249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.633968, 33.467411, 48.358917>,  <31.860405, 33.546879, 48.362320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.633968, 33.467411, 48.358917>,  <31.256575, 33.334965, 48.353249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.633968, 33.467411, 48.358917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070580, 0.158953, 0.984760,
		0.323819, -0.930105, 0.173340,
		0.943483, 0.331118, 0.014175,
		31.917013, 33.566746, 48.363171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.492056, 33.072853, 48.910919>,  <31.256575, 33.334965, 48.353249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.492056, 33.072853, 48.910919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.759554, 33.366543, 48.864105>,  <31.920053, 33.542755, 48.836018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.759554, 33.366543, 48.864105>,  <31.492056, 33.072853, 48.910919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.759554, 33.366543, 48.864105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032157, 0.128700, 0.991162,
		0.742795, -0.666600, 0.062457,
		0.668747, 0.734221, -0.117034,
		31.960178, 33.586811, 48.828995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.879759, 32.966816, 49.490116>,  <31.492056, 33.072853, 48.910919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.879759, 32.966816, 49.490116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.985662, 33.332150, 49.366360>,  <32.049206, 33.551350, 49.292107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.985662, 33.332150, 49.366360>,  <31.879759, 32.966816, 49.490116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.985662, 33.332150, 49.366360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149243, 0.278169, 0.948867,
		0.952696, -0.297395, -0.062662,
		0.264758, 0.913334, -0.309394,
		32.065090, 33.606148, 49.273540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.530022, 33.082794, 49.731991>,  <31.879759, 32.966816, 49.490116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.530022, 33.082794, 49.731991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.371071, 33.443615, 49.664593>,  <32.275700, 33.660107, 49.624153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.371071, 33.443615, 49.664593>,  <32.530022, 33.082794, 49.731991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.371071, 33.443615, 49.664593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011439, 0.178735, 0.983831,
		0.917582, 0.392883, -0.060708,
		-0.397381, 0.902051, -0.168498,
		32.251858, 33.714230, 49.614044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.860729, 33.576603, 50.179504>,  <32.530022, 33.082794, 49.731991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.860729, 33.576603, 50.179504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.503250, 33.732403, 50.090424>,  <32.288765, 33.825882, 50.036976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.503250, 33.732403, 50.090424>,  <32.860729, 33.576603, 50.179504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.503250, 33.732403, 50.090424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107104, 0.296815, 0.948910,
		0.435704, 0.871888, -0.223545,
		-0.893695, 0.389502, -0.222706,
		32.235142, 33.849255, 50.023613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.902649, 34.304848, 50.344494>,  <32.860729, 33.576603, 50.179504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.902649, 34.304848, 50.344494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.519424, 34.190239, 50.342529>,  <32.289490, 34.121471, 50.341351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.519424, 34.190239, 50.342529>,  <32.902649, 34.304848, 50.344494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.519424, 34.190239, 50.342529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096505, 0.306436, 0.946987,
		-0.269830, 0.907745, -0.321235,
		-0.958060, -0.286526, -0.004916,
		32.232006, 34.104282, 50.341053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.610416, 34.791676, 50.716179>,  <32.902649, 34.304848, 50.344494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.610416, 34.791676, 50.716179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.348969, 34.489437, 50.733440>,  <32.192101, 34.308094, 50.743797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.348969, 34.489437, 50.733440>,  <32.610416, 34.791676, 50.716179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.348969, 34.489437, 50.733440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132431, 0.170327, 0.976448,
		-0.745149, 0.632507, -0.211393,
		-0.653616, -0.755595, 0.043156,
		32.152885, 34.262760, 50.746387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.072701, 35.027729, 51.037968>,  <32.610416, 34.791676, 50.716179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.072701, 35.027729, 51.037968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.069069, 34.631252, 51.090816>,  <32.066891, 34.393368, 51.122524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.069069, 34.631252, 51.090816>,  <32.072701, 35.027729, 51.037968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.069069, 34.631252, 51.090816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051961, 0.132418, 0.989831,
		-0.998608, 0.002125, -0.052706,
		-0.009083, -0.991192, 0.132123,
		32.066345, 34.333897, 51.130455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.105015, 35.039471, 51.774235>,  <32.072701, 35.027729, 51.037968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.105015, 35.039471, 51.774235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.104435, 34.641392, 51.735092>,  <32.104088, 34.402542, 51.711605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.104435, 34.641392, 51.735092>,  <32.105015, 35.039471, 51.774235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.104435, 34.641392, 51.735092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095224, -0.097550, 0.990665,
		-0.995455, -0.007886, 0.094908,
		-0.001446, -0.995199, -0.097857,
		32.104000, 34.342831, 51.705734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.585186, 34.753960, 52.178638>,  <32.105015, 35.039471, 51.774235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.585186, 34.753960, 52.178638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.846596, 34.457138, 52.118958>,  <32.003441, 34.279045, 52.083149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.846596, 34.457138, 52.118958>,  <31.585186, 34.753960, 52.178638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.846596, 34.457138, 52.118958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027512, -0.220285, 0.975048,
		-0.756404, -0.633114, -0.164377,
		0.653526, -0.742053, -0.149206,
		32.042652, 34.234524, 52.074196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.394339, 34.223305, 52.591579>,  <31.585186, 34.753960, 52.178638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.394339, 34.223305, 52.591579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.775881, 34.142014, 52.503166>,  <32.004807, 34.093239, 52.450119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.775881, 34.142014, 52.503166>,  <31.394339, 34.223305, 52.591579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.775881, 34.142014, 52.503166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172570, -0.231352, 0.957443,
		-0.245718, -0.951406, -0.185605,
		0.953857, -0.203231, -0.221031,
		32.062038, 34.081047, 52.436855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.567234, 33.565701, 52.864460>,  <31.394339, 34.223305, 52.591579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.567234, 33.565701, 52.864460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.921694, 33.747795, 52.829807>,  <32.134369, 33.857052, 52.809017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.921694, 33.747795, 52.829807>,  <31.567234, 33.565701, 52.864460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.921694, 33.747795, 52.829807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292865, -0.405289, 0.866009,
		0.359127, -0.792782, -0.492468,
		0.886148, 0.455234, -0.086628,
		32.187538, 33.884365, 52.803818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.079208, 33.051117, 53.030025>,  <31.567234, 33.565701, 52.864460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.079208, 33.051117, 53.030025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.268181, 33.399632, 53.083202>,  <32.381565, 33.608738, 53.115108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.268181, 33.399632, 53.083202>,  <32.079208, 33.051117, 53.030025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.268181, 33.399632, 53.083202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383250, -0.338912, 0.859219,
		0.793679, -0.354972, -0.494032,
		0.472433, 0.871283, 0.132944,
		32.409912, 33.661015, 53.123085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.806557, 32.903519, 53.149769>,  <32.079208, 33.051117, 53.030025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.806557, 32.903519, 53.149769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.724350, 33.260174, 53.311138>,  <32.675026, 33.474167, 53.407959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.724350, 33.260174, 53.311138>,  <32.806557, 32.903519, 53.149769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.724350, 33.260174, 53.311138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243959, -0.352530, 0.903441,
		0.947758, 0.284095, -0.145070,
		-0.205522, 0.891635, 0.403421,
		32.662693, 33.527664, 53.432163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.409470, 33.009933, 53.394039>,  <32.806557, 32.903519, 53.149769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.409470, 33.009933, 53.394039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.159180, 33.228500, 53.616714>,  <33.009007, 33.359642, 53.750320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.159180, 33.228500, 53.616714>,  <33.409470, 33.009933, 53.394039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.159180, 33.228500, 53.616714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430896, -0.352766, 0.830593,
		0.650230, 0.759595, -0.014715,
		-0.625724, 0.546417, 0.556685,
		32.971462, 33.392426, 53.783722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.824505, 33.361473, 53.717297>,  <33.409470, 33.009933, 53.394039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.824505, 33.361473, 53.717297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.504608, 33.393639, 53.955269>,  <33.312668, 33.412937, 54.098053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.504608, 33.393639, 53.955269>,  <33.824505, 33.361473, 53.717297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.504608, 33.393639, 53.955269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565526, -0.231650, 0.791529,
		0.201467, 0.969470, 0.139783,
		-0.799745, 0.080416, 0.594930,
		33.264687, 33.417763, 54.133747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.038418, 33.597054, 54.357349>,  <33.824505, 33.361473, 53.717297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.038418, 33.597054, 54.357349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.682194, 33.459305, 54.476212>,  <33.468460, 33.376656, 54.547531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.682194, 33.459305, 54.476212>,  <34.038418, 33.597054, 54.357349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.682194, 33.459305, 54.476212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405997, -0.307257, 0.860674,
		-0.205087, 0.887131, 0.413446,
		-0.890565, -0.344371, 0.297158,
		33.415024, 33.355995, 54.565357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.952618, 33.910378, 54.970272>,  <34.038418, 33.597054, 54.357349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.952618, 33.910378, 54.970272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.697094, 33.603638, 54.995152>,  <33.543777, 33.419594, 55.010078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.697094, 33.603638, 54.995152>,  <33.952618, 33.910378, 54.970272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.697094, 33.603638, 54.995152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273232, -0.150553, 0.950094,
		-0.719211, 0.623925, 0.305701,
		-0.638811, -0.766846, 0.062197,
		33.505451, 33.373585, 55.013809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.389740, 34.079472, 55.544430>,  <33.952618, 33.910378, 54.970272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.389740, 34.079472, 55.544430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.434185, 33.684135, 55.502804>,  <33.460854, 33.446934, 55.477829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.434185, 33.684135, 55.502804>,  <33.389740, 34.079472, 55.544430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.434185, 33.684135, 55.502804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096986, -0.093429, 0.990891,
		-0.989064, -0.120197, 0.085474,
		0.111116, -0.988344, -0.104065,
		33.467522, 33.387630, 55.471584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.787949, 33.722832, 55.897118>,  <33.389740, 34.079472, 55.544430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.787949, 33.722832, 55.897118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.146233, 33.545658, 55.881542>,  <33.361202, 33.439354, 55.872196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.146233, 33.545658, 55.881542>,  <32.787949, 33.722832, 55.897118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.146233, 33.545658, 55.881542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034141, -0.155831, 0.987193,
		-0.443326, -0.882909, -0.154701,
		0.895710, -0.442931, -0.038940,
		33.414948, 33.412781, 55.869862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.738731, 33.045315, 56.007366>,  <32.787949, 33.722832, 55.897118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.738731, 33.045315, 56.007366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.075932, 33.222965, 56.128765>,  <33.278252, 33.329556, 56.201607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.075932, 33.222965, 56.128765>,  <32.738731, 33.045315, 56.007366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.075932, 33.222965, 56.128765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237467, -0.199003, 0.950793,
		0.482666, -0.873586, -0.062294,
		0.842996, 0.444123, 0.303500,
		33.328831, 33.356201, 56.219814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.233578, 32.551796, 56.312866>,  <32.738731, 33.045315, 56.007366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.233578, 32.551796, 56.312866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.223465, 32.927013, 56.451103>,  <33.217400, 33.152145, 56.534046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.223465, 32.927013, 56.451103>,  <33.233578, 32.551796, 56.312866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.223465, 32.927013, 56.451103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147367, -0.345425, 0.926803,
		0.988759, -0.027501, 0.146969,
		-0.025279, 0.938043, 0.345594,
		33.215881, 33.208427, 56.554783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.284046, 32.586407, 57.055195>,  <33.233578, 32.551796, 56.312866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.284046, 32.586407, 57.055195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.204147, 32.315636, 57.338566>,  <33.156208, 32.153172, 57.508587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.204147, 32.315636, 57.338566>,  <33.284046, 32.586407, 57.055195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.204147, 32.315636, 57.338566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.979242, -0.163329, 0.120037,
		0.034450, 0.717696, 0.695504,
		-0.199746, -0.676931, 0.708425,
		33.144222, 32.112556, 57.551094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.517365, 32.716743, 57.727890>,  <33.284046, 32.586407, 57.055195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.517365, 32.716743, 57.727890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.522938, 32.327145, 57.637436>,  <33.526283, 32.093384, 57.583164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.522938, 32.327145, 57.637436>,  <33.517365, 32.716743, 57.727890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.522938, 32.327145, 57.637436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.963704, -0.047221, 0.262766,
		-0.266611, -0.221590, 0.937985,
		0.013934, -0.973996, -0.226137,
		33.527119, 32.034946, 57.569595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.905647, 32.325741, 58.225586>,  <33.517365, 32.716743, 57.727890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.905647, 32.325741, 58.225586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.922089, 32.097980, 57.897175>,  <33.931953, 31.961323, 57.700127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.922089, 32.097980, 57.897175>,  <33.905647, 32.325741, 58.225586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.922089, 32.097980, 57.897175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.974344, -0.159139, 0.159151,
		-0.221279, -0.806507, 0.548254,
		0.041108, -0.569405, -0.821029,
		33.934422, 31.927158, 57.650867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.115898, 31.593361, 58.463367>,  <33.905647, 32.325741, 58.225586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.115898, 31.593361, 58.463367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.191559, 31.726124, 58.093708>,  <34.236954, 31.805782, 57.871910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.191559, 31.726124, 58.093708>,  <34.115898, 31.593361, 58.463367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.191559, 31.726124, 58.093708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.976968, -0.158280, 0.143116,
		-0.098774, -0.929938, -0.354203,
		0.189152, 0.331909, -0.924153,
		34.248306, 31.825697, 57.816463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.469379, 31.020546, 58.105850>,  <34.115898, 31.593361, 58.463367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.469379, 31.020546, 58.105850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.556629, 31.388678, 57.975983>,  <34.608978, 31.609556, 57.898060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.556629, 31.388678, 57.975983>,  <34.469379, 31.020546, 58.105850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.556629, 31.388678, 57.975983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.973771, -0.183183, 0.134960,
		0.064733, -0.345596, -0.936148,
		0.218128, 0.920330, -0.324673,
		34.622066, 31.664776, 57.878582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.106869, 31.012409, 57.640747>,  <34.469379, 31.020546, 58.105850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.106869, 31.012409, 57.640747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.057796, 31.387861, 57.769691>,  <35.028351, 31.613132, 57.847057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.057796, 31.387861, 57.769691>,  <35.106869, 31.012409, 57.640747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.057796, 31.387861, 57.769691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.968947, 0.043018, 0.243500,
		0.214689, 0.342227, -0.914762,
		-0.122683, 0.938632, 0.322365,
		35.020992, 31.669451, 57.866402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.732815, 30.981459, 57.074844>,  <35.106869, 31.012409, 57.640747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.732815, 30.981459, 57.074844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.368725, 30.917490, 56.922047>,  <34.150272, 30.879108, 56.830368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.368725, 30.917490, 56.922047>,  <34.732815, 30.981459, 57.074844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.368725, 30.917490, 56.922047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410681, -0.230044, -0.882281,
		0.053222, -0.959950, 0.275069,
		-0.910225, -0.159922, -0.381991,
		34.095657, 30.869513, 56.807449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.861748, 30.465656, 56.614540>,  <34.732815, 30.981459, 57.074844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.861748, 30.465656, 56.614540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.532749, 30.668800, 56.512104>,  <34.335350, 30.790688, 56.450642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.532749, 30.668800, 56.512104>,  <34.861748, 30.465656, 56.614540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.532749, 30.668800, 56.512104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247361, -0.086038, -0.965096,
		-0.512167, -0.857132, -0.054859,
		-0.822495, 0.507860, -0.256087,
		34.285999, 30.821157, 56.435280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.587620, 30.037014, 56.140961>,  <34.861748, 30.465656, 56.614540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.587620, 30.037014, 56.140961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.480350, 30.419931, 56.097748>,  <34.415989, 30.649681, 56.071819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.480350, 30.419931, 56.097748>,  <34.587620, 30.037014, 56.140961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.480350, 30.419931, 56.097748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349737, -0.007752, -0.936816,
		-0.897646, -0.289011, -0.332722,
		-0.268171, 0.957294, -0.108037,
		34.399899, 30.707119, 56.065338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.202866, 29.989771, 55.518112>,  <34.587620, 30.037014, 56.140961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.202866, 29.989771, 55.518112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.311333, 30.373055, 55.554558>,  <34.376411, 30.603025, 55.576427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.311333, 30.373055, 55.554558>,  <34.202866, 29.989771, 55.518112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.311333, 30.373055, 55.554558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208345, 0.033989, -0.977465,
		-0.939714, 0.284037, -0.190421,
		0.271164, 0.958211, 0.091117,
		34.392681, 30.660519, 55.581894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.020287, 30.254740, 54.938465>,  <34.202866, 29.989771, 55.518112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.020287, 30.254740, 54.938465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.261787, 30.547773, 55.064194>,  <34.406689, 30.723593, 55.139633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.261787, 30.547773, 55.064194>,  <34.020287, 30.254740, 54.938465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.261787, 30.547773, 55.064194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287449, 0.167706, -0.942999,
		-0.743540, 0.659693, -0.109327,
		0.603755, 0.732584, 0.314325,
		34.442913, 30.767550, 55.158493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.875023, 30.920034, 54.466759>,  <34.020287, 30.254740, 54.938465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.875023, 30.920034, 54.466759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.236069, 30.954271, 54.635502>,  <34.452698, 30.974813, 54.736748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.236069, 30.954271, 54.635502>,  <33.875023, 30.920034, 54.466759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.236069, 30.954271, 54.635502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397153, 0.212366, -0.892844,
		-0.166009, 0.973434, 0.157690,
		0.902613, 0.085593, 0.421857,
		34.506851, 30.979950, 54.762058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.166149, 31.412117, 54.141968>,  <33.875023, 30.920034, 54.466759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.166149, 31.412117, 54.141968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.483807, 31.218351, 54.288757>,  <34.674400, 31.102091, 54.376831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.483807, 31.218351, 54.288757>,  <34.166149, 31.412117, 54.141968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.483807, 31.218351, 54.288757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522294, 0.235305, -0.819659,
		0.310704, 0.842600, 0.439874,
		0.794148, -0.484415, 0.366975,
		34.722050, 31.073027, 54.398849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.795635, 31.876120, 53.937794>,  <34.166149, 31.412117, 54.141968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.795635, 31.876120, 53.937794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.906139, 31.495142, 53.989227>,  <34.972443, 31.266556, 54.020088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.906139, 31.495142, 53.989227>,  <34.795635, 31.876120, 53.937794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.906139, 31.495142, 53.989227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595981, 0.064812, -0.800378,
		0.753982, 0.297742, 0.585543,
		0.276257, -0.952444, 0.128582,
		34.989017, 31.209410, 54.027802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.437111, 31.891733, 53.691029>,  <34.795635, 31.876120, 53.937794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.437111, 31.891733, 53.691029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.312778, 31.511604, 53.684437>,  <35.238178, 31.283527, 53.680481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.312778, 31.511604, 53.684437>,  <35.437111, 31.891733, 53.691029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.312778, 31.511604, 53.684437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504176, -0.150156, -0.850447,
		0.805724, -0.272653, 0.525803,
		-0.310829, -0.950323, -0.016481,
		35.219528, 31.226507, 53.679493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.018646, 31.422888, 53.478523>,  <35.437111, 31.891733, 53.691029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.018646, 31.422888, 53.478523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.697144, 31.201500, 53.391212>,  <35.504242, 31.068668, 53.338825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.697144, 31.201500, 53.391212>,  <36.018646, 31.422888, 53.478523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.697144, 31.201500, 53.391212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303837, -0.066412, -0.950407,
		0.511523, -0.830218, 0.221544,
		-0.803758, -0.553468, -0.218279,
		35.456017, 31.035460, 53.325729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.238701, 30.946148, 53.015209>,  <36.018646, 31.422888, 53.478523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.238701, 30.946148, 53.015209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.843285, 30.958834, 52.956177>,  <35.606033, 30.966446, 52.920757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.843285, 30.958834, 52.956177>,  <36.238701, 30.946148, 53.015209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.843285, 30.958834, 52.956177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145682, -0.055622, -0.987767,
		-0.039523, -0.997949, 0.050366,
		-0.988541, 0.031702, -0.147582,
		35.546722, 30.968349, 52.911903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.113716, 30.447493, 52.475170>,  <36.238701, 30.946148, 53.015209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.113716, 30.447493, 52.475170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.781075, 30.669575, 52.469753>,  <35.581490, 30.802824, 52.466503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.781075, 30.669575, 52.469753>,  <36.113716, 30.447493, 52.475170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.781075, 30.669575, 52.469753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008221, -0.012071, -0.999893,
		-0.555310, -0.831626, 0.005474,
		-0.831603, 0.555205, -0.013540,
		35.531593, 30.836136, 52.465691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.643696, 30.107941, 51.952702>,  <36.113716, 30.447493, 52.475170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.643696, 30.107941, 51.952702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.500790, 30.479956, 51.987095>,  <35.415047, 30.703165, 52.007732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.500790, 30.479956, 51.987095>,  <35.643696, 30.107941, 51.952702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.500790, 30.479956, 51.987095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051042, 0.072481, -0.996063,
		-0.932609, -0.360243, 0.021576,
		-0.357261, 0.930038, 0.085984,
		35.393612, 30.758966, 52.012890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.061855, 30.168114, 51.531532>,  <35.643696, 30.107941, 51.952702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.061855, 30.168114, 51.531532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.144768, 30.555225, 51.588711>,  <35.194515, 30.787493, 51.623016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.144768, 30.555225, 51.588711>,  <35.061855, 30.168114, 51.531532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.144768, 30.555225, 51.588711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163571, 0.178348, -0.970277,
		-0.964510, 0.177739, 0.195269,
		0.207282, 0.967782, 0.142945,
		35.206951, 30.845560, 51.631596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.558167, 30.531219, 51.266628>,  <35.061855, 30.168114, 51.531532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.558167, 30.531219, 51.266628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.864594, 30.788233, 51.273422>,  <35.048450, 30.942440, 51.277500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.864594, 30.788233, 51.273422>,  <34.558167, 30.531219, 51.266628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.864594, 30.788233, 51.273422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178937, 0.238572, -0.954497,
		-0.617348, 0.728172, 0.297736,
		0.766070, 0.642533, 0.016985,
		35.094414, 30.980993, 51.278519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.406998, 31.093182, 50.881367>,  <34.558167, 30.531219, 51.266628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.406998, 31.093182, 50.881367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.803028, 31.149357, 50.883743>,  <35.040646, 31.183062, 50.885170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.803028, 31.149357, 50.883743>,  <34.406998, 31.093182, 50.881367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.803028, 31.149357, 50.883743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034803, 0.285895, -0.957629,
		-0.136186, 0.947914, 0.287944,
		0.990072, 0.140437, 0.005944,
		35.100048, 31.191488, 50.885525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.575020, 31.775803, 50.627762>,  <34.406998, 31.093182, 50.881367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.575020, 31.775803, 50.627762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.875828, 31.525890, 50.543743>,  <35.056313, 31.375942, 50.493332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.875828, 31.525890, 50.543743>,  <34.575020, 31.775803, 50.627762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.875828, 31.525890, 50.543743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048713, 0.265114, -0.962986,
		0.657343, 0.734413, 0.168934,
		0.752016, -0.624783, -0.210046,
		35.101433, 31.338455, 50.480728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.046970, 32.126995, 50.203308>,  <34.575020, 31.775803, 50.627762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.046970, 32.126995, 50.203308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.219055, 31.770006, 50.149033>,  <35.322304, 31.555813, 50.116467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.219055, 31.770006, 50.149033>,  <35.046970, 32.126995, 50.203308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.219055, 31.770006, 50.149033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107767, 0.200014, -0.973849,
		0.896275, 0.404334, 0.182227,
		0.430207, -0.892474, -0.135693,
		35.348118, 31.502264, 50.108326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.315334, 32.142937, 49.590271>,  <35.046970, 32.126995, 50.203308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.315334, 32.142937, 49.590271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.352219, 31.747416, 49.637203>,  <35.374352, 31.510103, 49.665363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.352219, 31.747416, 49.637203>,  <35.315334, 32.142937, 49.590271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.352219, 31.747416, 49.637203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086511, -0.109431, -0.990222,
		0.991974, 0.101464, 0.075451,
		0.092215, -0.988802, 0.117331,
		35.379883, 31.450775, 49.672401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.986950, 31.876921, 49.207642>,  <35.315334, 32.142937, 49.590271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.986950, 31.876921, 49.207642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.723003, 31.580172, 49.255306>,  <35.564636, 31.402122, 49.283905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.723003, 31.580172, 49.255306>,  <35.986950, 31.876921, 49.207642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.723003, 31.580172, 49.255306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115472, -0.056582, -0.991698,
		0.742458, -0.668148, -0.048329,
		-0.659866, -0.741874, 0.119162,
		35.525043, 31.357609, 49.291054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.138569, 31.296776, 48.682823>,  <35.986950, 31.876921, 49.207642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.138569, 31.296776, 48.682823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.754791, 31.252707, 48.786617>,  <35.524525, 31.226265, 48.848896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.754791, 31.252707, 48.786617>,  <36.138569, 31.296776, 48.682823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.754791, 31.252707, 48.786617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234492, -0.199029, -0.951526,
		0.156478, -0.973781, 0.165122,
		-0.959442, -0.110173, 0.259488,
		35.466957, 31.219654, 48.864464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.930050, 30.760572, 48.230141>,  <36.138569, 31.296776, 48.682823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.930050, 30.760572, 48.230141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.580791, 30.905350, 48.360744>,  <35.371235, 30.992216, 48.439106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.580791, 30.905350, 48.360744>,  <35.930050, 30.760572, 48.230141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.580791, 30.905350, 48.360744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484055, -0.564883, -0.668280,
		-0.057442, -0.741556, 0.668428,
		-0.873150, 0.361943, 0.326505,
		35.318848, 31.013933, 48.458694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.517204, 30.210026, 48.294811>,  <35.930050, 30.760572, 48.230141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.517204, 30.210026, 48.294811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.291752, 30.535875, 48.240093>,  <35.156483, 30.731384, 48.207264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.291752, 30.535875, 48.240093>,  <35.517204, 30.210026, 48.294811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.291752, 30.535875, 48.240093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375190, -0.400004, -0.836199,
		-0.735904, -0.419984, 0.531092,
		-0.563629, 0.814623, -0.136791,
		35.122662, 30.780262, 48.199055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.911884, 30.017460, 47.941544>,  <35.517204, 30.210026, 48.294811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.911884, 30.017460, 47.941544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.897408, 30.413870, 47.890068>,  <34.888721, 30.651716, 47.859180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.897408, 30.413870, 47.890068>,  <34.911884, 30.017460, 47.941544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.897408, 30.413870, 47.890068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265828, -0.133683, -0.954706,
		-0.963341, -0.000342, 0.268280,
		-0.036191, 0.991024, -0.128692,
		34.886551, 30.711178, 47.851460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.296413, 30.211687, 47.699791>,  <34.911884, 30.017460, 47.941544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.296413, 30.211687, 47.699791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.548725, 30.501545, 47.588787>,  <34.700111, 30.675461, 47.522186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.548725, 30.501545, 47.588787>,  <34.296413, 30.211687, 47.699791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.548725, 30.501545, 47.588787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366327, -0.037175, -0.929743,
		-0.684051, 0.688117, 0.242009,
		0.630776, 0.724647, -0.277506,
		34.737957, 30.718939, 47.505535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.897179, 30.715252, 47.303040>,  <34.296413, 30.211687, 47.699791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.897179, 30.715252, 47.303040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.269421, 30.788931, 47.176525>,  <34.492767, 30.833139, 47.100616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.269421, 30.788931, 47.176525>,  <33.897179, 30.715252, 47.303040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.269421, 30.788931, 47.176525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297248, -0.123874, -0.946731,
		-0.213567, 0.975052, -0.060525,
		0.930609, 0.184199, -0.316288,
		34.548603, 30.844191, 47.081638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.822876, 31.145306, 46.750332>,  <33.897179, 30.715252, 47.303040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.822876, 31.145306, 46.750332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.203506, 31.028019, 46.713402>,  <34.431885, 30.957647, 46.691242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.203506, 31.028019, 46.713402>,  <33.822876, 31.145306, 46.750332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.203506, 31.028019, 46.713402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126073, -0.098328, -0.987136,
		0.280365, 0.950977, -0.130533,
		0.951578, -0.293215, -0.092325,
		34.488979, 30.940054, 46.685703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.031933, 31.498060, 46.193226>,  <33.822876, 31.145306, 46.750332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.031933, 31.498060, 46.193226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.305656, 31.206842, 46.209625>,  <34.469891, 31.032112, 46.219463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.305656, 31.206842, 46.209625>,  <34.031933, 31.498060, 46.193226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.305656, 31.206842, 46.209625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042153, -0.095623, -0.994525,
		0.727976, 0.678830, -0.096124,
		0.684305, -0.728042, 0.040997,
		34.510948, 30.988430, 46.221924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.560623, 31.614410, 45.561470>,  <34.031933, 31.498060, 46.193226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.560623, 31.614410, 45.561470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.624233, 31.236200, 45.675095>,  <34.662399, 31.009274, 45.743271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.624233, 31.236200, 45.675095>,  <34.560623, 31.614410, 45.561470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.624233, 31.236200, 45.675095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021648, -0.290994, -0.956480,
		0.987037, 0.145955, -0.066744,
		0.159025, -0.945526, 0.284063,
		34.671940, 30.952543, 45.760315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.179028, 31.303110, 45.191994>,  <34.560623, 31.614410, 45.561470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.179028, 31.303110, 45.191994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.935112, 31.003481, 45.295567>,  <34.788765, 30.823704, 45.357712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.935112, 31.003481, 45.295567>,  <35.179028, 31.303110, 45.191994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.935112, 31.003481, 45.295567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013283, -0.317001, -0.948332,
		0.792455, -0.581719, 0.183353,
		-0.609786, -0.749075, 0.258936,
		34.752174, 30.778759, 45.373249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.464054, 30.582003, 44.898537>,  <35.179028, 31.303110, 45.191994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.464054, 30.582003, 44.898537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.075169, 30.532093, 44.977772>,  <34.841839, 30.502148, 45.025314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.075169, 30.532093, 44.977772>,  <35.464054, 30.582003, 44.898537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.075169, 30.532093, 44.977772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153241, -0.300507, -0.941389,
		0.176986, -0.945583, 0.273036,
		-0.972211, -0.124772, 0.198088,
		34.783504, 30.494661, 45.037197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.251213, 29.892147, 44.558647>,  <35.464054, 30.582003, 44.898537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.251213, 29.892147, 44.558647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.927132, 30.121929, 44.605251>,  <34.732685, 30.259798, 44.633213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.927132, 30.121929, 44.605251>,  <35.251213, 29.892147, 44.558647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.927132, 30.121929, 44.605251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216135, -0.108018, -0.970370,
		-0.544848, -0.811377, 0.211676,
		-0.810201, 0.574455, 0.116514,
		34.684071, 30.294266, 44.640205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.742100, 29.622032, 44.104610>,  <35.251213, 29.892147, 44.558647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.742100, 29.622032, 44.104610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.539001, 29.952782, 44.201336>,  <34.417141, 30.151232, 44.259373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.539001, 29.952782, 44.201336>,  <34.742100, 29.622032, 44.104610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.539001, 29.952782, 44.201336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213195, 0.151356, -0.965215,
		-0.834708, -0.541641, 0.099434,
		-0.507750, 0.826872, 0.241813,
		34.386677, 30.200844, 44.273880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.043736, 29.561066, 43.806538>,  <34.742100, 29.622032, 44.104610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.043736, 29.561066, 43.806538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.119606, 29.950151, 43.859982>,  <34.165127, 30.183603, 43.892048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.119606, 29.950151, 43.859982>,  <34.043736, 29.561066, 43.806538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.119606, 29.950151, 43.859982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258754, 0.180793, -0.948873,
		-0.947138, 0.145404, 0.285985,
		0.189674, 0.972713, 0.133612,
		34.176510, 30.241966, 43.900066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.601692, 29.851620, 43.412693>,  <34.043736, 29.561066, 43.806538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.601692, 29.851620, 43.412693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.879734, 30.134893, 43.462185>,  <34.046558, 30.304857, 43.491882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.879734, 30.134893, 43.462185>,  <33.601692, 29.851620, 43.412693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.879734, 30.134893, 43.462185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006474, 0.165936, -0.986115,
		-0.718883, 0.686251, 0.110758,
		0.695101, 0.708184, 0.123731,
		34.088264, 30.347349, 43.499306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.289528, 30.489233, 43.137146>,  <33.601692, 29.851620, 43.412693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.289528, 30.489233, 43.137146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.686367, 30.539200, 43.141872>,  <33.924469, 30.569180, 43.144711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.686367, 30.539200, 43.141872>,  <33.289528, 30.489233, 43.137146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.686367, 30.539200, 43.141872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023245, 0.275535, -0.961010,
		-0.123302, 0.953140, 0.276261,
		0.992097, 0.124916, 0.011819,
		33.983997, 30.576675, 43.145416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.419388, 31.174505, 43.000954>,  <33.289528, 30.489233, 43.137146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.419388, 31.174505, 43.000954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.742241, 30.975445, 42.873913>,  <33.935955, 30.856009, 42.797688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.742241, 30.975445, 42.873913>,  <33.419388, 31.174505, 43.000954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.742241, 30.975445, 42.873913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135881, 0.366934, -0.920269,
		0.574514, 0.785940, 0.228545,
		0.807137, -0.497653, -0.317603,
		33.984383, 30.826149, 42.778633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.778843, 31.660797, 42.581387>,  <33.419388, 31.174505, 43.000954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.778843, 31.660797, 42.581387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.990616, 31.330448, 42.503788>,  <34.117680, 31.132238, 42.457230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.990616, 31.330448, 42.503788>,  <33.778843, 31.660797, 42.581387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.990616, 31.330448, 42.503788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257738, 0.374452, -0.890706,
		0.808250, 0.421572, 0.411107,
		0.529436, -0.825871, -0.193997,
		34.149448, 31.082687, 42.445587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.488045, 31.834219, 42.456249>,  <33.778843, 31.660797, 42.581387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.488045, 31.834219, 42.456249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.377972, 31.494835, 42.275410>,  <34.311928, 31.291204, 42.166904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.377972, 31.494835, 42.275410>,  <34.488045, 31.834219, 42.456249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.377972, 31.494835, 42.275410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302752, 0.369850, -0.878381,
		0.912478, -0.378587, 0.155096,
		-0.275181, -0.848459, -0.452098,
		34.295418, 31.240297, 42.139782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.124252, 31.708054, 41.931030>,  <34.488045, 31.834219, 42.456249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.124252, 31.708054, 41.931030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.809139, 31.490423, 41.815525>,  <34.620071, 31.359846, 41.746220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.809139, 31.490423, 41.815525>,  <35.124252, 31.708054, 41.931030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.809139, 31.490423, 41.815525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113348, 0.332752, -0.936177,
		0.605437, -0.770233, -0.200466,
		-0.787780, -0.544074, -0.288765,
		34.572803, 31.327202, 41.728897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.339962, 31.324394, 41.403698>,  <35.124252, 31.708054, 41.931030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.339962, 31.324394, 41.403698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.942371, 31.355658, 41.372971>,  <34.703815, 31.374416, 41.354534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.942371, 31.355658, 41.372971>,  <35.339962, 31.324394, 41.403698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.942371, 31.355658, 41.372971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092664, 0.225187, -0.969899,
		-0.058507, -0.971176, -0.231073,
		-0.993977, 0.078158, -0.076818,
		34.644176, 31.379105, 41.349926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.078945, 31.360897, 41.057880>,  <35.339962, 31.324394, 41.403698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.078945, 31.360897, 41.057880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.340874, 31.066826, 40.987762>,  <36.498032, 30.890383, 40.945690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.340874, 31.066826, 40.987762>,  <36.078945, 31.360897, 41.057880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.340874, 31.066826, 40.987762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176774, -0.076527, 0.981272,
		-0.734824, -0.673541, 0.079849,
		0.654817, -0.735177, -0.175298,
		36.537319, 30.846273, 40.935173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.802891, 30.696669, 41.365253>,  <36.078945, 31.360897, 41.057880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.802891, 30.696669, 41.365253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.201885, 30.710411, 41.340462>,  <36.441280, 30.718657, 41.325588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.201885, 30.710411, 41.340462>,  <35.802891, 30.696669, 41.365253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.201885, 30.710411, 41.340462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065313, -0.106435, 0.992172,
		0.027492, -0.993726, -0.108411,
		0.997486, 0.034357, -0.061977,
		36.501129, 30.720718, 41.321869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.965317, 30.234106, 41.848965>,  <35.802891, 30.696669, 41.365253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.965317, 30.234106, 41.848965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.310432, 30.432144, 41.808033>,  <36.517502, 30.550968, 41.783474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.310432, 30.432144, 41.808033>,  <35.965317, 30.234106, 41.848965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.310432, 30.432144, 41.808033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125335, -0.013382, 0.992024,
		0.489779, -0.868735, -0.073599,
		0.862791, 0.495097, -0.102328,
		36.569271, 30.580673, 41.777336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.420921, 29.880861, 42.354263>,  <35.965317, 30.234106, 41.848965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.420921, 29.880861, 42.354263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.584778, 30.236773, 42.273773>,  <36.683090, 30.450319, 42.225479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.584778, 30.236773, 42.273773>,  <36.420921, 29.880861, 42.354263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.584778, 30.236773, 42.273773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335187, 0.058343, 0.940344,
		0.848438, -0.452648, -0.274343,
		0.409638, 0.889779, -0.201222,
		36.707668, 30.503706, 42.213406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.158615, 29.885317, 42.720215>,  <36.420921, 29.880861, 42.354263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.158615, 29.885317, 42.720215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.071789, 30.272020, 42.666164>,  <37.019691, 30.504042, 42.633732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.071789, 30.272020, 42.666164>,  <37.158615, 29.885317, 42.720215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.071789, 30.272020, 42.666164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234171, 0.185959, 0.954245,
		0.947653, 0.175491, -0.266752,
		-0.217066, 0.966759, -0.135130,
		37.006668, 30.562048, 42.625626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.659229, 30.207886, 43.173832>,  <37.158615, 29.885317, 42.720215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.659229, 30.207886, 43.173832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.377880, 30.478476, 43.086517>,  <37.209072, 30.640829, 43.034130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.377880, 30.478476, 43.086517>,  <37.659229, 30.207886, 43.173832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.377880, 30.478476, 43.086517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132846, 0.426783, 0.894544,
		0.698298, 0.600198, -0.390054,
		-0.703372, 0.676475, -0.218288,
		37.166870, 30.681417, 43.021030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.040684, 30.744892, 43.313274>,  <37.659229, 30.207886, 43.173832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.040684, 30.744892, 43.313274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.646229, 30.811228, 43.315605>,  <37.409557, 30.851028, 43.317005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.646229, 30.811228, 43.315605>,  <38.040684, 30.744892, 43.313274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.646229, 30.811228, 43.315605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067814, 0.370692, 0.926277,
		0.151451, 0.913830, -0.376799,
		-0.986136, 0.165838, 0.005829,
		37.350388, 30.860979, 43.317352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.023403, 31.537888, 43.604427>,  <38.040684, 30.744892, 43.313274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.023403, 31.537888, 43.604427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.676868, 31.339848, 43.630768>,  <37.468948, 31.221024, 43.646572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.676868, 31.339848, 43.630768>,  <38.023403, 31.537888, 43.604427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.676868, 31.339848, 43.630768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075306, 0.259813, 0.962718,
		-0.493751, 0.829079, -0.262370,
		-0.866337, -0.495101, 0.065848,
		37.416969, 31.191317, 43.650520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.528149, 31.960815, 43.844784>,  <38.023403, 31.537888, 43.604427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.528149, 31.960815, 43.844784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.370140, 31.611557, 43.959026>,  <37.275333, 31.402002, 44.027573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.370140, 31.611557, 43.959026>,  <37.528149, 31.960815, 43.844784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.370140, 31.611557, 43.959026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185140, 0.228845, 0.955695,
		-0.899822, 0.430400, 0.071255,
		-0.395024, -0.873147, 0.285603,
		37.251633, 31.349613, 44.044708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.177353, 32.053093, 44.599979>,  <37.528149, 31.960815, 43.844784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.177353, 32.053093, 44.599979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.245689, 31.659603, 44.577736>,  <37.286690, 31.423508, 44.564388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.245689, 31.659603, 44.577736>,  <37.177353, 32.053093, 44.599979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.245689, 31.659603, 44.577736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392983, 0.016276, 0.919402,
		-0.903536, -0.178926, 0.389369,
		0.170842, -0.983728, -0.055609,
		37.296944, 31.364485, 44.561054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.882500, 31.805725, 45.214668>,  <37.177353, 32.053093, 44.599979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.882500, 31.805725, 45.214668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.133057, 31.517710, 45.095222>,  <37.283390, 31.344900, 45.023556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.133057, 31.517710, 45.095222>,  <36.882500, 31.805725, 45.214668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.133057, 31.517710, 45.095222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405549, -0.026128, 0.913700,
		-0.665700, -0.693443, 0.275644,
		0.626397, -0.720037, -0.298619,
		37.320976, 31.301699, 45.005638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.745651, 31.207766, 45.649605>,  <36.882500, 31.805725, 45.214668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.745651, 31.207766, 45.649605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.108627, 31.192822, 45.482193>,  <37.326412, 31.183855, 45.381748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.108627, 31.192822, 45.482193>,  <36.745651, 31.207766, 45.649605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.108627, 31.192822, 45.482193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392300, -0.281508, 0.875702,
		-0.150534, -0.958831, -0.240795,
		0.907436, -0.037359, -0.418526,
		37.380859, 31.181614, 45.356636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.988823, 30.514118, 45.824623>,  <36.745651, 31.207766, 45.649605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.988823, 30.514118, 45.824623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.320457, 30.729530, 45.764484>,  <37.519436, 30.858778, 45.728401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.320457, 30.729530, 45.764484>,  <36.988823, 30.514118, 45.824623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.320457, 30.729530, 45.764484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199337, -0.033465, 0.979359,
		0.522383, -0.841941, -0.135094,
		0.829084, 0.538530, -0.150349,
		37.569183, 30.891088, 45.719379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.483772, 30.177959, 46.052559>,  <36.988823, 30.514118, 45.824623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.483772, 30.177959, 46.052559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.621147, 30.553423, 46.065037>,  <37.703571, 30.778702, 46.072525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.621147, 30.553423, 46.065037>,  <37.483772, 30.177959, 46.052559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.621147, 30.553423, 46.065037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261202, -0.127366, 0.956845,
		0.902124, -0.320465, -0.288921,
		0.343434, 0.938659, 0.031194,
		37.724178, 30.835020, 46.074394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.059944, 30.133759, 46.376972>,  <37.483772, 30.177959, 46.052559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.059944, 30.133759, 46.376972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.960922, 30.519409, 46.415295>,  <37.901508, 30.750799, 46.438290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.960922, 30.519409, 46.415295>,  <38.059944, 30.133759, 46.376972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.960922, 30.519409, 46.415295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256448, -0.030156, 0.966088,
		0.934319, 0.263729, -0.239783,
		-0.247554, 0.964125, 0.095808,
		37.886658, 30.808647, 46.444038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.499016, 30.409370, 46.979694>,  <38.059944, 30.133759, 46.376972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.499016, 30.409370, 46.979694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.220390, 30.695396, 46.956081>,  <38.053215, 30.867012, 46.941914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.220390, 30.695396, 46.956081>,  <38.499016, 30.409370, 46.979694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.220390, 30.695396, 46.956081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018086, 0.099748, 0.994848,
		0.717270, 0.691904, -0.082414,
		-0.696560, 0.715066, -0.059032,
		38.011421, 30.909916, 46.938374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.824661, 30.904594, 47.423050>,  <38.499016, 30.409370, 46.979694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.824661, 30.904594, 47.423050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.441719, 31.013988, 47.385780>,  <38.211956, 31.079626, 47.363419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.441719, 31.013988, 47.385780>,  <38.824661, 30.904594, 47.423050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.441719, 31.013988, 47.385780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026019, 0.239576, 0.970529,
		0.287750, 0.931562, -0.222243,
		-0.957352, 0.273487, -0.093176,
		38.154514, 31.096035, 47.357826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.689018, 31.579807, 47.752640>,  <38.824661, 30.904594, 47.423050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.689018, 31.579807, 47.752640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.328777, 31.407467, 47.729744>,  <38.112633, 31.304062, 47.716007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.328777, 31.407467, 47.729744>,  <38.689018, 31.579807, 47.752640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.328777, 31.407467, 47.729744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219310, 0.336760, 0.915694,
		-0.375251, 0.837233, -0.397778,
		-0.900605, -0.430852, -0.057244,
		38.058598, 31.278212, 47.712570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.220669, 31.960968, 48.129662>,  <38.689018, 31.579807, 47.752640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.220669, 31.960968, 48.129662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.003696, 31.625822, 48.105156>,  <37.873512, 31.424734, 48.090450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.003696, 31.625822, 48.105156>,  <38.220669, 31.960968, 48.129662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.003696, 31.625822, 48.105156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276350, 0.109085, 0.954846,
		-0.793348, 0.534868, -0.290715,
		-0.542430, -0.837864, -0.061269,
		37.840969, 31.374462, 48.086777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.483536, 32.121361, 48.328026>,  <38.220669, 31.960968, 48.129662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.483536, 32.121361, 48.328026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.532867, 31.727411, 48.376724>,  <37.562466, 31.491043, 48.405945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.532867, 31.727411, 48.376724>,  <37.483536, 32.121361, 48.328026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.532867, 31.727411, 48.376724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246851, 0.088383, 0.965014,
		-0.961173, -0.149068, -0.232216,
		0.123329, -0.984869, 0.121749,
		37.569866, 31.431950, 48.413250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.843025, 31.843620, 48.682594>,  <37.483536, 32.121361, 48.328026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.843025, 31.843620, 48.682594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.146885, 31.594790, 48.758430>,  <37.329201, 31.445490, 48.803932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.146885, 31.594790, 48.758430>,  <36.843025, 31.843620, 48.682594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.146885, 31.594790, 48.758430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248799, -0.008640, 0.968516,
		-0.600855, -0.782907, -0.161337,
		0.759652, -0.622079, 0.189595,
		37.374779, 31.408165, 48.815308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.626495, 31.467915, 49.345448>,  <36.843025, 31.843620, 48.682594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.626495, 31.467915, 49.345448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.012043, 31.364418, 49.320126>,  <37.243370, 31.302320, 49.304932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.012043, 31.364418, 49.320126>,  <36.626495, 31.467915, 49.345448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.012043, 31.364418, 49.320126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059034, -0.024263, 0.997961,
		-0.259751, -0.965642, -0.008112,
		0.963870, -0.258742, -0.063308,
		37.301205, 31.286795, 49.301132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.793255, 30.805185, 49.739662>,  <36.626495, 31.467915, 49.345448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.793255, 30.805185, 49.739662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.121693, 31.032036, 49.713825>,  <37.318756, 31.168146, 49.698322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.121693, 31.032036, 49.713825>,  <36.793255, 30.805185, 49.739662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.121693, 31.032036, 49.713825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173570, -0.140276, 0.974780,
		0.543761, -0.811599, -0.213615,
		0.821095, 0.567125, -0.064592,
		37.368023, 31.202173, 49.694447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.348843, 30.505598, 50.132164>,  <36.793255, 30.805185, 49.739662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.348843, 30.505598, 50.132164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.509979, 30.870804, 50.106476>,  <37.606659, 31.089928, 50.091064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.509979, 30.870804, 50.106476>,  <37.348843, 30.505598, 50.132164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.509979, 30.870804, 50.106476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363539, -0.095221, 0.926700,
		0.839977, -0.396654, -0.370276,
		0.402838, 0.913016, -0.064216,
		37.630829, 31.144709, 50.087212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.883305, 30.488018, 50.633038>,  <37.348843, 30.505598, 50.132164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.883305, 30.488018, 50.633038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.849430, 30.875834, 50.541107>,  <37.829105, 31.108522, 50.485950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.849430, 30.875834, 50.541107>,  <37.883305, 30.488018, 50.633038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.849430, 30.875834, 50.541107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357492, 0.244860, 0.901245,
		0.930069, -0.005837, -0.367339,
		-0.084687, 0.969541, -0.229824,
		37.824024, 31.166697, 50.472160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.506176, 30.820221, 50.835964>,  <37.883305, 30.488018, 50.633038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.506176, 30.820221, 50.835964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.209152, 31.088131, 50.834579>,  <38.030937, 31.248877, 50.833748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.209152, 31.088131, 50.834579>,  <38.506176, 30.820221, 50.835964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.209152, 31.088131, 50.834579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215455, 0.243762, 0.945600,
		0.634183, 0.701415, -0.325313,
		-0.742557, 0.669774, -0.003466,
		37.986385, 31.289062, 50.833538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.859768, 31.494873, 51.082848>,  <38.506176, 30.820221, 50.835964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.859768, 31.494873, 51.082848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.465595, 31.493038, 51.150864>,  <38.229092, 31.491938, 51.191673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.465595, 31.493038, 51.150864>,  <38.859768, 31.494873, 51.082848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.465595, 31.493038, 51.150864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167020, 0.163221, 0.972349,
		-0.032215, 0.986579, -0.160076,
		-0.985427, -0.004589, 0.170037,
		38.169968, 31.491661, 51.201874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.639442, 32.090641, 51.504234>,  <38.859768, 31.494873, 51.082848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.639442, 32.090641, 51.504234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.325336, 31.851427, 51.568375>,  <38.136871, 31.707899, 51.606861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.325336, 31.851427, 51.568375>,  <38.639442, 32.090641, 51.504234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.325336, 31.851427, 51.568375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084054, 0.153625, 0.984548,
		-0.613425, 0.786612, -0.070370,
		-0.785268, -0.598031, 0.160355,
		38.089756, 31.672018, 51.616482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.192089, 32.456425, 52.016296>,  <38.639442, 32.090641, 51.504234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.192089, 32.456425, 52.016296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.044437, 32.084743, 52.023636>,  <37.955849, 31.861736, 52.028038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.044437, 32.084743, 52.023636>,  <38.192089, 32.456425, 52.016296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.044437, 32.084743, 52.023636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077305, 0.050367, 0.995734,
		-0.926159, 0.366133, -0.090424,
		-0.369125, -0.929199, 0.018344,
		37.933701, 31.805984, 52.029140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.541519, 32.534866, 52.383026>,  <38.192089, 32.456425, 52.016296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.541519, 32.534866, 52.383026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.639534, 32.147179, 52.392616>,  <37.698341, 31.914566, 52.398369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.639534, 32.147179, 52.392616>,  <37.541519, 32.534866, 52.383026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.639534, 32.147179, 52.392616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002088, 0.025252, 0.999679,
		-0.969512, -0.244906, 0.008211,
		0.245035, -0.969218, 0.023971,
		37.713043, 31.856413, 52.399807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.040546, 32.192150, 52.783398>,  <37.541519, 32.534866, 52.383026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.040546, 32.192150, 52.783398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.349007, 31.937515, 52.779678>,  <37.534081, 31.784735, 52.777447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.349007, 31.937515, 52.779678>,  <37.040546, 32.192150, 52.783398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.349007, 31.937515, 52.779678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007156, -0.005944, 0.999957,
		-0.636616, -0.771181, -0.000028,
		0.771148, -0.636589, -0.009303,
		37.580353, 31.746538, 52.776886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.810562, 31.599457, 53.207603>,  <37.040546, 32.192150, 52.783398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.810562, 31.599457, 53.207603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.208996, 31.633318, 53.197338>,  <37.448055, 31.653635, 53.191177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.208996, 31.633318, 53.197338>,  <36.810562, 31.599457, 53.207603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.208996, 31.633318, 53.197338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025790, -0.000356, 0.999667,
		0.084619, -0.996410, -0.002538,
		0.996079, 0.084657, -0.025668,
		37.507820, 31.658714, 53.189636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.849018, 31.370256, 53.829865>,  <36.810562, 31.599457, 53.207603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.849018, 31.370256, 53.829865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.221745, 31.489964, 53.747726>,  <37.445381, 31.561787, 53.698444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.221745, 31.489964, 53.747726>,  <36.849018, 31.370256, 53.829865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.221745, 31.489964, 53.747726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171098, 0.136746, 0.975718,
		0.320079, -0.944320, 0.076218,
		0.931813, 0.299266, -0.205341,
		37.501289, 31.579742, 53.686123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.333366, 31.108099, 54.309139>,  <36.849018, 31.370256, 53.829865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.333366, 31.108099, 54.309139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.546902, 31.410120, 54.156872>,  <37.675022, 31.591333, 54.065510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.546902, 31.410120, 54.156872>,  <37.333366, 31.108099, 54.309139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.546902, 31.410120, 54.156872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246066, 0.291990, 0.924226,
		0.808991, -0.587059, -0.029917,
		0.533840, 0.755052, -0.380673,
		37.707054, 31.636635, 54.042671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.068935, 31.156456, 54.689575>,  <37.333366, 31.108099, 54.309139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.068935, 31.156456, 54.689575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.975342, 31.522100, 54.557121>,  <37.919186, 31.741488, 54.477650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.975342, 31.522100, 54.557121>,  <38.068935, 31.156456, 54.689575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.975342, 31.522100, 54.557121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203386, 0.379073, 0.902739,
		0.950730, 0.143876, -0.274614,
		-0.233981, 0.914113, -0.331134,
		37.905148, 31.796335, 54.457783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.444454, 31.640980, 55.061836>,  <38.068935, 31.156456, 54.689575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.444454, 31.640980, 55.061836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.153915, 31.867168, 54.905548>,  <37.979591, 32.002884, 54.811775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.153915, 31.867168, 54.905548>,  <38.444454, 31.640980, 55.061836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.153915, 31.867168, 54.905548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091476, 0.483876, 0.870342,
		0.681217, 0.667910, -0.299734,
		-0.726344, 0.565473, -0.390722,
		37.936012, 32.036812, 54.788330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.684929, 32.403427, 55.194458>,  <38.444454, 31.640980, 55.061836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.684929, 32.403427, 55.194458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.290863, 32.383987, 55.128624>,  <38.054424, 32.372326, 55.089123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.290863, 32.383987, 55.128624>,  <38.684929, 32.403427, 55.194458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.290863, 32.383987, 55.128624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161985, 0.579960, 0.798378,
		0.056654, 0.813194, -0.579228,
		-0.985166, -0.048595, -0.164582,
		37.995312, 32.369408, 55.079250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.584850, 33.186855, 55.102253>,  <38.684929, 32.403427, 55.194458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.584850, 33.186855, 55.102253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.607193, 33.579670, 55.030155>,  <38.620598, 33.815357, 54.986897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.607193, 33.579670, 55.030155>,  <38.584850, 33.186855, 55.102253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.607193, 33.579670, 55.030155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402053, -0.187363, -0.896241,
		-0.913911, -0.022402, -0.405297,
		0.055860, 0.982035, -0.180240,
		38.623951, 33.874279, 54.976082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.472431, 33.237053, 54.378143>,  <38.584850, 33.186855, 55.102253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.472431, 33.237053, 54.378143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.671963, 33.568764, 54.478916>,  <38.791683, 33.767788, 54.539379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.671963, 33.568764, 54.478916>,  <38.472431, 33.237053, 54.378143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.671963, 33.568764, 54.478916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367122, 0.061137, -0.928162,
		-0.785104, 0.555486, -0.273948,
		0.498832, 0.829275, 0.251930,
		38.821613, 33.817547, 54.554497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.341042, 33.758339, 53.852268>,  <38.472431, 33.237053, 54.378143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.341042, 33.758339, 53.852268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.688778, 33.857719, 54.023159>,  <38.897419, 33.917347, 54.125694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.688778, 33.857719, 54.023159>,  <38.341042, 33.758339, 53.852268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.688778, 33.857719, 54.023159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404289, 0.139697, -0.903900,
		-0.284258, 0.958518, 0.020997,
		0.869338, 0.248452, 0.427228,
		38.949577, 33.932255, 54.151329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.581867, 34.253609, 53.461021>,  <38.341042, 33.758339, 53.852268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.581867, 34.253609, 53.461021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.928036, 34.193382, 53.652176>,  <39.135738, 34.157246, 53.766869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.928036, 34.193382, 53.652176>,  <38.581867, 34.253609, 53.461021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.928036, 34.193382, 53.652176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499363, 0.181084, -0.847258,
		0.041031, 0.971874, 0.231901,
		0.865421, -0.150566, 0.477888,
		39.187660, 34.148212, 53.795544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.125912, 34.827953, 53.310093>,  <38.581867, 34.253609, 53.461021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.125912, 34.827953, 53.310093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.326263, 34.497284, 53.412647>,  <39.446472, 34.298882, 53.474178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.326263, 34.497284, 53.412647>,  <39.125912, 34.827953, 53.310093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.326263, 34.497284, 53.412647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582200, 0.102612, -0.806544,
		0.640442, 0.553245, 0.532686,
		0.500877, -0.826674, 0.256383,
		39.476528, 34.249283, 53.489563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.789501, 35.004559, 53.167759>,  <39.125912, 34.827953, 53.310093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.789501, 35.004559, 53.167759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.799702, 34.605164, 53.187279>,  <39.805820, 34.365528, 53.198990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.799702, 34.605164, 53.187279>,  <39.789501, 35.004559, 53.167759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.799702, 34.605164, 53.187279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487371, -0.030206, -0.872673,
		0.872823, 0.046034, 0.485861,
		0.025497, -0.998483, 0.048800,
		39.807350, 34.305618, 53.201920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.526985, 34.831654, 52.815853>,  <39.789501, 35.004559, 53.167759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.526985, 34.831654, 52.815853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.274223, 34.521965, 52.801579>,  <40.122566, 34.336151, 52.793015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.274223, 34.521965, 52.801579>,  <40.526985, 34.831654, 52.815853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.274223, 34.521965, 52.801579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165716, -0.089986, -0.982060,
		0.757123, -0.626482, 0.185164,
		-0.631905, -0.774224, -0.035687,
		40.084652, 34.289700, 52.790871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.857468, 34.395420, 52.377003>,  <40.526985, 34.831654, 52.815853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.857468, 34.395420, 52.377003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.472572, 34.287018, 52.366791>,  <40.241634, 34.221977, 52.360664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.472572, 34.287018, 52.366791>,  <40.857468, 34.395420, 52.377003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.472572, 34.287018, 52.366791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025378, 0.004051, -0.999670,
		0.271020, -0.962569, 0.002980,
		-0.962239, -0.271006, -0.025526,
		40.183899, 34.205715, 52.359135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.847908, 33.835373, 51.858040>,  <40.857468, 34.395420, 52.377003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.847908, 33.835373, 51.858040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.450237, 33.877686, 51.866253>,  <40.211636, 33.903072, 51.871181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.450237, 33.877686, 51.866253>,  <40.847908, 33.835373, 51.858040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.450237, 33.877686, 51.866253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029360, -0.082536, -0.996155,
		-0.103694, -0.990957, 0.085161,
		-0.994175, 0.105795, 0.020536,
		40.151985, 33.909420, 51.872414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.535923, 33.301147, 51.458378>,  <40.847908, 33.835373, 51.858040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.535923, 33.301147, 51.458378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.271816, 33.601555, 51.460434>,  <40.113354, 33.781799, 51.461670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.271816, 33.601555, 51.460434>,  <40.535923, 33.301147, 51.458378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.271816, 33.601555, 51.460434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140447, -0.116741, -0.983182,
		-0.737784, -0.649883, 0.182558,
		-0.660265, 0.751015, 0.005145,
		40.073738, 33.826859, 51.461979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.981041, 33.041531, 51.085407>,  <40.535923, 33.301147, 51.458378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.981041, 33.041531, 51.085407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.945553, 33.439819, 51.075119>,  <39.924259, 33.678795, 51.068947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.945553, 33.439819, 51.075119>,  <39.981041, 33.041531, 51.085407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.945553, 33.439819, 51.075119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124013, -0.036666, -0.991603,
		-0.988306, -0.084789, 0.126736,
		-0.088724, 0.995724, -0.025722,
		39.918934, 33.738537, 51.067402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.350777, 33.198036, 50.690853>,  <39.981041, 33.041531, 51.085407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.350777, 33.198036, 50.690853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.593586, 33.514683, 50.662968>,  <39.739273, 33.704670, 50.646236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.593586, 33.514683, 50.662968>,  <39.350777, 33.198036, 50.690853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.593586, 33.514683, 50.662968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123095, 0.006995, -0.992370,
		-0.785092, 0.610974, 0.101691,
		0.607024, 0.791620, -0.069716,
		39.775692, 33.752171, 50.642052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.110435, 33.666218, 50.209576>,  <39.350777, 33.198036, 50.690853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.110435, 33.666218, 50.209576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.487236, 33.800159, 50.218613>,  <39.713314, 33.880524, 50.224037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.487236, 33.800159, 50.218613>,  <39.110435, 33.666218, 50.209576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.487236, 33.800159, 50.218613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089465, -0.185643, -0.978536,
		-0.323471, 0.923802, -0.204833,
		0.941999, 0.334853, 0.022597,
		39.769836, 33.900616, 50.225391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.199883, 33.990303, 49.607891>,  <39.110435, 33.666218, 50.209576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.199883, 33.990303, 49.607891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.580265, 33.941566, 49.721619>,  <39.808495, 33.912323, 49.789856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.580265, 33.941566, 49.721619>,  <39.199883, 33.990303, 49.607891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.580265, 33.941566, 49.721619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241482, -0.281998, -0.928528,
		0.193311, 0.951647, -0.238745,
		0.950956, -0.121842, 0.284319,
		39.865551, 33.905014, 49.806915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.618336, 34.422256, 49.258808>,  <39.199883, 33.990303, 49.607891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.618336, 34.422256, 49.258808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.880978, 34.136295, 49.354954>,  <40.038563, 33.964718, 49.412640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.880978, 34.136295, 49.354954>,  <39.618336, 34.422256, 49.258808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.880978, 34.136295, 49.354954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075729, -0.379566, -0.922060,
		0.750420, 0.587230, -0.303366,
		0.656609, -0.714906, 0.240364,
		40.077961, 33.921825, 49.427063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.119495, 34.434868, 48.726658>,  <39.618336, 34.422256, 49.258808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.119495, 34.434868, 48.726658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.161785, 34.076050, 48.898296>,  <40.187160, 33.860760, 49.001278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.161785, 34.076050, 48.898296>,  <40.119495, 34.434868, 48.726658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.161785, 34.076050, 48.898296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179201, -0.407263, -0.895558,
		0.978115, 0.171580, 0.117693,
		0.105728, -0.897049, 0.429098,
		40.193504, 33.806934, 49.027027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.653549, 34.151394, 48.294720>,  <40.119495, 34.434868, 48.726658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.653549, 34.151394, 48.294720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.516804, 33.820942, 48.473896>,  <40.434757, 33.622673, 48.581402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.516804, 33.820942, 48.473896>,  <40.653549, 34.151394, 48.294720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.516804, 33.820942, 48.473896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045571, -0.490668, -0.870154,
		0.938644, -0.277060, 0.205388,
		-0.341862, -0.826125, 0.447936,
		40.414246, 33.573105, 48.608276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.149216, 33.563602, 48.072601>,  <40.653549, 34.151394, 48.294720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.149216, 33.563602, 48.072601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.803349, 33.396591, 48.184330>,  <40.595829, 33.296387, 48.251369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.803349, 33.396591, 48.184330>,  <41.149216, 33.563602, 48.072601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.803349, 33.396591, 48.184330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076866, -0.659461, -0.747799,
		0.496428, -0.625127, 0.602308,
		-0.864668, -0.417525, 0.279324,
		40.543949, 33.271332, 48.268127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.260685, 32.801048, 47.998722>,  <41.149216, 33.563602, 48.072601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.260685, 32.801048, 47.998722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.867760, 32.874401, 47.983627>,  <40.632004, 32.918411, 47.974571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.867760, 32.874401, 47.983627>,  <41.260685, 32.801048, 47.998722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.867760, 32.874401, 47.983627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081943, -0.602331, -0.794029,
		-0.168337, -0.776897, 0.606707,
		-0.982318, 0.183380, -0.037733,
		40.573063, 32.929417, 47.972309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.879452, 32.136948, 47.952888>,  <41.260685, 32.801048, 47.998722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.879452, 32.136948, 47.952888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.630142, 32.415249, 47.810085>,  <40.480556, 32.582230, 47.724403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.630142, 32.415249, 47.810085>,  <40.879452, 32.136948, 47.952888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.630142, 32.415249, 47.810085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154313, -0.556979, -0.816065,
		-0.766625, -0.453544, 0.454516,
		-0.623277, 0.695753, -0.357006,
		40.443157, 32.623974, 47.702984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.537945, 31.753380, 47.414482>,  <40.879452, 32.136948, 47.952888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.537945, 31.753380, 47.414482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.401405, 32.120071, 47.331448>,  <40.319481, 32.340088, 47.281628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.401405, 32.120071, 47.331448>,  <40.537945, 31.753380, 47.414482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.401405, 32.120071, 47.331448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256265, -0.303246, -0.917807,
		-0.904330, -0.260093, 0.338437,
		-0.341345, 0.916730, -0.207582,
		40.299004, 32.395092, 47.269173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.825325, 31.711666, 47.239189>,  <40.537945, 31.753380, 47.414482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.825325, 31.711666, 47.239189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.963078, 32.036224, 47.050282>,  <40.045731, 32.230961, 46.936939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.963078, 32.036224, 47.050282>,  <39.825325, 31.711666, 47.239189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.963078, 32.036224, 47.050282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583639, -0.208987, -0.784659,
		-0.735367, 0.545857, 0.401591,
		0.344384, 0.811397, -0.472266,
		40.066391, 32.279644, 46.908600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.271130, 32.095119, 47.053333>,  <39.825325, 31.711666, 47.239189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.271130, 32.095119, 47.053333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.566132, 32.231327, 46.820045>,  <39.743134, 32.313049, 46.680073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.566132, 32.231327, 46.820045>,  <39.271130, 32.095119, 47.053333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.566132, 32.231327, 46.820045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.654885, 0.149629, -0.740768,
		-0.164976, 0.928257, 0.333349,
		0.737501, 0.340514, -0.583217,
		39.787380, 32.333481, 46.645081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.969971, 32.461304, 46.501804>,  <39.271130, 32.095119, 47.053333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.969971, 32.461304, 46.501804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.328060, 32.431156, 46.326122>,  <39.542915, 32.413067, 46.220715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.328060, 32.431156, 46.326122>,  <38.969971, 32.461304, 46.501804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.328060, 32.431156, 46.326122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441041, -0.008919, -0.897443,
		0.063719, 0.997116, -0.041224,
		0.895222, -0.075365, -0.439201,
		39.596626, 32.408546, 46.194363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.978874, 32.991184, 45.974236>,  <38.969971, 32.461304, 46.501804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.978874, 32.991184, 45.974236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.285542, 32.766918, 45.849091>,  <39.469540, 32.632359, 45.774002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.285542, 32.766918, 45.849091>,  <38.978874, 32.991184, 45.974236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.285542, 32.766918, 45.849091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216001, 0.233653, -0.948024,
		0.604621, 0.794397, 0.058030,
		0.766666, -0.560660, -0.312862,
		39.515541, 32.598721, 45.755234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.275875, 33.388802, 45.390079>,  <38.978874, 32.991184, 45.974236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.275875, 33.388802, 45.390079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.424557, 33.018143, 45.367588>,  <39.513767, 32.795746, 45.354095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.424557, 33.018143, 45.367588>,  <39.275875, 33.388802, 45.390079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.424557, 33.018143, 45.367588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124887, 0.010102, -0.992119,
		0.919911, 0.375800, -0.111971,
		0.371707, -0.926646, -0.056226,
		39.536068, 32.740150, 45.350719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.786572, 33.430832, 44.912964>,  <39.275875, 33.388802, 45.390079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.786572, 33.430832, 44.912964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.664810, 33.049957, 44.923412>,  <39.591751, 32.821434, 44.929680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.664810, 33.049957, 44.923412>,  <39.786572, 33.430832, 44.912964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.664810, 33.049957, 44.923412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087421, 0.000622, -0.996171,
		0.948522, -0.305523, -0.083430,
		-0.304405, -0.952184, 0.026119,
		39.573490, 32.764301, 44.931248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.270515, 33.206406, 44.427620>,  <39.786572, 33.430832, 44.912964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.270515, 33.206406, 44.427620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.980606, 32.935287, 44.477104>,  <39.806660, 32.772617, 44.506794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.980606, 32.935287, 44.477104>,  <40.270515, 33.206406, 44.427620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.980606, 32.935287, 44.477104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058314, -0.118559, -0.991233,
		0.686517, -0.725632, 0.046403,
		-0.724772, -0.677792, 0.123707,
		39.763176, 32.731949, 44.514217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.486130, 32.686649, 44.042194>,  <40.270515, 33.206406, 44.427620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.486130, 32.686649, 44.042194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.091442, 32.630478, 44.074860>,  <39.854630, 32.596775, 44.094460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.091442, 32.630478, 44.074860>,  <40.486130, 32.686649, 44.042194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.091442, 32.630478, 44.074860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071739, -0.074371, -0.994647,
		0.145748, -0.987294, 0.063309,
		-0.986717, -0.140426, 0.081667,
		39.795425, 32.588348, 44.099361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.303150, 32.120647, 43.519028>,  <40.486130, 32.686649, 44.042194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.303150, 32.120647, 43.519028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.958263, 32.309933, 43.591312>,  <39.751331, 32.423504, 43.634682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.958263, 32.309933, 43.591312>,  <40.303150, 32.120647, 43.519028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.958263, 32.309933, 43.591312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281836, -0.151728, -0.947390,
		-0.420901, -0.867782, 0.264191,
		-0.862213, 0.473216, 0.180710,
		39.699600, 32.451897, 43.645527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.860836, 31.638483, 43.153782>,  <40.303150, 32.120647, 43.519028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.860836, 31.638483, 43.153782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.679611, 31.992918, 43.192951>,  <39.570877, 32.205578, 43.216454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.679611, 31.992918, 43.192951>,  <39.860836, 31.638483, 43.153782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.679611, 31.992918, 43.192951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252333, -0.022115, -0.967388,
		-0.855025, -0.462990, 0.233609,
		-0.453058, 0.886088, 0.097919,
		39.543694, 32.258743, 43.222328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.217312, 31.502726, 42.837669>,  <39.860836, 31.638483, 43.153782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.217312, 31.502726, 42.837669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.321423, 31.888927, 42.834717>,  <39.383888, 32.120647, 42.832947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.321423, 31.888927, 42.834717>,  <39.217312, 31.502726, 42.837669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.321423, 31.888927, 42.834717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262144, 0.063307, -0.962950,
		-0.929266, 0.252569, 0.269579,
		0.260278, 0.965506, -0.007380,
		39.399506, 32.178577, 42.832504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.813896, 31.841572, 42.269352>,  <39.217312, 31.502726, 42.837669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.813896, 31.841572, 42.269352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.100315, 32.113396, 42.333199>,  <39.272167, 32.276489, 42.371506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.100315, 32.113396, 42.333199>,  <38.813896, 31.841572, 42.269352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.100315, 32.113396, 42.333199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008899, 0.237527, -0.971340,
		-0.697998, 0.694103, 0.176127,
		0.716044, 0.679561, 0.159616,
		39.315128, 32.317265, 42.381084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.570808, 32.466576, 41.911129>,  <38.813896, 31.841572, 42.269352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.570808, 32.466576, 41.911129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.965611, 32.505577, 41.962204>,  <39.202492, 32.528976, 41.992851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.965611, 32.505577, 41.962204>,  <38.570808, 32.466576, 41.911129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.965611, 32.505577, 41.962204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085477, 0.354275, -0.931227,
		-0.136037, 0.930044, 0.341338,
		0.987009, 0.097505, 0.127692,
		39.261715, 32.534828, 42.000511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.798832, 33.090912, 41.726791>,  <38.570808, 32.466576, 41.911129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.798832, 33.090912, 41.726791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.142681, 32.887543, 41.706581>,  <39.348991, 32.765522, 41.694454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.142681, 32.887543, 41.706581>,  <38.798832, 33.090912, 41.726791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.142681, 32.887543, 41.706581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146977, 0.340782, -0.928583,
		0.489335, 0.790803, 0.367670,
		0.859622, -0.508427, -0.050526,
		39.400566, 32.735016, 41.691422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.134132, 33.508945, 41.226528>,  <38.798832, 33.090912, 41.726791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.134132, 33.508945, 41.226528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.354984, 33.177570, 41.264133>,  <39.487495, 32.978745, 41.286697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.354984, 33.177570, 41.264133>,  <39.134132, 33.508945, 41.226528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.354984, 33.177570, 41.264133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295853, 0.089252, -0.951055,
		0.779502, 0.552919, 0.294376,
		0.552130, -0.828441, 0.094010,
		39.520622, 32.929039, 41.292336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.669231, 33.729103, 40.903770>,  <39.134132, 33.508945, 41.226528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.669231, 33.729103, 40.903770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.710384, 33.331669, 40.884956>,  <39.735077, 33.093208, 40.873669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.710384, 33.331669, 40.884956>,  <39.669231, 33.729103, 40.903770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.710384, 33.331669, 40.884956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263726, 0.072838, -0.961844,
		0.959096, 0.086549, 0.269527,
		0.102878, -0.993581, -0.047033,
		39.741249, 33.033596, 40.870846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.319950, 33.606663, 40.602268>,  <39.669231, 33.729103, 40.903770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.319950, 33.606663, 40.602268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.117912, 33.266193, 40.545162>,  <39.996689, 33.061913, 40.510899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.117912, 33.266193, 40.545162>,  <40.319950, 33.606663, 40.602268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.117912, 33.266193, 40.545162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401928, -0.085603, -0.911661,
		0.763762, -0.517856, 0.385348,
		-0.505096, -0.851174, -0.142760,
		39.966385, 33.010841, 40.502335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.785114, 33.111580, 40.401569>,  <40.319950, 33.606663, 40.602268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.785114, 33.111580, 40.401569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.444546, 32.975822, 40.241619>,  <40.240204, 32.894367, 40.145649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.444546, 32.975822, 40.241619>,  <40.785114, 33.111580, 40.401569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.444546, 32.975822, 40.241619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389786, 0.100672, -0.915386,
		0.350934, -0.935241, 0.046578,
		-0.851417, -0.339396, -0.399873,
		40.189121, 32.874004, 40.121658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.898270, 32.454121, 40.021629>,  <40.785114, 33.111580, 40.401569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.898270, 32.454121, 40.021629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.579498, 32.636230, 39.862816>,  <40.388237, 32.745495, 39.767529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.579498, 32.636230, 39.862816>,  <40.898270, 32.454121, 40.021629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.579498, 32.636230, 39.862816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398995, -0.096778, -0.911832,
		-0.453554, -0.885078, -0.104526,
		-0.796926, 0.455270, -0.397036,
		40.340420, 32.772812, 39.743706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.573536, 32.099953, 39.371174>,  <40.898270, 32.454121, 40.021629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.573536, 32.099953, 39.371174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.527447, 32.497288, 39.370815>,  <40.499794, 32.735691, 39.370602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.527447, 32.497288, 39.370815>,  <40.573536, 32.099953, 39.371174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.527447, 32.497288, 39.370815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517383, 0.059241, -0.853701,
		-0.847962, -0.098827, -0.520762,
		-0.115219, 0.993340, -0.000898,
		40.492882, 32.795288, 39.370544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.185890, 32.266838, 38.756699>,  <40.573536, 32.099953, 39.371174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.185890, 32.266838, 38.756699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.427586, 32.556622, 38.889397>,  <40.572605, 32.730492, 38.969017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.427586, 32.556622, 38.889397>,  <40.185890, 32.266838, 38.756699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.427586, 32.556622, 38.889397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481959, -0.000755, -0.876194,
		-0.634515, 0.689319, -0.349615,
		0.604241, 0.724458, 0.331744,
		40.608856, 32.773960, 38.988918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.181164, 33.020813, 38.341480>,  <40.185890, 32.266838, 38.756699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.181164, 33.020813, 38.341480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.524090, 32.891319, 38.501583>,  <40.729847, 32.813622, 38.597645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.524090, 32.891319, 38.501583>,  <40.181164, 33.020813, 38.341480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.524090, 32.891319, 38.501583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446346, 0.080071, -0.891271,
		0.256486, 0.942754, 0.213144,
		0.857316, -0.323734, 0.400257,
		40.781284, 32.794197, 38.621662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.675648, 33.380516, 38.063080>,  <40.181164, 33.020813, 38.341480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.675648, 33.380516, 38.063080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.818645, 33.022957, 38.171265>,  <40.904442, 32.808422, 38.236176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.818645, 33.022957, 38.171265>,  <40.675648, 33.380516, 38.063080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.818645, 33.022957, 38.171265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253214, -0.185976, -0.949366,
		0.898934, 0.407875, 0.159862,
		0.357492, -0.893896, 0.270460,
		40.925892, 32.754787, 38.252403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.555016, 33.349701, 38.093822>,  <40.675648, 33.380516, 38.063080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.555016, 33.349701, 38.093822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.350014, 33.024017, 37.984718>,  <41.227013, 32.828606, 37.919254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.350014, 33.024017, 37.984718>,  <41.555016, 33.349701, 38.093822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.350014, 33.024017, 37.984718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379105, 0.070468, -0.922667,
		0.770464, -0.576280, 0.272555,
		-0.512508, -0.814209, -0.272763,
		41.196262, 32.779755, 37.902889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.030930, 32.945057, 37.722538>,  <41.555016, 33.349701, 38.093822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.030930, 32.945057, 37.722538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.660660, 32.870205, 37.591019>,  <41.438499, 32.825294, 37.512108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.660660, 32.870205, 37.591019>,  <42.030930, 32.945057, 37.722538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.660660, 32.870205, 37.591019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351823, -0.106265, -0.930015,
		0.139093, -0.976571, 0.164203,
		-0.925674, -0.187129, -0.328800,
		41.382957, 32.814068, 37.492378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.873215, 32.236240, 37.311813>,  <42.030930, 32.945057, 37.722538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.873215, 32.236240, 37.311813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.715107, 32.573685, 37.166439>,  <41.620243, 32.776150, 37.079216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.715107, 32.573685, 37.166439>,  <41.873215, 32.236240, 37.311813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.715107, 32.573685, 37.166439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495439, -0.137375, -0.857711,
		-0.773500, -0.519087, -0.363657,
		-0.395269, 0.843610, -0.363435,
		41.596527, 32.826767, 37.057407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.684067, 32.106228, 36.604366>,  <41.873215, 32.236240, 37.311813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.684067, 32.106228, 36.604366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.771683, 32.485836, 36.695038>,  <41.824253, 32.713600, 36.749439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.771683, 32.485836, 36.695038>,  <41.684067, 32.106228, 36.604366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.771683, 32.485836, 36.695038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417801, 0.118715, -0.900749,
		-0.881738, 0.292009, -0.370498,
		0.219044, 0.949019, 0.226678,
		41.837395, 32.770542, 36.763042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.334049, 32.563145, 36.019890>,  <41.684067, 32.106228, 36.604366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.334049, 32.563145, 36.019890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.691212, 32.655567, 36.174461>,  <41.905510, 32.711021, 36.267204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.691212, 32.655567, 36.174461>,  <41.334049, 32.563145, 36.019890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.691212, 32.655567, 36.174461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376258, 0.088435, -0.922285,
		-0.247275, 0.968913, -0.007972,
		0.892908, 0.231057, 0.386429,
		41.959084, 32.724884, 36.290390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.565163, 33.165325, 35.656296>,  <41.334049, 32.563145, 36.019890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.565163, 33.165325, 35.656296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.876049, 32.965389, 35.809181>,  <42.062580, 32.845428, 35.900913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.876049, 32.965389, 35.809181>,  <41.565163, 33.165325, 35.656296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.876049, 32.965389, 35.809181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472292, 0.062036, -0.879256,
		0.415777, 0.863893, 0.284287,
		0.777219, -0.499841, 0.382216,
		42.109215, 32.815437, 35.923847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.134937, 33.477749, 35.291374>,  <41.565163, 33.165325, 35.656296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.134937, 33.477749, 35.291374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.223270, 33.109043, 35.418865>,  <42.276272, 32.887821, 35.495361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.223270, 33.109043, 35.418865>,  <42.134937, 33.477749, 35.291374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.223270, 33.109043, 35.418865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416640, -0.206323, -0.885348,
		0.881842, 0.328309, 0.338480,
		0.220832, -0.921761, 0.318730,
		42.289520, 32.832516, 35.514484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.683468, 33.319611, 34.837234>,  <42.134937, 33.477749, 35.291374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.683468, 33.319611, 34.837234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.602913, 32.954063, 34.978249>,  <42.554581, 32.734734, 35.062855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.602913, 32.954063, 34.978249>,  <42.683468, 33.319611, 34.837234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.602913, 32.954063, 34.978249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381325, -0.404661, -0.831168,
		0.902238, -0.032960, 0.429978,
		-0.201391, -0.913872, 0.352532,
		42.542496, 32.679901, 35.084007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.263325, 32.842415, 34.771873>,  <42.683468, 33.319611, 34.837234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.263325, 32.842415, 34.771873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.960796, 32.587383, 34.830490>,  <42.779282, 32.434364, 34.865662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.960796, 32.587383, 34.830490>,  <43.263325, 32.842415, 34.771873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.960796, 32.587383, 34.830490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404972, -0.632212, -0.660534,
		0.513790, -0.440228, 0.736355,
		-0.756319, -0.637579, 0.146544,
		42.733902, 32.396111, 34.874454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.626266, 32.261036, 34.801907>,  <43.263325, 32.842415, 34.771873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.626266, 32.261036, 34.801907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.253803, 32.161926, 34.694904>,  <43.030327, 32.102463, 34.630703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.253803, 32.161926, 34.694904>,  <43.626266, 32.261036, 34.801907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.253803, 32.161926, 34.694904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352104, -0.420468, -0.836199,
		0.094710, -0.872821, 0.478763,
		-0.931157, -0.247771, -0.267501,
		42.974457, 32.087593, 34.614655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.769955, 31.706409, 34.430599>,  <43.626266, 32.261036, 34.801907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.769955, 31.706409, 34.430599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.381897, 31.733236, 34.337372>,  <43.149063, 31.749332, 34.281437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.381897, 31.733236, 34.337372>,  <43.769955, 31.706409, 34.430599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.381897, 31.733236, 34.337372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181049, -0.439134, -0.879990,
		-0.161365, -0.895915, 0.413882,
		-0.970146, 0.067067, -0.233066,
		43.090855, 31.753357, 34.267452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.423519, 31.021303, 34.360737>,  <43.769955, 31.706409, 34.430599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.423519, 31.021303, 34.360737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.227608, 31.298130, 34.148640>,  <43.110062, 31.464226, 34.021381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.227608, 31.298130, 34.148640>,  <43.423519, 31.021303, 34.360737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.227608, 31.298130, 34.148640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200814, -0.502278, -0.841065,
		-0.848403, -0.518418, 0.107030,
		-0.489782, 0.692069, -0.530240,
		43.080673, 31.505751, 33.989567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.787994, 30.746441, 33.953011>,  <43.423519, 31.021303, 34.360737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.787994, 30.746441, 33.953011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.893135, 31.081161, 33.760899>,  <42.956219, 31.281994, 33.645630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.893135, 31.081161, 33.760899>,  <42.787994, 30.746441, 33.953011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.893135, 31.081161, 33.760899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106714, -0.519944, -0.847508,
		-0.958917, 0.171517, -0.225967,
		0.262852, 0.836803, -0.480280,
		42.971992, 31.332203, 33.616814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.333855, 30.795256, 33.384235>,  <42.787994, 30.746441, 33.953011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.333855, 30.795256, 33.384235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.668583, 30.992912, 33.289951>,  <42.869419, 31.111507, 33.233379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.668583, 30.992912, 33.289951>,  <42.333855, 30.795256, 33.384235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.668583, 30.992912, 33.289951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006875, -0.421021, -0.907025,
		-0.547440, 0.760634, -0.348921,
		0.836816, 0.494143, -0.235713,
		42.919628, 31.141155, 33.219238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.448795, 30.618809, 32.707981>,  <42.333855, 30.795256, 33.384235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.448795, 30.618809, 32.707981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.763554, 30.863482, 32.740589>,  <42.952408, 31.010286, 32.760155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.763554, 30.863482, 32.740589>,  <42.448795, 30.618809, 32.707981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.763554, 30.863482, 32.740589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383283, -0.380937, -0.841416,
		-0.483628, 0.693347, -0.534204,
		0.786891, 0.611684, 0.081516,
		42.999622, 31.046988, 32.765045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.643738, 30.907238, 32.046749>,  <42.448795, 30.618809, 32.707981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.643738, 30.907238, 32.046749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.980179, 30.962406, 32.255947>,  <43.182045, 30.995508, 32.381466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.980179, 30.962406, 32.255947>,  <42.643738, 30.907238, 32.046749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.980179, 30.962406, 32.255947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540569, -0.246821, -0.804279,
		0.018158, 0.959196, -0.282158,
		0.841104, 0.137922, 0.522993,
		43.232510, 31.003782, 32.412846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.055416, 31.302662, 31.597109>,  <42.643738, 30.907238, 32.046749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.055416, 31.302662, 31.597109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.284893, 31.084896, 31.841890>,  <43.422581, 30.954237, 31.988760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.284893, 31.084896, 31.841890>,  <43.055416, 31.302662, 31.597109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.284893, 31.084896, 31.841890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499639, -0.359416, -0.788151,
		0.649025, 0.757915, 0.065813,
		0.573697, -0.544412, 0.611953,
		43.457001, 30.921572, 32.025475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.740269, 31.321743, 31.376322>,  <43.055416, 31.302662, 31.597109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.740269, 31.321743, 31.376322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.743149, 30.997648, 31.610746>,  <43.744877, 30.803192, 31.751400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.743149, 30.997648, 31.610746>,  <43.740269, 31.321743, 31.376322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.743149, 30.997648, 31.610746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397241, -0.535528, -0.745258,
		0.917686, 0.238175, 0.318002,
		0.007203, -0.810236, 0.586059,
		43.745308, 30.754578, 31.786564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.328571, 30.969862, 31.133059>,  <43.740269, 31.321743, 31.376322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.328571, 30.969862, 31.133059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.151299, 30.702551, 31.372055>,  <44.044933, 30.542164, 31.515453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.151299, 30.702551, 31.372055>,  <44.328571, 30.969862, 31.133059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.151299, 30.702551, 31.372055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360868, -0.743129, -0.563500,
		0.820588, -0.034117, 0.570501,
		-0.443181, -0.668278, 0.597491,
		44.018345, 30.502068, 31.551302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.877453, 30.516254, 31.341518>,  <44.328571, 30.969862, 31.133059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.877453, 30.516254, 31.341518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.514256, 30.349752, 31.360655>,  <44.296337, 30.249851, 31.372137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.514256, 30.349752, 31.360655>,  <44.877453, 30.516254, 31.341518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.514256, 30.349752, 31.360655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260607, -0.650468, -0.713425,
		0.328086, -0.635314, 0.699097,
		-0.907989, -0.416254, 0.047842,
		44.241859, 30.224876, 31.375008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.039520, 29.859352, 31.394951>,  <44.877453, 30.516254, 31.341518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.039520, 29.859352, 31.394951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.661098, 29.863396, 31.265406>,  <44.434048, 29.865822, 31.187679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.661098, 29.863396, 31.265406>,  <45.039520, 29.859352, 31.394951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.661098, 29.863396, 31.265406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261342, -0.567059, -0.781118,
		-0.191543, -0.823615, 0.533825,
		-0.946050, 0.010107, -0.323862,
		44.377285, 29.866428, 31.168247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.884464, 29.159552, 31.289013>,  <45.039520, 29.859352, 31.394951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.884464, 29.159552, 31.289013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.613636, 29.349936, 31.064499>,  <44.451138, 29.464165, 30.929790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.613636, 29.349936, 31.064499>,  <44.884464, 29.159552, 31.289013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.613636, 29.349936, 31.064499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135404, -0.669106, -0.730727,
		-0.723354, -0.570754, 0.388585,
		-0.677070, 0.475959, -0.561283,
		44.410515, 29.492723, 30.896114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.610905, 28.607105, 30.836912>,  <44.884464, 29.159552, 31.289013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.610905, 28.607105, 30.836912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.539326, 28.961372, 30.665529>,  <44.496380, 29.173933, 30.562700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.539326, 28.961372, 30.665529>,  <44.610905, 28.607105, 30.836912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.539326, 28.961372, 30.665529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268498, -0.374993, -0.887293,
		-0.946513, -0.273817, -0.170696,
		-0.178946, 0.885666, -0.428456,
		44.485641, 29.227072, 30.536993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.229588, 28.519764, 30.314081>,  <44.610905, 28.607105, 30.836912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.229588, 28.519764, 30.314081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.379765, 28.877480, 30.216682>,  <44.469872, 29.092110, 30.158243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.379765, 28.877480, 30.216682>,  <44.229588, 28.519764, 30.314081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.379765, 28.877480, 30.216682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223681, -0.342375, -0.912549,
		-0.899452, 0.288140, -0.328576,
		0.375438, 0.894290, -0.243499,
		44.492397, 29.145767, 30.143633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.991074, 28.661385, 29.662182>,  <44.229588, 28.519764, 30.314081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.991074, 28.661385, 29.662182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.336334, 28.852554, 29.727360>,  <44.543491, 28.967257, 29.766468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.336334, 28.852554, 29.727360>,  <43.991074, 28.661385, 29.662182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.336334, 28.852554, 29.727360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339916, -0.311338, -0.887426,
		-0.373393, 0.821374, -0.431188,
		0.863154, 0.477926, 0.162947,
		44.595280, 28.995932, 29.776243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.310127, 28.883148, 29.025211>,  <43.991074, 28.661385, 29.662182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.310127, 28.883148, 29.025211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.589977, 28.861393, 29.310186>,  <44.757889, 28.848341, 29.481173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.589977, 28.861393, 29.310186>,  <44.310127, 28.883148, 29.025211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.589977, 28.861393, 29.310186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651011, -0.362410, -0.666966,
		0.294469, 0.930430, -0.218145,
		0.699624, -0.054386, 0.712439,
		44.799866, 28.845078, 29.523918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.002995, 29.425694, 28.887177>,  <44.310127, 28.883148, 29.025211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.002995, 29.425694, 28.887177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.036472, 29.087482, 29.098110>,  <45.056561, 28.884556, 29.224670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.036472, 29.087482, 29.098110>,  <45.002995, 29.425694, 28.887177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.036472, 29.087482, 29.098110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.757889, -0.289575, -0.584594,
		0.646992, 0.448590, 0.616578,
		0.083698, -0.845526, 0.527334,
		45.061581, 28.833824, 29.256310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.745628, 29.213045, 29.067406>,  <45.002995, 29.425694, 28.887177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.745628, 29.213045, 29.067406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.530235, 28.876511, 29.048698>,  <45.400997, 28.674589, 29.037474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.530235, 28.876511, 29.048698>,  <45.745628, 29.213045, 29.067406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.530235, 28.876511, 29.048698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.660520, -0.386990, -0.643391,
		0.523209, -0.377349, 0.764107,
		-0.538486, -0.841336, -0.046770,
		45.368690, 28.624109, 29.034668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.251881, 28.652048, 28.924219>,  <45.745628, 29.213045, 29.067406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.251881, 28.652048, 28.924219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.906223, 28.513062, 28.778603>,  <45.698830, 28.429668, 28.691233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.906223, 28.513062, 28.778603>,  <46.251881, 28.652048, 28.924219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.906223, 28.513062, 28.778603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495761, -0.463432, -0.734474,
		0.086498, -0.815166, 0.572732,
		-0.864141, -0.347468, -0.364041,
		45.646980, 28.408821, 28.669390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.176605, 27.949266, 28.748024>,  <46.251881, 28.652048, 28.924219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.176605, 27.949266, 28.748024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.935333, 28.133276, 28.487392>,  <45.790569, 28.243681, 28.331013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.935333, 28.133276, 28.487392>,  <46.176605, 27.949266, 28.748024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.935333, 28.133276, 28.487392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539169, -0.366837, -0.758108,
		-0.587772, -0.808584, -0.026764,
		-0.603175, 0.460024, -0.651580,
		45.754379, 28.271282, 28.291918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.361347, 27.539927, 29.355719>,  <46.176605, 27.949266, 28.748024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.361347, 27.539927, 29.355719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.718204, 27.362673, 29.390854>,  <46.932320, 27.256321, 29.411936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.718204, 27.362673, 29.390854>,  <46.361347, 27.539927, 29.355719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.718204, 27.362673, 29.390854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375502, 0.835500, 0.401171,
		-0.251163, -0.324917, 0.911782,
		0.892141, -0.443135, 0.087840,
		46.985847, 27.229733, 29.417206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.703136, 27.798582, 29.989990>,  <46.361347, 27.539927, 29.355719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.703136, 27.798582, 29.989990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.019192, 27.652731, 29.792917>,  <47.208824, 27.565220, 29.674673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.019192, 27.652731, 29.792917>,  <46.703136, 27.798582, 29.989990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.019192, 27.652731, 29.792917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587031, 0.681383, 0.437163,
		0.176303, -0.634636, 0.752432,
		0.790134, -0.364628, -0.492681,
		47.256233, 27.543343, 29.645113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.286400, 27.621479, 30.452812>,  <46.703136, 27.798582, 29.989990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.286400, 27.621479, 30.452812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.406715, 27.719799, 30.084223>,  <47.478905, 27.778791, 29.863070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.406715, 27.719799, 30.084223>,  <47.286400, 27.621479, 30.452812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.406715, 27.719799, 30.084223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472492, 0.800890, 0.367868,
		0.828420, -0.546037, 0.124758,
		0.300786, 0.245802, -0.921471,
		47.496952, 27.793539, 29.807781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.152386, 27.528666, 31.204990>,  <47.286400, 27.621479, 30.452812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.152386, 27.528666, 31.204990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.892090, 27.819067, 31.116032>,  <46.735912, 27.993307, 31.062656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.892090, 27.819067, 31.116032>,  <47.152386, 27.528666, 31.204990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.892090, 27.819067, 31.116032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.758675, -0.609757, 0.229368,
		0.030913, 0.317986, 0.947591,
		-0.650736, 0.726004, -0.222399,
		46.696869, 28.036869, 31.049313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.665737, 27.824717, 31.832075>,  <47.152386, 27.528666, 31.204990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.665737, 27.824717, 31.832075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.496193, 27.797808, 31.470785>,  <46.394466, 27.781662, 31.254011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.496193, 27.797808, 31.470785>,  <46.665737, 27.824717, 31.832075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.496193, 27.797808, 31.470785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.651148, -0.670539, 0.355505,
		-0.629564, 0.738818, 0.240410,
		-0.423858, -0.067271, -0.903227,
		46.369034, 27.777626, 31.199818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.211334, 27.320454, 32.032364>,  <46.665737, 27.824717, 31.832075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.211334, 27.320454, 32.032364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.986160, 27.034636, 32.198509>,  <45.851055, 26.863144, 32.298199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.986160, 27.034636, 32.198509>,  <46.211334, 27.320454, 32.032364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.986160, 27.034636, 32.198509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291299, 0.641840, 0.709356,
		-0.773466, 0.278326, -0.569461,
		-0.562935, -0.714546, 0.415365,
		45.817280, 26.820272, 32.323120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.494884, 27.535641, 32.108837>,  <46.211334, 27.320454, 32.032364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.494884, 27.535641, 32.108837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.559235, 27.244659, 32.375648>,  <45.597843, 27.070070, 32.535736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.559235, 27.244659, 32.375648>,  <45.494884, 27.535641, 32.108837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.559235, 27.244659, 32.375648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272920, 0.616693, 0.738380,
		-0.948490, -0.300833, -0.099326,
		0.160876, -0.727454, 0.667030,
		45.607498, 27.026423, 32.575756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.892799, 27.563221, 32.485886>,  <45.494884, 27.535641, 32.108837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.892799, 27.563221, 32.485886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.178310, 27.382109, 32.699619>,  <45.349617, 27.273441, 32.827862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.178310, 27.382109, 32.699619>,  <44.892799, 27.563221, 32.485886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.178310, 27.382109, 32.699619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245304, 0.552985, 0.796262,
		-0.656013, -0.699426, 0.283638,
		0.713774, -0.452781, 0.534337,
		45.392441, 27.246275, 32.859921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.618889, 27.411140, 33.177422>,  <44.892799, 27.563221, 32.485886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.618889, 27.411140, 33.177422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.016117, 27.411406, 33.224419>,  <45.254456, 27.411564, 33.252617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.016117, 27.411406, 33.224419>,  <44.618889, 27.411140, 33.177422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.016117, 27.411406, 33.224419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088373, 0.663186, 0.743219,
		-0.077428, -0.748454, 0.658651,
		0.993073, 0.000661, 0.117492,
		45.314037, 27.411604, 33.259666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.700775, 27.543137, 33.839615>,  <44.618889, 27.411140, 33.177422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.700775, 27.543137, 33.839615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.071793, 27.618639, 33.710594>,  <45.294403, 27.663940, 33.633183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.071793, 27.618639, 33.710594>,  <44.700775, 27.543137, 33.839615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.071793, 27.618639, 33.710594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081476, 0.740187, 0.667446,
		0.364736, -0.645363, 0.671174,
		0.927539, 0.188757, -0.322554,
		45.350056, 27.675266, 33.613827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.161449, 27.624790, 34.400345>,  <44.700775, 27.543137, 33.839615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.161449, 27.624790, 34.400345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.379826, 27.814436, 34.124039>,  <45.510853, 27.928223, 33.958256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.379826, 27.814436, 34.124039>,  <45.161449, 27.624790, 34.400345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.379826, 27.814436, 34.124039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068916, 0.796276, 0.600995,
		0.834984, -0.375713, 0.402046,
		0.545942, 0.474114, -0.690771,
		45.543610, 27.956669, 33.916809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.705982, 27.938274, 34.750225>,  <45.161449, 27.624790, 34.400345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.705982, 27.938274, 34.750225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.660667, 28.138187, 34.406742>,  <45.633476, 28.258135, 34.200653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.660667, 28.138187, 34.406742>,  <45.705982, 27.938274, 34.750225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.660667, 28.138187, 34.406742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069252, 0.866144, 0.494974,
		0.991145, -0.003392, -0.132736,
		-0.113290, 0.499783, -0.858710,
		45.626682, 28.288122, 34.149128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.143559, 28.528952, 34.792248>,  <45.705982, 27.938274, 34.750225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.143559, 28.528952, 34.792248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.932819, 28.657011, 34.477303>,  <45.806377, 28.733847, 34.288334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.932819, 28.657011, 34.477303>,  <46.143559, 28.528952, 34.792248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.932819, 28.657011, 34.477303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031954, 0.918237, 0.394741,
		0.849362, 0.233126, -0.473537,
		-0.526843, 0.320146, -0.787364,
		45.774765, 28.753056, 34.241093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.555889, 29.164013, 34.509830>,  <46.143559, 28.528952, 34.792248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.555889, 29.164013, 34.509830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.186237, 29.202038, 34.361809>,  <45.964447, 29.224854, 34.272995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.186237, 29.202038, 34.361809>,  <46.555889, 29.164013, 34.509830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.186237, 29.202038, 34.361809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005157, 0.971567, 0.236708,
		0.382037, 0.216841, -0.898348,
		-0.924133, 0.095063, -0.370056,
		45.908997, 29.230556, 34.250793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.579563, 29.925400, 34.314438>,  <46.555889, 29.164013, 34.509830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.579563, 29.925400, 34.314438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.194908, 29.817268, 34.333134>,  <45.964115, 29.752390, 34.344349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.194908, 29.817268, 34.333134>,  <46.579563, 29.925400, 34.314438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.194908, 29.817268, 34.333134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213398, 0.844148, 0.491809,
		-0.172402, 0.462967, -0.869448,
		-0.961633, -0.270327, 0.046737,
		45.906418, 29.736170, 34.347157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.165737, 30.491594, 33.949471>,  <46.579563, 29.925400, 34.314438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.165737, 30.491594, 33.949471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.888870, 30.322624, 34.183552>,  <45.722752, 30.221243, 34.324001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.888870, 30.322624, 34.183552>,  <46.165737, 30.491594, 33.949471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.888870, 30.322624, 34.183552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280289, 0.904512, 0.321398,
		-0.665088, 0.058436, -0.744475,
		-0.692168, -0.422426, 0.585201,
		45.681221, 30.195896, 34.359112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.497128, 30.827345, 33.883762>,  <46.165737, 30.491594, 33.949471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.497128, 30.827345, 33.883762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.495876, 30.648819, 34.241711>,  <45.495125, 30.541702, 34.456478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.495876, 30.648819, 34.241711>,  <45.497128, 30.827345, 33.883762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.495876, 30.648819, 34.241711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431414, 0.807915, 0.401441,
		-0.902149, -0.384805, -0.195070,
		-0.003123, -0.446316, 0.894870,
		45.494938, 30.514925, 34.510170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.963779, 31.036251, 34.157166>,  <45.497128, 30.827345, 33.883762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.963779, 31.036251, 34.157166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.134758, 30.881863, 34.484169>,  <45.237343, 30.789230, 34.680370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.134758, 30.881863, 34.484169>,  <44.963779, 31.036251, 34.157166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.134758, 30.881863, 34.484169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288567, 0.798726, 0.527983,
		-0.856751, -0.461588, 0.230032,
		0.427443, -0.385970, 0.817508,
		45.262993, 30.766071, 34.729420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.480690, 30.970718, 34.672192>,  <44.963779, 31.036251, 34.157166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.480690, 30.970718, 34.672192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.845852, 31.000759, 34.832676>,  <45.064949, 31.018784, 34.928967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.845852, 31.000759, 34.832676>,  <44.480690, 30.970718, 34.672192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.845852, 31.000759, 34.832676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276765, 0.836354, 0.473195,
		-0.300014, -0.543022, 0.784295,
		0.912904, 0.075100, 0.401207,
		45.119724, 31.023289, 34.953037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.338287, 31.094835, 35.343594>,  <44.480690, 30.970718, 34.672192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.338287, 31.094835, 35.343594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.724731, 31.190615, 35.305016>,  <44.956596, 31.248083, 35.281868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.724731, 31.190615, 35.305016>,  <44.338287, 31.094835, 35.343594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.724731, 31.190615, 35.305016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135926, 0.789487, 0.598526,
		0.219455, -0.565132, 0.795277,
		0.966107, 0.239448, -0.096441,
		45.014565, 31.262449, 35.276085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.454212, 31.290926, 35.984749>,  <44.338287, 31.094835, 35.343594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.454212, 31.290926, 35.984749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.753963, 31.443012, 35.767914>,  <44.933815, 31.534264, 35.637814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.753963, 31.443012, 35.767914>,  <44.454212, 31.290926, 35.984749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.753963, 31.443012, 35.767914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103113, 0.875720, 0.471680,
		0.654060, -0.297572, 0.695454,
		0.749382, 0.380217, -0.542090,
		44.978779, 31.557077, 35.605286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.989410, 31.579842, 36.496216>,  <44.454212, 31.290926, 35.984749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.989410, 31.579842, 36.496216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.002754, 31.769451, 36.144264>,  <45.010761, 31.883217, 35.933094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.002754, 31.769451, 36.144264>,  <44.989410, 31.579842, 36.496216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.002754, 31.769451, 36.144264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055540, 0.878131, 0.475186,
		0.997899, -0.064719, 0.002965,
		0.033358, 0.474023, -0.879880,
		45.012760, 31.911657, 35.880299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.328659, 32.142818, 36.728752>,  <44.989410, 31.579842, 36.496216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.328659, 32.142818, 36.728752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.201256, 32.251877, 36.365604>,  <45.124813, 32.317310, 36.147717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.201256, 32.251877, 36.365604>,  <45.328659, 32.142818, 36.728752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.201256, 32.251877, 36.365604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163863, 0.927489, 0.336024,
		0.933651, 0.255791, -0.250732,
		-0.318503, 0.272643, -0.907866,
		45.105705, 32.333672, 36.093243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.620277, 32.780930, 36.502075>,  <45.328659, 32.142818, 36.728752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.620277, 32.780930, 36.502075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.284176, 32.773121, 36.285336>,  <45.082516, 32.768436, 36.155293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.284176, 32.773121, 36.285336>,  <45.620277, 32.780930, 36.502075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.284176, 32.773121, 36.285336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261158, 0.890361, 0.372898,
		0.475156, 0.454835, -0.753227,
		-0.840252, -0.019526, -0.541845,
		45.032101, 32.767262, 36.122784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.732094, 33.356869, 36.200226>,  <45.620277, 32.780930, 36.502075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.732094, 33.356869, 36.200226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.343437, 33.264469, 36.180050>,  <45.110241, 33.209030, 36.167942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.343437, 33.264469, 36.180050>,  <45.732094, 33.356869, 36.200226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.343437, 33.264469, 36.180050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232035, 0.890565, 0.391222,
		-0.045451, 0.391833, -0.918913,
		-0.971645, -0.231001, -0.050442,
		45.051945, 33.195168, 36.164917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.438835, 33.972710, 36.170418>,  <45.732094, 33.356869, 36.200226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.438835, 33.972710, 36.170418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.094879, 33.770161, 36.196281>,  <44.888508, 33.648632, 36.211800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.094879, 33.770161, 36.196281>,  <45.438835, 33.972710, 36.170418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.094879, 33.770161, 36.196281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458092, 0.821313, 0.339994,
		-0.225269, 0.262737, -0.938202,
		-0.859887, -0.506373, 0.064658,
		44.836914, 33.618248, 36.215679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.154995, 34.048061, 36.232491>,  <45.438835, 33.972710, 36.170418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.154995, 34.048061, 36.232491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.481964, 33.978313, 36.012886>,  <46.678146, 33.936466, 35.881123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.481964, 33.978313, 36.012886>,  <46.154995, 34.048061, 36.232491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.481964, 33.978313, 36.012886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375600, 0.561274, -0.737493,
		0.436742, 0.809053, 0.393306,
		0.817423, -0.174369, -0.549012,
		46.727192, 33.926003, 35.848183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.212425, 34.665249, 35.838715>,  <46.154995, 34.048061, 36.232491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.212425, 34.665249, 35.838715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.410542, 34.382515, 35.636696>,  <46.529411, 34.212875, 35.515484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.410542, 34.382515, 35.636696>,  <46.212425, 34.665249, 35.838715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.410542, 34.382515, 35.636696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100908, 0.530618, -0.841583,
		0.862849, 0.467789, 0.191483,
		0.495287, -0.706837, -0.505047,
		46.559128, 34.170464, 35.485180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.888321, 34.824581, 35.470589>,  <46.212425, 34.665249, 35.838715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.888321, 34.824581, 35.470589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.716118, 34.575039, 35.209679>,  <46.612797, 34.425312, 35.053131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.716118, 34.575039, 35.209679>,  <46.888321, 34.824581, 35.470589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.716118, 34.575039, 35.209679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021705, 0.715311, -0.698469,
		0.902326, -0.314854, -0.294405,
		-0.430507, -0.623857, -0.652278,
		46.586967, 34.387882, 35.013996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.509094, 34.680283, 35.139442>,  <46.888321, 34.824581, 35.470589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.509094, 34.680283, 35.139442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.743069, 34.999561, 35.081852>,  <47.883453, 35.191128, 35.047298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.743069, 34.999561, 35.081852>,  <47.509094, 34.680283, 35.139442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.743069, 34.999561, 35.081852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091735, -0.241482, -0.966060,
		-0.805874, 0.551876, -0.214475,
		0.584937, 0.798197, -0.143978,
		47.918549, 35.239021, 35.038658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<34.956718, 36.235977, 48.081879> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.560146, 36.197834, 48.117619>,  <34.322205, 36.174950, 48.139061>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.560146, 36.197834, 48.117619>,  <34.956718, 36.235977, 48.081879>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.560146, 36.197834, 48.117619> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101374, 0.129795, -0.986345,
		0.082448, -0.986946, -0.138348,
		-0.991426, -0.095347, 0.089349,
		34.262718, 36.169228, 48.144424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.705433, 35.577183, 47.640381>,  <34.956718, 36.235977, 48.081879>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.705433, 35.577183, 47.640381> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.369331, 35.791382, 47.674374>,  <34.167671, 35.919903, 47.694771>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.369331, 35.791382, 47.674374>,  <34.705433, 35.577183, 47.640381>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.369331, 35.791382, 47.674374> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334413, -0.388462, -0.858641,
		-0.426792, -0.749890, 0.505484,
		-0.840248, 0.535501, 0.084981,
		34.117256, 35.952030, 47.699867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.177578, 35.018925, 47.397137>,  <34.705433, 35.577183, 47.640381>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.177578, 35.018925, 47.397137> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.971016, 35.361431, 47.392509>,  <33.847080, 35.566936, 47.389732>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.971016, 35.361431, 47.392509>,  <34.177578, 35.018925, 47.397137>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.971016, 35.361431, 47.392509> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479871, -0.300535, -0.824259,
		-0.709261, -0.420101, 0.566095,
		-0.516403, 0.856267, -0.011564,
		33.816093, 35.618313, 47.389042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.529064, 34.835102, 47.316933>,  <34.177578, 35.018925, 47.397137>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.529064, 34.835102, 47.316933> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.549137, 35.204269, 47.164249>,  <33.561180, 35.425770, 47.072639>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.549137, 35.204269, 47.164249>,  <33.529064, 34.835102, 47.316933>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.549137, 35.204269, 47.164249> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416719, -0.327979, -0.847806,
		-0.907649, 0.201612, 0.368139,
		0.050186, 0.922920, -0.381705,
		33.564194, 35.481144, 47.049736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.954826, 34.947269, 46.897522>,  <33.529064, 34.835102, 47.316933>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.954826, 34.947269, 46.897522> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.187012, 35.230907, 46.737396>,  <33.326324, 35.401089, 46.641319>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.187012, 35.230907, 46.737396>,  <32.954826, 34.947269, 46.897522>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.187012, 35.230907, 46.737396> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232041, -0.327189, -0.916027,
		-0.780525, 0.624610, -0.025383,
		0.580464, 0.709091, -0.400314,
		33.361153, 35.443634, 46.617302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.579330, 35.264236, 46.295887>,  <32.954826, 34.947269, 46.897522>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.579330, 35.264236, 46.295887> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.965443, 35.346577, 46.231571>,  <33.197109, 35.395981, 46.192982>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.965443, 35.346577, 46.231571>,  <32.579330, 35.264236, 46.295887>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.965443, 35.346577, 46.231571> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117233, -0.208661, -0.970936,
		-0.233416, 0.956079, -0.177285,
		0.965284, 0.205849, -0.160789,
		33.255028, 35.408333, 46.183334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.571011, 35.654675, 45.728886>,  <32.579330, 35.264236, 46.295887>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.571011, 35.654675, 45.728886> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.942005, 35.507607, 45.755993>,  <33.164600, 35.419365, 45.772255>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.942005, 35.507607, 45.755993>,  <32.571011, 35.654675, 45.728886>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.942005, 35.507607, 45.755993> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010485, -0.155602, -0.987764,
		0.373718, 0.916845, -0.140463,
		0.927483, -0.367672, 0.067764,
		33.220249, 35.397305, 45.776321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.961746, 35.894627, 45.086845>,  <32.571011, 35.654675, 45.728886>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.961746, 35.894627, 45.086845> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.213531, 35.602303, 45.192444>,  <33.364601, 35.426907, 45.255802>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.213531, 35.602303, 45.192444>,  <32.961746, 35.894627, 45.086845>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.213531, 35.602303, 45.192444> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042297, -0.307017, -0.950763,
		0.775879, 0.609636, -0.162345,
		0.629462, -0.730811, 0.263994,
		33.402370, 35.383060, 45.271641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.487671, 35.830437, 44.529930>,  <32.961746, 35.894627, 45.086845>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.487671, 35.830437, 44.529930> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.498829, 35.482830, 44.727528>,  <33.505524, 35.274265, 44.846085>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.498829, 35.482830, 44.727528>,  <33.487671, 35.830437, 44.529930>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.498829, 35.482830, 44.727528> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310144, -0.462274, -0.830730,
		0.950280, 0.176381, 0.256627,
		0.027893, -0.869018, 0.493993,
		33.507198, 35.222126, 44.875725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.098072, 35.519814, 44.399750>,  <33.487671, 35.830437, 44.529930>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.098072, 35.519814, 44.399750> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.853687, 35.226818, 44.519871>,  <33.707058, 35.051022, 44.591946>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.853687, 35.226818, 44.519871>,  <34.098072, 35.519814, 44.399750>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.853687, 35.226818, 44.519871> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233464, -0.529174, -0.815763,
		0.756452, -0.428290, 0.494316,
		-0.610962, -0.732491, 0.300305,
		33.670399, 35.007072, 44.609962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.528683, 34.825062, 44.512424>,  <34.098072, 35.519814, 44.399750>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.528683, 34.825062, 44.512424> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.156078, 34.723064, 44.408688>,  <33.932514, 34.661865, 44.346443>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.156078, 34.723064, 44.408688>,  <34.528683, 34.825062, 44.512424>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.156078, 34.723064, 44.408688> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354605, -0.478243, -0.803455,
		0.080845, -0.840394, 0.535912,
		-0.931515, -0.254992, -0.259344,
		33.876625, 34.646568, 44.330883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.442829, 34.010284, 44.275723>,  <34.528683, 34.825062, 44.512424>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.442829, 34.010284, 44.275723> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.158726, 34.231384, 44.101368>,  <33.988262, 34.364044, 43.996754>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.158726, 34.231384, 44.101368>,  <34.442829, 34.010284, 44.275723>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.158726, 34.231384, 44.101368> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204543, -0.430444, -0.879136,
		-0.673567, -0.713573, 0.192667,
		-0.710260, 0.552749, -0.435889,
		33.945648, 34.397209, 43.970600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.098476, 33.463116, 43.892784>,  <34.442829, 34.010284, 44.275723>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.098476, 33.463116, 43.892784> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.975845, 33.804432, 43.724064>,  <33.902267, 34.009220, 43.622833>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.975845, 33.804432, 43.724064>,  <34.098476, 33.463116, 43.892784>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.975845, 33.804432, 43.724064> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179464, -0.383373, -0.905990,
		-0.934775, -0.353450, -0.035603,
		-0.306573, 0.853286, -0.421799,
		33.883873, 34.060417, 43.597523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.667740, 33.291023, 43.438622>,  <34.098476, 33.463116, 43.892784>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.667740, 33.291023, 43.438622> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.722195, 33.666214, 43.311081>,  <33.754868, 33.891327, 43.234554>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.722195, 33.666214, 43.311081>,  <33.667740, 33.291023, 43.438622>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.722195, 33.666214, 43.311081> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256365, -0.344240, -0.903203,
		-0.956946, 0.041213, -0.287327,
		0.136133, 0.937977, -0.318854,
		33.763035, 33.947605, 43.215424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.313290, 33.356422, 42.814854>,  <33.667740, 33.291023, 43.438622>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.313290, 33.356422, 42.814854> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.590141, 33.643162, 42.781166>,  <33.756252, 33.815205, 42.760952>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.590141, 33.643162, 42.781166>,  <33.313290, 33.356422, 42.814854>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.590141, 33.643162, 42.781166> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256176, -0.353061, -0.899845,
		-0.674786, 0.601231, -0.428001,
		0.692126, 0.716847, -0.084220,
		33.797779, 33.858215, 42.755901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.220394, 33.765514, 42.234985>,  <33.313290, 33.356422, 42.814854>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.220394, 33.765514, 42.234985> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.608753, 33.825562, 42.309624>,  <33.841770, 33.861588, 42.354404>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.608753, 33.825562, 42.309624>,  <33.220394, 33.765514, 42.234985>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.608753, 33.825562, 42.309624> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222746, -0.279903, -0.933830,
		-0.087954, 0.948219, -0.305196,
		0.970901, 0.150115, 0.186594,
		33.900024, 33.870598, 42.365601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.466988, 34.162968, 41.713634>,  <33.220394, 33.765514, 42.234985>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.466988, 34.162968, 41.713634> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.804180, 33.999607, 41.853683>,  <34.006496, 33.901588, 41.937714>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.804180, 33.999607, 41.853683>,  <33.466988, 34.162968, 41.713634>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.804180, 33.999607, 41.853683> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293715, -0.195845, -0.935615,
		0.450679, 0.891544, -0.045140,
		0.842983, -0.408405, 0.350123,
		34.057076, 33.877087, 41.958721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.969688, 34.392414, 41.283100>,  <33.466988, 34.162968, 41.713634>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.969688, 34.392414, 41.283100> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.158920, 34.082375, 41.450634>,  <34.272457, 33.896351, 41.551155>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.158920, 34.082375, 41.450634>,  <33.969688, 34.392414, 41.283100>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.158920, 34.082375, 41.450634> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358506, -0.264897, -0.895155,
		0.804780, 0.573633, 0.152559,
		0.473078, -0.775097, 0.418835,
		34.300842, 33.849846, 41.576286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.610596, 34.383751, 40.981129>,  <33.969688, 34.392414, 41.283100>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.610596, 34.383751, 40.981129> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.537529, 34.019749, 41.130001>,  <34.493687, 33.801346, 41.219326>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.537529, 34.019749, 41.130001>,  <34.610596, 34.383751, 40.981129>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.537529, 34.019749, 41.130001> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267589, -0.410279, -0.871818,
		0.946059, -0.059662, 0.318453,
		-0.182669, -0.910006, 0.372183,
		34.482727, 33.746746, 41.241657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.207417, 33.964157, 40.815037>,  <34.610596, 34.383751, 40.981129>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.207417, 33.964157, 40.815037> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.911751, 33.707546, 40.897083>,  <34.734352, 33.553581, 40.946312>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.911751, 33.707546, 40.897083>,  <35.207417, 33.964157, 40.815037>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.911751, 33.707546, 40.897083> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308095, -0.592880, -0.744024,
		0.598922, -0.486762, 0.635889,
		-0.739168, -0.641527, 0.205120,
		34.689999, 33.515087, 40.958618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.482574, 33.363708, 40.634125>,  <35.207417, 33.964157, 40.815037>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.482574, 33.363708, 40.634125> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.095657, 33.277348, 40.687389>,  <34.863506, 33.225529, 40.719349>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.095657, 33.277348, 40.687389>,  <35.482574, 33.363708, 40.634125>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.095657, 33.277348, 40.687389> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039060, -0.645456, -0.762798,
		0.250643, -0.732647, 0.632777,
		-0.967291, -0.215906, 0.133162,
		34.805470, 33.212574, 40.727337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.460751, 32.474163, 40.773018>,  <35.482574, 33.363708, 40.634125>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.460751, 32.474163, 40.773018> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.168304, 32.690174, 40.606243>,  <34.992836, 32.819782, 40.506176>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.168304, 32.690174, 40.606243>,  <35.460751, 32.474163, 40.773018>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.168304, 32.690174, 40.606243> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029916, -0.585159, -0.810367,
		-0.681599, -0.604944, 0.411662,
		-0.731114, 0.540030, -0.416941,
		34.948971, 32.852184, 40.481163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.035694, 32.902912, 40.899921>,  <35.460751, 32.474163, 40.773018>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.035694, 32.902912, 40.899921> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.363178, 33.033138, 40.710728>,  <36.559669, 33.111275, 40.597210>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.363178, 33.033138, 40.710728>,  <36.035694, 32.902912, 40.899921>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.363178, 33.033138, 40.710728> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334174, 0.399699, 0.853562,
		0.466944, -0.856882, 0.218442,
		0.818713, 0.325568, -0.472984,
		36.608791, 33.130810, 40.568832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.491795, 32.711143, 41.391270>,  <36.035694, 32.902912, 40.899921>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.491795, 32.711143, 41.391270> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.635601, 32.997120, 41.151398>,  <36.721886, 33.168705, 41.007477>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.635601, 32.997120, 41.151398>,  <36.491795, 32.711143, 41.391270>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.635601, 32.997120, 41.151398> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375550, 0.477446, 0.794360,
		0.854233, -0.510790, -0.096848,
		0.359512, 0.714940, -0.599677,
		36.743454, 33.211601, 40.971493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.107277, 32.782658, 41.612965>,  <36.491795, 32.711143, 41.391270>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.107277, 32.782658, 41.612965> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.058064, 33.119007, 41.402142>,  <37.028538, 33.320816, 41.275646>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.058064, 33.119007, 41.402142>,  <37.107277, 32.782658, 41.612965>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.058064, 33.119007, 41.402142> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342229, 0.534466, 0.772804,
		0.931527, -0.085298, -0.353527,
		-0.123030, 0.840875, -0.527061,
		37.021156, 33.371269, 41.244022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.662766, 33.184219, 41.719460>,  <37.107277, 32.782658, 41.612965>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.662766, 33.184219, 41.719460> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.396408, 33.460003, 41.605453>,  <37.236595, 33.625473, 41.537048>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.396408, 33.460003, 41.605453>,  <37.662766, 33.184219, 41.719460>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.396408, 33.460003, 41.605453> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233207, 0.555253, 0.798316,
		0.708660, 0.465127, -0.530527,
		-0.665895, 0.689457, -0.285015,
		37.196640, 33.666840, 41.519951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.989506, 33.872452, 41.683315>,  <37.662766, 33.184219, 41.719460>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.989506, 33.872452, 41.683315> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.595543, 33.939869, 41.699093>,  <37.359165, 33.980320, 41.708561>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.595543, 33.939869, 41.699093>,  <37.989506, 33.872452, 41.683315>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.595543, 33.939869, 41.699093> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132364, 0.586475, 0.799078,
		0.111540, 0.792238, -0.599931,
		-0.984905, 0.168539, 0.039449,
		37.300072, 33.990429, 41.710926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.999157, 34.542244, 41.967125>,  <37.989506, 33.872452, 41.683315>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.999157, 34.542244, 41.967125> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.629868, 34.396477, 42.015869>,  <37.408295, 34.309017, 42.045116>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.629868, 34.396477, 42.015869>,  <37.999157, 34.542244, 41.967125>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.629868, 34.396477, 42.015869> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017429, 0.356532, 0.934120,
		-0.383861, 0.860280, -0.335512,
		-0.923226, -0.364420, 0.121865,
		37.352901, 34.287151, 42.052429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.734406, 34.996433, 42.367702>,  <37.999157, 34.542244, 41.967125>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.734406, 34.996433, 42.367702> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.504589, 34.679760, 42.450794>,  <37.366699, 34.489758, 42.500648>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.504589, 34.679760, 42.450794>,  <37.734406, 34.996433, 42.367702>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.504589, 34.679760, 42.450794> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104652, 0.322768, 0.940675,
		-0.811759, 0.518715, -0.268294,
		-0.574539, -0.791679, 0.207725,
		37.332226, 34.442257, 42.513111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.208797, 35.260475, 42.724072>,  <37.734406, 34.996433, 42.367702>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.208797, 35.260475, 42.724072> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.200890, 34.868092, 42.801350>,  <37.196144, 34.632660, 42.847717>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.200890, 34.868092, 42.801350>,  <37.208797, 35.260475, 42.724072>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.200890, 34.868092, 42.801350> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168349, 0.193736, 0.966502,
		-0.985529, -0.013420, -0.168974,
		-0.019765, -0.980962, 0.193192,
		37.194962, 34.573803, 42.859306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.666405, 35.189102, 43.198288>,  <37.208797, 35.260475, 42.724072>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.666405, 35.189102, 43.198288> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.897087, 34.863647, 43.227707>,  <37.035496, 34.668373, 43.245358>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.897087, 34.863647, 43.227707>,  <36.666405, 35.189102, 43.198288>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.897087, 34.863647, 43.227707> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012779, 0.081027, 0.996630,
		-0.816853, -0.575700, 0.036331,
		0.576704, -0.813636, 0.073544,
		37.070099, 34.619556, 43.249771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.419563, 34.829990, 43.731358>,  <36.666405, 35.189102, 43.198288>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.419563, 34.829990, 43.731358> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.772369, 34.643234, 43.705822>,  <36.984051, 34.531181, 43.690502>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.772369, 34.643234, 43.705822>,  <36.419563, 34.829990, 43.731358>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.772369, 34.643234, 43.705822> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132975, 0.116639, 0.984232,
		-0.452079, -0.876591, 0.164961,
		0.882010, -0.466886, -0.063834,
		37.036972, 34.503170, 43.686672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.423550, 34.369431, 44.294121>,  <36.419563, 34.829990, 43.731358>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.423550, 34.369431, 44.294121> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.806187, 34.440647, 44.201828>,  <37.035767, 34.483379, 44.146454>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.806187, 34.440647, 44.201828>,  <36.423550, 34.369431, 44.294121>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.806187, 34.440647, 44.201828> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224895, 0.052584, 0.972963,
		0.185366, -0.982616, 0.010259,
		0.956588, 0.178047, -0.230733,
		37.093163, 34.494061, 44.132607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.772610, 34.026218, 44.742500>,  <36.423550, 34.369431, 44.294121>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.772610, 34.026218, 44.742500> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.040791, 34.296188, 44.619236>,  <37.201698, 34.458172, 44.545277>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.040791, 34.296188, 44.619236>,  <36.772610, 34.026218, 44.742500>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.040791, 34.296188, 44.619236> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264999, 0.170115, 0.949124,
		0.693015, -0.718005, -0.064802,
		0.670452, 0.674930, -0.308163,
		37.241924, 34.498669, 44.526787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.326042, 33.909969, 45.127399>,  <36.772610, 34.026218, 44.742500>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.326042, 33.909969, 45.127399> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.367229, 34.280254, 44.981819>,  <37.391941, 34.502426, 44.894470>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.367229, 34.280254, 44.981819>,  <37.326042, 33.909969, 45.127399>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.367229, 34.280254, 44.981819> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269758, 0.326196, 0.905995,
		0.957407, -0.191469, -0.216129,
		0.102969, 0.925708, -0.363953,
		37.398121, 34.557968, 44.872635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.854053, 34.201748, 45.535172>,  <37.326042, 33.909969, 45.127399>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.854053, 34.201748, 45.535172> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.664307, 34.518917, 45.382198>,  <37.550461, 34.709217, 45.290413>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.664307, 34.518917, 45.382198>,  <37.854053, 34.201748, 45.535172>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.664307, 34.518917, 45.382198> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140051, 0.496864, 0.856453,
		0.869117, 0.352709, -0.346743,
		-0.474364, 0.792920, -0.382436,
		37.521999, 34.756794, 45.267467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.216011, 34.726681, 45.852047>,  <37.854053, 34.201748, 45.535172>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.216011, 34.726681, 45.852047> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.868195, 34.868244, 45.714268>,  <37.659504, 34.953182, 45.631599>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.868195, 34.868244, 45.714268>,  <38.216011, 34.726681, 45.852047>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.868195, 34.868244, 45.714268> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186260, 0.410938, 0.892433,
		0.457386, 0.840165, -0.291410,
		-0.869543, 0.353909, -0.344447,
		37.607330, 34.974419, 45.610935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.266026, 35.517437, 46.021461>,  <38.216011, 34.726681, 45.852047>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.266026, 35.517437, 46.021461> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.877262, 35.435921, 45.974358>,  <37.644005, 35.387009, 45.946095>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.877262, 35.435921, 45.974358>,  <38.266026, 35.517437, 46.021461>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.877262, 35.435921, 45.974358> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216832, 0.580607, 0.784780,
		-0.091561, 0.788266, -0.608484,
		-0.971906, -0.203794, -0.117760,
		37.585690, 35.374783, 45.939030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.909061, 36.126881, 46.274151>,  <38.266026, 35.517437, 46.021461>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.909061, 36.126881, 46.274151> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.625183, 35.845104, 46.278122>,  <37.454857, 35.676037, 46.280502>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.625183, 35.845104, 46.278122>,  <37.909061, 36.126881, 46.274151>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.625183, 35.845104, 46.278122> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457665, 0.471695, 0.753689,
		-0.535612, 0.530345, -0.657156,
		-0.709692, -0.704442, 0.009925,
		37.412277, 35.633770, 46.281101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.207020, 36.437893, 46.187607>,  <37.909061, 36.126881, 46.274151>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.207020, 36.437893, 46.187607> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.151917, 36.090240, 46.377609>,  <37.118855, 35.881649, 46.491611>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.151917, 36.090240, 46.377609>,  <37.207020, 36.437893, 46.187607>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.151917, 36.090240, 46.377609> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329069, 0.492501, 0.805702,
		-0.934203, -0.045317, -0.353851,
		-0.137760, -0.869131, 0.475009,
		37.110588, 35.829502, 46.520111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<36.331741, 36.555508, 46.524513> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.512150, 36.238495, 46.688694>,  <36.620396, 36.048286, 46.787201>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.512150, 36.238495, 46.688694>,  <36.331741, 36.555508, 46.524513>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.512150, 36.238495, 46.688694> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139467, 0.391650, 0.909483,
		-0.881552, -0.467436, 0.066108,
		0.451017, -0.792536, 0.410452,
		36.647453, 36.000732, 46.811829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.862823, 36.283329, 46.908966>,  <36.331741, 36.555508, 46.524513>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.862823, 36.283329, 46.908966> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.202698, 36.141663, 47.065220>,  <36.406624, 36.056664, 47.158974>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.202698, 36.141663, 47.065220>,  <35.862823, 36.283329, 46.908966>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.202698, 36.141663, 47.065220> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236722, 0.405769, 0.882788,
		-0.471165, -0.842565, 0.260937,
		0.849686, -0.354170, 0.390638,
		36.457603, 36.035412, 47.182411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.677715, 35.814087, 47.539272>,  <35.862823, 36.283329, 46.908966>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.677715, 35.814087, 47.539272> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.061993, 35.900955, 47.608448>,  <36.292561, 35.953075, 47.649952>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.061993, 35.900955, 47.608448>,  <35.677715, 35.814087, 47.539272>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.061993, 35.900955, 47.608448> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179372, 0.010114, 0.983729,
		0.211886, -0.976082, 0.048670,
		0.960692, 0.217168, 0.172939,
		36.350201, 35.966106, 47.660328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.025036, 35.303345, 48.083309>,  <35.677715, 35.814087, 47.539272>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.025036, 35.303345, 48.083309> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.295483, 35.597382, 48.103329>,  <36.457752, 35.773804, 48.115341>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.295483, 35.597382, 48.103329>,  <36.025036, 35.303345, 48.083309>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.295483, 35.597382, 48.103329> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007552, -0.061007, 0.998109,
		0.736754, -0.675218, -0.035696,
		0.676119, 0.735091, 0.050046,
		36.498318, 35.817909, 48.118343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.312695, 35.068130, 48.592545>,  <36.025036, 35.303345, 48.083309>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.312695, 35.068130, 48.592545> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.442833, 35.445751, 48.570927>,  <36.520916, 35.672321, 48.557957>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.442833, 35.445751, 48.570927>,  <36.312695, 35.068130, 48.592545>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.442833, 35.445751, 48.570927> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065111, 0.034653, 0.997276,
		0.943349, -0.327982, -0.050194,
		0.325350, 0.944048, -0.054045,
		36.540440, 35.728966, 48.554714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.884094, 35.131134, 48.901009>,  <36.312695, 35.068130, 48.592545>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.884094, 35.131134, 48.901009> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.798191, 35.519951, 48.938980>,  <36.746647, 35.753242, 48.961761>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.798191, 35.519951, 48.938980>,  <36.884094, 35.131134, 48.901009>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.798191, 35.519951, 48.938980> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084257, -0.078395, 0.993355,
		0.973025, 0.221332, -0.065065,
		-0.214761, 0.972042, 0.094930,
		36.733765, 35.811565, 48.967461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.316380, 35.496582, 49.427429>,  <36.884094, 35.131134, 48.901009>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.316380, 35.496582, 49.427429> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.994114, 35.731533, 49.396732>,  <36.800755, 35.872505, 49.378315>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.994114, 35.731533, 49.396732>,  <37.316380, 35.496582, 49.427429>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.994114, 35.731533, 49.396732> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043055, 0.071139, 0.996537,
		0.590801, 0.806181, -0.032025,
		-0.805667, 0.587376, -0.076739,
		36.752415, 35.907745, 49.373711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.456768, 36.162376, 49.852470>,  <37.316380, 35.496582, 49.427429>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.456768, 36.162376, 49.852470> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.062286, 36.125153, 49.797699>,  <36.825600, 36.102818, 49.764835>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.062286, 36.125153, 49.797699>,  <37.456768, 36.162376, 49.852470>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.062286, 36.125153, 49.797699> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158029, 0.282493, 0.946163,
		-0.049367, 0.954745, -0.293300,
		-0.986200, -0.093059, -0.136931,
		36.766426, 36.097237, 49.756618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.988186, 36.774975, 49.896027>,  <37.456768, 36.162376, 49.852470>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.988186, 36.774975, 49.896027> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.748253, 36.475185, 50.008083>,  <36.604294, 36.295311, 50.075317>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.748253, 36.475185, 50.008083>,  <36.988186, 36.774975, 49.896027>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.748253, 36.475185, 50.008083> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039703, 0.377571, 0.925129,
		-0.799137, 0.543804, -0.256237,
		-0.599837, -0.749478, 0.280140,
		36.568302, 36.250343, 50.092125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.814095, 36.975471, 50.571842>,  <36.988186, 36.774975, 49.896027>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.814095, 36.975471, 50.571842> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.600079, 36.639835, 50.532520>,  <36.471668, 36.438454, 50.508926>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.600079, 36.639835, 50.532520>,  <36.814095, 36.975471, 50.571842>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.600079, 36.639835, 50.532520> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104021, -0.050043, 0.993315,
		-0.838399, 0.541688, -0.060507,
		-0.535039, -0.839089, -0.098303,
		36.439568, 36.388107, 50.503029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.234180, 37.082363, 50.905830>,  <36.814095, 36.975471, 50.571842>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.234180, 37.082363, 50.905830> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.276371, 36.685116, 50.885487>,  <36.301685, 36.446766, 50.873280>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.276371, 36.685116, 50.885487>,  <36.234180, 37.082363, 50.905830>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.276371, 36.685116, 50.885487> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018257, -0.049202, 0.998622,
		-0.994254, -0.106263, 0.012942,
		0.105479, -0.993120, -0.050859,
		36.308014, 36.387180, 50.870228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.683907, 36.825829, 51.287613>,  <36.234180, 37.082363, 50.905830>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.683907, 36.825829, 51.287613> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.962479, 36.538830, 51.282200>,  <36.129623, 36.366631, 51.278954>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.962479, 36.538830, 51.282200>,  <35.683907, 36.825829, 51.287613>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.962479, 36.538830, 51.282200> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033325, 0.013501, 0.999353,
		-0.716847, -0.696434, 0.033313,
		0.696434, -0.717493, -0.013531,
		36.171410, 36.323582, 51.278141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.540600, 36.308498, 51.739586>,  <35.683907, 36.825829, 51.287613>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.540600, 36.308498, 51.739586> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.933578, 36.233879, 51.739902>,  <36.169365, 36.189110, 51.740093>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.933578, 36.233879, 51.739902>,  <35.540600, 36.308498, 51.739586>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.933578, 36.233879, 51.739902> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007410, -0.034762, 0.999368,
		-0.186400, -0.981831, -0.035535,
		0.982446, -0.186546, 0.000796,
		36.228313, 36.177917, 51.740143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.713966, 36.001720, 52.407486>,  <35.540600, 36.308498, 51.739586>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.713966, 36.001720, 52.407486> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.093273, 36.055103, 52.292259>,  <36.320858, 36.087135, 52.223125>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.093273, 36.055103, 52.292259>,  <35.713966, 36.001720, 52.407486>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.093273, 36.055103, 52.292259> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295471, -0.039060, 0.954553,
		0.116143, -0.990284, -0.076472,
		0.948265, 0.133460, -0.288063,
		36.377754, 36.095142, 52.205841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.123196, 35.440376, 52.699669>,  <35.713966, 36.001720, 52.407486>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.123196, 35.440376, 52.699669> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.384544, 35.730915, 52.614323>,  <36.541351, 35.905239, 52.563114>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.384544, 35.730915, 52.614323>,  <36.123196, 35.440376, 52.699669>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.384544, 35.730915, 52.614323> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438655, -0.133536, 0.888679,
		0.617002, -0.674227, -0.405866,
		0.653369, 0.726351, -0.213361,
		36.580555, 35.948822, 52.550316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.802021, 35.165852, 52.844360>,  <36.123196, 35.440376, 52.699669>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.802021, 35.165852, 52.844360> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.831646, 35.564293, 52.863503>,  <36.849422, 35.803356, 52.874989>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.831646, 35.564293, 52.863503>,  <36.802021, 35.165852, 52.844360>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.831646, 35.564293, 52.863503> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479022, -0.077624, 0.874364,
		0.874673, -0.041833, -0.482905,
		0.074062, 0.996105, 0.047857,
		36.853863, 35.863125, 52.877861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.463902, 35.299599, 53.109753>,  <36.802021, 35.165852, 52.844360>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.463902, 35.299599, 53.109753> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.245216, 35.627075, 53.180008>,  <37.114006, 35.823563, 53.222160>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.245216, 35.627075, 53.180008>,  <37.463902, 35.299599, 53.109753>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.245216, 35.627075, 53.180008> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456776, 0.115809, 0.882011,
		0.701758, 0.562429, -0.437274,
		-0.546709, 0.818695, 0.175634,
		37.081203, 35.872684, 53.232697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.909676, 35.827366, 53.447571>,  <37.463902, 35.299599, 53.109753>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.909676, 35.827366, 53.447571> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.535393, 35.922131, 53.552132>,  <37.310825, 35.978989, 53.614868>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.535393, 35.922131, 53.552132>,  <37.909676, 35.827366, 53.447571>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.535393, 35.922131, 53.552132> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300550, 0.147315, 0.942320,
		0.184738, 0.960297, -0.209047,
		-0.935704, 0.236912, 0.261403,
		37.254681, 35.993202, 53.630554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.990204, 36.345081, 53.878017>,  <37.909676, 35.827366, 53.447571>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.990204, 36.345081, 53.878017> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.624485, 36.209938, 53.967384>,  <37.405056, 36.128853, 54.021004>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.624485, 36.209938, 53.967384>,  <37.990204, 36.345081, 53.878017>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.624485, 36.209938, 53.967384> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169925, 0.180758, 0.968737,
		-0.367681, 0.923676, -0.107856,
		-0.914295, -0.337859, 0.223417,
		37.350197, 36.108582, 54.034409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.601089, 36.857296, 54.047836>,  <37.990204, 36.345081, 53.878017>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.601089, 36.857296, 54.047836> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.445969, 36.538750, 54.233486>,  <37.352898, 36.347622, 54.344875>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.445969, 36.538750, 54.233486>,  <37.601089, 36.857296, 54.047836>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.445969, 36.538750, 54.233486> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126695, 0.452694, 0.882619,
		-0.912995, 0.401080, -0.074658,
		-0.387799, -0.796368, 0.464122,
		37.329628, 36.299839, 54.372723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.240562, 37.203152, 54.484562>,  <37.601089, 36.857296, 54.047836>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.240562, 37.203152, 54.484562> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.251698, 36.833900, 54.637959>,  <37.258377, 36.612350, 54.729996>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.251698, 36.833900, 54.637959>,  <37.240562, 37.203152, 54.484562>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.251698, 36.833900, 54.637959> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127598, 0.377221, 0.917291,
		-0.991435, -0.074464, -0.107289,
		0.027834, -0.923125, 0.383492,
		37.260048, 36.556965, 54.753006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.646412, 37.197388, 54.999611>,  <37.240562, 37.203152, 54.484562>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.646412, 37.197388, 54.999611> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.921417, 36.923229, 55.095577>,  <37.086422, 36.758736, 55.153156>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.921417, 36.923229, 55.095577>,  <36.646412, 37.197388, 54.999611>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.921417, 36.923229, 55.095577> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034770, 0.298929, 0.953642,
		-0.725338, -0.663984, 0.181686,
		0.687514, -0.685396, 0.239912,
		37.127670, 36.717609, 55.167549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.397545, 36.806313, 55.660809>,  <36.646412, 37.197388, 54.999611>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.397545, 36.806313, 55.660809> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.793823, 36.779716, 55.613300>,  <37.031590, 36.763760, 55.584797>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.793823, 36.779716, 55.613300>,  <36.397545, 36.806313, 55.660809>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.793823, 36.779716, 55.613300> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136082, 0.464346, 0.875137,
		-0.003043, -0.883154, 0.469073,
		0.990693, -0.066495, -0.118769,
		37.091030, 36.759769, 55.577671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.048382, 36.252735, 55.792549>,  <36.397545, 36.806313, 55.660809>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.048382, 36.252735, 55.792549> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.867596, 35.983452, 56.026649>,  <35.759125, 35.821880, 56.167110>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.867596, 35.983452, 56.026649>,  <36.048382, 36.252735, 55.792549>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.867596, 35.983452, 56.026649> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.570994, -0.285729, -0.769626,
		0.685341, -0.682019, -0.255258,
		-0.451965, -0.673208, 0.585251,
		35.732006, 35.781490, 56.202225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.119682, 35.536068, 55.526241>,  <36.048382, 36.252735, 55.792549>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.119682, 35.536068, 55.526241> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.785789, 35.566334, 55.744415>,  <35.585453, 35.584496, 55.875320>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.785789, 35.566334, 55.744415>,  <36.119682, 35.536068, 55.526241>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.785789, 35.566334, 55.744415> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549706, -0.172746, -0.817302,
		0.032379, -0.982056, 0.185791,
		-0.834730, 0.075667, 0.545435,
		35.535370, 35.589035, 55.908047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.701309, 35.240982, 55.178089>,  <36.119682, 35.536068, 55.526241>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.701309, 35.240982, 55.178089> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.434155, 35.416279, 55.418713>,  <35.273861, 35.521458, 55.563087>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.434155, 35.416279, 55.418713>,  <35.701309, 35.240982, 55.178089>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.434155, 35.416279, 55.418713> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.714771, -0.152415, -0.682549,
		-0.207435, -0.885841, 0.415038,
		-0.667888, 0.438241, 0.601557,
		35.233788, 35.547752, 55.599178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.040005, 34.789772, 55.283192>,  <35.701309, 35.240982, 55.178089>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.040005, 34.789772, 55.283192> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.943569, 35.174049, 55.338257>,  <34.885708, 35.404613, 55.371296>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.943569, 35.174049, 55.338257>,  <35.040005, 34.789772, 55.283192>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.943569, 35.174049, 55.338257> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.765169, -0.100902, -0.635874,
		-0.596988, -0.258633, 0.759417,
		-0.241084, 0.960691, 0.137661,
		34.871243, 35.462257, 55.379555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.378124, 34.761387, 55.289661>,  <35.040005, 34.789772, 55.283192>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.378124, 34.761387, 55.289661> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.424309, 35.155991, 55.243225>,  <34.452019, 35.392754, 55.215363>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.424309, 35.155991, 55.243225>,  <34.378124, 34.761387, 55.289661>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.424309, 35.155991, 55.243225> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.724902, 0.003781, -0.688842,
		-0.679107, 0.163684, 0.715556,
		0.115458, 0.986505, -0.116087,
		34.458946, 35.451942, 55.208401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.707024, 35.065300, 55.070816>,  <34.378124, 34.761387, 55.289661>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.707024, 35.065300, 55.070816> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.961136, 35.349323, 54.949329>,  <34.113602, 35.519737, 54.876438>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.961136, 35.349323, 54.949329>,  <33.707024, 35.065300, 55.070816>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.961136, 35.349323, 54.949329> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528193, 0.112572, -0.841629,
		-0.563413, 0.695090, 0.446560,
		0.635278, 0.710055, -0.303717,
		34.151718, 35.562340, 54.858215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.346020, 35.704746, 54.736423>,  <33.707024, 35.065300, 55.070816>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.346020, 35.704746, 54.736423> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.721394, 35.714619, 54.598598>,  <33.946617, 35.720543, 54.515903>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.721394, 35.714619, 54.598598>,  <33.346020, 35.704746, 54.736423>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.721394, 35.714619, 54.598598> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345381, 0.047813, -0.937244,
		-0.006661, 0.998551, 0.053395,
		0.938439, 0.024685, -0.344562,
		34.002926, 35.722023, 54.495232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.294765, 36.185860, 54.158306>,  <33.346020, 35.704746, 54.736423>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.294765, 36.185860, 54.158306> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.652256, 36.016834, 54.098038>,  <33.866749, 35.915421, 54.061874>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.652256, 36.016834, 54.098038>,  <33.294765, 36.185860, 54.158306>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.652256, 36.016834, 54.098038> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110372, 0.118435, -0.986809,
		0.434832, 0.898563, 0.059209,
		0.893722, -0.422561, -0.150676,
		33.920372, 35.890064, 54.052834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.607037, 36.623848, 53.674606>,  <33.294765, 36.185860, 54.158306>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.607037, 36.623848, 53.674606> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.827599, 36.290836, 53.653263>,  <33.959934, 36.091030, 53.640457>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.827599, 36.290836, 53.653263>,  <33.607037, 36.623848, 53.674606>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.827599, 36.290836, 53.653263> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003871, 0.061410, -0.998105,
		0.834232, 0.550562, 0.030639,
		0.551400, -0.832532, -0.053361,
		33.993019, 36.041077, 53.637257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.381989, 36.726841, 53.334373>,  <33.607037, 36.623848, 53.674606>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.381989, 36.726841, 53.334373> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.231110, 36.358822, 53.291988>,  <34.140583, 36.138008, 53.266556>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.231110, 36.358822, 53.291988>,  <34.381989, 36.726841, 53.334373>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.231110, 36.358822, 53.291988> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167353, 0.044823, -0.984877,
		0.910887, -0.389227, 0.137066,
		-0.377197, -0.920050, -0.105967,
		34.117950, 36.082806, 53.260197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.842735, 36.431427, 52.806137>,  <34.381989, 36.726841, 53.334373>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.842735, 36.431427, 52.806137> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.526176, 36.187893, 52.784187>,  <34.336243, 36.041771, 52.771015>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.526176, 36.187893, 52.784187>,  <34.842735, 36.431427, 52.806137>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.526176, 36.187893, 52.784187> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080901, -0.015333, -0.996604,
		0.605925, -0.793149, 0.061390,
		-0.791397, -0.608834, -0.054876,
		34.288757, 36.005241, 52.767723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.950775, 36.010082, 52.228989>,  <34.842735, 36.431427, 52.806137>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.950775, 36.010082, 52.228989> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.569607, 35.914219, 52.303291>,  <34.340904, 35.856701, 52.347874>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.569607, 35.914219, 52.303291>,  <34.950775, 36.010082, 52.228989>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.569607, 35.914219, 52.303291> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099592, -0.331253, -0.938271,
		0.286401, -0.912597, 0.291789,
		-0.952920, -0.239661, 0.185759,
		34.283730, 35.842319, 52.359020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.830135, 35.317421, 51.935547>,  <34.950775, 36.010082, 52.228989>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.830135, 35.317421, 51.935547> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.497723, 35.539879, 51.931797>,  <34.298275, 35.673355, 51.929546>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.497723, 35.539879, 51.931797>,  <34.830135, 35.317421, 51.935547>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.497723, 35.539879, 51.931797> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016122, -0.040932, -0.999032,
		-0.555989, -0.830078, 0.042982,
		-0.831033, 0.556144, -0.009375,
		34.248413, 35.706722, 51.928986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.465088, 34.994709, 51.471619>,  <34.830135, 35.317421, 51.935547>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.465088, 34.994709, 51.471619> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.329540, 35.369293, 51.507858>,  <34.248211, 35.594044, 51.529602>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.329540, 35.369293, 51.507858>,  <34.465088, 34.994709, 51.471619>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.329540, 35.369293, 51.507858> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065813, 0.119657, -0.990632,
		-0.938529, -0.329731, -0.102179,
		-0.338869, 0.936461, 0.090601,
		34.227879, 35.650230, 51.535038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.972713, 35.008919, 50.939285>,  <34.465088, 34.994709, 51.471619>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.972713, 35.008919, 50.939285> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.006237, 35.400822, 51.012009>,  <34.026352, 35.635963, 51.055641>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.006237, 35.400822, 51.012009>,  <33.972713, 35.008919, 50.939285>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.006237, 35.400822, 51.012009> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175758, 0.194125, -0.965104,
		-0.980859, 0.048932, 0.188469,
		0.083811, 0.979756, 0.181809,
		34.031380, 35.694748, 51.066551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.446522, 35.259647, 50.549053>,  <33.972713, 35.008919, 50.939285>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.446522, 35.259647, 50.549053> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.673660, 35.584015, 50.605560>,  <33.809944, 35.778637, 50.639465>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.673660, 35.584015, 50.605560>,  <33.446522, 35.259647, 50.549053>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.673660, 35.584015, 50.605560> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103976, 0.240910, -0.964962,
		-0.816541, 0.533262, 0.221117,
		0.567846, 0.810922, 0.141266,
		33.844013, 35.827290, 50.647942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.086605, 35.815266, 50.218250>,  <33.446522, 35.259647, 50.549053>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.086605, 35.815266, 50.218250> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.467316, 35.935566, 50.242481>,  <33.695744, 36.007748, 50.257019>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.467316, 35.935566, 50.242481>,  <33.086605, 35.815266, 50.218250>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.467316, 35.935566, 50.242481> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056937, 0.367186, -0.928403,
		-0.301462, 0.880183, 0.366604,
		0.951777, 0.300751, 0.060577,
		33.752850, 36.025791, 50.260654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.138134, 36.534744, 49.842133>,  <33.086605, 35.815266, 50.218250>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.138134, 36.534744, 49.842133> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.501003, 36.366825, 49.853561>,  <33.718723, 36.266075, 49.860416>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.501003, 36.366825, 49.853561>,  <33.138134, 36.534744, 49.842133>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.501003, 36.366825, 49.853561> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143416, 0.244663, -0.958943,
		0.395568, 0.874022, 0.282156,
		0.907170, -0.419793, 0.028568,
		33.773155, 36.240887, 49.862133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.530762, 37.004597, 49.578690>,  <33.138134, 36.534744, 49.842133>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.530762, 37.004597, 49.578690> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.727821, 36.661526, 49.519791>,  <33.846058, 36.455685, 49.484451>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.727821, 36.661526, 49.519791>,  <33.530762, 37.004597, 49.578690>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.727821, 36.661526, 49.519791> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155727, 0.253360, -0.954755,
		0.856179, 0.447433, 0.258382,
		0.492653, -0.857678, -0.147245,
		33.875618, 36.404221, 49.475616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.116119, 37.203457, 49.113762>,  <33.530762, 37.004597, 49.578690>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.116119, 37.203457, 49.113762> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.042011, 36.811588, 49.082996>,  <33.997547, 36.576466, 49.064537>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.042011, 36.811588, 49.082996>,  <34.116119, 37.203457, 49.113762>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.042011, 36.811588, 49.082996> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216739, 0.035604, -0.975580,
		0.958487, -0.197420, 0.205737,
		-0.185274, -0.979672, -0.076914,
		33.986427, 36.517685, 49.059921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.700291, 36.931232, 48.670082>,  <34.116119, 37.203457, 49.113762>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.700291, 36.931232, 48.670082> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.410854, 36.655140, 48.669846>,  <34.237194, 36.489483, 48.669704>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.410854, 36.655140, 48.669846>,  <34.700291, 36.931232, 48.670082>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.410854, 36.655140, 48.669846> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216374, -0.226015, -0.949789,
		0.655441, -0.687384, 0.312890,
		-0.723588, -0.690232, -0.000592,
		34.193779, 36.448071, 48.669666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<45.609966, 29.735361, 29.920073> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.275246, 29.524462, 29.861055>,  <45.074413, 29.397923, 29.825645>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.275246, 29.524462, 29.861055>,  <45.609966, 29.735361, 29.920073>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.275246, 29.524462, 29.861055> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433314, 0.473049, 0.767114,
		-0.334664, 0.705857, -0.624313,
		-0.836803, -0.527249, -0.147545,
		45.024204, 29.366287, 29.816792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.084316, 30.298790, 29.862793>,  <45.609966, 29.735361, 29.920073>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.084316, 30.298790, 29.862793> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.922375, 29.947424, 29.964363>,  <44.825211, 29.736605, 30.025305>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.922375, 29.947424, 29.964363>,  <45.084316, 30.298790, 29.862793>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.922375, 29.947424, 29.964363> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369124, 0.411076, 0.833525,
		-0.836565, 0.243725, -0.490670,
		-0.404853, -0.878416, 0.253927,
		44.800919, 29.683899, 30.040541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.245846, 30.405121, 29.965858>,  <45.084316, 30.298790, 29.862793>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.245846, 30.405121, 29.965858> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.329136, 30.052134, 30.134565>,  <44.379108, 29.840342, 30.235790>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.329136, 30.052134, 30.134565>,  <44.245846, 30.405121, 29.965858>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.329136, 30.052134, 30.134565> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508819, 0.270543, 0.817257,
		-0.835312, -0.384776, -0.392685,
		0.208222, -0.882470, 0.421770,
		44.391602, 29.787392, 30.261097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.567543, 30.164482, 30.188168>,  <44.245846, 30.405121, 29.965858>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.567543, 30.164482, 30.188168> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.852802, 29.997847, 30.413689>,  <44.023956, 29.897865, 30.549002>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.852802, 29.997847, 30.413689>,  <43.567543, 30.164482, 30.188168>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.852802, 29.997847, 30.413689> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504714, 0.253031, 0.825372,
		-0.486502, -0.873171, -0.029811,
		0.713148, -0.416591, 0.563802,
		44.066746, 29.872869, 30.582829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.150497, 29.875669, 30.722292>,  <43.567543, 30.164482, 30.188168>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.150497, 29.875669, 30.722292> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.527985, 29.870028, 30.854473>,  <43.754478, 29.866642, 30.933783>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.527985, 29.870028, 30.854473>,  <43.150497, 29.875669, 30.722292>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.527985, 29.870028, 30.854473> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284436, 0.475282, 0.832588,
		-0.168802, -0.879720, 0.444520,
		0.943717, -0.014105, 0.330453,
		43.811100, 29.865795, 30.953609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.083561, 29.636295, 31.387697>,  <43.150497, 29.875669, 30.722292>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.083561, 29.636295, 31.387697> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.437370, 29.822599, 31.377190>,  <43.649654, 29.934381, 31.370886>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.437370, 29.822599, 31.377190>,  <43.083561, 29.636295, 31.387697>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.437370, 29.822599, 31.377190> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246291, 0.514067, 0.821630,
		0.396186, -0.720279, 0.569415,
		0.884521, 0.465761, -0.026268,
		43.702728, 29.962328, 31.369308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.357723, 29.566383, 32.087620>,  <43.083561, 29.636295, 31.387697>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.357723, 29.566383, 32.087620> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.601463, 29.847425, 31.940630>,  <43.747707, 30.016050, 31.852436>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.601463, 29.847425, 31.940630>,  <43.357723, 29.566383, 32.087620>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.601463, 29.847425, 31.940630> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189552, 0.579102, 0.792913,
		0.769909, -0.413507, 0.486057,
		0.609352, 0.702604, -0.367475,
		43.784267, 30.058207, 31.830387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.883293, 29.827478, 32.592506>,  <43.357723, 29.566383, 32.087620>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.883293, 29.827478, 32.592506> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.826759, 30.116919, 32.322269>,  <43.792839, 30.290583, 32.160126>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.826759, 30.116919, 32.322269>,  <43.883293, 29.827478, 32.592506>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.826759, 30.116919, 32.322269> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145575, 0.659833, 0.737176,
		0.979200, 0.202535, 0.012084,
		-0.141331, 0.723602, -0.675593,
		43.784359, 30.334000, 32.119591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.189831, 30.332458, 32.938183>,  <43.883293, 29.827478, 32.592506>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.189831, 30.332458, 32.938183> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.964794, 30.513651, 32.661549>,  <43.829773, 30.622366, 32.495567>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.964794, 30.513651, 32.661549>,  <44.189831, 30.332458, 32.938183>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.964794, 30.513651, 32.661549> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307441, 0.661905, 0.683638,
		0.767442, 0.597234, -0.233119,
		-0.562595, 0.452982, -0.691588,
		43.796017, 30.649546, 32.454071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.269505, 30.996632, 33.171127>,  <44.189831, 30.332458, 32.938183>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.269505, 30.996632, 33.171127> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.954559, 30.995256, 32.924534>,  <43.765594, 30.994431, 32.776577>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.954559, 30.995256, 32.924534>,  <44.269505, 30.996632, 33.171127>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.954559, 30.995256, 32.924534> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496767, 0.595724, 0.631139,
		0.365082, 0.803182, -0.470758,
		-0.787361, -0.003439, -0.616482,
		43.718349, 30.994225, 32.739590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.091133, 31.605576, 33.260208>,  <44.269505, 30.996632, 33.171127>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.091133, 31.605576, 33.260208> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.771606, 31.460320, 33.068367>,  <43.579891, 31.373165, 32.953262>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.771606, 31.460320, 33.068367>,  <44.091133, 31.605576, 33.260208>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.771606, 31.460320, 33.068367> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.598781, 0.556656, 0.575842,
		0.057861, 0.747170, -0.662109,
		-0.798820, -0.363140, -0.479601,
		43.531960, 31.351377, 32.924488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.681187, 32.186699, 32.987053>,  <44.091133, 31.605576, 33.260208>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.681187, 32.186699, 32.987053> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.460011, 31.862869, 33.065891>,  <43.327305, 31.668571, 33.113194>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.460011, 31.862869, 33.065891>,  <43.681187, 32.186699, 32.987053>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.460011, 31.862869, 33.065891> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509749, 0.515787, 0.688563,
		-0.659104, 0.280263, -0.697879,
		-0.552936, -0.809578, 0.197094,
		43.294128, 31.619995, 33.125019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.074123, 32.450359, 33.021458>,  <43.681187, 32.186699, 32.987053>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.074123, 32.450359, 33.021458> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.037643, 32.095417, 33.202244>,  <43.015755, 31.882450, 33.310715>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.037643, 32.095417, 33.202244>,  <43.074123, 32.450359, 33.021458>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.037643, 32.095417, 33.202244> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506913, 0.432024, 0.745919,
		-0.857160, -0.161083, -0.489213,
		-0.091197, -0.887360, 0.451969,
		43.010284, 31.829208, 33.337833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.373604, 32.378559, 33.364868>,  <43.074123, 32.450359, 33.021458>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.373604, 32.378559, 33.364868> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.571720, 32.093952, 33.564240>,  <42.690590, 31.923187, 33.683861>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.571720, 32.093952, 33.564240>,  <42.373604, 32.378559, 33.364868>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.571720, 32.093952, 33.564240> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398889, 0.323421, 0.858071,
		-0.771738, -0.623808, -0.123631,
		0.495287, -0.711521, 0.498426,
		42.720306, 31.880495, 33.713768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.982540, 32.280128, 33.901699>,  <42.373604, 32.378559, 33.364868>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.982540, 32.280128, 33.901699> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.314339, 32.093315, 34.024220>,  <42.513416, 31.981228, 34.097733>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.314339, 32.093315, 34.024220>,  <41.982540, 32.280128, 33.901699>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.314339, 32.093315, 34.024220> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265736, 0.152345, 0.951933,
		-0.491248, -0.871017, 0.002262,
		0.829494, -0.467034, 0.306299,
		42.563187, 31.953205, 34.116108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.798882, 31.743711, 34.334126>,  <41.982540, 32.280128, 33.901699>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.798882, 31.743711, 34.334126> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.166714, 31.874842, 34.420746>,  <42.387413, 31.953520, 34.472717>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.166714, 31.874842, 34.420746>,  <41.798882, 31.743711, 34.334126>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.166714, 31.874842, 34.420746> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286731, 0.183152, 0.940341,
		0.268605, -0.926815, 0.262422,
		0.919585, 0.327825, 0.216551,
		42.442589, 31.973190, 34.485710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.827549, 31.512091, 35.020546>,  <41.798882, 31.743711, 34.334126>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.827549, 31.512091, 35.020546> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.112999, 31.788568, 34.974949>,  <42.284267, 31.954456, 34.947590>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.112999, 31.788568, 34.974949>,  <41.827549, 31.512091, 35.020546>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.112999, 31.788568, 34.974949> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177439, 0.335758, 0.925085,
		0.677689, -0.639932, 0.362249,
		0.713620, 0.691197, -0.113991,
		42.327084, 31.995928, 34.940750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.295029, 31.498175, 35.629200>,  <41.827549, 31.512091, 35.020546>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.295029, 31.498175, 35.629200> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.364967, 31.860773, 35.475475>,  <42.406929, 32.078331, 35.383240>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.364967, 31.860773, 35.475475>,  <42.295029, 31.498175, 35.629200>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.364967, 31.860773, 35.475475> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043976, 0.382746, 0.922806,
		0.983613, -0.178248, 0.027057,
		0.174844, 0.906495, -0.384312,
		42.417419, 32.132721, 35.360180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.916870, 31.781935, 35.836590>,  <42.295029, 31.498175, 35.629200>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.916870, 31.781935, 35.836590> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.680077, 32.095741, 35.762741>,  <42.537998, 32.284027, 35.718433>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.680077, 32.095741, 35.762741>,  <42.916870, 31.781935, 35.836590>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.680077, 32.095741, 35.762741> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044491, 0.260537, 0.964438,
		0.804719, 0.562720, -0.189138,
		-0.591986, 0.784517, -0.184623,
		42.502480, 32.331097, 35.707355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.132812, 32.169930, 36.387756>,  <42.916870, 31.781935, 35.836590>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.132812, 32.169930, 36.387756> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.812786, 32.362881, 36.245094>,  <42.620770, 32.478649, 36.159496>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.812786, 32.362881, 36.245094>,  <43.132812, 32.169930, 36.387756>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.812786, 32.362881, 36.245094> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171682, 0.385546, 0.906575,
		0.574815, 0.786556, -0.225649,
		-0.800070, 0.482373, -0.356656,
		42.572765, 32.507591, 36.138096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.181477, 32.851410, 36.592892>,  <43.132812, 32.169930, 36.387756>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.181477, 32.851410, 36.592892> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.791168, 32.782322, 36.539165>,  <42.556984, 32.740868, 36.506927>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.791168, 32.782322, 36.539165>,  <43.181477, 32.851410, 36.592892>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.791168, 32.782322, 36.539165> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195603, 0.413501, 0.889245,
		-0.098050, 0.893971, -0.437266,
		-0.975769, -0.172721, -0.134320,
		42.498436, 32.730507, 36.498871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.847065, 33.117710, 36.608700>,  <43.181477, 32.851410, 36.592892>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.847065, 33.117710, 36.608700> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.136559, 33.254452, 36.368916>,  <44.310253, 33.336498, 36.225044>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.136559, 33.254452, 36.368916>,  <43.847065, 33.117710, 36.608700>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.136559, 33.254452, 36.368916> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257249, -0.939711, -0.225315,
		-0.640341, 0.008858, -0.768040,
		0.723731, 0.341856, -0.599456,
		44.353680, 33.357010, 36.189079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.787521, 32.749519, 36.033157>,  <43.847065, 33.117710, 36.608700>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.787521, 32.749519, 36.033157> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.163986, 32.882389, 36.058041>,  <44.389866, 32.962112, 36.072971>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.163986, 32.882389, 36.058041>,  <43.787521, 32.749519, 36.033157>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.163986, 32.882389, 36.058041> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317558, -0.806269, -0.499087,
		-0.115627, 0.489477, -0.864316,
		0.941163, 0.332178, 0.062210,
		44.446335, 32.982044, 36.076702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.003963, 32.770687, 35.334522>,  <43.787521, 32.749519, 36.033157>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.003963, 32.770687, 35.334522> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.329212, 32.773552, 35.567341>,  <44.524361, 32.775269, 35.707031>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.329212, 32.773552, 35.567341>,  <44.003963, 32.770687, 35.334522>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.329212, 32.773552, 35.567341> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364068, -0.786459, -0.498935,
		0.454183, 0.617601, -0.642096,
		0.813125, 0.007159, 0.582045,
		44.573151, 32.775700, 35.741955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.621143, 32.655006, 34.932102>,  <44.003963, 32.770687, 35.334522>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.621143, 32.655006, 34.932102> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.775558, 32.567390, 35.290543>,  <44.868210, 32.514820, 35.505608>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.775558, 32.567390, 35.290543>,  <44.621143, 32.655006, 34.932102>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.775558, 32.567390, 35.290543> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538156, -0.735496, -0.411624,
		0.749240, 0.641144, -0.166052,
		0.386041, -0.219043, 0.896098,
		44.891369, 32.501678, 35.559372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.291885, 32.511406, 34.754723>,  <44.621143, 32.655006, 34.932102>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.291885, 32.511406, 34.754723> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.226349, 32.322701, 35.101273>,  <45.187027, 32.209476, 35.309200>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.226349, 32.322701, 35.101273>,  <45.291885, 32.511406, 34.754723>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.226349, 32.322701, 35.101273> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416969, -0.829047, -0.372583,
		0.894033, 0.300207, 0.332537,
		-0.163837, -0.471759, 0.866372,
		45.177197, 32.181171, 35.361183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.945644, 32.117283, 34.944313>,  <45.291885, 32.511406, 34.754723>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.945644, 32.117283, 34.944313> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.650219, 31.935995, 35.143959>,  <45.472965, 31.827223, 35.263748>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.650219, 31.935995, 35.143959>,  <45.945644, 32.117283, 34.944313>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.650219, 31.935995, 35.143959> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278945, -0.879412, -0.385776,
		0.613773, -0.145693, 0.775923,
		-0.738561, -0.453219, 0.499119,
		45.428650, 31.800030, 35.293694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.256935, 31.681704, 35.405849>,  <45.945644, 32.117283, 34.944313>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.256935, 31.681704, 35.405849> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.887333, 31.537432, 35.355061>,  <45.665573, 31.450869, 35.324589>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.887333, 31.537432, 35.355061>,  <46.256935, 31.681704, 35.405849>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.887333, 31.537432, 35.355061> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377153, -0.914372, -0.147236,
		-0.062992, -0.183934, 0.980918,
		-0.924006, -0.360682, -0.126970,
		45.610130, 31.429228, 35.316971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.245838, 30.977993, 35.580574>,  <46.256935, 31.681704, 35.405849>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.245838, 30.977993, 35.580574> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.896778, 30.980127, 35.385250>,  <45.687344, 30.981407, 35.268055>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.896778, 30.980127, 35.385250>,  <46.245838, 30.977993, 35.580574>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.896778, 30.980127, 35.385250> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078594, -0.985371, -0.151216,
		-0.481977, -0.170338, 0.859467,
		-0.872652, 0.005334, -0.488314,
		45.634983, 30.981728, 35.238754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.872669, 30.368784, 35.822830>,  <46.245838, 30.977993, 35.580574>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.872669, 30.368784, 35.822830> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.700752, 30.487093, 35.481586>,  <45.597603, 30.558079, 35.276840>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.700752, 30.487093, 35.481586>,  <45.872669, 30.368784, 35.822830>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.700752, 30.487093, 35.481586> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029140, -0.948877, -0.314297,
		-0.902456, -0.110224, 0.416443,
		-0.429797, 0.295775, -0.853108,
		45.571812, 30.575825, 35.225655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.447895, 29.893856, 35.614910>,  <45.872669, 30.368784, 35.822830>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.447895, 29.893856, 35.614910> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.469383, 30.092690, 35.268494>,  <45.482277, 30.211990, 35.060646>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.469383, 30.092690, 35.268494>,  <45.447895, 29.893856, 35.614910>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.469383, 30.092690, 35.268494> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010010, -0.867514, -0.497312,
		-0.998506, 0.018048, -0.051581,
		0.053722, 0.497085, -0.866037,
		45.485500, 30.241816, 35.008682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.945030, 29.561850, 35.161083>,  <45.447895, 29.893856, 35.614910>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.945030, 29.561850, 35.161083> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.199074, 29.746284, 34.913200>,  <45.351501, 29.856945, 34.764473>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.199074, 29.746284, 34.913200>,  <44.945030, 29.561850, 35.161083>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.199074, 29.746284, 34.913200> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058057, -0.828514, -0.556950,
		-0.770235, 0.317748, -0.552969,
		0.635112, 0.461087, -0.619703,
		45.389606, 29.884611, 34.727291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.618809, 29.515457, 34.506222>,  <44.945030, 29.561850, 35.161083>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.618809, 29.515457, 34.506222> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.002613, 29.593582, 34.425045>,  <45.232895, 29.640457, 34.376339>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.002613, 29.593582, 34.425045>,  <44.618809, 29.515457, 34.506222>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.002613, 29.593582, 34.425045> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028720, -0.784609, -0.619325,
		-0.280191, 0.588423, -0.758453,
		0.959514, 0.195312, -0.202941,
		45.290466, 29.652176, 34.364162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.714367, 29.443630, 33.756027>,  <44.618809, 29.515457, 34.506222>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.714367, 29.443630, 33.756027> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.056271, 29.357155, 33.944767>,  <45.261414, 29.305269, 34.058010>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.056271, 29.357155, 33.944767>,  <44.714367, 29.443630, 33.756027>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.056271, 29.357155, 33.944767> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064761, -0.857592, -0.510237,
		0.514963, 0.466689, -0.719038,
		0.854763, -0.216187, 0.471851,
		45.312698, 29.292299, 34.086323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.061638, 29.105717, 33.211681>,  <44.714367, 29.443630, 33.756027>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.061638, 29.105717, 33.211681> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.276073, 28.987926, 33.528133>,  <45.404736, 28.917252, 33.718006>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.276073, 28.987926, 33.528133>,  <45.061638, 29.105717, 33.211681>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.276073, 28.987926, 33.528133> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178408, -0.876490, -0.447141,
		0.825094, 0.380852, -0.417338,
		0.536088, -0.294477, 0.791134,
		45.436901, 28.899584, 33.765472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.726986, 28.849340, 33.012436>,  <45.061638, 29.105717, 33.211681>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.726986, 28.849340, 33.012436> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.685860, 28.675802, 33.370476>,  <45.661186, 28.571680, 33.585300>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.685860, 28.675802, 33.370476>,  <45.726986, 28.849340, 33.012436>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.685860, 28.675802, 33.370476> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380196, -0.848684, -0.367677,
		0.919174, 0.302514, 0.252200,
		-0.102811, -0.433844, 0.895103,
		45.655018, 28.545649, 33.639008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.328220, 28.529175, 33.077969>,  <45.726986, 28.849340, 33.012436>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.328220, 28.529175, 33.077969> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.051502, 28.353256, 33.307053>,  <45.885471, 28.247705, 33.444504>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.051502, 28.353256, 33.307053>,  <46.328220, 28.529175, 33.077969>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.051502, 28.353256, 33.307053> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250746, -0.890083, -0.380629,
		0.677159, -0.119713, 0.726034,
		-0.691797, -0.439796, 0.572710,
		45.843964, 28.221317, 33.478867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.509377, 27.828440, 33.058788>,  <46.328220, 28.529175, 33.077969>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.509377, 27.828440, 33.058788> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.153782, 27.802391, 33.240101>,  <45.940426, 27.786762, 33.348888>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.153782, 27.802391, 33.240101>,  <46.509377, 27.828440, 33.058788>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.153782, 27.802391, 33.240101> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118301, -0.923577, -0.364705,
		0.442388, -0.377842, 0.813344,
		-0.888987, -0.065122, 0.453279,
		45.887085, 27.782854, 33.376083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.538769, 27.247189, 33.429623>,  <46.509377, 27.828440, 33.058788>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.538769, 27.247189, 33.429623> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.140461, 27.275566, 33.406250>,  <45.901478, 27.292593, 33.392227>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.140461, 27.275566, 33.406250>,  <46.538769, 27.247189, 33.429623>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.140461, 27.275566, 33.406250> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034674, -0.878752, -0.476017,
		-0.085112, -0.471977, 0.877493,
		-0.995768, 0.070941, -0.058427,
		45.841732, 27.296848, 33.388721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.211937, 26.564594, 33.701900>,  <46.538769, 27.247189, 33.429623>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.211937, 26.564594, 33.701900> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.985409, 26.774899, 33.448017>,  <45.849491, 26.901081, 33.295685>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.985409, 26.774899, 33.448017>,  <46.211937, 26.564594, 33.701900>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.985409, 26.774899, 33.448017> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041491, -0.787317, -0.615150,
		-0.823140, -0.322038, 0.467689,
		-0.566321, 0.525760, -0.634710,
		45.815514, 26.932627, 33.257603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.668098, 26.136959, 33.508049>,  <46.211937, 26.564594, 33.701900>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.668098, 26.136959, 33.508049> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.668674, 26.406565, 33.212563>,  <45.669022, 26.568327, 33.035271>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.668674, 26.406565, 33.212563>,  <45.668098, 26.136959, 33.508049>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.668674, 26.406565, 33.212563> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168563, -0.727986, -0.664547,
		-0.985690, 0.125478, 0.112565,
		0.001440, 0.674012, -0.738719,
		45.669106, 26.608768, 32.990948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.108929, 25.877068, 32.970894>,  <45.668098, 26.136959, 33.508049>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.108929, 25.877068, 32.970894> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.323494, 26.145855, 32.766651>,  <45.452232, 26.307127, 32.644104>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.323494, 26.145855, 32.766651>,  <45.108929, 25.877068, 32.970894>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.323494, 26.145855, 32.766651> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049240, -0.579067, -0.813792,
		-0.842519, 0.461670, -0.277530,
		0.536412, 0.671969, -0.510608,
		45.484417, 26.347446, 32.613468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<38.227036, 35.259186, 44.151119> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.920010, 35.032043, 44.270042>,  <37.735794, 34.895760, 44.341396>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.920010, 35.032043, 44.270042>,  <38.227036, 35.259186, 44.151119>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.920010, 35.032043, 44.270042> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105093, -0.346065, -0.932306,
		0.632300, -0.746848, 0.205949,
		-0.767562, -0.567854, 0.297305,
		37.689739, 34.861687, 44.359234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.346786, 34.543209, 43.936523>,  <38.227036, 35.259186, 44.151119>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.346786, 34.543209, 43.936523> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.955265, 34.498810, 44.005371>,  <37.720352, 34.472172, 44.046680>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.955265, 34.498810, 44.005371>,  <38.346786, 34.543209, 43.936523>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.955265, 34.498810, 44.005371> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130406, -0.310236, -0.941673,
		0.157918, -0.944158, 0.289185,
		-0.978803, -0.110996, 0.172115,
		37.661625, 34.465511, 44.057007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.216404, 34.004894, 43.609077>,  <38.346786, 34.543209, 43.936523>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.216404, 34.004894, 43.609077> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.846039, 34.150898, 43.647964>,  <37.623821, 34.238499, 43.671299>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.846039, 34.150898, 43.647964>,  <38.216404, 34.004894, 43.609077>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.846039, 34.150898, 43.647964> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259462, -0.427519, -0.865972,
		-0.274525, -0.827040, 0.490552,
		-0.925913, 0.365010, 0.097221,
		37.568264, 34.260403, 43.677132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.769398, 33.482800, 43.444458>,  <38.216404, 34.004894, 43.609077>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.769398, 33.482800, 43.444458> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.564400, 33.819569, 43.376919>,  <37.441399, 34.021629, 43.336395>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.564400, 33.819569, 43.376919>,  <37.769398, 33.482800, 43.444458>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.564400, 33.819569, 43.376919> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284250, -0.351889, -0.891839,
		-0.810276, -0.409071, 0.419660,
		-0.512499, 0.841923, -0.168849,
		37.410648, 34.072147, 43.326263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.197624, 33.256573, 42.979305>,  <37.769398, 33.482800, 43.444458>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.197624, 33.256573, 42.979305> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.205612, 33.656139, 42.962471>,  <37.210407, 33.895878, 42.952370>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.205612, 33.656139, 42.962471>,  <37.197624, 33.256573, 42.979305>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.205612, 33.656139, 42.962471> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421675, -0.029755, -0.906259,
		-0.906527, 0.035848, 0.420623,
		0.019972, 0.998914, -0.042090,
		37.211605, 33.955814, 42.949844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.523426, 33.473831, 42.775620>,  <37.197624, 33.256573, 42.979305>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.523426, 33.473831, 42.775620> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.768616, 33.773731, 42.675911>,  <36.915730, 33.953671, 42.616085>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.768616, 33.773731, 42.675911>,  <36.523426, 33.473831, 42.775620>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.768616, 33.773731, 42.675911> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345362, -0.029508, -0.938006,
		-0.710626, 0.661063, 0.240847,
		0.612973, 0.749750, -0.249275,
		36.952507, 33.998657, 42.601128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.171463, 33.923759, 42.376434>,  <36.523426, 33.473831, 42.775620>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.171463, 33.923759, 42.376434> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.542549, 34.019722, 42.262039>,  <36.765202, 34.077297, 42.193401>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.542549, 34.019722, 42.262039>,  <36.171463, 33.923759, 42.376434>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.542549, 34.019722, 42.262039> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279573, -0.061105, -0.958178,
		-0.247344, 0.968872, 0.010382,
		0.927718, 0.239902, -0.285984,
		36.820866, 34.091694, 42.176243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.003670, 34.272346, 41.757710>,  <36.171463, 33.923759, 42.376434>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.003670, 34.272346, 41.757710> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.393536, 34.182934, 41.760818>,  <36.627457, 34.129284, 41.762684>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.393536, 34.182934, 41.760818>,  <36.003670, 34.272346, 41.757710>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.393536, 34.182934, 41.760818> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058564, -0.288587, -0.955661,
		0.215867, 0.930994, -0.294367,
		0.974665, -0.223535, 0.007773,
		36.685936, 34.115875, 41.763149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.219749, 34.530518, 41.256660>,  <36.003670, 34.272346, 41.757710>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.219749, 34.530518, 41.256660> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.513176, 34.264973, 41.314869>,  <36.689232, 34.105648, 41.349796>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.513176, 34.264973, 41.314869>,  <36.219749, 34.530518, 41.256660>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.513176, 34.264973, 41.314869> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105910, -0.323173, -0.940395,
		0.671319, 0.674426, -0.307377,
		0.733563, -0.663859, 0.145524,
		36.733246, 34.065815, 41.358524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.817322, 34.560204, 40.749500>,  <36.219749, 34.530518, 41.256660>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.817322, 34.560204, 40.749500> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.856876, 34.189583, 40.894680>,  <36.880608, 33.967213, 40.981789>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.856876, 34.189583, 40.894680>,  <36.817322, 34.560204, 40.749500>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.856876, 34.189583, 40.894680> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057823, -0.369466, -0.927443,
		0.993418, 0.070721, -0.090110,
		0.098882, -0.926549, 0.362945,
		36.886539, 33.911617, 41.003563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.255737, 34.154072, 40.252457>,  <36.817322, 34.560204, 40.749500>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.255737, 34.154072, 40.252457> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.108025, 33.865917, 40.487293>,  <37.019398, 33.693024, 40.628197>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.108025, 33.865917, 40.487293>,  <37.255737, 34.154072, 40.252457>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.108025, 33.865917, 40.487293> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007718, -0.634097, -0.773215,
		0.929287, -0.281000, 0.239717,
		-0.369277, -0.720388, 0.587090,
		36.997242, 33.649799, 40.663422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.602383, 33.511787, 39.927868>,  <37.255737, 34.154072, 40.252457>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.602383, 33.511787, 39.927868> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.285370, 33.422470, 40.154861>,  <37.095161, 33.368881, 40.291058>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.285370, 33.422470, 40.154861>,  <37.602383, 33.511787, 39.927868>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.285370, 33.422470, 40.154861> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326765, -0.630207, -0.704318,
		0.514901, -0.743626, 0.426494,
		-0.792529, -0.223290, 0.567485,
		37.047611, 33.355484, 40.325108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.674519, 32.864349, 39.762966>,  <37.602383, 33.511787, 39.927868>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.674519, 32.864349, 39.762966> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.328796, 32.946293, 39.946712>,  <37.121365, 32.995457, 40.056961>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.328796, 32.946293, 39.946712>,  <37.674519, 32.864349, 39.762966>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.328796, 32.946293, 39.946712> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475360, -0.631135, -0.612946,
		0.164354, -0.748133, 0.642872,
		-0.864304, 0.204855, 0.459362,
		37.069504, 33.007751, 40.084522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.090481, 32.398045, 39.354889>,  <37.674519, 32.864349, 39.762966>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.090481, 32.398045, 39.354889> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.135242, 32.694187, 39.089756>,  <38.162102, 32.871872, 38.930676>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.135242, 32.694187, 39.089756>,  <38.090481, 32.398045, 39.354889>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.135242, 32.694187, 39.089756> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.943112, 0.131020, 0.305572,
		0.313077, -0.659318, -0.683581,
		0.111907, 0.740361, -0.662830,
		38.168816, 32.916294, 38.890907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.737450, 32.590572, 38.939735>,  <38.090481, 32.398045, 39.354889>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.737450, 32.590572, 38.939735> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.571598, 32.941296, 39.037125>,  <38.472088, 33.151730, 39.095558>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.571598, 32.941296, 39.037125>,  <38.737450, 32.590572, 38.939735>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.571598, 32.941296, 39.037125> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.830745, 0.255525, 0.494540,
		0.371405, 0.407316, -0.834357,
		-0.414633, 0.876812, 0.243473,
		38.447208, 33.204338, 39.110165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.162991, 33.018475, 39.274971>,  <38.737450, 32.590572, 38.939735>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.162991, 33.018475, 39.274971> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.521580, 32.925625, 39.425945>,  <39.736732, 32.869915, 39.516529>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.521580, 32.925625, 39.425945>,  <39.162991, 33.018475, 39.274971>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.521580, 32.925625, 39.425945> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419485, -0.170244, 0.891655,
		-0.142700, -0.957677, -0.249984,
		0.896476, -0.232104, 0.377437,
		39.790524, 32.855988, 39.539173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.092918, 32.309620, 39.674698>,  <39.162991, 33.018475, 39.274971>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.092918, 32.309620, 39.674698> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.405811, 32.530159, 39.790718>,  <39.593548, 32.662483, 39.860329>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.405811, 32.530159, 39.790718>,  <39.092918, 32.309620, 39.674698>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.405811, 32.530159, 39.790718> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290722, -0.088710, 0.952686,
		0.550988, -0.829549, 0.090896,
		0.782236, 0.551344, 0.290046,
		39.640484, 32.695560, 39.877731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.222038, 31.951633, 40.289906>,  <39.092918, 32.309620, 39.674698>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.222038, 31.951633, 40.289906> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.460178, 32.266933, 40.352154>,  <39.603062, 32.456116, 40.389503>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.460178, 32.266933, 40.352154>,  <39.222038, 31.951633, 40.289906>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.460178, 32.266933, 40.352154> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195478, -0.045770, 0.979640,
		0.779325, -0.613649, 0.126837,
		0.595349, 0.788252, 0.155624,
		39.638783, 32.503410, 40.398842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.781689, 31.763000, 40.693581>,  <39.222038, 31.951633, 40.289906>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.781689, 31.763000, 40.693581> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.774647, 32.155647, 40.769600>,  <39.770420, 32.391235, 40.815212>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.774647, 32.155647, 40.769600>,  <39.781689, 31.763000, 40.693581>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.774647, 32.155647, 40.769600> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041814, -0.190636, 0.980770,
		0.998970, 0.009321, 0.044402,
		-0.017606, 0.981617, 0.190050,
		39.769363, 32.450130, 40.826614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.211414, 31.797901, 41.305649>,  <39.781689, 31.763000, 40.693581>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.211414, 31.797901, 41.305649> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.013176, 32.145100, 41.293190>,  <39.894234, 32.353416, 41.285717>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.013176, 32.145100, 41.293190>,  <40.211414, 31.797901, 41.305649>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.013176, 32.145100, 41.293190> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046359, 0.009371, 0.998881,
		0.867314, 0.496486, 0.035595,
		-0.495597, 0.867994, -0.031144,
		39.864498, 32.405499, 41.283848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.503799, 32.197754, 41.777382>,  <40.211414, 31.797901, 41.305649>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.503799, 32.197754, 41.777382> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.150856, 32.384270, 41.752018>,  <39.939091, 32.496181, 41.736801>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.150856, 32.384270, 41.752018>,  <40.503799, 32.197754, 41.777382>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.150856, 32.384270, 41.752018> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013725, 0.109191, 0.993926,
		0.470385, 0.877865, -0.089945,
		-0.882355, 0.466293, -0.063411,
		39.886150, 32.524158, 41.732994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.487408, 32.790531, 42.195457>,  <40.503799, 32.197754, 41.777382>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.487408, 32.790531, 42.195457> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.099361, 32.704330, 42.150837>,  <39.866535, 32.652611, 42.124065>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.099361, 32.704330, 42.150837>,  <40.487408, 32.790531, 42.195457>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.099361, 32.704330, 42.150837> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118645, 0.020247, 0.992730,
		-0.211673, 0.976294, -0.045210,
		-0.970112, -0.215498, -0.111547,
		39.808327, 32.639683, 42.117374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.161846, 33.195755, 42.785667>,  <40.487408, 32.790531, 42.195457>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.161846, 33.195755, 42.785667> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.899406, 32.921921, 42.658623>,  <39.741943, 32.757622, 42.582394>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.899406, 32.921921, 42.658623>,  <40.161846, 33.195755, 42.785667>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.899406, 32.921921, 42.658623> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343872, -0.103442, 0.933302,
		-0.671777, 0.721558, -0.167540,
		-0.656101, -0.684583, -0.317614,
		39.702576, 32.716545, 42.563339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.532681, 33.510780, 42.943954>,  <40.161846, 33.195755, 42.785667>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.532681, 33.510780, 42.943954> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.491585, 33.113949, 42.915062>,  <39.466927, 32.875851, 42.897728>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.491585, 33.113949, 42.915062>,  <39.532681, 33.510780, 42.943954>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.491585, 33.113949, 42.915062> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214383, -0.048823, 0.975529,
		-0.971332, 0.115708, -0.207669,
		-0.102738, -0.992083, -0.072230,
		39.460762, 32.816322, 42.893394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.946686, 33.363132, 43.235096>,  <39.532681, 33.510780, 42.943954>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.946686, 33.363132, 43.235096> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.117504, 33.002415, 43.261608>,  <39.219994, 32.785984, 43.277515>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.117504, 33.002415, 43.261608>,  <38.946686, 33.363132, 43.235096>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.117504, 33.002415, 43.261608> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202117, -0.023755, 0.979073,
		-0.881353, -0.431503, -0.192413,
		0.427044, -0.901799, 0.066278,
		39.245617, 32.731876, 43.281490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.559547, 32.998692, 43.801403>,  <38.946686, 33.363132, 43.235096>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.559547, 32.998692, 43.801403> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.912651, 32.818436, 43.748260>,  <39.124516, 32.710281, 43.716373>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.912651, 32.818436, 43.748260>,  <38.559547, 32.998692, 43.801403>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.912651, 32.818436, 43.748260> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069344, -0.154713, 0.985523,
		-0.464673, -0.879196, -0.105326,
		0.882763, -0.450641, -0.132858,
		39.177479, 32.683243, 43.708405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.501331, 32.343262, 44.172180>,  <38.559547, 32.998692, 43.801403>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.501331, 32.343262, 44.172180> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.893929, 32.405285, 44.127235>,  <39.129486, 32.442501, 44.100269>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.893929, 32.405285, 44.127235>,  <38.501331, 32.343262, 44.172180>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.893929, 32.405285, 44.127235> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146336, -0.228861, 0.962397,
		0.123513, -0.961030, -0.247317,
		0.981494, 0.155060, -0.112366,
		39.188377, 32.451801, 44.093525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.768227, 31.887197, 44.665840>,  <38.501331, 32.343262, 44.172180>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.768227, 31.887197, 44.665840> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.090469, 32.114288, 44.598095>,  <39.283813, 32.250542, 44.557449>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.090469, 32.114288, 44.598095>,  <38.768227, 31.887197, 44.665840>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.090469, 32.114288, 44.598095> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323534, -0.182104, 0.928528,
		0.496308, -0.802823, -0.330383,
		0.805608, 0.567726, -0.169361,
		39.332153, 32.284607, 44.547287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.568855, 31.139889, 44.799431>,  <38.768227, 31.887197, 44.665840>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.568855, 31.139889, 44.799431> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.213787, 31.124428, 44.982967>,  <38.000744, 31.115150, 45.093090>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.213787, 31.124428, 44.982967>,  <38.568855, 31.139889, 44.799431>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.213787, 31.124428, 44.982967> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452630, -0.109860, -0.884905,
		0.084613, -0.993195, 0.080025,
		-0.887675, -0.038653, 0.458845,
		37.947483, 31.112831, 45.120621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.202869, 30.517267, 44.549095>,  <38.568855, 31.139889, 44.799431>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.202869, 30.517267, 44.549095> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.909409, 30.736418, 44.709885>,  <37.733334, 30.867908, 44.806358>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.909409, 30.736418, 44.709885>,  <38.202869, 30.517267, 44.549095>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.909409, 30.736418, 44.709885> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543921, -0.118898, -0.830670,
		-0.407312, -0.828066, 0.385232,
		-0.733653, 0.547878, 0.401974,
		37.689312, 30.900782, 44.830475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.543285, 30.104553, 44.443687>,  <38.202869, 30.517267, 44.549095>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.543285, 30.104553, 44.443687> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.453114, 30.493620, 44.465965>,  <37.399010, 30.727060, 44.479332>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.453114, 30.493620, 44.465965>,  <37.543285, 30.104553, 44.443687>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.453114, 30.493620, 44.465965> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477749, -0.060539, -0.876408,
		-0.849080, -0.224180, 0.478338,
		-0.225431, 0.972666, 0.055699,
		37.385483, 30.785419, 44.482674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.832848, 30.166061, 44.211891>,  <37.543285, 30.104553, 44.443687>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.832848, 30.166061, 44.211891> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.966286, 30.542294, 44.186516>,  <37.046349, 30.768032, 44.171291>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.966286, 30.542294, 44.186516>,  <36.832848, 30.166061, 44.211891>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.966286, 30.542294, 44.186516> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317591, 0.048773, -0.946973,
		-0.887610, 0.336051, 0.314990,
		0.333594, 0.940580, -0.063435,
		37.066364, 30.824467, 44.167484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.266762, 30.676783, 43.996105>,  <36.832848, 30.166061, 44.211891>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.266762, 30.676783, 43.996105> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.636974, 30.779680, 43.884956>,  <36.859104, 30.841419, 43.818268>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.636974, 30.779680, 43.884956>,  <36.266762, 30.676783, 43.996105>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.636974, 30.779680, 43.884956> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327065, 0.173282, -0.928979,
		-0.190824, 0.950684, 0.244513,
		0.925535, 0.257243, -0.277869,
		36.914635, 30.856853, 43.801598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.143555, 31.239521, 43.533497>,  <36.266762, 30.676783, 43.996105>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.143555, 31.239521, 43.533497> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.510162, 31.110216, 43.439259>,  <36.730125, 31.032633, 43.382717>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.510162, 31.110216, 43.439259>,  <36.143555, 31.239521, 43.533497>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.510162, 31.110216, 43.439259> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221314, 0.080805, -0.971849,
		0.333198, 0.942853, 0.002517,
		0.916514, -0.323262, -0.235591,
		36.785118, 31.013237, 43.368580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.317699, 31.660572, 42.907154>,  <36.143555, 31.239521, 43.533497>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.317699, 31.660572, 42.907154> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.562222, 31.344917, 42.931061>,  <36.708935, 31.155523, 42.945404>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.562222, 31.344917, 42.931061>,  <36.317699, 31.660572, 42.907154>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.562222, 31.344917, 42.931061> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028697, -0.053364, -0.998163,
		0.790878, 0.611893, -0.009976,
		0.611301, -0.789138, 0.059764,
		36.745613, 31.108175, 42.948990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.605282, 31.749008, 42.306686>,  <36.317699, 31.660572, 42.907154>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.605282, 31.749008, 42.306686> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.710552, 31.381161, 42.423332>,  <36.773716, 31.160452, 42.493320>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.710552, 31.381161, 42.423332>,  <36.605282, 31.749008, 42.306686>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.710552, 31.381161, 42.423332> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190761, -0.246695, -0.950132,
		0.945699, 0.305682, 0.110503,
		0.263178, -0.919619, 0.291611,
		36.789505, 31.105274, 42.510815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.337357, 31.619720, 42.043320>,  <36.605282, 31.749008, 42.306686>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.337357, 31.619720, 42.043320> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.122787, 31.286135, 42.095097>,  <36.994045, 31.085983, 42.126163>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.122787, 31.286135, 42.095097>,  <37.337357, 31.619720, 42.043320>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.122787, 31.286135, 42.095097> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023625, -0.168150, -0.985478,
		0.843619, -0.525574, 0.109902,
		-0.536422, -0.833965, 0.129438,
		36.961861, 31.035946, 42.133926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.711700, 31.188978, 41.664700>,  <37.337357, 31.619720, 42.043320>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.711700, 31.188978, 41.664700> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.344765, 31.032850, 41.696041>,  <37.124603, 30.939173, 41.714844>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.344765, 31.032850, 41.696041>,  <37.711700, 31.188978, 41.664700>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.344765, 31.032850, 41.696041> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011560, -0.222838, -0.974787,
		0.397940, -0.893304, 0.208930,
		-0.917339, -0.390322, 0.078349,
		37.069565, 30.915754, 41.719547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.758144, 30.746778, 41.137768>,  <37.711700, 31.188978, 41.664700>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.758144, 30.746778, 41.137768> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.364319, 30.725323, 41.204414>,  <37.128025, 30.712450, 41.244404>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.364319, 30.725323, 41.204414>,  <37.758144, 30.746778, 41.137768>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.364319, 30.725323, 41.204414> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133769, -0.383362, -0.913860,
		0.112895, -0.922039, 0.370268,
		-0.984561, -0.053639, 0.166620,
		37.068951, 30.709230, 41.254402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.586723, 30.082417, 40.899303>,  <37.758144, 30.746778, 41.137768>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.586723, 30.082417, 40.899303> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.284908, 30.344872, 40.894264>,  <37.103821, 30.502344, 40.891239>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.284908, 30.344872, 40.894264>,  <37.586723, 30.082417, 40.899303>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.284908, 30.344872, 40.894264> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277712, -0.336635, -0.899752,
		-0.594602, -0.675396, 0.436221,
		-0.754536, 0.656138, -0.012598,
		37.058548, 30.541712, 40.890484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<38.269596, 30.496216, 49.099480> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.004532, 30.783709, 49.015289>,  <37.845493, 30.956203, 48.964775>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.004532, 30.783709, 49.015289>,  <38.269596, 30.496216, 49.099480>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.004532, 30.783709, 49.015289> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037024, -0.249258, -0.967729,
		-0.748001, -0.649072, 0.138564,
		-0.662664, 0.718732, -0.210476,
		37.805733, 30.999329, 48.952145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.748665, 30.176794, 48.595840>,  <38.269596, 30.496216, 49.099480>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.748665, 30.176794, 48.595840> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.689697, 30.568924, 48.543335>,  <37.654316, 30.804203, 48.511829>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.689697, 30.568924, 48.543335>,  <37.748665, 30.176794, 48.595840>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.689697, 30.568924, 48.543335> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102554, -0.147151, -0.983783,
		-0.983744, -0.131562, 0.122228,
		-0.147414, 0.980325, -0.131267,
		37.645473, 30.863022, 48.503956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.175190, 30.276468, 48.148827>,  <37.748665, 30.176794, 48.595840>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.175190, 30.276468, 48.148827> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.410549, 30.597448, 48.109116>,  <37.551765, 30.790037, 48.085289>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.410549, 30.597448, 48.109116>,  <37.175190, 30.276468, 48.148827>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.410549, 30.597448, 48.109116> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130829, -0.026675, -0.991046,
		-0.797915, 0.596120, 0.089289,
		0.588401, 0.802452, -0.099274,
		37.587070, 30.838184, 48.079334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.924324, 30.683725, 47.620220>,  <37.175190, 30.276468, 48.148827>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.924324, 30.683725, 47.620220> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.275730, 30.871796, 47.654026>,  <37.486572, 30.984638, 47.674309>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.275730, 30.871796, 47.654026>,  <36.924324, 30.683725, 47.620220>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.275730, 30.871796, 47.654026> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063096, 0.289562, -0.955077,
		-0.473526, 0.833719, 0.284052,
		0.878517, 0.470177, 0.084511,
		37.539284, 31.012848, 47.679379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.885506, 31.342234, 47.252655>,  <36.924324, 30.683725, 47.620220>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.885506, 31.342234, 47.252655> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.281326, 31.311874, 47.301682>,  <37.518818, 31.293659, 47.331097>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.281326, 31.311874, 47.301682>,  <36.885506, 31.342234, 47.252655>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.281326, 31.311874, 47.301682> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135192, 0.193284, -0.971784,
		0.050068, 0.978203, 0.201526,
		0.989554, -0.075899, 0.122568,
		37.578194, 31.289104, 47.338451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.197235, 31.894159, 46.814957>,  <36.885506, 31.342234, 47.252655>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.197235, 31.894159, 46.814957> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.476059, 31.610285, 46.855862>,  <37.643353, 31.439960, 46.880405>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.476059, 31.610285, 46.855862>,  <37.197235, 31.894159, 46.814957>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.476059, 31.610285, 46.855862> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219531, 0.075464, -0.972683,
		0.682580, 0.700467, 0.208400,
		0.697058, -0.709684, 0.102264,
		37.685177, 31.397379, 46.886539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.823132, 32.088058, 46.498486>,  <37.197235, 31.894159, 46.814957>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.823132, 32.088058, 46.498486> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.864944, 31.690262, 46.501503>,  <37.890034, 31.451584, 46.503315>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.864944, 31.690262, 46.501503>,  <37.823132, 32.088058, 46.498486>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.864944, 31.690262, 46.501503> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065278, -0.000712, -0.997867,
		0.992377, 0.104803, 0.064844,
		0.104533, -0.994493, 0.007548,
		37.896305, 31.391914, 46.503769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.166054, 31.991568, 45.957985>,  <37.823132, 32.088058, 46.498486>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.166054, 31.991568, 45.957985> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.048492, 31.614653, 46.022133>,  <37.977955, 31.388504, 46.060623>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.048492, 31.614653, 46.022133>,  <38.166054, 31.991568, 45.957985>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.048492, 31.614653, 46.022133> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007495, -0.170045, -0.985408,
		0.955807, -0.288410, 0.057038,
		-0.293900, -0.942287, 0.160369,
		37.960323, 31.331966, 46.070244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.578331, 31.612972, 45.422535>,  <38.166054, 31.991568, 45.957985>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.578331, 31.612972, 45.422535> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.249836, 31.401009, 45.507172>,  <38.052738, 31.273830, 45.557953>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.249836, 31.401009, 45.507172>,  <38.578331, 31.612972, 45.422535>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.249836, 31.401009, 45.507172> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139114, -0.173691, -0.974925,
		0.553373, -0.830077, 0.068924,
		-0.821234, -0.529909, 0.211591,
		38.003464, 31.242037, 45.570648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.268684, 31.513496, 45.080872>,  <38.578331, 31.612972, 45.422535>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.268684, 31.513496, 45.080872> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.356998, 31.898285, 45.016537>,  <39.409988, 32.129158, 44.977936>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.356998, 31.898285, 45.016537>,  <39.268684, 31.513496, 45.080872>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.356998, 31.898285, 45.016537> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314029, 0.086007, 0.945509,
		0.923385, -0.259260, -0.283098,
		0.220784, 0.961970, -0.160833,
		39.423233, 32.186874, 44.968288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.840992, 31.446148, 45.295280>,  <39.268684, 31.513496, 45.080872>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.840992, 31.446148, 45.295280> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.758678, 31.837587, 45.295719>,  <39.709290, 32.072449, 45.295982>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.758678, 31.837587, 45.295719>,  <39.840992, 31.446148, 45.295280>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.758678, 31.837587, 45.295719> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427407, 0.088871, 0.899681,
		0.880327, 0.185609, -0.436547,
		-0.205785, 0.978597, 0.001095,
		39.696941, 32.131165, 45.296047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.436886, 31.731316, 45.437908>,  <39.840992, 31.446148, 45.295280>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.436886, 31.731316, 45.437908> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.161438, 32.007145, 45.527611>,  <39.996170, 32.172642, 45.581432>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.161438, 32.007145, 45.527611>,  <40.436886, 31.731316, 45.437908>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.161438, 32.007145, 45.527611> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450192, 0.164119, 0.877720,
		0.568449, 0.705373, -0.423456,
		-0.688617, 0.689576, 0.224260,
		39.954853, 32.214016, 45.594891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.782314, 32.302769, 45.686302>,  <40.436886, 31.731316, 45.437908>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.782314, 32.302769, 45.686302> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.413940, 32.343685, 45.836727>,  <40.192917, 32.368237, 45.926983>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.413940, 32.343685, 45.836727>,  <40.782314, 32.302769, 45.686302>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.413940, 32.343685, 45.836727> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385035, 0.388087, 0.837339,
		-0.060289, 0.915928, -0.396788,
		-0.920931, 0.102295, 0.376062,
		40.137661, 32.374374, 45.949547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.818439, 32.877464, 45.991604>,  <40.782314, 32.302769, 45.686302>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.818439, 32.877464, 45.991604> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.510769, 32.695477, 46.171101>,  <40.326168, 32.586285, 46.278797>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.510769, 32.695477, 46.171101>,  <40.818439, 32.877464, 45.991604>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.510769, 32.695477, 46.171101> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324503, 0.326857, 0.887616,
		-0.550512, 0.828352, -0.103772,
		-0.769177, -0.454969, 0.448742,
		40.280014, 32.558987, 46.305721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.718204, 33.398643, 46.577110>,  <40.818439, 32.877464, 45.991604>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.718204, 33.398643, 46.577110> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.527069, 33.057831, 46.662624>,  <40.412388, 32.853344, 46.713932>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.527069, 33.057831, 46.662624>,  <40.718204, 33.398643, 46.577110>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.527069, 33.057831, 46.662624> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047833, 0.268247, 0.962162,
		-0.877143, 0.449535, -0.168935,
		-0.477842, -0.852034, 0.213788,
		40.383717, 32.802219, 46.726761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.039898, 33.623913, 46.818787>,  <40.718204, 33.398643, 46.577110>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.039898, 33.623913, 46.818787> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.104332, 33.261887, 46.976223>,  <40.142990, 33.044670, 47.070686>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.104332, 33.261887, 46.976223>,  <40.039898, 33.623913, 46.818787>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.104332, 33.261887, 46.976223> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095393, 0.382653, 0.918954,
		-0.982320, -0.185573, -0.024698,
		0.161083, -0.905063, 0.393590,
		40.152657, 32.990368, 47.094299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.602219, 33.495636, 47.271339>,  <40.039898, 33.623913, 46.818787>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.602219, 33.495636, 47.271339> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.847870, 33.211788, 47.409489>,  <39.995262, 33.041477, 47.492378>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.847870, 33.211788, 47.409489>,  <39.602219, 33.495636, 47.271339>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.847870, 33.211788, 47.409489> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113750, 0.353461, 0.928508,
		-0.780966, -0.609508, 0.136350,
		0.614127, -0.709623, 0.345373,
		40.032108, 32.998901, 47.513100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.285183, 33.048180, 47.858685>,  <39.602219, 33.495636, 47.271339>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.285183, 33.048180, 47.858685> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.683777, 33.039658, 47.891106>,  <39.922932, 33.034542, 47.910557>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.683777, 33.039658, 47.891106>,  <39.285183, 33.048180, 47.858685>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.683777, 33.039658, 47.891106> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075890, 0.180807, 0.980586,
		-0.035550, -0.983288, 0.178554,
		0.996482, -0.021309, 0.081049,
		39.982723, 33.033264, 47.915421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.381573, 32.708862, 48.451874>,  <39.285183, 33.048180, 47.858685>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.381573, 32.708862, 48.451874> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.730686, 32.900105, 48.412533>,  <39.940155, 33.014851, 48.388927>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.730686, 32.900105, 48.412533>,  <39.381573, 32.708862, 48.451874>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.730686, 32.900105, 48.412533> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007430, 0.214476, 0.976701,
		0.488057, -0.851714, 0.190743,
		0.872780, 0.478103, -0.098348,
		39.992519, 33.043537, 48.383030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.768822, 32.542789, 49.035625>,  <39.381573, 32.708862, 48.451874>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.768822, 32.542789, 49.035625> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.947895, 32.880505, 48.917809>,  <40.055340, 33.083134, 48.847118>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.947895, 32.880505, 48.917809>,  <39.768822, 32.542789, 49.035625>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.947895, 32.880505, 48.917809> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177113, 0.239149, 0.954693,
		0.876477, -0.479566, -0.042472,
		0.447681, 0.844289, -0.294546,
		40.082199, 33.133793, 48.829445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.306126, 32.664310, 49.519974>,  <39.768822, 32.542789, 49.035625>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.306126, 32.664310, 49.519974> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.326637, 33.029465, 49.357983>,  <40.338943, 33.248558, 49.260788>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.326637, 33.029465, 49.357983>,  <40.306126, 32.664310, 49.519974>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.326637, 33.029465, 49.357983> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037154, 0.403488, 0.914230,
		0.997993, -0.061931, -0.013226,
		0.051283, 0.912887, -0.404979,
		40.342022, 33.303329, 49.236488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.872459, 33.034901, 49.848873>,  <40.306126, 32.664310, 49.519974>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.872459, 33.034901, 49.848873> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.610401, 33.305412, 49.714153>,  <40.453167, 33.467720, 49.633320>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.610401, 33.305412, 49.714153>,  <40.872459, 33.034901, 49.848873>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.610401, 33.305412, 49.714153> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090877, 0.372019, 0.923766,
		0.750021, 0.635804, -0.182267,
		-0.655141, 0.676280, -0.336802,
		40.413860, 33.508297, 49.613113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.118916, 33.699429, 50.098938>,  <40.872459, 33.034901, 49.848873>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.118916, 33.699429, 50.098938> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.726810, 33.747768, 50.036346>,  <40.491547, 33.776772, 49.998791>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.726810, 33.747768, 50.036346>,  <41.118916, 33.699429, 50.098938>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.726810, 33.747768, 50.036346> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041495, 0.648054, 0.760463,
		0.193307, 0.751945, -0.630247,
		-0.980260, 0.120851, -0.156475,
		40.432732, 33.784023, 49.989403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<31.086184, 34.362835, 49.711960> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.450811, 34.230286, 49.809315>,  <31.669588, 34.150757, 49.867725>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.450811, 34.230286, 49.809315>,  <31.086184, 34.362835, 49.711960>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.450811, 34.230286, 49.809315> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248035, -0.028886, -0.968320,
		0.327904, 0.943058, 0.055860,
		0.911569, -0.331371, 0.243383,
		31.724281, 34.130875, 49.882328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.556448, 34.766476, 49.364319>,  <31.086184, 34.362835, 49.711960>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.556448, 34.766476, 49.364319> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.777695, 34.441113, 49.436359>,  <31.910442, 34.245895, 49.479584>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.777695, 34.441113, 49.436359>,  <31.556448, 34.766476, 49.364319>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.777695, 34.441113, 49.436359> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214155, -0.070093, -0.974282,
		0.805109, 0.577460, 0.135425,
		0.553116, -0.813405, 0.180099,
		31.943630, 34.197090, 49.490391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.257511, 34.832188, 48.960567>,  <31.556448, 34.766476, 49.364319>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.257511, 34.832188, 48.960567> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.181343, 34.444469, 49.022797>,  <32.135643, 34.211838, 49.060135>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.181343, 34.444469, 49.022797>,  <32.257511, 34.832188, 48.960567>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.181343, 34.444469, 49.022797> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394342, -0.220646, -0.892082,
		0.899019, -0.108522, 0.424250,
		-0.190420, -0.969298, 0.155570,
		32.124218, 34.153679, 49.069469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.817360, 34.517204, 48.713226>,  <32.257511, 34.832188, 48.960567>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.817360, 34.517204, 48.713226> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.553455, 34.218613, 48.747810>,  <32.395111, 34.039455, 48.768562>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.553455, 34.218613, 48.747810>,  <32.817360, 34.517204, 48.713226>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.553455, 34.218613, 48.747810> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299843, -0.367002, -0.880570,
		0.689061, -0.555044, 0.465963,
		-0.659765, -0.746482, 0.086460,
		32.355526, 33.994667, 48.773750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.156197, 33.818130, 48.512112>,  <32.817360, 34.517204, 48.713226>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.156197, 33.818130, 48.512112> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.762806, 33.757202, 48.472980>,  <32.526772, 33.720646, 48.449501>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.762806, 33.757202, 48.472980>,  <33.156197, 33.818130, 48.512112>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.762806, 33.757202, 48.472980> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117632, -0.126960, -0.984908,
		0.137607, -0.980142, 0.142781,
		-0.983477, -0.152326, -0.097826,
		32.467762, 33.711506, 48.443634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.175415, 33.332729, 47.907696>,  <33.156197, 33.818130, 48.512112>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.175415, 33.332729, 47.907696> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.791626, 33.443756, 47.927158>,  <32.561352, 33.510372, 47.938835>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.791626, 33.443756, 47.927158>,  <33.175415, 33.332729, 47.907696>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.791626, 33.443756, 47.927158> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126048, -0.268290, -0.955056,
		-0.252035, -0.922485, 0.292404,
		-0.959474, 0.277564, 0.048659,
		32.503784, 33.527023, 47.941757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.778484, 32.729950, 47.612835>,  <33.175415, 33.332729, 47.907696>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.778484, 32.729950, 47.612835> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.543427, 33.052189, 47.582687>,  <32.402393, 33.245533, 47.564598>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.543427, 33.052189, 47.582687>,  <32.778484, 32.729950, 47.612835>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.543427, 33.052189, 47.582687> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124735, -0.182233, -0.975311,
		-0.799447, -0.563735, 0.207575,
		-0.587644, 0.805601, -0.075368,
		32.367134, 33.293869, 47.560078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.256897, 32.557655, 47.233047>,  <32.778484, 32.729950, 47.612835>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.256897, 32.557655, 47.233047> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.208950, 32.954308, 47.213879>,  <32.180183, 33.192299, 47.202377>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.208950, 32.954308, 47.213879>,  <32.256897, 32.557655, 47.233047>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.208950, 32.954308, 47.213879> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129809, -0.063506, -0.989503,
		-0.984267, -0.112388, 0.136335,
		-0.119866, 0.991633, -0.047918,
		32.172989, 33.251797, 47.199505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.562115, 32.632221, 46.872505>,  <32.256897, 32.557655, 47.233047>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.562115, 32.632221, 46.872505> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.758663, 32.978714, 46.836281>,  <31.876593, 33.186607, 46.814545>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.758663, 32.978714, 46.836281>,  <31.562115, 32.632221, 46.872505>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.758663, 32.978714, 46.836281> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197489, 0.009541, -0.980259,
		-0.848264, 0.499557, 0.175759,
		0.491372, 0.866228, -0.090564,
		31.906075, 33.238583, 46.809113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.116631, 33.062344, 46.428104>,  <31.562115, 32.632221, 46.872505>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.116631, 33.062344, 46.428104> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.477831, 33.226826, 46.378300>,  <31.694551, 33.325516, 46.348415>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.477831, 33.226826, 46.378300>,  <31.116631, 33.062344, 46.428104>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.477831, 33.226826, 46.378300> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193317, 0.130059, -0.972478,
		-0.383693, 0.902217, 0.196936,
		0.903000, 0.411204, -0.124511,
		31.748732, 33.350185, 46.340946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.033785, 33.703381, 46.108536>,  <31.116631, 33.062344, 46.428104>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.033785, 33.703381, 46.108536> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.416452, 33.624031, 46.023277>,  <31.646053, 33.576420, 45.972122>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.416452, 33.624031, 46.023277>,  <31.033785, 33.703381, 46.108536>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.416452, 33.624031, 46.023277> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174059, 0.197219, -0.964784,
		0.233428, 0.960079, 0.154144,
		0.956669, -0.198377, -0.213146,
		31.703453, 33.564518, 45.959332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.227734, 34.158215, 45.583717>,  <31.033785, 33.703381, 46.108536>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.227734, 34.158215, 45.583717> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.502710, 33.870544, 45.543304>,  <31.667696, 33.697941, 45.519054>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.502710, 33.870544, 45.543304>,  <31.227734, 34.158215, 45.583717>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.502710, 33.870544, 45.543304> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031697, 0.109276, -0.993506,
		0.725546, 0.686182, 0.052325,
		0.687443, -0.719176, -0.101034,
		31.708942, 33.654793, 45.512993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.715919, 34.352840, 45.100857>,  <31.227734, 34.158215, 45.583717>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.715919, 34.352840, 45.100857> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.770002, 33.956528, 45.097504>,  <31.802452, 33.718739, 45.095490>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.770002, 33.956528, 45.097504>,  <31.715919, 34.352840, 45.100857>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.770002, 33.956528, 45.097504> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132964, -0.009756, -0.991073,
		0.981855, 0.135114, -0.133057,
		0.135206, -0.990782, -0.008386,
		31.810564, 33.659294, 45.094990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.249146, 34.111732, 44.602543>,  <31.715919, 34.352840, 45.100857>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.249146, 34.111732, 44.602543> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.058315, 33.762646, 44.644047>,  <31.943817, 33.553192, 44.668949>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.058315, 33.762646, 44.644047>,  <32.249146, 34.111732, 44.602543>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.058315, 33.762646, 44.644047> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103019, -0.061713, -0.992763,
		0.872805, -0.484310, -0.060465,
		-0.477073, -0.872717, 0.103756,
		31.915194, 33.500832, 44.675175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.847569, 34.152054, 45.084259>,  <32.249146, 34.111732, 44.602543>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.847569, 34.152054, 45.084259> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.142498, 34.378994, 44.937576>,  <33.319454, 34.515156, 44.849567>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.142498, 34.378994, 44.937576>,  <32.847569, 34.152054, 45.084259>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.142498, 34.378994, 44.937576> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066531, 0.479211, 0.875175,
		0.672258, -0.669683, 0.315586,
		0.737321, 0.567346, -0.366708,
		33.363693, 34.549198, 44.827564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.353882, 34.139282, 45.569019>,  <32.847569, 34.152054, 45.084259>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.353882, 34.139282, 45.569019> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.430820, 34.457424, 45.339092>,  <33.476982, 34.648308, 45.201138>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.430820, 34.457424, 45.339092>,  <33.353882, 34.139282, 45.569019>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.430820, 34.457424, 45.339092> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150093, 0.555020, 0.818184,
		0.969781, -0.243648, -0.012623,
		0.192343, 0.795354, -0.574818,
		33.488525, 34.696030, 45.166645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.987785, 34.399357, 45.799797>,  <33.353882, 34.139282, 45.569019>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.987785, 34.399357, 45.799797> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.808258, 34.714245, 45.630634>,  <33.700542, 34.903175, 45.529137>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.808258, 34.714245, 45.630634>,  <33.987785, 34.399357, 45.799797>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.808258, 34.714245, 45.630634> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145261, 0.531228, 0.834683,
		0.881737, 0.313190, -0.352777,
		-0.448820, 0.787216, -0.422909,
		33.673611, 34.950409, 45.503761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.442978, 34.988228, 45.842957>,  <33.987785, 34.399357, 45.799797>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.442978, 34.988228, 45.842957> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.060684, 35.104351, 45.823814>,  <33.831306, 35.174026, 45.812328>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.060684, 35.104351, 45.823814>,  <34.442978, 34.988228, 45.842957>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.060684, 35.104351, 45.823814> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131835, 0.567958, 0.812431,
		0.263036, 0.770160, -0.581090,
		-0.955736, 0.290307, -0.047859,
		33.773964, 35.191444, 45.809456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.430042, 35.809654, 45.924797>,  <34.442978, 34.988228, 45.842957>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.430042, 35.809654, 45.924797> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.057384, 35.694370, 46.013325>,  <33.833790, 35.625198, 46.066441>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.057384, 35.694370, 46.013325>,  <34.430042, 35.809654, 45.924797>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.057384, 35.694370, 46.013325> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104003, 0.372088, 0.922352,
		-0.348180, 0.882318, -0.316678,
		-0.931641, -0.288209, 0.221317,
		33.777893, 35.607906, 46.079720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.046799, 36.362240, 46.045654>,  <34.430042, 35.809654, 45.924797>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.046799, 36.362240, 46.045654> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.838017, 36.068996, 46.220062>,  <33.712746, 35.893051, 46.324707>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.838017, 36.068996, 46.220062>,  <34.046799, 36.362240, 46.045654>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.838017, 36.068996, 46.220062> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210025, 0.384978, 0.898711,
		-0.826712, 0.560661, -0.046969,
		-0.521954, -0.733111, 0.436019,
		33.681431, 35.849064, 46.350868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.730610, 36.691402, 46.560783>,  <34.046799, 36.362240, 46.045654>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.730610, 36.691402, 46.560783> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.670345, 36.326859, 46.714001>,  <33.634186, 36.108131, 46.805931>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.670345, 36.326859, 46.714001>,  <33.730610, 36.691402, 46.560783>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.670345, 36.326859, 46.714001> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035439, 0.382237, 0.923385,
		-0.987951, 0.152690, -0.025289,
		-0.150658, -0.911362, 0.383042,
		33.625149, 36.053452, 46.828915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.419762, 36.858093, 47.154373>,  <33.730610, 36.691402, 46.560783>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.419762, 36.858093, 47.154373> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.524387, 36.481052, 47.237408>,  <33.587162, 36.254829, 47.287228>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.524387, 36.481052, 47.237408>,  <33.419762, 36.858093, 47.154373>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.524387, 36.481052, 47.237408> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215674, 0.266716, 0.939333,
		-0.940781, -0.200924, 0.273058,
		0.261564, -0.942599, 0.207587,
		33.602856, 36.198273, 47.299683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.022377, 36.666363, 47.779331>,  <33.419762, 36.858093, 47.154373>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.022377, 36.666363, 47.779331> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.359554, 36.451260, 47.772709>,  <33.561859, 36.322197, 47.768738>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.359554, 36.451260, 47.772709>,  <33.022377, 36.666363, 47.779331>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.359554, 36.451260, 47.772709> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120980, 0.159482, 0.979760,
		-0.524232, -0.827879, 0.199491,
		0.842938, -0.537756, -0.016551,
		33.612434, 36.289932, 47.767742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.015903, 36.006927, 48.282223>,  <33.022377, 36.666363, 47.779331>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.015903, 36.006927, 48.282223> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.405262, 36.090809, 48.245296>,  <33.638878, 36.141140, 48.223141>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.405262, 36.090809, 48.245296>,  <33.015903, 36.006927, 48.282223>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.405262, 36.090809, 48.245296> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094752, -0.001598, 0.995500,
		0.208615, -0.977763, -0.021426,
		0.973397, 0.209706, -0.092312,
		33.697281, 36.153721, 48.217602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.314213, 35.474583, 48.711372>,  <33.015903, 36.006927, 48.282223>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.314213, 35.474583, 48.711372> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.566315, 35.784058, 48.685509>,  <33.717575, 35.969742, 48.669991>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.566315, 35.784058, 48.685509>,  <33.314213, 35.474583, 48.711372>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.566315, 35.784058, 48.685509> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226645, -0.103685, 0.968443,
		0.742572, -0.625020, -0.240701,
		0.630254, 0.773692, -0.064664,
		33.755390, 36.016167, 48.666111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.817902, 35.244305, 49.051575>,  <33.314213, 35.474583, 48.711372>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.817902, 35.244305, 49.051575> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.900631, 35.635319, 49.035309>,  <33.950268, 35.869926, 49.025547>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.900631, 35.635319, 49.035309>,  <33.817902, 35.244305, 49.051575>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.900631, 35.635319, 49.035309> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378870, -0.041697, 0.924510,
		0.902043, -0.206617, -0.378982,
		0.206822, 0.977533, -0.040669,
		33.962677, 35.928577, 49.023109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.451305, 35.274265, 49.276237>,  <33.817902, 35.244305, 49.051575>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.451305, 35.274265, 49.276237> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.275524, 35.628670, 49.335392>,  <34.170055, 35.841312, 49.370884>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.275524, 35.628670, 49.335392>,  <34.451305, 35.274265, 49.276237>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.275524, 35.628670, 49.335392> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256257, -0.034141, 0.966006,
		0.860936, 0.462414, -0.212042,
		-0.439455, 0.886007, 0.147890,
		34.143688, 35.894470, 49.379761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.884869, 35.645222, 49.690002>,  <34.451305, 35.274265, 49.276237>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.884869, 35.645222, 49.690002> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.530746, 35.820198, 49.753090>,  <34.318272, 35.925182, 49.790943>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.530746, 35.820198, 49.753090>,  <34.884869, 35.645222, 49.690002>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.530746, 35.820198, 49.753090> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165924, -0.019687, 0.985942,
		0.434397, 0.899031, -0.055152,
		-0.885307, 0.437441, 0.157723,
		34.265156, 35.951431, 49.800407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.526077, 36.065334, 49.599556>,  <34.884869, 35.645222, 49.690002>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.526077, 36.065334, 49.599556> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.923805, 36.086601, 49.636425>,  <36.162441, 36.099361, 49.658546>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.923805, 36.086601, 49.636425>,  <35.526077, 36.065334, 49.599556>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.923805, 36.086601, 49.636425> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077002, 0.238298, -0.968135,
		-0.073434, 0.969736, 0.232851,
		0.994323, 0.053164, 0.092171,
		36.222103, 36.102551, 49.664078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.690933, 36.570690, 49.212700>,  <35.526077, 36.065334, 49.599556>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.690933, 36.570690, 49.212700> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.023693, 36.356895, 49.272388>,  <36.223347, 36.228619, 49.308201>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.023693, 36.356895, 49.272388>,  <35.690933, 36.570690, 49.212700>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.023693, 36.356895, 49.272388> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305196, 0.216085, -0.927449,
		0.463467, 0.817085, 0.342885,
		0.831897, -0.534489, 0.149223,
		36.273262, 36.196548, 49.317154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.265892, 36.989670, 48.958981>,  <35.690933, 36.570690, 49.212700>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.265892, 36.989670, 48.958981> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.395596, 36.611515, 48.972214>,  <36.473415, 36.384621, 48.980152>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.395596, 36.611515, 48.972214>,  <36.265892, 36.989670, 48.958981>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.395596, 36.611515, 48.972214> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229394, 0.044655, -0.972309,
		0.917735, 0.322865, 0.231347,
		0.324255, -0.945391, 0.033082,
		36.492870, 36.327896, 48.982140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.830154, 37.008072, 48.504169>,  <36.265892, 36.989670, 48.958981>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.830154, 37.008072, 48.504169> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.750217, 36.616287, 48.514954>,  <36.702255, 36.381218, 48.521423>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.750217, 36.616287, 48.514954>,  <36.830154, 37.008072, 48.504169>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.750217, 36.616287, 48.514954> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127590, -0.053291, -0.990394,
		0.971486, -0.194479, 0.135619,
		-0.199838, -0.979458, 0.026958,
		36.690266, 36.322449, 48.523041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.356934, 36.750446, 48.214035>,  <36.830154, 37.008072, 48.504169>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.356934, 36.750446, 48.214035> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.056408, 36.488655, 48.180130>,  <36.876091, 36.331581, 48.159786>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.056408, 36.488655, 48.180130>,  <37.356934, 36.750446, 48.214035>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.056408, 36.488655, 48.180130> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174702, -0.073390, -0.981883,
		0.636400, -0.752511, 0.169478,
		-0.751315, -0.654478, -0.084760,
		36.831013, 36.292313, 48.154701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.611542, 36.252602, 47.725029>,  <37.356934, 36.750446, 48.214035>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.611542, 36.252602, 47.725029> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.218834, 36.176773, 47.719543>,  <36.983208, 36.131275, 47.716251>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.218834, 36.176773, 47.719543>,  <37.611542, 36.252602, 47.725029>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.218834, 36.176773, 47.719543> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111150, -0.514112, -0.850491,
		0.154177, -0.836512, 0.525812,
		-0.981772, -0.189570, -0.013714,
		36.924301, 36.119904, 47.715427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.594936, 35.556786, 47.695835>,  <37.611542, 36.252602, 47.725029>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.594936, 35.556786, 47.695835> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.247066, 35.699936, 47.559834>,  <37.038345, 35.785824, 47.478233>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.247066, 35.699936, 47.559834>,  <37.594936, 35.556786, 47.695835>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.247066, 35.699936, 47.559834> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011166, -0.674332, -0.738344,
		-0.493506, -0.645913, 0.582451,
		-0.869671, 0.357873, -0.339999,
		36.986164, 35.807297, 47.457832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.311024, 35.012955, 47.436256>,  <37.594936, 35.556786, 47.695835>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.311024, 35.012955, 47.436256> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.110958, 35.299995, 47.242397>,  <36.990917, 35.472221, 47.126083>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.110958, 35.299995, 47.242397>,  <37.311024, 35.012955, 47.436256>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.110958, 35.299995, 47.242397> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081017, -0.518448, -0.851262,
		-0.862133, -0.465034, 0.201170,
		-0.500163, 0.717603, -0.484647,
		36.960911, 35.515278, 47.097004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.843765, 34.613693, 47.017651>,  <37.311024, 35.012955, 47.436256>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.843765, 34.613693, 47.017651> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.924034, 34.978630, 46.874893>,  <36.972195, 35.197590, 46.789238>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.924034, 34.978630, 46.874893>,  <36.843765, 34.613693, 47.017651>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.924034, 34.978630, 46.874893> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095162, -0.380730, -0.919776,
		-0.975026, 0.150612, -0.163222,
		0.200672, 0.912338, -0.356889,
		36.984238, 35.252331, 46.767826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.505962, 34.778095, 46.440639>,  <36.843765, 34.613693, 47.017651>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.505962, 34.778095, 46.440639> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.804657, 35.037163, 46.380089>,  <36.983871, 35.192604, 46.343758>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.804657, 35.037163, 46.380089>,  <36.505962, 34.778095, 46.440639>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.804657, 35.037163, 46.380089> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065705, -0.298318, -0.952202,
		-0.661869, 0.701096, -0.265319,
		0.746735, 0.647666, -0.151381,
		37.028679, 35.231464, 46.334675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.309498, 35.164860, 45.837173>,  <36.505962, 34.778095, 46.440639>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.309498, 35.164860, 45.837173> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.708107, 35.189762, 45.859344>,  <36.947273, 35.204704, 45.872646>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.708107, 35.189762, 45.859344>,  <36.309498, 35.164860, 45.837173>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.708107, 35.189762, 45.859344> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063795, -0.141605, -0.987865,
		-0.053651, 0.987964, -0.145084,
		0.996520, 0.062256, 0.055430,
		37.007065, 35.208439, 45.875973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.561260, 35.679527, 45.304512>,  <36.309498, 35.164860, 45.837173>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.561260, 35.679527, 45.304512> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.886017, 35.457645, 45.377316>,  <37.080872, 35.324516, 45.420998>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.886017, 35.457645, 45.377316>,  <36.561260, 35.679527, 45.304512>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.886017, 35.457645, 45.377316> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165509, -0.080276, -0.982936,
		0.559854, 0.828163, 0.026634,
		0.811893, -0.554708, 0.182011,
		37.129585, 35.291233, 45.431919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.887093, 35.748184, 44.709251>,  <36.561260, 35.679527, 45.304512>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.887093, 35.748184, 44.709251> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.082783, 35.447803, 44.886669>,  <37.200199, 35.267574, 44.993118>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.082783, 35.447803, 44.886669>,  <36.887093, 35.748184, 44.709251>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.082783, 35.447803, 44.886669> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433790, -0.231676, -0.870720,
		0.756625, 0.618385, 0.212412,
		0.489230, -0.750950, 0.443541,
		37.229553, 35.222519, 45.019730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.519859, 35.834408, 44.445816>,  <36.887093, 35.748184, 44.709251>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.519859, 35.834408, 44.445816> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.482841, 35.454109, 44.564144>,  <37.460629, 35.225929, 44.635143>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.482841, 35.454109, 44.564144>,  <37.519859, 35.834408, 44.445816>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.482841, 35.454109, 44.564144> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187670, -0.308431, -0.932550,
		0.977862, -0.030789, 0.206972,
		-0.092548, -0.950748, 0.295825,
		37.455078, 35.168884, 44.652893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<30.987785, 32.319885, 29.831766> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.906179, 32.016850, 29.583754>,  <30.857216, 31.835028, 29.434946>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.906179, 32.016850, 29.583754>,  <30.987785, 32.319885, 29.831766>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.906179, 32.016850, 29.583754> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.893773, -0.114280, 0.433717,
		-0.399436, 0.642652, -0.653796,
		-0.204014, -0.757587, -0.620032,
		30.844975, 31.789574, 29.397743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.481220, 32.480015, 29.229145>,  <30.987785, 32.319885, 29.831766>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.481220, 32.480015, 29.229145> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.502798, 32.112312, 29.385122>,  <30.515745, 31.891691, 29.478708>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.502798, 32.112312, 29.385122>,  <30.481220, 32.480015, 29.229145>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.502798, 32.112312, 29.385122> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.967580, 0.048373, 0.247891,
		-0.246738, -0.390673, -0.886846,
		0.053945, -0.919258, 0.389943,
		30.518982, 31.836535, 29.502106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.927633, 32.010048, 28.942942>,  <30.481220, 32.480015, 29.229145>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.927633, 32.010048, 28.942942> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.032888, 31.888397, 29.309170>,  <30.096041, 31.815407, 29.528906>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.032888, 31.888397, 29.309170>,  <29.927633, 32.010048, 28.942942>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.032888, 31.888397, 29.309170> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.960570, 0.005744, 0.277979,
		-0.089801, -0.952614, -0.290625,
		0.263137, -0.304128, 0.915568,
		30.111830, 31.797159, 29.583839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.213732, 31.927723, 29.160889>,  <29.927633, 32.010048, 28.942942>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.213732, 31.927723, 29.160889> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.419994, 31.839188, 29.491974>,  <29.543753, 31.786066, 29.690624>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.419994, 31.839188, 29.491974>,  <29.213732, 31.927723, 29.160889>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.419994, 31.839188, 29.491974> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.821577, 0.146387, 0.550982,
		-0.243119, -0.964148, -0.106360,
		0.515659, -0.221337, 0.827711,
		29.574692, 31.772787, 29.740288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.856256, 31.423838, 29.662495>,  <29.213732, 31.927723, 29.160889>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.856256, 31.423838, 29.662495> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.120655, 31.629881, 29.880760>,  <29.279295, 31.753506, 30.011721>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.120655, 31.629881, 29.880760>,  <28.856256, 31.423838, 29.662495>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.120655, 31.629881, 29.880760> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.667879, 0.072347, 0.740745,
		0.342086, -0.854068, 0.391850,
		0.660995, 0.515106, 0.545665,
		29.318954, 31.784412, 30.044460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.702229, 31.173706, 30.311285>,  <28.856256, 31.423838, 29.662495>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.702229, 31.173706, 30.311285> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.900967, 31.511103, 30.392935>,  <29.020208, 31.713541, 30.441925>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.900967, 31.511103, 30.392935>,  <28.702229, 31.173706, 30.311285>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.900967, 31.511103, 30.392935> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.574498, 0.143383, 0.805850,
		0.650460, -0.517650, 0.555823,
		0.496844, 0.843493, 0.204124,
		29.050020, 31.764151, 30.454172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.656660, 31.232450, 30.937338>,  <28.702229, 31.173706, 30.311285>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.656660, 31.232450, 30.937338> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.732512, 31.620171, 30.874733>,  <28.778023, 31.852802, 30.837170>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.732512, 31.620171, 30.874733>,  <28.656660, 31.232450, 30.937338>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.732512, 31.620171, 30.874733> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437829, 0.226158, 0.870148,
		0.878833, -0.096478, 0.467274,
		0.189628, 0.969301, -0.156515,
		28.789400, 31.910961, 30.827778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.855736, 31.514034, 31.603617>,  <28.656660, 31.232450, 30.937338>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.855736, 31.514034, 31.603617> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.765980, 31.840689, 31.390919>,  <28.712126, 32.036682, 31.263300>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.765980, 31.840689, 31.390919>,  <28.855736, 31.514034, 31.603617>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.765980, 31.840689, 31.390919> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366300, 0.434965, 0.822575,
		0.903035, 0.379358, 0.201531,
		-0.224391, 0.816636, -0.531747,
		28.698662, 32.085678, 31.231394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.053028, 32.146503, 32.021530>,  <28.855736, 31.514034, 31.603617>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.053028, 32.146503, 32.021530> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.760139, 32.246761, 31.768221>,  <28.584406, 32.306915, 31.616236>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.760139, 32.246761, 31.768221>,  <29.053028, 32.146503, 32.021530>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.760139, 32.246761, 31.768221> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419325, 0.566780, 0.709174,
		0.536674, 0.784818, -0.309908,
		-0.732221, 0.250643, -0.633269,
		28.540474, 32.321953, 31.578239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.930250, 32.871490, 32.221622>,  <29.053028, 32.146503, 32.021530>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.930250, 32.871490, 32.221622> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.592525, 32.768368, 32.033718>,  <28.389891, 32.706493, 31.920975>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.592525, 32.768368, 32.033718>,  <28.930250, 32.871490, 32.221622>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.592525, 32.768368, 32.033718> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535768, 0.421910, 0.731399,
		0.009641, 0.869212, -0.494346,
		-0.844310, -0.257803, -0.469763,
		28.339231, 32.691029, 31.892790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.492521, 33.343777, 32.466156>,  <28.930250, 32.871490, 32.221622>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.492521, 33.343777, 32.466156> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.240990, 33.078259, 32.304195>,  <28.090071, 32.918945, 32.207020>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.240990, 33.078259, 32.304195>,  <28.492521, 33.343777, 32.466156>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.240990, 33.078259, 32.304195> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.683791, 0.224220, 0.694374,
		-0.370137, 0.713511, -0.594895,
		-0.628831, -0.663798, -0.404900,
		28.052340, 32.879120, 32.182724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.808565, 33.646229, 32.313915>,  <28.492521, 33.343777, 32.466156>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.808565, 33.646229, 32.313915> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.747700, 33.252712, 32.351875>,  <27.711182, 33.016602, 32.374653>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.747700, 33.252712, 32.351875>,  <27.808565, 33.646229, 32.313915>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.747700, 33.252712, 32.351875> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.685902, 0.174245, 0.706525,
		-0.711608, 0.042411, -0.701296,
		-0.152162, -0.983789, 0.094904,
		27.702051, 32.957577, 32.380348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.103979, 33.560192, 32.445332>,  <27.808565, 33.646229, 32.313915>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.103979, 33.560192, 32.445332> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.273876, 33.227711, 32.588829>,  <27.375814, 33.028221, 32.674927>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.273876, 33.227711, 32.588829>,  <27.103979, 33.560192, 32.445332>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.273876, 33.227711, 32.588829> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.791025, -0.148013, 0.593609,
		-0.440313, -0.535903, -0.720370,
		0.424741, -0.831204, 0.358740,
		27.401299, 32.978348, 32.696453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.546001, 33.065186, 32.536972>,  <27.103979, 33.560192, 32.445332>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.546001, 33.065186, 32.536972> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.836941, 32.909065, 32.762760>,  <27.011505, 32.815395, 32.898235>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.836941, 32.909065, 32.762760>,  <26.546001, 33.065186, 32.536972>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.836941, 32.909065, 32.762760> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.661843, -0.181455, 0.727350,
		-0.181455, -0.902631, -0.390296,
		-0.727350, 0.390296, -0.564474,
		27.055145, 32.791977, 32.932102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.168739, 32.562809, 32.924240>,  <26.546001, 33.065186, 32.536972>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.168739, 32.562809, 32.924240> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.505348, 32.603607, 33.136444>,  <26.707314, 32.628086, 33.263767>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.505348, 32.603607, 33.136444>,  <26.168739, 32.562809, 32.924240>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.505348, 32.603607, 33.136444> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508887, -0.179949, 0.841815,
		0.181324, -0.978374, -0.099528,
		0.841520, 0.101993, 0.530511,
		26.757805, 32.634205, 33.295597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.112579, 32.095070, 33.435997>,  <26.168739, 32.562809, 32.924240>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.112579, 32.095070, 33.435997> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.380013, 32.360317, 33.570618>,  <26.540472, 32.519466, 33.651390>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.380013, 32.360317, 33.570618>,  <26.112579, 32.095070, 33.435997>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.380013, 32.360317, 33.570618> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376241, -0.088738, 0.922263,
		0.641438, -0.743233, 0.190165,
		0.668581, 0.663122, 0.336554,
		26.580587, 32.559254, 33.671585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.358900, 31.803585, 34.076202>,  <26.112579, 32.095070, 33.435997>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.358900, 31.803585, 34.076202> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.425068, 32.197445, 34.098492>,  <26.464767, 32.433762, 34.111866>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.425068, 32.197445, 34.098492>,  <26.358900, 31.803585, 34.076202>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.425068, 32.197445, 34.098492> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290895, -0.005278, 0.956740,
		0.942346, -0.174473, 0.285556,
		0.165418, 0.984648, 0.055727,
		26.474693, 32.492840, 34.115211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.531689, 31.961542, 34.786129>,  <26.358900, 31.803585, 34.076202>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.531689, 31.961542, 34.786129> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.456369, 32.320217, 34.625881>,  <26.411177, 32.535423, 34.529732>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.456369, 32.320217, 34.625881>,  <26.531689, 31.961542, 34.786129>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.456369, 32.320217, 34.625881> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551698, 0.240899, 0.798496,
		0.812510, 0.371379, 0.449339,
		-0.188300, 0.896685, -0.400623,
		26.399879, 32.589222, 34.505695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.695360, 32.494911, 35.334942>,  <26.531689, 31.961542, 34.786129>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.695360, 32.494911, 35.334942> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.455906, 32.686340, 35.078003>,  <26.312233, 32.801197, 34.923840>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.455906, 32.686340, 35.078003>,  <26.695360, 32.494911, 35.334942>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.455906, 32.686340, 35.078003> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.572723, 0.304919, 0.760929,
		0.560020, 0.823405, 0.091552,
		-0.598637, 0.478570, -0.642344,
		26.276316, 32.829910, 34.885300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.381876, 32.011906, 35.831299>,  <26.695360, 32.494911, 35.334942>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.381876, 32.011906, 35.831299> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.986292, 31.989500, 35.776424>,  <25.748941, 31.976057, 35.743500>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.986292, 31.989500, 35.776424>,  <26.381876, 32.011906, 35.831299>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.986292, 31.989500, 35.776424> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134002, -0.057111, 0.989334,
		-0.063252, 0.996795, 0.048974,
		-0.988960, -0.056015, -0.137185,
		25.689604, 31.972696, 35.735268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.699556, 31.804293, 36.458679>,  <26.381876, 32.011906, 35.831299>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.699556, 31.804293, 36.458679> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.053822, 31.723396, 36.625866>,  <27.266380, 31.674858, 36.726177>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.053822, 31.723396, 36.625866>,  <26.699556, 31.804293, 36.458679>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.053822, 31.723396, 36.625866> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364267, -0.255586, -0.895536,
		0.287943, 0.945396, -0.152692,
		0.885663, -0.202242, 0.417971,
		27.319521, 31.662724, 36.751259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.140169, 31.995323, 35.908794>,  <26.699556, 31.804293, 36.458679>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.140169, 31.995323, 35.908794> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.382137, 31.797932, 36.158768>,  <27.527319, 31.679497, 36.308754>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.382137, 31.797932, 36.158768>,  <27.140169, 31.995323, 35.908794>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.382137, 31.797932, 36.158768> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602467, -0.229538, -0.764425,
		0.520676, 0.838921, 0.158454,
		0.604921, -0.493481, 0.624937,
		27.563614, 31.649887, 36.346249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.940649, 32.141285, 35.729694>,  <27.140169, 31.995323, 35.908794>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.940649, 32.141285, 35.729694> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.946573, 31.800581, 35.939186>,  <27.950129, 31.596159, 36.064880>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.946573, 31.800581, 35.939186>,  <27.940649, 32.141285, 35.729694>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.946573, 31.800581, 35.939186> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603733, -0.409910, -0.683725,
		0.797049, 0.326319, 0.508162,
		0.014812, -0.851757, 0.523728,
		27.951017, 31.545053, 36.096306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.661512, 31.875647, 35.852650>,  <27.940649, 32.141285, 35.729694>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.661512, 31.875647, 35.852650> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.430197, 31.549652, 35.867504>,  <28.291409, 31.354055, 35.876419>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.430197, 31.549652, 35.867504>,  <28.661512, 31.875647, 35.852650>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.430197, 31.549652, 35.867504> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564286, -0.432446, -0.703257,
		0.589208, -0.385727, 0.709964,
		-0.578287, -0.814988, 0.037140,
		28.256710, 31.305157, 35.878647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.104822, 31.307886, 35.826359>,  <28.661512, 31.875647, 35.852650>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.104822, 31.307886, 35.826359> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.743187, 31.163761, 35.734440>,  <28.526207, 31.077286, 35.679291>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.743187, 31.163761, 35.734440>,  <29.104822, 31.307886, 35.826359>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.743187, 31.163761, 35.734440> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424819, -0.699302, -0.574896,
		0.046446, -0.617376, 0.785296,
		-0.904086, -0.360311, -0.229793,
		28.471962, 31.055668, 35.665501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.104086, 30.493860, 35.936974>,  <29.104822, 31.307886, 35.826359>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.104086, 30.493860, 35.936974> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.822138, 30.616129, 35.680935>,  <28.652969, 30.689489, 35.527313>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.822138, 30.616129, 35.680935>,  <29.104086, 30.493860, 35.936974>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.822138, 30.616129, 35.680935> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343863, -0.642018, -0.685253,
		-0.620407, -0.703123, 0.347437,
		-0.704878, 0.305665, -0.640091,
		28.610676, 30.707830, 35.488907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.900690, 29.862988, 35.597118>,  <29.104086, 30.493860, 35.936974>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.900690, 29.862988, 35.597118> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.742950, 30.136177, 35.351181>,  <28.648308, 30.300091, 35.203617>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.742950, 30.136177, 35.351181>,  <28.900690, 29.862988, 35.597118>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.742950, 30.136177, 35.351181> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346726, -0.509037, -0.787822,
		-0.851041, -0.523859, -0.036067,
		-0.394348, 0.682974, -0.614847,
		28.624645, 30.341070, 35.166725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.583992, 29.545702, 35.137363>,  <28.900690, 29.862988, 35.597118>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.583992, 29.545702, 35.137363> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.642836, 29.898705, 34.958683>,  <28.678141, 30.110506, 34.851475>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.642836, 29.898705, 34.958683>,  <28.583992, 29.545702, 35.137363>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.642836, 29.898705, 34.958683> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436608, -0.463172, -0.771262,
		-0.887543, -0.081575, -0.453446,
		0.147108, 0.882506, -0.446702,
		28.686968, 30.163456, 34.824673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.314331, 29.414412, 34.443501>,  <28.583992, 29.545702, 35.137363>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.314331, 29.414412, 34.443501> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.556070, 29.732588, 34.425453>,  <28.701115, 29.923494, 34.414623>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.556070, 29.732588, 34.425453>,  <28.314331, 29.414412, 34.443501>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.556070, 29.732588, 34.425453> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473740, -0.404309, -0.782371,
		-0.640572, 0.451452, -0.621176,
		0.604350, 0.795441, -0.045118,
		28.737375, 29.971220, 34.411919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.235710, 29.789526, 33.780972>,  <28.314331, 29.414412, 34.443501>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.235710, 29.789526, 33.780972> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.608364, 29.899611, 33.875900>,  <28.831957, 29.965660, 33.932858>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.608364, 29.899611, 33.875900>,  <28.235710, 29.789526, 33.780972>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.608364, 29.899611, 33.875900> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296386, -0.197553, -0.934413,
		-0.210276, 0.940868, -0.265615,
		0.931633, 0.275210, 0.237319,
		28.887854, 29.982174, 33.947098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.556116, 30.121355, 33.195980>,  <28.235710, 29.789526, 33.780972>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.556116, 30.121355, 33.195980> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.875538, 30.049332, 33.425724>,  <29.067190, 30.006117, 33.563572>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.875538, 30.049332, 33.425724>,  <28.556116, 30.121355, 33.195980>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.875538, 30.049332, 33.425724> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569571, -0.082589, -0.817783,
		0.194684, 0.980183, 0.036604,
		0.798553, -0.180058, 0.574362,
		29.115105, 29.995314, 33.598034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.125551, 30.506092, 32.839367>,  <28.556116, 30.121355, 33.195980>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.125551, 30.506092, 32.839367> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.334517, 30.270348, 33.085857>,  <29.459896, 30.128901, 33.233753>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.334517, 30.270348, 33.085857>,  <29.125551, 30.506092, 32.839367>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.334517, 30.270348, 33.085857> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577477, -0.287185, -0.764228,
		0.627378, 0.755101, 0.190312,
		0.522415, -0.589361, 0.616228,
		29.491241, 30.093540, 33.270725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.821854, 30.750849, 32.868446>,  <29.125551, 30.506092, 32.839367>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.821854, 30.750849, 32.868446> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.817282, 30.363329, 32.967480>,  <29.814539, 30.130817, 33.026901>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.817282, 30.363329, 32.967480>,  <29.821854, 30.750849, 32.868446>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.817282, 30.363329, 32.967480> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.757607, -0.169988, -0.630187,
		0.652611, 0.180368, 0.735912,
		-0.011431, -0.968799, 0.247584,
		29.813852, 30.072689, 33.041756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.450426, 30.642284, 33.009048>,  <29.821854, 30.750849, 32.868446>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.450426, 30.642284, 33.009048> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.292313, 30.282124, 32.936356>,  <30.197445, 30.066027, 32.892738>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.292313, 30.282124, 32.936356>,  <30.450426, 30.642284, 33.009048>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.292313, 30.282124, 32.936356> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.718343, -0.179707, -0.672079,
		0.572482, -0.396209, 0.717832,
		-0.395283, -0.900402, -0.181735,
		30.173727, 30.012003, 32.881836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.973152, 30.281683, 32.643715>,  <30.450426, 30.642284, 33.009048>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.973152, 30.281683, 32.643715> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.662792, 30.035500, 32.588306>,  <30.476576, 29.887789, 32.555061>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.662792, 30.035500, 32.588306>,  <30.973152, 30.281683, 32.643715>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.662792, 30.035500, 32.588306> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370670, -0.267094, -0.889531,
		0.510471, -0.741534, 0.435371,
		-0.775902, -0.615458, -0.138520,
		30.430021, 29.850863, 32.546749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.271084, 29.630577, 32.307205>,  <30.973152, 30.281683, 32.643715>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.271084, 29.630577, 32.307205> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.879896, 29.646633, 32.225262>,  <30.645184, 29.656267, 32.176098>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.879896, 29.646633, 32.225262>,  <31.271084, 29.630577, 32.307205>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.879896, 29.646633, 32.225262> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164008, -0.459354, -0.872981,
		-0.129143, -0.887345, 0.442651,
		-0.977969, 0.040142, -0.204854,
		30.586506, 29.658676, 32.163807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.987095, 29.013815, 32.053146>,  <31.271084, 29.630577, 32.307205>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.987095, 29.013815, 32.053146> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.705748, 29.266418, 31.922630>,  <30.536940, 29.417980, 31.844320>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.705748, 29.266418, 31.922630>,  <30.987095, 29.013815, 32.053146>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.705748, 29.266418, 31.922630> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042163, -0.421157, -0.906007,
		-0.709572, -0.651015, 0.269603,
		-0.703370, 0.631510, -0.326290,
		30.494736, 29.455872, 31.824743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.450329, 28.629326, 31.584654>,  <30.987095, 29.013815, 32.053146>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.450329, 28.629326, 31.584654> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.463884, 29.014706, 31.478359>,  <30.472017, 29.245934, 31.414583>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.463884, 29.014706, 31.478359>,  <30.450329, 28.629326, 31.584654>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.463884, 29.014706, 31.478359> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022436, -0.266554, -0.963559,
		-0.999174, 0.026690, -0.030648,
		0.033887, 0.963450, -0.265735,
		30.474051, 29.303741, 31.398640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.145559, 28.525621, 30.951355>,  <30.450329, 28.629326, 31.584654>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.145559, 28.525621, 30.951355> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.316334, 28.887236, 30.942915>,  <30.418798, 29.104204, 30.937851>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.316334, 28.887236, 30.942915>,  <30.145559, 28.525621, 30.951355>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.316334, 28.887236, 30.942915> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254541, -0.142532, -0.956501,
		-0.867717, 0.402996, -0.290966,
		0.426937, 0.904035, -0.021098,
		30.444414, 29.158445, 30.936586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.782160, 28.849943, 30.334049>,  <30.145559, 28.525621, 30.951355>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.782160, 28.849943, 30.334049> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.119310, 29.052332, 30.407316>,  <30.321600, 29.173765, 30.451277>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.119310, 29.052332, 30.407316>,  <29.782160, 28.849943, 30.334049>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.119310, 29.052332, 30.407316> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305565, -0.169865, -0.936897,
		-0.442932, 0.845658, -0.297783,
		0.842877, 0.505974, 0.183165,
		30.372173, 29.204124, 30.462265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.876122, 29.390854, 29.732250>,  <29.782160, 28.849943, 30.334049>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.876122, 29.390854, 29.732250> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.238997, 29.309408, 29.879520>,  <30.456722, 29.260542, 29.967882>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.238997, 29.309408, 29.879520>,  <29.876122, 29.390854, 29.732250>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.238997, 29.309408, 29.879520> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322900, -0.224043, -0.919533,
		0.269715, 0.953072, -0.137503,
		0.907188, -0.203612, 0.368174,
		30.511152, 29.248325, 29.989973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.441956, 29.744144, 29.274443>,  <29.876122, 29.390854, 29.732250>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.441956, 29.744144, 29.274443> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.564335, 29.420380, 29.474943>,  <30.637762, 29.226122, 29.595243>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.564335, 29.420380, 29.474943>,  <30.441956, 29.744144, 29.274443>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.564335, 29.420380, 29.474943> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121300, -0.489065, -0.863772,
		0.944290, 0.325069, -0.051446,
		0.305946, -0.809411, 0.501250,
		30.656118, 29.177557, 29.625319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<40.931404, 34.405331, 50.413433> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.576683, 34.233303, 50.345760>,  <40.363850, 34.130085, 50.305157>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.576683, 34.233303, 50.345760>,  <40.931404, 34.405331, 50.413433>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.576683, 34.233303, 50.345760> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314564, 0.293508, 0.902720,
		-0.338578, 0.853751, -0.395568,
		-0.886800, -0.430073, -0.169184,
		40.310642, 34.104282, 50.295006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.486618, 34.832741, 50.725967>,  <40.931404, 34.405331, 50.413433>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.486618, 34.832741, 50.725967> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.269753, 34.497181, 50.706722>,  <40.139633, 34.295845, 50.695175>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.269753, 34.497181, 50.706722>,  <40.486618, 34.832741, 50.725967>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.269753, 34.497181, 50.706722> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310888, 0.147067, 0.939000,
		-0.780647, 0.524048, -0.340536,
		-0.542162, -0.838895, -0.048113,
		40.107105, 34.245514, 50.692287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.767662, 35.011513, 50.994850>,  <40.486618, 34.832741, 50.725967>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.767662, 35.011513, 50.994850> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.781025, 34.613792, 51.035339>,  <39.789043, 34.375160, 51.059631>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.781025, 34.613792, 51.035339>,  <39.767662, 35.011513, 50.994850>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.781025, 34.613792, 51.035339> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155302, 0.094883, 0.983300,
		-0.987302, -0.048568, -0.151247,
		0.033406, -0.994303, 0.101221,
		39.791046, 34.315502, 51.065704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.186996, 34.800644, 51.451511>,  <39.767662, 35.011513, 50.994850>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.186996, 34.800644, 51.451511> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.460541, 34.509590, 51.472992>,  <39.624668, 34.334957, 51.485882>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.460541, 34.509590, 51.472992>,  <39.186996, 34.800644, 51.451511>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.460541, 34.509590, 51.472992> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085188, -0.006524, 0.996343,
		-0.724626, -0.685932, -0.066447,
		0.683857, -0.727637, 0.053706,
		39.665699, 34.291298, 51.489105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.907284, 34.318512, 51.945229>,  <39.186996, 34.800644, 51.451511>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.907284, 34.318512, 51.945229> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.291378, 34.207104, 51.952900>,  <39.521835, 34.140259, 51.957504>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.291378, 34.207104, 51.952900>,  <38.907284, 34.318512, 51.945229>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.291378, 34.207104, 51.952900> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059351, -0.136535, 0.988856,
		-0.272797, -0.950676, -0.147636,
		0.960239, -0.278519, 0.019177,
		39.579449, 34.123547, 51.958652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.955784, 33.837368, 52.501141>,  <38.907284, 34.318512, 51.945229>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.955784, 33.837368, 52.501141> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.336128, 33.943233, 52.436867>,  <39.564335, 34.006752, 52.398304>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.336128, 33.943233, 52.436867>,  <38.955784, 33.837368, 52.501141>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.336128, 33.943233, 52.436867> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199586, -0.127177, 0.971592,
		0.236714, -0.955917, -0.173752,
		0.950859, 0.264668, -0.160683,
		39.621387, 34.022633, 52.388660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.344467, 33.261032, 52.845051>,  <38.955784, 33.837368, 52.501141>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.344467, 33.261032, 52.845051> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.595200, 33.569500, 52.800533>,  <39.745640, 33.754581, 52.773823>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.595200, 33.569500, 52.800533>,  <39.344467, 33.261032, 52.845051>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.595200, 33.569500, 52.800533> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349195, -0.150356, 0.924909,
		0.696528, -0.618620, -0.363536,
		0.626827, 0.771169, -0.111293,
		39.783249, 33.800850, 52.767147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.909393, 33.029869, 53.177986>,  <39.344467, 33.261032, 52.845051>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.909393, 33.029869, 53.177986> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.878490, 33.428364, 53.193687>,  <39.859951, 33.667461, 53.203106>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.878490, 33.428364, 53.193687>,  <39.909393, 33.029869, 53.177986>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.878490, 33.428364, 53.193687> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039124, -0.042368, 0.998336,
		0.996243, 0.075591, 0.042250,
		-0.077255, 0.996238, 0.039251,
		39.855312, 33.727234, 53.205463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.391834, 33.344521, 53.765297>,  <39.909393, 33.029869, 53.177986>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.391834, 33.344521, 53.765297> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.098106, 33.604774, 53.687889>,  <39.921871, 33.760929, 53.641445>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.098106, 33.604774, 53.687889>,  <40.391834, 33.344521, 53.765297>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.098106, 33.604774, 53.687889> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242759, 0.014520, 0.969978,
		0.633916, 0.759248, 0.147287,
		-0.734315, 0.650639, -0.193519,
		39.877811, 33.799965, 53.629833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.304203, 33.866207, 54.325531>,  <40.391834, 33.344521, 53.765297>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.304203, 33.866207, 54.325531> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.943542, 33.948959, 54.173622>,  <39.727146, 33.998611, 54.082478>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.943542, 33.948959, 54.173622>,  <40.304203, 33.866207, 54.325531>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.943542, 33.948959, 54.173622> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379055, 0.044705, 0.924294,
		0.208199, 0.977344, 0.038112,
		-0.901649, 0.206883, -0.379775,
		39.673046, 34.011024, 54.059689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.972664, 34.395428, 54.766964>,  <40.304203, 33.866207, 54.325531>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.972664, 34.395428, 54.766964> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.653767, 34.243206, 54.579525>,  <39.462429, 34.151875, 54.467060>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.653767, 34.243206, 54.579525>,  <39.972664, 34.395428, 54.766964>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.653767, 34.243206, 54.579525> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480639, -0.069495, 0.874160,
		-0.365227, 0.922146, -0.127503,
		-0.797242, -0.380550, -0.468601,
		39.414593, 34.129040, 54.438946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.493782, 34.868694, 54.911896>,  <39.972664, 34.395428, 54.766964>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.493782, 34.868694, 54.911896> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.311596, 34.530094, 54.801628>,  <39.202282, 34.326935, 54.735470>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.311596, 34.530094, 54.801628>,  <39.493782, 34.868694, 54.911896>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.311596, 34.530094, 54.801628> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.594934, 0.059067, 0.801602,
		-0.662270, 0.529107, -0.530513,
		-0.455469, -0.846497, -0.275665,
		39.174953, 34.276146, 54.718929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.734180, 34.945812, 55.001839>,  <39.493782, 34.868694, 54.911896>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.734180, 34.945812, 55.001839> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.821892, 34.555843, 55.016994>,  <38.874519, 34.321861, 55.026089>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.821892, 34.555843, 55.016994>,  <38.734180, 34.945812, 55.001839>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.821892, 34.555843, 55.016994> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.689253, -0.127305, 0.713249,
		-0.690541, -0.182520, -0.699886,
		0.219281, -0.974926, 0.037893,
		38.887676, 34.263367, 55.028362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.245949, 35.106136, 55.660900>,  <38.734180, 34.945812, 55.001839>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.245949, 35.106136, 55.660900> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.172222, 34.713154, 55.672260>,  <38.127987, 34.477364, 55.679077>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.172222, 34.713154, 55.672260>,  <38.245949, 35.106136, 55.660900>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.172222, 34.713154, 55.672260> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360798, 0.040751, -0.931754,
		0.914249, -0.181988, -0.361979,
		-0.184318, -0.982456, 0.028405,
		38.116928, 34.418419, 55.680782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.864677, 35.677982, 55.469055>,  <38.245949, 35.106136, 55.660900>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.864677, 35.677982, 55.469055> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.655476, 36.001610, 55.361820>,  <37.529953, 36.195786, 55.297478>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.655476, 36.001610, 55.361820>,  <37.864677, 35.677982, 55.469055>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.655476, 36.001610, 55.361820> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232910, -0.438234, -0.868161,
		-0.819888, -0.391613, 0.417640,
		-0.523007, 0.809067, -0.268092,
		37.498573, 36.244331, 55.281391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.386242, 35.362118, 55.205013>,  <37.864677, 35.677982, 55.469055>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.386242, 35.362118, 55.205013> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.341496, 35.735992, 55.070045>,  <37.314648, 35.960316, 54.989063>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.341496, 35.735992, 55.070045>,  <37.386242, 35.362118, 55.205013>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.341496, 35.735992, 55.070045> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458282, -0.349813, -0.817073,
		-0.881739, 0.063229, 0.467482,
		-0.111869, 0.934683, -0.337420,
		37.307934, 36.016396, 54.968819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.662605, 35.367172, 54.944340>,  <37.386242, 35.362118, 55.205013>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.662605, 35.367172, 54.944340> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.890839, 35.649864, 54.777023>,  <37.027779, 35.819481, 54.676632>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.890839, 35.649864, 54.777023>,  <36.662605, 35.367172, 54.944340>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.890839, 35.649864, 54.777023> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412640, -0.193659, -0.890070,
		-0.710047, 0.680460, 0.181128,
		0.570580, 0.706732, -0.418292,
		37.062012, 35.861885, 54.651535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.184624, 35.800842, 54.457355>,  <36.662605, 35.367172, 54.944340>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.184624, 35.800842, 54.457355> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.551723, 35.860020, 54.309929>,  <36.771984, 35.895527, 54.221474>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.551723, 35.860020, 54.309929>,  <36.184624, 35.800842, 54.457355>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.551723, 35.860020, 54.309929> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390935, 0.172935, -0.904026,
		-0.070007, 0.973759, 0.216549,
		0.917752, 0.147945, -0.368570,
		36.827049, 35.904404, 54.199356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.102814, 36.316788, 53.934139>,  <36.184624, 35.800842, 54.457355>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.102814, 36.316788, 53.934139> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.486607, 36.241684, 53.850098>,  <36.716881, 36.196621, 53.799671>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.486607, 36.241684, 53.850098>,  <36.102814, 36.316788, 53.934139>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.486607, 36.241684, 53.850098> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152186, 0.282234, -0.947198,
		0.237148, 0.940792, 0.242222,
		0.959479, -0.187764, -0.210106,
		36.774452, 36.185356, 53.787067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.407497, 36.922977, 53.567596>,  <36.102814, 36.316788, 53.934139>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.407497, 36.922977, 53.567596> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.608566, 36.592087, 53.467178>,  <36.729206, 36.393551, 53.406929>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.608566, 36.592087, 53.467178>,  <36.407497, 36.922977, 53.567596>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.608566, 36.592087, 53.467178> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242916, 0.143536, -0.959369,
		0.829648, 0.543226, -0.128795,
		0.502668, -0.827226, -0.251043,
		36.759365, 36.343918, 53.391865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.944256, 37.129230, 53.024788>,  <36.407497, 36.922977, 53.567596>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.944256, 37.129230, 53.024788> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.899605, 36.736031, 52.966465>,  <36.872814, 36.500111, 52.931469>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.899605, 36.736031, 52.966465>,  <36.944256, 37.129230, 53.024788>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.899605, 36.736031, 52.966465> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172827, 0.163694, -0.971255,
		0.978607, -0.083214, -0.188160,
		-0.111623, -0.982995, -0.145811,
		36.866119, 36.441132, 52.922722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.348877, 36.980396, 52.426968>,  <36.944256, 37.129230, 53.024788>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.348877, 36.980396, 52.426968> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.116989, 36.656021, 52.458725>,  <36.977856, 36.461395, 52.477779>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.116989, 36.656021, 52.458725>,  <37.348877, 36.980396, 52.426968>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.116989, 36.656021, 52.458725> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077128, -0.042388, -0.996120,
		0.811160, -0.583591, -0.037973,
		-0.579717, -0.810941, 0.079395,
		36.943073, 36.412739, 52.482544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.561665, 36.480564, 51.903244>,  <37.348877, 36.980396, 52.426968>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.561665, 36.480564, 51.903244> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.201878, 36.333462, 51.997662>,  <36.986004, 36.245201, 52.054314>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.201878, 36.333462, 51.997662>,  <37.561665, 36.480564, 51.903244>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.201878, 36.333462, 51.997662> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181001, -0.178114, -0.967220,
		0.397743, -0.912706, 0.093643,
		-0.899466, -0.367755, 0.236044,
		36.932037, 36.223137, 52.068474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.497635, 35.901955, 51.557003>,  <37.561665, 36.480564, 51.903244>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.497635, 35.901955, 51.557003> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.114014, 35.993023, 51.624405>,  <36.883842, 36.047665, 51.664845>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.114014, 35.993023, 51.624405>,  <37.497635, 35.901955, 51.557003>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.114014, 35.993023, 51.624405> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221224, -0.230584, -0.947571,
		-0.176878, -0.946043, 0.271507,
		-0.959049, 0.227668, 0.168502,
		36.826298, 36.061325, 51.674957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.088150, 35.403355, 51.169964>,  <37.497635, 35.901955, 51.557003>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.088150, 35.403355, 51.169964> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.810635, 35.688774, 51.208961>,  <36.644127, 35.860027, 51.232361>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.810635, 35.688774, 51.208961>,  <37.088150, 35.403355, 51.169964>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.810635, 35.688774, 51.208961> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279931, -0.142456, -0.949392,
		-0.663548, -0.685970, 0.298579,
		-0.693789, 0.713548, 0.097498,
		36.602497, 35.902840, 51.238213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.466911, 35.115524, 50.879623>,  <37.088150, 35.403355, 51.169964>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.466911, 35.115524, 50.879623> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.418690, 35.512600, 50.877163>,  <36.389755, 35.750843, 50.875687>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.418690, 35.512600, 50.877163>,  <36.466911, 35.115524, 50.879623>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.418690, 35.512600, 50.877163> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376753, -0.051490, -0.924882,
		-0.918435, -0.109183, 0.380206,
		-0.120558, 0.992687, -0.006155,
		36.382523, 35.810406, 50.875317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.011971, 35.211819, 50.418549>,  <36.466911, 35.115524, 50.879623>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.011971, 35.211819, 50.418549> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.130814, 35.590389, 50.469143>,  <36.202122, 35.817532, 50.499500>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.130814, 35.590389, 50.469143>,  <36.011971, 35.211819, 50.418549>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.130814, 35.590389, 50.469143> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125265, 0.169962, -0.977457,
		-0.946590, 0.274569, 0.169052,
		0.297112, 0.946427, 0.126490,
		36.219948, 35.874317, 50.507092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.372448, 35.671570, 50.203506>,  <36.011971, 35.211819, 50.418549>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.372448, 35.671570, 50.203506> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.741459, 35.814480, 50.145142>,  <35.962868, 35.900227, 50.110123>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.741459, 35.814480, 50.145142>,  <35.372448, 35.671570, 50.203506>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.741459, 35.814480, 50.145142> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184380, 0.075887, -0.979921,
		-0.339030, 0.930910, 0.135883,
		0.922530, 0.357277, -0.145913,
		36.018219, 35.921661, 50.101368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.993069, 36.347408, 50.455116>,  <35.372448, 35.671570, 50.203506>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.993069, 36.347408, 50.455116> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.605949, 36.265675, 50.396305>,  <34.373676, 36.216637, 50.361019>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.605949, 36.265675, 50.396305>,  <34.993069, 36.347408, 50.455116>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.605949, 36.265675, 50.396305> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098076, -0.231838, 0.967798,
		-0.231838, 0.951052, 0.204332,
		-0.967798, -0.204332, -0.147025,
		34.315609, 36.204376, 50.352196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.747971, 36.750183, 50.897217>,  <34.993069, 36.347408, 50.455116>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.747971, 36.750183, 50.897217> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.478920, 36.465862, 50.814919>,  <34.317490, 36.295269, 50.765541>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.478920, 36.465862, 50.814919>,  <34.747971, 36.750183, 50.897217>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.478920, 36.465862, 50.814919> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159145, -0.132582, 0.978312,
		-0.722665, 0.690784, -0.023942,
		-0.672628, -0.710802, -0.205746,
		34.277130, 36.252621, 50.753193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.262177, 36.921871, 51.364155>,  <34.747971, 36.750183, 50.897217>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.262177, 36.921871, 51.364155> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.143959, 36.555077, 51.256973>,  <34.073029, 36.334999, 51.192665>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.143959, 36.555077, 51.256973>,  <34.262177, 36.921871, 51.364155>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.143959, 36.555077, 51.256973> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150172, -0.232403, 0.960956,
		-0.943454, 0.324240, -0.069021,
		-0.295540, -0.916983, -0.267954,
		34.055298, 36.279984, 51.176586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.593769, 36.824348, 51.673679>,  <34.262177, 36.921871, 51.364155>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.593769, 36.824348, 51.673679> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.792259, 36.479919, 51.629292>,  <33.911354, 36.273262, 51.602657>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.792259, 36.479919, 51.629292>,  <33.593769, 36.824348, 51.673679>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.792259, 36.479919, 51.629292> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004791, -0.130536, 0.991432,
		-0.868179, -0.491445, -0.068901,
		0.496228, -0.861071, -0.110974,
		33.941128, 36.221600, 51.596001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.161182, 36.427769, 52.052464>,  <33.593769, 36.824348, 51.673679>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.161182, 36.427769, 52.052464> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.492416, 36.206657, 52.015125>,  <33.691154, 36.073990, 51.992722>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.492416, 36.206657, 52.015125>,  <33.161182, 36.427769, 52.052464>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.492416, 36.206657, 52.015125> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053850, -0.087300, 0.994726,
		-0.558014, -0.828742, -0.042524,
		0.828083, -0.552781, -0.093342,
		33.740841, 36.040825, 51.987122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.988434, 35.899639, 52.525116>,  <33.161182, 36.427769, 52.052464>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.988434, 35.899639, 52.525116> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.383808, 35.886593, 52.465870>,  <33.621033, 35.878765, 52.430321>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.383808, 35.886593, 52.465870>,  <32.988434, 35.899639, 52.525116>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.383808, 35.886593, 52.465870> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123724, -0.391476, 0.911833,
		-0.087722, -0.919610, -0.382912,
		0.988431, -0.032613, -0.148119,
		33.680336, 35.876808, 52.421432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.220978, 35.265888, 52.827370>,  <32.988434, 35.899639, 52.525116>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.220978, 35.265888, 52.827370> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.550316, 35.491261, 52.800117>,  <33.747921, 35.626484, 52.783768>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.550316, 35.491261, 52.800117>,  <33.220978, 35.265888, 52.827370>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.550316, 35.491261, 52.800117> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260939, -0.269219, 0.927056,
		0.503992, -0.781067, -0.368682,
		0.823349, 0.563432, -0.068127,
		33.797321, 35.660290, 52.779678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.278782, 34.544220, 52.619423>,  <33.220978, 35.265888, 52.827370>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.278782, 34.544220, 52.619423> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.943966, 34.336098, 52.687126>,  <32.743076, 34.211224, 52.727749>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.943966, 34.336098, 52.687126>,  <33.278782, 34.544220, 52.619423>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.943966, 34.336098, 52.687126> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192502, -0.009515, -0.981251,
		0.512160, -0.853927, -0.092195,
		-0.837039, -0.520305, 0.169256,
		32.692856, 34.180008, 52.737904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.357121, 33.894417, 52.310799>,  <33.278782, 34.544220, 52.619423>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.357121, 33.894417, 52.310799> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.963116, 33.959721, 52.333088>,  <32.726715, 33.998905, 52.346462>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.963116, 33.959721, 52.333088>,  <33.357121, 33.894417, 52.310799>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.963116, 33.959721, 52.333088> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074615, -0.111974, -0.990906,
		-0.155545, -0.980207, 0.122477,
		-0.985007, 0.163269, 0.055722,
		32.667614, 34.008698, 52.349804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.957317, 33.366493, 51.989487>,  <33.357121, 33.894417, 52.310799>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.957317, 33.366493, 51.989487> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.677197, 33.651985, 51.994694>,  <32.509125, 33.823280, 51.997818>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.677197, 33.651985, 51.994694>,  <32.957317, 33.366493, 51.989487>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.677197, 33.651985, 51.994694> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237370, -0.215623, -0.947186,
		-0.673229, -0.666404, 0.320419,
		-0.700299, 0.713731, 0.013021,
		32.467106, 33.866104, 51.998600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.379543, 33.064377, 51.582500>,  <32.957317, 33.366493, 51.989487>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.379543, 33.064377, 51.582500> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.291977, 33.453091, 51.617626>,  <32.239437, 33.686317, 51.638702>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.291977, 33.453091, 51.617626>,  <32.379543, 33.064377, 51.582500>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.291977, 33.453091, 51.617626> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447761, -0.020086, -0.893928,
		-0.866941, -0.235015, 0.439524,
		-0.218914, 0.971784, 0.087817,
		32.226303, 33.744625, 51.643970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.777079, 33.095890, 51.281677>,  <32.379543, 33.064377, 51.582500>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.777079, 33.095890, 51.281677> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.896662, 33.476273, 51.249916>,  <31.968412, 33.704502, 51.230858>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.896662, 33.476273, 51.249916>,  <31.777079, 33.095890, 51.281677>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.896662, 33.476273, 51.249916> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448812, 0.066686, -0.891135,
		-0.842135, 0.302052, 0.446737,
		0.298960, 0.950956, -0.079406,
		31.986349, 33.761559, 51.226093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.243813, 33.360798, 50.880569>,  <31.777079, 33.095890, 51.281677>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.243813, 33.360798, 50.880569> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.536032, 33.625626, 50.813679>,  <31.711363, 33.784523, 50.773544>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.536032, 33.625626, 50.813679>,  <31.243813, 33.360798, 50.880569>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.536032, 33.625626, 50.813679> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301158, 0.092590, -0.949068,
		-0.612863, 0.743704, 0.267028,
		0.730550, 0.662066, -0.167227,
		31.755198, 33.824245, 50.763512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.027727, 33.984554, 50.618904>,  <31.243813, 33.360798, 50.880569>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.027727, 33.984554, 50.618904> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.410141, 33.971684, 50.502312>,  <31.639589, 33.963963, 50.432354>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.410141, 33.971684, 50.502312>,  <31.027727, 33.984554, 50.618904>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.410141, 33.971684, 50.502312> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279062, 0.205669, -0.937990,
		0.090129, 0.978092, 0.187648,
		0.956034, -0.032175, -0.291485,
		31.696951, 33.962032, 50.414867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<36.759644, 31.967781, 55.268372> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.043247, 32.249783, 55.275043>,  <37.213409, 32.418983, 55.279045>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.043247, 32.249783, 55.275043>,  <36.759644, 31.967781, 55.268372>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.043247, 32.249783, 55.275043> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305112, -0.285352, -0.908560,
		-0.635781, 0.649262, -0.417422,
		0.709005, 0.705006, 0.016677,
		37.255947, 32.461285, 55.280048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.739182, 32.294907, 54.684525>,  <36.759644, 31.967781, 55.268372>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.739182, 32.294907, 54.684525> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.113449, 32.351845, 54.813679>,  <37.338009, 32.386009, 54.891171>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.113449, 32.351845, 54.813679>,  <36.739182, 32.294907, 54.684525>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.113449, 32.351845, 54.813679> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351396, -0.292343, -0.889414,
		-0.032214, 0.945660, -0.323558,
		0.935673, 0.142349, 0.322883,
		37.394150, 32.394550, 54.910545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.002110, 32.703945, 54.161594>,  <36.739182, 32.294907, 54.684525>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.002110, 32.703945, 54.161594> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.265228, 32.472607, 54.354603>,  <37.423100, 32.333805, 54.470406>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.265228, 32.472607, 54.354603>,  <37.002110, 32.703945, 54.161594>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.265228, 32.472607, 54.354603> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418496, -0.251996, -0.872559,
		0.626231, 0.775898, 0.076273,
		0.657796, -0.578343, 0.482518,
		37.462566, 32.299103, 54.499359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.582825, 32.881695, 53.853348>,  <37.002110, 32.703945, 54.161594>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.582825, 32.881695, 53.853348> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.674847, 32.534637, 54.029652>,  <37.730061, 32.326405, 54.135433>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.674847, 32.534637, 54.029652>,  <37.582825, 32.881695, 53.853348>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.674847, 32.534637, 54.029652> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478274, -0.293636, -0.827666,
		0.847542, 0.401216, 0.347418,
		0.230058, -0.867642, 0.440760,
		37.743866, 32.274345, 54.161880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.278431, 32.679710, 53.535011>,  <37.582825, 32.881695, 53.853348>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.278431, 32.679710, 53.535011> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.078789, 32.365993, 53.682400>,  <37.959003, 32.177761, 53.770832>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.078789, 32.365993, 53.682400>,  <38.278431, 32.679710, 53.535011>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.078789, 32.365993, 53.682400> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281404, -0.548876, -0.787113,
		0.819575, -0.289165, 0.494652,
		-0.499108, -0.784295, 0.368473,
		37.929058, 32.130707, 53.792942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.744122, 32.158733, 53.431774>,  <38.278431, 32.679710, 53.535011>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.744122, 32.158733, 53.431774> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.372650, 32.015247, 53.469467>,  <38.149769, 31.929155, 53.492081>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.372650, 32.015247, 53.469467>,  <38.744122, 32.158733, 53.431774>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.372650, 32.015247, 53.469467> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091198, -0.467126, -0.879475,
		0.359499, -0.808156, 0.466524,
		-0.928678, -0.358717, 0.094230,
		38.094048, 31.907633, 53.497738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.778118, 31.557255, 53.198776>,  <38.744122, 32.158733, 53.431774>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.778118, 31.557255, 53.198776> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.379734, 31.591833, 53.189068>,  <38.140705, 31.612581, 53.183243>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.379734, 31.591833, 53.189068>,  <38.778118, 31.557255, 53.198776>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.379734, 31.591833, 53.189068> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010346, -0.378958, -0.925356,
		-0.089191, -0.921367, 0.378322,
		-0.995961, 0.086447, -0.024267,
		38.080944, 31.617767, 53.181789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.665421, 31.045084, 52.895565>,  <38.778118, 31.557255, 53.198776>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.665421, 31.045084, 52.895565> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.331207, 31.261086, 52.855019>,  <38.130680, 31.390686, 52.830688>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.331207, 31.261086, 52.855019>,  <38.665421, 31.045084, 52.895565>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.331207, 31.261086, 52.855019> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072406, -0.291105, -0.953947,
		-0.544643, -0.789718, 0.282329,
		-0.835536, 0.540003, -0.101368,
		38.080547, 31.423086, 52.824608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.142399, 30.654047, 52.546848>,  <38.665421, 31.045084, 52.895565>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.142399, 30.654047, 52.546848> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.012520, 31.028913, 52.495800>,  <37.934593, 31.253834, 52.465172>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.012520, 31.028913, 52.495800>,  <38.142399, 30.654047, 52.546848>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.012520, 31.028913, 52.495800> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280333, -0.224222, -0.933348,
		-0.903318, -0.267282, 0.335524,
		-0.324699, 0.937168, -0.127616,
		37.915112, 31.310064, 52.457516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.500267, 30.608295, 52.219444>,  <38.142399, 30.654047, 52.546848>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.500267, 30.608295, 52.219444> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.624645, 30.982151, 52.150440>,  <37.699272, 31.206465, 52.109035>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.624645, 30.982151, 52.150440>,  <37.500267, 30.608295, 52.219444>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.624645, 30.982151, 52.150440> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288412, -0.080162, -0.954145,
		-0.905612, 0.346441, 0.244635,
		0.310944, 0.934640, -0.172514,
		37.717930, 31.262543, 52.098686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.014488, 30.949312, 51.757648>,  <37.500267, 30.608295, 52.219444>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.014488, 30.949312, 51.757648> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.345631, 31.169106, 51.712547>,  <37.544315, 31.300982, 51.685486>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.345631, 31.169106, 51.712547>,  <37.014488, 30.949312, 51.757648>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.345631, 31.169106, 51.712547> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177382, 0.065746, -0.981944,
		-0.532149, 0.832914, 0.151897,
		0.827861, 0.549484, -0.112757,
		37.593990, 31.333950, 51.678719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.862667, 31.626678, 51.358086>,  <37.014488, 30.949312, 51.757648>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.862667, 31.626678, 51.358086> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.256569, 31.578953, 51.307457>,  <37.492912, 31.550318, 51.277081>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.256569, 31.578953, 51.307457>,  <36.862667, 31.626678, 51.358086>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.256569, 31.578953, 51.307457> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113511, 0.110533, -0.987369,
		0.131798, 0.986685, 0.095304,
		0.984756, -0.119315, -0.126567,
		37.551994, 31.543158, 51.269485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.126575, 31.724764, 51.566956>,  <36.862667, 31.626678, 51.358086>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.126575, 31.724764, 51.566956> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.790134, 31.534683, 51.463623>,  <35.588272, 31.420635, 51.401623>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.790134, 31.534683, 51.463623>,  <36.126575, 31.724764, 51.566956>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.790134, 31.534683, 51.463623> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156636, -0.243152, 0.957258,
		-0.517704, 0.845613, 0.130081,
		-0.841099, -0.475201, -0.258335,
		35.537804, 31.392122, 51.386124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.501446, 32.061569, 51.890079>,  <36.126575, 31.724764, 51.566956>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.501446, 32.061569, 51.890079> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.412224, 31.679230, 51.813557>,  <35.358692, 31.449825, 51.767643>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.412224, 31.679230, 51.813557>,  <35.501446, 32.061569, 51.890079>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.412224, 31.679230, 51.813557> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199742, -0.147269, 0.968718,
		-0.954122, 0.254289, -0.158075,
		-0.223055, -0.955850, -0.191305,
		35.345306, 31.392475, 51.756165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.817322, 31.925161, 52.180969>,  <35.501446, 32.061569, 51.890079>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.817322, 31.925161, 52.180969> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.990833, 31.568169, 52.131477>,  <35.094940, 31.353973, 52.101784>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.990833, 31.568169, 52.131477>,  <34.817322, 31.925161, 52.180969>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.990833, 31.568169, 52.131477> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115232, -0.191143, 0.974775,
		-0.893620, -0.408580, -0.185757,
		0.433780, -0.892483, -0.123727,
		35.120968, 31.300423, 52.094360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.440594, 31.561588, 52.552723>,  <34.817322, 31.925161, 52.180969>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.440594, 31.561588, 52.552723> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.765675, 31.332394, 52.510406>,  <34.960724, 31.194876, 52.485016>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.765675, 31.332394, 52.510406>,  <34.440594, 31.561588, 52.552723>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.765675, 31.332394, 52.510406> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040014, -0.236016, 0.970925,
		-0.581298, -0.784844, -0.214739,
		0.812706, -0.572989, -0.105791,
		35.009487, 31.160498, 52.478668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.247944, 30.919903, 52.780914>,  <34.440594, 31.561588, 52.552723>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.247944, 30.919903, 52.780914> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.643597, 30.962202, 52.821758>,  <34.880989, 30.987581, 52.846264>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.643597, 30.962202, 52.821758>,  <34.247944, 30.919903, 52.780914>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.643597, 30.962202, 52.821758> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071050, -0.264189, 0.961850,
		0.128693, -0.958656, -0.253805,
		0.989136, 0.105750, 0.102112,
		34.940338, 30.993927, 52.852390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.425510, 30.285957, 53.222599>,  <34.247944, 30.919903, 52.780914>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.425510, 30.285957, 53.222599> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.744946, 30.525284, 53.248764>,  <34.936607, 30.668880, 53.264465>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.744946, 30.525284, 53.248764>,  <34.425510, 30.285957, 53.222599>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.744946, 30.525284, 53.248764> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040620, -0.162013, 0.985952,
		0.600512, -0.784708, -0.153684,
		0.798583, 0.598319, 0.065416,
		34.984520, 30.704779, 53.268391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.868042, 29.962671, 53.666321>,  <34.425510, 30.285957, 53.222599>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.868042, 29.962671, 53.666321> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.974876, 30.348139, 53.667297>,  <35.038979, 30.579420, 53.667881>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.974876, 30.348139, 53.667297>,  <34.868042, 29.962671, 53.666321>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.974876, 30.348139, 53.667297> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047158, -0.015598, 0.998766,
		0.962518, -0.266643, -0.049610,
		0.267087, 0.963669, 0.002439,
		35.055004, 30.637239, 53.668030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.423912, 30.022942, 54.188713>,  <34.868042, 29.962671, 53.666321>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.423912, 30.022942, 54.188713> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.299713, 30.401766, 54.156048>,  <35.225193, 30.629061, 54.136448>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.299713, 30.401766, 54.156048>,  <35.423912, 30.022942, 54.188713>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.299713, 30.401766, 54.156048> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214830, 0.013775, 0.976554,
		0.925979, 0.320766, 0.199180,
		-0.310502, 0.947058, -0.081666,
		35.206562, 30.685883, 54.131550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.747990, 30.414869, 54.818947>,  <35.423912, 30.022942, 54.188713>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.747990, 30.414869, 54.818947> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.428234, 30.612858, 54.682720>,  <35.236382, 30.731651, 54.600986>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.428234, 30.612858, 54.682720>,  <35.747990, 30.414869, 54.818947>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.428234, 30.612858, 54.682720> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281929, 0.191526, 0.940124,
		0.530562, 0.847537, -0.013556,
		-0.799387, 0.494973, -0.340562,
		35.188419, 30.761349, 54.580551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.742298, 31.068867, 55.192379>,  <35.747990, 30.414869, 54.818947>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.742298, 31.068867, 55.192379> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.361889, 31.045210, 55.071011>,  <35.133644, 31.031015, 54.998192>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.361889, 31.045210, 55.071011>,  <35.742298, 31.068867, 55.192379>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.361889, 31.045210, 55.071011> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308679, 0.234511, 0.921803,
		0.016637, 0.970312, -0.241281,
		-0.951021, -0.059142, -0.303417,
		35.076584, 31.027468, 54.979984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.314602, 31.564363, 55.661911>,  <35.742298, 31.068867, 55.192379>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.314602, 31.564363, 55.661911> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.033268, 31.336349, 55.492031>,  <34.864468, 31.199541, 55.390102>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.033268, 31.336349, 55.492031>,  <35.314602, 31.564363, 55.661911>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.033268, 31.336349, 55.492031> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522968, 0.010269, 0.852291,
		-0.481476, 0.821555, -0.305333,
		-0.703339, -0.570037, -0.424703,
		34.822266, 31.165339, 55.364620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.803074, 31.886459, 55.951050>,  <35.314602, 31.564363, 55.661911>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.803074, 31.886459, 55.951050> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.665543, 31.533106, 55.823669>,  <34.583023, 31.321093, 55.747242>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.665543, 31.533106, 55.823669>,  <34.803074, 31.886459, 55.951050>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.665543, 31.533106, 55.823669> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.594245, -0.057892, 0.802198,
		-0.727086, 0.465058, -0.505042,
		-0.343830, -0.883385, -0.318451,
		34.562393, 31.268089, 55.728134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.060730, 31.954147, 55.857563>,  <34.803074, 31.886459, 55.951050>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.060730, 31.954147, 55.857563> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.159145, 31.569801, 55.908485>,  <34.218193, 31.339193, 55.939037>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.159145, 31.569801, 55.908485>,  <34.060730, 31.954147, 55.857563>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.159145, 31.569801, 55.908485> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.672347, -0.074585, 0.736469,
		-0.698151, -0.266792, -0.664384,
		0.246037, -0.960864, 0.127305,
		34.232956, 31.281542, 55.946678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.450516, 31.615864, 55.831985>,  <34.060730, 31.954147, 55.857563>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.450516, 31.615864, 55.831985> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.696640, 31.380980, 56.042351>,  <33.844315, 31.240049, 56.168568>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.696640, 31.380980, 56.042351>,  <33.450516, 31.615864, 55.831985>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.696640, 31.380980, 56.042351> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.699878, -0.099969, 0.707231,
		-0.362719, -0.803237, -0.472488,
		0.615309, -0.587210, 0.525908,
		33.881233, 31.204817, 56.200123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.270245, 32.111614, 55.303146>,  <33.450516, 31.615864, 55.831985>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.270245, 32.111614, 55.303146> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.310131, 32.503384, 55.373325>,  <33.334064, 32.738445, 55.415432>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.310131, 32.503384, 55.373325>,  <33.270245, 32.111614, 55.303146>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.310131, 32.503384, 55.373325> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531064, 0.201500, -0.823024,
		-0.841444, -0.011103, 0.540231,
		0.099718, 0.979425, 0.175448,
		33.340046, 32.797211, 55.425961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.643734, 32.446484, 55.245857>,  <33.270245, 32.111614, 55.303146>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.643734, 32.446484, 55.245857> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.913963, 32.728374, 55.159184>,  <33.076103, 32.897511, 55.107182>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.913963, 32.728374, 55.159184>,  <32.643734, 32.446484, 55.245857>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.913963, 32.728374, 55.159184> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552635, 0.289477, -0.781536,
		-0.488046, 0.647734, 0.585022,
		0.675578, 0.704729, -0.216682,
		33.116638, 32.939793, 55.094177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.262184, 33.033401, 54.976360>,  <32.643734, 32.446484, 55.245857>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.262184, 33.033401, 54.976360> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.632481, 33.107182, 54.844311>,  <32.854656, 33.151451, 54.765079>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.632481, 33.107182, 54.844311>,  <32.262184, 33.033401, 54.976360>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.632481, 33.107182, 54.844311> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374256, 0.572047, -0.729859,
		0.054223, 0.799211, 0.598599,
		0.925739, 0.184454, -0.330128,
		32.910202, 33.162518, 54.745274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.199295, 33.644382, 54.861996>,  <32.262184, 33.033401, 54.976360>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.199295, 33.644382, 54.861996> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.518120, 33.551231, 54.639122>,  <32.709415, 33.495338, 54.505398>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.518120, 33.551231, 54.639122>,  <32.199295, 33.644382, 54.861996>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.518120, 33.551231, 54.639122> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397574, 0.492133, -0.774429,
		0.454558, 0.838792, 0.299675,
		0.797065, -0.232880, -0.557185,
		32.757240, 33.481369, 54.471966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.421978, 34.380795, 54.446129>,  <32.199295, 33.644382, 54.861996>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.421978, 34.380795, 54.446129> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.594639, 34.085804, 54.238358>,  <32.698235, 33.908810, 54.113697>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.594639, 34.085804, 54.238358>,  <32.421978, 34.380795, 54.446129>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.594639, 34.085804, 54.238358> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198728, 0.483936, -0.852240,
		0.879878, 0.471093, 0.062333,
		0.431650, -0.737480, -0.519424,
		32.724133, 33.864559, 54.082531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.863396, 34.741306, 53.926334>,  <32.421978, 34.380795, 54.446129>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.863396, 34.741306, 53.926334> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.763885, 34.371784, 53.809921>,  <32.704178, 34.150070, 53.740074>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.763885, 34.371784, 53.809921>,  <32.863396, 34.741306, 53.926334>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.763885, 34.371784, 53.809921> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147453, 0.333102, -0.931290,
		0.957272, -0.188767, -0.219085,
		-0.248775, -0.923802, -0.291035,
		32.689255, 34.094643, 53.722610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.086887, 34.721466, 53.276978>,  <32.863396, 34.741306, 53.926334>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.086887, 34.721466, 53.276978> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.857754, 34.398026, 53.223259>,  <32.720276, 34.203960, 53.191029>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.857754, 34.398026, 53.223259>,  <33.086887, 34.721466, 53.276978>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.857754, 34.398026, 53.223259> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108467, 0.237175, -0.965393,
		0.812466, -0.538440, -0.223567,
		-0.572830, -0.808598, -0.134293,
		32.685905, 34.155445, 53.182972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.843967, 34.792793, 53.101368>,  <33.086887, 34.721466, 53.276978>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.843967, 34.792793, 53.101368> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.935455, 35.179604, 53.146191>,  <33.990349, 35.411690, 53.173084>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.935455, 35.179604, 53.146191>,  <33.843967, 34.792793, 53.101368>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.935455, 35.179604, 53.146191> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285167, -0.176613, 0.942065,
		0.930788, -0.183515, -0.316158,
		0.228721, 0.967021, 0.112057,
		34.004070, 35.469711, 53.179810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.408974, 34.812855, 53.510826>,  <33.843967, 34.792793, 53.101368>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.408974, 34.812855, 53.510826> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.291496, 35.193554, 53.546398>,  <34.221008, 35.421974, 53.567741>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.291496, 35.193554, 53.546398>,  <34.408974, 34.812855, 53.510826>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.291496, 35.193554, 53.546398> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339928, 0.017035, 0.940297,
		0.893415, 0.306393, -0.328530,
		-0.293697, 0.951753, 0.088933,
		34.203388, 35.479080, 53.573078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.995827, 35.223721, 53.735279>,  <34.408974, 34.812855, 53.510826>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.995827, 35.223721, 53.735279> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.660095, 35.414398, 53.839809>,  <34.458656, 35.528805, 53.902527>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.660095, 35.414398, 53.839809>,  <34.995827, 35.223721, 53.735279>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.660095, 35.414398, 53.839809> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381420, 0.173861, 0.907905,
		0.387363, 0.861702, -0.327749,
		-0.839326, 0.476698, 0.261324,
		34.408298, 35.557407, 53.918205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.195000, 35.878971, 54.032776>,  <34.995827, 35.223721, 53.735279>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.195000, 35.878971, 54.032776> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.828617, 35.813141, 54.179169>,  <34.608788, 35.773643, 54.267006>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.828617, 35.813141, 54.179169>,  <35.195000, 35.878971, 54.032776>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.828617, 35.813141, 54.179169> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332440, 0.199598, 0.921761,
		-0.224745, 0.965959, -0.128113,
		-0.915955, -0.164571, 0.365982,
		34.553829, 35.763771, 54.288963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.118248, 36.442455, 54.488979>,  <35.195000, 35.878971, 54.032776>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.118248, 36.442455, 54.488979> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.841953, 36.169426, 54.584461>,  <34.676178, 36.005608, 54.641750>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.841953, 36.169426, 54.584461>,  <35.118248, 36.442455, 54.488979>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.841953, 36.169426, 54.584461> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278471, 0.053562, 0.958950,
		-0.667339, 0.728852, 0.153080,
		-0.690733, -0.682573, 0.238709,
		34.634735, 35.964653, 54.656075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.726894, 36.686287, 55.035187>,  <35.118248, 36.442455, 54.488979>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.726894, 36.686287, 55.035187> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.647610, 36.298309, 55.091648>,  <34.600040, 36.065525, 55.125526>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.647610, 36.298309, 55.091648>,  <34.726894, 36.686287, 55.035187>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.647610, 36.298309, 55.091648> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219249, 0.096485, 0.970886,
		-0.955323, 0.223389, 0.193534,
		-0.198212, -0.969942, 0.141152,
		34.588146, 36.007328, 55.133995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.461834, 36.661263, 55.680626>,  <34.726894, 36.686287, 55.035187>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.461834, 36.661263, 55.680626> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.586758, 36.294315, 55.581917>,  <34.661713, 36.074146, 55.522694>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.586758, 36.294315, 55.581917>,  <34.461834, 36.661263, 55.680626>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.586758, 36.294315, 55.581917> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431682, -0.094351, 0.897078,
		-0.846236, -0.386689, 0.366546,
		0.312306, -0.917371, -0.246770,
		34.680450, 36.019104, 55.507885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.432430, 36.276379, 56.262272>,  <34.461834, 36.661263, 55.680626>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.432430, 36.276379, 56.262272> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.672867, 36.027023, 56.062244>,  <34.817131, 35.877411, 55.942226>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.672867, 36.027023, 56.062244>,  <34.432430, 36.276379, 56.262272>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.672867, 36.027023, 56.062244> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540521, -0.143782, 0.828954,
		-0.588662, -0.768579, 0.250527,
		0.601095, -0.623388, -0.500072,
		34.853195, 35.840008, 55.912224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.535549, 35.793327, 56.699471>,  <34.432430, 36.276379, 56.262272>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.535549, 35.793327, 56.699471> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.833450, 35.725212, 56.441372>,  <35.012192, 35.684341, 56.286510>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.833450, 35.725212, 56.441372>,  <34.535549, 35.793327, 56.699471>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.833450, 35.725212, 56.441372> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583494, -0.303057, 0.753453,
		-0.323858, -0.937633, -0.126335,
		0.744749, -0.170296, -0.645250,
		35.056877, 35.674126, 56.247799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<33.680721, 33.277687, 40.066158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.036701, 33.132389, 40.176456>,  <34.250290, 33.045208, 40.242638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.036701, 33.132389, 40.176456>,  <33.680721, 33.277687, 40.066158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.036701, 33.132389, 40.176456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140442, 0.356968, 0.923499,
		-0.433895, -0.860595, 0.266668,
		0.889950, -0.363250, 0.275750,
		34.303688, 33.023415, 40.259182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.520889, 32.994793, 40.666546>,  <33.680721, 33.277687, 40.066158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.520889, 32.994793, 40.666546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.914341, 33.062691, 40.690758>,  <34.150410, 33.103432, 40.705284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.914341, 33.062691, 40.690758>,  <33.520889, 32.994793, 40.666546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.914341, 33.062691, 40.690758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124277, 0.395667, 0.909946,
		0.130510, -0.902570, 0.410285,
		0.983627, 0.169746, 0.060531,
		34.209431, 33.113613, 40.708916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.669811, 32.773060, 41.327816>,  <33.520889, 32.994793, 40.666546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.669811, 32.773060, 41.327816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.977928, 33.000599, 41.212536>,  <34.162800, 33.137123, 41.143368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.977928, 33.000599, 41.212536>,  <33.669811, 32.773060, 41.327816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.977928, 33.000599, 41.212536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183365, 0.235273, 0.954476,
		0.610754, -0.788075, 0.076924,
		0.770297, 0.568845, -0.288199,
		34.209019, 33.171253, 41.126076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.246128, 32.568703, 41.725132>,  <33.669811, 32.773060, 41.327816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.246128, 32.568703, 41.725132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.311878, 32.934834, 41.578072>,  <34.351326, 33.154510, 41.489838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.311878, 32.934834, 41.578072>,  <34.246128, 32.568703, 41.725132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.311878, 32.934834, 41.578072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229796, 0.326928, 0.916685,
		0.959258, -0.235160, -0.156600,
		0.164371, 0.915324, -0.367647,
		34.361191, 33.209431, 41.467777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.884937, 32.825531, 42.124180>,  <34.246128, 32.568703, 41.725132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.884937, 32.825531, 42.124180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.680618, 33.136433, 41.977230>,  <34.558025, 33.322971, 41.889061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.680618, 33.136433, 41.977230>,  <34.884937, 32.825531, 42.124180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.680618, 33.136433, 41.977230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002092, 0.428450, 0.903563,
		0.859698, 0.460770, -0.220478,
		-0.510799, 0.777252, -0.367374,
		34.527378, 33.369610, 41.867020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.189384, 33.469467, 42.410213>,  <34.884937, 32.825531, 42.124180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.189384, 33.469467, 42.410213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.843571, 33.601555, 42.258667>,  <34.636082, 33.680809, 42.167740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.843571, 33.601555, 42.258667>,  <35.189384, 33.469467, 42.410213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.843571, 33.601555, 42.258667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164021, 0.527178, 0.833775,
		0.475058, 0.782967, -0.401600,
		-0.864533, 0.330221, -0.378864,
		34.584209, 33.700623, 42.145008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.126411, 34.251152, 42.601582>,  <35.189384, 33.469467, 42.410213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.126411, 34.251152, 42.601582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.757435, 34.115807, 42.527168>,  <34.536049, 34.034599, 42.482521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.757435, 34.115807, 42.527168>,  <35.126411, 34.251152, 42.601582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.757435, 34.115807, 42.527168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359629, 0.577437, 0.732962,
		-0.140589, 0.743018, -0.654339,
		-0.922444, -0.338366, -0.186029,
		34.480701, 34.014297, 42.471359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.784897, 34.720848, 43.004559>,  <35.126411, 34.251152, 42.601582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.784897, 34.720848, 43.004559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.477566, 34.484825, 42.905365>,  <34.293167, 34.343212, 42.845848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.477566, 34.484825, 42.905365>,  <34.784897, 34.720848, 43.004559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.477566, 34.484825, 42.905365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555409, 0.422096, 0.716489,
		-0.318099, 0.688233, -0.652034,
		-0.768332, -0.590060, -0.247983,
		34.247066, 34.307808, 42.830971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.164642, 35.149807, 42.805183>,  <34.784897, 34.720848, 43.004559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.164642, 35.149807, 42.805183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.037498, 34.796612, 42.943344>,  <33.961212, 34.584694, 43.026241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.037498, 34.796612, 42.943344>,  <34.164642, 35.149807, 42.805183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.037498, 34.796612, 42.943344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501518, 0.465741, 0.729085,
		-0.804638, 0.058524, -0.590874,
		-0.317863, -0.882984, 0.345402,
		33.942139, 34.531715, 43.046967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.556252, 35.225784, 43.195576>,  <34.164642, 35.149807, 42.805183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.556252, 35.225784, 43.195576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.647289, 34.852600, 43.307137>,  <33.701912, 34.628689, 43.374073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.647289, 34.852600, 43.307137>,  <33.556252, 35.225784, 43.195576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.647289, 34.852600, 43.307137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388054, 0.175790, 0.904716,
		-0.893093, -0.314136, -0.322031,
		0.227594, -0.932961, 0.278899,
		33.715569, 34.572712, 43.390808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.874229, 34.874062, 43.378574>,  <33.556252, 35.225784, 43.195576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.874229, 34.874062, 43.378574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.204613, 34.727406, 43.549862>,  <33.402843, 34.639412, 43.652634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.204613, 34.727406, 43.549862>,  <32.874229, 34.874062, 43.378574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.204613, 34.727406, 43.549862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355044, 0.251702, 0.900327,
		-0.437881, -0.895667, 0.077721,
		0.825956, -0.366642, 0.428217,
		33.452400, 34.617413, 43.678326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.670212, 34.434586, 43.850651>,  <32.874229, 34.874062, 43.378574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.670212, 34.434586, 43.850651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.030766, 34.532700, 43.993393>,  <33.247097, 34.591568, 44.079037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.030766, 34.532700, 43.993393>,  <32.670212, 34.434586, 43.850651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.030766, 34.532700, 43.993393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404690, 0.183998, 0.895752,
		0.154046, -0.951832, 0.265114,
		0.901385, 0.245276, 0.356853,
		33.301182, 34.606285, 44.100449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.551144, 33.728146, 44.016823>,  <32.670212, 34.434586, 43.850651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.551144, 33.728146, 44.016823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.220940, 33.538116, 44.138702>,  <32.022816, 33.424099, 44.211830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.220940, 33.538116, 44.138702>,  <32.551144, 33.728146, 44.016823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.220940, 33.538116, 44.138702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291869, -0.102729, -0.950926,
		0.483061, -0.873929, -0.053855,
		-0.825509, -0.475073, 0.304697,
		31.973288, 33.395596, 44.230110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.583603, 33.094471, 43.684032>,  <32.551144, 33.728146, 44.016823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.583603, 33.094471, 43.684032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.196602, 33.150486, 43.768257>,  <31.964403, 33.184097, 43.818790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.196602, 33.150486, 43.768257>,  <32.583603, 33.094471, 43.684032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.196602, 33.150486, 43.768257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225845, -0.103922, -0.968604,
		-0.113757, -0.984678, 0.132171,
		-0.967499, 0.140036, 0.210563,
		31.906353, 33.192497, 43.831425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.267490, 32.459057, 43.443428>,  <32.583603, 33.094471, 43.684032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.267490, 32.459057, 43.443428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.955332, 32.708000, 43.467621>,  <31.768036, 32.857365, 43.482136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.955332, 32.708000, 43.467621>,  <32.267490, 32.459057, 43.443428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.955332, 32.708000, 43.467621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323299, -0.318808, -0.890977,
		-0.535221, -0.714868, 0.450002,
		-0.780395, 0.622355, 0.060483,
		31.721212, 32.894707, 43.485767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.726030, 32.069855, 43.189140>,  <32.267490, 32.459057, 43.443428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.726030, 32.069855, 43.189140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.644104, 32.456383, 43.126808>,  <31.594948, 32.688297, 43.089409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.644104, 32.456383, 43.126808>,  <31.726030, 32.069855, 43.189140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.644104, 32.456383, 43.126808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341012, -0.219676, -0.914031,
		-0.917476, -0.134068, 0.374518,
		-0.204815, 0.966317, -0.155829,
		31.582659, 32.746277, 43.080059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.123875, 32.105034, 42.748844>,  <31.726030, 32.069855, 43.189140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.123875, 32.105034, 42.748844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.271530, 32.473972, 42.703197>,  <31.360123, 32.695335, 42.675808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.271530, 32.473972, 42.703197>,  <31.123875, 32.105034, 42.748844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.271530, 32.473972, 42.703197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239971, -0.024036, -0.970482,
		-0.897860, 0.385626, 0.212463,
		0.369137, 0.922342, -0.114120,
		31.382271, 32.750675, 42.668961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.597284, 32.395973, 42.450150>,  <31.123875, 32.105034, 42.748844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.597284, 32.395973, 42.450150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.920362, 32.611259, 42.353851>,  <31.114210, 32.740429, 42.296074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.920362, 32.611259, 42.353851>,  <30.597284, 32.395973, 42.450150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.920362, 32.611259, 42.353851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198251, -0.136625, -0.970582,
		-0.555271, 0.831661, -0.003650,
		0.807695, 0.538213, -0.240742,
		31.162670, 32.772724, 42.281628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.352457, 32.951229, 42.009682>,  <30.597284, 32.395973, 42.450150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.352457, 32.951229, 42.009682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.742977, 32.894726, 41.944099>,  <30.977289, 32.860825, 41.904751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.742977, 32.894726, 41.944099>,  <30.352457, 32.951229, 42.009682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.742977, 32.894726, 41.944099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183146, -0.135669, -0.973679,
		0.115300, 0.980632, -0.158325,
		0.976301, -0.141262, -0.163956,
		31.035868, 32.852348, 41.894913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.433672, 33.382290, 41.459900>,  <30.352457, 32.951229, 42.009682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.433672, 33.382290, 41.459900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.747770, 33.134624, 41.458069>,  <30.936230, 32.986023, 41.456970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.747770, 33.134624, 41.458069>,  <30.433672, 33.382290, 41.459900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.747770, 33.134624, 41.458069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088026, -0.104312, -0.990641,
		0.612896, 0.778300, -0.136413,
		0.785245, -0.619168, -0.004578,
		30.983343, 32.948875, 41.456696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.736769, 33.462528, 40.803345>,  <30.433672, 33.382290, 41.459900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.736769, 33.462528, 40.803345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.898785, 33.119160, 40.929237>,  <30.995995, 32.913139, 41.004772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.898785, 33.119160, 40.929237>,  <30.736769, 33.462528, 40.803345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.898785, 33.119160, 40.929237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234935, -0.234960, -0.943186,
		0.883601, 0.455968, 0.106505,
		0.405038, -0.858422, 0.314733,
		31.020296, 32.861633, 41.023659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.363268, 33.407131, 40.414982>,  <30.736769, 33.462528, 40.803345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.363268, 33.407131, 40.414982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.272184, 33.040707, 40.547028>,  <31.217535, 32.820850, 40.626255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.272184, 33.040707, 40.547028>,  <31.363268, 33.407131, 40.414982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.272184, 33.040707, 40.547028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188279, -0.374048, -0.908097,
		0.955354, -0.144626, 0.257649,
		-0.227707, -0.916063, 0.330118,
		31.203873, 32.765888, 40.646065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.800016, 33.060635, 40.041660>,  <31.363268, 33.407131, 40.414982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.800016, 33.060635, 40.041660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.517273, 32.797829, 40.146496>,  <31.347628, 32.640144, 40.209396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.517273, 32.797829, 40.146496>,  <31.800016, 33.060635, 40.041660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.517273, 32.797829, 40.146496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057175, -0.422370, -0.904619,
		0.705042, -0.624451, 0.336120,
		-0.706857, -0.657012, 0.262086,
		31.305216, 32.600727, 40.225121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.118179, 32.475227, 39.759293>,  <31.800016, 33.060635, 40.041660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.118179, 32.475227, 39.759293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.723421, 32.425251, 39.800140>,  <31.486567, 32.395264, 39.824650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.723421, 32.425251, 39.800140>,  <32.118179, 32.475227, 39.759293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.723421, 32.425251, 39.800140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033150, -0.462370, -0.886068,
		0.157924, -0.877840, 0.452168,
		-0.986895, -0.124943, 0.102120,
		31.427353, 32.387768, 39.830776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.865126, 31.751471, 39.595844>,  <32.118179, 32.475227, 39.759293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.865126, 31.751471, 39.595844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.576839, 32.013500, 39.505116>,  <31.403868, 32.170719, 39.450680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.576839, 32.013500, 39.505116>,  <31.865126, 31.751471, 39.595844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.576839, 32.013500, 39.505116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171029, -0.485100, -0.857570,
		-0.671804, -0.579270, 0.461655,
		-0.720714, 0.655075, -0.226820,
		31.360624, 32.210022, 39.437069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.438385, 31.446753, 39.919537>,  <31.865126, 31.751471, 39.595844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.438385, 31.446753, 39.919537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.832512, 31.468235, 39.984375>,  <33.068989, 31.481125, 40.023277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.832512, 31.468235, 39.984375>,  <32.438385, 31.446753, 39.919537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.832512, 31.468235, 39.984375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147899, 0.742863, 0.652902,
		-0.085351, -0.667286, 0.739895,
		0.985313, 0.053704, 0.162095,
		33.128105, 31.484346, 40.033005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.561665, 31.968332, 40.527489>,  <32.438385, 31.446753, 39.919537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.561665, 31.968332, 40.527489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.946781, 31.941319, 40.422825>,  <33.177853, 31.925110, 40.360027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.946781, 31.941319, 40.422825>,  <32.561665, 31.968332, 40.527489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.946781, 31.941319, 40.422825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220963, 0.754155, 0.618406,
		0.155566, -0.653215, 0.741019,
		0.962795, -0.067535, -0.261657,
		33.235619, 31.921059, 40.344326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.953926, 31.880714, 41.088360>,  <32.561665, 31.968332, 40.527489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.953926, 31.880714, 41.088360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.176495, 32.090302, 40.830414>,  <33.310036, 32.216053, 40.675648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.176495, 32.090302, 40.830414>,  <32.953926, 31.880714, 41.088360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.176495, 32.090302, 40.830414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322309, 0.579228, 0.748740,
		0.765839, -0.624463, 0.153417,
		0.556424, 0.523967, -0.644865,
		33.343422, 32.247490, 40.636955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.322338, 31.253000, 41.258698>,  <32.953926, 31.880714, 41.088360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.322338, 31.253000, 41.258698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.720390, 31.291435, 41.267406>,  <33.959221, 31.314495, 41.272633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.720390, 31.291435, 41.267406>,  <33.322338, 31.253000, 41.258698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.720390, 31.291435, 41.267406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016561, -0.380963, 0.924442,
		0.097120, -0.919584, -0.380701,
		0.995135, 0.096086, 0.021770,
		34.018932, 31.320261, 41.273937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.577290, 30.548006, 41.414288>,  <33.322338, 31.253000, 41.258698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.577290, 30.548006, 41.414288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.889786, 30.784431, 41.494598>,  <34.077282, 30.926287, 41.542786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.889786, 30.784431, 41.494598>,  <33.577290, 30.548006, 41.414288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.889786, 30.784431, 41.494598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150470, -0.490466, 0.858372,
		0.605828, -0.640380, -0.472108,
		0.781237, 0.591063, 0.200781,
		34.124157, 30.961750, 41.554832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.230225, 30.091768, 41.577209>,  <33.577290, 30.548006, 41.414288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.230225, 30.091768, 41.577209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.254093, 30.457558, 41.737297>,  <34.268414, 30.677032, 41.833351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.254093, 30.457558, 41.737297>,  <34.230225, 30.091768, 41.577209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.254093, 30.457558, 41.737297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233496, -0.402595, 0.885097,
		0.970525, 0.040636, -0.237549,
		0.059669, 0.914475, 0.400217,
		34.271996, 30.731901, 41.857361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.735130, 30.021187, 42.016727>,  <34.230225, 30.091768, 41.577209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.735130, 30.021187, 42.016727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.537643, 30.338644, 42.158928>,  <34.419151, 30.529118, 42.244247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.537643, 30.338644, 42.158928>,  <34.735130, 30.021187, 42.016727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.537643, 30.338644, 42.158928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114936, -0.345657, 0.931295,
		0.861996, 0.500652, 0.079437,
		-0.493713, 0.793643, 0.355498,
		34.389530, 30.576736, 42.265579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.095306, 30.189211, 42.537022>,  <34.735130, 30.021187, 42.016727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.095306, 30.189211, 42.537022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.757309, 30.395548, 42.593445>,  <34.554512, 30.519350, 42.627296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.757309, 30.395548, 42.593445>,  <35.095306, 30.189211, 42.537022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.757309, 30.395548, 42.593445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180659, 0.027090, 0.983173,
		0.503342, 0.856254, -0.116083,
		-0.844990, 0.515844, 0.141055,
		34.503811, 30.550301, 42.635761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.273907, 30.779034, 43.003353>,  <35.095306, 30.189211, 42.537022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.273907, 30.779034, 43.003353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.887726, 30.688782, 43.055504>,  <34.656017, 30.634630, 43.086796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.887726, 30.688782, 43.055504>,  <35.273907, 30.779034, 43.003353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.887726, 30.688782, 43.055504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094673, 0.162449, 0.982165,
		-0.242787, 0.960573, -0.135475,
		-0.965449, -0.225631, 0.130381,
		34.598091, 30.621092, 43.094620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.888229, 31.342590, 43.408623>,  <35.273907, 30.779034, 43.003353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.888229, 31.342590, 43.408623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.670761, 31.010538, 43.458103>,  <34.540279, 30.811306, 43.487793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.670761, 31.010538, 43.458103>,  <34.888229, 31.342590, 43.408623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.670761, 31.010538, 43.458103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069778, 0.191583, 0.978993,
		-0.836392, 0.523620, -0.162084,
		-0.543673, -0.830132, 0.123701,
		34.507660, 30.761499, 43.495213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.446663, 31.488037, 44.045444>,  <34.888229, 31.342590, 43.408623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.446663, 31.488037, 44.045444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.378372, 31.098478, 43.985611>,  <34.337399, 30.864742, 43.949711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.378372, 31.098478, 43.985611>,  <34.446663, 31.488037, 44.045444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.378372, 31.098478, 43.985611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190427, -0.116333, 0.974784,
		-0.966741, 0.194910, -0.165595,
		-0.170731, -0.973898, -0.149580,
		34.327152, 30.806309, 43.940739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.959091, 31.418941, 44.433685>,  <34.446663, 31.488037, 44.045444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.959091, 31.418941, 44.433685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.093956, 31.046377, 44.378845>,  <34.174873, 30.822840, 44.345940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.093956, 31.046377, 44.378845>,  <33.959091, 31.418941, 44.433685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.093956, 31.046377, 44.378845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041674, -0.160251, 0.986196,
		-0.940524, -0.326795, -0.092846,
		0.337163, -0.931410, -0.137101,
		34.195107, 30.766954, 44.337715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.537952, 30.932472, 44.773720>,  <33.959091, 31.418941, 44.433685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.537952, 30.932472, 44.773720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.893673, 30.753462, 44.736046>,  <34.107105, 30.646055, 44.713444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.893673, 30.753462, 44.736046>,  <33.537952, 30.932472, 44.773720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.893673, 30.753462, 44.736046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070645, -0.069039, 0.995109,
		-0.451838, -0.891603, -0.029781,
		0.889298, -0.447525, -0.094181,
		34.160461, 30.619205, 44.707790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.544514, 30.335678, 45.221291>,  <33.537952, 30.932472, 44.773720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.544514, 30.335678, 45.221291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.931286, 30.416842, 45.159485>,  <34.163349, 30.465540, 45.122402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.931286, 30.416842, 45.159485>,  <33.544514, 30.335678, 45.221291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.931286, 30.416842, 45.159485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160246, -0.012014, 0.987004,
		0.198416, -0.979124, -0.044133,
		0.966929, 0.202910, -0.154517,
		34.221363, 30.477715, 45.113129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.929996, 29.891489, 45.816174>,  <33.544514, 30.335678, 45.221291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.929996, 29.891489, 45.816174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.210003, 30.142487, 45.679802>,  <34.378006, 30.293085, 45.597980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.210003, 30.142487, 45.679802>,  <33.929996, 29.891489, 45.816174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.210003, 30.142487, 45.679802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339717, 0.127318, 0.931870,
		0.628149, -0.768142, -0.124045,
		0.700015, 0.627494, -0.340926,
		34.420006, 30.330734, 45.577522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.700661, 29.693062, 46.010853>,  <33.929996, 29.891489, 45.816174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.700661, 29.693062, 46.010853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.666073, 30.087927, 45.957146>,  <34.645321, 30.324846, 45.924919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.666073, 30.087927, 45.957146>,  <34.700661, 29.693062, 46.010853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.666073, 30.087927, 45.957146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226444, 0.150723, 0.962292,
		0.970178, 0.052809, -0.236571,
		-0.086475, 0.987165, -0.134269,
		34.640129, 30.384077, 45.916866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.223209, 29.927187, 46.406971>,  <34.700661, 29.693062, 46.010853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.223209, 29.927187, 46.406971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.033554, 30.273397, 46.342407>,  <34.919762, 30.481125, 46.303669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.033554, 30.273397, 46.342407>,  <35.223209, 29.927187, 46.406971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.033554, 30.273397, 46.342407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194182, 0.281613, 0.939674,
		0.858769, 0.414195, -0.301594,
		-0.474140, 0.865527, -0.161411,
		34.891312, 30.533056, 46.293983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.684643, 30.509542, 46.553692>,  <35.223209, 29.927187, 46.406971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.684643, 30.509542, 46.553692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.310917, 30.648876, 46.583939>,  <35.086681, 30.732477, 46.602085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.310917, 30.648876, 46.583939>,  <35.684643, 30.509542, 46.553692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.310917, 30.648876, 46.583939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177306, 0.270141, 0.946354,
		0.309222, 0.897600, -0.314158,
		-0.934315, 0.348336, 0.075616,
		35.030621, 30.753376, 46.606625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.741627, 31.259315, 46.780334>,  <35.684643, 30.509542, 46.553692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.741627, 31.259315, 46.780334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.387627, 31.105221, 46.884922>,  <35.175228, 31.012764, 46.947674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.387627, 31.105221, 46.884922>,  <35.741627, 31.259315, 46.780334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.387627, 31.105221, 46.884922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167423, 0.260708, 0.950790,
		-0.434446, 0.885226, -0.166230,
		-0.885001, -0.385236, 0.261471,
		35.122128, 30.989651, 46.963364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.497787, 31.730703, 47.282913>,  <35.741627, 31.259315, 46.780334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.497787, 31.730703, 47.282913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.253448, 31.421047, 47.349331>,  <35.106846, 31.235252, 47.389179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.253448, 31.421047, 47.349331>,  <35.497787, 31.730703, 47.282913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.253448, 31.421047, 47.349331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010878, 0.201489, 0.979430,
		-0.791673, 0.600089, -0.114658,
		-0.610848, -0.774142, 0.166041,
		35.070194, 31.188805, 47.399143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.939552, 32.036079, 47.749184>,  <35.497787, 31.730703, 47.282913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.939552, 32.036079, 47.749184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.961376, 31.637432, 47.773788>,  <34.974472, 31.398245, 47.788551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.961376, 31.637432, 47.773788>,  <34.939552, 32.036079, 47.749184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.961376, 31.637432, 47.773788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064582, 0.064998, 0.995793,
		-0.996420, -0.050361, 0.067910,
		0.054564, -0.996614, 0.061513,
		34.977745, 31.338448, 47.792244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.561520, 31.927767, 48.264610>,  <34.939552, 32.036079, 47.749184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.561520, 31.927767, 48.264610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.730930, 31.571236, 48.199917>,  <34.832577, 31.357317, 48.161102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.730930, 31.571236, 48.199917>,  <34.561520, 31.927767, 48.264610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.730930, 31.571236, 48.199917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049393, -0.155549, 0.986592,
		-0.904534, -0.425841, -0.021855,
		0.423532, -0.891327, -0.161733,
		34.857990, 31.303837, 48.151398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.265587, 31.605619, 48.838299>,  <34.561520, 31.927767, 48.264610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.265587, 31.605619, 48.838299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.577362, 31.387449, 48.715015>,  <34.764427, 31.256548, 48.641045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.577362, 31.387449, 48.715015>,  <34.265587, 31.605619, 48.838299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.577362, 31.387449, 48.715015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169107, -0.290536, 0.941802,
		-0.603229, -0.786193, -0.134218,
		0.779434, -0.545426, -0.308211,
		34.811192, 31.223822, 48.622551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.270477, 30.928076, 49.117290>,  <34.265587, 31.605619, 48.838299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.270477, 30.928076, 49.117290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.655415, 31.012852, 49.049191>,  <34.886375, 31.063717, 49.008331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.655415, 31.012852, 49.049191>,  <34.270477, 30.928076, 49.117290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.655415, 31.012852, 49.049191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217725, -0.225871, 0.949515,
		0.162788, -0.950822, -0.263510,
		0.962339, 0.211942, -0.170249,
		34.944115, 31.076435, 48.998116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.652931, 30.416815, 49.455696>,  <34.270477, 30.928076, 49.117290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.652931, 30.416815, 49.455696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.928654, 30.697618, 49.384102>,  <35.094090, 30.866100, 49.341145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.928654, 30.697618, 49.384102>,  <34.652931, 30.416815, 49.455696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.928654, 30.697618, 49.384102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314075, -0.066940, 0.947035,
		0.652847, -0.709015, -0.266626,
		0.689310, 0.702009, -0.178982,
		35.135448, 30.908222, 49.330406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.304863, 30.169302, 49.724957>,  <34.652931, 30.416815, 49.455696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.304863, 30.169302, 49.724957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.337048, 30.567816, 49.712685>,  <35.356358, 30.806925, 49.705322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.337048, 30.567816, 49.712685>,  <35.304863, 30.169302, 49.724957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.337048, 30.567816, 49.712685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130315, 0.020004, 0.991271,
		0.988202, -0.083760, -0.128221,
		0.080464, 0.996285, -0.030683,
		35.361187, 30.866701, 49.703480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.989460, 30.349812, 50.019661>,  <35.304863, 30.169302, 49.724957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.989460, 30.349812, 50.019661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.776585, 30.686672, 50.054440>,  <35.648861, 30.888788, 50.075306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.776585, 30.686672, 50.054440>,  <35.989460, 30.349812, 50.019661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.776585, 30.686672, 50.054440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310967, 0.098916, 0.945259,
		0.787449, 0.530093, -0.314523,
		-0.532187, 0.842150, 0.086950,
		35.616928, 30.939318, 50.080524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.294170, 30.807236, 50.437984>,  <35.989460, 30.349812, 50.019661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.294170, 30.807236, 50.437984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.936134, 30.985151, 50.450439>,  <35.721313, 31.091900, 50.457912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.936134, 30.985151, 50.450439>,  <36.294170, 30.807236, 50.437984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.936134, 30.985151, 50.450439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093594, 0.119159, 0.988454,
		0.435943, 0.887674, -0.148288,
		-0.895095, 0.444788, 0.031134,
		35.667606, 31.118587, 50.459778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.400730, 31.483053, 50.802948>,  <36.294170, 30.807236, 50.437984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.400730, 31.483053, 50.802948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.017673, 31.379753, 50.853916>,  <35.787842, 31.317772, 50.884499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.017673, 31.379753, 50.853916>,  <36.400730, 31.483053, 50.802948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.017673, 31.379753, 50.853916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157129, -0.097779, 0.982726,
		-0.241332, 0.961116, 0.134216,
		-0.957637, -0.258252, 0.127422,
		35.730381, 31.302277, 50.892143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.955467, 32.065868, 50.782742>,  <36.400730, 31.483053, 50.802948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.955467, 32.065868, 50.782742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.284561, 31.840715, 50.814434>,  <37.482018, 31.705624, 50.833450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.284561, 31.840715, 50.814434>,  <36.955467, 32.065868, 50.782742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.284561, 31.840715, 50.814434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026127, -0.101798, -0.994462,
		0.567831, 0.820244, -0.069045,
		0.822730, -0.562883, 0.079235,
		37.531380, 31.671850, 50.838203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.538815, 32.390396, 50.482090>,  <36.955467, 32.065868, 50.782742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.538815, 32.390396, 50.482090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.607250, 31.996870, 50.460762>,  <37.648312, 31.760756, 50.447968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.607250, 31.996870, 50.460762>,  <37.538815, 32.390396, 50.482090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.607250, 31.996870, 50.460762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061591, 0.064688, -0.996003,
		0.983328, 0.167123, 0.071662,
		0.171091, -0.983811, -0.053316,
		37.658577, 31.701727, 50.444767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.927319, 32.362919, 49.867134>,  <37.538815, 32.390396, 50.482090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.927319, 32.362919, 49.867134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.871574, 31.972862, 49.936039>,  <37.838127, 31.738829, 49.977383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.871574, 31.972862, 49.936039>,  <37.927319, 32.362919, 49.867134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.871574, 31.972862, 49.936039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060473, -0.182013, -0.981435,
		0.988393, -0.126359, 0.084336,
		-0.139363, -0.975143, 0.172259,
		37.829765, 31.680319, 49.987717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.366898, 32.014221, 49.447651>,  <37.927319, 32.362919, 49.867134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.366898, 32.014221, 49.447651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.076012, 31.747530, 49.512928>,  <37.901482, 31.587515, 49.552094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.076012, 31.747530, 49.512928>,  <38.366898, 32.014221, 49.447651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.076012, 31.747530, 49.512928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047572, -0.188220, -0.980974,
		0.684763, -0.721139, 0.105158,
		-0.727212, -0.666732, 0.163192,
		37.857849, 31.547510, 49.561886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.580986, 31.282965, 49.213356>,  <38.366898, 32.014221, 49.447651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.580986, 31.282965, 49.213356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.181801, 31.275169, 49.237637>,  <37.942287, 31.270493, 49.252205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.181801, 31.275169, 49.237637>,  <38.580986, 31.282965, 49.213356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.181801, 31.275169, 49.237637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048589, -0.383946, -0.922076,
		0.041279, -0.923150, 0.382218,
		-0.997966, -0.019491, 0.060704,
		37.882412, 31.269321, 49.255848>
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
