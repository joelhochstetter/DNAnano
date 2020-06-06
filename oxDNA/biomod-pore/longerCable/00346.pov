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
	<24.597433, 34.255302, 35.062279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.523615, 34.647053, 35.095200>,  <24.479324, 34.882103, 35.114952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.523615, 34.647053, 35.095200>,  <24.597433, 34.255302, 35.062279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.523615, 34.647053, 35.095200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.745741, 0.194083, -0.637341,
		-0.640167, -0.056240, -0.766174,
		-0.184545, 0.979372, 0.082305,
		24.468252, 34.940865, 35.119892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.505117, 34.531250, 34.404213>,  <24.597433, 34.255302, 35.062279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.505117, 34.531250, 34.404213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.645424, 34.822941, 34.639225>,  <24.729609, 34.997955, 34.780231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.645424, 34.822941, 34.639225>,  <24.505117, 34.531250, 34.404213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.645424, 34.822941, 34.639225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.710070, 0.201934, -0.674554,
		-0.610544, 0.653801, -0.446969,
		0.350766, 0.729224, 0.587534,
		24.750654, 35.041710, 34.815487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.534702, 35.384598, 34.251427>,  <24.505117, 34.531250, 34.404213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.534702, 35.384598, 34.251427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.843611, 35.250698, 34.467403>,  <25.028955, 35.170357, 34.596989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.843611, 35.250698, 34.467403>,  <24.534702, 35.384598, 34.251427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.843611, 35.250698, 34.467403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.631912, 0.317210, -0.707152,
		0.065444, 0.887310, 0.456505,
		0.772272, -0.334750, 0.539943,
		25.075293, 35.150272, 34.629387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.034142, 35.975227, 34.246254>,  <24.534702, 35.384598, 34.251427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.034142, 35.975227, 34.246254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.251823, 35.651028, 34.332912>,  <25.382433, 35.456509, 34.384907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.251823, 35.651028, 34.332912>,  <25.034142, 35.975227, 34.246254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.251823, 35.651028, 34.332912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615539, 0.210281, -0.759535,
		0.570046, 0.546694, 0.613329,
		0.544205, -0.810498, 0.216641,
		25.415085, 35.407879, 34.397903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.627523, 36.208233, 34.219887>,  <25.034142, 35.975227, 34.246254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.627523, 36.208233, 34.219887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.672550, 35.813099, 34.176960>,  <25.699566, 35.576019, 34.151203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.672550, 35.813099, 34.176960>,  <25.627523, 36.208233, 34.219887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.672550, 35.813099, 34.176960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.741003, 0.155408, -0.653272,
		0.662000, -0.005984, 0.749480,
		0.112566, -0.987832, -0.107314,
		25.706320, 35.516750, 34.144764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.380348, 35.950806, 34.430977>,  <25.627523, 36.208233, 34.219887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.380348, 35.950806, 34.430977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.248257, 35.700069, 34.148693>,  <26.169003, 35.549629, 33.979324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.248257, 35.700069, 34.148693>,  <26.380348, 35.950806, 34.430977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.248257, 35.700069, 34.148693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.764068, 0.261461, -0.589778,
		0.554210, -0.733969, 0.392606,
		-0.330228, -0.626839, -0.705707,
		26.149189, 35.512016, 33.936981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.015409, 35.484741, 34.194038>,  <26.380348, 35.950806, 34.430977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.015409, 35.484741, 34.194038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.734800, 35.538052, 33.914009>,  <26.566435, 35.570038, 33.745991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.734800, 35.538052, 33.914009>,  <27.015409, 35.484741, 34.194038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.734800, 35.538052, 33.914009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.692732, 0.358147, -0.625982,
		0.167298, -0.924104, -0.343576,
		-0.701523, 0.133280, -0.700073,
		26.524343, 35.578037, 33.703987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.321493, 35.199242, 33.584801>,  <27.015409, 35.484741, 34.194038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.321493, 35.199242, 33.584801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.065010, 35.495850, 33.505806>,  <26.911119, 35.673813, 33.458408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.065010, 35.495850, 33.505806>,  <27.321493, 35.199242, 33.584801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.065010, 35.495850, 33.505806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.693676, 0.450060, -0.562370,
		-0.328126, -0.497590, -0.802956,
		-0.641208, 0.741519, -0.197490,
		26.872648, 35.718304, 33.446560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.370140, 35.273273, 32.866840>,  <27.321493, 35.199242, 33.584801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.370140, 35.273273, 32.866840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.250217, 35.617950, 33.030594>,  <27.178263, 35.824757, 33.128845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.250217, 35.617950, 33.030594>,  <27.370140, 35.273273, 32.866840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.250217, 35.617950, 33.030594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.838374, 0.442755, -0.317959,
		-0.455241, 0.247892, -0.855164,
		-0.299808, 0.861695, 0.409387,
		27.160275, 35.876457, 33.153408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.341702, 35.878902, 32.376156>,  <27.370140, 35.273273, 32.866840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.341702, 35.878902, 32.376156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.372881, 36.055988, 32.733463>,  <27.391588, 36.162239, 32.947845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.372881, 36.055988, 32.733463>,  <27.341702, 35.878902, 32.376156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.372881, 36.055988, 32.733463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.781956, 0.528661, -0.330246,
		-0.618441, 0.724237, -0.304979,
		0.077947, 0.442718, 0.893267,
		27.396265, 36.188805, 33.001442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.396141, 36.557419, 32.346916>,  <27.341702, 35.878902, 32.376156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.396141, 36.557419, 32.346916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.597466, 36.507137, 32.688881>,  <27.718260, 36.476971, 32.894058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.597466, 36.507137, 32.688881>,  <27.396141, 36.557419, 32.346916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.597466, 36.507137, 32.688881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.765329, 0.524184, -0.373500,
		-0.401182, 0.842277, 0.360031,
		0.503313, -0.125701, 0.854912,
		27.748459, 36.469425, 32.945354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.632828, 37.245232, 32.548622>,  <27.396141, 36.557419, 32.346916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.632828, 37.245232, 32.548622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.860971, 36.956348, 32.705139>,  <27.997858, 36.783020, 32.799049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.860971, 36.956348, 32.705139>,  <27.632828, 37.245232, 32.548622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.860971, 36.956348, 32.705139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.812920, 0.428061, -0.394874,
		0.117684, 0.543308, 0.831244,
		0.570361, -0.722205, 0.391290,
		28.032080, 36.739685, 32.822525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.243946, 36.960308, 32.128899>,  <27.632828, 37.245232, 32.548622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.243946, 36.960308, 32.128899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.630623, 36.990402, 32.226753>,  <28.862629, 37.008457, 32.285465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.630623, 36.990402, 32.226753>,  <28.243946, 36.960308, 32.128899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.630623, 36.990402, 32.226753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092438, 0.788666, -0.607834,
		-0.238664, 0.610202, 0.755443,
		0.966693, 0.075236, 0.244632,
		28.920631, 37.012974, 32.300144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.592651, 36.354603, 31.987797>,  <28.243946, 36.960308, 32.128899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.592651, 36.354603, 31.987797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.969376, 36.232449, 32.043987>,  <29.195410, 36.159157, 32.077702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.969376, 36.232449, 32.043987>,  <28.592651, 36.354603, 31.987797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.969376, 36.232449, 32.043987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003070, 0.410065, 0.912051,
		-0.336135, -0.859409, 0.385266,
		0.941809, -0.305389, 0.140476,
		29.251919, 36.140831, 32.086128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.690210, 36.253544, 32.737820>,  <28.592651, 36.354603, 31.987797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.690210, 36.253544, 32.737820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.629692, 36.583862, 32.955135>,  <28.593382, 36.782055, 33.085526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.629692, 36.583862, 32.955135>,  <28.690210, 36.253544, 32.737820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.629692, 36.583862, 32.955135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.640980, -0.500362, 0.582050,
		0.752499, -0.260175, 0.605024,
		-0.151296, 0.825801, 0.543289,
		28.584303, 36.831604, 33.118122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.744934, 36.151501, 33.562588>,  <28.690210, 36.253544, 32.737820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.744934, 36.151501, 33.562588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.506947, 36.443447, 33.427940>,  <28.364155, 36.618614, 33.347153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.506947, 36.443447, 33.427940>,  <28.744934, 36.151501, 33.562588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.506947, 36.443447, 33.427940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.728263, -0.312332, 0.609985,
		0.340069, 0.608069, 0.717360,
		-0.594968, 0.729863, -0.336619,
		28.328457, 36.662407, 33.326954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.224966, 36.365261, 34.134968>,  <28.744934, 36.151501, 33.562588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.224966, 36.365261, 34.134968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.082848, 36.402565, 33.762932>,  <27.997576, 36.424946, 33.539711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.082848, 36.402565, 33.762932>,  <28.224966, 36.365261, 34.134968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.082848, 36.402565, 33.762932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.897698, -0.311420, 0.311699,
		-0.260581, 0.945686, 0.194363,
		-0.355298, 0.093257, -0.930090,
		27.976259, 36.430542, 33.483906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.530920, 36.748337, 34.185459>,  <28.224966, 36.365261, 34.134968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.530920, 36.748337, 34.185459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.496246, 36.570770, 33.828712>,  <27.475443, 36.464230, 33.614666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.496246, 36.570770, 33.828712>,  <27.530920, 36.748337, 34.185459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.496246, 36.570770, 33.828712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.956176, -0.214241, 0.199569,
		-0.279666, 0.870081, -0.405889,
		-0.086683, -0.443914, -0.891866,
		27.470242, 36.437595, 33.561153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.813284, 36.938366, 33.899422>,  <27.530920, 36.748337, 34.185459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.813284, 36.938366, 33.899422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.914715, 36.627857, 33.668560>,  <26.975573, 36.441551, 33.530045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.914715, 36.627857, 33.668560>,  <26.813284, 36.938366, 33.899422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.914715, 36.627857, 33.668560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.946473, -0.322301, 0.017656,
		-0.199723, 0.541780, -0.816447,
		0.253576, -0.776271, -0.577151,
		26.990788, 36.394978, 33.495415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.320267, 36.849831, 33.301285>,  <26.813284, 36.938366, 33.899422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.320267, 36.849831, 33.301285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.476875, 36.487148, 33.364025>,  <26.570841, 36.269539, 33.401669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.476875, 36.487148, 33.364025>,  <26.320267, 36.849831, 33.301285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.476875, 36.487148, 33.364025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.910632, -0.406271, -0.075453,
		0.132139, -0.113296, -0.984735,
		0.391521, -0.906702, 0.156855,
		26.594332, 36.215137, 33.411083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.951918, 36.136631, 33.031380>,  <26.320267, 36.849831, 33.301285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.951918, 36.136631, 33.031380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.232689, 35.852230, 33.048199>,  <26.401152, 35.681587, 33.058292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.232689, 35.852230, 33.048199>,  <25.951918, 36.136631, 33.031380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.232689, 35.852230, 33.048199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447935, -0.394772, 0.802190,
		-0.553762, -0.581915, -0.595586,
		0.701928, -0.711006, 0.042050,
		26.443268, 35.638927, 33.060814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.653275, 35.524536, 32.789089>,  <25.951918, 36.136631, 33.031380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.653275, 35.524536, 32.789089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.952806, 35.502949, 33.053314>,  <26.132526, 35.489998, 33.211849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.952806, 35.502949, 33.053314>,  <25.653275, 35.524536, 32.789089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.952806, 35.502949, 33.053314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.616679, -0.421888, 0.664618,
		0.242814, -0.905040, -0.349204,
		0.748831, -0.053969, 0.660560,
		26.177456, 35.486759, 33.251484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.682110, 34.835384, 32.961815>,  <25.653275, 35.524536, 32.789089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.682110, 34.835384, 32.961815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.829809, 35.066917, 33.252636>,  <25.918428, 35.205837, 33.427128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.829809, 35.066917, 33.252636>,  <25.682110, 34.835384, 32.961815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.829809, 35.066917, 33.252636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522111, -0.517992, 0.677557,
		0.768802, -0.629788, 0.110950,
		0.369246, 0.578836, 0.727053,
		25.940582, 35.240570, 33.470753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.413050, 34.349979, 33.462570>,  <25.682110, 34.835384, 32.961815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.413050, 34.349979, 33.462570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.606224, 34.651707, 33.640457>,  <25.722130, 34.832745, 33.747189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.606224, 34.651707, 33.640457>,  <25.413050, 34.349979, 33.462570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.606224, 34.651707, 33.640457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440715, -0.229476, 0.867819,
		0.756665, -0.615097, 0.221617,
		0.482938, 0.754318, 0.444719,
		25.751106, 34.878002, 33.773872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.825056, 34.141121, 34.157940>,  <25.413050, 34.349979, 33.462570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.825056, 34.141121, 34.157940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.759901, 34.535759, 34.154060>,  <25.720808, 34.772541, 34.151733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.759901, 34.535759, 34.154060>,  <25.825056, 34.141121, 34.157940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.759901, 34.535759, 34.154060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274744, -0.035911, 0.960847,
		0.947620, 0.159176, 0.276911,
		-0.162888, 0.986597, -0.009702,
		25.711035, 34.831738, 34.151150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.012384, 34.329826, 34.760048>,  <25.825056, 34.141121, 34.157940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.012384, 34.329826, 34.760048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.829521, 34.665222, 34.641430>,  <25.719803, 34.866459, 34.570259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.829521, 34.665222, 34.641430>,  <26.012384, 34.329826, 34.760048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.829521, 34.665222, 34.641430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462738, 0.060501, 0.884428,
		0.759526, 0.541547, 0.360343,
		-0.457158, 0.838491, -0.296546,
		25.692373, 34.916771, 34.552467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.143646, 34.857750, 35.285755>,  <26.012384, 34.329826, 34.760048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.143646, 34.857750, 35.285755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.804192, 34.940159, 35.090870>,  <25.600519, 34.989605, 34.973938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.804192, 34.940159, 35.090870>,  <26.143646, 34.857750, 35.285755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.804192, 34.940159, 35.090870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502872, -0.028421, 0.863894,
		0.164130, 0.978135, 0.127720,
		-0.848635, 0.206018, -0.487212,
		25.549601, 35.001965, 34.944706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.819019, 35.328796, 35.626831>,  <26.143646, 34.857750, 35.285755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.819019, 35.328796, 35.626831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.504812, 35.151154, 35.454445>,  <25.316288, 35.044567, 35.351013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.504812, 35.151154, 35.454445>,  <25.819019, 35.328796, 35.626831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.504812, 35.151154, 35.454445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401916, -0.163426, 0.900975,
		-0.470559, 0.880944, -0.050120,
		-0.785517, -0.444106, -0.430967,
		25.269157, 35.017921, 35.325153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.272207, 35.779308, 35.888309>,  <25.819019, 35.328796, 35.626831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.272207, 35.779308, 35.888309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.169773, 35.409672, 35.774841>,  <25.108313, 35.187889, 35.706760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.169773, 35.409672, 35.774841>,  <25.272207, 35.779308, 35.888309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.169773, 35.409672, 35.774841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393816, -0.168266, 0.903657,
		-0.882796, 0.343130, -0.320831,
		-0.256087, -0.924093, -0.283675,
		25.092947, 35.132442, 35.689739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.755777, 35.478073, 36.358349>,  <25.272207, 35.779308, 35.888309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.755777, 35.478073, 36.358349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.881298, 35.138512, 36.188225>,  <24.956610, 34.934772, 36.086151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.881298, 35.138512, 36.188225>,  <24.755777, 35.478073, 36.358349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.881298, 35.138512, 36.188225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495855, -0.528515, 0.689057,
		-0.809727, -0.005335, -0.586782,
		0.313799, -0.848907, -0.425307,
		24.975437, 34.883839, 36.060635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.176367, 35.001781, 36.261738>,  <24.755777, 35.478073, 36.358349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.176367, 35.001781, 36.261738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.545906, 34.860935, 36.321754>,  <24.767630, 34.776428, 36.357765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.545906, 34.860935, 36.321754>,  <24.176367, 35.001781, 36.261738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.545906, 34.860935, 36.321754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317795, -0.487179, 0.813426,
		-0.213323, -0.799168, -0.561982,
		0.923851, -0.352118, 0.150045,
		24.823061, 34.755299, 36.366768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.091154, 34.218285, 36.297028>,  <24.176367, 35.001781, 36.261738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.091154, 34.218285, 36.297028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.442844, 34.319645, 36.458397>,  <24.653858, 34.380463, 36.555218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.442844, 34.319645, 36.458397>,  <24.091154, 34.218285, 36.297028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.442844, 34.319645, 36.458397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130094, -0.686907, 0.715006,
		0.458299, -0.681134, -0.570980,
		0.879225, 0.253405, 0.403420,
		24.706612, 34.395668, 36.579422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.487148, 33.686943, 36.491642>,  <24.091154, 34.218285, 36.297028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.487148, 33.686943, 36.491642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.584511, 33.984394, 36.740726>,  <24.642929, 34.162865, 36.890179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.584511, 33.984394, 36.740726>,  <24.487148, 33.686943, 36.491642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.584511, 33.984394, 36.740726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211577, -0.585851, 0.782313,
		0.946566, -0.322173, 0.014733,
		0.243408, 0.743629, 0.622711,
		24.657534, 34.207481, 36.927540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.955748, 33.492290, 37.081722>,  <24.487148, 33.686943, 36.491642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.955748, 33.492290, 37.081722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.707825, 33.788879, 37.184525>,  <24.559071, 33.966835, 37.246204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.707825, 33.788879, 37.184525>,  <24.955748, 33.492290, 37.081722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.707825, 33.788879, 37.184525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333970, -0.545590, 0.768632,
		0.710142, 0.390573, 0.585792,
		-0.619809, 0.741475, 0.257007,
		24.521881, 34.011322, 37.261627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.060438, 33.659203, 37.816917>,  <24.955748, 33.492290, 37.081722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.060438, 33.659203, 37.816917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.699945, 33.791821, 37.705307>,  <24.483650, 33.871391, 37.638340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.699945, 33.791821, 37.705307>,  <25.060438, 33.659203, 37.816917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.699945, 33.791821, 37.705307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413284, -0.464031, 0.783499,
		0.130292, 0.821432, 0.555223,
		-0.901232, 0.331549, -0.279026,
		24.429575, 33.891285, 37.621601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.223257, 32.895401, 38.170742>,  <25.060438, 33.659203, 37.816917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.223257, 32.895401, 38.170742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.568829, 32.707413, 38.098351>,  <25.776173, 32.594620, 38.054916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.568829, 32.707413, 38.098351>,  <25.223257, 32.895401, 38.170742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.568829, 32.707413, 38.098351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383245, 0.380386, 0.841682,
		-0.326722, -0.796515, 0.508740,
		0.863930, -0.469969, -0.180980,
		25.828009, 32.566422, 38.044056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.398514, 32.531754, 38.800766>,  <25.223257, 32.895401, 38.170742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.398514, 32.531754, 38.800766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.711851, 32.647861, 38.580906>,  <25.899853, 32.717525, 38.448990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.711851, 32.647861, 38.580906>,  <25.398514, 32.531754, 38.800766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.711851, 32.647861, 38.580906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445851, 0.353760, 0.822235,
		0.433118, -0.889154, 0.147697,
		0.783342, 0.290275, -0.549650,
		25.946854, 32.734943, 38.416012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.061646, 32.307087, 39.116512>,  <25.398514, 32.531754, 38.800766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.061646, 32.307087, 39.116512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.127863, 32.640137, 38.905106>,  <26.167593, 32.839966, 38.778263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.127863, 32.640137, 38.905106>,  <26.061646, 32.307087, 39.116512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.127863, 32.640137, 38.905106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499646, 0.391233, 0.772846,
		0.850264, -0.392010, -0.351253,
		0.165542, 0.832625, -0.528518,
		26.177525, 32.889923, 38.746552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.688868, 32.468388, 39.299709>,  <26.061646, 32.307087, 39.116512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.688868, 32.468388, 39.299709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.567648, 32.804028, 39.119011>,  <26.494917, 33.005413, 39.010593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.567648, 32.804028, 39.119011>,  <26.688868, 32.468388, 39.299709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.567648, 32.804028, 39.119011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442933, 0.543743, 0.712849,
		0.843784, 0.015936, -0.536447,
		-0.303049, 0.839100, -0.451743,
		26.476732, 33.055759, 38.983486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.238607, 32.926582, 39.370087>,  <26.688868, 32.468388, 39.299709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.238607, 32.926582, 39.370087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.904669, 33.144855, 39.341091>,  <26.704306, 33.275822, 39.323692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.904669, 33.144855, 39.341091>,  <27.238607, 32.926582, 39.370087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.904669, 33.144855, 39.341091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209774, 0.437120, 0.874598,
		0.508943, 0.714950, -0.479399,
		-0.834848, 0.545686, -0.072491,
		26.654215, 33.308559, 39.319344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.741409, 33.132099, 39.831238>,  <27.238607, 32.926582, 39.370087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.741409, 33.132099, 39.831238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.819586, 33.518951, 39.766178>,  <26.866491, 33.751064, 39.727142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.819586, 33.518951, 39.766178>,  <26.741409, 33.132099, 39.831238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.819586, 33.518951, 39.766178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463069, -0.055188, -0.884603,
		-0.864505, 0.248206, 0.437064,
		0.195443, 0.967134, -0.162647,
		26.878220, 33.809093, 39.717384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.128607, 33.631954, 39.782562>,  <26.741409, 33.132099, 39.831238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.128607, 33.631954, 39.782562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.432281, 33.761288, 39.556610>,  <26.614487, 33.838886, 39.421040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.432281, 33.761288, 39.556610>,  <26.128607, 33.631954, 39.782562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.432281, 33.761288, 39.556610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564440, -0.105106, -0.818755,
		-0.324100, 0.940431, 0.102705,
		0.759188, 0.323330, -0.564882,
		26.660038, 33.858288, 39.387146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.840977, 34.097260, 39.214901>,  <26.128607, 33.631954, 39.782562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.840977, 34.097260, 39.214901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.186199, 33.907280, 39.146133>,  <26.393333, 33.793293, 39.104874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.186199, 33.907280, 39.146133>,  <25.840977, 34.097260, 39.214901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.186199, 33.907280, 39.146133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402614, -0.441335, -0.801951,
		0.305012, 0.761346, -0.572119,
		0.863058, -0.474948, -0.171916,
		26.445116, 33.764797, 39.094559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.984314, 34.194977, 38.521141>,  <25.840977, 34.097260, 39.214901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.984314, 34.194977, 38.521141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.139740, 33.851688, 38.655289>,  <26.232996, 33.645714, 38.735775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.139740, 33.851688, 38.655289>,  <25.984314, 34.194977, 38.521141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.139740, 33.851688, 38.655289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280606, -0.456894, -0.844102,
		0.877654, 0.233884, -0.418356,
		0.388566, -0.858223, 0.335366,
		26.256310, 33.594223, 38.755898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.446413, 33.911163, 38.012794>,  <25.984314, 34.194977, 38.521141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.446413, 33.911163, 38.012794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.363436, 33.597965, 38.247364>,  <26.313648, 33.410046, 38.388103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.363436, 33.597965, 38.247364>,  <26.446413, 33.911163, 38.012794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.363436, 33.597965, 38.247364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207991, -0.550451, -0.808544,
		0.955880, -0.289698, -0.048667,
		-0.207445, -0.782993, 0.586420,
		26.301203, 33.363068, 38.423290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.817705, 33.365646, 37.705521>,  <26.446413, 33.911163, 38.012794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.817705, 33.365646, 37.705521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.552158, 33.177238, 37.937874>,  <26.392830, 33.064194, 38.077286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.552158, 33.177238, 37.937874>,  <26.817705, 33.365646, 37.705521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.552158, 33.177238, 37.937874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098291, -0.715045, -0.692134,
		0.741365, -0.516579, 0.428397,
		-0.663865, -0.471016, 0.580884,
		26.352999, 33.035934, 38.112141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.067995, 33.023804, 37.140915>,  <26.817705, 33.365646, 37.705521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.067995, 33.023804, 37.140915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.970987, 32.813583, 36.814732>,  <26.912783, 32.687450, 36.619022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.970987, 32.813583, 36.814732>,  <27.067995, 33.023804, 37.140915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.970987, 32.813583, 36.814732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.894786, 0.203639, -0.397352,
		0.374889, -0.826030, 0.420871,
		-0.242518, -0.525553, -0.815462,
		26.898232, 32.655918, 36.570091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.646381, 32.475216, 37.026348>,  <27.067995, 33.023804, 37.140915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.646381, 32.475216, 37.026348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.478460, 32.588734, 36.681507>,  <27.377708, 32.656845, 36.474602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.478460, 32.588734, 36.681507>,  <27.646381, 32.475216, 37.026348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.478460, 32.588734, 36.681507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.906791, 0.090659, -0.411718,
		-0.038685, -0.954591, -0.295399,
		-0.419803, 0.283792, -0.862106,
		27.352520, 32.673870, 36.422874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.757074, 32.089138, 36.477757>,  <27.646381, 32.475216, 37.026348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.757074, 32.089138, 36.477757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.699125, 32.453732, 36.323765>,  <27.664356, 32.672485, 36.231369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.699125, 32.453732, 36.323765>,  <27.757074, 32.089138, 36.477757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.699125, 32.453732, 36.323765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.814939, -0.110744, -0.568867,
		-0.561147, -0.396152, -0.726758,
		-0.144874, 0.911482, -0.384984,
		27.655663, 32.727177, 36.208271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.802305, 31.963507, 35.771626>,  <27.757074, 32.089138, 36.477757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.802305, 31.963507, 35.771626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.893631, 32.328327, 35.907883>,  <27.948427, 32.547218, 35.989635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.893631, 32.328327, 35.907883>,  <27.802305, 31.963507, 35.771626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.893631, 32.328327, 35.907883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.972963, -0.226279, -0.046274,
		0.034876, 0.341996, -0.939054,
		0.228314, 0.912051, 0.340641,
		27.962126, 32.601944, 36.010075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.312927, 32.233761, 35.158588>,  <27.802305, 31.963507, 35.771626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.312927, 32.233761, 35.158588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.361729, 32.343277, 35.540195>,  <28.391010, 32.408985, 35.769161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.361729, 32.343277, 35.540195>,  <28.312927, 32.233761, 35.158588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.361729, 32.343277, 35.540195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.945328, -0.324949, -0.027639,
		0.302440, 0.905234, -0.298465,
		0.122005, 0.273788, 0.954020,
		28.398331, 32.425415, 35.826401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.634068, 32.865616, 35.163338>,  <28.312927, 32.233761, 35.158588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.634068, 32.865616, 35.163338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.697056, 32.601982, 35.457497>,  <28.734848, 32.443802, 35.633991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.697056, 32.601982, 35.457497>,  <28.634068, 32.865616, 35.163338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.697056, 32.601982, 35.457497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.982815, 0.031958, -0.181806,
		0.096324, 0.751386, 0.652795,
		0.157468, -0.659089, 0.735395,
		28.744297, 32.404255, 35.678116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.097630, 33.184425, 35.718956>,  <28.634068, 32.865616, 35.163338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.097630, 33.184425, 35.718956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.115910, 32.787472, 35.673187>,  <29.126877, 32.549301, 35.645725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.115910, 32.787472, 35.673187>,  <29.097630, 33.184425, 35.718956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.115910, 32.787472, 35.673187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.946609, 0.079610, -0.312401,
		0.319130, -0.094036, 0.943034,
		0.045699, -0.992381, -0.114421,
		29.129620, 32.489758, 35.638863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.764870, 33.047489, 35.827301>,  <29.097630, 33.184425, 35.718956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.764870, 33.047489, 35.827301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.604408, 32.728664, 35.646736>,  <29.508131, 32.537369, 35.538399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.604408, 32.728664, 35.646736>,  <29.764870, 33.047489, 35.827301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.604408, 32.728664, 35.646736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.867049, -0.171443, -0.467797,
		0.295472, -0.579051, 0.759866,
		-0.401152, -0.797062, -0.451409,
		29.484062, 32.489548, 35.511314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.182974, 32.372143, 35.885323>,  <29.764870, 33.047489, 35.827301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.182974, 32.372143, 35.885323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.973875, 32.355881, 35.544716>,  <29.848415, 32.346123, 35.340351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.973875, 32.355881, 35.544716>,  <30.182974, 32.372143, 35.885323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.973875, 32.355881, 35.544716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.846005, -0.147703, -0.512308,
		-0.104942, -0.988196, 0.111610,
		-0.522745, -0.040660, -0.851519,
		29.817051, 32.343681, 35.289261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.262859, 31.729502, 35.480103>,  <30.182974, 32.372143, 35.885323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.262859, 31.729502, 35.480103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.219576, 32.058949, 35.257412>,  <30.193605, 32.256618, 35.123798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.219576, 32.058949, 35.257412>,  <30.262859, 31.729502, 35.480103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.219576, 32.058949, 35.257412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.929246, -0.115202, -0.351042,
		-0.353261, -0.555320, -0.752879,
		-0.108208, 0.823619, -0.556725,
		30.187113, 32.306034, 35.090393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.600615, 31.737255, 34.768337>,  <30.262859, 31.729502, 35.480103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.600615, 31.737255, 34.768337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.589087, 32.119522, 34.885551>,  <30.582169, 32.348881, 34.955879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.589087, 32.119522, 34.885551>,  <30.600615, 31.737255, 34.768337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.589087, 32.119522, 34.885551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.947382, 0.119614, -0.296919,
		-0.318806, 0.269055, -0.908830,
		-0.028821, 0.955668, 0.293032,
		30.580441, 32.406223, 34.973461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.992672, 31.962378, 34.279957>,  <30.600615, 31.737255, 34.768337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.992672, 31.962378, 34.279957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.977823, 32.269985, 34.535217>,  <30.968914, 32.454548, 34.688374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.977823, 32.269985, 34.535217>,  <30.992672, 31.962378, 34.279957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.977823, 32.269985, 34.535217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.950875, 0.223583, -0.214121,
		-0.307342, 0.598852, -0.739538,
		-0.037122, 0.769017, 0.638150,
		30.966686, 32.500690, 34.726662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.855915, 32.416981, 33.843475>,  <30.992672, 31.962378, 34.279957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.855915, 32.416981, 33.843475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.098661, 32.509335, 34.147686>,  <31.244310, 32.564747, 34.330212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.098661, 32.509335, 34.147686>,  <30.855915, 32.416981, 33.843475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.098661, 32.509335, 34.147686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.769036, 0.071096, -0.635240,
		-0.200737, 0.970380, -0.134411,
		0.606868, 0.230883, 0.760529,
		31.280722, 32.578598, 34.375843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.152504, 33.199783, 33.831219>,  <30.855915, 32.416981, 33.843475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.152504, 33.199783, 33.831219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.395433, 32.908821, 33.958992>,  <31.541191, 32.734245, 34.035656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.395433, 32.908821, 33.958992>,  <31.152504, 33.199783, 33.831219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.395433, 32.908821, 33.958992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558171, 0.104563, -0.823111,
		0.565335, 0.678194, 0.469520,
		0.607323, -0.727406, 0.319436,
		31.577631, 32.690598, 34.054821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.894007, 33.399593, 33.966324>,  <31.152504, 33.199783, 33.831219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.894007, 33.399593, 33.966324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.836935, 33.032070, 33.819118>,  <31.802692, 32.811558, 33.730793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.836935, 33.032070, 33.819118>,  <31.894007, 33.399593, 33.966324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.836935, 33.032070, 33.819118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416207, 0.281652, -0.864549,
		0.898006, -0.276525, 0.342228,
		-0.142680, -0.918807, -0.368017,
		31.794130, 32.756428, 33.708714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.596432, 33.031857, 33.631310>,  <31.894007, 33.399593, 33.966324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.596432, 33.031857, 33.631310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.263550, 32.881458, 33.468307>,  <32.063820, 32.791218, 33.370506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.263550, 32.881458, 33.468307>,  <32.596432, 33.031857, 33.631310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.263550, 32.881458, 33.468307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387523, 0.131213, -0.912474,
		0.396558, -0.917283, 0.036511,
		-0.832206, -0.375997, -0.407502,
		32.013889, 32.768658, 33.346058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.917423, 33.486000, 33.143009>,  <32.596432, 33.031857, 33.631310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.917423, 33.486000, 33.143009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.220303, 33.453087, 33.402203>,  <33.402031, 33.433338, 33.557716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.220303, 33.453087, 33.402203>,  <32.917423, 33.486000, 33.143009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.220303, 33.453087, 33.402203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225282, -0.964062, 0.140831,
		0.613104, -0.252615, -0.748525,
		0.757200, -0.082285, 0.647980,
		33.447464, 33.428402, 33.596596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.926785, 33.562122, 32.359768>,  <32.917423, 33.486000, 33.143009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.926785, 33.562122, 32.359768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.284164, 33.382729, 32.369568>,  <33.498592, 33.275093, 32.375446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.284164, 33.382729, 32.369568>,  <32.926785, 33.562122, 32.359768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.284164, 33.382729, 32.369568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061790, 0.068701, -0.995722,
		0.444883, 0.891146, 0.089093,
		0.893454, -0.448485, 0.024500,
		33.552200, 33.248184, 32.376919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.460224, 33.959377, 32.040779>,  <32.926785, 33.562122, 32.359768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.460224, 33.959377, 32.040779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.513939, 33.566715, 31.986635>,  <33.546169, 33.331120, 31.954147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.513939, 33.566715, 31.986635>,  <33.460224, 33.959377, 32.040779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.513939, 33.566715, 31.986635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000149, 0.136580, -0.990629,
		0.990942, 0.133051, 0.018195,
		0.134289, -0.981653, -0.135362,
		33.554226, 33.272221, 31.946026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.957932, 33.734047, 31.444677>,  <33.460224, 33.959377, 32.040779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.957932, 33.734047, 31.444677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.736160, 33.402969, 31.479397>,  <33.603100, 33.204323, 31.500229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.736160, 33.402969, 31.479397>,  <33.957932, 33.734047, 31.444677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.736160, 33.402969, 31.479397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344314, -0.323079, -0.881515,
		0.757668, -0.458848, 0.464110,
		-0.554425, -0.827695, 0.086799,
		33.569832, 33.154659, 31.505436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.354439, 32.978245, 31.379755>,  <33.957932, 33.734047, 31.444677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.354439, 32.978245, 31.379755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.980934, 33.016678, 31.241856>,  <33.756832, 33.039738, 31.159115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.980934, 33.016678, 31.241856>,  <34.354439, 32.978245, 31.379755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.980934, 33.016678, 31.241856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315443, -0.234069, -0.919623,
		-0.169055, -0.967460, 0.188257,
		-0.933764, 0.096083, -0.344749,
		33.700806, 33.045502, 31.138432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.274204, 32.436546, 30.984127>,  <34.354439, 32.978245, 31.379755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.274204, 32.436546, 30.984127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.015209, 32.716064, 30.862505>,  <33.859814, 32.883774, 30.789532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.015209, 32.716064, 30.862505>,  <34.274204, 32.436546, 30.984127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.015209, 32.716064, 30.862505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257986, -0.174433, -0.950272,
		-0.717081, -0.693729, -0.067336,
		-0.647486, 0.698794, -0.304055,
		33.820965, 32.925701, 30.771288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.023212, 32.103737, 30.386303>,  <34.274204, 32.436546, 30.984127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.023212, 32.103737, 30.386303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.942974, 32.493324, 30.344059>,  <33.894829, 32.727077, 30.318712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.942974, 32.493324, 30.344059>,  <34.023212, 32.103737, 30.386303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.942974, 32.493324, 30.344059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195987, -0.065723, -0.978401,
		-0.959869, -0.216965, -0.177700,
		-0.200600, 0.973964, -0.105608,
		33.882793, 32.785515, 30.312376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.601810, 32.209801, 29.780804>,  <34.023212, 32.103737, 30.386303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.601810, 32.209801, 29.780804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.757534, 32.576164, 29.819908>,  <33.850967, 32.795982, 29.843370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.757534, 32.576164, 29.819908>,  <33.601810, 32.209801, 29.780804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.757534, 32.576164, 29.819908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259571, -0.007256, -0.965697,
		-0.883779, 0.401325, -0.240567,
		0.389304, 0.915907, 0.097760,
		33.874325, 32.850937, 29.849236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.295567, 32.581188, 29.173597>,  <33.601810, 32.209801, 29.780804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.295567, 32.581188, 29.173597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.598476, 32.810951, 29.297918>,  <33.780220, 32.948807, 29.372511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.598476, 32.810951, 29.297918>,  <33.295567, 32.581188, 29.173597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.598476, 32.810951, 29.297918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311537, 0.100551, -0.944899,
		-0.574005, 0.812373, -0.102803,
		0.757273, 0.574404, 0.310802,
		33.825657, 32.983273, 29.391159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.221722, 33.261246, 28.910265>,  <33.295567, 32.581188, 29.173597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.221722, 33.261246, 28.910265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.613613, 33.234333, 28.985750>,  <33.848747, 33.218185, 29.031040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.613613, 33.234333, 28.985750>,  <33.221722, 33.261246, 28.910265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.613613, 33.234333, 28.985750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197508, 0.482401, -0.853393,
		-0.033614, 0.873362, 0.485910,
		0.979725, -0.067285, 0.188712,
		33.907532, 33.214146, 29.042364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.456898, 33.919628, 28.872692>,  <33.221722, 33.261246, 28.910265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.456898, 33.919628, 28.872692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.775894, 33.683655, 28.822124>,  <33.967293, 33.542072, 28.791784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.775894, 33.683655, 28.822124>,  <33.456898, 33.919628, 28.872692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.775894, 33.683655, 28.822124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264703, 0.530416, -0.805352,
		0.542159, 0.608799, 0.579160,
		0.797493, -0.589934, -0.126419,
		34.015141, 33.506676, 28.784199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.938519, 34.402187, 28.950573>,  <33.456898, 33.919628, 28.872692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.938519, 34.402187, 28.950573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.085884, 34.089737, 28.748938>,  <34.174305, 33.902267, 28.627956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.085884, 34.089737, 28.748938>,  <33.938519, 34.402187, 28.950573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.085884, 34.089737, 28.748938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408154, 0.623081, -0.667218,
		0.835272, 0.040067, 0.548374,
		0.368415, -0.781130, -0.504089,
		34.196407, 33.855396, 28.597712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.586918, 34.558174, 28.950562>,  <33.938519, 34.402187, 28.950573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.586918, 34.558174, 28.950562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.532391, 34.288055, 28.660625>,  <34.499676, 34.125984, 28.486664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.532391, 34.288055, 28.660625>,  <34.586918, 34.558174, 28.950562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.532391, 34.288055, 28.660625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366783, 0.645272, -0.670145,
		0.920265, -0.357211, 0.159726,
		-0.136317, -0.675296, -0.724840,
		34.491497, 34.085468, 28.443174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.282642, 34.505280, 28.490057>,  <34.586918, 34.558174, 28.950562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.282642, 34.505280, 28.490057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.976017, 34.366947, 28.273619>,  <34.792042, 34.283947, 28.143757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.976017, 34.366947, 28.273619>,  <35.282642, 34.505280, 28.490057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.976017, 34.366947, 28.273619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349426, 0.482314, -0.803290,
		0.538775, -0.804847, -0.248884,
		-0.766566, -0.345825, -0.541093,
		34.746048, 34.263199, 28.111290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.604042, 34.345791, 27.817747>,  <35.282642, 34.505280, 28.490057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.604042, 34.345791, 27.817747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.207355, 34.320610, 27.772963>,  <34.969345, 34.305504, 27.746092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.207355, 34.320610, 27.772963>,  <35.604042, 34.345791, 27.817747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.207355, 34.320610, 27.772963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070678, 0.460383, -0.884903,
		0.107248, -0.885486, -0.452120,
		-0.991717, -0.062949, -0.111960,
		34.909840, 34.301723, 27.739374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.552174, 34.104649, 27.070036>,  <35.604042, 34.345791, 27.817747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.552174, 34.104649, 27.070036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.192692, 34.248871, 27.169895>,  <34.977001, 34.335403, 27.229811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.192692, 34.248871, 27.169895>,  <35.552174, 34.104649, 27.070036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.192692, 34.248871, 27.169895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101786, 0.382219, -0.918449,
		-0.426573, -0.850828, -0.306803,
		-0.898708, 0.360557, 0.249647,
		34.923080, 34.357037, 27.244789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.131172, 33.918465, 26.575308>,  <35.552174, 34.104649, 27.070036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.131172, 33.918465, 26.575308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.964218, 34.239952, 26.744934>,  <34.864044, 34.432842, 26.846710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.964218, 34.239952, 26.744934>,  <35.131172, 33.918465, 26.575308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.964218, 34.239952, 26.744934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082939, 0.431017, -0.898524,
		-0.904936, -0.410203, -0.113241,
		-0.417386, 0.803715, 0.424065,
		34.839001, 34.481068, 26.872154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.615677, 34.040577, 26.092579>,  <35.131172, 33.918465, 26.575308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.615677, 34.040577, 26.092579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.645782, 34.391006, 26.283083>,  <34.663845, 34.601265, 26.397387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.645782, 34.391006, 26.283083>,  <34.615677, 34.040577, 26.092579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.645782, 34.391006, 26.283083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148329, 0.482139, -0.863447,
		-0.986070, -0.005655, 0.166237,
		0.075266, 0.876077, 0.476262,
		34.668362, 34.653828, 26.425961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.073700, 34.471436, 25.790461>,  <34.615677, 34.040577, 26.092579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.073700, 34.471436, 25.790461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.338463, 34.730545, 25.941330>,  <34.497322, 34.886013, 26.031851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.338463, 34.730545, 25.941330>,  <34.073700, 34.471436, 25.790461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.338463, 34.730545, 25.941330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035213, 0.475750, -0.878875,
		-0.748755, 0.595019, 0.292094,
		0.661911, 0.647776, 0.377173,
		34.537037, 34.924877, 26.054482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.875134, 35.202118, 25.790489>,  <34.073700, 34.471436, 25.790461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.875134, 35.202118, 25.790489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.269806, 35.264683, 25.808378>,  <34.506607, 35.302223, 25.819113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.269806, 35.264683, 25.808378>,  <33.875134, 35.202118, 25.790489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.269806, 35.264683, 25.808378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072872, 0.670733, -0.738110,
		-0.145449, 0.725018, 0.673196,
		0.986678, 0.156415, 0.044724,
		34.565811, 35.311607, 25.821796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.951687, 35.938629, 25.835985>,  <33.875134, 35.202118, 25.790489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.951687, 35.938629, 25.835985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.311562, 35.810379, 25.717485>,  <34.527485, 35.733429, 25.646385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.311562, 35.810379, 25.717485>,  <33.951687, 35.938629, 25.835985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.311562, 35.810379, 25.717485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014285, 0.699892, -0.714105,
		0.436305, 0.638238, 0.634263,
		0.899685, -0.320629, -0.296249,
		34.581467, 35.714191, 25.628611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.325321, 36.539261, 25.844271>,  <33.951687, 35.938629, 25.835985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.325321, 36.539261, 25.844271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.547203, 36.293678, 25.619644>,  <34.680332, 36.146328, 25.484869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.547203, 36.293678, 25.619644>,  <34.325321, 36.539261, 25.844271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.547203, 36.293678, 25.619644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127730, 0.729758, -0.671668,
		0.822183, 0.300851, 0.483223,
		0.554708, -0.613956, -0.561567,
		34.713615, 36.109493, 25.451174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.852627, 36.967812, 25.630146>,  <34.325321, 36.539261, 25.844271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.852627, 36.967812, 25.630146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.811768, 36.660454, 25.377438>,  <34.787251, 36.476040, 25.225813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.811768, 36.660454, 25.377438>,  <34.852627, 36.967812, 25.630146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.811768, 36.660454, 25.377438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229654, 0.599721, -0.766547,
		0.967897, -0.223389, 0.115206,
		-0.102147, -0.768396, -0.631770,
		34.781124, 36.429935, 25.187906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.502708, 36.960983, 25.125605>,  <34.852627, 36.967812, 25.630146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.502708, 36.960983, 25.125605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.204735, 36.757069, 24.953468>,  <35.025951, 36.634720, 24.850185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.204735, 36.757069, 24.953468>,  <35.502708, 36.960983, 25.125605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.204735, 36.757069, 24.953468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143518, 0.507497, -0.849617,
		0.651521, -0.694668, -0.304887,
		-0.744931, -0.509787, -0.430342,
		34.981255, 36.604134, 24.824366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.755203, 36.633396, 24.593790>,  <35.502708, 36.960983, 25.125605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.755203, 36.633396, 24.593790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.362606, 36.643448, 24.517853>,  <35.127048, 36.649479, 24.472290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.362606, 36.643448, 24.517853>,  <35.755203, 36.633396, 24.593790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.362606, 36.643448, 24.517853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187865, 0.318605, -0.929084,
		0.037138, -0.947555, -0.317430,
		-0.981492, 0.025130, -0.189844,
		35.068157, 36.650986, 24.460899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.615711, 36.343941, 23.907175>,  <35.755203, 36.633396, 24.593790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.615711, 36.343941, 23.907175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.299465, 36.575012, 23.988388>,  <35.109718, 36.713654, 24.037115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.299465, 36.575012, 23.988388>,  <35.615711, 36.343941, 23.907175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.299465, 36.575012, 23.988388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054046, 0.396118, -0.916608,
		-0.609929, -0.713707, -0.344396,
		-0.790611, 0.577679, 0.203031,
		35.062283, 36.748318, 24.049297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.292957, 36.347576, 23.242964>,  <35.615711, 36.343941, 23.907175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.292957, 36.347576, 23.242964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.125141, 36.660995, 23.426283>,  <35.024452, 36.849049, 23.536274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.125141, 36.660995, 23.426283>,  <35.292957, 36.347576, 23.242964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.125141, 36.660995, 23.426283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062403, 0.478790, -0.875709,
		-0.905589, -0.395996, -0.151977,
		-0.419542, 0.783548, 0.458298,
		34.999279, 36.896061, 23.563772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.843533, 36.589828, 22.821400>,  <35.292957, 36.347576, 23.242964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.843533, 36.589828, 22.821400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.885193, 36.912445, 23.054173>,  <34.910187, 37.106014, 23.193836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.885193, 36.912445, 23.054173>,  <34.843533, 36.589828, 22.821400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.885193, 36.912445, 23.054173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054973, 0.579550, -0.813080,
		-0.993041, 0.116671, 0.016021,
		0.104147, 0.806542, 0.581931,
		34.916435, 37.154408, 23.228752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.422478, 37.129093, 22.521482>,  <34.843533, 36.589828, 22.821400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.422478, 37.129093, 22.521482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.690559, 37.312687, 22.754772>,  <34.851410, 37.422844, 22.894747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.690559, 37.312687, 22.754772>,  <34.422478, 37.129093, 22.521482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.690559, 37.312687, 22.754772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242878, 0.606926, -0.756737,
		-0.701308, 0.648824, 0.295289,
		0.670207, 0.458987, 0.583227,
		34.891621, 37.450382, 22.929741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.149715, 37.825222, 22.491249>,  <34.422478, 37.129093, 22.521482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.149715, 37.825222, 22.491249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.531174, 37.856125, 22.607584>,  <34.760048, 37.874668, 22.677385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.531174, 37.856125, 22.607584>,  <34.149715, 37.825222, 22.491249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.531174, 37.856125, 22.607584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175327, 0.642847, -0.745659,
		-0.244572, 0.762088, 0.599504,
		0.953648, 0.077258, 0.290837,
		34.817268, 37.879303, 22.694836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.335495, 38.569221, 22.533819>,  <34.149715, 37.825222, 22.491249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.335495, 38.569221, 22.533819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.688026, 38.388638, 22.478037>,  <34.899544, 38.280289, 22.444567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.688026, 38.388638, 22.478037>,  <34.335495, 38.569221, 22.533819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.688026, 38.388638, 22.478037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217678, 0.649887, -0.728192,
		0.419378, 0.611419, 0.671036,
		0.881327, -0.451458, -0.139456,
		34.952423, 38.253201, 22.436199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.891037, 39.098354, 22.570559>,  <34.335495, 38.569221, 22.533819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.891037, 39.098354, 22.570559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.036243, 38.772560, 22.389524>,  <35.123367, 38.577084, 22.280903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.036243, 38.772560, 22.389524>,  <34.891037, 39.098354, 22.570559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.036243, 38.772560, 22.389524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358703, 0.570441, -0.738870,
		0.859973, 0.105875, 0.499236,
		0.363012, -0.814486, -0.452586,
		35.145145, 38.528214, 22.253748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.509144, 39.297211, 22.311665>,  <34.891037, 39.098354, 22.570559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.509144, 39.297211, 22.311665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.453094, 38.983318, 22.070148>,  <35.419464, 38.794983, 21.925238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.453094, 38.983318, 22.070148>,  <35.509144, 39.297211, 22.311665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.453094, 38.983318, 22.070148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470244, 0.483903, -0.738043,
		0.871342, -0.387344, 0.301211,
		-0.140120, -0.784731, -0.603792,
		35.411060, 38.747898, 21.889011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.085373, 39.175003, 22.154219>,  <35.509144, 39.297211, 22.311665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.085373, 39.175003, 22.154219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.850529, 39.044525, 21.857868>,  <35.709621, 38.966240, 21.680058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.850529, 39.044525, 21.857868>,  <36.085373, 39.175003, 22.154219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.850529, 39.044525, 21.857868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562871, 0.493262, -0.663226,
		0.581787, -0.806405, -0.105993,
		-0.587111, -0.326196, -0.740875,
		35.674397, 38.946667, 21.635605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.446571, 39.219170, 21.646494>,  <36.085373, 39.175003, 22.154219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.446571, 39.219170, 21.646494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.092960, 39.199795, 21.460527>,  <35.880795, 39.188171, 21.348948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.092960, 39.199795, 21.460527>,  <36.446571, 39.219170, 21.646494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.092960, 39.199795, 21.460527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290773, 0.721767, -0.628095,
		0.365985, -0.690439, -0.623978,
		-0.884028, -0.048438, -0.464917,
		35.827751, 39.185265, 21.321053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.581783, 39.114105, 20.964911>,  <36.446571, 39.219170, 21.646494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.581783, 39.114105, 20.964911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.220776, 39.285473, 20.982449>,  <36.004173, 39.388294, 20.992971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.220776, 39.285473, 20.982449>,  <36.581783, 39.114105, 20.964911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.220776, 39.285473, 20.982449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224829, 0.555557, -0.800505,
		-0.367308, -0.712612, -0.597720,
		-0.902517, 0.428417, 0.043845,
		35.950020, 39.413998, 20.995602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.359398, 39.062572, 20.316517>,  <36.581783, 39.114105, 20.964911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.359398, 39.062572, 20.316517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.148449, 39.366028, 20.469543>,  <36.021881, 39.548100, 20.561359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.148449, 39.366028, 20.469543>,  <36.359398, 39.062572, 20.316517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.148449, 39.366028, 20.469543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310554, 0.591229, -0.744315,
		-0.790848, -0.273720, -0.547392,
		-0.527368, 0.758634, 0.382567,
		35.990238, 39.593616, 20.584314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.164192, 39.493923, 19.737427>,  <36.359398, 39.062572, 20.316517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.164192, 39.493923, 19.737427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.076050, 39.738152, 20.041700>,  <36.023167, 39.884689, 20.224264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.076050, 39.738152, 20.041700>,  <36.164192, 39.493923, 19.737427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.076050, 39.738152, 20.041700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142264, 0.791633, -0.594204,
		-0.964990, -0.022717, -0.261303,
		-0.220354, 0.610575, 0.760686,
		36.009945, 39.921326, 20.269907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.603535, 39.959263, 19.457062>,  <36.164192, 39.493923, 19.737427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.603535, 39.959263, 19.457062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.797588, 40.112736, 19.771368>,  <35.914021, 40.204819, 19.959951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.797588, 40.112736, 19.771368>,  <35.603535, 39.959263, 19.457062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.797588, 40.112736, 19.771368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110481, 0.864499, -0.490342,
		-0.867431, 0.324695, 0.377010,
		0.485137, 0.383686, 0.785766,
		35.943130, 40.227840, 20.007097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.402779, 40.644676, 19.557590>,  <35.603535, 39.959263, 19.457062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.402779, 40.644676, 19.557590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.762054, 40.626965, 19.732540>,  <35.977619, 40.616337, 19.837511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.762054, 40.626965, 19.732540>,  <35.402779, 40.644676, 19.557590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.762054, 40.626965, 19.732540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269575, 0.841374, -0.468422,
		-0.347256, 0.538637, 0.767648,
		0.898189, -0.044276, 0.437375,
		36.031509, 40.613682, 19.863752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.425716, 41.275661, 19.755737>,  <35.402779, 40.644676, 19.557590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.425716, 41.275661, 19.755737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.811005, 41.179688, 19.804117>,  <36.042179, 41.122105, 19.833145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.811005, 41.179688, 19.804117>,  <35.425716, 41.275661, 19.755737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.811005, 41.179688, 19.804117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267504, 0.813955, -0.515673,
		0.025278, 0.529064, 0.848205,
		0.963225, -0.239934, 0.120952,
		36.099972, 41.107708, 19.840403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.761871, 41.897964, 19.868568>,  <35.425716, 41.275661, 19.755737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.761871, 41.897964, 19.868568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.065941, 41.659794, 19.764561>,  <36.248383, 41.516891, 19.702156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.065941, 41.659794, 19.764561>,  <35.761871, 41.897964, 19.868568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.065941, 41.659794, 19.764561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370729, 0.726159, -0.579010,
		0.533572, 0.343749, 0.772746,
		0.760171, -0.595424, -0.260021,
		36.293991, 41.481167, 19.686554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.295322, 42.310894, 20.009556>,  <35.761871, 41.897964, 19.868568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.295322, 42.310894, 20.009556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.426575, 42.048306, 19.737856>,  <36.505325, 41.890755, 19.574837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.426575, 42.048306, 19.737856>,  <36.295322, 42.310894, 20.009556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.426575, 42.048306, 19.737856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291239, 0.754337, -0.588349,
		0.898617, -0.004771, 0.438708,
		0.328127, -0.656470, -0.679250,
		36.525013, 41.851364, 19.534081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.002457, 42.474461, 19.838570>,  <36.295322, 42.310894, 20.009556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.002457, 42.474461, 19.838570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.913227, 42.246635, 19.522129>,  <36.859692, 42.109940, 19.332264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.913227, 42.246635, 19.522129>,  <37.002457, 42.474461, 19.838570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.913227, 42.246635, 19.522129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168352, 0.776846, -0.606768,
		0.960155, -0.268535, -0.077405,
		-0.223070, -0.569560, -0.791101,
		36.846306, 42.075768, 19.284800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.365044, 42.793793, 19.380833>,  <37.002457, 42.474461, 19.838570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.365044, 42.793793, 19.380833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.083866, 42.585350, 19.187206>,  <36.915161, 42.460285, 19.071030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.083866, 42.585350, 19.187206>,  <37.365044, 42.793793, 19.380833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.083866, 42.585350, 19.187206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110434, 0.752302, -0.649496,
		0.702620, -0.403101, -0.586374,
		-0.702943, -0.521105, -0.484067,
		36.872982, 42.429020, 19.041986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.566048, 42.611519, 18.657545>,  <37.365044, 42.793793, 19.380833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.566048, 42.611519, 18.657545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.169651, 42.647472, 18.697269>,  <36.931812, 42.669044, 18.721104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.169651, 42.647472, 18.697269>,  <37.566048, 42.611519, 18.657545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.169651, 42.647472, 18.697269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007052, 0.705374, -0.708800,
		-0.133762, -0.703113, -0.698384,
		-0.990989, 0.089886, 0.099311,
		36.872353, 42.674438, 18.727062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.346733, 42.905807, 17.934273>,  <37.566048, 42.611519, 18.657545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.346733, 42.905807, 17.934273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.993576, 42.937069, 18.119486>,  <36.781681, 42.955826, 18.230614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.993576, 42.937069, 18.119486>,  <37.346733, 42.905807, 17.934273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.993576, 42.937069, 18.119486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252813, 0.751837, -0.608956,
		-0.395719, -0.654701, -0.644029,
		-0.882888, 0.078156, 0.463033,
		36.728710, 42.960514, 18.258396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.868546, 43.024635, 17.400848>,  <37.346733, 42.905807, 17.934273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.868546, 43.024635, 17.400848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.678497, 43.133904, 17.735426>,  <36.564468, 43.199463, 17.936172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.678497, 43.133904, 17.735426>,  <36.868546, 43.024635, 17.400848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.678497, 43.133904, 17.735426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405357, 0.775766, -0.483605,
		-0.780989, -0.568830, -0.257854,
		-0.475124, 0.273167, 0.836444,
		36.535961, 43.215855, 17.986359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.115269, 43.190750, 17.255243>,  <36.868546, 43.024635, 17.400848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.115269, 43.190750, 17.255243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.231655, 43.367733, 17.594553>,  <36.301487, 43.473923, 17.798140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.231655, 43.367733, 17.594553>,  <36.115269, 43.190750, 17.255243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.231655, 43.367733, 17.594553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268657, 0.888749, -0.371415,
		-0.918239, -0.119826, 0.377463,
		0.290965, 0.442455, 0.848277,
		36.318943, 43.500469, 17.849035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.594810, 43.654831, 17.674263>,  <36.115269, 43.190750, 17.255243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.594810, 43.654831, 17.674263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.975750, 43.768150, 17.719486>,  <36.204311, 43.836140, 17.746620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.975750, 43.768150, 17.719486>,  <35.594810, 43.654831, 17.674263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.975750, 43.768150, 17.719486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153761, 0.765995, -0.624187,
		-0.263430, 0.577058, 0.773051,
		0.952346, 0.283295, 0.113057,
		36.261456, 43.853138, 17.753403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.770927, 44.328320, 17.904369>,  <35.594810, 43.654831, 17.674263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.770927, 44.328320, 17.904369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.035870, 44.233040, 17.620243>,  <36.194836, 44.175873, 17.449766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.035870, 44.233040, 17.620243>,  <35.770927, 44.328320, 17.904369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.035870, 44.233040, 17.620243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271929, 0.807019, -0.524190,
		0.698098, 0.540355, 0.469760,
		0.662354, -0.238195, -0.710317,
		36.234577, 44.161583, 17.407148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.181355, 44.939396, 17.818529>,  <35.770927, 44.328320, 17.904369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.181355, 44.939396, 17.818529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.136024, 44.707317, 17.495907>,  <36.108826, 44.568069, 17.302334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.136024, 44.707317, 17.495907>,  <36.181355, 44.939396, 17.818529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.136024, 44.707317, 17.495907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377185, 0.776134, -0.505319,
		0.919178, 0.246956, -0.306796,
		-0.113323, -0.580197, -0.806554,
		36.102028, 44.533257, 17.253941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.412899, 45.214931, 17.252623>,  <36.181355, 44.939396, 17.818529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.412899, 45.214931, 17.252623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.094254, 44.987465, 17.170614>,  <35.903069, 44.850986, 17.121410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.094254, 44.987465, 17.170614>,  <36.412899, 45.214931, 17.252623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.094254, 44.987465, 17.170614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304284, 0.670282, -0.676855,
		0.522322, -0.476807, -0.706990,
		-0.796612, -0.568662, -0.205019,
		35.855270, 44.816868, 17.109108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.157482, 45.171467, 17.360296>,  <36.412899, 45.214931, 17.252623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.157482, 45.171467, 17.360296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.459923, 45.362392, 17.539400>,  <37.641388, 45.476948, 17.646862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.459923, 45.362392, 17.539400>,  <37.157482, 45.171467, 17.360296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.459923, 45.362392, 17.539400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435694, -0.143404, 0.888598,
		0.488350, -0.866952, 0.099535,
		0.756098, 0.477314, 0.447757,
		37.686752, 45.505585, 17.673727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.400345, 44.744572, 17.892725>,  <37.157482, 45.171467, 17.360296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.400345, 44.744572, 17.892725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.530357, 45.104759, 18.008314>,  <37.608364, 45.320873, 18.077667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.530357, 45.104759, 18.008314>,  <37.400345, 44.744572, 17.892725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.530357, 45.104759, 18.008314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174514, -0.243206, 0.954147,
		0.929461, -0.360562, 0.078094,
		0.325036, 0.900470, 0.288974,
		37.627869, 45.374901, 18.095007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.791676, 44.637207, 18.471523>,  <37.400345, 44.744572, 17.892725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.791676, 44.637207, 18.471523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.646183, 45.007301, 18.514662>,  <37.558887, 45.229359, 18.540545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.646183, 45.007301, 18.514662>,  <37.791676, 44.637207, 18.471523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.646183, 45.007301, 18.514662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404489, -0.261174, 0.876457,
		0.839100, 0.275172, 0.469246,
		-0.363731, 0.925240, 0.107847,
		37.537064, 45.284874, 18.547016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.977158, 44.982342, 19.104460>,  <37.791676, 44.637207, 18.471523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.977158, 44.982342, 19.104460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.631252, 45.148083, 18.990973>,  <37.423710, 45.247528, 18.922880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.631252, 45.148083, 18.990973>,  <37.977158, 44.982342, 19.104460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.631252, 45.148083, 18.990973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303867, 0.018051, 0.952543,
		0.399807, 0.909939, 0.110297,
		-0.864766, 0.414349, -0.283717,
		37.371822, 45.272388, 18.905857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.750259, 45.536495, 19.501989>,  <37.977158, 44.982342, 19.104460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.750259, 45.536495, 19.501989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.414219, 45.373337, 19.358967>,  <37.212593, 45.275440, 19.273153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.414219, 45.373337, 19.358967>,  <37.750259, 45.536495, 19.501989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.414219, 45.373337, 19.358967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395347, 0.009120, 0.918487,
		-0.371388, 0.912982, -0.168923,
		-0.840102, -0.407898, -0.357557,
		37.162189, 45.250969, 19.251699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.201294, 45.856094, 19.918194>,  <37.750259, 45.536495, 19.501989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.201294, 45.856094, 19.918194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.055695, 45.530121, 19.737799>,  <36.968334, 45.334538, 19.629562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.055695, 45.530121, 19.737799>,  <37.201294, 45.856094, 19.918194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.055695, 45.530121, 19.737799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502730, -0.235708, 0.831688,
		-0.784069, 0.529462, -0.323891,
		-0.364003, -0.814931, -0.450987,
		36.946495, 45.285641, 19.602503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.336514, 45.828388, 19.914482>,  <37.201294, 45.856094, 19.918194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.336514, 45.828388, 19.914482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.509369, 45.468182, 19.895168>,  <36.613083, 45.252060, 19.883579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.509369, 45.468182, 19.895168>,  <36.336514, 45.828388, 19.914482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.509369, 45.468182, 19.895168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528598, -0.296317, 0.795475,
		-0.730643, -0.318233, -0.604060,
		0.432140, -0.900513, -0.048285,
		36.639011, 45.198029, 19.880684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.865784, 45.306179, 19.937614>,  <36.336514, 45.828388, 19.914482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.865784, 45.306179, 19.937614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.188644, 45.112511, 20.072721>,  <36.382359, 44.996307, 20.153786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.188644, 45.112511, 20.072721>,  <35.865784, 45.306179, 19.937614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.188644, 45.112511, 20.072721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528381, -0.337311, 0.779125,
		-0.263294, -0.807342, -0.528086,
		0.807150, -0.484169, 0.337772,
		36.430790, 44.967258, 20.174051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.643581, 44.587029, 20.124609>,  <35.865784, 45.306179, 19.937614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.643581, 44.587029, 20.124609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.980999, 44.676838, 20.319761>,  <36.183449, 44.730724, 20.436853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.980999, 44.676838, 20.319761>,  <35.643581, 44.587029, 20.124609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.980999, 44.676838, 20.319761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393048, -0.360978, 0.845700,
		0.365996, -0.905143, -0.216250,
		0.843540, 0.224526, 0.487881,
		36.234062, 44.744194, 20.466125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.738571, 43.988693, 20.545027>,  <35.643581, 44.587029, 20.124609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.738571, 43.988693, 20.545027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.995163, 44.249977, 20.705933>,  <36.149120, 44.406746, 20.802475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.995163, 44.249977, 20.705933>,  <35.738571, 43.988693, 20.545027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.995163, 44.249977, 20.705933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051333, -0.486645, 0.872091,
		0.765417, -0.580081, -0.278643,
		0.641483, 0.653210, 0.402263,
		36.187607, 44.445942, 20.826612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.213867, 43.593239, 20.921291>,  <35.738571, 43.988693, 20.545027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.213867, 43.593239, 20.921291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.224899, 43.956055, 21.089350>,  <36.231518, 44.173744, 21.190186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.224899, 43.956055, 21.089350>,  <36.213867, 43.593239, 20.921291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.224899, 43.956055, 21.089350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098903, -0.415768, 0.904077,
		0.994715, -0.066489, 0.078241,
		0.027581, 0.907037, 0.420147,
		36.233173, 44.228165, 21.215393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.701141, 43.539742, 21.437187>,  <36.213867, 43.593239, 20.921291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.701141, 43.539742, 21.437187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.467384, 43.850727, 21.530170>,  <36.327129, 44.037319, 21.585960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.467384, 43.850727, 21.530170>,  <36.701141, 43.539742, 21.437187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.467384, 43.850727, 21.530170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005173, -0.282887, 0.959139,
		0.811457, 0.561713, 0.161294,
		-0.584389, 0.777466, 0.232457,
		36.292068, 44.083965, 21.599907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.963902, 43.733570, 22.078646>,  <36.701141, 43.539742, 21.437187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.963902, 43.733570, 22.078646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.614918, 43.928638, 22.066006>,  <36.405529, 44.045681, 22.058422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.614918, 43.928638, 22.066006>,  <36.963902, 43.733570, 22.078646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.614918, 43.928638, 22.066006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128060, -0.165740, 0.977820,
		0.471616, 0.857151, 0.207052,
		-0.872456, 0.487670, -0.031601,
		36.353180, 44.074940, 22.056526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.926685, 44.291023, 22.647337>,  <36.963902, 43.733570, 22.078646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.926685, 44.291023, 22.647337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.566795, 44.156837, 22.535660>,  <36.350861, 44.076324, 22.468653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.566795, 44.156837, 22.535660>,  <36.926685, 44.291023, 22.647337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.566795, 44.156837, 22.535660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196315, -0.260268, 0.945368,
		-0.389805, 0.905385, 0.168314,
		-0.899729, -0.335467, -0.279194,
		36.296875, 44.056198, 22.451902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.514717, 44.359234, 23.222462>,  <36.926685, 44.291023, 22.647337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.514717, 44.359234, 23.222462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.307278, 44.091480, 23.009682>,  <36.182812, 43.930828, 22.882013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.307278, 44.091480, 23.009682>,  <36.514717, 44.359234, 23.222462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.307278, 44.091480, 23.009682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129439, -0.553519, 0.822716,
		-0.845161, 0.495518, 0.200411,
		-0.518602, -0.669387, -0.531952,
		36.151695, 43.890663, 22.850096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.052979, 44.105198, 23.757118>,  <36.514717, 44.359234, 23.222462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.052979, 44.105198, 23.757118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.038677, 43.838188, 23.459627>,  <36.030094, 43.677982, 23.281134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.038677, 43.838188, 23.459627>,  <36.052979, 44.105198, 23.757118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.038677, 43.838188, 23.459627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010539, -0.743909, 0.668198,
		-0.999305, 0.031731, 0.019565,
		-0.035757, -0.667527, -0.743726,
		36.027950, 43.637932, 23.236509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.470383, 43.552353, 23.940876>,  <36.052979, 44.105198, 23.757118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.470383, 43.552353, 23.940876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.715675, 43.356548, 23.692900>,  <35.862850, 43.239063, 23.544115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.715675, 43.356548, 23.692900>,  <35.470383, 43.552353, 23.940876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.715675, 43.356548, 23.692900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061969, -0.752597, 0.655560,
		-0.787472, -0.440424, -0.431178,
		0.613227, -0.489515, -0.619941,
		35.899643, 43.209694, 23.506918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.227837, 42.826008, 23.938055>,  <35.470383, 43.552353, 23.940876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.227837, 42.826008, 23.938055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.605820, 42.800747, 23.809643>,  <35.832611, 42.785591, 23.732595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.605820, 42.800747, 23.809643>,  <35.227837, 42.826008, 23.938055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.605820, 42.800747, 23.809643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122428, -0.841668, 0.525934,
		-0.303414, -0.536290, -0.787612,
		0.944961, -0.063150, -0.321031,
		35.889309, 42.781803, 23.713333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.247883, 42.186520, 23.621843>,  <35.227837, 42.826008, 23.938055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.247883, 42.186520, 23.621843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.629776, 42.273880, 23.702635>,  <35.858910, 42.326294, 23.751110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.629776, 42.273880, 23.702635>,  <35.247883, 42.186520, 23.621843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.629776, 42.273880, 23.702635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096392, -0.869457, 0.484514,
		0.281428, -0.443110, -0.851147,
		0.954729, 0.218399, 0.201977,
		35.916195, 42.339401, 23.763227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.663101, 41.656502, 23.385099>,  <35.247883, 42.186520, 23.621843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.663101, 41.656502, 23.385099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.866932, 41.823719, 23.685919>,  <35.989231, 41.924049, 23.866409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.866932, 41.823719, 23.685919>,  <35.663101, 41.656502, 23.385099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.866932, 41.823719, 23.685919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021799, -0.880032, 0.474414,
		0.860150, -0.225355, -0.457555,
		0.509575, 0.418041, 0.752047,
		36.019806, 41.949131, 23.911533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.157715, 41.208961, 23.442425>,  <35.663101, 41.656502, 23.385099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.157715, 41.208961, 23.442425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.173027, 41.414150, 23.785446>,  <36.182217, 41.537262, 23.991259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.173027, 41.414150, 23.785446>,  <36.157715, 41.208961, 23.442425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.173027, 41.414150, 23.785446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118407, -0.854465, 0.505835,
		0.992227, 0.082175, -0.093452,
		0.038284, 0.512968, 0.857553,
		36.184513, 41.568039, 24.042713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.668278, 40.878841, 23.884613>,  <36.157715, 41.208961, 23.442425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.668278, 40.878841, 23.884613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.476967, 41.068966, 24.179998>,  <36.362179, 41.183041, 24.357229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.476967, 41.068966, 24.179998>,  <36.668278, 40.878841, 23.884613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.476967, 41.068966, 24.179998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141095, -0.788362, 0.598813,
		0.866798, 0.390594, 0.309995,
		-0.478281, 0.475312, 0.738462,
		36.333481, 41.211559, 24.401537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.943989, 40.572365, 24.437599>,  <36.668278, 40.878841, 23.884613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.943989, 40.572365, 24.437599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.654160, 40.763695, 24.636072>,  <36.480263, 40.878494, 24.755156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.654160, 40.763695, 24.636072>,  <36.943989, 40.572365, 24.437599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.654160, 40.763695, 24.636072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032477, -0.742839, 0.668682,
		0.688431, 0.468395, 0.553777,
		-0.724574, 0.478327, 0.496181,
		36.436787, 40.907192, 24.784927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.085285, 40.389393, 25.119509>,  <36.943989, 40.572365, 24.437599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.085285, 40.389393, 25.119509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.711178, 40.529579, 25.139296>,  <36.486713, 40.613689, 25.151167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.711178, 40.529579, 25.139296>,  <37.085285, 40.389393, 25.119509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.711178, 40.529579, 25.139296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163128, -0.550856, 0.818503,
		0.314105, 0.757451, 0.572369,
		-0.935269, 0.350466, 0.049465,
		36.430595, 40.634720, 25.154135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.028507, 40.467278, 25.789362>,  <37.085285, 40.389393, 25.119509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.028507, 40.467278, 25.789362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.660843, 40.453262, 25.632437>,  <36.440243, 40.444855, 25.538280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.660843, 40.453262, 25.632437>,  <37.028507, 40.467278, 25.789362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.660843, 40.453262, 25.632437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256520, -0.702590, 0.663751,
		-0.298891, 0.710732, 0.636808,
		-0.919164, -0.035035, -0.392314,
		36.385094, 40.442753, 25.514742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.567913, 40.422417, 26.361862>,  <37.028507, 40.467278, 25.789362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.567913, 40.422417, 26.361862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.395466, 40.264111, 26.037514>,  <36.292000, 40.169125, 25.842905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.395466, 40.264111, 26.037514>,  <36.567913, 40.422417, 26.361862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.395466, 40.264111, 26.037514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356201, -0.751032, 0.555943,
		-0.829013, 0.528507, 0.182808,
		-0.431114, -0.395767, -0.810869,
		36.266132, 40.145382, 25.794252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.761662, 40.283176, 26.438040>,  <36.567913, 40.422417, 26.361862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.761662, 40.283176, 26.438040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.886196, 40.010654, 26.173042>,  <35.960915, 39.847141, 26.014044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.886196, 40.010654, 26.173042>,  <35.761662, 40.283176, 26.438040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.886196, 40.010654, 26.173042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.620552, -0.673735, 0.401242,
		-0.719713, 0.286191, -0.632541,
		0.311333, -0.681304, -0.662493,
		35.979595, 39.806263, 25.974295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.165905, 39.817387, 26.254345>,  <35.761662, 40.283176, 26.438040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.165905, 39.817387, 26.254345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.496628, 39.619598, 26.147099>,  <35.695061, 39.500927, 26.082750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.496628, 39.619598, 26.147099>,  <35.165905, 39.817387, 26.254345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.496628, 39.619598, 26.147099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311426, -0.799365, 0.513838,
		-0.468398, -0.341349, -0.814914,
		0.826812, -0.494466, -0.268116,
		35.744671, 39.471260, 26.066664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.915665, 39.192463, 26.168966>,  <35.165905, 39.817387, 26.254345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.915665, 39.192463, 26.168966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.300594, 39.085823, 26.147598>,  <35.531551, 39.021839, 26.134777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.300594, 39.085823, 26.147598>,  <34.915665, 39.192463, 26.168966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.300594, 39.085823, 26.147598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228764, -0.900073, 0.370858,
		-0.146949, -0.344667, -0.927152,
		0.962327, -0.266596, -0.053418,
		35.589291, 39.005844, 26.131573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.048939, 38.483070, 25.793547>,  <34.915665, 39.192463, 26.168966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.048939, 38.483070, 25.793547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.330280, 38.574856, 26.062662>,  <35.499084, 38.629925, 26.224133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.330280, 38.574856, 26.062662>,  <35.048939, 38.483070, 25.793547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.330280, 38.574856, 26.062662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320921, -0.742022, 0.588568,
		0.634278, -0.629882, -0.448263,
		0.703350, 0.229459, 0.672791,
		35.541286, 38.643692, 26.264500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.278145, 37.792873, 25.916779>,  <35.048939, 38.483070, 25.793547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.278145, 37.792873, 25.916779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.388298, 38.043247, 26.208633>,  <35.454391, 38.193470, 26.383747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.388298, 38.043247, 26.208633>,  <35.278145, 37.792873, 25.916779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.388298, 38.043247, 26.208633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236668, -0.691482, 0.682525,
		0.931747, -0.360639, -0.042284,
		0.275384, 0.625933, 0.729638,
		35.470913, 38.231026, 26.427525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.596863, 37.433743, 26.353825>,  <35.278145, 37.792873, 25.916779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.596863, 37.433743, 26.353825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.492508, 37.749107, 26.576658>,  <35.429893, 37.938328, 26.710358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.492508, 37.749107, 26.576658>,  <35.596863, 37.433743, 26.353825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.492508, 37.749107, 26.576658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302590, -0.614771, 0.728351,
		0.916720, 0.021452, 0.398953,
		-0.260889, 0.788414, 0.557082,
		35.414242, 37.985630, 26.743782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.815243, 37.234005, 26.921368>,  <35.596863, 37.433743, 26.353825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.815243, 37.234005, 26.921368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.576450, 37.539852, 27.018503>,  <35.433174, 37.723362, 27.076784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.576450, 37.539852, 27.018503>,  <35.815243, 37.234005, 26.921368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.576450, 37.539852, 27.018503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243427, -0.461066, 0.853324,
		0.764434, 0.450304, 0.461376,
		-0.596980, 0.764621, 0.242838,
		35.397358, 37.769238, 27.091354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.843864, 37.198170, 27.680647>,  <35.815243, 37.234005, 26.921368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.843864, 37.198170, 27.680647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.530502, 37.418064, 27.564676>,  <35.342484, 37.550003, 27.495094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.530502, 37.418064, 27.564676>,  <35.843864, 37.198170, 27.680647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.530502, 37.418064, 27.564676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.570118, -0.449917, 0.687415,
		0.247457, 0.703819, 0.665886,
		-0.783409, 0.549739, -0.289925,
		35.295479, 37.582985, 27.477699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.569660, 37.593044, 28.257318>,  <35.843864, 37.198170, 27.680647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.569660, 37.593044, 28.257318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.281967, 37.504925, 27.993753>,  <35.109352, 37.452053, 27.835615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.281967, 37.504925, 27.993753>,  <35.569660, 37.593044, 28.257318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.281967, 37.504925, 27.993753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546621, -0.405962, 0.732394,
		-0.428840, 0.886940, 0.171562,
		-0.719237, -0.220300, -0.658913,
		35.066196, 37.438835, 27.796080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.096653, 37.832245, 28.645231>,  <35.569660, 37.593044, 28.257318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.096653, 37.832245, 28.645231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.916416, 37.633537, 28.348536>,  <34.808273, 37.514313, 28.170517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.916416, 37.633537, 28.348536>,  <35.096653, 37.832245, 28.645231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.916416, 37.633537, 28.348536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.610497, -0.434745, 0.662034,
		-0.651349, 0.751141, -0.107384,
		-0.450597, -0.496773, -0.741741,
		34.781239, 37.484505, 28.126013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.307934, 37.912148, 28.801527>,  <35.096653, 37.832245, 28.645231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.307934, 37.912148, 28.801527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.345127, 37.597126, 28.557852>,  <34.367443, 37.408112, 28.411648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.345127, 37.597126, 28.557852>,  <34.307934, 37.912148, 28.801527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.345127, 37.597126, 28.557852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480659, -0.571328, 0.665246,
		-0.871964, 0.230952, -0.431671,
		0.092985, -0.787557, -0.609186,
		34.373024, 37.360859, 28.375095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.695126, 37.532810, 28.744410>,  <34.307934, 37.912148, 28.801527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.695126, 37.532810, 28.744410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.919769, 37.232796, 28.604671>,  <34.054558, 37.052788, 28.520828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.919769, 37.232796, 28.604671>,  <33.695126, 37.532810, 28.744410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.919769, 37.232796, 28.604671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515243, -0.647391, 0.561614,
		-0.647391, -0.135413, -0.750032,
		-0.561614, 0.750032, 0.349344,
		34.088253, 37.007786, 28.499868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.252899, 36.985676, 28.672577>,  <33.695126, 37.532810, 28.744410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.252899, 36.985676, 28.672577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.622501, 36.834362, 28.694914>,  <33.844261, 36.743572, 28.708317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.622501, 36.834362, 28.694914>,  <33.252899, 36.985676, 28.672577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.622501, 36.834362, 28.694914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295864, -0.614746, 0.731130,
		-0.242246, -0.692089, -0.679948,
		0.924003, -0.378285, 0.055844,
		33.899704, 36.720875, 28.711668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.269226, 36.244820, 28.460144>,  <33.252899, 36.985676, 28.672577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.269226, 36.244820, 28.460144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.557186, 36.336365, 28.722250>,  <33.729961, 36.391293, 28.879513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.557186, 36.336365, 28.722250>,  <33.269226, 36.244820, 28.460144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.557186, 36.336365, 28.722250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394251, -0.642153, 0.657424,
		0.571241, -0.731615, -0.372052,
		0.719895, 0.228866, 0.655264,
		33.773155, 36.405025, 28.918829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.621162, 35.687412, 28.743176>,  <33.269226, 36.244820, 28.460144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.621162, 35.687412, 28.743176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.756718, 35.929337, 29.031443>,  <33.838051, 36.074490, 29.204403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.756718, 35.929337, 29.031443>,  <33.621162, 35.687412, 28.743176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.756718, 35.929337, 29.031443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347057, -0.631610, 0.693268,
		0.874476, -0.485051, -0.004139,
		0.338884, 0.604809, 0.720668,
		33.858383, 36.110779, 29.247643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.155571, 35.371586, 29.266922>,  <33.621162, 35.687412, 28.743176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.155571, 35.371586, 29.266922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.977051, 35.659725, 29.479303>,  <33.869938, 35.832611, 29.606733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.977051, 35.659725, 29.479303>,  <34.155571, 35.371586, 29.266922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.977051, 35.659725, 29.479303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184000, -0.654512, 0.733320,
		0.875765, 0.229582, 0.424650,
		-0.446296, 0.720352, 0.530955,
		33.843163, 35.875832, 29.638590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.328083, 35.098545, 29.906895>,  <34.155571, 35.371586, 29.266922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.328083, 35.098545, 29.906895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.078213, 35.401192, 29.984148>,  <33.928291, 35.582779, 30.030500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.078213, 35.401192, 29.984148>,  <34.328083, 35.098545, 29.906895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.078213, 35.401192, 29.984148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212455, -0.402677, 0.890345,
		0.751424, 0.515148, 0.412292,
		-0.624680, 0.756620, 0.193135,
		33.890808, 35.628178, 30.042089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.504631, 35.393703, 30.630594>,  <34.328083, 35.098545, 29.906895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.504631, 35.393703, 30.630594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.125671, 35.439247, 30.510946>,  <33.898296, 35.466576, 30.439157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.125671, 35.439247, 30.510946>,  <34.504631, 35.393703, 30.630594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.125671, 35.439247, 30.510946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319864, -0.304108, 0.897332,
		0.011207, 0.945808, 0.324532,
		-0.947397, 0.113863, -0.299122,
		33.841454, 35.473408, 30.421209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.865559, 36.076492, 30.546793>,  <34.504631, 35.393703, 30.630594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.865559, 36.076492, 30.546793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.206512, 36.053848, 30.754726>,  <35.411087, 36.040260, 30.879486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.206512, 36.053848, 30.754726>,  <34.865559, 36.076492, 30.546793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.206512, 36.053848, 30.754726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275832, 0.893243, -0.355011,
		-0.444241, 0.445994, 0.777006,
		0.852389, -0.056613, 0.519835,
		35.462231, 36.036865, 30.910677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.981735, 36.701431, 30.906910>,  <34.865559, 36.076492, 30.546793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.981735, 36.701431, 30.906910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.347603, 36.543301, 30.873203>,  <35.567123, 36.448421, 30.852980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.347603, 36.543301, 30.873203>,  <34.981735, 36.701431, 30.906910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.347603, 36.543301, 30.873203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326360, 0.845276, -0.423082,
		0.238487, 0.359477, 0.902164,
		0.914666, -0.395330, -0.084268,
		35.622002, 36.424702, 30.847923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.285378, 37.272060, 30.942881>,  <34.981735, 36.701431, 30.906910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.285378, 37.272060, 30.942881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.566811, 37.024006, 30.804085>,  <35.735668, 36.875172, 30.720808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.566811, 37.024006, 30.804085>,  <35.285378, 37.272060, 30.942881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.566811, 37.024006, 30.804085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437923, 0.762934, -0.475557,
		0.559642, 0.182638, 0.808359,
		0.703580, -0.620141, -0.346989,
		35.777885, 36.837963, 30.699987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.968754, 37.591434, 31.055376>,  <35.285378, 37.272060, 30.942881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.968754, 37.591434, 31.055376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.041069, 37.302006, 30.788916>,  <36.084457, 37.128349, 30.629040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.041069, 37.302006, 30.788916>,  <35.968754, 37.591434, 31.055376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.041069, 37.302006, 30.788916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.703743, 0.568327, -0.426322,
		0.687066, -0.391725, 0.611957,
		0.180791, -0.723572, -0.666152,
		36.095306, 37.084934, 30.589069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.714008, 37.521099, 31.113379>,  <35.968754, 37.591434, 31.055376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.714008, 37.521099, 31.113379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.597466, 37.386791, 30.755079>,  <36.527538, 37.306206, 30.540100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.597466, 37.386791, 30.755079>,  <36.714008, 37.521099, 31.113379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.597466, 37.386791, 30.755079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.652852, 0.614624, -0.442743,
		0.699210, -0.713789, 0.040133,
		-0.291359, -0.335772, -0.895750,
		36.510059, 37.286060, 30.486355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.314972, 37.452133, 30.740690>,  <36.714008, 37.521099, 31.113379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.314972, 37.452133, 30.740690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.040665, 37.440228, 30.449808>,  <36.876080, 37.433086, 30.275278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.040665, 37.440228, 30.449808>,  <37.314972, 37.452133, 30.740690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.040665, 37.440228, 30.449808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558150, 0.619745, -0.551711,
		0.467101, -0.784239, -0.408394,
		-0.685773, -0.029760, -0.727207,
		36.834934, 37.431301, 30.231646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.638580, 37.437519, 30.064323>,  <37.314972, 37.452133, 30.740690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.638580, 37.437519, 30.064323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.279369, 37.597935, 29.991970>,  <37.063843, 37.694183, 29.948557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.279369, 37.597935, 29.991970>,  <37.638580, 37.437519, 30.064323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.279369, 37.597935, 29.991970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412724, 0.625570, -0.662058,
		-0.152358, -0.669199, -0.727296,
		-0.898023, 0.401043, -0.180884,
		37.009964, 37.718246, 29.937704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.613689, 37.303661, 29.403059>,  <37.638580, 37.437519, 30.064323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.613689, 37.303661, 29.403059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.359070, 37.604603, 29.470909>,  <37.206299, 37.785168, 29.511620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.359070, 37.604603, 29.470909>,  <37.613689, 37.303661, 29.403059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.359070, 37.604603, 29.470909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379259, 0.496870, -0.780566,
		-0.671539, -0.432539, -0.601619,
		-0.636551, 0.752350, 0.169624,
		37.168106, 37.830307, 29.521797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.360943, 37.590187, 28.698404>,  <37.613689, 37.303661, 29.403059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.360943, 37.590187, 28.698404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.269161, 37.883873, 28.953991>,  <37.214092, 38.060085, 29.107344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.269161, 37.883873, 28.953991>,  <37.360943, 37.590187, 28.698404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.269161, 37.883873, 28.953991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385876, 0.671308, -0.632807,
		-0.893560, 0.101359, -0.437353,
		-0.229458, 0.734215, 0.638966,
		37.200325, 38.104137, 29.145681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.061520, 38.082859, 28.341562>,  <37.360943, 37.590187, 28.698404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.061520, 38.082859, 28.341562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.169327, 38.294823, 28.663197>,  <37.234013, 38.422001, 28.856176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.169327, 38.294823, 28.663197>,  <37.061520, 38.082859, 28.341562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.169327, 38.294823, 28.663197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382933, 0.707153, -0.594388,
		-0.883584, 0.468111, -0.012327,
		0.269523, 0.529912, 0.804084,
		37.250183, 38.453796, 28.904421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.793087, 38.710464, 28.159643>,  <37.061520, 38.082859, 28.341562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.793087, 38.710464, 28.159643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.088593, 38.758400, 28.424934>,  <37.265896, 38.787159, 28.584110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.088593, 38.758400, 28.424934>,  <36.793087, 38.710464, 28.159643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.088593, 38.758400, 28.424934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374404, 0.745281, -0.551704,
		-0.560407, 0.655893, 0.505716,
		0.738760, 0.119836, 0.663230,
		37.310219, 38.794350, 28.623903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.794678, 39.413322, 28.384024>,  <36.793087, 38.710464, 28.159643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.794678, 39.413322, 28.384024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.174801, 39.308598, 28.451395>,  <37.402874, 39.245762, 28.491817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.174801, 39.308598, 28.451395>,  <36.794678, 39.413322, 28.384024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.174801, 39.308598, 28.451395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310841, 0.827593, -0.467406,
		-0.017018, 0.496534, 0.867850,
		0.950310, -0.261809, 0.168428,
		37.459892, 39.230057, 28.501923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.045448, 40.095226, 28.518963>,  <36.794678, 39.413322, 28.384024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.045448, 40.095226, 28.518963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.347763, 39.845818, 28.438957>,  <37.529152, 39.696171, 28.390955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.347763, 39.845818, 28.438957>,  <37.045448, 40.095226, 28.518963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.347763, 39.845818, 28.438957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518846, 0.756569, -0.397998,
		0.399485, 0.197025, 0.895317,
		0.755785, -0.623526, -0.200013,
		37.574497, 39.658760, 28.378954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.618530, 40.483967, 28.789495>,  <37.045448, 40.095226, 28.518963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.618530, 40.483967, 28.789495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.765324, 40.218628, 28.528637>,  <37.853401, 40.059425, 28.372122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.765324, 40.218628, 28.528637>,  <37.618530, 40.483967, 28.789495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.765324, 40.218628, 28.528637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560640, 0.717152, -0.413976,
		0.742297, -0.213697, 0.635081,
		0.366985, -0.663345, -0.652147,
		37.875420, 40.019623, 28.332993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.336151, 40.688442, 28.679123>,  <37.618530, 40.483967, 28.789495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.336151, 40.688442, 28.679123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.216293, 40.483223, 28.357380>,  <38.144379, 40.360092, 28.164335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.216293, 40.483223, 28.357380>,  <38.336151, 40.688442, 28.679123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.216293, 40.483223, 28.357380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469407, 0.654706, -0.592467,
		0.830583, -0.555102, 0.044649,
		-0.299648, -0.513052, -0.804357,
		38.126400, 40.329308, 28.116074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.923138, 40.654453, 28.238644>,  <38.336151, 40.688442, 28.679123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.923138, 40.654453, 28.238644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.616528, 40.591660, 27.989553>,  <38.432560, 40.553982, 27.840099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.616528, 40.591660, 27.989553>,  <38.923138, 40.654453, 28.238644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.616528, 40.591660, 27.989553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424619, 0.603575, -0.674830,
		0.481799, -0.781699, -0.396000,
		-0.766530, -0.156984, -0.622727,
		38.386570, 40.544563, 27.802736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.217155, 40.708054, 27.707508>,  <38.923138, 40.654453, 28.238644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.217155, 40.708054, 27.707508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.843090, 40.760963, 27.576075>,  <38.618649, 40.792709, 27.497215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.843090, 40.760963, 27.576075>,  <39.217155, 40.708054, 27.707508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.843090, 40.760963, 27.576075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353979, 0.315603, -0.880394,
		-0.012750, -0.939627, -0.341963,
		-0.935166, 0.132273, -0.328584,
		38.562538, 40.800644, 27.477499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.153610, 40.462181, 26.981148>,  <39.217155, 40.708054, 27.707508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.153610, 40.462181, 26.981148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.847591, 40.718674, 27.004921>,  <38.663982, 40.872570, 27.019184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.847591, 40.718674, 27.004921>,  <39.153610, 40.462181, 26.981148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.847591, 40.718674, 27.004921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281473, 0.415968, -0.864721,
		-0.579206, -0.644822, -0.498723,
		-0.765044, 0.641229, 0.059432,
		38.618076, 40.911041, 27.022751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.756500, 40.453457, 26.394333>,  <39.153610, 40.462181, 26.981148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.756500, 40.453457, 26.394333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.695873, 40.818180, 26.546976>,  <38.659496, 41.037014, 26.638563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.695873, 40.818180, 26.546976>,  <38.756500, 40.453457, 26.394333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.695873, 40.818180, 26.546976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251705, 0.408948, -0.877158,
		-0.955861, -0.036897, -0.291492,
		-0.151570, 0.911811, 0.381610,
		38.650402, 41.091724, 26.661459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.414818, 40.866394, 25.866632>,  <38.756500, 40.453457, 26.394333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.414818, 40.866394, 25.866632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.497906, 41.184456, 26.094519>,  <38.547756, 41.375294, 26.231251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.497906, 41.184456, 26.094519>,  <38.414818, 40.866394, 25.866632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.497906, 41.184456, 26.094519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168863, 0.544528, -0.821568,
		-0.963504, 0.266857, -0.021166,
		0.207716, 0.795158, 0.569717,
		38.560219, 41.423004, 26.265434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.021210, 41.277946, 25.545250>,  <38.414818, 40.866394, 25.866632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.021210, 41.277946, 25.545250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.248539, 41.514381, 25.774206>,  <38.384937, 41.656242, 25.911579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.248539, 41.514381, 25.774206>,  <38.021210, 41.277946, 25.545250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.248539, 41.514381, 25.774206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065239, 0.661095, -0.747461,
		-0.820215, 0.462141, 0.337153,
		0.568322, 0.591083, 0.572390,
		38.419037, 41.691708, 25.945923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.648163, 41.862911, 25.507879>,  <38.021210, 41.277946, 25.545250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.648163, 41.862911, 25.507879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.025417, 41.952282, 25.606333>,  <38.251770, 42.005905, 25.665405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.025417, 41.952282, 25.606333>,  <37.648163, 41.862911, 25.507879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.025417, 41.952282, 25.606333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073955, 0.580856, -0.810640,
		-0.324088, 0.782743, 0.531300,
		0.943132, 0.223426, 0.246136,
		38.308357, 42.019310, 25.680174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.643536, 42.650646, 25.600086>,  <37.648163, 41.862911, 25.507879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.643536, 42.650646, 25.600086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.009975, 42.524227, 25.501390>,  <38.229839, 42.448376, 25.442173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.009975, 42.524227, 25.501390>,  <37.643536, 42.650646, 25.600086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.009975, 42.524227, 25.501390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033925, 0.674265, -0.737710,
		0.399520, 0.667443, 0.628414,
		0.916096, -0.316049, -0.246740,
		38.284805, 42.429413, 25.427368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.971119, 43.331589, 25.539213>,  <37.643536, 42.650646, 25.600086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.971119, 43.331589, 25.539213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.162430, 43.035206, 25.350645>,  <38.277218, 42.857376, 25.237505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.162430, 43.035206, 25.350645>,  <37.971119, 43.331589, 25.539213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.162430, 43.035206, 25.350645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147914, 0.597093, -0.788417,
		0.865663, 0.307352, 0.395173,
		0.478277, -0.740955, -0.471420,
		38.305912, 42.812920, 25.209219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.633549, 43.698330, 25.382372>,  <37.971119, 43.331589, 25.539213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.633549, 43.698330, 25.382372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.564175, 43.386086, 25.142185>,  <38.522549, 43.198738, 24.998074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.564175, 43.386086, 25.142185>,  <38.633549, 43.698330, 25.382372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.564175, 43.386086, 25.142185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257773, 0.552470, -0.792673,
		0.950512, -0.292263, 0.105403,
		-0.173437, -0.780615, -0.600466,
		38.512142, 43.151901, 24.962046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.194283, 43.613937, 24.983219>,  <38.633549, 43.698330, 25.382372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.194283, 43.613937, 24.983219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.911045, 43.424671, 24.773565>,  <38.741104, 43.311111, 24.647774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.911045, 43.424671, 24.773565>,  <39.194283, 43.613937, 24.983219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.911045, 43.424671, 24.773565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268610, 0.505973, -0.819658,
		0.653036, -0.721181, -0.231177,
		-0.708091, -0.473170, -0.524135,
		38.698616, 43.282719, 24.616325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.607677, 43.414104, 24.448006>,  <39.194283, 43.613937, 24.983219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.607677, 43.414104, 24.448006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.235962, 43.395317, 24.301460>,  <39.012932, 43.384045, 24.213533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.235962, 43.395317, 24.301460>,  <39.607677, 43.414104, 24.448006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.235962, 43.395317, 24.301460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321049, 0.387723, -0.864059,
		0.182633, -0.920578, -0.345226,
		-0.929286, -0.046971, -0.366361,
		38.957176, 43.381226, 24.191551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.675152, 43.197289, 23.795790>,  <39.607677, 43.414104, 24.448006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.675152, 43.197289, 23.795790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.298325, 43.328766, 23.769070>,  <39.072227, 43.407654, 23.753038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.298325, 43.328766, 23.769070>,  <39.675152, 43.197289, 23.795790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.298325, 43.328766, 23.769070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213037, 0.432549, -0.876080,
		-0.259069, -0.839560, -0.477516,
		-0.942071, 0.328694, -0.066798,
		39.015701, 43.427376, 23.749031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.470512, 43.063591, 23.132818>,  <39.675152, 43.197289, 23.795790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.470512, 43.063591, 23.132818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.226326, 43.365334, 23.229378>,  <39.079815, 43.546379, 23.287313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.226326, 43.365334, 23.229378>,  <39.470512, 43.063591, 23.132818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.226326, 43.365334, 23.229378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012226, 0.313720, -0.949437,
		-0.791947, -0.576649, -0.200738,
		-0.610468, 0.754358, 0.241399,
		39.043186, 43.591640, 23.301798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.953575, 42.952457, 22.695637>,  <39.470512, 43.063591, 23.132818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.953575, 42.952457, 22.695637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.935123, 43.334328, 22.813255>,  <38.924053, 43.563450, 22.883825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.935123, 43.334328, 22.813255>,  <38.953575, 42.952457, 22.695637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.935123, 43.334328, 22.813255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068256, 0.290657, -0.954390,
		-0.996601, -0.064095, 0.051755,
		-0.046128, 0.954678, 0.294044,
		38.921284, 43.620731, 22.901468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.570782, 43.279396, 22.185053>,  <38.953575, 42.952457, 22.695637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.570782, 43.279396, 22.185053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.710369, 43.611076, 22.359703>,  <38.794121, 43.810085, 22.464493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.710369, 43.611076, 22.359703>,  <38.570782, 43.279396, 22.185053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.710369, 43.611076, 22.359703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120438, 0.422369, -0.898387,
		-0.929364, 0.366093, 0.047525,
		0.348966, 0.829205, 0.436626,
		38.815060, 43.859837, 22.490690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.183685, 43.878475, 21.997850>,  <38.570782, 43.279396, 22.185053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.183685, 43.878475, 21.997850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.517658, 44.058228, 22.124933>,  <38.718044, 44.166080, 22.201183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.517658, 44.058228, 22.124933>,  <38.183685, 43.878475, 21.997850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.517658, 44.058228, 22.124933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101867, 0.441122, -0.891647,
		-0.540838, 0.776832, 0.322531,
		0.834935, 0.449381, 0.317709,
		38.768139, 44.193043, 22.220245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.168022, 44.476658, 21.615116>,  <38.183685, 43.878475, 21.997850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.168022, 44.476658, 21.615116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.542088, 44.447929, 21.753862>,  <38.766525, 44.430691, 21.837111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.542088, 44.447929, 21.753862>,  <38.168022, 44.476658, 21.615116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.542088, 44.447929, 21.753862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344634, 0.410785, -0.844087,
		-0.081862, 0.908899, 0.408902,
		0.935161, -0.071823, 0.346865,
		38.822636, 44.426384, 21.857922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.560833, 45.123566, 21.505901>,  <38.168022, 44.476658, 21.615116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.560833, 45.123566, 21.505901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.836117, 44.834778, 21.534510>,  <39.001289, 44.661503, 21.551674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.836117, 44.834778, 21.534510>,  <38.560833, 45.123566, 21.505901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.836117, 44.834778, 21.534510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432874, 0.329512, -0.839072,
		0.582221, 0.608421, 0.539298,
		0.688214, -0.721974, 0.071521,
		39.042580, 44.618187, 21.555965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.093418, 45.447872, 21.303951>,  <38.560833, 45.123566, 21.505901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.093418, 45.447872, 21.303951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.202213, 45.069317, 21.234234>,  <39.267490, 44.842186, 21.192404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.202213, 45.069317, 21.234234>,  <39.093418, 45.447872, 21.303951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.202213, 45.069317, 21.234234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454338, 0.285951, -0.843688,
		0.848293, 0.150283, 0.507753,
		0.271985, -0.946386, -0.174291,
		39.283810, 44.785400, 21.181946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.837292, 45.508068, 21.101337>,  <39.093418, 45.447872, 21.303951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.837292, 45.508068, 21.101337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.718567, 45.142040, 20.992121>,  <39.647331, 44.922424, 20.926592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.718567, 45.142040, 20.992121>,  <39.837292, 45.508068, 21.101337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.718567, 45.142040, 20.992121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579009, 0.054916, -0.813470,
		0.759375, -0.399542, 0.513533,
		-0.296814, -0.915069, -0.273040,
		39.629524, 44.867519, 20.910208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.498100, 45.143433, 20.859987>,  <39.837292, 45.508068, 21.101337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.498100, 45.143433, 20.859987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.204227, 44.901001, 20.738062>,  <40.027905, 44.755543, 20.664907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.204227, 44.901001, 20.738062>,  <40.498100, 45.143433, 20.859987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.204227, 44.901001, 20.738062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444202, -0.090160, -0.891379,
		0.512764, -0.790279, 0.335460,
		-0.734682, -0.606079, -0.304813,
		39.983822, 44.719177, 20.646618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.737194, 44.477695, 20.715128>,  <40.498100, 45.143433, 20.859987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.737194, 44.477695, 20.715128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.410282, 44.514343, 20.487564>,  <40.214134, 44.536331, 20.351025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.410282, 44.514343, 20.487564>,  <40.737194, 44.477695, 20.715128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.410282, 44.514343, 20.487564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575754, 0.089226, -0.812740,
		-0.023707, -0.991788, -0.125677,
		-0.817279, 0.091626, -0.568910,
		40.165100, 44.541832, 20.316891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.709309, 43.753178, 21.014091>,  <40.737194, 44.477695, 20.715128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.709309, 43.753178, 21.014091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.066013, 43.934181, 21.014662>,  <41.280037, 44.042782, 21.015003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.066013, 43.934181, 21.014662>,  <40.709309, 43.753178, 21.014091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.066013, 43.934181, 21.014662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244445, -0.484369, 0.840020,
		0.380807, -0.748746, -0.542554,
		0.891758, 0.452510, 0.001425,
		41.333542, 44.069935, 21.015089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.175934, 43.175430, 21.144012>,  <40.709309, 43.753178, 21.014091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.175934, 43.175430, 21.144012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.376179, 43.508224, 21.239664>,  <41.496326, 43.707901, 21.297054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.376179, 43.508224, 21.239664>,  <41.175934, 43.175430, 21.144012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.376179, 43.508224, 21.239664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392023, -0.464170, 0.794270,
		0.771819, -0.303879, -0.558528,
		0.500614, 0.831988, 0.239128,
		41.526363, 43.757820, 21.311403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.893028, 42.953751, 21.204954>,  <41.175934, 43.175430, 21.144012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.893028, 42.953751, 21.204954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.856018, 43.299938, 21.401894>,  <41.833813, 43.507648, 21.520058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.856018, 43.299938, 21.401894>,  <41.893028, 42.953751, 21.204954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.856018, 43.299938, 21.401894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408862, -0.417839, 0.811322,
		0.907894, 0.276370, -0.315196,
		-0.092524, 0.865465, 0.492350,
		41.828262, 43.559578, 21.549599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.535194, 42.943512, 21.679543>,  <41.893028, 42.953751, 21.204954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.535194, 42.943512, 21.679543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.351810, 43.249439, 21.860586>,  <42.241779, 43.432995, 21.969213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.351810, 43.249439, 21.860586>,  <42.535194, 42.943512, 21.679543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.351810, 43.249439, 21.860586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241319, -0.383018, 0.891663,
		0.855322, 0.518019, -0.008967,
		-0.458464, 0.764823, 0.452611,
		42.214272, 43.478886, 21.996370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.911968, 43.128483, 22.214685>,  <42.535194, 42.943512, 21.679543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.911968, 43.128483, 22.214685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.557285, 43.285805, 22.311903>,  <42.344475, 43.380199, 22.370234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.557285, 43.285805, 22.311903>,  <42.911968, 43.128483, 22.214685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.557285, 43.285805, 22.311903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020382, -0.491917, 0.870404,
		0.461891, 0.776743, 0.428167,
		-0.886703, 0.393304, 0.243044,
		42.291275, 43.403797, 22.384815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.921673, 43.461166, 22.889887>,  <42.911968, 43.128483, 22.214685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.921673, 43.461166, 22.889887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.534138, 43.378883, 22.834698>,  <42.301617, 43.329514, 22.801584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.534138, 43.378883, 22.834698>,  <42.921673, 43.461166, 22.889887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.534138, 43.378883, 22.834698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024115, -0.476042, 0.879092,
		-0.246515, 0.855025, 0.456248,
		-0.968839, -0.205707, -0.137971,
		42.243484, 43.317173, 22.793306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.702507, 43.434235, 23.587269>,  <42.921673, 43.461166, 22.889887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.702507, 43.434235, 23.587269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.366764, 43.289963, 23.424599>,  <42.165318, 43.203400, 23.326996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.366764, 43.289963, 23.424599>,  <42.702507, 43.434235, 23.587269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.366764, 43.289963, 23.424599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070714, -0.669343, 0.739580,
		-0.538955, 0.649533, 0.536316,
		-0.839361, -0.360675, -0.406677,
		42.114956, 43.181759, 23.302595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.982540, 43.457104, 24.007059>,  <42.702507, 43.434235, 23.587269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.982540, 43.457104, 24.007059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.028881, 43.144157, 23.762278>,  <42.056686, 42.956390, 23.615408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.028881, 43.144157, 23.762278>,  <41.982540, 43.457104, 24.007059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.028881, 43.144157, 23.762278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053976, -0.620150, 0.782624,
		-0.991799, -0.057634, -0.114072,
		0.115848, -0.782363, -0.611953,
		42.063637, 42.909447, 23.578691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.730450, 42.960484, 24.390167>,  <41.982540, 43.457104, 24.007059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.730450, 42.960484, 24.390167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.891697, 42.742752, 24.095900>,  <41.988445, 42.612114, 23.919338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.891697, 42.742752, 24.095900>,  <41.730450, 42.960484, 24.390167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.891697, 42.742752, 24.095900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000264, -0.803809, 0.594887,
		-0.915150, -0.240002, -0.323883,
		0.403114, -0.544325, -0.735669,
		42.012630, 42.579456, 23.875198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.450325, 42.350689, 24.453371>,  <41.730450, 42.960484, 24.390167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.450325, 42.350689, 24.453371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.763153, 42.254261, 24.223499>,  <41.950848, 42.196404, 24.085577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.763153, 42.254261, 24.223499>,  <41.450325, 42.350689, 24.453371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.763153, 42.254261, 24.223499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068468, -0.883331, 0.463722,
		-0.619421, -0.402010, -0.674319,
		0.782068, -0.241069, -0.574679,
		41.997772, 42.181942, 24.051096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.263924, 41.713745, 24.150553>,  <41.450325, 42.350689, 24.453371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.263924, 41.713745, 24.150553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.662445, 41.744202, 24.134626>,  <41.901558, 41.762474, 24.125071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.662445, 41.744202, 24.134626>,  <41.263924, 41.713745, 24.150553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.662445, 41.744202, 24.134626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085915, -0.876268, 0.474102,
		0.001210, -0.475769, -0.879569,
		0.996302, 0.076142, -0.039816,
		41.961334, 41.767044, 24.122681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.533623, 41.184460, 23.745581>,  <41.263924, 41.713745, 24.150553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.533623, 41.184460, 23.745581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.821186, 41.302528, 23.997309>,  <41.993725, 41.373371, 24.148346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.821186, 41.302528, 23.997309>,  <41.533623, 41.184460, 23.745581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.821186, 41.302528, 23.997309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137065, -0.827387, 0.544650,
		0.681458, -0.477811, -0.554357,
		0.718908, 0.295172, 0.629321,
		42.036858, 41.391079, 24.186106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.952000, 40.561085, 23.789581>,  <41.533623, 41.184460, 23.745581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.952000, 40.561085, 23.789581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.042923, 40.784626, 24.108582>,  <42.097477, 40.918751, 24.299982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.042923, 40.784626, 24.108582>,  <41.952000, 40.561085, 23.789581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.042923, 40.784626, 24.108582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166659, -0.784532, 0.597272,
		0.959455, -0.268677, -0.085194,
		0.227311, 0.558858, 0.797501,
		42.111115, 40.952282, 24.347832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.436668, 40.201157, 24.166304>,  <41.952000, 40.561085, 23.789581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.436668, 40.201157, 24.166304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.292061, 40.466488, 24.428387>,  <42.205296, 40.625687, 24.585636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.292061, 40.466488, 24.428387>,  <42.436668, 40.201157, 24.166304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.292061, 40.466488, 24.428387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047920, -0.715027, 0.697453,
		0.931134, 0.220743, 0.290281,
		-0.361516, 0.663332, 0.655208,
		42.183605, 40.665489, 24.624949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.716503, 40.020805, 24.842873>,  <42.436668, 40.201157, 24.166304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.716503, 40.020805, 24.842873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.423515, 40.276516, 24.936527>,  <42.247723, 40.429943, 24.992720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.423515, 40.276516, 24.936527>,  <42.716503, 40.020805, 24.842873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.423515, 40.276516, 24.936527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252069, -0.574130, 0.778997,
		0.632417, 0.511572, 0.581673,
		-0.732468, 0.639273, 0.234138,
		42.203773, 40.468296, 25.006769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.724480, 40.048965, 25.509552>,  <42.716503, 40.020805, 24.842873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.724480, 40.048965, 25.509552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.356148, 40.188858, 25.440546>,  <42.135147, 40.272793, 25.399143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.356148, 40.188858, 25.440546>,  <42.724480, 40.048965, 25.509552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.356148, 40.188858, 25.440546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339213, -0.500109, 0.796759,
		0.192379, 0.792198, 0.579149,
		-0.920829, 0.349734, -0.172513,
		42.079899, 40.293777, 25.388792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.449863, 40.298561, 26.140930>,  <42.724480, 40.048965, 25.509552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.449863, 40.298561, 26.140930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.131393, 40.213425, 25.914370>,  <41.940311, 40.162342, 25.778433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.131393, 40.213425, 25.914370>,  <42.449863, 40.298561, 26.140930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.131393, 40.213425, 25.914370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494417, -0.310773, 0.811771,
		-0.348801, 0.926347, 0.142196,
		-0.796172, -0.212842, -0.566399,
		41.892540, 40.149570, 25.744450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.924801, 40.638195, 26.536276>,  <42.449863, 40.298561, 26.140930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.924801, 40.638195, 26.536276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.738693, 40.365799, 26.310080>,  <41.627029, 40.202362, 26.174362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.738693, 40.365799, 26.310080>,  <41.924801, 40.638195, 26.536276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.738693, 40.365799, 26.310080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.640679, -0.181735, 0.745991,
		-0.610780, 0.709386, -0.351738,
		-0.465273, -0.680987, -0.565489,
		41.599110, 40.161503, 26.140432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.246071, 40.762943, 26.684603>,  <41.924801, 40.638195, 26.536276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.246071, 40.762943, 26.684603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.261238, 40.398987, 26.519360>,  <41.270340, 40.180614, 26.420214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.261238, 40.398987, 26.519360>,  <41.246071, 40.762943, 26.684603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.261238, 40.398987, 26.519360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516518, -0.371743, 0.771373,
		-0.855437, 0.184129, -0.484071,
		0.037917, -0.909892, -0.413108,
		41.272614, 40.126019, 26.395428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.507809, 40.464001, 26.628746>,  <41.246071, 40.762943, 26.684603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.507809, 40.464001, 26.628746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.788219, 40.179058, 26.642065>,  <40.956467, 40.008091, 26.650057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.788219, 40.179058, 26.642065>,  <40.507809, 40.464001, 26.628746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.788219, 40.179058, 26.642065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535316, -0.494806, 0.684546,
		-0.471161, -0.497715, -0.728208,
		0.701031, -0.712353, 0.033302,
		40.998528, 39.965351, 26.652054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.083229, 39.882309, 26.686913>,  <40.507809, 40.464001, 26.628746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.083229, 39.882309, 26.686913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.431141, 39.700256, 26.763155>,  <40.639889, 39.591026, 26.808901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.431141, 39.700256, 26.763155>,  <40.083229, 39.882309, 26.686913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.431141, 39.700256, 26.763155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475988, -0.672106, 0.567194,
		-0.130042, -0.584062, -0.801225,
		0.869784, -0.455132, 0.190604,
		40.692078, 39.563717, 26.820335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.999237, 39.182995, 26.724072>,  <40.083229, 39.882309, 26.686913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.999237, 39.182995, 26.724072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.328934, 39.265568, 26.934978>,  <40.526752, 39.315109, 27.061523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.328934, 39.265568, 26.934978>,  <39.999237, 39.182995, 26.724072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.328934, 39.265568, 26.934978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294504, -0.639038, 0.710562,
		0.483626, -0.740957, -0.465927,
		0.824241, 0.206429, 0.527270,
		40.576206, 39.327496, 27.093159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.211033, 38.556152, 26.987774>,  <39.999237, 39.182995, 26.724072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.211033, 38.556152, 26.987774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.431061, 38.779507, 27.236168>,  <40.563080, 38.913521, 27.385204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.431061, 38.779507, 27.236168>,  <40.211033, 38.556152, 26.987774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.431061, 38.779507, 27.236168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282306, -0.575485, 0.767541,
		0.785953, -0.597512, -0.158923,
		0.550074, 0.558387, 0.620986,
		40.596085, 38.947021, 27.422464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.616756, 38.133369, 27.368929>,  <40.211033, 38.556152, 26.987774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.616756, 38.133369, 27.368929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.565865, 38.460365, 27.593613>,  <40.535332, 38.656563, 27.728422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.565865, 38.460365, 27.593613>,  <40.616756, 38.133369, 27.368929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.565865, 38.460365, 27.593613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235125, -0.575027, 0.783620,
		0.963603, -0.032375, 0.265372,
		-0.127226, 0.817494, 0.561709,
		40.527699, 38.705612, 27.762125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.804466, 37.927967, 27.991417>,  <40.616756, 38.133369, 27.368929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.804466, 37.927967, 27.991417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.613964, 38.270893, 28.069582>,  <40.499664, 38.476650, 28.116482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.613964, 38.270893, 28.069582>,  <40.804466, 37.927967, 27.991417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.613964, 38.270893, 28.069582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347788, -0.387775, 0.853624,
		0.807603, 0.338582, 0.482845,
		-0.476257, 0.857318, 0.195414,
		40.471088, 38.528088, 28.128206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.863487, 38.018463, 28.738289>,  <40.804466, 37.927967, 27.991417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.863487, 38.018463, 28.738289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.590881, 38.301609, 28.664026>,  <40.427319, 38.471497, 28.619469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.590881, 38.301609, 28.664026>,  <40.863487, 38.018463, 28.738289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.590881, 38.301609, 28.664026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265686, -0.002944, 0.964055,
		0.681872, 0.706344, 0.190076,
		-0.681514, 0.707863, -0.185658,
		40.386429, 38.513969, 28.608328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.106255, 38.493484, 29.166687>,  <40.863487, 38.018463, 28.738289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.106255, 38.493484, 29.166687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.713387, 38.493725, 29.091486>,  <40.477665, 38.493870, 29.046366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.713387, 38.493725, 29.091486>,  <41.106255, 38.493484, 29.166687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.713387, 38.493725, 29.091486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187913, 0.027677, 0.981796,
		0.005797, 0.999617, -0.027070,
		-0.982169, 0.000604, -0.188002,
		40.418736, 38.493908, 29.035086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.849075, 38.799870, 29.741671>,  <41.106255, 38.493484, 29.166687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.849075, 38.799870, 29.741671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.515163, 38.635853, 29.594696>,  <40.314816, 38.537441, 29.506512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.515163, 38.635853, 29.594696>,  <40.849075, 38.799870, 29.741671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.515163, 38.635853, 29.594696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326522, -0.168639, 0.930024,
		-0.443315, 0.896340, 0.006887,
		-0.834779, -0.410044, -0.367435,
		40.264729, 38.512840, 29.484467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.276169, 39.083656, 30.111551>,  <40.849075, 38.799870, 29.741671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.276169, 39.083656, 30.111551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.150551, 38.736752, 29.957031>,  <40.075180, 38.528606, 29.864319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.150551, 38.736752, 29.957031>,  <40.276169, 39.083656, 30.111551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.150551, 38.736752, 29.957031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180647, -0.344869, 0.921104,
		-0.932065, 0.359048, -0.048367,
		-0.314041, -0.867266, -0.386301,
		40.056339, 38.476570, 29.841141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.581131, 38.771252, 30.446028>,  <40.276169, 39.083656, 30.111551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.581131, 38.771252, 30.446028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.743164, 38.451347, 30.268812>,  <39.840382, 38.259403, 30.162483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.743164, 38.451347, 30.268812>,  <39.581131, 38.771252, 30.446028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.743164, 38.451347, 30.268812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249274, -0.562830, 0.788090,
		-0.879643, -0.208801, -0.427352,
		0.405080, -0.799766, -0.443041,
		39.864689, 38.211418, 30.135900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.103470, 38.286072, 30.470856>,  <39.581131, 38.771252, 30.446028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.103470, 38.286072, 30.470856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.427181, 38.064369, 30.393023>,  <39.621410, 37.931347, 30.346323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.427181, 38.064369, 30.393023>,  <39.103470, 38.286072, 30.470856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.427181, 38.064369, 30.393023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258035, -0.633004, 0.729879,
		-0.527710, -0.540470, -0.655297,
		0.809284, -0.554254, -0.194582,
		39.669968, 37.898094, 30.334648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.946194, 37.566254, 30.250099>,  <39.103470, 38.286072, 30.470856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.946194, 37.566254, 30.250099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.323532, 37.559372, 30.382639>,  <39.549934, 37.555244, 30.462164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.323532, 37.559372, 30.382639>,  <38.946194, 37.566254, 30.250099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.323532, 37.559372, 30.382639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243134, -0.715389, 0.655060,
		0.225778, -0.698514, -0.679045,
		0.943350, -0.017201, 0.331352,
		39.606537, 37.554211, 30.482044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.189957, 36.890053, 30.199261>,  <38.946194, 37.566254, 30.250099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.189957, 36.890053, 30.199261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.398033, 37.064926, 30.492727>,  <39.522881, 37.169849, 30.668808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.398033, 37.064926, 30.492727>,  <39.189957, 36.890053, 30.199261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.398033, 37.064926, 30.492727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148694, -0.799566, 0.581881,
		0.841004, -0.411783, -0.350923,
		0.520195, 0.437184, 0.733667,
		39.554092, 37.196083, 30.712828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.418571, 36.205765, 30.479145>,  <39.189957, 36.890053, 30.199261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.418571, 36.205765, 30.479145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.499397, 36.497887, 30.740166>,  <39.547894, 36.673161, 30.896778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.499397, 36.497887, 30.740166>,  <39.418571, 36.205765, 30.479145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.499397, 36.497887, 30.740166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140463, -0.681016, 0.718670,
		0.969248, -0.053555, -0.240188,
		0.202060, 0.730308, 0.652551,
		39.560017, 36.716980, 30.935930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.951828, 35.918221, 30.838728>,  <39.418571, 36.205765, 30.479145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.951828, 35.918221, 30.838728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.800926, 36.211823, 31.064617>,  <39.710384, 36.387985, 31.200151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.800926, 36.211823, 31.064617>,  <39.951828, 35.918221, 30.838728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.800926, 36.211823, 31.064617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008013, -0.607173, 0.794529,
		0.926075, 0.304266, 0.223178,
		-0.377255, 0.734005, 0.564725,
		39.687748, 36.432026, 31.234035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.396683, 36.001827, 31.405523>,  <39.951828, 35.918221, 30.838728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.396683, 36.001827, 31.405523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.049149, 36.172371, 31.506191>,  <39.840626, 36.274696, 31.566591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.049149, 36.172371, 31.506191>,  <40.396683, 36.001827, 31.405523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.049149, 36.172371, 31.506191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057959, -0.592419, 0.803543,
		0.491691, 0.683563, 0.539428,
		-0.868839, 0.426359, 0.251668,
		39.788498, 36.300278, 31.581692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.454144, 36.218098, 32.167892>,  <40.396683, 36.001827, 31.405523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.454144, 36.218098, 32.167892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.063622, 36.197708, 32.083771>,  <39.829308, 36.185474, 32.033298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.063622, 36.197708, 32.083771>,  <40.454144, 36.218098, 32.167892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.063622, 36.197708, 32.083771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124706, -0.661729, 0.739299,
		-0.176848, 0.748009, 0.639693,
		-0.976306, -0.050969, -0.210306,
		39.770729, 36.182419, 32.020679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.127911, 36.274399, 32.753944>,  <40.454144, 36.218098, 32.167892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.127911, 36.274399, 32.753944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.833897, 36.118744, 32.531849>,  <39.657486, 36.025352, 32.398590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.833897, 36.118744, 32.531849>,  <40.127911, 36.274399, 32.753944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.833897, 36.118744, 32.531849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267470, -0.586086, 0.764829,
		-0.623040, 0.710689, 0.326714,
		-0.735038, -0.389133, -0.555243,
		39.613384, 36.002003, 32.365276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.564907, 36.098793, 33.263851>,  <40.127911, 36.274399, 32.753944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.564907, 36.098793, 33.263851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.488033, 35.869221, 32.945438>,  <39.441910, 35.731476, 32.754391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.488033, 35.869221, 32.945438>,  <39.564907, 36.098793, 33.263851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.488033, 35.869221, 32.945438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308699, -0.734619, 0.604185,
		-0.931543, 0.361846, -0.035994,
		-0.192180, -0.573935, -0.796031,
		39.430378, 35.697041, 32.706631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.929638, 35.875542, 33.395828>,  <39.564907, 36.098793, 33.263851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.929638, 35.875542, 33.395828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.072388, 35.625996, 33.117710>,  <39.158039, 35.476269, 32.950840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.072388, 35.625996, 33.117710>,  <38.929638, 35.875542, 33.395828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.072388, 35.625996, 33.117710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343980, -0.779765, 0.523110,
		-0.868516, 0.052483, -0.492875,
		0.356872, -0.623868, -0.695292,
		39.179451, 35.438835, 32.909122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.556866, 35.244495, 33.441254>,  <38.929638, 35.875542, 33.395828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.556866, 35.244495, 33.441254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.855938, 35.093460, 33.222748>,  <39.035381, 35.002838, 33.091644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.855938, 35.093460, 33.222748>,  <38.556866, 35.244495, 33.441254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.855938, 35.093460, 33.222748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127395, -0.888892, 0.440047,
		-0.651727, -0.259422, -0.712707,
		0.747678, -0.377586, -0.546266,
		39.080242, 34.980183, 33.058868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.348534, 34.567356, 33.132915>,  <38.556866, 35.244495, 33.441254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.348534, 34.567356, 33.132915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.745758, 34.564209, 33.179859>,  <38.984093, 34.562321, 33.208027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.745758, 34.564209, 33.179859>,  <38.348534, 34.567356, 33.132915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.745758, 34.564209, 33.179859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073404, -0.821075, 0.566080,
		0.091909, -0.570765, -0.815953,
		0.993058, -0.007866, 0.117360,
		39.043674, 34.561848, 33.215069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.550564, 33.919304, 33.005802>,  <38.348534, 34.567356, 33.132915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.550564, 33.919304, 33.005802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.850582, 34.059193, 33.230347>,  <39.030594, 34.143124, 33.365074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.850582, 34.059193, 33.230347>,  <38.550564, 33.919304, 33.005802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.850582, 34.059193, 33.230347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034917, -0.868519, 0.494424,
		0.660459, -0.351241, -0.663643,
		0.750049, 0.349720, 0.561357,
		39.075596, 34.164108, 33.398754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.947144, 33.321606, 33.021488>,  <38.550564, 33.919304, 33.005802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.947144, 33.321606, 33.021488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.042343, 33.547142, 33.337826>,  <39.099461, 33.682465, 33.527630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.042343, 33.547142, 33.337826>,  <38.947144, 33.321606, 33.021488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.042343, 33.547142, 33.337826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040012, -0.819245, 0.572047,
		0.970442, -0.104502, -0.217537,
		0.237996, 0.563842, 0.790848,
		39.113743, 33.716293, 33.575081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.216377, 32.780888, 33.547295>,  <38.947144, 33.321606, 33.021488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.216377, 32.780888, 33.547295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.163792, 33.099430, 33.783443>,  <39.132240, 33.290554, 33.925133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.163792, 33.099430, 33.783443>,  <39.216377, 32.780888, 33.547295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.163792, 33.099430, 33.783443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098719, -0.603097, 0.791535,
		0.986393, 0.045780, 0.157903,
		-0.131467, 0.796353, 0.590372,
		39.124352, 33.338337, 33.960556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.557518, 32.562008, 34.182369>,  <39.216377, 32.780888, 33.547295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.557518, 32.562008, 34.182369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.287910, 32.834759, 34.296032>,  <39.126148, 32.998409, 34.364227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.287910, 32.834759, 34.296032>,  <39.557518, 32.562008, 34.182369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.287910, 32.834759, 34.296032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277067, -0.589926, 0.758433,
		0.684791, 0.432465, 0.586545,
		-0.674014, 0.681881, 0.284154,
		39.085705, 33.039322, 34.381279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.643879, 32.615631, 34.851688>,  <39.557518, 32.562008, 34.182369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.643879, 32.615631, 34.851688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.279182, 32.763893, 34.780872>,  <39.060364, 32.852848, 34.738384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.279182, 32.763893, 34.780872>,  <39.643879, 32.615631, 34.851688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.279182, 32.763893, 34.780872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389382, -0.642655, 0.659830,
		0.130794, 0.670530, 0.730262,
		-0.911742, 0.370653, -0.177037,
		39.005661, 32.875088, 34.727760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.268555, 32.704147, 35.552013>,  <39.643879, 32.615631, 34.851688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.268555, 32.704147, 35.552013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.958004, 32.699627, 35.299946>,  <38.771675, 32.696915, 35.148705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.958004, 32.699627, 35.299946>,  <39.268555, 32.704147, 35.552013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.958004, 32.699627, 35.299946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502141, -0.593181, 0.629277,
		-0.380917, 0.804989, 0.454856,
		-0.776374, -0.011300, -0.630171,
		38.725090, 32.696236, 35.110893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.671524, 32.819324, 35.886105>,  <39.268555, 32.704147, 35.552013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.671524, 32.819324, 35.886105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.560337, 32.616447, 35.559792>,  <38.493626, 32.494720, 35.364006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.560337, 32.616447, 35.559792>,  <38.671524, 32.819324, 35.886105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.560337, 32.616447, 35.559792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450968, -0.680940, 0.577017,
		-0.848153, 0.528281, -0.039448,
		-0.277965, -0.507188, -0.815779,
		38.476948, 32.464291, 35.315060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.153538, 32.396664, 36.148075>,  <38.671524, 32.819324, 35.886105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.153538, 32.396664, 36.148075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.184174, 32.271053, 35.769547>,  <38.202553, 32.195686, 35.542431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.184174, 32.271053, 35.769547>,  <38.153538, 32.396664, 36.148075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.184174, 32.271053, 35.769547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552252, -0.803584, 0.221970,
		-0.830152, 0.505607, -0.234965,
		0.076585, -0.314028, -0.946319,
		38.207150, 32.176846, 35.485649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.512573, 32.244293, 35.937660>,  <38.153538, 32.396664, 36.148075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.512573, 32.244293, 35.937660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.747265, 32.047390, 35.680466>,  <37.888081, 31.929247, 35.526150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.747265, 32.047390, 35.680466>,  <37.512573, 32.244293, 35.937660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.747265, 32.047390, 35.680466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534178, -0.832037, 0.149561,
		-0.608612, 0.255718, -0.751133,
		0.586725, -0.492263, -0.642986,
		37.923283, 31.899712, 35.487568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.097046, 31.598059, 35.595821>,  <37.512573, 32.244293, 35.937660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.097046, 31.598059, 35.595821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.481606, 31.499065, 35.547707>,  <37.712341, 31.439669, 35.518837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.481606, 31.499065, 35.547707>,  <37.097046, 31.598059, 35.595821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.481606, 31.499065, 35.547707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186249, -0.907049, 0.377589,
		-0.202555, -0.340609, -0.918127,
		0.961396, -0.247483, -0.120290,
		37.770023, 31.424820, 35.511620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.064301, 30.983229, 35.222015>,  <37.097046, 31.598059, 35.595821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.064301, 30.983229, 35.222015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.407745, 30.998558, 35.426491>,  <37.613811, 31.007755, 35.549175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.407745, 30.998558, 35.426491>,  <37.064301, 30.983229, 35.222015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.407745, 30.998558, 35.426491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320356, -0.738372, 0.593446,
		0.400190, -0.673303, -0.621699,
		0.858615, 0.038326, 0.511186,
		37.665329, 31.010056, 35.579845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.395584, 30.239456, 35.270908>,  <37.064301, 30.983229, 35.222015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.395584, 30.239456, 35.270908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.493473, 30.469755, 35.582966>,  <37.552204, 30.607935, 35.770199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.493473, 30.469755, 35.582966>,  <37.395584, 30.239456, 35.270908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.493473, 30.469755, 35.582966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263810, -0.734717, 0.624977,
		0.933015, -0.358753, -0.027911,
		0.244719, 0.575749, 0.780144,
		37.566887, 30.642481, 35.817009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.865040, 29.847097, 35.707806>,  <37.395584, 30.239456, 35.270908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.865040, 29.847097, 35.707806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.713829, 30.128098, 35.949001>,  <37.623104, 30.296698, 36.093719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.713829, 30.128098, 35.949001>,  <37.865040, 29.847097, 35.707806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.713829, 30.128098, 35.949001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358633, -0.711580, 0.604182,
		0.853511, 0.012144, 0.520933,
		-0.378022, 0.702500, 0.602986,
		37.600422, 30.338848, 36.129898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.977814, 29.549074, 36.381565>,  <37.865040, 29.847097, 35.707806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.977814, 29.549074, 36.381565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.717407, 29.843775, 36.454647>,  <37.561165, 30.020596, 36.498497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.717407, 29.843775, 36.454647>,  <37.977814, 29.549074, 36.381565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.717407, 29.843775, 36.454647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384932, -0.527883, 0.757078,
		0.654224, 0.422539, 0.627257,
		-0.651014, 0.736750, 0.182705,
		37.522102, 30.064800, 36.509460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.118042, 29.774286, 37.116493>,  <37.977814, 29.549074, 36.381565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.118042, 29.774286, 37.116493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.747284, 29.873474, 37.003796>,  <37.524830, 29.932987, 36.936176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.747284, 29.873474, 37.003796>,  <38.118042, 29.774286, 37.116493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.747284, 29.873474, 37.003796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373023, -0.525553, 0.764623,
		0.041532, 0.813821, 0.579630,
		-0.926892, 0.247971, -0.281747,
		37.469215, 29.947866, 36.919273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.846943, 29.940308, 37.764545>,  <38.118042, 29.774286, 37.116493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.846943, 29.940308, 37.764545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.556805, 29.848572, 37.504921>,  <37.382721, 29.793531, 37.349148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.556805, 29.848572, 37.504921>,  <37.846943, 29.940308, 37.764545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.556805, 29.848572, 37.504921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351003, -0.687876, 0.635313,
		-0.592173, 0.688644, 0.418450,
		-0.725346, -0.229338, -0.649058,
		37.339199, 29.779770, 37.310204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.332348, 30.083107, 38.200798>,  <37.846943, 29.940308, 37.764545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.332348, 30.083107, 38.200798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.155075, 29.873075, 37.910175>,  <37.048710, 29.747057, 37.735802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.155075, 29.873075, 37.910175>,  <37.332348, 30.083107, 38.200798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.155075, 29.873075, 37.910175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334096, -0.655353, 0.677416,
		-0.831847, 0.542957, 0.115013,
		-0.443182, -0.525081, -0.726553,
		37.022121, 29.715551, 37.692211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.567509, 30.104565, 38.102398>,  <37.332348, 30.083107, 38.200798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.567509, 30.104565, 38.102398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.685978, 29.744253, 37.975353>,  <36.757061, 29.528067, 37.899128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.685978, 29.744253, 37.975353>,  <36.567509, 30.104565, 38.102398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.685978, 29.744253, 37.975353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426219, -0.422230, 0.800037,
		-0.854762, -0.101578, -0.508982,
		0.296174, -0.900779, -0.317612,
		36.774830, 29.474020, 37.880070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.009136, 29.595026, 38.135502>,  <36.567509, 30.104565, 38.102398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.009136, 29.595026, 38.135502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.359501, 29.408388, 38.184601>,  <36.569721, 29.296406, 38.214062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.359501, 29.408388, 38.184601>,  <36.009136, 29.595026, 38.135502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.359501, 29.408388, 38.184601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409199, -0.583659, 0.701355,
		-0.255602, -0.664555, -0.702164,
		0.875913, -0.466592, 0.122751,
		36.622276, 29.268410, 38.221428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.862804, 28.826792, 38.325207>,  <36.009136, 29.595026, 38.135502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.862804, 28.826792, 38.325207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.239784, 28.894339, 38.440636>,  <36.465973, 28.934866, 38.509895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.239784, 28.894339, 38.440636>,  <35.862804, 28.826792, 38.325207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.239784, 28.894339, 38.440636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099780, -0.681707, 0.724789,
		0.319116, -0.711870, -0.625624,
		0.942448, 0.168867, 0.288574,
		36.522518, 28.944998, 38.527206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.215431, 28.321619, 38.718594>,  <35.862804, 28.826792, 38.325207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.215431, 28.321619, 38.718594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.296627, 28.114000, 38.386478>,  <36.345345, 27.989429, 38.187210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.296627, 28.114000, 38.386478>,  <36.215431, 28.321619, 38.718594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.296627, 28.114000, 38.386478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356621, 0.828896, -0.430990,
		0.911930, -0.208612, 0.353362,
		0.202991, -0.519049, -0.830291,
		36.357525, 27.958286, 38.137390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.897644, 28.429031, 38.472588>,  <36.215431, 28.321619, 38.718594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.897644, 28.429031, 38.472588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.640160, 28.373293, 38.171597>,  <36.485672, 28.339849, 37.991001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.640160, 28.373293, 38.171597>,  <36.897644, 28.429031, 38.472588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.640160, 28.373293, 38.171597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223901, 0.905962, -0.359307,
		0.731786, -0.399769, -0.551973,
		-0.643706, -0.139348, -0.752479,
		36.447048, 28.331488, 37.945854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.205307, 28.732092, 37.788063>,  <36.897644, 28.429031, 38.472588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.205307, 28.732092, 37.788063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.807812, 28.776161, 37.795414>,  <36.569313, 28.802603, 37.799824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.807812, 28.776161, 37.795414>,  <37.205307, 28.732092, 37.788063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.807812, 28.776161, 37.795414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068146, 0.728376, -0.681781,
		-0.088502, -0.676262, -0.731326,
		-0.993742, 0.110176, 0.018378,
		36.509689, 28.809214, 37.800926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.769791, 28.639538, 37.154644>,  <37.205307, 28.732092, 37.788063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.769791, 28.639538, 37.154644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.629292, 28.950644, 37.363148>,  <36.544994, 29.137306, 37.488251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.629292, 28.950644, 37.363148>,  <36.769791, 28.639538, 37.154644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.629292, 28.950644, 37.363148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501216, 0.626437, -0.596958,
		-0.790829, 0.051586, -0.609859,
		-0.351244, 0.777763, 0.521261,
		36.523918, 29.183973, 37.519527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.523296, 29.063612, 36.631149>,  <36.769791, 28.639538, 37.154644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.523296, 29.063612, 36.631149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.657990, 29.257643, 36.953964>,  <36.738804, 29.374062, 37.147655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.657990, 29.257643, 36.953964>,  <36.523296, 29.063612, 36.631149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.657990, 29.257643, 36.953964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242466, 0.783520, -0.572108,
		-0.909848, 0.388326, 0.146220,
		0.336731, 0.485077, 0.807039,
		36.759010, 29.403166, 37.196075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.331242, 29.716305, 36.506977>,  <36.523296, 29.063612, 36.631149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.331242, 29.716305, 36.506977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.636421, 29.736790, 36.764748>,  <36.819530, 29.749081, 36.919411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.636421, 29.736790, 36.764748>,  <36.331242, 29.716305, 36.506977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.636421, 29.736790, 36.764748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350208, 0.805165, -0.478605,
		-0.543380, 0.590835, 0.596365,
		0.762950, 0.051212, 0.644426,
		36.865307, 29.752153, 36.958076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.240402, 30.334284, 36.790825>,  <36.331242, 29.716305, 36.506977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.240402, 30.334284, 36.790825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.621674, 30.219112, 36.827805>,  <36.850437, 30.150009, 36.849991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.621674, 30.219112, 36.827805>,  <36.240402, 30.334284, 36.790825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.621674, 30.219112, 36.827805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281369, 0.732396, -0.620022,
		0.110814, 0.617004, 0.779119,
		0.953180, -0.287927, 0.092447,
		36.907627, 30.132734, 36.855537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.543312, 30.927336, 36.558357>,  <36.240402, 30.334284, 36.790825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.543312, 30.927336, 36.558357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.863918, 30.690384, 36.591022>,  <37.056282, 30.548214, 36.610619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.863918, 30.690384, 36.591022>,  <36.543312, 30.927336, 36.558357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.863918, 30.690384, 36.591022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573936, 0.723746, -0.383130,
		0.167858, 0.353950, 0.920078,
		0.801512, -0.592377, 0.081658,
		37.104370, 30.512671, 36.615520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.123333, 31.279352, 36.896244>,  <36.543312, 30.927336, 36.558357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.123333, 31.279352, 36.896244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.260265, 30.983370, 36.664631>,  <37.342426, 30.805780, 36.525665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.260265, 30.983370, 36.664631>,  <37.123333, 31.279352, 36.896244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.260265, 30.983370, 36.664631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493845, 0.665978, -0.559098,
		0.799328, -0.094553, 0.593410,
		0.342333, -0.739955, -0.579029,
		37.362965, 30.761383, 36.490921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.826992, 31.335430, 36.887150>,  <37.123333, 31.279352, 36.896244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.826992, 31.335430, 36.887150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.748535, 31.129454, 36.553356>,  <37.701462, 31.005867, 36.353081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.748535, 31.129454, 36.553356>,  <37.826992, 31.335430, 36.887150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.748535, 31.129454, 36.553356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570378, 0.632316, -0.524257,
		0.797620, -0.578800, 0.169687,
		-0.196144, -0.514943, -0.834482,
		37.689693, 30.974970, 36.303013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.327106, 30.857462, 36.725983>,  <37.826992, 31.335430, 36.887150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.327106, 30.857462, 36.725983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.196209, 30.766155, 36.359200>,  <38.117672, 30.711370, 36.139130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.196209, 30.766155, 36.359200>,  <38.327106, 30.857462, 36.725983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.196209, 30.766155, 36.359200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536096, 0.754252, -0.379084,
		0.778149, -0.615627, -0.124448,
		-0.327240, -0.228268, -0.916956,
		38.098038, 30.697676, 36.084114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.819828, 31.063864, 36.208115>,  <38.327106, 30.857462, 36.725983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.819828, 31.063864, 36.208115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.471519, 31.033672, 36.013771>,  <38.262535, 31.015558, 35.897163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.471519, 31.033672, 36.013771>,  <38.819828, 31.063864, 36.208115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.471519, 31.033672, 36.013771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258441, 0.770375, -0.582864,
		0.418285, -0.633108, -0.651316,
		-0.870773, -0.075476, -0.485857,
		38.210289, 31.011028, 35.868015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.945358, 31.035095, 35.487137>,  <38.819828, 31.063864, 36.208115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.945358, 31.035095, 35.487137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.577980, 31.189888, 35.519894>,  <38.357555, 31.282764, 35.539547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.577980, 31.189888, 35.519894>,  <38.945358, 31.035095, 35.487137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.577980, 31.189888, 35.519894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206076, 0.644845, -0.736008,
		-0.337634, -0.659104, -0.672001,
		-0.918442, 0.386984, 0.081896,
		38.302448, 31.305983, 35.544464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.734180, 31.135727, 34.808105>,  <38.945358, 31.035095, 35.487137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.734180, 31.135727, 34.808105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.494259, 31.381130, 35.013569>,  <38.350307, 31.528372, 35.136845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.494259, 31.381130, 35.013569>,  <38.734180, 31.135727, 34.808105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.494259, 31.381130, 35.013569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271873, 0.760024, -0.590295,
		-0.752542, -0.214413, -0.622662,
		-0.599805, 0.613507, 0.513657,
		38.314316, 31.565182, 35.167667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.494904, 31.589405, 34.372070>,  <38.734180, 31.135727, 34.808105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.494904, 31.589405, 34.372070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.406811, 31.795713, 34.703243>,  <38.353954, 31.919498, 34.901947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.406811, 31.795713, 34.703243>,  <38.494904, 31.589405, 34.372070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.406811, 31.795713, 34.703243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247836, 0.850510, -0.463908,
		-0.943438, 0.103025, -0.315136,
		-0.220232, 0.515770, 0.827937,
		38.340740, 31.950445, 34.951626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.257500, 32.269749, 34.049026>,  <38.494904, 31.589405, 34.372070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.257500, 32.269749, 34.049026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.266720, 32.303322, 34.447510>,  <38.272251, 32.323467, 34.686600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.266720, 32.303322, 34.447510>,  <38.257500, 32.269749, 34.049026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.266720, 32.303322, 34.447510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130349, 0.987711, -0.086232,
		-0.991200, 0.131842, 0.011829,
		0.023052, 0.083931, 0.996205,
		38.273636, 32.328503, 34.746372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.735775, 32.720837, 34.301548>,  <38.257500, 32.269749, 34.049026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.735775, 32.720837, 34.301548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.041332, 32.729916, 34.559525>,  <38.224667, 32.735363, 34.714310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.041332, 32.729916, 34.559525>,  <37.735775, 32.720837, 34.301548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.041332, 32.729916, 34.559525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230619, 0.923788, -0.305663,
		-0.602732, 0.382230, 0.700439,
		0.763891, 0.022698, 0.644946,
		38.270500, 32.736725, 34.753010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.823959, 33.327564, 34.511410>,  <37.735775, 32.720837, 34.301548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.823959, 33.327564, 34.511410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.197468, 33.202625, 34.581276>,  <38.421574, 33.127663, 34.623196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.197468, 33.202625, 34.581276>,  <37.823959, 33.327564, 34.511410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.197468, 33.202625, 34.581276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356160, 0.763569, -0.538620,
		0.034866, 0.565158, 0.824246,
		0.933774, -0.312343, 0.174664,
		38.477600, 33.108921, 34.633675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.177368, 33.921665, 34.647736>,  <37.823959, 33.327564, 34.511410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.177368, 33.921665, 34.647736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.466702, 33.667267, 34.540184>,  <38.640301, 33.514629, 34.475655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.466702, 33.667267, 34.540184>,  <38.177368, 33.921665, 34.647736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.466702, 33.667267, 34.540184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354180, 0.676009, -0.646195,
		0.592742, 0.372184, 0.714238,
		0.723335, -0.635996, -0.268878,
		38.683701, 33.476467, 34.459522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.944946, 34.367043, 34.639351>,  <38.177368, 33.921665, 34.647736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.944946, 34.367043, 34.639351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.042747, 34.044003, 34.424686>,  <39.101429, 33.850178, 34.295887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.042747, 34.044003, 34.424686>,  <38.944946, 34.367043, 34.639351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.042747, 34.044003, 34.424686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502540, 0.578864, -0.642160,
		0.829261, -0.112684, 0.547384,
		0.244500, -0.807600, -0.536658,
		39.116096, 33.801723, 34.263691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.643524, 34.466713, 34.481510>,  <38.944946, 34.367043, 34.639351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.643524, 34.466713, 34.481510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.460693, 34.231049, 34.214989>,  <39.350994, 34.089649, 34.055077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.460693, 34.231049, 34.214989>,  <39.643524, 34.466713, 34.481510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.460693, 34.231049, 34.214989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493876, 0.454914, -0.741039,
		0.739707, -0.667786, 0.083044,
		-0.457078, -0.589165, -0.666306,
		39.323570, 34.054298, 34.015099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.088947, 34.691074, 33.930641>,  <39.643524, 34.466713, 34.481510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.088947, 34.691074, 33.930641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.779373, 34.515312, 33.748238>,  <39.593628, 34.409855, 33.638798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.779373, 34.515312, 33.748238>,  <40.088947, 34.691074, 33.930641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.779373, 34.515312, 33.748238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117745, 0.607688, -0.785399,
		0.622228, -0.661537, -0.418570,
		-0.773931, -0.439412, -0.456013,
		39.547192, 34.383492, 33.611435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.335304, 34.514614, 33.325096>,  <40.088947, 34.691074, 33.930641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.335304, 34.514614, 33.325096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.937267, 34.541195, 33.295792>,  <39.698444, 34.557144, 33.278210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.937267, 34.541195, 33.295792>,  <40.335304, 34.514614, 33.325096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.937267, 34.541195, 33.295792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098751, 0.709462, -0.697791,
		0.005611, -0.701604, -0.712544,
		-0.995096, 0.066449, -0.073265,
		39.638737, 34.561131, 33.273811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.163422, 34.562614, 32.560955>,  <40.335304, 34.514614, 33.325096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.163422, 34.562614, 32.560955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.828651, 34.706699, 32.725780>,  <39.627789, 34.793152, 32.824677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.828651, 34.706699, 32.725780>,  <40.163422, 34.562614, 32.560955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.828651, 34.706699, 32.725780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083526, 0.660006, -0.746602,
		-0.540903, -0.659270, -0.522290,
		-0.836927, 0.360215, 0.412066,
		39.577572, 34.814762, 32.849400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.911430, 34.723099, 32.278164>,  <40.163422, 34.562614, 32.560955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.911430, 34.723099, 32.278164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.083496, 35.071346, 32.182678>,  <41.186737, 35.280293, 32.125389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.083496, 35.071346, 32.182678>,  <40.911430, 34.723099, 32.278164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.083496, 35.071346, 32.182678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606925, -0.083164, 0.790396,
		0.668280, -0.484883, -0.564173,
		0.430168, 0.870616, -0.238711,
		41.212547, 35.332531, 32.111065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.717995, 34.625996, 32.226337>,  <40.911430, 34.723099, 32.278164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.717995, 34.625996, 32.226337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.574799, 34.985756, 32.326675>,  <41.488880, 35.201611, 32.386879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.574799, 34.985756, 32.326675>,  <41.717995, 34.625996, 32.226337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.574799, 34.985756, 32.326675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625974, 0.031842, 0.779193,
		0.692819, 0.435965, -0.574400,
		-0.357991, 0.899400, 0.250842,
		41.467400, 35.255577, 32.401928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.015636, 34.178703, 31.730225>,  <41.717995, 34.625996, 32.226337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.015636, 34.178703, 31.730225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.072784, 34.041023, 32.101410>,  <42.107075, 33.958416, 32.324120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.072784, 34.041023, 32.101410>,  <42.015636, 34.178703, 31.730225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.072784, 34.041023, 32.101410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.737697, -0.588034, -0.331692,
		0.659841, 0.731945, 0.169899,
		0.142874, -0.344198, 0.927963,
		42.115646, 33.937763, 32.379799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.747021, 34.303150, 32.006355>,  <42.015636, 34.178703, 31.730225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.747021, 34.303150, 32.006355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.558247, 33.983261, 32.154797>,  <42.444981, 33.791328, 32.243862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.558247, 33.983261, 32.154797>,  <42.747021, 34.303150, 32.006355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.558247, 33.983261, 32.154797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.687856, -0.597298, -0.412418,
		0.551482, 0.060633, 0.831980,
		-0.471934, -0.799724, 0.371106,
		42.416668, 33.743343, 32.266129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.147141, 33.972057, 32.384602>,  <42.747021, 34.303150, 32.006355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.147141, 33.972057, 32.384602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.870289, 33.760387, 32.188263>,  <42.704178, 33.633385, 32.070457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.870289, 33.760387, 32.188263>,  <43.147141, 33.972057, 32.384602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.870289, 33.760387, 32.188263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.701299, -0.332208, -0.630728,
		0.170700, -0.780778, 0.601039,
		-0.692129, -0.529173, -0.490851,
		42.662651, 33.601635, 32.041008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.831791, 34.026382, 32.080463>,  <43.147141, 33.972057, 32.384602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.831791, 34.026382, 32.080463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.020721, 33.877300, 31.760963>,  <44.134079, 33.787849, 31.569263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.020721, 33.877300, 31.760963>,  <43.831791, 34.026382, 32.080463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.020721, 33.877300, 31.760963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.838689, 0.088702, -0.537338,
		0.271119, 0.923701, -0.270687,
		0.472329, -0.372705, -0.798747,
		44.162418, 33.765488, 31.521339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.894962, 33.389114, 32.440559>,  <43.831791, 34.026382, 32.080463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.894962, 33.389114, 32.440559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.815365, 33.662800, 32.721203>,  <43.767609, 33.827011, 32.889587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.815365, 33.662800, 32.721203>,  <43.894962, 33.389114, 32.440559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.815365, 33.662800, 32.721203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485992, -0.690585, 0.535634,
		0.851008, -0.234389, 0.469943,
		-0.198990, 0.684218, 0.701605,
		43.755669, 33.868065, 32.931683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.940311, 33.022289, 33.143082>,  <43.894962, 33.389114, 32.440559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.940311, 33.022289, 33.143082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.720123, 33.353607, 33.184853>,  <43.588009, 33.552399, 33.209915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.720123, 33.353607, 33.184853>,  <43.940311, 33.022289, 33.143082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.720123, 33.353607, 33.184853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.560696, -0.459477, 0.688841,
		0.618545, 0.320637, 0.717352,
		-0.550474, 0.828296, 0.104427,
		43.554981, 33.602097, 33.216179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.811977, 33.111290, 33.796032>,  <43.940311, 33.022289, 33.143082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.811977, 33.111290, 33.796032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.498051, 33.296009, 33.630714>,  <43.309696, 33.406841, 33.531525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.498051, 33.296009, 33.630714>,  <43.811977, 33.111290, 33.796032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.498051, 33.296009, 33.630714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.602113, -0.410309, 0.684913,
		0.146712, 0.786379, 0.600070,
		-0.784816, 0.461795, -0.413292,
		43.262608, 33.434547, 33.506725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.473839, 33.422588, 34.336395>,  <43.811977, 33.111290, 33.796032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.473839, 33.422588, 34.336395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.217773, 33.311398, 34.049923>,  <43.064133, 33.244682, 33.878040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.217773, 33.311398, 34.049923>,  <43.473839, 33.422588, 34.336395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.217773, 33.311398, 34.049923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582436, -0.432285, 0.688402,
		-0.500958, 0.857820, 0.114826,
		-0.640163, -0.277982, -0.716182,
		43.025723, 33.228004, 33.835068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.972618, 33.477482, 34.812119>,  <43.473839, 33.422588, 34.336395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.972618, 33.477482, 34.812119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.204277, 33.253498, 35.049110>,  <44.343273, 33.119110, 35.191307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.204277, 33.253498, 35.049110>,  <43.972618, 33.477482, 34.812119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.204277, 33.253498, 35.049110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596219, 0.786592, 0.160607,
		-0.555974, 0.260233, 0.789412,
		0.579150, -0.559956, 0.592481,
		44.378021, 33.085510, 35.226856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.478035, 33.687302, 35.357361>,  <43.972618, 33.477482, 34.812119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.478035, 33.687302, 35.357361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.461971, 34.002754, 35.111942>,  <44.452332, 34.192028, 34.964691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.461971, 34.002754, 35.111942>,  <44.478035, 33.687302, 35.357361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.461971, 34.002754, 35.111942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519234, 0.541098, 0.661521,
		0.853688, -0.292011, -0.431215,
		-0.040158, 0.788634, -0.613550,
		44.449924, 34.239346, 34.927876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.188248, 33.544880, 35.284897>,  <44.478035, 33.687302, 35.357361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.188248, 33.544880, 35.284897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.265896, 33.219849, 35.065067>,  <45.312485, 33.024830, 34.933170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.265896, 33.219849, 35.065067>,  <45.188248, 33.544880, 35.284897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.265896, 33.219849, 35.065067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.980947, 0.165188, 0.102255,
		0.007694, -0.558956, 0.829161,
		0.194124, -0.812576, -0.549578,
		45.324135, 32.976074, 34.900192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.546352, 33.051365, 35.706665>,  <45.188248, 33.544880, 35.284897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.546352, 33.051365, 35.706665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.602211, 33.049175, 35.310589>,  <45.635727, 33.047859, 35.072945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.602211, 33.049175, 35.310589>,  <45.546352, 33.051365, 35.706665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.602211, 33.049175, 35.310589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.967174, 0.215157, 0.135210,
		0.212305, -0.976564, 0.035343,
		0.139646, -0.005478, -0.990186,
		45.644104, 33.047531, 35.013535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.129215, 32.727123, 35.660988>,  <45.546352, 33.051365, 35.706665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.129215, 32.727123, 35.660988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.109680, 32.968670, 35.342754>,  <46.097958, 33.113598, 35.151814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.109680, 32.968670, 35.342754>,  <46.129215, 32.727123, 35.660988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.109680, 32.968670, 35.342754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.990054, 0.134492, 0.041303,
		0.131941, -0.785654, -0.604434,
		-0.048841, 0.603871, -0.795584,
		46.095028, 33.149830, 35.104080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.398457, 32.460697, 34.976879>,  <46.129215, 32.727123, 35.660988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.398457, 32.460697, 34.976879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.440723, 32.853382, 35.040222>,  <46.466084, 33.088993, 35.078228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.440723, 32.853382, 35.040222>,  <46.398457, 32.460697, 34.976879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.440723, 32.853382, 35.040222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.992767, -0.113277, 0.039786,
		0.056997, 0.153005, -0.986580,
		0.105669, 0.981712, 0.158355,
		46.472424, 33.147896, 35.087730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.916119, 32.728264, 34.530617>,  <46.398457, 32.460697, 34.976879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.916119, 32.728264, 34.530617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.867954, 32.959671, 34.853310>,  <46.839058, 33.098515, 35.046925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.867954, 32.959671, 34.853310>,  <46.916119, 32.728264, 34.530617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.867954, 32.959671, 34.853310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.990390, 0.014298, 0.137565,
		0.068048, 0.815546, -0.574678,
		-0.120407, 0.578516, 0.806735,
		46.831833, 33.133224, 35.095329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.236675, 33.377499, 34.454399>,  <46.916119, 32.728264, 34.530617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.236675, 33.377499, 34.454399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.225498, 33.292377, 34.845078>,  <47.218792, 33.241306, 35.079483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.225498, 33.292377, 34.845078>,  <47.236675, 33.377499, 34.454399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.225498, 33.292377, 34.845078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.952783, 0.289877, 0.090420,
		-0.302364, 0.933106, 0.194654,
		-0.027946, -0.212802, 0.976696,
		47.217113, 33.228539, 35.138084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.455284, 33.884327, 34.906872>,  <47.236675, 33.377499, 34.454399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.455284, 33.884327, 34.906872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.542427, 33.544281, 35.098640>,  <47.594711, 33.340252, 35.213699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.542427, 33.544281, 35.098640>,  <47.455284, 33.884327, 34.906872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.542427, 33.544281, 35.098640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.963953, 0.264303, 0.030635,
		-0.152755, 0.455463, 0.877052,
		0.217854, -0.850116, 0.479419,
		47.607784, 33.289246, 35.242466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.944775, 34.385239, 34.512054>,  <47.455284, 33.884327, 34.906872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.944775, 34.385239, 34.512054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.793530, 34.611763, 34.219116>,  <46.702782, 34.747677, 34.043354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.793530, 34.611763, 34.219116>,  <46.944775, 34.385239, 34.512054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.793530, 34.611763, 34.219116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.882117, -0.019633, -0.470620,
		-0.280894, -0.823960, -0.492127,
		-0.378110, 0.566308, -0.732344,
		46.680096, 34.781654, 33.999413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.570015, 34.769890, 34.397339>,  <46.944775, 34.385239, 34.512054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.570015, 34.769890, 34.397339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.592426, 35.064163, 34.667343>,  <47.605873, 35.240726, 34.829346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.592426, 35.064163, 34.667343>,  <47.570015, 34.769890, 34.397339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.592426, 35.064163, 34.667343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212894, -0.651720, 0.727968,
		0.975468, -0.184489, 0.120110,
		0.056024, 0.735680, 0.675008,
		47.609234, 35.284866, 34.869846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<39.380562, 37.343117, 24.038349> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.013847, 37.333813, 23.878866>,  <38.793819, 37.328232, 23.783176>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.013847, 37.333813, 23.878866>,  <39.380562, 37.343117, 24.038349>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.013847, 37.333813, 23.878866> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285950, -0.658718, 0.695933,
		-0.278821, 0.752030, 0.597251,
		-0.916783, -0.023257, -0.398708,
		38.738811, 37.326836, 23.759254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.952469, 37.390045, 24.584875>,  <39.380562, 37.343117, 24.038349>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.952469, 37.390045, 24.584875> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.736687, 37.212124, 24.298899>,  <38.607220, 37.105373, 24.127312>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.736687, 37.212124, 24.298899>,  <38.952469, 37.390045, 24.584875>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.736687, 37.212124, 24.298899> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453226, -0.562200, 0.691749,
		-0.709632, 0.697196, 0.101685,
		-0.539452, -0.444801, -0.714943,
		38.574852, 37.078682, 24.084415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.335030, 37.484039, 24.783154>,  <38.952469, 37.390045, 24.584875>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.335030, 37.484039, 24.783154> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.340271, 37.162178, 24.545712>,  <38.343418, 36.969063, 24.403246>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.340271, 37.162178, 24.545712>,  <38.335030, 37.484039, 24.783154>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.340271, 37.162178, 24.545712> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456749, -0.532919, 0.712305,
		-0.889499, 0.261792, -0.374508,
		0.013107, -0.804650, -0.593604,
		38.344204, 36.920784, 24.367630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.804741, 37.162788, 24.956047>,  <38.335030, 37.484039, 24.783154>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.804741, 37.162788, 24.956047> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.969009, 36.860191, 24.752455>,  <38.067570, 36.678631, 24.630301>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.969009, 36.860191, 24.752455>,  <37.804741, 37.162788, 24.956047>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.969009, 36.860191, 24.752455> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549277, -0.650827, 0.524137,
		-0.727765, 0.064321, -0.682804,
		0.410674, -0.756497, -0.508979,
		38.092213, 36.633244, 24.599762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.239468, 36.826241, 24.561285>,  <37.804741, 37.162788, 24.956047>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.239468, 36.826241, 24.561285> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.541943, 36.570282, 24.616005>,  <37.723427, 36.416706, 24.648838>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.541943, 36.570282, 24.616005>,  <37.239468, 36.826241, 24.561285>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.541943, 36.570282, 24.616005> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.609491, -0.612693, 0.503118,
		-0.238127, -0.463829, -0.853322,
		0.756185, -0.639898, 0.136801,
		37.768799, 36.378311, 24.657045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.986603, 36.119701, 24.516382>,  <37.239468, 36.826241, 24.561285>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.986603, 36.119701, 24.516382> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.321568, 36.103794, 24.734434>,  <37.522545, 36.094250, 24.865265>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.321568, 36.103794, 24.734434>,  <36.986603, 36.119701, 24.516382>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.321568, 36.103794, 24.734434> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475307, -0.545422, 0.690361,
		0.269869, -0.837218, -0.475644,
		0.837409, -0.039770, 0.545128,
		37.572792, 36.091862, 24.897972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.754593, 35.551071, 24.882458>,  <36.986603, 36.119701, 24.516382>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.754593, 35.551071, 24.882458> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.098202, 35.628635, 25.071972>,  <37.304367, 35.675175, 25.185680>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.098202, 35.628635, 25.071972>,  <36.754593, 35.551071, 24.882458>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.098202, 35.628635, 25.071972> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268063, -0.618089, 0.738991,
		0.436138, -0.761817, -0.478976,
		0.859026, 0.193907, 0.473787,
		37.355911, 35.686806, 25.214108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.079605, 34.911064, 25.016058>,  <36.754593, 35.551071, 24.882458>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.079605, 34.911064, 25.016058> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.216072, 35.184082, 25.274588>,  <37.297951, 35.347893, 25.429707>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.216072, 35.184082, 25.274588>,  <37.079605, 34.911064, 25.016058>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.216072, 35.184082, 25.274588> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211839, -0.614064, 0.760295,
		0.915823, -0.396303, -0.064907,
		0.341165, 0.682546, 0.646326,
		37.318420, 35.388847, 25.468485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.573177, 34.592274, 25.384665>,  <37.079605, 34.911064, 25.016058>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.573177, 34.592274, 25.384665> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.410854, 34.886551, 25.601578>,  <37.313461, 35.063118, 25.731726>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.410854, 34.886551, 25.601578>,  <37.573177, 34.592274, 25.384665>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.410854, 34.886551, 25.601578> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091008, -0.622915, 0.776978,
		0.909415, 0.265953, 0.319739,
		-0.405810, 0.735694, 0.542284,
		37.289112, 35.107258, 25.764263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.783878, 34.455048, 26.032696>,  <37.573177, 34.592274, 25.384665>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.783878, 34.455048, 26.032696> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.485245, 34.713646, 26.095507>,  <37.306065, 34.868805, 26.133192>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.485245, 34.713646, 26.095507>,  <37.783878, 34.455048, 26.032696>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.485245, 34.713646, 26.095507> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169743, -0.413312, 0.894629,
		0.643277, 0.641258, 0.418310,
		-0.746580, 0.646499, 0.157025,
		37.261272, 34.907597, 26.142614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.945671, 34.771492, 26.665934>,  <37.783878, 34.455048, 26.032696>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.945671, 34.771492, 26.665934> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.553421, 34.810829, 26.598173>,  <37.318069, 34.834431, 26.557516>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.553421, 34.810829, 26.598173>,  <37.945671, 34.771492, 26.665934>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.553421, 34.810829, 26.598173> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185276, -0.185016, 0.965112,
		0.063572, 0.977802, 0.199653,
		-0.980628, 0.098345, -0.169401,
		37.259232, 34.840332, 26.547354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.719650, 35.304390, 27.099237>,  <37.945671, 34.771492, 26.665934>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.719650, 35.304390, 27.099237> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.406017, 35.073788, 27.007271>,  <37.217838, 34.935429, 26.952091>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.406017, 35.073788, 27.007271>,  <37.719650, 35.304390, 27.099237>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.406017, 35.073788, 27.007271> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123563, -0.218035, 0.968087,
		-0.608236, 0.787467, 0.099723,
		-0.784080, -0.576503, -0.229919,
		37.170792, 34.900837, 26.938295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.166481, 35.459911, 27.616943>,  <37.719650, 35.304390, 27.099237>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.166481, 35.459911, 27.616943> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.065639, 35.093182, 27.493088>,  <37.005135, 34.873142, 27.418774>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.065639, 35.093182, 27.493088>,  <37.166481, 35.459911, 27.616943>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.065639, 35.093182, 27.493088> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224756, -0.255749, 0.940254,
		-0.941236, 0.306639, -0.141585,
		-0.252108, -0.916823, -0.309639,
		36.990005, 34.818134, 27.400196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.737686, 35.228123, 28.141218>,  <37.166481, 35.459911, 27.616943>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.737686, 35.228123, 28.141218> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.811237, 34.890343, 27.939985>,  <36.855370, 34.687675, 27.819246>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.811237, 34.890343, 27.939985>,  <36.737686, 35.228123, 28.141218>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.811237, 34.890343, 27.939985> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272074, -0.535537, 0.799485,
		-0.944544, -0.010136, -0.328229,
		0.183883, -0.844451, -0.503081,
		36.866402, 34.637009, 27.789061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.168678, 34.774426, 28.216671>,  <36.737686, 35.228123, 28.141218>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.168678, 34.774426, 28.216671> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.474457, 34.538200, 28.113253>,  <36.657925, 34.396465, 28.051201>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.474457, 34.538200, 28.113253>,  <36.168678, 34.774426, 28.216671>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.474457, 34.538200, 28.113253> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137843, -0.541502, 0.829322,
		-0.629775, -0.598336, -0.495356,
		0.764449, -0.590567, -0.258548,
		36.703793, 34.361031, 28.035688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.010021, 34.079475, 28.561117>,  <36.168678, 34.774426, 28.216671>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.010021, 34.079475, 28.561117> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.394337, 34.034771, 28.459614>,  <36.624928, 34.007950, 28.398712>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.394337, 34.034771, 28.459614>,  <36.010021, 34.079475, 28.561117>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.394337, 34.034771, 28.459614> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136469, -0.606059, 0.783625,
		-0.241371, -0.787529, -0.567043,
		0.960789, -0.111760, -0.253759,
		36.682575, 34.001244, 28.383486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.157715, 33.368103, 28.677652>,  <36.010021, 34.079475, 28.561117>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.157715, 33.368103, 28.677652> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.511017, 33.555550, 28.684130>,  <36.723000, 33.668018, 28.688017>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.511017, 33.555550, 28.684130>,  <36.157715, 33.368103, 28.677652>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.511017, 33.555550, 28.684130> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328168, -0.642470, 0.692487,
		0.334914, -0.606328, -0.721249,
		0.883255, 0.468614, 0.016195,
		36.775993, 33.696133, 28.688988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.640644, 32.862862, 28.656706>,  <36.157715, 33.368103, 28.677652>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.640644, 32.862862, 28.656706> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.809689, 33.182510, 28.827728>,  <36.911114, 33.374298, 28.930342>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.809689, 33.182510, 28.827728>,  <36.640644, 32.862862, 28.656706>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.809689, 33.182510, 28.827728> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268441, -0.560954, 0.783116,
		0.865644, -0.216180, -0.451582,
		0.422611, 0.799123, 0.427555,
		36.936470, 33.422249, 28.955996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.235588, 32.572449, 28.982922>,  <36.640644, 32.862862, 28.656706>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.235588, 32.572449, 28.982922> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.203255, 32.935551, 29.147581>,  <37.183853, 33.153412, 29.246376>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.203255, 32.935551, 29.147581>,  <37.235588, 32.572449, 28.982922>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.203255, 32.935551, 29.147581> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268198, -0.377960, 0.886124,
		0.959967, 0.182032, -0.212905,
		-0.080833, 0.907750, 0.411649,
		37.179005, 33.207874, 29.271076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.885532, 32.808887, 29.280293>,  <37.235588, 32.572449, 28.982922>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.885532, 32.808887, 29.280293> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.608498, 33.018990, 29.478050>,  <37.442276, 33.145050, 29.596704>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.608498, 33.018990, 29.478050>,  <37.885532, 32.808887, 29.280293>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.608498, 33.018990, 29.478050> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314191, -0.397285, 0.862235,
		0.649308, 0.752510, 0.110126,
		-0.692592, 0.525256, 0.494392,
		37.400719, 33.176567, 29.626368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.204742, 33.209980, 29.798632>,  <37.885532, 32.808887, 29.280293>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.204742, 33.209980, 29.798632> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.830212, 33.139481, 29.920111>,  <37.605495, 33.097179, 29.992998>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.830212, 33.139481, 29.920111>,  <38.204742, 33.209980, 29.798632>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.830212, 33.139481, 29.920111> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350809, -0.432279, 0.830703,
		-0.015131, 0.884347, 0.466584,
		-0.936325, -0.176251, 0.303697,
		37.549313, 33.086605, 30.011219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.114319, 33.520195, 30.497761>,  <38.204742, 33.209980, 29.798632>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.114319, 33.520195, 30.497761> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.847298, 33.227299, 30.443802>,  <37.687084, 33.051559, 30.411427>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.847298, 33.227299, 30.443802>,  <38.114319, 33.520195, 30.497761>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.847298, 33.227299, 30.443802> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217235, -0.364837, 0.905374,
		-0.712170, 0.575078, 0.402616,
		-0.667550, -0.732243, -0.134899,
		37.647034, 33.007626, 30.403332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.130497, 33.661716, 31.195349>,  <38.114319, 33.520195, 30.497761>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.130497, 33.661716, 31.195349> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.509491, 33.533802, 31.194662>,  <38.736889, 33.457054, 31.194250>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.509491, 33.533802, 31.194662>,  <38.130497, 33.661716, 31.195349>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.509491, 33.533802, 31.194662> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152094, 0.455347, -0.877226,
		0.281306, 0.830901, 0.480074,
		0.947489, -0.319785, -0.001717,
		38.793739, 33.437866, 31.194147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.556049, 34.336014, 31.123453>,  <38.130497, 33.661716, 31.195349>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.556049, 34.336014, 31.123453> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.770489, 34.014877, 31.019110>,  <38.899155, 33.822197, 30.956503>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.770489, 34.014877, 31.019110>,  <38.556049, 34.336014, 31.123453>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.770489, 34.014877, 31.019110> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342702, 0.489396, -0.801902,
		0.771461, 0.340503, 0.537500,
		0.536100, -0.802838, -0.260859,
		38.931320, 33.774025, 30.940851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.193508, 34.600388, 30.908318>,  <38.556049, 34.336014, 31.123453>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.193508, 34.600388, 30.908318> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.233070, 34.239040, 30.741394>,  <39.256805, 34.022232, 30.641239>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.233070, 34.239040, 30.741394>,  <39.193508, 34.600388, 30.908318>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.233070, 34.239040, 30.741394> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622219, 0.383414, -0.682523,
		0.776571, -0.192155, 0.600012,
		0.098903, -0.903366, -0.417311,
		39.262741, 33.968029, 30.616201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.935204, 34.532314, 30.707882>,  <39.193508, 34.600388, 30.908318>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.935204, 34.532314, 30.707882> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.756474, 34.235023, 30.508703>,  <39.649235, 34.056648, 30.389196>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.756474, 34.235023, 30.508703>,  <39.935204, 34.532314, 30.707882>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.756474, 34.235023, 30.508703> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567625, 0.194686, -0.799937,
		0.691482, -0.640083, 0.334885,
		-0.446828, -0.743231, -0.497949,
		39.622425, 34.012054, 30.359318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.492809, 34.074032, 30.247875>,  <39.935204, 34.532314, 30.707882>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.492809, 34.074032, 30.247875> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.138874, 34.024750, 30.068151>,  <39.926514, 33.995182, 29.960318>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.138874, 34.024750, 30.068151>,  <40.492809, 34.074032, 30.247875>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.138874, 34.024750, 30.068151> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420336, 0.204840, -0.883945,
		0.200903, -0.971016, -0.129484,
		-0.884848, -0.123161, -0.449306,
		39.873421, 33.987789, 29.933357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.699917, 33.788815, 29.603985>,  <40.492809, 34.074032, 30.247875>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.699917, 33.788815, 29.603985> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.328091, 33.917618, 29.532185>,  <40.104996, 33.994900, 29.489103>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.328091, 33.917618, 29.532185>,  <40.699917, 33.788815, 29.603985>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.328091, 33.917618, 29.532185> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284337, 0.316293, -0.905048,
		-0.234662, -0.892338, -0.385574,
		-0.929562, 0.322013, -0.179503,
		40.049221, 34.014221, 29.478334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.584160, 33.541405, 28.993416>,  <40.699917, 33.788815, 29.603985>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.584160, 33.541405, 28.993416> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.315041, 33.835278, 29.028229>,  <40.153568, 34.011600, 29.049116>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.315041, 33.835278, 29.028229>,  <40.584160, 33.541405, 28.993416>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.315041, 33.835278, 29.028229> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263833, 0.348173, -0.899538,
		-0.691181, -0.582248, -0.428085,
		-0.672802, 0.734686, 0.087034,
		40.113201, 34.055683, 29.054338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.441200, 33.684944, 28.338886>,  <40.584160, 33.541405, 28.993416>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.441200, 33.684944, 28.338886> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.273273, 34.018826, 28.481445>,  <40.172520, 34.219154, 28.566980>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.273273, 34.018826, 28.481445>,  <40.441200, 33.684944, 28.338886>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.273273, 34.018826, 28.481445> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068096, 0.362604, -0.929452,
		-0.905053, -0.414465, -0.095385,
		-0.419813, 0.834708, 0.356399,
		40.147331, 34.269238, 28.588366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.728821, 33.889496, 28.010723>,  <40.441200, 33.684944, 28.338886>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.728821, 33.889496, 28.010723> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.920879, 34.214329, 28.143377>,  <40.036114, 34.409229, 28.222971>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.920879, 34.214329, 28.143377>,  <39.728821, 33.889496, 28.010723>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.920879, 34.214329, 28.143377> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133222, 0.306174, -0.942608,
		-0.867013, 0.496771, 0.038821,
		0.480146, 0.812081, 0.331638,
		40.064922, 34.457954, 28.242868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.622204, 34.417881, 27.485792>,  <39.728821, 33.889496, 28.010723>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.622204, 34.417881, 27.485792> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.899170, 34.591042, 27.716673>,  <40.065350, 34.694939, 27.855202>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.899170, 34.591042, 27.716673>,  <39.622204, 34.417881, 27.485792>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.899170, 34.591042, 27.716673> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371691, 0.471651, -0.799619,
		-0.618393, 0.768207, 0.165672,
		0.692413, 0.432900, 0.577201,
		40.106895, 34.720913, 27.889833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.575130, 35.264290, 27.481243>,  <39.622204, 34.417881, 27.485792>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.575130, 35.264290, 27.481243> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.951401, 35.205212, 27.603436>,  <40.177162, 35.169765, 27.676750>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.951401, 35.205212, 27.603436>,  <39.575130, 35.264290, 27.481243>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.951401, 35.205212, 27.603436> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324336, 0.655900, -0.681616,
		-0.099691, 0.740257, 0.664892,
		0.940674, -0.147698, 0.305480,
		40.233604, 35.160904, 27.695080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.880081, 35.940308, 27.630960>,  <39.575130, 35.264290, 27.481243>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.880081, 35.940308, 27.630960> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.179665, 35.681252, 27.574944>,  <40.359417, 35.525818, 27.541334>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.179665, 35.681252, 27.574944>,  <39.880081, 35.940308, 27.630960>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.179665, 35.681252, 27.574944> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321404, 0.539902, -0.777950,
		0.579444, 0.537645, 0.612522,
		0.748962, -0.647645, -0.140042,
		40.404354, 35.486958, 27.532930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.493546, 36.339649, 27.560036>,  <39.880081, 35.940308, 27.630960>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.493546, 36.339649, 27.560036> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.507057, 35.989552, 27.367035>,  <40.515163, 35.779491, 27.251234>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.507057, 35.989552, 27.367035>,  <40.493546, 36.339649, 27.560036>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.507057, 35.989552, 27.367035> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240097, 0.475746, -0.846179,
		0.970161, -0.087266, 0.226213,
		0.033778, -0.875243, -0.482503,
		40.517189, 35.726978, 27.222284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.171249, 36.208229, 27.301384>,  <40.493546, 36.339649, 27.560036>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.171249, 36.208229, 27.301384> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.947483, 35.954594, 27.087849>,  <40.813221, 35.802414, 26.959728>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.947483, 35.954594, 27.087849>,  <41.171249, 36.208229, 27.301384>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.947483, 35.954594, 27.087849> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319731, 0.429125, -0.844763,
		0.764738, -0.643260, -0.037323,
		-0.559418, -0.634088, -0.533838,
		40.779659, 35.764366, 26.927698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.592457, 36.018593, 26.824284>,  <41.171249, 36.208229, 27.301384>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.592457, 36.018593, 26.824284> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.212803, 35.960281, 26.712646>,  <40.985012, 35.925293, 26.645664>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.212803, 35.960281, 26.712646>,  <41.592457, 36.018593, 26.824284>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.212803, 35.960281, 26.712646> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180589, 0.474074, -0.861767,
		0.257938, -0.868333, -0.423634,
		-0.949134, -0.145779, -0.279092,
		40.928062, 35.916546, 26.628920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.651283, 35.778046, 26.169455>,  <41.592457, 36.018593, 26.824284>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.651283, 35.778046, 26.169455> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.276630, 35.916050, 26.193733>,  <41.051838, 35.998852, 26.208302>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.276630, 35.916050, 26.193733>,  <41.651283, 35.778046, 26.169455>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.276630, 35.916050, 26.193733> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119073, 0.476502, -0.871072,
		-0.329456, -0.808647, -0.487389,
		-0.936633, 0.345015, 0.060699,
		40.995640, 36.019554, 26.211943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.400814, 35.700848, 25.479843>,  <41.651283, 35.778046, 26.169455>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.400814, 35.700848, 25.479843> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.169975, 35.980175, 25.649221>,  <41.031471, 36.147770, 25.750849>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.169975, 35.980175, 25.649221>,  <41.400814, 35.700848, 25.479843>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.169975, 35.980175, 25.649221> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092393, 0.571000, -0.815734,
		-0.811432, -0.431635, -0.394043,
		-0.577098, 0.698319, 0.423448,
		40.996845, 36.189671, 25.776257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.956448, 35.973854, 24.933163>,  <41.400814, 35.700848, 25.479843>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.956448, 35.973854, 24.933163> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.952168, 36.257729, 25.214937>,  <40.949600, 36.428051, 25.384003>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.952168, 36.257729, 25.214937>,  <40.956448, 35.973854, 24.933163>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.952168, 36.257729, 25.214937> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069452, 0.703305, -0.707488,
		-0.997528, 0.041356, -0.056813,
		-0.010698, 0.709684, 0.704439,
		40.948959, 36.470634, 25.426270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<40.534687, 36.468021, 24.617188> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.700817, 36.692772, 24.903349>,  <40.800495, 36.827621, 25.075045>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.700817, 36.692772, 24.903349>,  <40.534687, 36.468021, 24.617188>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.700817, 36.692772, 24.903349> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120595, 0.813504, -0.568919,
		-0.901645, 0.150010, 0.405627,
		0.415323, 0.561879, 0.715401,
		40.825413, 36.861336, 25.117970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.122829, 37.041023, 24.604898>,  <40.534687, 36.468021, 24.617188>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.122829, 37.041023, 24.604898> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.448345, 37.182087, 24.789667>,  <40.643654, 37.266727, 24.900528>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.448345, 37.182087, 24.789667>,  <40.122829, 37.041023, 24.604898>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.448345, 37.182087, 24.789667> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005840, 0.799756, -0.600297,
		-0.581127, 0.485819, 0.652894,
		0.813792, 0.352662, 0.461923,
		40.692482, 37.287884, 24.928244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.900570, 37.681763, 24.742113>,  <40.122829, 37.041023, 24.604898>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.900570, 37.681763, 24.742113> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.299900, 37.681282, 24.765276>,  <40.539497, 37.680996, 24.779173>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.299900, 37.681282, 24.765276>,  <39.900570, 37.681763, 24.742113>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.299900, 37.681282, 24.765276> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039017, 0.752837, -0.657049,
		-0.042807, 0.658205, 0.751621,
		0.998321, -0.001200, 0.057908,
		40.599396, 37.680923, 24.782648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.071743, 38.398327, 24.888956>,  <39.900570, 37.681763, 24.742113>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.071743, 38.398327, 24.888956> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.393188, 38.211868, 24.740948>,  <40.586056, 38.099995, 24.652142>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.393188, 38.211868, 24.740948>,  <40.071743, 38.398327, 24.888956>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.393188, 38.211868, 24.740948> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017535, 0.640002, -0.768173,
		0.594894, 0.610825, 0.522488,
		0.803613, -0.466143, -0.370022,
		40.634274, 38.072025, 24.629942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.430706, 38.946026, 24.516392>,  <40.071743, 38.398327, 24.888956>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.430706, 38.946026, 24.516392> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.622910, 38.631840, 24.360363>,  <40.738232, 38.443329, 24.266747>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.622910, 38.631840, 24.360363>,  <40.430706, 38.946026, 24.516392>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.622910, 38.631840, 24.360363> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197203, 0.530165, -0.824643,
		0.854533, 0.319321, 0.409643,
		0.480505, -0.785467, -0.390072,
		40.767059, 38.396198, 24.243341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.864876, 39.360439, 24.108459>,  <40.430706, 38.946026, 24.516392>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.864876, 39.360439, 24.108459> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.859127, 38.979790, 23.985691>,  <40.855679, 38.751400, 23.912029>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.859127, 38.979790, 23.985691>,  <40.864876, 39.360439, 24.108459>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.859127, 38.979790, 23.985691> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022489, 0.306569, -0.951583,
		0.999644, -0.020574, 0.016996,
		-0.014367, -0.951626, -0.306922,
		40.854816, 38.694302, 23.893614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.253246, 39.472366, 23.621328>,  <40.864876, 39.360439, 24.108459>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.253246, 39.472366, 23.621328> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.091187, 39.116611, 23.536629>,  <40.993950, 38.903156, 23.485809>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.091187, 39.116611, 23.536629>,  <41.253246, 39.472366, 23.621328>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.091187, 39.116611, 23.536629> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125808, 0.175171, -0.976467,
		0.905553, -0.422254, 0.040923,
		-0.405149, -0.889391, -0.211750,
		40.969643, 38.849792, 23.473104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.752422, 38.938068, 23.220058>,  <41.253246, 39.472366, 23.621328>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.752422, 38.938068, 23.220058> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.363281, 38.887733, 23.142365>,  <41.129799, 38.857533, 23.095747>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.363281, 38.887733, 23.142365>,  <41.752422, 38.938068, 23.220058>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.363281, 38.887733, 23.142365> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138593, 0.355371, -0.924394,
		0.185349, -0.926216, -0.328282,
		-0.972850, -0.125838, -0.194235,
		41.071426, 38.849983, 23.084093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.757740, 38.589176, 22.602543>,  <41.752422, 38.938068, 23.220058>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.757740, 38.589176, 22.602543> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.401924, 38.771500, 22.614855>,  <41.188435, 38.880894, 22.622242>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.401924, 38.771500, 22.614855>,  <41.757740, 38.589176, 22.602543>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.401924, 38.771500, 22.614855> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184169, 0.419446, -0.888902,
		-0.418084, -0.785048, -0.457061,
		-0.889544, 0.455812, 0.030782,
		41.135059, 38.908241, 22.624090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.351978, 38.443336, 22.005888>,  <41.757740, 38.589176, 22.602543>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.351978, 38.443336, 22.005888> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.228031, 38.796638, 22.146648>,  <41.153664, 39.008621, 22.231106>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.228031, 38.796638, 22.146648>,  <41.351978, 38.443336, 22.005888>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.228031, 38.796638, 22.146648> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068708, 0.389955, -0.918267,
		-0.948293, -0.260365, -0.181523,
		-0.309871, 0.883258, 0.351902,
		41.135071, 39.061615, 22.252218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.941578, 38.686596, 21.516775>,  <41.351978, 38.443336, 22.005888>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.941578, 38.686596, 21.516775> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.983875, 39.014668, 21.741673>,  <41.009254, 39.211510, 21.876612>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.983875, 39.014668, 21.741673>,  <40.941578, 38.686596, 21.516775>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.983875, 39.014668, 21.741673> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042032, 0.561222, -0.826597,
		-0.993505, 0.111040, 0.024872,
		0.105744, 0.820183, 0.562244,
		41.015598, 39.260723, 21.910345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.618057, 39.096985, 21.192556>,  <40.941578, 38.686596, 21.516775>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.618057, 39.096985, 21.192556> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.805553, 39.359119, 21.429474>,  <40.918053, 39.516399, 21.571625>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.805553, 39.359119, 21.429474>,  <40.618057, 39.096985, 21.192556>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.805553, 39.359119, 21.429474> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118651, 0.617732, -0.777386,
		-0.875330, 0.434670, 0.211801,
		0.468743, 0.655339, 0.592293,
		40.946175, 39.555721, 21.607162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.271770, 39.708954, 21.086241>,  <40.618057, 39.096985, 21.192556>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.271770, 39.708954, 21.086241> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.636986, 39.802898, 21.219633>,  <40.856113, 39.859264, 21.299669>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.636986, 39.802898, 21.219633>,  <40.271770, 39.708954, 21.086241>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.636986, 39.802898, 21.219633> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020412, 0.790259, -0.612432,
		-0.407370, 0.565979, 0.716741,
		0.913035, 0.234857, 0.333481,
		40.910896, 39.873356, 21.319677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.213482, 40.384903, 21.331253>,  <40.271770, 39.708954, 21.086241>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.213482, 40.384903, 21.331253> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.603077, 40.341610, 21.251612>,  <40.836834, 40.315632, 21.203827>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.603077, 40.341610, 21.251612>,  <40.213482, 40.384903, 21.331253>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.603077, 40.341610, 21.251612> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008548, 0.860401, -0.509546,
		0.226459, 0.497991, 0.837091,
		0.973983, -0.108235, -0.199102,
		40.895271, 40.309139, 21.191881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.530125, 41.084862, 21.344713>,  <40.213482, 40.384903, 21.331253>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.530125, 41.084862, 21.344713> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.828117, 40.872543, 21.183090>,  <41.006912, 40.745152, 21.086117>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.828117, 40.872543, 21.183090>,  <40.530125, 41.084862, 21.344713>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.828117, 40.872543, 21.183090> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294937, 0.805367, -0.514194,
		0.598347, 0.263892, 0.756533,
		0.744978, -0.530797, -0.404058,
		41.051609, 40.713303, 21.061872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.142422, 41.493656, 21.403658>,  <40.530125, 41.084862, 21.344713>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.142422, 41.493656, 21.403658> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.168575, 41.228321, 21.105474>,  <41.184265, 41.069118, 20.926563>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.168575, 41.228321, 21.105474>,  <41.142422, 41.493656, 21.403658>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.168575, 41.228321, 21.105474> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186504, 0.742016, -0.643916,
		0.980276, -0.096932, 0.172227,
		0.065379, -0.663337, -0.745459,
		41.188190, 41.029320, 20.881836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.697895, 41.697647, 20.959171>,  <41.142422, 41.493656, 21.403658>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.697895, 41.697647, 20.959171> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.480934, 41.465008, 20.716669>,  <41.350758, 41.325424, 20.571167>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.480934, 41.465008, 20.716669>,  <41.697895, 41.697647, 20.959171>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.480934, 41.465008, 20.716669> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132435, 0.653417, -0.745324,
		0.829616, -0.484554, -0.277390,
		-0.542401, -0.581596, -0.606257,
		41.318214, 41.290527, 20.534792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.084461, 41.756485, 20.403990>,  <41.697895, 41.697647, 20.959171>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.084461, 41.756485, 20.403990> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.732178, 41.617527, 20.275194>,  <41.520809, 41.534153, 20.197916>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.732178, 41.617527, 20.275194>,  <42.084461, 41.756485, 20.403990>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.732178, 41.617527, 20.275194> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085024, 0.552797, -0.828967,
		0.465971, -0.757453, -0.457314,
		-0.880705, -0.347392, -0.321989,
		41.467968, 41.513309, 20.178596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.182209, 41.550663, 19.829002>,  <42.084461, 41.756485, 20.403990>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.182209, 41.550663, 19.829002> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.790646, 41.631008, 19.814093>,  <41.555706, 41.679214, 19.805147>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.790646, 41.631008, 19.814093>,  <42.182209, 41.550663, 19.829002>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.790646, 41.631008, 19.814093> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143553, 0.546489, -0.825071,
		-0.145356, -0.813022, -0.563798,
		-0.978910, 0.200863, -0.037276,
		41.496971, 41.691269, 19.802910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.021358, 41.638557, 19.033861>,  <42.182209, 41.550663, 19.829002>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.021358, 41.638557, 19.033861> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.732151, 41.804199, 19.255047>,  <41.558628, 41.903584, 19.387758>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.732151, 41.804199, 19.255047>,  <42.021358, 41.638557, 19.033861>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.732151, 41.804199, 19.255047> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112725, 0.718983, -0.685826,
		-0.681574, -0.558195, -0.473156,
		-0.723015, 0.414104, 0.552962,
		41.515247, 41.928429, 19.420935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.531532, 41.827400, 18.511156>,  <42.021358, 41.638557, 19.033861>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.531532, 41.827400, 18.511156> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.417030, 42.032524, 18.834904>,  <41.348328, 42.155598, 19.029152>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.417030, 42.032524, 18.834904>,  <41.531532, 41.827400, 18.511156>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.417030, 42.032524, 18.834904> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403719, 0.701518, -0.587268,
		-0.868946, -0.494868, 0.006217,
		-0.286259, 0.512814, 0.809369,
		41.331154, 42.186367, 19.077715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.827084, 42.005062, 18.357134>,  <41.531532, 41.827400, 18.511156>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.827084, 42.005062, 18.357134> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.984959, 42.258945, 18.622873>,  <41.079685, 42.411278, 18.782316>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.984959, 42.258945, 18.622873>,  <40.827084, 42.005062, 18.357134>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.984959, 42.258945, 18.622873> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402745, 0.769399, -0.495803,
		-0.825842, -0.071873, 0.559303,
		0.394692, 0.634712, 0.664349,
		41.103367, 42.449360, 18.822178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.328659, 42.565979, 18.314680>,  <40.827084, 42.005062, 18.357134>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.328659, 42.565979, 18.314680> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.629662, 42.716057, 18.531187>,  <40.810261, 42.806103, 18.661091>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.629662, 42.716057, 18.531187>,  <40.328659, 42.565979, 18.314680>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.629662, 42.716057, 18.531187> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283494, 0.926353, -0.247995,
		-0.594450, 0.033171, 0.803448,
		0.752503, 0.375193, 0.541267,
		40.855412, 42.828613, 18.693567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.791065, 42.864361, 17.865913>,  <40.328659, 42.565979, 18.314680>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.791065, 42.864361, 17.865913> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.408737, 42.980953, 17.850731>,  <39.179340, 43.050911, 17.841621>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.408737, 42.980953, 17.850731>,  <39.791065, 42.864361, 17.865913>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.408737, 42.980953, 17.850731> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176743, -0.466736, 0.866556,
		0.234872, 0.834982, 0.497635,
		-0.955823, 0.291483, -0.037954,
		39.121990, 43.068398, 17.839344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.551849, 43.068325, 18.602797>,  <39.791065, 42.864361, 17.865913>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.551849, 43.068325, 18.602797> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.263233, 42.923931, 18.366468>,  <39.090065, 42.837296, 18.224672>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.263233, 42.923931, 18.366468>,  <39.551849, 43.068325, 18.602797>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.263233, 42.923931, 18.366468> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235127, -0.674859, 0.699486,
		-0.651225, 0.643625, 0.402061,
		-0.721541, -0.360987, -0.590819,
		39.046772, 42.815636, 18.189222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.964668, 42.943474, 19.023346>,  <39.551849, 43.068325, 18.602797>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.964668, 42.943474, 19.023346> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.853970, 42.734501, 18.700739>,  <38.787552, 42.609116, 18.507174>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.853970, 42.734501, 18.700739>,  <38.964668, 42.943474, 19.023346>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.853970, 42.734501, 18.700739> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014116, -0.841419, 0.540198,
		-0.960839, 0.138113, 0.240235,
		-0.276747, -0.522435, -0.806519,
		38.770947, 42.577770, 18.458784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.429523, 42.504745, 19.193481>,  <38.964668, 42.943474, 19.023346>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.429523, 42.504745, 19.193481> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.624393, 42.338024, 18.886513>,  <38.741318, 42.237991, 18.702332>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.624393, 42.338024, 18.886513>,  <38.429523, 42.504745, 19.193481>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.624393, 42.338024, 18.886513> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187638, -0.808274, 0.558108,
		-0.852907, -0.415895, -0.315565,
		0.487177, -0.416802, -0.767421,
		38.770546, 42.212982, 18.656286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.008278, 41.984371, 18.957758>,  <38.429523, 42.504745, 19.193481>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.008278, 41.984371, 18.957758> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.359486, 41.877132, 18.799158>,  <38.570210, 41.812790, 18.703999>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.359486, 41.877132, 18.799158>,  <38.008278, 41.984371, 18.957758>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.359486, 41.877132, 18.799158> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065932, -0.888254, 0.454596,
		-0.474065, -0.373001, -0.797579,
		0.878018, -0.268094, -0.396498,
		38.622890, 41.796703, 18.680208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.776741, 41.374798, 18.645176>,  <38.008278, 41.984371, 18.957758>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.776741, 41.374798, 18.645176> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.176647, 41.374737, 18.653900>,  <38.416592, 41.374702, 18.659134>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.176647, 41.374737, 18.653900>,  <37.776741, 41.374798, 18.645176>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.176647, 41.374737, 18.653900> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010927, -0.868889, 0.494887,
		0.018877, -0.495008, -0.868684,
		0.999762, -0.000150, 0.021811,
		38.476574, 41.374691, 18.660442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.890488, 40.762943, 18.602411>,  <37.776741, 41.374798, 18.645176>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.890488, 40.762943, 18.602411> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.241619, 40.881519, 18.752899>,  <38.452297, 40.952663, 18.843191>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.241619, 40.881519, 18.752899>,  <37.890488, 40.762943, 18.602411>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.241619, 40.881519, 18.752899> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061910, -0.849099, 0.524593,
		0.474958, -0.437211, -0.763716,
		0.877828, 0.296441, 0.376219,
		38.504967, 40.970451, 18.865765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.321396, 40.240166, 18.595066>,  <37.890488, 40.762943, 18.602411>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.321396, 40.240166, 18.595066> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.454185, 40.479359, 18.886877>,  <38.533859, 40.622875, 19.061964>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.454185, 40.479359, 18.886877>,  <38.321396, 40.240166, 18.595066>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.454185, 40.479359, 18.886877> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103764, -0.791847, 0.601840,
		0.937562, -0.124099, -0.324925,
		0.331979, 0.597978, 0.729529,
		38.553780, 40.658752, 19.105736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.770798, 39.833523, 18.941038>,  <38.321396, 40.240166, 18.595066>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.770798, 39.833523, 18.941038> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.701714, 40.121441, 19.209980>,  <38.660263, 40.294193, 19.371346>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.701714, 40.121441, 19.209980>,  <38.770798, 39.833523, 18.941038>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.701714, 40.121441, 19.209980> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150593, -0.655290, 0.740215,
		0.973392, 0.229095, 0.004779,
		-0.172711, 0.719799, 0.672354,
		38.649899, 40.337379, 19.411686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.281902, 39.696552, 19.445326>,  <38.770798, 39.833523, 18.941038>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.281902, 39.696552, 19.445326> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.015240, 39.941612, 19.615141>,  <38.855244, 40.088646, 19.717030>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.015240, 39.941612, 19.615141>,  <39.281902, 39.696552, 19.445326>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.015240, 39.941612, 19.615141> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032410, -0.592859, 0.804654,
		0.744661, 0.522668, 0.415089,
		-0.666655, 0.612647, 0.424540,
		38.815243, 40.125408, 19.742502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.601818, 40.081940, 20.075106>,  <39.281902, 39.696552, 19.445326>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.601818, 40.081940, 20.075106> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.207245, 40.041550, 20.126879>,  <38.970501, 40.017315, 20.157944>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.207245, 40.041550, 20.126879>,  <39.601818, 40.081940, 20.075106>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.207245, 40.041550, 20.126879> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155551, -0.322902, 0.933562,
		-0.052474, 0.941030, 0.334229,
		-0.986433, -0.100977, 0.129434,
		38.911316, 40.011257, 20.165709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.513439, 40.231319, 20.847462>,  <39.601818, 40.081940, 20.075106>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.513439, 40.231319, 20.847462> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.173836, 40.052952, 20.734083>,  <38.970074, 39.945930, 20.666056>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.173836, 40.052952, 20.734083>,  <39.513439, 40.231319, 20.847462>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.173836, 40.052952, 20.734083> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124873, -0.351917, 0.927664,
		-0.513413, 0.822989, 0.243097,
		-0.849007, -0.445919, -0.283448,
		38.919132, 39.919174, 20.649050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.225800, 40.084343, 21.428804>,  <39.513439, 40.231319, 20.847462>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.225800, 40.084343, 21.428804> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.967751, 39.873363, 21.207676>,  <38.812920, 39.746777, 21.074999>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.967751, 39.873363, 21.207676>,  <39.225800, 40.084343, 21.428804>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.967751, 39.873363, 21.207676> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171024, -0.605477, 0.777270,
		-0.744691, 0.595982, 0.300401,
		-0.645125, -0.527450, -0.552820,
		38.774212, 39.715130, 21.041830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.597698, 40.043846, 21.873247>,  <39.225800, 40.084343, 21.428804>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.597698, 40.043846, 21.873247> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.615955, 39.752106, 21.600199>,  <38.626911, 39.577065, 21.436371>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.615955, 39.752106, 21.600199>,  <38.597698, 40.043846, 21.873247>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.615955, 39.752106, 21.600199> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192069, -0.676991, 0.710488,
		-0.980319, 0.098678, -0.170987,
		0.045647, -0.729346, -0.682620,
		38.629650, 39.533302, 21.395412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.029736, 39.621006, 21.960026>,  <38.597698, 40.043846, 21.873247>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.029736, 39.621006, 21.960026> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.278271, 39.382607, 21.756569>,  <38.427391, 39.239567, 21.634495>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.278271, 39.382607, 21.756569>,  <38.029736, 39.621006, 21.960026>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.278271, 39.382607, 21.756569> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161844, -0.732783, 0.660935,
		-0.766647, -0.328342, -0.551765,
		0.621336, -0.596004, -0.508646,
		38.464672, 39.203804, 21.603975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.639450, 39.019764, 21.781681>,  <38.029736, 39.621006, 21.960026>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.639450, 39.019764, 21.781681> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.032322, 38.953560, 21.817305>,  <38.268044, 38.913837, 21.838678>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.032322, 38.953560, 21.817305>,  <37.639450, 39.019764, 21.781681>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.032322, 38.953560, 21.817305> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186840, -0.808398, 0.558197,
		-0.020392, -0.564889, -0.824915,
		0.982178, -0.165510, 0.089059,
		38.326977, 38.903908, 21.844023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.712364, 38.283596, 21.788671>,  <37.639450, 39.019764, 21.781681>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.712364, 38.283596, 21.788671> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.062099, 38.417099, 21.929605>,  <38.271942, 38.497200, 22.014166>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.062099, 38.417099, 21.929605>,  <37.712364, 38.283596, 21.788671>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.062099, 38.417099, 21.929605> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015107, -0.744359, 0.667609,
		0.485081, -0.578394, -0.655864,
		0.874339, 0.333753, 0.352336,
		38.324402, 38.517223, 22.035307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.055424, 37.684097, 21.841576>,  <37.712364, 38.283596, 21.788671>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.055424, 37.684097, 21.841576> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.238598, 37.940926, 22.087517>,  <38.348503, 38.095024, 22.235081>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.238598, 37.940926, 22.087517>,  <38.055424, 37.684097, 21.841576>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.238598, 37.940926, 22.087517> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162765, -0.740498, 0.652051,
		0.873960, -0.198519, -0.443604,
		0.457932, 0.642070, 0.614853,
		38.375977, 38.133545, 22.271973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.626774, 37.347351, 22.015120>,  <38.055424, 37.684097, 21.841576>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.626774, 37.347351, 22.015120> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.535904, 37.609039, 22.303673>,  <38.481384, 37.766052, 22.476805>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.535904, 37.609039, 22.303673>,  <38.626774, 37.347351, 22.015120>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.535904, 37.609039, 22.303673> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184653, -0.698375, 0.691502,
		0.956188, 0.290296, 0.037849,
		-0.227173, 0.654217, 0.721382,
		38.467751, 37.805305, 22.520088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.156738, 37.179993, 22.491541>,  <38.626774, 37.347351, 22.015120>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.156738, 37.179993, 22.491541> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.896217, 37.407066, 22.692953>,  <38.739906, 37.543312, 22.813801>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.896217, 37.407066, 22.692953>,  <39.156738, 37.179993, 22.491541>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.896217, 37.407066, 22.692953> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133399, -0.567580, 0.812440,
		0.747004, 0.596311, 0.293935,
		-0.651299, 0.567685, 0.503531,
		38.700829, 37.577374, 22.844013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.501469, 37.242237, 23.236719>,  <39.156738, 37.179993, 22.491541>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.501469, 37.242237, 23.236719> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.118237, 37.356335, 23.247364>,  <38.888298, 37.424793, 23.253752>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.118237, 37.356335, 23.247364>,  <39.501469, 37.242237, 23.236719>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.118237, 37.356335, 23.247364> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082234, -0.362815, 0.928226,
		0.274429, 0.887130, 0.371064,
		-0.958085, 0.285246, 0.026614,
		38.830811, 37.441910, 23.255348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<41.500134, 34.824455, 27.314651> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.175945, 35.038052, 27.410976>,  <40.981434, 35.166210, 27.468771>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.175945, 35.038052, 27.410976>,  <41.500134, 34.824455, 27.314651>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.175945, 35.038052, 27.410976> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226450, -0.664746, 0.711922,
		0.540242, 0.522459, 0.659679,
		-0.810469, 0.533994, 0.240813,
		40.932804, 35.198250, 27.483221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.480186, 34.915710, 28.057823>,  <41.500134, 34.824455, 27.314651>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.480186, 34.915710, 28.057823> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.100491, 34.982533, 27.951210>,  <40.872673, 35.022625, 27.887243>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.100491, 34.982533, 27.951210>,  <41.480186, 34.915710, 28.057823>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.100491, 34.982533, 27.951210> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307566, -0.315270, 0.897779,
		0.065948, 0.934183, 0.350647,
		-0.949238, 0.167054, -0.266532,
		40.815720, 35.032650, 27.871250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.074810, 35.149818, 28.673752>,  <41.480186, 34.915710, 28.057823>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.074810, 35.149818, 28.673752> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.780651, 35.039242, 28.426277>,  <40.604156, 34.972897, 28.277792>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.780651, 35.039242, 28.426277>,  <41.074810, 35.149818, 28.673752>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.780651, 35.039242, 28.426277> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555201, -0.277664, 0.783999,
		-0.388517, 0.920045, 0.050712,
		-0.735396, -0.276442, -0.618687,
		40.560032, 34.956310, 28.240671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.483383, 35.558201, 28.856567>,  <41.074810, 35.149818, 28.673752>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.483383, 35.558201, 28.856567> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.344650, 35.233307, 28.668961>,  <40.261410, 35.038368, 28.556396>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.344650, 35.233307, 28.668961>,  <40.483383, 35.558201, 28.856567>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.344650, 35.233307, 28.668961> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485182, -0.272579, 0.830843,
		-0.802685, 0.515724, -0.299543,
		-0.346836, -0.812238, -0.469015,
		40.240601, 34.989635, 28.528255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.746826, 35.396366, 29.071125>,  <40.483383, 35.558201, 28.856567>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.746826, 35.396366, 29.071125> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.828590, 35.039219, 28.910627>,  <39.877647, 34.824928, 28.814329>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.828590, 35.039219, 28.910627>,  <39.746826, 35.396366, 29.071125>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.828590, 35.039219, 28.910627> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442504, -0.449911, 0.775739,
		-0.873160, 0.018986, -0.487064,
		0.204407, -0.892872, -0.401246,
		39.889912, 34.771358, 28.790255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.141903, 34.993191, 29.071266>,  <39.746826, 35.396366, 29.071125>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.141903, 34.993191, 29.071266> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.432926, 34.719112, 29.084976>,  <39.607540, 34.554665, 29.093203>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.432926, 34.719112, 29.084976>,  <39.141903, 34.993191, 29.071266>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.432926, 34.719112, 29.084976> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505885, -0.502072, 0.701430,
		-0.463404, -0.527670, -0.711914,
		0.727556, -0.685192, 0.034279,
		39.651192, 34.513554, 29.095259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.855682, 34.355480, 29.192427>,  <39.141903, 34.993191, 29.071266>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.855682, 34.355480, 29.192427> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.227852, 34.261772, 29.305159>,  <39.451153, 34.205547, 29.372797>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.227852, 34.261772, 29.305159>,  <38.855682, 34.355480, 29.192427>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.227852, 34.261772, 29.305159> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366453, -0.584979, 0.723541,
		-0.004638, -0.776478, -0.630127,
		0.930425, -0.234268, 0.281830,
		39.506981, 34.191490, 29.389708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.683308, 33.763878, 29.446686>,  <38.855682, 34.355480, 29.192427>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.683308, 33.763878, 29.446686> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.043552, 33.850395, 29.597483>,  <39.259697, 33.902306, 29.687960>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.043552, 33.850395, 29.597483>,  <38.683308, 33.763878, 29.446686>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.043552, 33.850395, 29.597483> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169412, -0.624074, 0.762778,
		0.400257, -0.750831, -0.525402,
		0.900607, 0.216298, 0.376990,
		39.313736, 33.915283, 29.710579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.995213, 33.133560, 29.671370>,  <38.683308, 33.763878, 29.446686>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.995213, 33.133560, 29.671370> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.185101, 33.419323, 29.876993>,  <39.299034, 33.590782, 30.000368>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.185101, 33.419323, 29.876993>,  <38.995213, 33.133560, 29.671370>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.185101, 33.419323, 29.876993> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059489, -0.556689, 0.828588,
		0.878124, -0.423928, -0.221772,
		0.474720, 0.714410, 0.514061,
		39.327515, 33.633648, 30.031212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.376629, 32.724770, 30.125561>,  <38.995213, 33.133560, 29.671370>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.376629, 32.724770, 30.125561> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.370201, 33.098610, 30.267691>,  <39.366344, 33.322914, 30.352968>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.370201, 33.098610, 30.267691>,  <39.376629, 32.724770, 30.125561>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.370201, 33.098610, 30.267691> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056483, -0.355651, 0.932911,
		0.998274, -0.005077, 0.058505,
		-0.016071, 0.934605, 0.355323,
		39.365379, 33.378990, 30.374289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.776127, 32.791386, 30.701303>,  <39.376629, 32.724770, 30.125561>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.776127, 32.791386, 30.701303> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.528507, 33.095928, 30.778355>,  <39.379936, 33.278656, 30.824585>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.528507, 33.095928, 30.778355>,  <39.776127, 32.791386, 30.701303>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.528507, 33.095928, 30.778355> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090604, -0.312874, 0.945463,
		0.780106, 0.567839, 0.262667,
		-0.619052, 0.761360, 0.192627,
		39.342793, 33.324337, 30.836143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.012424, 33.029633, 31.296227>,  <39.776127, 32.791386, 30.701303>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.012424, 33.029633, 31.296227> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.630779, 33.143787, 31.259949>,  <39.401794, 33.212280, 31.238182>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.630779, 33.143787, 31.259949>,  <40.012424, 33.029633, 31.296227>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.630779, 33.143787, 31.259949> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164543, -0.246586, 0.955050,
		0.250198, 0.926147, 0.282229,
		-0.954110, 0.285391, -0.090695,
		39.344547, 33.229404, 31.232740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.930477, 33.646751, 31.704416>,  <40.012424, 33.029633, 31.296227>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.930477, 33.646751, 31.704416> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.593712, 33.433533, 31.670853>,  <39.391651, 33.305599, 31.650715>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.593712, 33.433533, 31.670853>,  <39.930477, 33.646751, 31.704416>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.593712, 33.433533, 31.670853> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062490, -0.058142, 0.996351,
		-0.535982, 0.844085, 0.015640,
		-0.841914, -0.533048, -0.083910,
		39.341137, 33.273617, 31.645679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.324821, 33.864548, 32.100216>,  <39.930477, 33.646751, 31.704416>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.324821, 33.864548, 32.100216> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.363609, 33.469208, 32.053295>,  <39.386883, 33.232002, 32.025143>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.363609, 33.469208, 32.053295>,  <39.324821, 33.864548, 32.100216>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.363609, 33.469208, 32.053295> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283286, -0.140391, 0.948704,
		-0.954120, -0.058769, -0.293600,
		0.096973, -0.988351, -0.117301,
		39.392700, 33.172703, 32.018105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.660324, 34.554138, 32.052025>,  <39.324821, 33.864548, 32.100216>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.660324, 34.554138, 32.052025> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.499424, 34.837830, 32.283611>,  <39.402885, 35.008045, 32.422562>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.499424, 34.837830, 32.283611>,  <39.660324, 34.554138, 32.052025>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.499424, 34.837830, 32.283611> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201982, 0.685544, -0.699452,
		-0.892973, -0.164412, -0.419008,
		-0.402247, 0.709224, 0.578964,
		39.378750, 35.050598, 32.457302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.187939, 34.945812, 31.709869>,  <39.660324, 34.554138, 32.052025>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.187939, 34.945812, 31.709869> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.281918, 35.181355, 32.019203>,  <39.338306, 35.322681, 32.204803>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.281918, 35.181355, 32.019203>,  <39.187939, 34.945812, 31.709869>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.281918, 35.181355, 32.019203> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126268, 0.770375, -0.624964,
		-0.963771, 0.244484, 0.106647,
		0.234952, 0.588856, 0.773335,
		39.352402, 35.358009, 32.251205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.676762, 35.425720, 31.609974>,  <39.187939, 34.945812, 31.709869>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.676762, 35.425720, 31.609974> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.986652, 35.576950, 31.812698>,  <39.172585, 35.667690, 31.934334>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.986652, 35.576950, 31.812698>,  <38.676762, 35.425720, 31.609974>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.986652, 35.576950, 31.812698> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146827, 0.887198, -0.437402,
		-0.615015, 0.264453, 0.742847,
		0.774725, 0.378079, 0.506811,
		39.219070, 35.690372, 31.964743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.479877, 36.165882, 31.851748>,  <38.676762, 35.425720, 31.609974>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.479877, 36.165882, 31.851748> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.877548, 36.122780, 31.851732>,  <39.116150, 36.096916, 31.851723>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.877548, 36.122780, 31.851732>,  <38.479877, 36.165882, 31.851748>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.877548, 36.122780, 31.851732> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097313, 0.897949, -0.429206,
		0.046285, 0.426703, 0.903206,
		0.994177, -0.107760, -0.000038,
		39.175800, 36.090450, 31.851721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.718895, 36.918480, 31.979959>,  <38.479877, 36.165882, 31.851748>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.718895, 36.918480, 31.979959> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.040009, 36.718380, 31.850163>,  <39.232677, 36.598320, 31.772285>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.040009, 36.718380, 31.850163>,  <38.718895, 36.918480, 31.979959>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.040009, 36.718380, 31.850163> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251842, 0.777738, -0.575934,
		0.540477, 0.380629, 0.750338,
		0.802783, -0.500245, -0.324490,
		39.280842, 36.568306, 31.752815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.189266, 37.500950, 31.940990>,  <38.718895, 36.918480, 31.979959>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.189266, 37.500950, 31.940990> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.354546, 37.205418, 31.728048>,  <39.453712, 37.028099, 31.600283>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.354546, 37.205418, 31.728048>,  <39.189266, 37.500950, 31.940990>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.354546, 37.205418, 31.728048> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450004, 0.673888, -0.585979,
		0.791686, 0.002561, 0.610922,
		0.413194, -0.738829, -0.532355,
		39.478504, 36.983768, 31.568342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.872471, 37.759933, 31.740795>,  <39.189266, 37.500950, 31.940990>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.872471, 37.759933, 31.740795> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.791092, 37.452324, 31.498405>,  <39.742264, 37.267757, 31.352972>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.791092, 37.452324, 31.498405>,  <39.872471, 37.759933, 31.740795>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.791092, 37.452324, 31.498405> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410290, 0.494990, -0.765929,
		0.888972, -0.404451, 0.214821,
		-0.203446, -0.769029, -0.605974,
		39.730057, 37.221615, 31.316614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.559444, 37.555939, 31.526184>,  <39.872471, 37.759933, 31.740795>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.559444, 37.555939, 31.526184> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.265945, 37.436245, 31.282192>,  <40.089844, 37.364429, 31.135798>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.265945, 37.436245, 31.282192>,  <40.559444, 37.555939, 31.526184>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.265945, 37.436245, 31.282192> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483390, 0.400972, -0.778175,
		0.477438, -0.865842, -0.149568,
		-0.733749, -0.299230, -0.609979,
		40.045822, 37.346478, 31.099199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.870674, 37.374878, 30.861198>,  <40.559444, 37.555939, 31.526184>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.870674, 37.374878, 30.861198> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.486725, 37.432098, 30.764725>,  <40.256355, 37.466431, 30.706841>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.486725, 37.432098, 30.764725>,  <40.870674, 37.374878, 30.861198>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.486725, 37.432098, 30.764725> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279821, 0.432498, -0.857115,
		-0.018300, -0.890215, -0.455174,
		-0.959878, 0.143053, -0.241186,
		40.198761, 37.475014, 30.692369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.819450, 37.360741, 30.168001>,  <40.870674, 37.374878, 30.861198>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.819450, 37.360741, 30.168001> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.447109, 37.499500, 30.213913>,  <40.223705, 37.582756, 30.241459>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.447109, 37.499500, 30.213913>,  <40.819450, 37.360741, 30.168001>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.447109, 37.499500, 30.213913> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010975, 0.340522, -0.940172,
		-0.365232, -0.873902, -0.320783,
		-0.930852, 0.346901, 0.114778,
		40.167854, 37.603569, 30.248346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.350670, 37.185852, 29.530285>,  <40.819450, 37.360741, 30.168001>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.350670, 37.185852, 29.530285> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.209209, 37.512062, 29.713520>,  <40.124332, 37.707790, 29.823462>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.209209, 37.512062, 29.713520>,  <40.350670, 37.185852, 29.530285>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.209209, 37.512062, 29.713520> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138044, 0.438869, -0.887884,
		-0.925136, -0.377235, -0.042626,
		-0.353648, 0.815529, 0.458088,
		40.103115, 37.756721, 29.850946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.735188, 37.331989, 29.138626>,  <40.350670, 37.185852, 29.530285>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.735188, 37.331989, 29.138626> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.819042, 37.657619, 29.355270>,  <39.869354, 37.852997, 29.485256>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.819042, 37.657619, 29.355270>,  <39.735188, 37.331989, 29.138626>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.819042, 37.657619, 29.355270> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047770, 0.561784, -0.825904,
		-0.976613, 0.147263, 0.156656,
		0.209632, 0.814072, 0.541610,
		39.881931, 37.901840, 29.517754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.254898, 37.841244, 29.014578>,  <39.735188, 37.331989, 29.138626>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.254898, 37.841244, 29.014578> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.555740, 38.068962, 29.147388>,  <39.736244, 38.205593, 29.227076>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.555740, 38.068962, 29.147388>,  <39.254898, 37.841244, 29.014578>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.555740, 38.068962, 29.147388> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023613, 0.480197, -0.876843,
		-0.658623, 0.667316, 0.347714,
		0.752102, 0.569299, 0.332026,
		39.781372, 38.239750, 29.246996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.187691, 38.456039, 28.496798>,  <39.254898, 37.841244, 29.014578>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.187691, 38.456039, 28.496798> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.533623, 38.499851, 28.692783>,  <39.741184, 38.526138, 28.810375>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.533623, 38.499851, 28.692783>,  <39.187691, 38.456039, 28.496798>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.533623, 38.499851, 28.692783> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367578, 0.526604, -0.766534,
		-0.341976, 0.843025, 0.415164,
		0.864834, 0.109531, 0.489964,
		39.793072, 38.532711, 28.839773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.649811, 38.889759, 28.862722>,  <39.187691, 38.456039, 28.496798>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.649811, 38.889759, 28.862722> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.276936, 38.983849, 28.752670>,  <38.053211, 39.040302, 28.686640>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.276936, 38.983849, 28.752670>,  <38.649811, 38.889759, 28.862722>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.276936, 38.983849, 28.752670> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360593, -0.669926, 0.648978,
		-0.031659, 0.704178, 0.709317,
		-0.932186, 0.235228, -0.275131,
		37.997280, 39.054417, 28.670132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.262058, 39.041138, 29.526417>,  <38.649811, 38.889759, 28.862722>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.262058, 39.041138, 29.526417> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.971432, 38.955627, 29.265221>,  <37.797054, 38.904320, 29.108503>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.971432, 38.955627, 29.265221>,  <38.262058, 39.041138, 29.526417>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.971432, 38.955627, 29.265221> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541199, -0.407469, 0.735576,
		-0.423322, 0.887845, 0.180359,
		-0.726569, -0.213775, -0.652992,
		37.753460, 38.891495, 29.069323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.689556, 39.102810, 29.989380>,  <38.262058, 39.041138, 29.526417>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.689556, 39.102810, 29.989380> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.564213, 38.900482, 29.667896>,  <37.489006, 38.779083, 29.475006>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.564213, 38.900482, 29.667896>,  <37.689556, 39.102810, 29.989380>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.564213, 38.900482, 29.667896> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.704348, -0.443859, 0.553970,
		-0.636944, 0.739684, -0.217188,
		-0.313362, -0.505824, -0.803708,
		37.470203, 38.748734, 29.426785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.936489, 39.094337, 29.955704>,  <37.689556, 39.102810, 29.989380>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.936489, 39.094337, 29.955704> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.015789, 38.786617, 29.712763>,  <37.063370, 38.601986, 29.566998>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.015789, 38.786617, 29.712763>,  <36.936489, 39.094337, 29.955704>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.015789, 38.786617, 29.712763> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.648315, -0.567658, 0.507397,
		-0.735108, 0.293164, -0.611286,
		0.198251, -0.769298, -0.607353,
		37.075264, 38.555828, 29.530558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.280434, 38.755642, 29.748177>,  <36.936489, 39.094337, 29.955704>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.280434, 38.755642, 29.748177> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.566769, 38.480709, 29.698929>,  <36.738571, 38.315750, 29.669380>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.566769, 38.480709, 29.698929>,  <36.280434, 38.755642, 29.748177>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.566769, 38.480709, 29.698929> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.580900, -0.684027, 0.441207,
		-0.387471, -0.244311, -0.888920,
		0.715836, -0.687328, -0.123121,
		36.781521, 38.274509, 29.661993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.858501, 38.161991, 29.652367>,  <36.280434, 38.755642, 29.748177>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.858501, 38.161991, 29.652367> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.222095, 38.010979, 29.723045>,  <36.440250, 37.920372, 29.765453>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.222095, 38.010979, 29.723045>,  <35.858501, 38.161991, 29.652367>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.222095, 38.010979, 29.723045> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415338, -0.784480, 0.460527,
		-0.035246, -0.492001, -0.869881,
		0.908984, -0.377526, 0.176697,
		36.494789, 37.897720, 29.776054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.822746, 37.458908, 29.457752>,  <35.858501, 38.161991, 29.652367>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.822746, 37.458908, 29.457752> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.135662, 37.465191, 29.706841>,  <36.323410, 37.468960, 29.856293>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.135662, 37.465191, 29.706841>,  <35.822746, 37.458908, 29.457752>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.135662, 37.465191, 29.706841> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252228, -0.906077, 0.339714,
		0.569570, -0.422821, -0.704849,
		0.782286, 0.015708, 0.622722,
		36.370346, 37.469902, 29.893658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.007866, 36.855663, 29.374405>,  <35.822746, 37.458908, 29.457752>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.007866, 36.855663, 29.374405> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.190102, 36.970779, 29.711361>,  <36.299442, 37.039848, 29.913534>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.190102, 36.970779, 29.711361>,  <36.007866, 36.855663, 29.374405>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.190102, 36.970779, 29.711361> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299653, -0.841496, 0.449547,
		0.838242, -0.457232, -0.297136,
		0.455585, 0.287792, 0.842388,
		36.326778, 37.057117, 29.964077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.483418, 36.340187, 29.617687>,  <36.007866, 36.855663, 29.374405>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.483418, 36.340187, 29.617687> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.378796, 36.547878, 29.943136>,  <36.316021, 36.672493, 30.138407>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.378796, 36.547878, 29.943136>,  <36.483418, 36.340187, 29.617687>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.378796, 36.547878, 29.943136> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320140, -0.841920, 0.434374,
		0.910548, -0.146860, 0.386438,
		-0.261558, 0.519232, 0.813625,
		36.300327, 36.703648, 30.187223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.597809, 35.891224, 30.154593>,  <36.483418, 36.340187, 29.617687>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.597809, 35.891224, 30.154593> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.388401, 36.183105, 30.330528>,  <36.262756, 36.358234, 30.436090>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.388401, 36.183105, 30.330528>,  <36.597809, 35.891224, 30.154593>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.388401, 36.183105, 30.330528> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290102, -0.638057, 0.713249,
		0.801102, 0.245804, 0.545726,
		-0.523524, 0.729701, 0.439841,
		36.231342, 36.402016, 30.462481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.786762, 35.861843, 30.838047>,  <36.597809, 35.891224, 30.154593>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.786762, 35.861843, 30.838047> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.430016, 36.042755, 30.836132>,  <36.215969, 36.151302, 30.834984>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.430016, 36.042755, 30.836132>,  <36.786762, 35.861843, 30.838047>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.430016, 36.042755, 30.836132> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326685, -0.636806, 0.698394,
		0.312823, 0.624435, 0.715697,
		-0.891862, 0.452282, -0.004786,
		36.162457, 36.178440, 30.834696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.665730, 35.883057, 31.499794>,  <36.786762, 35.861843, 30.838047>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.665730, 35.883057, 31.499794> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.308498, 35.911282, 31.322060>,  <36.094162, 35.928215, 31.215418>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.308498, 35.911282, 31.322060>,  <36.665730, 35.883057, 31.499794>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.308498, 35.911282, 31.322060> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338473, -0.756017, 0.560245,
		-0.296396, 0.650738, 0.699063,
		-0.893076, 0.070559, -0.444338,
		36.040577, 35.932449, 31.188759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<39.196514, 42.525356, 26.569044> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.978840, 42.249359, 26.378143>,  <38.848236, 42.083759, 26.263603>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.978840, 42.249359, 26.378143>,  <39.196514, 42.525356, 26.569044>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.978840, 42.249359, 26.378143> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054349, -0.538669, 0.840762,
		-0.837201, 0.483471, 0.255637,
		-0.544188, -0.689994, -0.477250,
		38.815582, 42.042362, 26.234968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.662296, 42.437752, 26.993389>,  <39.196514, 42.525356, 26.569044>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.662296, 42.437752, 26.993389> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.643776, 42.111988, 26.762011>,  <38.632664, 41.916531, 26.623184>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.643776, 42.111988, 26.762011>,  <38.662296, 42.437752, 26.993389>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.643776, 42.111988, 26.762011> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514447, -0.476928, 0.712660,
		-0.856271, 0.330579, -0.396884,
		-0.046305, -0.814406, -0.578444,
		38.629883, 41.867664, 26.588478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.129852, 42.162567, 27.248329>,  <38.662296, 42.437752, 26.993389>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.129852, 42.162567, 27.248329> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.299683, 41.847931, 27.068991>,  <38.401581, 41.659149, 26.961388>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.299683, 41.847931, 27.068991>,  <38.129852, 42.162567, 27.248329>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.299683, 41.847931, 27.068991> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454818, -0.613477, 0.645590,
		-0.782862, -0.070189, -0.618223,
		0.424579, -0.786587, -0.448345,
		38.427055, 41.611954, 26.934486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.588524, 41.719482, 27.198248>,  <38.129852, 42.162567, 27.248329>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.588524, 41.719482, 27.198248> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.899776, 41.470062, 27.168036>,  <38.086529, 41.320412, 27.149908>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.899776, 41.470062, 27.168036>,  <37.588524, 41.719482, 27.198248>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.899776, 41.470062, 27.168036> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467653, -0.655423, 0.593061,
		-0.419305, -0.426156, -0.801607,
		0.778128, -0.623548, -0.075529,
		38.133213, 41.282997, 27.145376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.312286, 41.042355, 27.154787>,  <37.588524, 41.719482, 27.198248>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.312286, 41.042355, 27.154787> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.693676, 40.940479, 27.219303>,  <37.922512, 40.879353, 27.258013>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.693676, 40.940479, 27.219303>,  <37.312286, 41.042355, 27.154787>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.693676, 40.940479, 27.219303> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300400, -0.757823, 0.579192,
		-0.025285, -0.600698, -0.799076,
		0.953478, -0.254687, 0.161289,
		37.979721, 40.864075, 27.267689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.459293, 40.277729, 27.002436>,  <37.312286, 41.042355, 27.154787>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.459293, 40.277729, 27.002436> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.760796, 40.368263, 27.249216>,  <37.941696, 40.422585, 27.397285>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.760796, 40.368263, 27.249216>,  <37.459293, 40.277729, 27.002436>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.760796, 40.368263, 27.249216> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137456, -0.863753, 0.484806,
		0.642621, -0.450228, -0.619946,
		0.753753, 0.226331, 0.616952,
		37.986923, 40.436161, 27.434301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.884476, 39.642590, 27.048653>,  <37.459293, 40.277729, 27.002436>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.884476, 39.642590, 27.048653> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.965710, 39.840626, 27.386562>,  <38.014450, 39.959446, 27.589308>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.965710, 39.840626, 27.386562>,  <37.884476, 39.642590, 27.048653>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.965710, 39.840626, 27.386562> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144381, -0.838181, 0.525934,
		0.968457, -0.228781, -0.098744,
		0.203089, 0.495087, 0.844774,
		38.026638, 39.989151, 27.639996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.217800, 39.167786, 27.429953>,  <37.884476, 39.642590, 27.048653>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.217800, 39.167786, 27.429953> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.121872, 39.439846, 27.707047>,  <38.064316, 39.603081, 27.873302>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.121872, 39.439846, 27.707047>,  <38.217800, 39.167786, 27.429953>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.121872, 39.439846, 27.707047> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136441, -0.730089, 0.669592,
		0.961181, 0.066065, 0.267891,
		-0.239821, 0.680151, 0.692734,
		38.049927, 39.643890, 27.914867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.628319, 38.976006, 28.014215>,  <38.217800, 39.167786, 27.429953>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.628319, 38.976006, 28.014215> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.299606, 39.173969, 28.127167>,  <38.102379, 39.292747, 28.194937>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.299606, 39.173969, 28.127167>,  <38.628319, 38.976006, 28.014215>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.299606, 39.173969, 28.127167> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261940, -0.768229, 0.584133,
		0.506025, 0.406064, 0.760954,
		-0.821782, 0.494910, 0.282378,
		38.053070, 39.322441, 28.211880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.329948, 39.155098, 28.325901>,  <38.628319, 38.976006, 28.014215>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.329948, 39.155098, 28.325901> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.663727, 38.962795, 28.433661>,  <39.863995, 38.847412, 28.498316>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.663727, 38.962795, 28.433661>,  <39.329948, 39.155098, 28.325901>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.663727, 38.962795, 28.433661> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514718, 0.505238, -0.692676,
		0.196896, 0.716665, 0.669047,
		0.834444, -0.480756, 0.269401,
		39.914059, 38.818569, 28.514481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.887569, 39.682060, 28.417883>,  <39.329948, 39.155098, 28.325901>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.887569, 39.682060, 28.417883> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.051155, 39.328091, 28.328749>,  <40.149307, 39.115707, 28.275269>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.051155, 39.328091, 28.328749>,  <39.887569, 39.682060, 28.417883>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.051155, 39.328091, 28.328749> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595602, 0.443850, -0.669519,
		0.691379, 0.141089, 0.708582,
		0.408966, -0.884924, -0.222836,
		40.173843, 39.062614, 28.261898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.615654, 39.689735, 28.556713>,  <39.887569, 39.682060, 28.417883>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.615654, 39.689735, 28.556713> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.569889, 39.398151, 28.286741>,  <40.542431, 39.223202, 28.124758>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.569889, 39.398151, 28.286741>,  <40.615654, 39.689735, 28.556713>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.569889, 39.398151, 28.286741> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.655186, 0.455325, -0.602836,
		0.746755, -0.511173, 0.425511,
		-0.114408, -0.728959, -0.674929,
		40.535568, 39.179462, 28.084263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.264549, 39.740009, 28.186665>,  <40.615654, 39.689735, 28.556713>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.264549, 39.740009, 28.186665> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.081917, 39.481380, 27.942215>,  <40.972336, 39.326202, 27.795546>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.081917, 39.481380, 27.942215>,  <41.264549, 39.740009, 28.186665>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.081917, 39.481380, 27.942215> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413843, 0.453715, -0.789225,
		0.787570, -0.613256, 0.060422,
		-0.456583, -0.646575, -0.611124,
		40.944942, 39.287407, 27.758877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.692936, 39.554531, 27.725990>,  <41.264549, 39.740009, 28.186665>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.692936, 39.554531, 27.725990> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.366333, 39.453426, 27.518362>,  <41.170372, 39.392765, 27.393785>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.366333, 39.453426, 27.518362>,  <41.692936, 39.554531, 27.725990>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.366333, 39.453426, 27.518362> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420810, 0.354995, -0.834804,
		0.395270, -0.900051, -0.183493,
		-0.816505, -0.252757, -0.519070,
		41.121380, 39.377598, 27.362640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.897934, 39.226906, 27.175432>,  <41.692936, 39.554531, 27.725990>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.897934, 39.226906, 27.175432> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.532429, 39.354774, 27.075151>,  <41.313126, 39.431496, 27.014984>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.532429, 39.354774, 27.075151>,  <41.897934, 39.226906, 27.175432>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.532429, 39.354774, 27.075151> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340811, 0.267332, -0.901322,
		-0.221109, -0.909034, -0.353226,
		-0.913761, 0.319674, -0.250699,
		41.258301, 39.450676, 26.999941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.827011, 38.999557, 26.512136>,  <41.897934, 39.226906, 27.175432>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.827011, 38.999557, 26.512136> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.553402, 39.286377, 26.565733>,  <41.389236, 39.458469, 26.597891>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.553402, 39.286377, 26.565733>,  <41.827011, 38.999557, 26.512136>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.553402, 39.286377, 26.565733> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235594, 0.390997, -0.889728,
		-0.690371, -0.577025, -0.436383,
		-0.684021, 0.717051, 0.133990,
		41.348194, 39.501492, 26.605930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.309467, 38.957016, 25.929426>,  <41.827011, 38.999557, 26.512136>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.309467, 38.957016, 25.929426> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.272156, 39.334599, 26.056076>,  <41.249771, 39.561146, 26.132067>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.272156, 39.334599, 26.056076>,  <41.309467, 38.957016, 25.929426>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.272156, 39.334599, 26.056076> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123941, 0.326547, -0.937020,
		-0.987896, -0.048160, -0.147454,
		-0.093277, 0.943953, 0.316626,
		41.244171, 39.617786, 26.151064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.101730, 39.292789, 25.263504>,  <41.309467, 38.957016, 25.929426>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.101730, 39.292789, 25.263504> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.253807, 39.553425, 25.526073>,  <41.345051, 39.709805, 25.683615>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.253807, 39.553425, 25.526073>,  <41.101730, 39.292789, 25.263504>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.253807, 39.553425, 25.526073> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203408, 0.633437, -0.746581,
		-0.902264, 0.417364, 0.108288,
		0.380189, 0.651587, 0.656423,
		41.367863, 39.748901, 25.723000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.717922, 39.943073, 25.270567>,  <41.101730, 39.292789, 25.263504>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.717922, 39.943073, 25.270567> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.087151, 40.023087, 25.401972>,  <41.308689, 40.071095, 25.480814>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.087151, 40.023087, 25.401972>,  <40.717922, 39.943073, 25.270567>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.087151, 40.023087, 25.401972> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092363, 0.713837, -0.694195,
		-0.373369, 0.671135, 0.640448,
		0.923074, 0.200037, 0.328513,
		41.364071, 40.083099, 25.500526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.861485, 40.620380, 25.073212>,  <40.717922, 39.943073, 25.270567>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.861485, 40.620380, 25.073212> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.235950, 40.549141, 25.194460>,  <41.460629, 40.506397, 25.267210>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.235950, 40.549141, 25.194460>,  <40.861485, 40.620380, 25.073212>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.235950, 40.549141, 25.194460> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325829, 0.763361, -0.557777,
		-0.132052, 0.620935, 0.772659,
		0.936161, -0.178099, 0.303122,
		41.516800, 40.495712, 25.285397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.225536, 41.272869, 25.279749>,  <40.861485, 40.620380, 25.073212>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.225536, 41.272869, 25.279749> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.520836, 41.017166, 25.193632>,  <41.698013, 40.863747, 25.141962>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.520836, 41.017166, 25.193632>,  <41.225536, 41.272869, 25.279749>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.520836, 41.017166, 25.193632> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410706, 0.679175, -0.608311,
		0.535085, 0.360661, 0.763942,
		0.738244, -0.639254, -0.215290,
		41.742310, 40.825390, 25.129045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.758007, 41.576893, 25.467381>,  <41.225536, 41.272869, 25.279749>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.758007, 41.576893, 25.467381> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.914677, 41.306068, 25.218166>,  <42.008678, 41.143574, 25.068638>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.914677, 41.306068, 25.218166>,  <41.758007, 41.576893, 25.467381>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.914677, 41.306068, 25.218166> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467344, 0.729681, -0.499155,
		0.792578, -0.095666, 0.602219,
		0.391676, -0.677063, -0.623038,
		42.032181, 41.102951, 25.031256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.427876, 41.706772, 25.359989>,  <41.758007, 41.576893, 25.467381>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.427876, 41.706772, 25.359989> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.312523, 41.497623, 25.039129>,  <42.243313, 41.372135, 24.846613>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.312523, 41.497623, 25.039129>,  <42.427876, 41.706772, 25.359989>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.312523, 41.497623, 25.039129> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309707, 0.741775, -0.594854,
		0.906046, -0.419976, -0.051978,
		-0.288380, -0.522867, -0.802151,
		42.226009, 41.340763, 24.798485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<35.260269, 37.680710, 21.155849> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.329731, 38.009510, 21.372797>,  <35.371410, 38.206791, 21.502966>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.329731, 38.009510, 21.372797>,  <35.260269, 37.680710, 21.155849>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.329731, 38.009510, 21.372797> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005830, -0.551584, 0.834099,
		0.984789, -0.141686, -0.100579,
		0.173658, 0.821998, 0.542368,
		35.381828, 38.256111, 21.535507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.679901, 37.489265, 21.642406>,  <35.260269, 37.680710, 21.155849>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.679901, 37.489265, 21.642406> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.506264, 37.801319, 21.822613>,  <35.402081, 37.988552, 21.930737>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.506264, 37.801319, 21.822613>,  <35.679901, 37.489265, 21.642406>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.506264, 37.801319, 21.822613> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060803, -0.524320, 0.849348,
		0.898815, 0.341300, 0.275036,
		-0.434090, 0.780130, 0.450514,
		35.376038, 38.035358, 21.957767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.025566, 37.575390, 22.321848>,  <35.679901, 37.489265, 21.642406>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.025566, 37.575390, 22.321848> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.691589, 37.793751, 22.349752>,  <35.491203, 37.924767, 22.366495>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.691589, 37.793751, 22.349752>,  <36.025566, 37.575390, 22.321848>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.691589, 37.793751, 22.349752> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033350, -0.176718, 0.983696,
		0.549328, 0.819002, 0.165755,
		-0.834941, 0.545899, 0.069763,
		35.441109, 37.957520, 22.370682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.059711, 37.835125, 23.006590>,  <36.025566, 37.575390, 22.321848>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.059711, 37.835125, 23.006590> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.668701, 37.882664, 22.936935>,  <35.434097, 37.911186, 22.895142>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.668701, 37.882664, 22.936935>,  <36.059711, 37.835125, 23.006590>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.668701, 37.882664, 22.936935> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205452, -0.351651, 0.913308,
		0.047307, 0.928557, 0.368164,
		-0.977523, 0.118846, -0.174138,
		35.375443, 37.918316, 22.884693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.745277, 38.083183, 23.664520>,  <36.059711, 37.835125, 23.006590>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.745277, 38.083183, 23.664520> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.473408, 37.889759, 23.443899>,  <35.310287, 37.773705, 23.311527>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.473408, 37.889759, 23.443899>,  <35.745277, 38.083183, 23.664520>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.473408, 37.889759, 23.443899> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295672, -0.507525, 0.809318,
		-0.671283, 0.713151, 0.201976,
		-0.679674, -0.483563, -0.551552,
		35.269505, 37.744690, 23.278433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.139339, 38.184410, 24.025036>,  <35.745277, 38.083183, 23.664520>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.139339, 38.184410, 24.025036> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.072548, 37.872059, 23.784256>,  <35.032475, 37.684647, 23.639788>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.072548, 37.872059, 23.784256>,  <35.139339, 38.184410, 24.025036>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.072548, 37.872059, 23.784256> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482619, -0.467647, 0.740530,
		-0.859766, 0.414165, -0.298781,
		-0.166977, -0.780880, -0.601951,
		35.022453, 37.637794, 23.603670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.489136, 37.880074, 24.258139>,  <35.139339, 38.184410, 24.025036>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.489136, 37.880074, 24.258139> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.625881, 37.585320, 24.024857>,  <34.707928, 37.408466, 23.884888>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.625881, 37.585320, 24.024857>,  <34.489136, 37.880074, 24.258139>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.625881, 37.585320, 24.024857> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439134, -0.673936, 0.594114,
		-0.830837, 0.052998, -0.553986,
		0.341864, -0.736886, -0.583204,
		34.728439, 37.364254, 23.849895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.980946, 37.401321, 24.146013>,  <34.489136, 37.880074, 24.258139>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.980946, 37.401321, 24.146013> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.310177, 37.176895, 24.110809>,  <34.507713, 37.042240, 24.089687>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.310177, 37.176895, 24.110809>,  <33.980946, 37.401321, 24.146013>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.310177, 37.176895, 24.110809> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352842, -0.626614, 0.694880,
		-0.445025, -0.540885, -0.713720,
		0.823076, -0.561069, -0.088012,
		34.557098, 37.008575, 24.084406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.854626, 36.632500, 24.025549>,  <33.980946, 37.401321, 24.146013>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.854626, 36.632500, 24.025549> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.219669, 36.670326, 24.184647>,  <34.438694, 36.693024, 24.280106>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.219669, 36.670326, 24.184647>,  <33.854626, 36.632500, 24.025549>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.219669, 36.670326, 24.184647> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184667, -0.772625, 0.607412,
		0.364748, -0.627780, -0.687641,
		0.912610, 0.094568, 0.397744,
		34.493454, 36.698696, 24.303970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.026707, 35.939739, 24.186779>,  <33.854626, 36.632500, 24.025549>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.026707, 35.939739, 24.186779> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.295101, 36.149223, 24.396734>,  <34.456139, 36.274914, 24.522707>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.295101, 36.149223, 24.396734>,  <34.026707, 35.939739, 24.186779>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.295101, 36.149223, 24.396734> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048595, -0.675316, 0.735926,
		0.739879, -0.519300, -0.427675,
		0.670982, 0.523713, 0.524888,
		34.496395, 36.306335, 24.554201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.658997, 35.468914, 24.268475>,  <34.026707, 35.939739, 24.186779>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.658997, 35.468914, 24.268475> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.673286, 35.750145, 24.552559>,  <34.681862, 35.918884, 24.723009>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.673286, 35.750145, 24.552559>,  <34.658997, 35.468914, 24.268475>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.673286, 35.750145, 24.552559> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151662, -0.706248, 0.691529,
		0.987786, 0.083005, -0.131864,
		0.035729, 0.703081, 0.710211,
		34.684006, 35.961071, 24.765623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.344990, 35.303783, 24.632219>,  <34.658997, 35.468914, 24.268475>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.344990, 35.303783, 24.632219> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.159977, 35.557575, 24.879930>,  <35.048969, 35.709850, 25.028557>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.159977, 35.557575, 24.879930>,  <35.344990, 35.303783, 24.632219>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.159977, 35.557575, 24.879930> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043260, -0.681498, 0.730540,
		0.885548, 0.364685, 0.287765,
		-0.462529, 0.634480, 0.619276,
		35.021217, 35.747921, 25.065714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.719841, 35.206009, 25.265770>,  <35.344990, 35.303783, 24.632219>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.719841, 35.206009, 25.265770> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.388851, 35.398262, 25.381893>,  <35.190258, 35.513615, 25.451567>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.388851, 35.398262, 25.381893>,  <35.719841, 35.206009, 25.265770>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.388851, 35.398262, 25.381893> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031047, -0.477061, 0.878321,
		0.560647, 0.735800, 0.379833,
		-0.827473, 0.480636, 0.290307,
		35.140610, 35.542454, 25.468985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.811024, 35.504364, 25.901560>,  <35.719841, 35.206009, 25.265770>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.811024, 35.504364, 25.901560> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.416939, 35.436531, 25.891756>,  <35.180489, 35.395832, 25.885874>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.416939, 35.436531, 25.891756>,  <35.811024, 35.504364, 25.901560>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.416939, 35.436531, 25.891756> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073468, -0.547318, 0.833694,
		-0.154797, 0.819563, 0.551682,
		-0.985211, -0.169584, -0.024511,
		35.121376, 35.385654, 25.884403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.298805, 35.743366, 26.424019>,  <35.811024, 35.504364, 25.901560>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.298805, 35.743366, 26.424019> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.591221, 35.482742, 26.342978>,  <36.766670, 35.326366, 26.294352>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.591221, 35.482742, 26.342978>,  <36.298805, 35.743366, 26.424019>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.591221, 35.482742, 26.342978> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313122, 0.584159, -0.748808,
		0.606249, 0.483968, 0.631061,
		0.731039, -0.651563, -0.202604,
		36.810532, 35.287273, 26.282196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.943935, 36.080048, 26.554245>,  <36.298805, 35.743366, 26.424019>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.943935, 36.080048, 26.554245> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.066669, 35.781410, 26.318127>,  <37.140308, 35.602226, 26.176455>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.066669, 35.781410, 26.318127>,  <36.943935, 36.080048, 26.554245>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.066669, 35.781410, 26.318127> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456220, 0.659691, -0.597219,
		0.835294, -0.086057, 0.543027,
		0.306835, -0.746593, -0.590297,
		37.158722, 35.557434, 26.141037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.631886, 36.282288, 26.373419>,  <36.943935, 36.080048, 26.554245>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.631886, 36.282288, 26.373419> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.554176, 36.004131, 26.096668>,  <37.507553, 35.837238, 25.930618>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.554176, 36.004131, 26.096668>,  <37.631886, 36.282288, 26.373419>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.554176, 36.004131, 26.096668> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518630, 0.525864, -0.674159,
		0.832636, -0.489796, 0.258490,
		-0.194270, -0.695390, -0.691876,
		37.495895, 35.795513, 25.889105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.269821, 36.148563, 25.961082>,  <37.631886, 36.282288, 26.373419>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.269821, 36.148563, 25.961082> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.996647, 35.996162, 25.711782>,  <37.832745, 35.904720, 25.562202>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.996647, 35.996162, 25.711782>,  <38.269821, 36.148563, 25.961082>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.996647, 35.996162, 25.711782> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425494, 0.486038, -0.763363,
		0.593765, -0.786515, -0.169818,
		-0.682934, -0.381002, -0.623249,
		37.791767, 35.881863, 25.524807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.674263, 35.795097, 25.465090>,  <38.269821, 36.148563, 25.961082>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.674263, 35.795097, 25.465090> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.325283, 35.899296, 25.299694>,  <38.115894, 35.961815, 25.200457>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.325283, 35.899296, 25.299694>,  <38.674263, 35.795097, 25.465090>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.325283, 35.899296, 25.299694> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486001, 0.373559, -0.790099,
		-0.051358, -0.890277, -0.452514,
		-0.872448, 0.260500, -0.413491,
		38.063549, 35.977448, 25.175646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.794514, 35.629238, 24.768362>,  <38.674263, 35.795097, 25.465090>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.794514, 35.629238, 24.768362> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.459393, 35.845318, 24.736679>,  <38.258320, 35.974964, 24.717669>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.459393, 35.845318, 24.736679>,  <38.794514, 35.629238, 24.768362>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.459393, 35.845318, 24.736679> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462344, 0.624801, -0.629176,
		-0.290392, -0.563746, -0.773216,
		-0.837802, 0.540199, -0.079207,
		38.208054, 36.007378, 24.712917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.594803, 35.569290, 24.072260>,  <38.794514, 35.629238, 24.768362>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.594803, 35.569290, 24.072260> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.448185, 35.912128, 24.217052>,  <38.360214, 36.117832, 24.303928>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.448185, 35.912128, 24.217052>,  <38.594803, 35.569290, 24.072260>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.448185, 35.912128, 24.217052> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343756, 0.486290, -0.803339,
		-0.864566, -0.170029, -0.472880,
		-0.366547, 0.857096, 0.361981,
		38.338223, 36.169258, 24.325647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.263916, 35.895336, 23.492586>,  <38.594803, 35.569290, 24.072260>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.263916, 35.895336, 23.492586> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.304314, 36.192024, 23.757809>,  <38.328552, 36.370037, 23.916943>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.304314, 36.192024, 23.757809>,  <38.263916, 35.895336, 23.492586>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.304314, 36.192024, 23.757809> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273926, 0.619975, -0.735252,
		-0.956433, 0.255885, -0.140564,
		0.100994, 0.741724, 0.663058,
		38.334610, 36.414543, 23.956726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.830383, 36.491375, 23.206745>,  <38.263916, 35.895336, 23.492586>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.830383, 36.491375, 23.206745> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.062840, 36.670479, 23.478565>,  <38.202312, 36.777943, 23.641657>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.062840, 36.670479, 23.478565>,  <37.830383, 36.491375, 23.206745>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.062840, 36.670479, 23.478565> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133142, 0.771467, -0.622184,
		-0.802841, 0.452050, 0.388712,
		0.581137, 0.447761, 0.679552,
		38.237179, 36.804806, 23.682430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.613007, 37.182014, 23.203342>,  <37.830383, 36.491375, 23.206745>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.613007, 37.182014, 23.203342> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.963417, 37.248241, 23.384521>,  <38.173664, 37.287975, 23.493229>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.963417, 37.248241, 23.384521>,  <37.613007, 37.182014, 23.203342>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.963417, 37.248241, 23.384521> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171031, 0.771514, -0.612792,
		-0.450912, 0.614292, 0.647552,
		0.876029, 0.165563, 0.452948,
		38.226227, 37.297909, 23.520407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.584187, 37.823940, 23.466578>,  <37.613007, 37.182014, 23.203342>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.584187, 37.823940, 23.466578> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.972923, 37.746666, 23.412615>,  <38.206165, 37.700302, 23.380238>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.972923, 37.746666, 23.412615>,  <37.584187, 37.823940, 23.466578>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.972923, 37.746666, 23.412615> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040179, 0.700018, -0.712994,
		0.232180, 0.687497, 0.688069,
		0.971842, -0.193189, -0.134907,
		38.264477, 37.688709, 23.372143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.984081, 38.436512, 23.543243>,  <37.584187, 37.823940, 23.466578>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.984081, 38.436512, 23.543243> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.202511, 38.183643, 23.323366>,  <38.333569, 38.031921, 23.191441>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.202511, 38.183643, 23.323366>,  <37.984081, 38.436512, 23.543243>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.202511, 38.183643, 23.323366> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036323, 0.673415, -0.738372,
		0.836949, 0.383239, 0.390697,
		0.546074, -0.632171, -0.549694,
		38.366333, 37.993992, 23.158459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.610176, 38.688534, 23.477627>,  <37.984081, 38.436512, 23.543243>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.610176, 38.688534, 23.477627> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.591347, 38.436852, 23.167301>,  <38.580048, 38.285843, 22.981106>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.591347, 38.436852, 23.167301>,  <38.610176, 38.688534, 23.477627>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.591347, 38.436852, 23.167301> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251344, 0.744226, -0.618832,
		0.966752, -0.224127, 0.123114,
		-0.047072, -0.629202, -0.775815,
		38.577225, 38.248093, 22.934557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.156555, 38.802929, 23.101784>,  <38.610176, 38.688534, 23.477627>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.156555, 38.802929, 23.101784> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.935829, 38.612324, 22.828014>,  <38.803394, 38.497959, 22.663752>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.935829, 38.612324, 22.828014>,  <39.156555, 38.802929, 23.101784>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.935829, 38.612324, 22.828014> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259768, 0.681647, -0.684017,
		0.792481, -0.555239, -0.252356,
		-0.551811, -0.476516, -0.684425,
		38.770287, 38.469368, 22.622686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.881351, 38.516132, 22.877949>,  <39.156555, 38.802929, 23.101784>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.881351, 38.516132, 22.877949> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.255623, 38.642948, 22.939907>,  <40.480186, 38.719036, 22.977083>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.255623, 38.642948, 22.939907>,  <39.881351, 38.516132, 22.877949>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.255623, 38.642948, 22.939907> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044965, -0.328271, 0.943513,
		0.349978, -0.889789, -0.292901,
		0.935678, 0.317038, 0.154897,
		40.536327, 38.738060, 22.986376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.180313, 37.910923, 23.107733>,  <39.881351, 38.516132, 22.877949>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.180313, 37.910923, 23.107733> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.434975, 38.192909, 23.232761>,  <40.587772, 38.362103, 23.307779>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.434975, 38.192909, 23.232761>,  <40.180313, 37.910923, 23.107733>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.434975, 38.192909, 23.232761> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138342, -0.503167, 0.853044,
		0.758642, -0.499849, -0.417867,
		0.636650, 0.704964, 0.312574,
		40.625969, 38.404400, 23.326534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.724556, 37.523872, 23.358616>,  <40.180313, 37.910923, 23.107733>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.724556, 37.523872, 23.358616> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.748123, 37.888897, 23.520487>,  <40.762264, 38.107910, 23.617609>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.748123, 37.888897, 23.520487>,  <40.724556, 37.523872, 23.358616>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.748123, 37.888897, 23.520487> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265595, -0.405098, 0.874845,
		0.962283, 0.055938, -0.266238,
		0.058916, 0.912560, 0.404676,
		40.765797, 38.162666, 23.641890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.413754, 37.535194, 23.597908>,  <40.724556, 37.523872, 23.358616>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.413754, 37.535194, 23.597908> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.186546, 37.789474, 23.806997>,  <41.050224, 37.942043, 23.932451>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.186546, 37.789474, 23.806997>,  <41.413754, 37.535194, 23.597908>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.186546, 37.789474, 23.806997> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180366, -0.523541, 0.832690,
		0.803011, 0.567263, 0.182720,
		-0.568015, 0.635703, 0.522724,
		41.016140, 37.980186, 23.963814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.747887, 37.467674, 24.116896>,  <41.413754, 37.535194, 23.597908>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.747887, 37.467674, 24.116896> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.431343, 37.653927, 24.275356>,  <41.241417, 37.765678, 24.370432>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.431343, 37.653927, 24.275356>,  <41.747887, 37.467674, 24.116896>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.431343, 37.653927, 24.275356> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149556, -0.480856, 0.863951,
		0.592775, 0.742942, 0.310892,
		-0.791360, 0.465633, 0.396151,
		41.193935, 37.793617, 24.394201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.938000, 37.710827, 24.733013>,  <41.747887, 37.467674, 24.116896>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.938000, 37.710827, 24.733013> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.538540, 37.712444, 24.753716>,  <41.298862, 37.713413, 24.766136>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.538540, 37.712444, 24.753716>,  <41.938000, 37.710827, 24.733013>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.538540, 37.712444, 24.753716> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040637, -0.559544, 0.827804,
		0.032305, 0.828791, 0.558625,
		-0.998652, 0.004041, 0.051756,
		41.238945, 37.713657, 24.769243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.796528, 37.668514, 25.442905>,  <41.938000, 37.710827, 24.733013>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.796528, 37.668514, 25.442905> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.448090, 37.562424, 25.277571>,  <41.239025, 37.498768, 25.178370>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.448090, 37.562424, 25.277571>,  <41.796528, 37.668514, 25.442905>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.448090, 37.562424, 25.277571> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150212, -0.657404, 0.738415,
		-0.467579, 0.705317, 0.532821,
		-0.871095, -0.265231, -0.413335,
		41.186760, 37.482853, 25.153570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.450806, 37.590652, 26.012699>,  <41.796528, 37.668514, 25.442905>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.450806, 37.590652, 26.012699> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.250904, 37.373501, 25.742727>,  <41.130962, 37.243210, 25.580744>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.250904, 37.373501, 25.742727>,  <41.450806, 37.590652, 26.012699>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.250904, 37.373501, 25.742727> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079631, -0.747117, 0.659905,
		-0.862501, 0.383533, 0.330142,
		-0.499751, -0.542879, -0.674931,
		41.100979, 37.210636, 25.540249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.819576, 37.324898, 26.341749>,  <41.450806, 37.590652, 26.012699>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.819576, 37.324898, 26.341749> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.884670, 37.077606, 26.034163>,  <40.923729, 36.929234, 25.849609>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.884670, 37.077606, 26.034163>,  <40.819576, 37.324898, 26.341749>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.884670, 37.077606, 26.034163> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227416, -0.781876, 0.580475,
		-0.960104, 0.080411, -0.267835,
		0.162737, -0.618226, -0.768969,
		40.933491, 36.892139, 25.803473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.173298, 37.134029, 26.197962>,  <40.819576, 37.324898, 26.341749>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.173298, 37.134029, 26.197962> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.433258, 36.852306, 26.083712>,  <40.589233, 36.683273, 26.015162>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.433258, 36.852306, 26.083712>,  <40.173298, 37.134029, 26.197962>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.433258, 36.852306, 26.083712> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461915, -0.664472, 0.587462,
		-0.603542, -0.249859, -0.757171,
		0.649901, -0.704306, -0.285623,
		40.628227, 36.641014, 25.998024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.810097, 36.557163, 26.185432>,  <40.173298, 37.134029, 26.197962>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.810097, 36.557163, 26.185432> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.184715, 36.421146, 26.219488>,  <40.409489, 36.339539, 26.239922>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.184715, 36.421146, 26.219488>,  <39.810097, 36.557163, 26.185432>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.184715, 36.421146, 26.219488> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295082, -0.633685, 0.715101,
		-0.189211, -0.694851, -0.693817,
		0.936550, -0.340038, 0.085138,
		40.465679, 36.319134, 26.245029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.761326, 35.816563, 26.077139>,  <39.810097, 36.557163, 26.185432>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.761326, 35.816563, 26.077139> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.114044, 35.853386, 26.262163>,  <40.325676, 35.875481, 26.373177>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.114044, 35.853386, 26.262163>,  <39.761326, 35.816563, 26.077139>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.114044, 35.853386, 26.262163> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224829, -0.780105, 0.583856,
		0.414593, -0.618839, -0.667197,
		0.881796, 0.092057, 0.462559,
		40.378582, 35.881004, 26.400930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.016636, 35.109558, 26.121475>,  <39.761326, 35.816563, 26.077139>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.016636, 35.109558, 26.121475> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.235035, 35.329079, 26.374680>,  <40.366074, 35.460793, 26.526602>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.235035, 35.329079, 26.374680>,  <40.016636, 35.109558, 26.121475>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.235035, 35.329079, 26.374680> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159694, -0.673547, 0.721687,
		0.822425, -0.495129, -0.280117,
		0.545999, 0.548800, 0.633011,
		40.398834, 35.493717, 26.564583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.396698, 34.690250, 26.529367>,  <40.016636, 35.109558, 26.121475>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.396698, 34.690250, 26.529367> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.396507, 35.022026, 26.752804>,  <40.396393, 35.221092, 26.886866>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.396507, 35.022026, 26.752804>,  <40.396698, 34.690250, 26.529367>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.396507, 35.022026, 26.752804> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228087, -0.543957, 0.807519,
		0.973641, -0.127020, 0.189446,
		-0.000479, 0.829444, 0.558590,
		40.396362, 35.270859, 26.920382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<42.979992, 41.737457, 24.906961> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.737301, 41.600887, 24.619822>,  <42.591686, 41.518944, 24.447536>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.737301, 41.600887, 24.619822>,  <42.979992, 41.737457, 24.906961>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.737301, 41.600887, 24.619822> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225146, 0.792271, -0.567112,
		0.762356, -0.505705, -0.403825,
		-0.606730, -0.341422, -0.717850,
		42.555283, 41.498459, 24.404467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.285709, 41.892521, 24.085670>,  <42.979992, 41.737457, 24.906961>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.285709, 41.892521, 24.085670> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.890259, 41.832550, 24.080929>,  <42.652988, 41.796566, 24.078085>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.890259, 41.832550, 24.080929>,  <43.285709, 41.892521, 24.085670>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.890259, 41.832550, 24.080929> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101261, 0.721826, -0.684626,
		0.111202, -0.675639, -0.728798,
		-0.988625, -0.149931, -0.011852,
		42.593670, 41.787571, 24.077374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.037621, 41.834820, 23.335491>,  <43.285709, 41.892521, 24.085670>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.037621, 41.834820, 23.335491> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.730686, 41.942753, 23.568174>,  <42.546524, 42.007511, 23.707785>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.730686, 41.942753, 23.568174>,  <43.037621, 41.834820, 23.335491>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.730686, 41.942753, 23.568174> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263383, 0.694478, -0.669574,
		-0.584653, -0.667002, -0.461832,
		-0.767340, 0.269830, 0.581706,
		42.500484, 42.023701, 23.742685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.413563, 41.838921, 22.874578>,  <43.037621, 41.834820, 23.335491>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.413563, 41.838921, 22.874578> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.325138, 42.054707, 23.199568>,  <42.272083, 42.184177, 23.394562>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.325138, 42.054707, 23.199568>,  <42.413563, 41.838921, 22.874578>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.325138, 42.054707, 23.199568> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433652, 0.691822, -0.577345,
		-0.873543, -0.479960, 0.081003,
		-0.221063, 0.539463, 0.812472,
		42.258820, 42.216545, 23.443310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.770008, 41.872417, 22.862955>,  <42.413563, 41.838921, 22.874578>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.770008, 41.872417, 22.862955> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.886890, 42.197266, 23.064976>,  <41.957020, 42.392174, 23.186188>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.886890, 42.197266, 23.064976>,  <41.770008, 41.872417, 22.862955>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.886890, 42.197266, 23.064976> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564706, 0.572722, -0.594219,
		-0.771832, -0.111573, 0.625961,
		0.292203, 0.812121, 0.505051,
		41.974552, 42.440903, 23.216492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.195595, 42.352451, 22.889124>,  <41.770008, 41.872417, 22.862955>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.195595, 42.352451, 22.889124> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.492924, 42.606064, 22.974430>,  <41.671322, 42.758232, 23.025614>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.492924, 42.606064, 22.974430>,  <41.195595, 42.352451, 22.889124>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.492924, 42.606064, 22.974430> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345777, 0.637090, -0.688879,
		-0.572639, 0.438315, 0.692795,
		0.743319, 0.634031, 0.213264,
		41.715919, 42.796272, 23.038408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.991238, 43.015892, 22.648167>,  <41.195595, 42.352451, 22.889124>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.991238, 43.015892, 22.648167> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.375839, 43.113926, 22.697886>,  <41.606598, 43.172749, 22.727716>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.375839, 43.113926, 22.697886>,  <40.991238, 43.015892, 22.648167>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.375839, 43.113926, 22.697886> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121711, 0.785322, -0.607005,
		-0.246383, 0.568508, 0.784917,
		0.961500, 0.245088, 0.124296,
		41.664288, 43.187454, 22.735174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.066013, 43.709362, 22.724846>,  <40.991238, 43.015892, 22.648167>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.066013, 43.709362, 22.724846> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.434235, 43.607628, 22.606255>,  <41.655167, 43.546585, 22.535101>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.434235, 43.607628, 22.606255>,  <41.066013, 43.709362, 22.724846>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.434235, 43.607628, 22.606255> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062463, 0.845062, -0.531007,
		0.385597, 0.470300, 0.793809,
		0.920551, -0.254339, -0.296477,
		41.710400, 43.531326, 22.517311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.305218, 44.344421, 22.577627>,  <41.066013, 43.709362, 22.724846>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.305218, 44.344421, 22.577627> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.557999, 44.097404, 22.390318>,  <41.709667, 43.949196, 22.277933>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.557999, 44.097404, 22.390318>,  <41.305218, 44.344421, 22.577627>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.557999, 44.097404, 22.390318> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175454, 0.702532, -0.689685,
		0.754883, 0.353689, 0.552318,
		0.631955, -0.617538, -0.468274,
		41.747585, 43.912144, 22.249836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.768204, 44.721748, 22.199865>,  <41.305218, 44.344421, 22.577627>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.768204, 44.721748, 22.199865> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.793098, 44.366653, 22.017414>,  <41.808033, 44.153595, 21.907944>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.793098, 44.366653, 22.017414>,  <41.768204, 44.721748, 22.199865>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.793098, 44.366653, 22.017414> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149318, 0.443588, -0.883704,
		0.986829, 0.123104, -0.104949,
		0.062233, -0.887736, -0.456127,
		41.811768, 44.100334, 21.880575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.240120, 44.780510, 21.644711>,  <41.768204, 44.721748, 22.199865>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.240120, 44.780510, 21.644711> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.008549, 44.468258, 21.550516>,  <41.869606, 44.280907, 21.493999>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.008549, 44.468258, 21.550516>,  <42.240120, 44.780510, 21.644711>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.008549, 44.468258, 21.550516> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012977, 0.297591, -0.954605,
		0.815275, -0.549592, -0.182414,
		-0.578928, -0.780633, -0.235487,
		41.834869, 44.234070, 21.479870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.501381, 44.613869, 21.030706>,  <42.240120, 44.780510, 21.644711>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.501381, 44.613869, 21.030706> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.135933, 44.451241, 21.031664>,  <41.916664, 44.353664, 21.032238>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.135933, 44.451241, 21.031664>,  <42.501381, 44.613869, 21.030706>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.135933, 44.451241, 21.031664> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177577, 0.393731, -0.901910,
		0.365742, -0.824427, -0.431917,
		-0.913619, -0.406565, 0.002395,
		41.861847, 44.329269, 21.032381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.408543, 44.189587, 20.466833>,  <42.501381, 44.613869, 21.030706>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.408543, 44.189587, 20.466833> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.050659, 44.331558, 20.575300>,  <41.835930, 44.416740, 20.640381>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.050659, 44.331558, 20.575300>,  <42.408543, 44.189587, 20.466833>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.050659, 44.331558, 20.575300> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152442, 0.328008, -0.932294,
		-0.419840, -0.875465, -0.239365,
		-0.894705, 0.354925, 0.271168,
		41.782249, 44.438034, 20.656651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.911758, 43.946201, 19.956255>,  <42.408543, 44.189587, 20.466833>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.911758, 43.946201, 19.956255> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.799679, 44.294128, 20.118690>,  <41.732430, 44.502884, 20.216152>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.799679, 44.294128, 20.118690>,  <41.911758, 43.946201, 19.956255>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.799679, 44.294128, 20.118690> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162188, 0.374054, -0.913115,
		-0.946141, -0.321716, 0.036264,
		-0.280199, 0.869817, 0.406087,
		41.715618, 44.555073, 20.240517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.623360, 43.247086, 19.715622>,  <41.911758, 43.946201, 19.956255>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.623360, 43.247086, 19.715622> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.451687, 43.012157, 19.441147>,  <41.348682, 42.871201, 19.276463>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.451687, 43.012157, 19.441147>,  <41.623360, 43.247086, 19.715622>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.451687, 43.012157, 19.441147> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147713, -0.795125, 0.588180,
		-0.891056, 0.151080, 0.428011,
		-0.429185, -0.587325, -0.686185,
		41.322933, 42.835960, 19.235291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.135548, 42.905148, 20.134148>,  <41.623360, 43.247086, 19.715622>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.135548, 42.905148, 20.134148> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.130997, 42.679874, 19.803646>,  <41.128265, 42.544712, 19.605345>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.130997, 42.679874, 19.803646>,  <41.135548, 42.905148, 20.134148>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.130997, 42.679874, 19.803646> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137552, -0.817570, 0.559159,
		-0.990429, 0.120017, -0.068162,
		-0.011381, -0.563183, -0.826254,
		41.127583, 42.510918, 19.555771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.467995, 42.497921, 20.143654>,  <41.135548, 42.905148, 20.134148>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.467995, 42.497921, 20.143654> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.762970, 42.325413, 19.935736>,  <40.939957, 42.221909, 19.810986>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.762970, 42.325413, 19.935736>,  <40.467995, 42.497921, 20.143654>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.762970, 42.325413, 19.935736> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129550, -0.845624, 0.517819,
		-0.662873, -0.314520, -0.679467,
		0.737439, -0.431273, -0.519796,
		40.984203, 42.196030, 19.779797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.244022, 41.877258, 19.753033>,  <40.467995, 42.497921, 20.143654>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.244022, 41.877258, 19.753033> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.637573, 41.815582, 19.789282>,  <40.873703, 41.778576, 19.811031>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.637573, 41.815582, 19.789282>,  <40.244022, 41.877258, 19.753033>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.637573, 41.815582, 19.789282> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178466, -0.879442, 0.441285,
		0.011659, -0.450344, -0.892779,
		0.983877, -0.154185, 0.090624,
		40.932735, 41.769325, 19.816469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.348629, 41.105721, 19.670033>,  <40.244022, 41.877258, 19.753033>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.348629, 41.105721, 19.670033> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.690910, 41.237583, 19.829580>,  <40.896278, 41.316700, 19.925308>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.690910, 41.237583, 19.829580>,  <40.348629, 41.105721, 19.670033>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.690910, 41.237583, 19.829580> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088383, -0.852592, 0.515048,
		0.509862, -0.405476, -0.758703,
		0.855704, 0.329660, 0.398867,
		40.947620, 41.336479, 19.949240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.764149, 40.530838, 19.680946>,  <40.348629, 41.105721, 19.670033>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.764149, 40.530838, 19.680946> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.937012, 40.771145, 19.949965>,  <41.040730, 40.915329, 20.111376>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.937012, 40.771145, 19.949965>,  <40.764149, 40.530838, 19.680946>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.937012, 40.771145, 19.949965> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215496, -0.792974, 0.569871,
		0.875671, -0.101344, -0.472154,
		0.432159, 0.600767, 0.672546,
		41.066658, 40.951374, 20.151728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.297115, 40.184582, 19.876108>,  <40.764149, 40.530838, 19.680946>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.297115, 40.184582, 19.876108> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.248600, 40.438950, 20.180973>,  <41.219490, 40.591572, 20.363892>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.248600, 40.438950, 20.180973>,  <41.297115, 40.184582, 19.876108>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.248600, 40.438950, 20.180973> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258591, -0.721077, 0.642790,
		0.958342, 0.275053, -0.076983,
		-0.121291, 0.635920, 0.762164,
		41.212212, 40.629726, 20.409622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.809593, 39.990601, 20.349628>,  <41.297115, 40.184582, 19.876108>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.809593, 39.990601, 20.349628> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.561565, 40.208252, 20.575706>,  <41.412750, 40.338840, 20.711353>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.561565, 40.208252, 20.575706>,  <41.809593, 39.990601, 20.349628>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.561565, 40.208252, 20.575706> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280173, -0.519330, 0.807341,
		0.732818, 0.658957, 0.169569,
		-0.620065, 0.544125, 0.565196,
		41.375546, 40.371490, 20.745266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.184551, 40.089588, 20.991169>,  <41.809593, 39.990601, 20.349628>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.184551, 40.089588, 20.991169> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.796837, 40.164528, 21.054905>,  <41.564209, 40.209492, 21.093145>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.796837, 40.164528, 21.054905>,  <42.184551, 40.089588, 20.991169>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.796837, 40.164528, 21.054905> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052882, -0.473948, 0.878963,
		0.240193, 0.860391, 0.449483,
		-0.969284, 0.187351, 0.159338,
		41.506050, 40.220734, 21.102707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.087242, 40.149254, 21.727142>,  <42.184551, 40.089588, 20.991169>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.087242, 40.149254, 21.727142> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.711880, 40.079430, 21.607866>,  <41.486660, 40.037533, 21.536301>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.711880, 40.079430, 21.607866>,  <42.087242, 40.149254, 21.727142>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.711880, 40.079430, 21.607866> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167945, -0.523760, 0.835146,
		-0.301966, 0.833788, 0.462184,
		-0.938409, -0.174564, -0.298188,
		41.430359, 40.027061, 21.518410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.716827, 40.307121, 22.313240>,  <42.087242, 40.149254, 21.727142>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.716827, 40.307121, 22.313240> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.478539, 40.078114, 22.087906>,  <41.335567, 39.940708, 21.952705>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.478539, 40.078114, 22.087906>,  <41.716827, 40.307121, 22.313240>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.478539, 40.078114, 22.087906> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273404, -0.514941, 0.812457,
		-0.755228, 0.638013, 0.150232,
		-0.595719, -0.572516, -0.563333,
		41.299824, 39.906357, 21.918905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.184135, 40.256931, 22.717638>,  <41.716827, 40.307121, 22.313240>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.184135, 40.256931, 22.717638> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.118423, 39.967255, 22.449741>,  <41.078999, 39.793449, 22.289003>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.118423, 39.967255, 22.449741>,  <41.184135, 40.256931, 22.717638>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.118423, 39.967255, 22.449741> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145207, -0.653816, 0.742590,
		-0.975668, 0.219242, 0.002249,
		-0.164277, -0.724195, -0.669743,
		41.069141, 39.749996, 22.248819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.454849, 40.057045, 22.725714>,  <41.184135, 40.256931, 22.717638>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.454849, 40.057045, 22.725714> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.660843, 39.746574, 22.580196>,  <40.784439, 39.560291, 22.492886>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.660843, 39.746574, 22.580196>,  <40.454849, 40.057045, 22.725714>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.660843, 39.746574, 22.580196> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194096, -0.518961, 0.832470,
		-0.834937, -0.358096, -0.417908,
		0.514982, -0.776174, -0.363795,
		40.815338, 39.513721, 22.471058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.992020, 39.421768, 22.725304>,  <40.454849, 40.057045, 22.725714>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.992020, 39.421768, 22.725304> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.372566, 39.301250, 22.699602>,  <40.600895, 39.228939, 22.684181>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.372566, 39.301250, 22.699602>,  <39.992020, 39.421768, 22.725304>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.372566, 39.301250, 22.699602> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190751, -0.739886, 0.645122,
		-0.241914, -0.601488, -0.761373,
		0.951363, -0.301297, -0.064254,
		40.657974, 39.210861, 22.680326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.476391, 38.958385, 22.395771>,  <39.992020, 39.421768, 22.725304>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.476391, 38.958385, 22.395771> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.122868, 38.795593, 22.303467>,  <38.910755, 38.697918, 22.248085>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.122868, 38.795593, 22.303467>,  <39.476391, 38.958385, 22.395771>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.122868, 38.795593, 22.303467> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050937, 0.574005, -0.817266,
		0.465069, -0.710552, -0.528041,
		-0.883808, -0.406981, -0.230759,
		38.857727, 38.673500, 22.234240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.597816, 38.663612, 21.724321>,  <39.476391, 38.958385, 22.395771>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.597816, 38.663612, 21.724321> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.205151, 38.729099, 21.763382>,  <38.969551, 38.768391, 21.786818>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.205151, 38.729099, 21.763382>,  <39.597816, 38.663612, 21.724321>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.205151, 38.729099, 21.763382> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000862, 0.516073, -0.856544,
		-0.190624, -0.840754, -0.506750,
		-0.981663, 0.163714, 0.097651,
		38.910652, 38.778214, 21.792677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.377464, 38.551994, 21.036264>,  <39.597816, 38.663612, 21.724321>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.377464, 38.551994, 21.036264> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.086548, 38.753227, 21.223005>,  <38.911999, 38.873966, 21.335051>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.086548, 38.753227, 21.223005>,  <39.377464, 38.551994, 21.036264>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.086548, 38.753227, 21.223005> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306852, 0.370099, -0.876852,
		-0.613908, -0.780985, -0.114800,
		-0.727295, 0.503080, 0.466854,
		38.868359, 38.904152, 21.363062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.747250, 38.487457, 20.626183>,  <39.377464, 38.551994, 21.036264>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.747250, 38.487457, 20.626183> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.711048, 38.820068, 20.845409>,  <38.689327, 39.019634, 20.976946>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.711048, 38.820068, 20.845409>,  <38.747250, 38.487457, 20.626183>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.711048, 38.820068, 20.845409> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327796, 0.494788, -0.804820,
		-0.940404, -0.252494, 0.227789,
		-0.090505, 0.831524, 0.548066,
		38.683895, 39.069527, 21.009829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.126648, 38.812885, 20.394106>,  <38.747250, 38.487457, 20.626183>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.126648, 38.812885, 20.394106> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.314449, 39.103561, 20.594698>,  <38.427128, 39.277969, 20.715054>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.314449, 39.103561, 20.594698>,  <38.126648, 38.812885, 20.394106>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.314449, 39.103561, 20.594698> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266763, 0.658180, -0.704015,
		-0.841668, 0.196760, 0.502871,
		0.469502, 0.726695, 0.501481,
		38.455299, 39.321571, 20.745142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.747826, 39.416439, 20.495346>,  <38.126648, 38.812885, 20.394106>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.747826, 39.416439, 20.495346> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.114685, 39.574936, 20.512486>,  <38.334801, 39.670033, 20.522768>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.114685, 39.574936, 20.512486>,  <37.747826, 39.416439, 20.495346>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.114685, 39.574936, 20.512486> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229162, 0.612247, -0.756729,
		-0.326080, 0.684212, 0.652323,
		0.917146, 0.396242, 0.042847,
		38.389828, 39.693810, 20.525339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.608063, 40.143715, 20.298309>,  <37.747826, 39.416439, 20.495346>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.608063, 40.143715, 20.298309> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.003872, 40.094135, 20.268709>,  <38.241360, 40.064388, 20.250950>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.003872, 40.094135, 20.268709>,  <37.608063, 40.143715, 20.298309>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.003872, 40.094135, 20.268709> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036045, 0.708512, -0.704777,
		0.139786, 0.694728, 0.705559,
		0.989525, -0.123949, -0.073999,
		38.300728, 40.056950, 20.246510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.085316, 40.659477, 20.572321>,  <37.608063, 40.143715, 20.298309>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.085316, 40.659477, 20.572321> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.783775, 40.626675, 20.311560>,  <36.602852, 40.606991, 20.155104>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.783775, 40.626675, 20.311560>,  <37.085316, 40.659477, 20.572321>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.783775, 40.626675, 20.311560> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364216, -0.773630, 0.518501,
		-0.546854, 0.628307, 0.553335,
		-0.753855, -0.082011, -0.651903,
		36.557617, 40.602070, 20.115990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.543633, 40.883938, 20.982889>,  <37.085316, 40.659477, 20.572321>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.543633, 40.883938, 20.982889> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.379440, 40.658760, 20.695946>,  <36.280926, 40.523655, 20.523779>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.379440, 40.658760, 20.695946>,  <36.543633, 40.883938, 20.982889>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.379440, 40.658760, 20.695946> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274406, -0.673967, 0.685908,
		-0.869602, 0.478398, 0.122174,
		-0.410479, -0.562942, -0.717359,
		36.256298, 40.489876, 20.480738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.854908, 40.818623, 21.175945>,  <36.543633, 40.883938, 20.982889>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.854908, 40.818623, 21.175945> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.874096, 40.530346, 20.899307>,  <35.885609, 40.357380, 20.733324>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.874096, 40.530346, 20.899307>,  <35.854908, 40.818623, 21.175945>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.874096, 40.530346, 20.899307> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291507, -0.672352, 0.680416,
		-0.955365, 0.168968, -0.242337,
		0.047968, -0.720689, -0.691598,
		35.888485, 40.314140, 20.691828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.176208, 40.474472, 21.135286>,  <35.854908, 40.818623, 21.175945>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.176208, 40.474472, 21.135286> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.417812, 40.200695, 20.971968>,  <35.562775, 40.036427, 20.873976>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.417812, 40.200695, 20.971968>,  <35.176208, 40.474472, 21.135286>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.417812, 40.200695, 20.971968> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403729, -0.704484, 0.583700,
		-0.687144, -0.187726, -0.701849,
		0.604017, -0.684443, -0.408291,
		35.599014, 39.995361, 20.849478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.692379, 39.850006, 21.197330>,  <35.176208, 40.474472, 21.135286>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.692379, 39.850006, 21.197330> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.062897, 39.720871, 21.119606>,  <35.285206, 39.643391, 21.072971>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.062897, 39.720871, 21.119606>,  <34.692379, 39.850006, 21.197330>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.062897, 39.720871, 21.119606> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259841, -0.920738, 0.291076,
		-0.272881, -0.219131, -0.936759,
		0.926293, -0.322837, -0.194313,
		35.340786, 39.624020, 21.061312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.670902, 39.255676, 20.747963>,  <34.692379, 39.850006, 21.197330>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.670902, 39.255676, 20.747963> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.025589, 39.227741, 20.930765>,  <35.238400, 39.210979, 21.040447>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.025589, 39.227741, 20.930765>,  <34.670902, 39.255676, 20.747963>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.025589, 39.227741, 20.930765> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275151, -0.874102, 0.400297,
		0.371514, -0.480696, -0.794298,
		0.886718, -0.069836, 0.457006,
		35.291603, 39.206791, 21.067867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.856430, 38.621353, 20.593506>,  <34.670902, 39.255676, 20.747963>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.856430, 38.621353, 20.593506> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.066872, 38.756027, 20.905880>,  <35.193138, 38.836830, 21.093304>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.066872, 38.756027, 20.905880>,  <34.856430, 38.621353, 20.593506>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.066872, 38.756027, 20.905880> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142903, -0.870234, 0.471457,
		0.838328, -0.359633, -0.409720,
		0.526104, 0.336685, 0.780934,
		35.224701, 38.857033, 21.140160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<39.004681, 44.629604, 19.672583> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.351498, 44.627186, 19.871859>,  <39.559589, 44.625732, 19.991425>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.351498, 44.627186, 19.871859>,  <39.004681, 44.629604, 19.672583>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.351498, 44.627186, 19.871859> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465725, -0.365088, 0.806108,
		0.177008, -0.930953, -0.319365,
		0.867046, -0.006049, 0.498192,
		39.611610, 44.625370, 20.021317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.942020, 44.063347, 20.070244>,  <39.004681, 44.629604, 19.672583>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.942020, 44.063347, 20.070244> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.246952, 44.268780, 20.227770>,  <39.429913, 44.392040, 20.322285>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.246952, 44.268780, 20.227770>,  <38.942020, 44.063347, 20.070244>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.246952, 44.268780, 20.227770> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113492, -0.492987, 0.862603,
		0.637160, -0.702282, -0.317531,
		0.762329, 0.513579, 0.393815,
		39.475651, 44.422855, 20.345915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.287743, 43.645515, 20.504948>,  <38.942020, 44.063347, 20.070244>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.287743, 43.645515, 20.504948> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.396469, 44.009247, 20.630960>,  <39.461704, 44.227486, 20.706568>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.396469, 44.009247, 20.630960>,  <39.287743, 43.645515, 20.504948>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.396469, 44.009247, 20.630960> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250562, -0.249195, 0.935479,
		0.929159, -0.333209, 0.160109,
		0.271812, 0.909326, 0.315031,
		39.478012, 44.282043, 20.725470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.654129, 43.536270, 21.036131>,  <39.287743, 43.645515, 20.504948>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.654129, 43.536270, 21.036131> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.563416, 43.918983, 21.108944>,  <39.508987, 44.148613, 21.152632>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.563416, 43.918983, 21.108944>,  <39.654129, 43.536270, 21.036131>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.563416, 43.918983, 21.108944> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282755, -0.243530, 0.927762,
		0.931997, 0.158929, 0.325764,
		-0.226782, 0.956783, 0.182032,
		39.495380, 44.206020, 21.163553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.044720, 43.814602, 21.620245>,  <39.654129, 43.536270, 21.036131>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.044720, 43.814602, 21.620245> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.715443, 44.040569, 21.597528>,  <39.517876, 44.176147, 21.583899>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.715443, 44.040569, 21.597528>,  <40.044720, 43.814602, 21.620245>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.715443, 44.040569, 21.597528> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168919, -0.148189, 0.974426,
		0.542051, 0.811734, 0.217413,
		-0.823193, 0.564914, -0.056791,
		39.468483, 44.210045, 21.580492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.102657, 44.277344, 22.082508>,  <40.044720, 43.814602, 21.620245>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.102657, 44.277344, 22.082508> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.708672, 44.307163, 22.020180>,  <39.472279, 44.325054, 21.982782>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.708672, 44.307163, 22.020180>,  <40.102657, 44.277344, 22.082508>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.708672, 44.307163, 22.020180> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155282, 0.013004, 0.987785,
		0.075668, 0.997132, -0.001232,
		-0.984968, 0.074552, -0.155821,
		39.413181, 44.329529, 21.973433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.876720, 44.788654, 22.594246>,  <40.102657, 44.277344, 22.082508>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.876720, 44.788654, 22.594246> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.560688, 44.563862, 22.496315>,  <39.371067, 44.428986, 22.437557>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.560688, 44.563862, 22.496315>,  <39.876720, 44.788654, 22.594246>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.560688, 44.563862, 22.496315> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236534, -0.088965, 0.967542,
		-0.565524, 0.822350, -0.062639,
		-0.790085, -0.561984, -0.244826,
		39.323662, 44.395267, 22.422867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.414738, 44.843380, 23.029087>,  <39.876720, 44.788654, 22.594246>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.414738, 44.843380, 23.029087> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.188004, 44.551208, 22.876677>,  <39.051964, 44.375908, 22.785231>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.188004, 44.551208, 22.876677>,  <39.414738, 44.843380, 23.029087>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.188004, 44.551208, 22.876677> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228115, -0.305264, 0.924542,
		-0.791622, 0.610977, 0.006412,
		-0.566832, -0.730425, -0.381026,
		39.017956, 44.332081, 22.762369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.744923, 44.871765, 23.305088>,  <39.414738, 44.843380, 23.029087>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.744923, 44.871765, 23.305088> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.798439, 44.490936, 23.195063>,  <38.830547, 44.262440, 23.129047>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.798439, 44.490936, 23.195063>,  <38.744923, 44.871765, 23.305088>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.798439, 44.490936, 23.195063> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457048, -0.305555, 0.835310,
		-0.879323, 0.013964, -0.476021,
		0.133786, -0.952072, -0.275064,
		38.838573, 44.205315, 23.112543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.209911, 44.532169, 23.556059>,  <38.744923, 44.871765, 23.305088>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.209911, 44.532169, 23.556059> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.465107, 44.233055, 23.482544>,  <38.618225, 44.053585, 23.438435>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.465107, 44.233055, 23.482544>,  <38.209911, 44.532169, 23.556059>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.465107, 44.233055, 23.482544> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279793, -0.447475, 0.849401,
		-0.717412, -0.490489, -0.494712,
		0.637993, -0.747788, -0.183789,
		38.656506, 44.008720, 23.427408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.822693, 43.911888, 23.767174>,  <38.209911, 44.532169, 23.556059>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.822693, 43.911888, 23.767174> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.181358, 43.738605, 23.730671>,  <38.396557, 43.634636, 23.708769>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.181358, 43.738605, 23.730671>,  <37.822693, 43.911888, 23.767174>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.181358, 43.738605, 23.730671> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199531, -0.579459, 0.790199,
		-0.395195, -0.690336, -0.606018,
		0.896665, -0.433202, -0.091256,
		38.450359, 43.608646, 23.703295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.725483, 43.217979, 23.809010>,  <37.822693, 43.911888, 23.767174>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.725483, 43.217979, 23.809010> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.109455, 43.253952, 23.915176>,  <38.339840, 43.275536, 23.978876>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.109455, 43.253952, 23.915176>,  <37.725483, 43.217979, 23.809010>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.109455, 43.253952, 23.915176> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145082, -0.650830, 0.745233,
		0.239764, -0.753878, -0.611703,
		0.959930, 0.089933, 0.265419,
		38.397434, 43.280933, 23.994802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.160610, 42.830414, 23.386936>,  <37.725483, 43.217979, 23.809010>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.160610, 42.830414, 23.386936> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.772697, 42.807247, 23.481743>,  <36.539951, 42.793346, 23.538628>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.772697, 42.807247, 23.481743>,  <37.160610, 42.830414, 23.386936>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.772697, 42.807247, 23.481743> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217545, 0.645111, -0.732466,
		-0.110480, -0.761891, -0.638214,
		-0.969777, -0.057917, 0.237017,
		36.481766, 42.789871, 23.552849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.789471, 42.698071, 22.699957>,  <37.160610, 42.830414, 23.386936>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.789471, 42.698071, 22.699957> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.522945, 42.845264, 22.959375>,  <36.363029, 42.933582, 23.115026>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.522945, 42.845264, 22.959375>,  <36.789471, 42.698071, 22.699957>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.522945, 42.845264, 22.959375> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350849, 0.612741, -0.708134,
		-0.657974, -0.699381, -0.279170,
		-0.666314, 0.367987, 0.648545,
		36.323051, 42.955662, 23.153938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.095406, 42.698856, 22.331566>,  <36.789471, 42.698071, 22.699957>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.095406, 42.698856, 22.331566> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.073711, 42.993179, 22.601572>,  <36.060696, 43.169773, 22.763575>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.073711, 42.993179, 22.601572>,  <36.095406, 42.698856, 22.331566>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.073711, 42.993179, 22.601572> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177025, 0.658215, -0.731721,
		-0.982711, -0.159182, 0.094557,
		-0.054238, 0.735809, 0.675014,
		36.057442, 43.213921, 22.804077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.414955, 43.151745, 22.101191>,  <36.095406, 42.698856, 22.331566>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.414955, 43.151745, 22.101191> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.628761, 43.387573, 22.343412>,  <35.757046, 43.529072, 22.488745>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.628761, 43.387573, 22.343412>,  <35.414955, 43.151745, 22.101191>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.628761, 43.387573, 22.343412> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136657, 0.767359, -0.626487,
		-0.834038, 0.252113, 0.490734,
		0.534515, 0.589576, 0.605553,
		35.789116, 43.564445, 22.525078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.066639, 43.719349, 22.288839>,  <35.414955, 43.151745, 22.101191>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.066639, 43.719349, 22.288839> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.451851, 43.825626, 22.306671>,  <35.682976, 43.889393, 22.317371>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.451851, 43.825626, 22.306671>,  <35.066639, 43.719349, 22.288839>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.451851, 43.825626, 22.306671> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142145, 0.641674, -0.753691,
		-0.228858, 0.719487, 0.655715,
		0.963026, 0.265695, 0.044581,
		35.740757, 43.905334, 22.320045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.114483, 44.471939, 22.018938>,  <35.066639, 43.719349, 22.288839>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.114483, 44.471939, 22.018938> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.501049, 44.369869, 22.031126>,  <35.732990, 44.308628, 22.038439>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.501049, 44.369869, 22.031126>,  <35.114483, 44.471939, 22.018938>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.501049, 44.369869, 22.031126> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174652, 0.565165, -0.806279,
		0.188523, 0.784521, 0.590750,
		0.966414, -0.255178, 0.030471,
		35.790974, 44.293316, 22.040268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.497711, 45.072769, 21.904091>,  <35.114483, 44.471939, 22.018938>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.497711, 45.072769, 21.904091> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.752129, 44.779266, 21.808548>,  <35.904781, 44.603165, 21.751223>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.752129, 44.779266, 21.808548>,  <35.497711, 45.072769, 21.904091>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.752129, 44.779266, 21.808548> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358519, 0.555102, -0.750551,
		0.683308, 0.391750, 0.616135,
		0.636046, -0.733754, -0.238855,
		35.942944, 44.559139, 21.736891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.190456, 45.469398, 21.710443>,  <35.497711, 45.072769, 21.904091>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.190456, 45.469398, 21.710443> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.178291, 45.110847, 21.533545>,  <36.170990, 44.895718, 21.427404>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.178291, 45.110847, 21.533545>,  <36.190456, 45.469398, 21.710443>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.178291, 45.110847, 21.533545> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303644, 0.413256, -0.858499,
		0.952300, -0.160399, 0.259609,
		-0.030417, -0.896377, -0.442248,
		36.169167, 44.841934, 21.400869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.732067, 45.441738, 21.345007>,  <36.190456, 45.469398, 21.710443>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.732067, 45.441738, 21.345007> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.571632, 45.107559, 21.194721>,  <36.475372, 44.907051, 21.104549>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.571632, 45.107559, 21.194721>,  <36.732067, 45.441738, 21.345007>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.571632, 45.107559, 21.194721> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572672, 0.091436, -0.814669,
		0.714964, -0.541917, 0.441761,
		-0.401090, -0.835443, -0.375714,
		36.451305, 44.856926, 21.082006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.293373, 44.991085, 21.124977>,  <36.732067, 45.441738, 21.345007>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.293373, 44.991085, 21.124977> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.967167, 44.893398, 20.915104>,  <36.771442, 44.834785, 20.789181>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.967167, 44.893398, 20.915104>,  <37.293373, 44.991085, 21.124977>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.967167, 44.893398, 20.915104> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508153, 0.131723, -0.851134,
		0.276979, -0.960731, 0.016680,
		-0.815514, -0.244222, -0.524683,
		36.722511, 44.820133, 20.757698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.600128, 44.559025, 20.553701>,  <37.293373, 44.991085, 21.124977>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.600128, 44.559025, 20.553701> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.230507, 44.659599, 20.438522>,  <37.008736, 44.719944, 20.369415>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.230507, 44.659599, 20.438522>,  <37.600128, 44.559025, 20.553701>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.230507, 44.659599, 20.438522> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325758, 0.123762, -0.937318,
		-0.200038, -0.959929, -0.196270,
		-0.924049, 0.251435, -0.287948,
		36.953293, 44.735031, 20.352139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.318214, 44.090218, 20.050726>,  <37.600128, 44.559025, 20.553701>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.318214, 44.090218, 20.050726> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.158142, 44.453362, 20.000706>,  <37.062099, 44.671249, 19.970694>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.158142, 44.453362, 20.000706>,  <37.318214, 44.090218, 20.050726>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.158142, 44.453362, 20.000706> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353836, 0.027193, -0.934912,
		-0.845372, -0.418384, -0.332117,
		-0.400183, 0.907863, -0.125052,
		37.038086, 44.725719, 19.963190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.888927, 44.068630, 19.465887>,  <37.318214, 44.090218, 20.050726>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.888927, 44.068630, 19.465887> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.975372, 44.459137, 19.471481>,  <37.027241, 44.693439, 19.474838>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.975372, 44.459137, 19.471481>,  <36.888927, 44.068630, 19.465887>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.975372, 44.459137, 19.471481> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244468, -0.040237, -0.968822,
		-0.945268, 0.212795, -0.247362,
		0.216113, 0.976268, 0.013986,
		37.040207, 44.752018, 19.475677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.196293, 43.749722, 19.126034>,  <36.888927, 44.068630, 19.465887>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.196293, 43.749722, 19.126034> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.281017, 43.567837, 18.779999>,  <36.331852, 43.458706, 18.572378>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.281017, 43.567837, 18.779999>,  <36.196293, 43.749722, 19.126034>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.281017, 43.567837, 18.779999> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160897, -0.856869, 0.489782,
		-0.963976, -0.242930, -0.108330,
		0.211808, -0.454708, -0.865088,
		36.344559, 43.431423, 18.520472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.706375, 43.138405, 18.998804>,  <36.196293, 43.749722, 19.126034>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.706375, 43.138405, 18.998804> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.025734, 43.076683, 18.765997>,  <36.217350, 43.039650, 18.626312>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.025734, 43.076683, 18.765997>,  <35.706375, 43.138405, 18.998804>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.025734, 43.076683, 18.765997> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092895, -0.923468, 0.372260,
		-0.594918, -0.351279, -0.722963,
		0.798401, -0.154305, -0.582019,
		36.265255, 43.030392, 18.591391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.615635, 42.447113, 18.630779>,  <35.706375, 43.138405, 18.998804>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.615635, 42.447113, 18.630779> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.007298, 42.528343, 18.632019>,  <36.242294, 42.577080, 18.632763>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.007298, 42.528343, 18.632019>,  <35.615635, 42.447113, 18.630779>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.007298, 42.528343, 18.632019> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196921, -0.952995, 0.230268,
		0.049716, -0.224859, -0.973122,
		0.979158, 0.203076, 0.003100,
		36.301044, 42.589268, 18.632950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.900345, 41.882610, 18.379574>,  <35.615635, 42.447113, 18.630779>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.900345, 41.882610, 18.379574> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.215942, 42.035191, 18.572229>,  <36.405300, 42.126740, 18.687822>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.215942, 42.035191, 18.572229>,  <35.900345, 41.882610, 18.379574>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.215942, 42.035191, 18.572229> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202236, -0.901479, 0.382670,
		0.580159, -0.204520, -0.788408,
		0.788997, 0.381454, 0.481640,
		36.452641, 42.149628, 18.716721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.478977, 41.413944, 18.243786>,  <35.900345, 41.882610, 18.379574>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.478977, 41.413944, 18.243786> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.570045, 41.615337, 18.577171>,  <36.624687, 41.736176, 18.777203>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.570045, 41.615337, 18.577171>,  <36.478977, 41.413944, 18.243786>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.570045, 41.615337, 18.577171> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012704, -0.857408, 0.514481,
		0.973654, -0.106546, -0.201607,
		0.227675, 0.503488, 0.833465,
		36.638348, 41.766384, 18.827211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.762924, 40.933598, 18.697819>,  <36.478977, 41.413944, 18.243786>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.762924, 40.933598, 18.697819> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.713272, 41.233627, 18.957657>,  <36.683479, 41.413647, 19.113560>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.713272, 41.233627, 18.957657>,  <36.762924, 40.933598, 18.697819>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.713272, 41.233627, 18.957657> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026894, -0.651876, 0.757848,
		0.991901, 0.111544, 0.060747,
		-0.124133, 0.750077, 0.649597,
		36.676033, 41.458649, 19.152536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.321564, 40.870438, 19.160210>,  <36.762924, 40.933598, 18.697819>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.321564, 40.870438, 19.160210> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.004704, 41.037670, 19.338066>,  <36.814587, 41.138008, 19.444780>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.004704, 41.037670, 19.338066>,  <37.321564, 40.870438, 19.160210>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.004704, 41.037670, 19.338066> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115227, -0.817875, 0.563741,
		0.599350, 0.395333, 0.696054,
		-0.792150, 0.418082, 0.444641,
		36.767059, 41.163094, 19.471458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.359215, 40.792458, 19.862593>,  <37.321564, 40.870438, 19.160210>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.359215, 40.792458, 19.862593> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.968460, 40.875854, 19.843695>,  <36.734009, 40.925892, 19.832355>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.968460, 40.875854, 19.843695>,  <37.359215, 40.792458, 19.862593>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.968460, 40.875854, 19.843695> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188768, -0.737533, 0.648391,
		0.100340, 0.642320, 0.759840,
		-0.976882, 0.208493, -0.047245,
		36.675396, 40.938404, 19.829521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.937695, 40.835892, 20.335392>,  <37.359215, 40.792458, 19.862593>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.937695, 40.835892, 20.335392> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.225819, 40.618484, 20.162998>,  <38.398693, 40.488041, 20.059563>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.225819, 40.618484, 20.162998>,  <37.937695, 40.835892, 20.335392>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.225819, 40.618484, 20.162998> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006243, 0.626374, -0.779497,
		0.693627, 0.558787, 0.454575,
		0.720307, -0.543518, -0.430982,
		38.441910, 40.455429, 20.033703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.471527, 41.277031, 20.341347>,  <37.937695, 40.835892, 20.335392>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.471527, 41.277031, 20.341347> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.493034, 41.012497, 20.042082>,  <38.505939, 40.853775, 19.862524>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.493034, 41.012497, 20.042082>,  <38.471527, 41.277031, 20.341347>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.493034, 41.012497, 20.042082> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189245, 0.742415, -0.642656,
		0.980457, -0.107032, 0.165072,
		0.053767, -0.661335, -0.748161,
		38.509163, 40.814095, 19.817633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.173500, 41.251175, 20.026123>,  <38.471527, 41.277031, 20.341347>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.173500, 41.251175, 20.026123> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.971909, 41.068676, 19.732771>,  <38.850956, 40.959175, 19.556761>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.971909, 41.068676, 19.732771>,  <39.173500, 41.251175, 20.026123>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.971909, 41.068676, 19.732771> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385527, 0.640988, -0.663704,
		0.772902, -0.617228, -0.147145,
		-0.503975, -0.456250, -0.733379,
		38.820717, 40.931801, 19.512756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.599289, 41.302986, 19.437538>,  <39.173500, 41.251175, 20.026123>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.599289, 41.302986, 19.437538> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.247299, 41.224609, 19.264448>,  <39.036106, 41.177586, 19.160595>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.247299, 41.224609, 19.264448>,  <39.599289, 41.302986, 19.437538>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.247299, 41.224609, 19.264448> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217614, 0.643458, -0.733898,
		0.422238, -0.739980, -0.523589,
		-0.879977, -0.195939, -0.432723,
		38.983307, 41.165829, 19.134630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.767895, 41.427151, 18.690615>,  <39.599289, 41.302986, 19.437538>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.767895, 41.427151, 18.690615> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.368172, 41.418602, 18.702795>,  <39.128338, 41.413471, 18.710104>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.368172, 41.418602, 18.702795>,  <39.767895, 41.427151, 18.690615>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.368172, 41.418602, 18.702795> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036565, 0.715091, -0.698074,
		-0.006857, -0.698705, -0.715377,
		-0.999308, -0.021371, 0.030452,
		39.068378, 41.412189, 18.711931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.651958, 41.451630, 18.009960>,  <39.767895, 41.427151, 18.690615>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.651958, 41.451630, 18.009960> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.333580, 41.563774, 18.224575>,  <39.142555, 41.631062, 18.353344>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.333580, 41.563774, 18.224575>,  <39.651958, 41.451630, 18.009960>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.333580, 41.563774, 18.224575> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061309, 0.844404, -0.532187,
		-0.602260, -0.456485, -0.654908,
		-0.795942, 0.280363, 0.536537,
		39.094799, 41.647884, 18.385536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.143009, 41.736996, 17.531889>,  <39.651958, 41.451630, 18.009960>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.143009, 41.736996, 17.531889> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.015022, 41.885906, 17.880381>,  <38.938232, 41.975250, 18.089476>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.015022, 41.885906, 17.880381>,  <39.143009, 41.736996, 17.531889>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.015022, 41.885906, 17.880381> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257022, 0.850978, -0.458013,
		-0.911901, -0.370472, -0.176600,
		-0.319963, 0.372272, 0.871227,
		38.919033, 41.997589, 18.141748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.481438, 41.863167, 17.427608>,  <39.143009, 41.736996, 17.531889>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.481438, 41.863167, 17.427608> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.555660, 42.081753, 17.754276>,  <38.600193, 42.212902, 17.950277>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.555660, 42.081753, 17.754276>,  <38.481438, 41.863167, 17.427608>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.555660, 42.081753, 17.754276> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284591, 0.825369, -0.487620,
		-0.940520, -0.141937, 0.308669,
		0.185554, 0.546461, 0.816670,
		38.611328, 42.245689, 17.999277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.003468, 42.340366, 17.549921>,  <38.481438, 41.863167, 17.427608>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.003468, 42.340366, 17.549921> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.324310, 42.503555, 17.724365>,  <38.516815, 42.601467, 17.829031>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.324310, 42.503555, 17.724365>,  <38.003468, 42.340366, 17.549921>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.324310, 42.503555, 17.724365> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104380, 0.814809, -0.570255,
		-0.587993, 0.411882, 0.696144,
		0.802103, 0.407970, 0.436110,
		38.564941, 42.625946, 17.855198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<36.508820, 32.387119, 30.006697> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.794128, 32.594872, 30.194946>,  <36.965313, 32.719521, 30.307896>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.794128, 32.594872, 30.194946>,  <36.508820, 32.387119, 30.006697>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.794128, 32.594872, 30.194946> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180246, 0.784815, -0.592939,
		-0.677314, 0.338099, 0.653403,
		0.713273, 0.519379, 0.470625,
		37.008110, 32.750687, 30.336134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.297260, 33.065392, 30.199751>,  <36.508820, 32.387119, 30.006697>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.297260, 33.065392, 30.199751> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.694359, 33.075031, 30.152649>,  <36.932617, 33.080814, 30.124388>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.694359, 33.075031, 30.152649>,  <36.297260, 33.065392, 30.199751>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.694359, 33.075031, 30.152649> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103457, 0.670035, -0.735085,
		0.061188, 0.741939, 0.667670,
		0.992750, 0.024096, -0.117757,
		36.992184, 33.082260, 30.117321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.426876, 33.814323, 30.194462>,  <36.297260, 33.065392, 30.199751>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.426876, 33.814323, 30.194462> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.734753, 33.631287, 30.016388>,  <36.919479, 33.521465, 29.909544>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.734753, 33.631287, 30.016388>,  <36.426876, 33.814323, 30.194462>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.734753, 33.631287, 30.016388> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130688, 0.569628, -0.811446,
		0.624899, 0.682742, 0.378635,
		0.769689, -0.457588, -0.445187,
		36.965660, 33.494011, 29.882832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.992294, 34.311855, 29.899488>,  <36.426876, 33.814323, 30.194462>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.992294, 34.311855, 29.899488> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.075020, 33.971668, 29.706022>,  <37.124657, 33.767555, 29.589943>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.075020, 33.971668, 29.706022>,  <36.992294, 34.311855, 29.899488>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.075020, 33.971668, 29.706022> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039302, 0.501177, -0.864452,
		0.977590, 0.159772, 0.137075,
		0.206814, -0.850467, -0.483666,
		37.137062, 33.716530, 29.560923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.476025, 34.490234, 29.414793>,  <36.992294, 34.311855, 29.899488>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.476025, 34.490234, 29.414793> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.318489, 34.142338, 29.295832>,  <37.223969, 33.933601, 29.224455>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.318489, 34.142338, 29.295832>,  <37.476025, 34.490234, 29.414793>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.318489, 34.142338, 29.295832> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015765, 0.317114, -0.948256,
		0.919045, -0.378147, -0.111180,
		-0.393837, -0.869738, -0.297404,
		37.200336, 33.881416, 29.206610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.933395, 34.243542, 28.830673>,  <37.476025, 34.490234, 29.414793>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.933395, 34.243542, 28.830673> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.567673, 34.089283, 28.781157>,  <37.348240, 33.996727, 28.751446>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.567673, 34.089283, 28.781157>,  <37.933395, 34.243542, 28.830673>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.567673, 34.089283, 28.781157> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032654, 0.374826, -0.926520,
		0.403714, -0.843077, -0.355298,
		-0.914303, -0.385651, -0.123793,
		37.293381, 33.973591, 28.744019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.968414, 33.888798, 28.126738>,  <37.933395, 34.243542, 28.830673>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.968414, 33.888798, 28.126738> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.576199, 33.934971, 28.190258>,  <37.340870, 33.962673, 28.228371>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.576199, 33.934971, 28.190258>,  <37.968414, 33.888798, 28.126738>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.576199, 33.934971, 28.190258> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103769, 0.381920, -0.918351,
		-0.166653, -0.916959, -0.362510,
		-0.980540, 0.115429, 0.158801,
		37.282036, 33.969601, 28.237898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.667343, 33.583210, 27.583580>,  <37.968414, 33.888798, 28.126738>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.667343, 33.583210, 27.583580> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.378296, 33.824055, 27.719393>,  <37.204868, 33.968563, 27.800880>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.378296, 33.824055, 27.719393>,  <37.667343, 33.583210, 27.583580>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.378296, 33.824055, 27.719393> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043828, 0.450290, -0.891806,
		-0.689856, -0.659317, -0.298998,
		-0.722618, 0.602114, 0.339531,
		37.161510, 34.004688, 27.821253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.144539, 33.566143, 27.084841>,  <37.667343, 33.583210, 27.583580>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.144539, 33.566143, 27.084841> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.067699, 33.895130, 27.299000>,  <37.021595, 34.092522, 27.427496>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.067699, 33.895130, 27.299000>,  <37.144539, 33.566143, 27.084841>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.067699, 33.895130, 27.299000> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094205, 0.527586, -0.844262,
		-0.976844, -0.212615, -0.023866,
		-0.192095, 0.822465, 0.535398,
		37.010071, 34.141869, 27.459620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.587257, 33.686749, 26.853104>,  <37.144539, 33.566143, 27.084841>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.587257, 33.686749, 26.853104> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.699669, 34.034054, 27.016640>,  <36.767117, 34.242435, 27.114761>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.699669, 34.034054, 27.016640>,  <36.587257, 33.686749, 26.853104>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.699669, 34.034054, 27.016640> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304279, 0.484640, -0.820084,
		-0.910185, 0.106067, 0.400391,
		0.281029, 0.868259, 0.408838,
		36.783978, 34.294533, 27.139292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.104008, 34.277290, 26.642855>,  <36.587257, 33.686749, 26.853104>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.104008, 34.277290, 26.642855> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.452732, 34.451538, 26.732464>,  <36.661964, 34.556087, 26.786228>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.452732, 34.451538, 26.732464>,  <36.104008, 34.277290, 26.642855>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.452732, 34.451538, 26.732464> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091087, 0.593518, -0.799649,
		-0.481304, 0.676735, 0.557113,
		0.871808, 0.435621, 0.224021,
		36.714275, 34.582226, 26.799669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.959988, 35.021797, 26.451454>,  <36.104008, 34.277290, 26.642855>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.959988, 35.021797, 26.451454> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.355091, 34.965824, 26.479004>,  <36.592155, 34.932240, 26.495533>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.355091, 34.965824, 26.479004>,  <35.959988, 35.021797, 26.451454>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.355091, 34.965824, 26.479004> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134392, 0.539595, -0.831129,
		0.079135, 0.830215, 0.551798,
		0.987763, -0.139929, 0.068873,
		36.651421, 34.923847, 26.499666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.462925, 35.563740, 26.737749>,  <35.959988, 35.021797, 26.451454>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.462925, 35.563740, 26.737749> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.172771, 35.392883, 26.521837>,  <34.998680, 35.290367, 26.392290>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.172771, 35.392883, 26.521837>,  <35.462925, 35.563740, 26.737749>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.172771, 35.392883, 26.521837> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247342, -0.570052, 0.783494,
		-0.642367, 0.701846, 0.307857,
		-0.725387, -0.427145, -0.539779,
		34.955154, 35.264740, 26.359903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.859901, 35.599236, 27.185808>,  <35.462925, 35.563740, 26.737749>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.859901, 35.599236, 27.185808> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.761684, 35.313885, 26.923265>,  <34.702755, 35.142673, 26.765739>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.761684, 35.313885, 26.923265>,  <34.859901, 35.599236, 27.185808>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.761684, 35.313885, 26.923265> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355303, -0.563736, 0.745629,
		-0.901924, 0.416292, -0.115040,
		-0.245547, -0.713374, -0.656356,
		34.688019, 35.099873, 26.726358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.244205, 35.478985, 27.444613>,  <34.859901, 35.599236, 27.185808>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.244205, 35.478985, 27.444613> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.422089, 35.167477, 27.267639>,  <34.528816, 34.980572, 27.161455>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.422089, 35.167477, 27.267639>,  <34.244205, 35.478985, 27.444613>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.422089, 35.167477, 27.267639> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193490, -0.565832, 0.801496,
		-0.874529, -0.270821, -0.402312,
		0.444704, -0.778775, -0.442435,
		34.555500, 34.933846, 27.134909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.805988, 34.980656, 27.531300>,  <34.244205, 35.478985, 27.444613>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.805988, 34.980656, 27.531300> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.140076, 34.789570, 27.422342>,  <34.340530, 34.674919, 27.356968>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.140076, 34.789570, 27.422342>,  <33.805988, 34.980656, 27.531300>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.140076, 34.789570, 27.422342> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204744, -0.729866, 0.652208,
		-0.510379, -0.488966, -0.707407,
		0.835221, -0.477711, -0.272395,
		34.390640, 34.646255, 27.340624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.670353, 34.307259, 27.366367>,  <33.805988, 34.980656, 27.531300>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.670353, 34.307259, 27.366367> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.055294, 34.295269, 27.474428>,  <34.286259, 34.288074, 27.539265>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.055294, 34.295269, 27.474428>,  <33.670353, 34.307259, 27.366367>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.055294, 34.295269, 27.474428> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175176, -0.828345, 0.532126,
		0.207833, -0.559416, -0.802408,
		0.962351, -0.029969, 0.270154,
		34.343998, 34.286278, 27.555475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.942921, 33.613297, 27.347927>,  <33.670353, 34.307259, 27.366367>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.942921, 33.613297, 27.347927> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.171955, 33.820518, 27.602100>,  <34.309376, 33.944851, 27.754604>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.171955, 33.820518, 27.602100>,  <33.942921, 33.613297, 27.347927>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.171955, 33.820518, 27.602100> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001138, -0.775562, 0.631270,
		0.819847, -0.360731, -0.444663,
		0.572582, 0.518051, 0.635431,
		34.343731, 33.975933, 27.792730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.385262, 33.130558, 27.526068>,  <33.942921, 33.613297, 27.347927>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.385262, 33.130558, 27.526068> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.431656, 33.410511, 27.807980>,  <34.459492, 33.578484, 27.977127>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.431656, 33.410511, 27.807980>,  <34.385262, 33.130558, 27.526068>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.431656, 33.410511, 27.807980> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088069, -0.699528, 0.709157,
		0.989339, -0.144321, -0.019497,
		0.115985, 0.699880, 0.704781,
		34.466450, 33.620476, 28.019413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.711063, 32.772934, 27.998171>,  <34.385262, 33.130558, 27.526068>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.711063, 32.772934, 27.998171> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.575191, 33.097420, 28.188562>,  <34.493668, 33.292110, 28.302797>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.575191, 33.097420, 28.188562>,  <34.711063, 32.772934, 27.998171>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.575191, 33.097420, 28.188562> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133256, -0.542470, 0.829439,
		0.931054, 0.218315, 0.292364,
		-0.339678, 0.811212, 0.475977,
		34.473289, 33.340782, 28.331356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.050266, 32.776047, 28.650482>,  <34.711063, 32.772934, 27.998171>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.050266, 32.776047, 28.650482> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.732143, 33.013493, 28.699646>,  <34.541267, 33.155960, 28.729143>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.732143, 33.013493, 28.699646>,  <35.050266, 32.776047, 28.650482>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.732143, 33.013493, 28.699646> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143113, -0.380878, 0.913483,
		0.589067, 0.708913, 0.387870,
		-0.795310, 0.593612, 0.122908,
		34.493549, 33.191578, 28.736519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.188534, 33.096455, 29.243946>,  <35.050266, 32.776047, 28.650482>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.188534, 33.096455, 29.243946> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.796391, 33.135620, 29.175470>,  <34.561104, 33.159119, 29.134384>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.796391, 33.135620, 29.175470>,  <35.188534, 33.096455, 29.243946>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.796391, 33.135620, 29.175470> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183031, -0.128523, 0.974670,
		0.073428, 0.986861, 0.143920,
		-0.980361, 0.097909, -0.171189,
		34.502281, 33.164993, 29.124113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.998955, 33.489388, 29.776409>,  <35.188534, 33.096455, 29.243946>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.998955, 33.489388, 29.776409> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.630890, 33.376728, 29.667620>,  <34.410049, 33.309132, 29.602346>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.630890, 33.376728, 29.667620>,  <34.998955, 33.489388, 29.776409>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.630890, 33.376728, 29.667620> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307696, 0.090642, 0.947158,
		-0.242109, 0.955228, -0.170067,
		-0.920167, -0.281644, -0.271974,
		34.354839, 33.292236, 29.586027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.451103, 33.967636, 29.984303>,  <34.998955, 33.489388, 29.776409>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.451103, 33.967636, 29.984303> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.265812, 33.614796, 29.950077>,  <34.154636, 33.403091, 29.929541>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.265812, 33.614796, 29.950077>,  <34.451103, 33.967636, 29.984303>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.265812, 33.614796, 29.950077> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304613, 0.067809, 0.950059,
		-0.832242, 0.466162, -0.300110,
		-0.463232, -0.882097, -0.085565,
		34.126842, 33.350166, 29.924408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.716461, 34.027473, 30.283403>,  <34.451103, 33.967636, 29.984303>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.716461, 34.027473, 30.283403> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.758259, 33.629684, 30.279438>,  <33.783337, 33.391010, 30.277058>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.758259, 33.629684, 30.279438>,  <33.716461, 34.027473, 30.283403>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.758259, 33.629684, 30.279438> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420074, -0.053172, 0.905931,
		-0.901454, -0.090500, -0.423309,
		0.104495, -0.994476, -0.009916,
		33.789608, 33.331341, 30.276463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.992290, 33.997574, 30.453455>,  <33.716461, 34.027473, 30.283403>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.992290, 33.997574, 30.453455> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.241024, 33.693851, 30.530170>,  <33.390263, 33.511620, 30.576199>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.241024, 33.693851, 30.530170>,  <32.992290, 33.997574, 30.453455>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.241024, 33.693851, 30.530170> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179238, 0.100409, 0.978668,
		-0.762366, -0.642941, -0.073659,
		0.621830, -0.759306, 0.191788,
		33.427574, 33.466061, 30.587708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.088245, 34.640343, 30.550079>,  <32.992290, 33.997574, 30.453455>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.088245, 34.640343, 30.550079> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.138283, 34.963257, 30.780779>,  <33.168304, 35.157005, 30.919199>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.138283, 34.963257, 30.780779>,  <33.088245, 34.640343, 30.550079>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.138283, 34.963257, 30.780779> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339157, 0.511503, -0.789517,
		-0.932375, 0.294373, -0.209811,
		0.125094, 0.807285, 0.576751,
		33.175812, 35.205444, 30.953804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.748417, 35.184490, 30.287207>,  <33.088245, 34.640343, 30.550079>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.748417, 35.184490, 30.287207> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.040882, 35.347134, 30.506321>,  <33.216362, 35.444721, 30.637791>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.040882, 35.347134, 30.506321>,  <32.748417, 35.184490, 30.287207>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.040882, 35.347134, 30.506321> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257494, 0.579088, -0.773533,
		-0.631741, 0.706631, 0.318709,
		0.731163, 0.406607, 0.547787,
		33.260231, 35.469116, 30.670656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.750095, 35.861889, 30.146603>,  <32.748417, 35.184490, 30.287207>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.750095, 35.861889, 30.146603> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.118626, 35.811478, 30.293718>,  <33.339745, 35.781231, 30.381989>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.118626, 35.811478, 30.293718>,  <32.750095, 35.861889, 30.146603>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.118626, 35.811478, 30.293718> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371196, 0.566472, -0.735747,
		-0.115615, 0.814387, 0.568689,
		0.921329, -0.126032, 0.367790,
		33.395023, 35.773666, 30.404055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.013481, 36.524521, 30.326328>,  <32.750095, 35.861889, 30.146603>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.013481, 36.524521, 30.326328> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.291798, 36.256775, 30.222155>,  <33.458790, 36.096127, 30.159651>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.291798, 36.256775, 30.222155>,  <33.013481, 36.524521, 30.326328>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.291798, 36.256775, 30.222155> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406724, 0.666059, -0.625253,
		0.591983, 0.329124, 0.735686,
		0.695795, -0.669361, -0.260433,
		33.500538, 36.055965, 30.144024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.508896, 36.968426, 30.243210>,  <33.013481, 36.524521, 30.326328>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.508896, 36.968426, 30.243210> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.607414, 36.620056, 30.073112>,  <33.666527, 36.411034, 29.971054>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.607414, 36.620056, 30.073112>,  <33.508896, 36.968426, 30.243210>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.607414, 36.620056, 30.073112> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443009, 0.491408, -0.749841,
		0.862021, -0.003704, 0.506859,
		0.246297, -0.870921, -0.425245,
		33.681305, 36.358780, 29.945539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.287464, 36.995541, 30.010698>,  <33.508896, 36.968426, 30.243210>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.287464, 36.995541, 30.010698> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.156479, 36.694321, 29.782423>,  <34.077888, 36.513588, 29.645458>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.156479, 36.694321, 29.782423>,  <34.287464, 36.995541, 30.010698>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.156479, 36.694321, 29.782423> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.657055, 0.252555, -0.710278,
		0.679004, -0.607564, 0.412092,
		-0.327463, -0.753048, -0.570689,
		34.058239, 36.468407, 29.611216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.860886, 36.672619, 29.671272>,  <34.287464, 36.995541, 30.010698>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.860886, 36.672619, 29.671272> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.528755, 36.627640, 29.452946>,  <34.329475, 36.600651, 29.321949>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.528755, 36.627640, 29.452946>,  <34.860886, 36.672619, 29.671272>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.528755, 36.627640, 29.452946> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470313, 0.384002, -0.794575,
		0.298942, -0.916460, -0.265961,
		-0.830325, -0.112447, -0.545817,
		34.279659, 36.593906, 29.289200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.066639, 36.263229, 28.996937>,  <34.860886, 36.672619, 29.671272>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.066639, 36.263229, 28.996937> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.717896, 36.445274, 28.924559>,  <34.508652, 36.554501, 28.881132>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.717896, 36.445274, 28.924559>,  <35.066639, 36.263229, 28.996937>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.717896, 36.445274, 28.924559> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318861, 0.247031, -0.915043,
		-0.371748, -0.855482, -0.360493,
		-0.871855, 0.455112, -0.180946,
		34.456341, 36.581806, 28.870275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.825249, 36.069775, 28.264750>,  <35.066639, 36.263229, 28.996937>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.825249, 36.069775, 28.264750> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.641758, 36.409599, 28.368912>,  <34.531662, 36.613495, 28.431408>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.641758, 36.409599, 28.368912>,  <34.825249, 36.069775, 28.264750>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.641758, 36.409599, 28.368912> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328362, 0.434389, -0.838740,
		-0.825678, -0.299250, -0.478231,
		-0.458732, 0.849562, 0.260403,
		34.504139, 36.664467, 28.447033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.520775, 36.320213, 27.537945>,  <34.825249, 36.069775, 28.264750>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.520775, 36.320213, 27.537945> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.482597, 36.620998, 27.798849>,  <34.459690, 36.801468, 27.955391>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.482597, 36.620998, 27.798849>,  <34.520775, 36.320213, 27.537945>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.482597, 36.620998, 27.798849> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249915, 0.652364, -0.715516,
		-0.963553, 0.094721, -0.250188,
		-0.095440, 0.751963, 0.652260,
		34.453964, 36.846588, 27.994528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.121109, 36.782333, 27.146305>,  <34.520775, 36.320213, 27.537945>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.121109, 36.782333, 27.146305> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.321827, 36.958061, 27.444351>,  <34.442257, 37.063499, 27.623178>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.321827, 36.958061, 27.444351>,  <34.121109, 36.782333, 27.146305>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.321827, 36.958061, 27.444351> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335681, 0.695001, -0.635840,
		-0.797194, 0.569183, 0.201277,
		0.501797, 0.439323, 0.745114,
		34.472366, 37.089859, 27.667885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.997059, 37.445835, 27.070232>,  <34.121109, 36.782333, 27.146305>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.997059, 37.445835, 27.070232> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.325905, 37.410618, 27.295221>,  <34.523212, 37.389488, 27.430216>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.325905, 37.410618, 27.295221>,  <33.997059, 37.445835, 27.070232>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.325905, 37.410618, 27.295221> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435936, 0.732798, -0.522463,
		-0.366180, 0.674727, 0.640825,
		0.822114, -0.088043, 0.562473,
		34.572540, 37.384205, 27.463963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.109978, 38.081158, 27.265682>,  <33.997059, 37.445835, 27.070232>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.109978, 38.081158, 27.265682> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.481998, 37.951988, 27.335791>,  <34.705212, 37.874485, 27.377855>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.481998, 37.951988, 27.335791>,  <34.109978, 38.081158, 27.265682>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.481998, 37.951988, 27.335791> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365873, 0.770199, -0.522427,
		0.033712, 0.550012, 0.834476,
		0.930054, -0.322924, 0.175270,
		34.761013, 37.855110, 27.388372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.535748, 38.696121, 27.290539>,  <34.109978, 38.081158, 27.265682>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.535748, 38.696121, 27.290539> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.817062, 38.413471, 27.259369>,  <34.985851, 38.243881, 27.240667>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.817062, 38.413471, 27.259369>,  <34.535748, 38.696121, 27.290539>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.817062, 38.413471, 27.259369> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552560, 0.612312, -0.565466,
		0.447284, 0.354628, 0.821082,
		0.703288, -0.706621, -0.077924,
		35.028049, 38.201485, 27.235992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.111137, 39.020283, 27.466896>,  <34.535748, 38.696121, 27.290539>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.111137, 39.020283, 27.466896> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.216431, 38.703491, 27.246540>,  <35.279606, 38.513416, 27.114326>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.216431, 38.703491, 27.246540>,  <35.111137, 39.020283, 27.466896>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.216431, 38.703491, 27.246540> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416380, 0.608375, -0.675653,
		0.870250, -0.051525, 0.489909,
		0.263235, -0.791976, -0.550892,
		35.295403, 38.465897, 27.081272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.925629, 39.071243, 27.331230>,  <35.111137, 39.020283, 27.466896>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.925629, 39.071243, 27.331230> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.793713, 38.816540, 27.052439>,  <35.714565, 38.663719, 26.885164>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.793713, 38.816540, 27.052439>,  <35.925629, 39.071243, 27.331230>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.793713, 38.816540, 27.052439> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529664, 0.486336, -0.694934,
		0.781470, -0.598346, 0.176880,
		-0.329788, -0.636757, -0.696979,
		35.694775, 38.625511, 26.843346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.573204, 38.856636, 26.953691>,  <35.925629, 39.071243, 27.331230>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.573204, 38.856636, 26.953691> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.246590, 38.781990, 26.735168>,  <36.050621, 38.737202, 26.604055>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.246590, 38.781990, 26.735168>,  <36.573204, 38.856636, 26.953691>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.246590, 38.781990, 26.735168> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369304, 0.558508, -0.742754,
		0.443723, -0.808235, -0.387124,
		-0.816532, -0.186611, -0.546308,
		36.001629, 38.726006, 26.571276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.813168, 38.643635, 26.307156>,  <36.573204, 38.856636, 26.953691>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.813168, 38.643635, 26.307156> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.439007, 38.775368, 26.255674>,  <36.214512, 38.854408, 26.224785>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.439007, 38.775368, 26.255674>,  <36.813168, 38.643635, 26.307156>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.439007, 38.775368, 26.255674> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337732, 0.724373, -0.601017,
		-0.104706, -0.605659, -0.788806,
		-0.935401, 0.329334, -0.128704,
		36.158386, 38.874168, 26.217064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.689861, 38.755966, 25.557222>,  <36.813168, 38.643635, 26.307156>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.689861, 38.755966, 25.557222> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.418674, 38.996017, 25.727022>,  <36.255962, 39.140049, 25.828903>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.418674, 38.996017, 25.727022>,  <36.689861, 38.755966, 25.557222>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.418674, 38.996017, 25.727022> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242891, 0.727933, -0.641184,
		-0.693803, -0.331596, -0.639282,
		-0.677969, 0.600131, 0.424501,
		36.215282, 39.176056, 25.854372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.358383, 39.139397, 24.973869>,  <36.689861, 38.755966, 25.557222>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.358383, 39.139397, 24.973869> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.237545, 39.345432, 25.294725>,  <36.165043, 39.469051, 25.487238>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.237545, 39.345432, 25.294725>,  <36.358383, 39.139397, 24.973869>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.237545, 39.345432, 25.294725> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089921, 0.822303, -0.561901,
		-0.949028, -0.241875, -0.202094,
		-0.302092, 0.515087, 0.802138,
		36.146915, 39.499958, 25.535366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.751293, 39.545158, 24.725889>,  <36.358383, 39.139397, 24.973869>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.751293, 39.545158, 24.725889> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.881943, 39.729759, 25.055819>,  <35.960335, 39.840519, 25.253777>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.881943, 39.729759, 25.055819>,  <35.751293, 39.545158, 24.725889>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.881943, 39.729759, 25.055819> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094094, 0.884228, -0.457478,
		-0.940458, 0.071814, 0.332237,
		0.326627, 0.461501, 0.824823,
		35.979931, 39.868210, 25.303265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.296677, 40.234020, 24.890007>,  <35.751293, 39.545158, 24.725889>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.296677, 40.234020, 24.890007> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.645638, 40.301586, 25.073475>,  <35.855015, 40.342125, 25.183556>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.645638, 40.301586, 25.073475>,  <35.296677, 40.234020, 24.890007>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.645638, 40.301586, 25.073475> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018649, 0.926202, -0.376566,
		-0.488427, 0.337072, 0.804874,
		0.872405, 0.168915, 0.458668,
		35.907360, 40.352261, 25.211075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.148396, 40.893185, 24.994814>,  <35.296677, 40.234020, 24.890007>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.148396, 40.893185, 24.994814> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.540466, 40.835403, 25.049057>,  <35.775707, 40.800735, 25.081602>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.540466, 40.835403, 25.049057>,  <35.148396, 40.893185, 24.994814>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.540466, 40.835403, 25.049057> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178074, 0.942347, -0.283322,
		-0.086861, 0.301853, 0.949389,
		0.980176, -0.144452, 0.135605,
		35.834518, 40.792068, 25.089739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.374630, 41.431805, 25.232170>,  <35.148396, 40.893185, 24.994814>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.374630, 41.431805, 25.232170> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.705303, 41.265747, 25.080254>,  <35.903709, 41.166111, 24.989103>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.705303, 41.265747, 25.080254>,  <35.374630, 41.431805, 25.232170>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.705303, 41.265747, 25.080254> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265636, 0.882993, -0.386991,
		0.496011, 0.219034, 0.840237,
		0.826687, -0.415148, -0.379790,
		35.953308, 41.141201, 24.966316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.778622, 41.964375, 25.268047>,  <35.374630, 41.431805, 25.232170>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.778622, 41.964375, 25.268047> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.964993, 41.724468, 25.007833>,  <36.076817, 41.580524, 24.851706>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.964993, 41.724468, 25.007833>,  <35.778622, 41.964375, 25.268047>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.964993, 41.724468, 25.007833> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162016, 0.780614, -0.603650,
		0.869864, 0.175859, 0.460880,
		0.465926, -0.599763, -0.650536,
		36.104771, 41.544540, 24.812674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.351543, 42.265663, 25.178261>,  <35.778622, 41.964375, 25.268047>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.351543, 42.265663, 25.178261> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.303238, 42.059647, 24.838816>,  <36.274254, 41.936035, 24.635149>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.303238, 42.059647, 24.838816>,  <36.351543, 42.265663, 25.178261>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.303238, 42.059647, 24.838816> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088304, 0.845908, -0.525969,
		0.988746, -0.138455, -0.056676,
		-0.120766, -0.515044, -0.848614,
		36.267010, 41.905132, 24.584232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.879051, 42.443882, 24.704216>,  <36.351543, 42.265663, 25.178261>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.879051, 42.443882, 24.704216> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.603176, 42.277706, 24.466986>,  <36.437653, 42.178001, 24.324648>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.603176, 42.277706, 24.466986>,  <36.879051, 42.443882, 24.704216>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.603176, 42.277706, 24.466986> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044193, 0.793368, -0.607137,
		0.722756, -0.444946, -0.528817,
		-0.689689, -0.415442, -0.593075,
		36.396271, 42.153072, 24.289062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.155628, 42.627209, 24.105318>,  <36.879051, 42.443882, 24.704216>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.155628, 42.627209, 24.105318> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.772343, 42.540287, 24.030918>,  <36.542370, 42.488132, 23.986279>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.772343, 42.540287, 24.030918>,  <37.155628, 42.627209, 24.105318>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.772343, 42.540287, 24.030918> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051372, 0.770429, -0.635452,
		0.281390, -0.599346, -0.749402,
		-0.958217, -0.217308, -0.186002,
		36.484879, 42.475094, 23.975117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.956532, 42.522614, 23.969118>,  <37.155628, 42.627209, 24.105318>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.956532, 42.522614, 23.969118> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.216549, 42.764435, 24.153275>,  <38.372559, 42.909527, 24.263769>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.216549, 42.764435, 24.153275>,  <37.956532, 42.522614, 23.969118>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.216549, 42.764435, 24.153275> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074736, -0.552063, 0.830446,
		0.756211, -0.574236, -0.313684,
		0.650045, 0.604550, 0.460392,
		38.411564, 42.945801, 24.291391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.492092, 42.083633, 24.151566>,  <37.956532, 42.522614, 23.969118>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.492092, 42.083633, 24.151566> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.512211, 42.397949, 24.398144>,  <38.524284, 42.586540, 24.546091>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.512211, 42.397949, 24.398144>,  <38.492092, 42.083633, 24.151566>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.512211, 42.397949, 24.398144> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100624, -0.618073, 0.779654,
		0.993652, 0.022814, -0.110157,
		0.050299, 0.785790, 0.616445,
		38.527302, 42.633686, 24.583076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.944008, 41.845825, 24.634699>,  <38.492092, 42.083633, 24.151566>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.944008, 41.845825, 24.634699> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.764442, 42.158451, 24.807966>,  <38.656704, 42.346027, 24.911926>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.764442, 42.158451, 24.807966>,  <38.944008, 41.845825, 24.634699>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.764442, 42.158451, 24.807966> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073963, -0.450593, 0.889660,
		0.890509, 0.431418, 0.144470,
		-0.448913, 0.781565, 0.433166,
		38.629768, 42.392921, 24.937916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.471924, 42.045666, 25.096230>,  <38.944008, 41.845825, 24.634699>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.471924, 42.045666, 25.096230> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.110924, 42.181095, 25.202709>,  <38.894325, 42.262352, 25.266598>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.110924, 42.181095, 25.202709>,  <39.471924, 42.045666, 25.096230>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.110924, 42.181095, 25.202709> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109580, -0.417225, 0.902173,
		0.416519, 0.843380, 0.339444,
		-0.902499, 0.338576, 0.266200,
		38.840176, 42.282669, 25.282570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.558769, 42.247223, 25.824274>,  <39.471924, 42.045666, 25.096230>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.558769, 42.247223, 25.824274> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.166843, 42.175198, 25.789545>,  <38.931686, 42.131985, 25.768707>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.166843, 42.175198, 25.789545>,  <39.558769, 42.247223, 25.824274>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.166843, 42.175198, 25.789545> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031369, -0.567449, 0.822810,
		-0.197424, 0.803479, 0.561644,
		-0.979816, -0.180060, -0.086824,
		38.872898, 42.121178, 25.763498>
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
