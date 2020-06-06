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
	<24.272545, 34.841484, 34.620438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.459866, 34.845348, 34.973843>,  <24.572258, 34.847668, 35.185886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.459866, 34.845348, 34.973843>,  <24.272545, 34.841484, 34.620438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.459866, 34.845348, 34.973843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.793244, 0.435835, -0.425219,
		-0.389175, 0.899975, 0.196438,
		0.468301, 0.009661, 0.883516,
		24.600355, 34.848248, 35.238899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.507111, 35.568283, 34.748005>,  <24.272545, 34.841484, 34.620438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.507111, 35.568283, 34.748005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.723906, 35.255863, 34.872078>,  <24.853983, 35.068413, 34.946522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.723906, 35.255863, 34.872078>,  <24.507111, 35.568283, 34.748005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.723906, 35.255863, 34.872078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.746400, 0.277776, -0.604754,
		0.386182, 0.559287, 0.733527,
		0.541987, -0.781049, 0.310180,
		24.886501, 35.021549, 34.965134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.977524, 35.729366, 35.135143>,  <24.507111, 35.568283, 34.748005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.977524, 35.729366, 35.135143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.061136, 35.393772, 34.934177>,  <25.111303, 35.192417, 34.813599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.061136, 35.393772, 34.934177>,  <24.977524, 35.729366, 35.135143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.061136, 35.393772, 34.934177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.687630, 0.491399, -0.534502,
		0.695322, -0.233746, 0.679625,
		0.209030, -0.838982, -0.502411,
		25.123844, 35.142078, 34.783455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.703587, 35.774078, 35.008705>,  <24.977524, 35.729366, 35.135143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.703587, 35.774078, 35.008705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.590658, 35.509369, 34.730900>,  <25.522902, 35.350544, 34.564217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.590658, 35.509369, 34.730900>,  <25.703587, 35.774078, 35.008705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.590658, 35.509369, 34.730900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622303, 0.424633, -0.657591,
		0.730091, -0.617848, 0.291943,
		-0.282322, -0.661778, -0.694510,
		25.505962, 35.310837, 34.522549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.347837, 35.350716, 34.811592>,  <25.703587, 35.774078, 35.008705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.347837, 35.350716, 34.811592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.064589, 35.363171, 34.529430>,  <25.894640, 35.370644, 34.360134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.064589, 35.363171, 34.529430>,  <26.347837, 35.350716, 34.811592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.064589, 35.363171, 34.529430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.687997, 0.255131, -0.679388,
		0.158815, -0.966405, -0.202088,
		-0.708123, 0.031139, -0.705403,
		25.852152, 35.372513, 34.317810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.585291, 34.964878, 34.298489>,  <26.347837, 35.350716, 34.811592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.585291, 34.964878, 34.298489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.355860, 35.263752, 34.164192>,  <26.218201, 35.443077, 34.083614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.355860, 35.263752, 34.164192>,  <26.585291, 34.964878, 34.298489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.355860, 35.263752, 34.164192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.722504, 0.268321, -0.637175,
		-0.385999, -0.608047, -0.693746,
		-0.573579, 0.747183, -0.335745,
		26.183786, 35.487907, 34.063469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.601490, 34.877838, 33.557289>,  <26.585291, 34.964878, 34.298489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.601490, 34.877838, 33.557289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.465214, 35.247555, 33.626133>,  <26.383448, 35.469383, 33.667439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.465214, 35.247555, 33.626133>,  <26.601490, 34.877838, 33.557289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.465214, 35.247555, 33.626133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524185, 0.338704, -0.781351,
		-0.780487, -0.175983, -0.599891,
		-0.340690, 0.924288, 0.172107,
		26.363007, 35.524841, 33.677765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.506369, 34.952293, 32.939781>,  <26.601490, 34.877838, 33.557289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.506369, 34.952293, 32.939781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.513332, 35.310219, 33.118221>,  <26.517509, 35.524975, 33.225285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.513332, 35.310219, 33.118221>,  <26.506369, 34.952293, 32.939781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.513332, 35.310219, 33.118221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458926, 0.389239, -0.798674,
		-0.888304, 0.218628, -0.403878,
		0.017407, 0.894816, 0.446096,
		26.518555, 35.578663, 33.252048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.207777, 35.492790, 32.549713>,  <26.506369, 34.952293, 32.939781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.207777, 35.492790, 32.549713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.456156, 35.706745, 32.778912>,  <26.605183, 35.835117, 32.916431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.456156, 35.706745, 32.778912>,  <26.207777, 35.492790, 32.549713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.456156, 35.706745, 32.778912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464834, 0.337319, -0.818624,
		-0.631154, 0.774668, -0.039177,
		0.620946, 0.534889, 0.572992,
		26.642439, 35.867210, 32.950809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.126013, 36.056873, 32.202202>,  <26.207777, 35.492790, 32.549713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.126013, 36.056873, 32.202202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.457056, 36.091877, 32.423981>,  <26.655682, 36.112881, 32.557049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.457056, 36.091877, 32.423981>,  <26.126013, 36.056873, 32.202202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.457056, 36.091877, 32.423981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508557, 0.301151, -0.806647,
		-0.237560, 0.949553, 0.204732,
		0.827609, 0.087509, 0.554442,
		26.705339, 36.118130, 32.590313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.320030, 36.717934, 32.217030>,  <26.126013, 36.056873, 32.202202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.320030, 36.717934, 32.217030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.640251, 36.479458, 32.241287>,  <26.832384, 36.336372, 32.255840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.640251, 36.479458, 32.241287>,  <26.320030, 36.717934, 32.217030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.640251, 36.479458, 32.241287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253708, 0.245509, -0.935605,
		0.542905, 0.764388, 0.347800,
		0.800554, -0.596185, 0.060643,
		26.880417, 36.300602, 32.259480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.069740, 36.807117, 31.836964>,  <26.320030, 36.717934, 32.217030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.069740, 36.807117, 31.836964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.709909, 36.981804, 31.834671>,  <26.494011, 37.086617, 31.833296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.709909, 36.981804, 31.834671>,  <27.069740, 36.807117, 31.836964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.709909, 36.981804, 31.834671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130523, 0.256293, -0.957746,
		-0.416799, -0.862316, -0.287558,
		-0.899579, 0.436720, -0.005729,
		26.440035, 37.112820, 31.832952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.712990, 36.920105, 31.178865>,  <27.069740, 36.807117, 31.836964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.712990, 36.920105, 31.178865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.100178, 36.852482, 31.104616>,  <27.332491, 36.811909, 31.060066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.100178, 36.852482, 31.104616>,  <26.712990, 36.920105, 31.178865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.100178, 36.852482, 31.104616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202418, 0.088063, 0.975332,
		-0.148543, -0.981664, 0.119463,
		0.967968, -0.169061, -0.185625,
		27.390568, 36.801765, 31.048929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.953428, 36.231979, 31.388800>,  <26.712990, 36.920105, 31.178865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.953428, 36.231979, 31.388800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.300251, 36.430843, 31.375832>,  <27.508345, 36.550159, 31.368052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.300251, 36.430843, 31.375832>,  <26.953428, 36.231979, 31.388800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.300251, 36.430843, 31.375832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212034, -0.309342, 0.927011,
		0.450841, -0.810643, -0.373631,
		0.867055, 0.497157, -0.032420,
		27.560368, 36.579990, 31.366106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.430002, 35.713741, 31.387920>,  <26.953428, 36.231979, 31.388800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.430002, 35.713741, 31.387920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.502357, 36.072426, 31.549511>,  <27.545771, 36.287636, 31.646465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.502357, 36.072426, 31.549511>,  <27.430002, 35.713741, 31.387920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.502357, 36.072426, 31.549511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044546, -0.402859, 0.914177,
		0.982494, -0.183360, -0.032928,
		0.180889, 0.896707, 0.403975,
		27.556623, 36.341438, 31.670704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.784567, 35.581367, 32.041214>,  <27.430002, 35.713741, 31.387920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.784567, 35.581367, 32.041214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.619576, 35.944870, 32.066563>,  <27.520580, 36.162971, 32.081772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.619576, 35.944870, 32.066563>,  <27.784567, 35.581367, 32.041214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.619576, 35.944870, 32.066563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268068, -0.187570, 0.944964,
		0.870633, 0.372788, 0.320978,
		-0.412477, 0.908761, 0.063372,
		27.495832, 36.217499, 32.085575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.986113, 35.712093, 32.784332>,  <27.784567, 35.581367, 32.041214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.986113, 35.712093, 32.784332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.670406, 35.909779, 32.638557>,  <27.480984, 36.028389, 32.551090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.670406, 35.909779, 32.638557>,  <27.986113, 35.712093, 32.784332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.670406, 35.909779, 32.638557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479678, -0.125681, 0.868397,
		0.383369, 0.860208, 0.336258,
		-0.789263, 0.494212, -0.364441,
		27.433628, 36.058041, 32.529224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.816223, 36.284683, 33.209431>,  <27.986113, 35.712093, 32.784332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.816223, 36.284683, 33.209431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.469320, 36.227985, 33.018528>,  <27.261179, 36.193966, 32.903984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.469320, 36.227985, 33.018528>,  <27.816223, 36.284683, 33.209431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.469320, 36.227985, 33.018528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484129, 0.016493, 0.874841,
		-0.116133, 0.989766, -0.082926,
		-0.867256, -0.141745, -0.477259,
		27.209143, 36.185463, 32.875351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.366922, 36.805275, 33.485023>,  <27.816223, 36.284683, 33.209431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.366922, 36.805275, 33.485023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.146309, 36.503319, 33.343063>,  <27.013941, 36.322144, 33.257889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.146309, 36.503319, 33.343063>,  <27.366922, 36.805275, 33.485023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.146309, 36.503319, 33.343063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.570786, 0.031283, 0.820503,
		-0.608286, 0.655106, -0.448134,
		-0.551535, -0.754889, -0.354897,
		26.980848, 36.276852, 33.236595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.695023, 36.771019, 33.855190>,  <27.366922, 36.805275, 33.485023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.695023, 36.771019, 33.855190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.662830, 36.408020, 33.690281>,  <26.643515, 36.190220, 33.591335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.662830, 36.408020, 33.690281>,  <26.695023, 36.771019, 33.855190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.662830, 36.408020, 33.690281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.608392, -0.282908, 0.741500,
		-0.789545, 0.310503, -0.529345,
		-0.080482, -0.907497, -0.412276,
		26.638685, 36.135773, 33.566597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.301224, 37.453526, 33.978619>,  <26.695023, 36.771019, 33.855190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.301224, 37.453526, 33.978619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.425007, 37.168312, 34.230278>,  <26.499277, 36.997185, 34.381271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.425007, 37.168312, 34.230278>,  <26.301224, 37.453526, 33.978619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.425007, 37.168312, 34.230278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.944844, -0.155927, 0.288023,
		-0.107268, -0.683577, -0.721953,
		0.309458, -0.713028, 0.629148,
		26.517843, 36.954403, 34.419022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.938232, 36.750130, 33.885227>,  <26.301224, 37.453526, 33.978619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.938232, 36.750130, 33.885227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.052536, 36.373005, 33.816593>,  <26.121119, 36.146729, 33.775414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.052536, 36.373005, 33.816593>,  <25.938232, 36.750130, 33.885227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.052536, 36.373005, 33.816593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.673167, -0.324926, 0.664281,
		-0.682047, -0.074318, -0.727522,
		0.285759, -0.942815, -0.171586,
		26.138264, 36.090160, 33.765118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.308178, 36.395103, 33.716454>,  <25.938232, 36.750130, 33.885227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.308178, 36.395103, 33.716454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.592287, 36.144382, 33.844597>,  <25.762753, 35.993950, 33.921482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.592287, 36.144382, 33.844597>,  <25.308178, 36.395103, 33.716454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.592287, 36.144382, 33.844597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.641936, -0.390008, 0.660161,
		-0.288845, -0.674548, -0.679378,
		0.710273, -0.626801, 0.320365,
		25.805368, 35.956341, 33.940704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.125914, 35.904606, 33.293137>,  <25.308178, 36.395103, 33.716454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.125914, 35.904606, 33.293137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.448572, 35.736858, 33.459728>,  <25.642166, 35.636211, 33.559685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.448572, 35.736858, 33.459728>,  <25.125914, 35.904606, 33.293137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.448572, 35.736858, 33.459728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.587411, -0.646768, 0.486456,
		0.065364, -0.637043, -0.768052,
		0.806645, -0.419365, 0.416481,
		25.690565, 35.611050, 33.584671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.250061, 35.241608, 33.145744>,  <25.125914, 35.904606, 33.293137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.250061, 35.241608, 33.145744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.414524, 35.284973, 33.507782>,  <25.513203, 35.310993, 33.725006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.414524, 35.284973, 33.507782>,  <25.250061, 35.241608, 33.145744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.414524, 35.284973, 33.507782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.649873, -0.661406, 0.374442,
		0.639230, -0.742151, -0.201487,
		0.411157, 0.108413, 0.905095,
		25.537870, 35.317497, 33.779312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.080166, 34.536404, 33.550568>,  <25.250061, 35.241608, 33.145744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.080166, 34.536404, 33.550568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.198868, 34.773685, 33.849911>,  <25.270088, 34.916054, 34.029518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.198868, 34.773685, 33.849911>,  <25.080166, 34.536404, 33.550568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.198868, 34.773685, 33.849911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426415, -0.618882, 0.659663,
		0.854463, -0.514870, 0.069296,
		0.296755, 0.593207, 0.748360,
		25.287893, 34.951649, 34.074417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.485954, 34.137772, 34.075756>,  <25.080166, 34.536404, 33.550568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.485954, 34.137772, 34.075756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.354874, 34.458557, 34.275539>,  <25.276224, 34.651028, 34.395409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.354874, 34.458557, 34.275539>,  <25.485954, 34.137772, 34.075756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.354874, 34.458557, 34.275539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473490, -0.596875, 0.647725,
		0.817568, -0.024227, 0.575321,
		-0.327702, 0.801968, 0.499457,
		25.256563, 34.699146, 34.425377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.507534, 33.971153, 34.776573>,  <25.485954, 34.137772, 34.075756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.507534, 33.971153, 34.776573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.223820, 34.248959, 34.728313>,  <25.053591, 34.415642, 34.699356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.223820, 34.248959, 34.728313>,  <25.507534, 33.971153, 34.776573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.223820, 34.248959, 34.728313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.585537, -0.485168, 0.649430,
		0.392503, 0.531279, 0.750789,
		-0.709287, 0.694518, -0.120653,
		25.011034, 34.457314, 34.692116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.070023, 33.461639, 35.090107>,  <25.507534, 33.971153, 34.776573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.070023, 33.461639, 35.090107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.468218, 33.462181, 35.128063>,  <25.707134, 33.462505, 35.150837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.468218, 33.462181, 35.128063>,  <25.070023, 33.461639, 35.090107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.468218, 33.462181, 35.128063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088413, -0.349981, 0.932575,
		0.034476, -0.936756, -0.348282,
		0.995487, 0.001358, 0.094887,
		25.766865, 33.462589, 35.156528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.364697, 32.811611, 35.160095>,  <25.070023, 33.461639, 35.090107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.364697, 32.811611, 35.160095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.574175, 33.090652, 35.355682>,  <25.699862, 33.258080, 35.473034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.574175, 33.090652, 35.355682>,  <25.364697, 32.811611, 35.160095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.574175, 33.090652, 35.355682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203793, -0.454716, 0.867007,
		0.827171, -0.553696, -0.095966,
		0.523696, 0.697605, 0.488967,
		25.731283, 33.299934, 35.502373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.630682, 32.272568, 34.702183>,  <25.364697, 32.811611, 35.160095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.630682, 32.272568, 34.702183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.972103, 32.273228, 34.493782>,  <26.176956, 32.273624, 34.368740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.972103, 32.273228, 34.493782>,  <25.630682, 32.272568, 34.702183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.972103, 32.273228, 34.493782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180291, -0.937278, -0.298338,
		-0.488818, 0.348580, -0.799718,
		0.853553, 0.001651, -0.521004,
		26.228168, 32.273724, 34.337482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.688456, 32.414883, 33.912636>,  <25.630682, 32.272568, 34.702183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.688456, 32.414883, 33.912636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.997940, 32.184772, 34.018791>,  <26.183630, 32.046707, 34.082485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.997940, 32.184772, 34.018791>,  <25.688456, 32.414883, 33.912636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.997940, 32.184772, 34.018791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431478, -0.785212, -0.444149,
		0.463893, 0.229135, -0.855746,
		0.773712, -0.575273, 0.265388,
		26.230053, 32.012192, 34.098408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.805805, 31.954517, 33.316547>,  <25.688456, 32.414883, 33.912636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.805805, 31.954517, 33.316547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.972420, 31.786358, 33.638977>,  <26.072388, 31.685461, 33.832436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.972420, 31.786358, 33.638977>,  <25.805805, 31.954517, 33.316547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.972420, 31.786358, 33.638977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230510, -0.906522, -0.353671,
		0.879410, -0.038492, -0.474506,
		0.416536, -0.420401, 0.806077,
		26.097382, 31.660238, 33.880802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.166086, 31.381474, 33.004177>,  <25.805805, 31.954517, 33.316547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.166086, 31.381474, 33.004177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.091278, 31.297247, 33.387985>,  <26.046392, 31.246710, 33.618271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.091278, 31.297247, 33.387985>,  <26.166086, 31.381474, 33.004177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.091278, 31.297247, 33.387985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333656, -0.905075, -0.263652,
		0.923958, -0.369458, 0.099009,
		-0.187020, -0.210569, 0.959523,
		26.035172, 31.234076, 33.675842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.693098, 30.880339, 33.252678>,  <26.166086, 31.381474, 33.004177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.693098, 30.880339, 33.252678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.601088, 30.875816, 33.641926>,  <26.545881, 30.873104, 33.875473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.601088, 30.875816, 33.641926>,  <26.693098, 30.880339, 33.252678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.601088, 30.875816, 33.641926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455894, -0.882175, -0.118012,
		0.859796, -0.470785, 0.197768,
		-0.230024, -0.011305, 0.973119,
		26.532080, 30.872425, 33.933861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.908545, 30.199389, 33.551109>,  <26.693098, 30.880339, 33.252678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.908545, 30.199389, 33.551109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.600582, 30.361462, 33.748318>,  <26.415804, 30.458706, 33.866642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.600582, 30.361462, 33.748318>,  <26.908545, 30.199389, 33.551109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.600582, 30.361462, 33.748318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544674, -0.819792, -0.176837,
		0.332524, -0.404684, 0.851856,
		-0.769908, 0.405182, 0.493021,
		26.369610, 30.483017, 33.896225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.594501, 29.615698, 34.101513>,  <26.908545, 30.199389, 33.551109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.594501, 29.615698, 34.101513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.322412, 29.874311, 33.963356>,  <26.159159, 30.029480, 33.880463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.322412, 29.874311, 33.963356>,  <26.594501, 29.615698, 34.101513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.322412, 29.874311, 33.963356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506480, -0.755184, -0.416144,
		-0.529885, -0.108136, 0.841147,
		-0.680221, 0.646533, -0.345392,
		26.118347, 30.068272, 33.859737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.942356, 29.326508, 34.361206>,  <26.594501, 29.615698, 34.101513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.942356, 29.326508, 34.361206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.831100, 29.568800, 34.063019>,  <25.764347, 29.714176, 33.884106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.831100, 29.568800, 34.063019>,  <25.942356, 29.326508, 34.361206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.831100, 29.568800, 34.063019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564743, -0.730909, -0.383193,
		-0.776985, 0.314419, 0.545376,
		-0.278137, 0.605733, -0.745471,
		25.747660, 29.750521, 33.839378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.226917, 29.183044, 34.217419>,  <25.942356, 29.326508, 34.361206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.226917, 29.183044, 34.217419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.388721, 29.351431, 33.892662>,  <25.485804, 29.452463, 33.697807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.388721, 29.351431, 33.892662>,  <25.226917, 29.183044, 34.217419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.388721, 29.351431, 33.892662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375178, -0.733233, -0.567108,
		-0.834035, 0.534002, -0.138662,
		0.404509, 0.420964, -0.811888,
		25.510075, 29.477720, 33.649097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.998594, 28.748701, 33.667313>,  <25.226917, 29.183044, 34.217419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.998594, 28.748701, 33.667313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.217514, 28.983414, 33.428600>,  <25.348866, 29.124241, 33.285374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.217514, 28.983414, 33.428600>,  <24.998594, 28.748701, 33.667313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.217514, 28.983414, 33.428600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061618, -0.682873, -0.727933,
		-0.834665, 0.435171, -0.337580,
		0.547300, 0.586780, -0.596785,
		25.381704, 29.159447, 33.249565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.744276, 28.909147, 32.985321>,  <24.998594, 28.748701, 33.667313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.744276, 28.909147, 32.985321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.143768, 28.889162, 32.982750>,  <25.383463, 28.877171, 32.981209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.143768, 28.889162, 32.982750>,  <24.744276, 28.909147, 32.985321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.143768, 28.889162, 32.982750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024494, -0.370243, -0.928612,
		0.044018, 0.927590, -0.370997,
		0.998730, -0.049963, -0.006423,
		25.443388, 28.874174, 32.980824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.000313, 29.293205, 32.390907>,  <24.744276, 28.909147, 32.985321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.000313, 29.293205, 32.390907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.203547, 28.968664, 32.506531>,  <25.325487, 28.773939, 32.575905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.203547, 28.968664, 32.506531>,  <25.000313, 29.293205, 32.390907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.203547, 28.968664, 32.506531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178832, -0.427667, -0.886070,
		0.842537, 0.398506, -0.362387,
		0.508085, -0.811353, 0.289060,
		25.355972, 28.725258, 32.593250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.516375, 29.863123, 32.627884>,  <25.000313, 29.293205, 32.390907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.516375, 29.863123, 32.627884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.449951, 29.821815, 33.020161>,  <25.410097, 29.797031, 33.255527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.449951, 29.821815, 33.020161>,  <25.516375, 29.863123, 32.627884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.449951, 29.821815, 33.020161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.633947, 0.750581, 0.186382,
		-0.755338, 0.652659, -0.059174,
		-0.166059, -0.103269, 0.980694,
		25.400133, 29.790834, 33.314369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.190216, 30.556496, 33.023827>,  <25.516375, 29.863123, 32.627884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.190216, 30.556496, 33.023827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.364132, 30.310083, 33.286572>,  <25.468481, 30.162237, 33.444218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.364132, 30.310083, 33.286572>,  <25.190216, 30.556496, 33.023827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.364132, 30.310083, 33.286572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389606, 0.786295, 0.479528,
		-0.811889, 0.047423, 0.581882,
		0.434790, -0.616029, 0.656861,
		25.494570, 30.125275, 33.483631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.210423, 30.924002, 33.594913>,  <25.190216, 30.556496, 33.023827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.210423, 30.924002, 33.594913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.485725, 30.649046, 33.687691>,  <25.650908, 30.484072, 33.743359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.485725, 30.649046, 33.687691>,  <25.210423, 30.924002, 33.594913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.485725, 30.649046, 33.687691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479542, 0.670974, 0.565539,
		-0.544376, -0.278007, 0.791434,
		0.688255, -0.687391, 0.231946,
		25.692202, 30.442829, 33.757275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.265860, 30.910898, 34.362053>,  <25.210423, 30.924002, 33.594913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.265860, 30.910898, 34.362053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.604918, 30.819799, 34.170376>,  <25.808352, 30.765141, 34.055370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.604918, 30.819799, 34.170376>,  <25.265860, 30.910898, 34.362053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.604918, 30.819799, 34.170376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433590, 0.817871, 0.378267,
		0.305772, -0.528411, 0.792013,
		0.847645, -0.227746, -0.479196,
		25.859211, 30.751476, 34.026615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.862169, 30.889492, 34.870613>,  <25.265860, 30.910898, 34.362053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.862169, 30.889492, 34.870613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.956932, 30.969105, 34.490242>,  <26.013790, 31.016872, 34.262020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.956932, 30.969105, 34.490242>,  <25.862169, 30.889492, 34.870613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.956932, 30.969105, 34.490242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397653, 0.873181, 0.281827,
		0.886424, -0.444905, 0.127717,
		0.236907, 0.199032, -0.950927,
		26.028004, 31.028814, 34.204964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.627403, 30.930538, 34.723686>,  <25.862169, 30.889492, 34.870613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.627403, 30.930538, 34.723686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.475277, 31.175627, 34.446579>,  <26.384001, 31.322680, 34.280315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.475277, 31.175627, 34.446579>,  <26.627403, 30.930538, 34.723686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.475277, 31.175627, 34.446579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491604, 0.768404, 0.409734,
		0.783381, -0.184741, -0.593452,
		-0.380316, 0.612721, -0.692772,
		26.361181, 31.359444, 34.238747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.247215, 31.264982, 34.415081>,  <26.627403, 30.930538, 34.723686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.247215, 31.264982, 34.415081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.938219, 31.504215, 34.329708>,  <26.752821, 31.647755, 34.278484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.938219, 31.504215, 34.329708>,  <27.247215, 31.264982, 34.415081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.938219, 31.504215, 34.329708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571310, 0.801288, 0.177605,
		0.277245, 0.015261, -0.960678,
		-0.772490, 0.598085, -0.213435,
		26.706472, 31.683641, 34.265678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.437267, 31.800898, 33.914604>,  <27.247215, 31.264982, 34.415081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.437267, 31.800898, 33.914604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.143274, 31.921831, 34.157387>,  <26.966879, 31.994390, 34.303055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.143274, 31.921831, 34.157387>,  <27.437267, 31.800898, 33.914604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.143274, 31.921831, 34.157387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517880, 0.828090, 0.214632,
		-0.437723, 0.472081, -0.765205,
		-0.734982, 0.302334, 0.606955,
		26.922779, 32.012531, 34.339474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.142878, 32.475391, 33.817108>,  <27.437267, 31.800898, 33.914604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.142878, 32.475391, 33.817108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.147684, 32.379368, 34.205383>,  <27.150568, 32.321754, 34.438347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.147684, 32.379368, 34.205383>,  <27.142878, 32.475391, 33.817108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.147684, 32.379368, 34.205383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524109, 0.828233, 0.198343,
		-0.851566, 0.506361, 0.135769,
		0.012015, -0.240060, 0.970684,
		27.151289, 32.307350, 34.496590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.842442, 33.096397, 34.225552>,  <27.142878, 32.475391, 33.817108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.842442, 33.096397, 34.225552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.101683, 32.858765, 34.416142>,  <27.257227, 32.716187, 34.530495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.101683, 32.858765, 34.416142>,  <26.842442, 33.096397, 34.225552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.101683, 32.858765, 34.416142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574227, 0.792186, 0.206650,
		-0.500225, 0.139675, 0.854556,
		0.648104, -0.594081, 0.476476,
		27.296114, 32.680542, 34.559086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.115860, 33.457157, 34.891659>,  <26.842442, 33.096397, 34.225552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.115860, 33.457157, 34.891659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.387142, 33.198071, 34.752804>,  <27.549911, 33.042618, 34.669491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.387142, 33.198071, 34.752804>,  <27.115860, 33.457157, 34.891659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.387142, 33.198071, 34.752804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.706667, 0.704440, 0.066224,
		0.201641, -0.290221, 0.935475,
		0.678205, -0.647716, -0.347134,
		27.590603, 33.003757, 34.648663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.794556, 33.441906, 35.308334>,  <27.115860, 33.457157, 34.891659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.794556, 33.441906, 35.308334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.883953, 33.351532, 34.929070>,  <27.937592, 33.297306, 34.701511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.883953, 33.351532, 34.929070>,  <27.794556, 33.441906, 35.308334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.883953, 33.351532, 34.929070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.743157, 0.668931, 0.015771,
		0.630689, -0.708155, 0.317408,
		0.223492, -0.225937, -0.948158,
		27.951000, 33.283752, 34.644623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.488010, 33.503456, 35.296879>,  <27.794556, 33.441906, 35.308334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.488010, 33.503456, 35.296879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.424084, 33.487827, 34.902328>,  <28.385727, 33.478451, 34.665600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.424084, 33.487827, 34.902328>,  <28.488010, 33.503456, 35.296879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.424084, 33.487827, 34.902328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.684768, 0.715327, -0.139283,
		0.711021, -0.697697, -0.087568,
		-0.159817, -0.039070, -0.986373,
		28.376139, 33.476109, 34.606415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.866106, 34.039783, 35.799297>,  <28.488010, 33.503456, 35.296879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.866106, 34.039783, 35.799297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.114197, 34.274174, 36.007896>,  <29.263050, 34.414806, 36.133057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.114197, 34.274174, 36.007896>,  <28.866106, 34.039783, 35.799297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.114197, 34.274174, 36.007896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.688795, -0.088722, -0.719506,
		-0.375343, 0.805459, -0.458643,
		0.620224, 0.585973, 0.521496,
		29.300264, 34.449966, 36.164345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.147518, 34.572109, 35.415077>,  <28.866106, 34.039783, 35.799297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.147518, 34.572109, 35.415077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.425653, 34.554459, 35.702007>,  <29.592535, 34.543869, 35.874165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.425653, 34.554459, 35.702007>,  <29.147518, 34.572109, 35.415077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.425653, 34.554459, 35.702007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.715629, 0.134439, -0.685421,
		-0.066188, 0.989939, 0.125062,
		0.695338, -0.044131, 0.717327,
		29.634254, 34.541218, 35.917206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.254110, 34.691460, 34.679821>,  <29.147518, 34.572109, 35.415077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.254110, 34.691460, 34.679821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.489424, 34.378120, 34.599541>,  <29.630611, 34.190117, 34.551373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.489424, 34.378120, 34.599541>,  <29.254110, 34.691460, 34.679821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.489424, 34.378120, 34.599541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208086, -0.386475, 0.898519,
		-0.781423, -0.486822, -0.390362,
		0.588285, -0.783352, -0.200700,
		29.665909, 34.143116, 34.539330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.799927, 34.774632, 34.195354>,  <29.254110, 34.691460, 34.679821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.799927, 34.774632, 34.195354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.049164, 34.603512, 33.933441>,  <30.198706, 34.500839, 33.776295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.049164, 34.603512, 33.933441>,  <29.799927, 34.774632, 34.195354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.049164, 34.603512, 33.933441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239556, 0.692546, -0.680436,
		0.744559, 0.580832, 0.329038,
		0.623093, -0.427802, -0.654783,
		30.236092, 34.475170, 33.737007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.966238, 35.295155, 33.709702>,  <29.799927, 34.774632, 34.195354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.966238, 35.295155, 33.709702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.095749, 34.958511, 33.536793>,  <30.173456, 34.756523, 33.433048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.095749, 34.958511, 33.536793>,  <29.966238, 35.295155, 33.709702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.095749, 34.958511, 33.536793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200004, 0.385679, -0.900694,
		0.924752, 0.378081, -0.043451,
		0.323777, -0.841609, -0.432275,
		30.192883, 34.706028, 33.407108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.365416, 35.464924, 33.222275>,  <29.966238, 35.295155, 33.709702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.365416, 35.464924, 33.222275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.221395, 35.112846, 33.098583>,  <30.134983, 34.901600, 33.024368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.221395, 35.112846, 33.098583>,  <30.365416, 35.464924, 33.222275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.221395, 35.112846, 33.098583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100997, 0.292739, -0.950843,
		0.927450, -0.373583, -0.016504,
		-0.360050, -0.880193, -0.309232,
		30.113380, 34.848789, 33.005814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.807491, 35.270050, 32.679554>,  <30.365416, 35.464924, 33.222275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.807491, 35.270050, 32.679554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.489656, 35.040955, 32.598949>,  <30.298956, 34.903500, 32.550587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.489656, 35.040955, 32.598949>,  <30.807491, 35.270050, 32.679554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.489656, 35.040955, 32.598949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146134, 0.141739, -0.979058,
		0.589303, -0.807394, -0.028927,
		-0.794586, -0.572734, -0.201515,
		30.251280, 34.869133, 32.538494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.373327, 35.022068, 32.165169>,  <30.807491, 35.270050, 32.679554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.373327, 35.022068, 32.165169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.305670, 34.923771, 32.546955>,  <31.265076, 34.864792, 32.776028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.305670, 34.923771, 32.546955>,  <31.373327, 35.022068, 32.165169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.305670, 34.923771, 32.546955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.837401, 0.546534, -0.007681,
		-0.519760, -0.800569, -0.298228,
		-0.169141, -0.245744, 0.954463,
		31.254927, 34.850048, 32.833294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.504829, 34.438873, 32.599861>,  <31.373327, 35.022068, 32.165169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.504829, 34.438873, 32.599861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.574274, 34.123432, 32.363907>,  <31.615940, 33.934166, 32.222336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.574274, 34.123432, 32.363907>,  <31.504829, 34.438873, 32.599861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.574274, 34.123432, 32.363907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.745573, 0.496581, -0.444440,
		0.643412, -0.362641, 0.674175,
		0.173611, -0.788605, -0.589882,
		31.626358, 33.886852, 32.186943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.213249, 34.535389, 32.562614>,  <31.504829, 34.438873, 32.599861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.213249, 34.535389, 32.562614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.060204, 34.318867, 32.263123>,  <31.968376, 34.188953, 32.083427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.060204, 34.318867, 32.263123>,  <32.213249, 34.535389, 32.562614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.060204, 34.318867, 32.263123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625105, 0.445072, -0.641214,
		0.680331, -0.713371, 0.168083,
		-0.382614, -0.541308, -0.748727,
		31.945419, 34.156475, 32.038506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.842533, 34.281155, 32.194359>,  <32.213249, 34.535389, 32.562614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.842533, 34.281155, 32.194359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.519855, 34.294609, 31.958355>,  <32.326248, 34.302681, 31.816753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.519855, 34.294609, 31.958355>,  <32.842533, 34.281155, 32.194359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.519855, 34.294609, 31.958355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546879, 0.420873, -0.723733,
		0.223977, -0.906496, -0.357910,
		-0.806696, 0.033634, -0.590009,
		32.277847, 34.304699, 31.781353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.790668, 33.780704, 31.603718>,  <32.842533, 34.281155, 32.194359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.790668, 33.780704, 31.603718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.696682, 34.164211, 31.539772>,  <32.640289, 34.394314, 31.501404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.696682, 34.164211, 31.539772>,  <32.790668, 33.780704, 31.603718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.696682, 34.164211, 31.539772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.898504, 0.151500, -0.411994,
		-0.370787, -0.240444, -0.897053,
		-0.234965, 0.958767, -0.159866,
		32.626194, 34.451843, 31.491812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.795212, 34.037617, 30.793898>,  <32.790668, 33.780704, 31.603718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.795212, 34.037617, 30.793898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.869511, 34.320354, 31.066916>,  <32.914089, 34.489998, 31.230726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.869511, 34.320354, 31.066916>,  <32.795212, 34.037617, 30.793898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.869511, 34.320354, 31.066916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.857400, 0.222706, -0.463969,
		-0.479960, 0.671398, -0.564679,
		0.185751, 0.706843, 0.682547,
		32.925236, 34.532406, 31.271679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.032600, 34.571976, 30.364763>,  <32.795212, 34.037617, 30.793898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.032600, 34.571976, 30.364763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.158810, 34.623463, 30.740822>,  <33.234535, 34.654354, 30.966457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.158810, 34.623463, 30.740822>,  <33.032600, 34.571976, 30.364763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.158810, 34.623463, 30.740822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.889122, 0.306038, -0.340297,
		-0.331522, 0.943278, -0.017881,
		0.315523, 0.128714, 0.940148,
		33.253468, 34.662075, 31.022865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.443542, 35.108501, 30.306639>,  <33.032600, 34.571976, 30.364763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.443542, 35.108501, 30.306639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.556164, 34.907463, 30.633595>,  <33.623737, 34.786842, 30.829769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.556164, 34.907463, 30.633595>,  <33.443542, 35.108501, 30.306639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.556164, 34.907463, 30.633595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.942464, -0.015170, -0.333963,
		0.180248, 0.864389, 0.469406,
		0.281553, -0.502594, 0.817390,
		33.640629, 34.756683, 30.878811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.065380, 35.487099, 30.447147>,  <33.443542, 35.108501, 30.306639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.065380, 35.487099, 30.447147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.106277, 35.163197, 30.678265>,  <34.130817, 34.968857, 30.816935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.106277, 35.163197, 30.678265>,  <34.065380, 35.487099, 30.447147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.106277, 35.163197, 30.678265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.975198, -0.033029, -0.218855,
		0.196303, 0.585841, 0.786292,
		0.102244, -0.809753, 0.577795,
		34.136951, 34.920269, 30.851603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.629883, 35.623352, 30.834541>,  <34.065380, 35.487099, 30.447147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.629883, 35.623352, 30.834541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.598888, 35.224705, 30.823666>,  <34.580292, 34.985516, 30.817141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.598888, 35.224705, 30.823666>,  <34.629883, 35.623352, 30.834541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.598888, 35.224705, 30.823666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.950350, -0.065591, -0.304191,
		0.301380, -0.049411, 0.952223,
		-0.077487, -0.996623, -0.027190,
		34.575642, 34.925716, 30.815508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.208057, 35.284157, 31.262142>,  <34.629883, 35.623352, 30.834541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.208057, 35.284157, 31.262142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.075127, 35.002438, 31.011215>,  <34.995369, 34.833408, 30.860659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.075127, 35.002438, 31.011215>,  <35.208057, 35.284157, 31.262142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.075127, 35.002438, 31.011215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.918607, -0.090919, -0.384570,
		0.213816, -0.704061, 0.677186,
		-0.332330, -0.704295, -0.627316,
		34.975430, 34.791149, 30.823021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.748016, 34.948299, 31.186152>,  <35.208057, 35.284157, 31.262142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.748016, 34.948299, 31.186152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.534687, 34.781418, 30.891800>,  <35.406689, 34.681290, 30.715189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.534687, 34.781418, 30.891800>,  <35.748016, 34.948299, 31.186152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.534687, 34.781418, 30.891800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.821040, -0.045887, -0.569024,
		0.203629, -0.907656, 0.367010,
		-0.533319, -0.417200, -0.735877,
		35.374691, 34.656258, 30.671036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.057915, 34.353397, 30.874712>,  <35.748016, 34.948299, 31.186152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.057915, 34.353397, 30.874712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.818447, 34.516624, 30.599010>,  <35.674767, 34.614559, 30.433590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.818447, 34.516624, 30.599010>,  <36.057915, 34.353397, 30.874712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.818447, 34.516624, 30.599010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.722701, -0.095868, -0.684480,
		-0.345392, -0.907904, -0.237518,
		-0.598671, 0.408068, -0.689255,
		35.638847, 34.639046, 30.392235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.106453, 33.851490, 30.276421>,  <36.057915, 34.353397, 30.874712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.106453, 33.851490, 30.276421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.013557, 34.221859, 30.157267>,  <35.957821, 34.444080, 30.085775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.013557, 34.221859, 30.157267>,  <36.106453, 33.851490, 30.276421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.013557, 34.221859, 30.157267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621106, -0.094511, -0.778007,
		-0.748526, -0.365702, -0.553146,
		-0.232240, 0.925921, -0.297884,
		35.943886, 34.499634, 30.067902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.113026, 33.820507, 29.575167>,  <36.106453, 33.851490, 30.276421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.113026, 33.820507, 29.575167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.092648, 34.219639, 29.591875>,  <36.080421, 34.459118, 29.601900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.092648, 34.219639, 29.591875>,  <36.113026, 33.820507, 29.575167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.092648, 34.219639, 29.591875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596704, 0.063954, -0.799909,
		-0.800842, -0.015827, -0.598666,
		-0.050947, 0.997827, 0.041773,
		36.077362, 34.518986, 29.604406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.993141, 34.015766, 28.919924>,  <36.113026, 33.820507, 29.575167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.993141, 34.015766, 28.919924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.120949, 34.342312, 29.112366>,  <36.197636, 34.538239, 29.227831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.120949, 34.342312, 29.112366>,  <35.993141, 34.015766, 28.919924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.120949, 34.342312, 29.112366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560767, 0.246363, -0.790472,
		-0.763837, 0.522359, -0.379071,
		0.319522, 0.816362, 0.481103,
		36.216805, 34.587219, 29.256697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.815918, 34.493183, 28.410318>,  <35.993141, 34.015766, 28.919924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.815918, 34.493183, 28.410318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.091217, 34.610687, 28.675653>,  <36.256397, 34.681190, 28.834854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.091217, 34.610687, 28.675653>,  <35.815918, 34.493183, 28.410318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.091217, 34.610687, 28.675653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509584, 0.455049, -0.730242,
		-0.516370, 0.840615, 0.163489,
		0.688248, 0.293764, 0.663338,
		36.297691, 34.698818, 28.874655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.129509, 34.979160, 27.998981>,  <35.815918, 34.493183, 28.410318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.129509, 34.979160, 27.998981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.394272, 35.002712, 28.297888>,  <36.553131, 35.016842, 28.477232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.394272, 35.002712, 28.297888>,  <36.129509, 34.979160, 27.998981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.394272, 35.002712, 28.297888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.652848, 0.444575, -0.613304,
		-0.368326, 0.893804, 0.255832,
		0.661910, 0.058876, 0.747267,
		36.592846, 35.020374, 28.522068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.232365, 35.619854, 28.068106>,  <36.129509, 34.979160, 27.998981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.232365, 35.619854, 28.068106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.561871, 35.432953, 28.196531>,  <36.759575, 35.320812, 28.273586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.561871, 35.432953, 28.196531>,  <36.232365, 35.619854, 28.068106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.561871, 35.432953, 28.196531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525666, 0.417419, -0.741240,
		0.212327, 0.779382, 0.589475,
		0.823767, -0.467252, 0.321065,
		36.809002, 35.292778, 28.292850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.705437, 36.100357, 28.305920>,  <36.232365, 35.619854, 28.068106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.705437, 36.100357, 28.305920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.932415, 35.780495, 28.227373>,  <37.068600, 35.588577, 28.180244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.932415, 35.780495, 28.227373>,  <36.705437, 36.100357, 28.305920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.932415, 35.780495, 28.227373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476885, 0.513571, -0.713320,
		0.671259, 0.311124, 0.672766,
		0.567444, -0.799654, -0.196369,
		37.102650, 35.540600, 28.168463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.247051, 36.332996, 28.010248>,  <36.705437, 36.100357, 28.305920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.247051, 36.332996, 28.010248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.321892, 35.954105, 27.906130>,  <37.366795, 35.726772, 27.843658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.321892, 35.954105, 27.906130>,  <37.247051, 36.332996, 28.010248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.321892, 35.954105, 27.906130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552218, 0.320562, -0.769607,
		0.812435, 0.000252, 0.583052,
		0.187098, -0.947227, -0.260297,
		37.378021, 35.669937, 27.828041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.986427, 36.311066, 28.011459>,  <37.247051, 36.332996, 28.010248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.986427, 36.311066, 28.011459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.827049, 36.038002, 27.766439>,  <37.731422, 35.874165, 27.619427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.827049, 36.038002, 27.766439>,  <37.986427, 36.311066, 28.011459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.827049, 36.038002, 27.766439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579515, 0.330278, -0.745036,
		0.710919, -0.651837, 0.264014,
		-0.398444, -0.682660, -0.612550,
		37.707516, 35.833202, 27.582674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.530651, 36.191711, 27.586720>,  <37.986427, 36.311066, 28.011459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.530651, 36.191711, 27.586720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.234402, 36.010887, 27.387875>,  <38.056652, 35.902393, 27.268568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.234402, 36.010887, 27.387875>,  <38.530651, 36.191711, 27.586720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.234402, 36.010887, 27.387875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318386, 0.415400, -0.852099,
		0.591704, -0.789355, -0.163722,
		-0.740619, -0.452064, -0.497114,
		38.012215, 35.875267, 27.238741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.902149, 35.852821, 26.966055>,  <38.530651, 36.191711, 27.586720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.902149, 35.852821, 26.966055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.514095, 35.887287, 26.875355>,  <38.281261, 35.907967, 26.820934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.514095, 35.887287, 26.875355>,  <38.902149, 35.852821, 26.966055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.514095, 35.887287, 26.875355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236607, 0.130166, -0.962847,
		-0.053445, -0.987741, -0.146665,
		-0.970134, 0.086162, -0.226750,
		38.223057, 35.913136, 26.807329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.744770, 35.459076, 26.241302>,  <38.902149, 35.852821, 26.966055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.744770, 35.459076, 26.241302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.442619, 35.717602, 26.284542>,  <38.261330, 35.872719, 26.310486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.442619, 35.717602, 26.284542>,  <38.744770, 35.459076, 26.241302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.442619, 35.717602, 26.284542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023105, 0.138594, -0.990080,
		-0.654884, -0.750381, -0.089757,
		-0.755376, 0.646313, 0.108100,
		38.216007, 35.911495, 26.316973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.259132, 35.435112, 25.610296>,  <38.744770, 35.459076, 26.241302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.259132, 35.435112, 25.610296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.196350, 35.793949, 25.775509>,  <38.158680, 36.009251, 25.874636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.196350, 35.793949, 25.775509>,  <38.259132, 35.435112, 25.610296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.196350, 35.793949, 25.775509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193147, 0.382255, -0.903645,
		-0.968534, -0.221608, 0.113273,
		-0.156956, 0.897090, 0.413030,
		38.149261, 36.063076, 25.899418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.688255, 35.667721, 25.297098>,  <38.259132, 35.435112, 25.610296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.688255, 35.667721, 25.297098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.855152, 35.998768, 25.447277>,  <37.955288, 36.197395, 25.537384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.855152, 35.998768, 25.447277>,  <37.688255, 35.667721, 25.297098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.855152, 35.998768, 25.447277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098234, 0.451776, -0.886706,
		-0.903472, 0.333088, 0.269800,
		0.417240, 0.827618, 0.375446,
		37.980324, 36.247051, 25.559912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.271152, 36.145088, 25.128923>,  <37.688255, 35.667721, 25.297098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.271152, 36.145088, 25.128923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.579777, 36.385796, 25.211447>,  <37.764950, 36.530220, 25.260960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.579777, 36.385796, 25.211447>,  <37.271152, 36.145088, 25.128923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.579777, 36.385796, 25.211447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101496, 0.436596, -0.893914,
		-0.628006, 0.668770, 0.397938,
		0.771561, 0.601773, 0.206307,
		37.811245, 36.566326, 25.273338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.117496, 36.697983, 24.811398>,  <37.271152, 36.145088, 25.128923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.117496, 36.697983, 24.811398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.512497, 36.730267, 24.865561>,  <37.749496, 36.749638, 24.898058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.512497, 36.730267, 24.865561>,  <37.117496, 36.697983, 24.811398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.512497, 36.730267, 24.865561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061994, 0.590934, -0.804334,
		-0.144930, 0.802673, 0.578543,
		0.987498, 0.080706, 0.135405,
		37.808746, 36.754478, 24.906181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.209084, 37.194817, 24.398548>,  <37.117496, 36.697983, 24.811398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.209084, 37.194817, 24.398548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.585060, 37.094357, 24.491020>,  <37.810646, 37.034081, 24.546503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.585060, 37.094357, 24.491020>,  <37.209084, 37.194817, 24.398548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.585060, 37.094357, 24.491020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330804, 0.503170, -0.798366,
		0.084185, 0.826889, 0.556029,
		0.939937, -0.251147, 0.231179,
		37.867043, 37.019012, 24.560373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.540970, 37.790897, 24.328171>,  <37.209084, 37.194817, 24.398548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.540970, 37.790897, 24.328171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.816853, 37.501534, 24.315639>,  <37.982384, 37.327915, 24.308121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.816853, 37.501534, 24.315639>,  <37.540970, 37.790897, 24.328171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.816853, 37.501534, 24.315639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425434, 0.439868, -0.790900,
		0.585924, 0.532162, 0.611143,
		0.689709, -0.723408, -0.031329,
		38.023766, 37.284512, 24.306240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.248131, 38.124569, 24.374310>,  <37.540970, 37.790897, 24.328171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.248131, 38.124569, 24.374310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.274727, 37.777096, 24.177952>,  <38.290684, 37.568611, 24.060137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.274727, 37.777096, 24.177952>,  <38.248131, 38.124569, 24.374310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.274727, 37.777096, 24.177952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493816, 0.456154, -0.740317,
		0.867021, -0.193187, 0.459297,
		0.066490, -0.868678, -0.490894,
		38.294674, 37.516491, 24.030684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.006275, 38.011265, 24.290438>,  <38.248131, 38.124569, 24.374310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.006275, 38.011265, 24.290438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.826607, 37.785892, 24.013081>,  <38.718807, 37.650669, 23.846666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.826607, 37.785892, 24.013081>,  <39.006275, 38.011265, 24.290438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.826607, 37.785892, 24.013081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523413, 0.463022, -0.715297,
		0.724075, -0.684221, 0.086930,
		-0.449170, -0.563429, -0.693393,
		38.691856, 37.616863, 23.805063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.500160, 37.592896, 23.878208>,  <39.006275, 38.011265, 24.290438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.500160, 37.592896, 23.878208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.174881, 37.623562, 23.647444>,  <38.979713, 37.641964, 23.508986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.174881, 37.623562, 23.647444>,  <39.500160, 37.592896, 23.878208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.174881, 37.623562, 23.647444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577322, 0.231479, -0.783018,
		0.073508, -0.969814, -0.232502,
		-0.813201, 0.076671, -0.576910,
		38.930920, 37.646564, 23.474371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.784721, 37.353386, 23.232620>,  <39.500160, 37.592896, 23.878208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.784721, 37.353386, 23.232620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.436947, 37.497322, 23.097208>,  <39.228283, 37.583683, 23.015961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.436947, 37.497322, 23.097208>,  <39.784721, 37.353386, 23.232620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.436947, 37.497322, 23.097208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487262, 0.511351, -0.707881,
		-0.081615, -0.780408, -0.619921,
		-0.869433, 0.359837, -0.338530,
		39.176117, 37.605274, 22.995649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.852646, 37.365849, 22.546629>,  <39.784721, 37.353386, 23.232620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.852646, 37.365849, 22.546629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.535000, 37.606560, 22.580677>,  <39.344414, 37.750988, 22.601105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.535000, 37.606560, 22.580677>,  <39.852646, 37.365849, 22.546629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.535000, 37.606560, 22.580677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254073, 0.455924, -0.852983,
		-0.552118, -0.655737, -0.514951,
		-0.794111, 0.601782, 0.085118,
		39.296768, 37.787094, 22.606213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.635231, 37.596191, 21.819048>,  <39.852646, 37.365849, 22.546629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.635231, 37.596191, 21.819048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.495102, 37.867126, 22.077810>,  <39.411022, 38.029686, 22.233068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.495102, 37.867126, 22.077810>,  <39.635231, 37.596191, 21.819048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.495102, 37.867126, 22.077810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146861, 0.721856, -0.676281,
		-0.925042, -0.141914, -0.352360,
		-0.350327, 0.677337, 0.646905,
		39.390003, 38.070328, 22.271881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.034294, 37.878292, 21.428116>,  <39.635231, 37.596191, 21.819048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.034294, 37.878292, 21.428116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.135708, 38.146950, 21.706573>,  <39.196556, 38.308144, 21.873648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.135708, 38.146950, 21.706573>,  <39.034294, 37.878292, 21.428116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.135708, 38.146950, 21.706573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137843, 0.687228, -0.713244,
		-0.957456, 0.276787, 0.081652,
		0.253531, 0.671645, 0.696143,
		39.211765, 38.348442, 21.915417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.648201, 38.401924, 21.288904>,  <39.034294, 37.878292, 21.428116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.648201, 38.401924, 21.288904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.961845, 38.546730, 21.490541>,  <39.150032, 38.633614, 21.611523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.961845, 38.546730, 21.490541>,  <38.648201, 38.401924, 21.288904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.961845, 38.546730, 21.490541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067133, 0.758002, -0.648788,
		-0.616974, 0.542565, 0.570057,
		0.784115, 0.362016, 0.504092,
		39.197079, 38.655334, 21.641769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.580551, 39.137878, 21.289892>,  <38.648201, 38.401924, 21.288904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.580551, 39.137878, 21.289892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.963993, 39.085373, 21.390966>,  <39.194057, 39.053867, 21.451611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.963993, 39.085373, 21.390966>,  <38.580551, 39.137878, 21.289892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.963993, 39.085373, 21.390966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246936, 0.825105, -0.508158,
		-0.141787, 0.549519, 0.823362,
		0.958603, -0.131268, 0.252685,
		39.251575, 39.045994, 21.466772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.789604, 39.680836, 21.626614>,  <38.580551, 39.137878, 21.289892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.789604, 39.680836, 21.626614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.139137, 39.546394, 21.486076>,  <39.348858, 39.465729, 21.401754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.139137, 39.546394, 21.486076>,  <38.789604, 39.680836, 21.626614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.139137, 39.546394, 21.486076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136087, 0.862789, -0.486905,
		0.466786, 0.377662, 0.799676,
		0.873837, -0.336106, -0.351343,
		39.401287, 39.445564, 21.380674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.157787, 40.171867, 21.684221>,  <38.789604, 39.680836, 21.626614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.157787, 40.171867, 21.684221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.377258, 39.942471, 21.440891>,  <39.508942, 39.804832, 21.294893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.377258, 39.942471, 21.440891>,  <39.157787, 40.171867, 21.684221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.377258, 39.942471, 21.440891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100936, 0.767750, -0.632749,
		0.829919, 0.285773, 0.479133,
		0.548676, -0.573492, -0.608326,
		39.541862, 39.770424, 21.258394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.773628, 40.470406, 21.669979>,  <39.157787, 40.171867, 21.684221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.773628, 40.470406, 21.669979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.708454, 40.287323, 21.320362>,  <39.669350, 40.177471, 21.110592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.708454, 40.287323, 21.320362>,  <39.773628, 40.470406, 21.669979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.708454, 40.287323, 21.320362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303831, 0.819555, -0.485815,
		0.938690, -0.344718, 0.005533,
		-0.162934, -0.457710, -0.874044,
		39.659573, 40.150009, 21.058149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.231888, 40.829235, 21.261345>,  <39.773628, 40.470406, 21.669979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.231888, 40.829235, 21.261345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.023067, 40.619873, 20.991970>,  <39.897778, 40.494255, 20.830345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.023067, 40.619873, 20.991970>,  <40.231888, 40.829235, 21.261345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.023067, 40.619873, 20.991970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246442, 0.663325, -0.706588,
		0.816538, -0.534835, -0.217298,
		-0.522047, -0.523404, -0.673435,
		39.866455, 40.462852, 20.789940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.695827, 40.762924, 20.649693>,  <40.231888, 40.829235, 21.261345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.695827, 40.762924, 20.649693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.335609, 40.688366, 20.492579>,  <40.119480, 40.643631, 20.398310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.335609, 40.688366, 20.492579>,  <40.695827, 40.762924, 20.649693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.335609, 40.688366, 20.492579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169743, 0.681000, -0.712338,
		0.400260, -0.708164, -0.581632,
		-0.900544, -0.186393, -0.392783,
		40.065445, 40.632446, 20.374744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.776478, 40.844170, 19.907282>,  <40.695827, 40.762924, 20.649693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.776478, 40.844170, 19.907282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.381054, 40.877834, 19.957335>,  <40.143799, 40.898033, 19.987366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.381054, 40.877834, 19.957335>,  <40.776478, 40.844170, 19.907282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.381054, 40.877834, 19.957335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062710, 0.525192, -0.848670,
		-0.137142, -0.846812, -0.513909,
		-0.988564, 0.084161, 0.125130,
		40.084484, 40.903084, 19.994873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.535553, 40.820042, 19.158720>,  <40.776478, 40.844170, 19.907282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.535553, 40.820042, 19.158720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.253757, 40.995331, 19.382027>,  <40.084682, 41.100506, 19.516010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.253757, 40.995331, 19.382027>,  <40.535553, 40.820042, 19.158720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.253757, 40.995331, 19.382027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207144, 0.625395, -0.752311,
		-0.678818, -0.645633, -0.349806,
		-0.704484, 0.438222, 0.558268,
		40.042412, 41.126797, 19.549507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.895061, 40.721405, 18.843365>,  <40.535553, 40.820042, 19.158720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.895061, 40.721405, 18.843365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.889668, 41.049931, 19.071493>,  <39.886433, 41.247044, 19.208370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.889668, 41.049931, 19.071493>,  <39.895061, 40.721405, 18.843365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.889668, 41.049931, 19.071493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327902, 0.535203, -0.778484,
		-0.944615, -0.197505, 0.262094,
		-0.013481, 0.821310, 0.570323,
		39.885624, 41.296322, 19.242590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.378521, 41.099415, 18.602688>,  <39.895061, 40.721405, 18.843365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.378521, 41.099415, 18.602688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.551136, 41.384682, 18.823658>,  <39.654705, 41.555840, 18.956240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.551136, 41.384682, 18.823658>,  <39.378521, 41.099415, 18.602688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.551136, 41.384682, 18.823658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326921, 0.694388, -0.641051,
		-0.840771, 0.096039, 0.532804,
		0.431539, 0.713163, 0.552425,
		39.680599, 41.598629, 18.989386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.777039, 41.547794, 18.805134>,  <39.378521, 41.099415, 18.602688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.777039, 41.547794, 18.805134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.139915, 41.711868, 18.767710>,  <39.357643, 41.810314, 18.745255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.139915, 41.711868, 18.767710>,  <38.777039, 41.547794, 18.805134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.139915, 41.711868, 18.767710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331813, 0.560841, -0.758524,
		-0.258661, 0.719170, 0.644894,
		0.907191, 0.410185, -0.093562,
		39.412071, 41.834923, 18.739641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.781338, 42.276405, 18.892765>,  <38.777039, 41.547794, 18.805134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.781338, 42.276405, 18.892765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.072529, 42.174946, 18.637983>,  <39.247242, 42.114071, 18.485115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.072529, 42.174946, 18.637983>,  <38.781338, 42.276405, 18.892765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.072529, 42.174946, 18.637983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443450, 0.534340, -0.719606,
		0.522877, 0.806314, 0.276508,
		0.727978, -0.253648, -0.636954,
		39.290924, 42.098850, 18.446898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.240540, 42.846664, 18.647497>,  <38.781338, 42.276405, 18.892765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.240540, 42.846664, 18.647497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.186016, 42.548691, 18.386269>,  <39.153301, 42.369907, 18.229532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.186016, 42.548691, 18.386269>,  <39.240540, 42.846664, 18.647497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.186016, 42.548691, 18.386269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418767, 0.640755, -0.643481,
		0.897806, 0.185774, -0.399290,
		-0.136305, -0.744931, -0.653069,
		39.145126, 42.325211, 18.190348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.634468, 43.127502, 18.099819>,  <39.240540, 42.846664, 18.647497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.634468, 43.127502, 18.099819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.358051, 42.852394, 18.010880>,  <39.192200, 42.687328, 17.957516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.358051, 42.852394, 18.010880>,  <39.634468, 43.127502, 18.099819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.358051, 42.852394, 18.010880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344989, 0.584147, -0.734681,
		0.635175, -0.430985, -0.640941,
		-0.691039, -0.687768, -0.222350,
		39.150738, 42.646065, 17.944176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.401745, 43.143539, 18.265154>,  <39.634468, 43.127502, 18.099819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.401745, 43.143539, 18.265154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.759167, 43.257675, 18.403799>,  <40.973621, 43.326157, 18.486986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.759167, 43.257675, 18.403799>,  <40.401745, 43.143539, 18.265154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.759167, 43.257675, 18.403799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330665, -0.103934, 0.938008,
		0.303675, -0.952775, 0.001481,
		0.893556, 0.285339, 0.346611,
		41.027233, 43.343277, 18.507782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.704487, 42.578487, 18.793867>,  <40.401745, 43.143539, 18.265154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.704487, 42.578487, 18.793867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.781818, 42.968254, 18.839712>,  <40.828217, 43.202114, 18.867218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.781818, 42.968254, 18.839712>,  <40.704487, 42.578487, 18.793867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.781818, 42.968254, 18.839712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222807, -0.070159, 0.972335,
		0.955500, -0.213518, 0.203542,
		0.193331, 0.974417, 0.114610,
		40.839817, 43.260578, 18.874096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.069466, 42.741276, 19.500633>,  <40.704487, 42.578487, 18.793867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.069466, 42.741276, 19.500633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.900906, 43.087257, 19.391619>,  <40.799770, 43.294846, 19.326210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.900906, 43.087257, 19.391619>,  <41.069466, 42.741276, 19.500633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.900906, 43.087257, 19.391619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295357, 0.153237, 0.943018,
		0.857428, 0.477887, 0.190895,
		-0.421404, 0.864952, -0.272537,
		40.774483, 43.346745, 19.309858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.183315, 43.291775, 19.936474>,  <41.069466, 42.741276, 19.500633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.183315, 43.291775, 19.936474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.849922, 43.447567, 19.779705>,  <40.649887, 43.541042, 19.685644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.849922, 43.447567, 19.779705>,  <41.183315, 43.291775, 19.936474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.849922, 43.447567, 19.779705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326732, 0.224594, 0.918043,
		0.445587, 0.893230, -0.059938,
		-0.833485, 0.389485, -0.391923,
		40.599876, 43.564411, 19.662128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.987247, 43.868431, 20.322170>,  <41.183315, 43.291775, 19.936474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.987247, 43.868431, 20.322170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.626179, 43.777191, 20.176212>,  <40.409538, 43.722446, 20.088638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.626179, 43.777191, 20.176212>,  <40.987247, 43.868431, 20.322170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.626179, 43.777191, 20.176212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381663, 0.032687, 0.923723,
		-0.198770, 0.973090, -0.116561,
		-0.902676, -0.228095, -0.364895,
		40.355377, 43.708763, 20.066744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.478897, 44.358330, 20.487648>,  <40.987247, 43.868431, 20.322170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.478897, 44.358330, 20.487648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.276615, 44.014507, 20.458212>,  <40.155247, 43.808212, 20.440550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.276615, 44.014507, 20.458212>,  <40.478897, 44.358330, 20.487648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.276615, 44.014507, 20.458212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466431, 0.200662, 0.861497,
		-0.725741, 0.469992, -0.502402,
		-0.505710, -0.859559, -0.073589,
		40.124901, 43.756638, 20.436134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.833172, 44.469997, 20.576675>,  <40.478897, 44.358330, 20.487648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.833172, 44.469997, 20.576675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.826481, 44.079868, 20.664730>,  <39.822468, 43.845791, 20.717564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.826481, 44.079868, 20.664730>,  <39.833172, 44.469997, 20.576675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.826481, 44.079868, 20.664730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.658635, 0.176397, 0.731495,
		-0.752277, -0.132756, -0.645333,
		-0.016724, -0.975325, 0.220138,
		39.821465, 43.787270, 20.730772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.156399, 44.178490, 20.672354>,  <39.833172, 44.469997, 20.576675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.156399, 44.178490, 20.672354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.338703, 43.908848, 20.904860>,  <39.448086, 43.747063, 21.044363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.338703, 43.908848, 20.904860>,  <39.156399, 44.178490, 20.672354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.338703, 43.908848, 20.904860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.695152, 0.138293, 0.705435,
		-0.555920, -0.725577, -0.405575,
		0.455758, -0.674102, 0.581266,
		39.475430, 43.706615, 21.079239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.637707, 43.704468, 20.865961>,  <39.156399, 44.178490, 20.672354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.637707, 43.704468, 20.865961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.924599, 43.635231, 21.135960>,  <39.096733, 43.593689, 21.297958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.924599, 43.635231, 21.135960>,  <38.637707, 43.704468, 20.865961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.924599, 43.635231, 21.135960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.696318, -0.215397, 0.684650,
		0.026887, -0.961064, -0.275014,
		0.717230, -0.173088, 0.674998,
		39.139767, 43.583305, 21.338459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.370441, 43.177216, 21.239464>,  <38.637707, 43.704468, 20.865961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.370441, 43.177216, 21.239464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.647957, 43.329300, 21.484118>,  <38.814465, 43.420551, 21.630911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.647957, 43.329300, 21.484118>,  <38.370441, 43.177216, 21.239464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.647957, 43.329300, 21.484118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515765, -0.330431, 0.790444,
		0.502636, -0.863862, -0.033152,
		0.693789, 0.380207, 0.611636,
		38.856094, 43.443363, 21.667608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.561131, 42.603146, 21.650393>,  <38.370441, 43.177216, 21.239464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.561131, 42.603146, 21.650393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.681793, 42.936600, 21.835455>,  <38.754192, 43.136673, 21.946491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.681793, 42.936600, 21.835455>,  <38.561131, 42.603146, 21.650393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.681793, 42.936600, 21.835455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379570, -0.340139, 0.860368,
		0.874602, -0.435147, 0.213818,
		0.301658, 0.833638, 0.462655,
		38.772289, 43.186691, 21.974251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.788811, 42.266762, 22.232107>,  <38.561131, 42.603146, 21.650393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.788811, 42.266762, 22.232107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.725574, 42.656868, 22.293901>,  <38.687634, 42.890930, 22.330978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.725574, 42.656868, 22.293901>,  <38.788811, 42.266762, 22.232107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.725574, 42.656868, 22.293901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295989, -0.196066, 0.934852,
		0.942018, 0.102068, 0.319664,
		-0.158094, 0.975264, 0.154487,
		38.678146, 42.949448, 22.340248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.262398, 42.431717, 22.800163>,  <38.788811, 42.266762, 22.232107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.262398, 42.431717, 22.800163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.962437, 42.695232, 22.776016>,  <38.782459, 42.853340, 22.761528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.962437, 42.695232, 22.776016>,  <39.262398, 42.431717, 22.800163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.962437, 42.695232, 22.776016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235002, -0.179975, 0.955187,
		0.618399, 0.730486, 0.289780,
		-0.749905, 0.658786, -0.060369,
		38.737465, 42.892868, 22.757906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.214733, 42.829304, 23.446474>,  <39.262398, 42.431717, 22.800163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.214733, 42.829304, 23.446474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.868362, 42.896908, 23.258171>,  <38.660542, 42.937469, 23.145189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.868362, 42.896908, 23.258171>,  <39.214733, 42.829304, 23.446474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.868362, 42.896908, 23.258171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489983, -0.097604, 0.866250,
		0.100459, 0.980769, 0.167331,
		-0.865924, 0.169012, -0.470755,
		38.608585, 42.947613, 23.116945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.796604, 43.160004, 23.895077>,  <39.214733, 42.829304, 23.446474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.796604, 43.160004, 23.895077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.501865, 43.078655, 23.637178>,  <38.325024, 43.029846, 23.482439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.501865, 43.078655, 23.637178>,  <38.796604, 43.160004, 23.895077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.501865, 43.078655, 23.637178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.587666, -0.278801, 0.759552,
		-0.334224, 0.938569, 0.085922,
		-0.736847, -0.203367, -0.644747,
		38.280811, 43.017647, 23.443754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.078110, 43.508682, 24.086990>,  <38.796604, 43.160004, 23.895077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.078110, 43.508682, 24.086990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.018055, 43.173409, 23.877266>,  <37.982021, 42.972244, 23.751431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.018055, 43.173409, 23.877266>,  <38.078110, 43.508682, 24.086990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.018055, 43.173409, 23.877266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.595347, -0.346743, 0.724798,
		-0.789317, 0.420967, -0.446952,
		-0.150138, -0.838186, -0.524312,
		37.973015, 42.921951, 23.719973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.398178, 43.398739, 24.165430>,  <38.078110, 43.508682, 24.086990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.398178, 43.398739, 24.165430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.542431, 43.042000, 24.056206>,  <37.628983, 42.827957, 23.990671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.542431, 43.042000, 24.056206>,  <37.398178, 43.398739, 24.165430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.542431, 43.042000, 24.056206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.705631, -0.452327, 0.545421,
		-0.609944, -0.004012, -0.792434,
		0.360628, -0.891843, -0.273063,
		37.650620, 42.774448, 23.974287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.845722, 42.943573, 23.991114>,  <37.398178, 43.398739, 24.165430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.845722, 42.943573, 23.991114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.142864, 42.708340, 24.119068>,  <37.321148, 42.567200, 24.195841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.142864, 42.708340, 24.119068>,  <36.845722, 42.943573, 23.991114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.142864, 42.708340, 24.119068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.612365, -0.403834, 0.679653,
		-0.270507, -0.700773, -0.660108,
		0.742856, -0.588078, 0.319889,
		37.365723, 42.531918, 24.215034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.574535, 42.313663, 24.050695>,  <36.845722, 42.943573, 23.991114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.574535, 42.313663, 24.050695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.906944, 42.257549, 24.265997>,  <37.106392, 42.223881, 24.395178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.906944, 42.257549, 24.265997>,  <36.574535, 42.313663, 24.050695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.906944, 42.257549, 24.265997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507604, -0.586966, 0.630721,
		0.227455, -0.797365, -0.558994,
		0.831025, -0.140287, 0.538254,
		37.156250, 42.215462, 24.427473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.629608, 41.632038, 24.109890>,  <36.574535, 42.313663, 24.050695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.629608, 41.632038, 24.109890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.853901, 41.773777, 24.409227>,  <36.988476, 41.858818, 24.588831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.853901, 41.773777, 24.409227>,  <36.629608, 41.632038, 24.109890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.853901, 41.773777, 24.409227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456025, -0.622209, 0.636315,
		0.691102, -0.698066, -0.187302,
		0.560731, 0.354344, 0.748345,
		37.022121, 41.880081, 24.633732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.806988, 41.050415, 24.573126>,  <36.629608, 41.632038, 24.109890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.806988, 41.050415, 24.573126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.888100, 41.358368, 24.815170>,  <36.936768, 41.543140, 24.960398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.888100, 41.358368, 24.815170>,  <36.806988, 41.050415, 24.573126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.888100, 41.358368, 24.815170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265388, -0.551615, 0.790753,
		0.942576, -0.320939, 0.092460,
		0.202781, 0.769882, 0.605113,
		36.948933, 41.589333, 24.996704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.235756, 40.783695, 25.123386>,  <36.806988, 41.050415, 24.573126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.235756, 40.783695, 25.123386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.060017, 41.129692, 25.220358>,  <36.954575, 41.337288, 25.278542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.060017, 41.129692, 25.220358>,  <37.235756, 40.783695, 25.123386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.060017, 41.129692, 25.220358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469475, -0.451171, 0.758972,
		0.765879, 0.219635, 0.604309,
		-0.439344, 0.864989, 0.242429,
		36.928215, 41.389187, 25.293087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.354149, 40.916496, 25.947163>,  <37.235756, 40.783695, 25.123386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.354149, 40.916496, 25.947163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.037209, 41.128773, 25.826796>,  <36.847046, 41.256138, 25.754576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.037209, 41.128773, 25.826796>,  <37.354149, 40.916496, 25.947163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.037209, 41.128773, 25.826796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551760, -0.412939, 0.724597,
		0.260278, 0.740167, 0.620006,
		-0.792349, 0.530691, -0.300916,
		36.799503, 41.287979, 25.736521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.033760, 41.042862, 26.598080>,  <37.354149, 40.916496, 25.947163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.033760, 41.042862, 26.598080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.759945, 41.170719, 26.336014>,  <36.595657, 41.247433, 26.178774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.759945, 41.170719, 26.336014>,  <37.033760, 41.042862, 26.598080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.759945, 41.170719, 26.336014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.728615, -0.328500, 0.601005,
		-0.023112, 0.888771, 0.457769,
		-0.684533, 0.319647, -0.655164,
		36.554585, 41.266613, 26.139465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.611458, 41.439407, 27.005184>,  <37.033760, 41.042862, 26.598080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.611458, 41.439407, 27.005184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.382210, 41.312595, 26.702919>,  <36.244659, 41.236507, 26.521561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.382210, 41.312595, 26.702919>,  <36.611458, 41.439407, 27.005184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.382210, 41.312595, 26.702919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.701045, -0.287825, 0.652451,
		-0.424346, 0.903686, -0.057295,
		-0.573120, -0.317031, -0.755662,
		36.210274, 41.217487, 26.476221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.913994, 41.755245, 27.105488>,  <36.611458, 41.439407, 27.005184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.913994, 41.755245, 27.105488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.868660, 41.422638, 26.887962>,  <35.841457, 41.223072, 26.757446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.868660, 41.422638, 26.887962>,  <35.913994, 41.755245, 27.105488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.868660, 41.422638, 26.887962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.895796, -0.151238, 0.417943,
		-0.429772, 0.534516, -0.727728,
		-0.113337, -0.831517, -0.543815,
		35.834660, 41.173183, 26.724817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.111362, 41.737415, 26.931671>,  <35.913994, 41.755245, 27.105488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.111362, 41.737415, 26.931671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.266590, 41.375435, 26.861858>,  <35.359726, 41.158245, 26.819971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.266590, 41.375435, 26.861858>,  <35.111362, 41.737415, 26.931671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.266590, 41.375435, 26.861858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.773727, -0.422786, 0.471804,
		-0.500752, -0.048050, -0.864256,
		0.388066, -0.904955, -0.174533,
		35.383011, 41.103947, 26.809498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.513470, 41.371452, 26.649475>,  <35.111362, 41.737415, 26.931671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.513470, 41.371452, 26.649475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.781616, 41.097652, 26.764069>,  <34.942505, 40.933372, 26.832825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.781616, 41.097652, 26.764069>,  <34.513470, 41.371452, 26.649475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.781616, 41.097652, 26.764069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.730405, -0.540615, 0.417427,
		-0.130852, -0.489076, -0.862370,
		0.670363, -0.684501, 0.286483,
		34.982723, 40.892303, 26.850014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.249783, 40.707729, 26.490761>,  <34.513470, 41.371452, 26.649475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.249783, 40.707729, 26.490761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.546551, 40.637604, 26.749624>,  <34.724613, 40.595528, 26.904943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.546551, 40.637604, 26.749624>,  <34.249783, 40.707729, 26.490761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.546551, 40.637604, 26.749624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.633110, -0.500946, 0.590106,
		0.220738, -0.847536, -0.482657,
		0.741921, -0.175316, 0.647161,
		34.769127, 40.585011, 26.943773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.384022, 39.964565, 26.521933>,  <34.249783, 40.707729, 26.490761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.384022, 39.964565, 26.521933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.520935, 40.131176, 26.858824>,  <34.603085, 40.231144, 27.060959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.520935, 40.131176, 26.858824>,  <34.384022, 39.964565, 26.521933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.520935, 40.131176, 26.858824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539028, -0.647150, 0.539116,
		0.769603, -0.638516, 0.003009,
		0.342287, 0.416527, 0.842226,
		34.623623, 40.256134, 27.111492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.549168, 39.396885, 26.992374>,  <34.384022, 39.964565, 26.521933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.549168, 39.396885, 26.992374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.487309, 39.704578, 27.240362>,  <34.450191, 39.889194, 27.389154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.487309, 39.704578, 27.240362>,  <34.549168, 39.396885, 26.992374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.487309, 39.704578, 27.240362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557967, -0.585864, 0.587738,
		0.815326, -0.255027, 0.519812,
		-0.154650, 0.769236, 0.619967,
		34.440914, 39.935349, 27.426352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.648190, 39.098522, 27.603575>,  <34.549168, 39.396885, 26.992374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.648190, 39.098522, 27.603575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.480885, 39.446671, 27.707502>,  <34.380501, 39.655560, 27.769859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.480885, 39.446671, 27.707502>,  <34.648190, 39.098522, 27.603575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.480885, 39.446671, 27.707502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398700, -0.432936, 0.808458,
		0.816144, 0.234561, 0.528100,
		-0.418267, 0.870372, 0.259818,
		34.355404, 39.707783, 27.785448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.884087, 39.200943, 28.265471>,  <34.648190, 39.098522, 27.603575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.884087, 39.200943, 28.265471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.541912, 39.400784, 28.210878>,  <34.336609, 39.520687, 28.178123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.541912, 39.400784, 28.210878>,  <34.884087, 39.200943, 28.265471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.541912, 39.400784, 28.210878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429622, -0.537355, 0.725723,
		0.289236, 0.679444, 0.674314,
		-0.855434, 0.499606, -0.136481,
		34.285282, 39.550667, 28.169933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.714130, 39.372997, 28.916243>,  <34.884087, 39.200943, 28.265471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.714130, 39.372997, 28.916243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.377155, 39.391693, 28.701538>,  <34.174969, 39.402908, 28.572716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.377155, 39.391693, 28.701538>,  <34.714130, 39.372997, 28.916243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.377155, 39.391693, 28.701538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488761, -0.485536, 0.724823,
		-0.226742, 0.872967, 0.431877,
		-0.842437, 0.046737, -0.536763,
		34.124424, 39.405716, 28.540508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.277008, 39.758232, 29.427755>,  <34.714130, 39.372997, 28.916243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.277008, 39.758232, 29.427755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.049309, 39.557629, 29.167154>,  <33.912689, 39.437267, 29.010794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.049309, 39.557629, 29.167154>,  <34.277008, 39.758232, 29.427755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.049309, 39.557629, 29.167154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458170, -0.464470, 0.757857,
		-0.682672, 0.729905, 0.034623,
		-0.569245, -0.501504, -0.651502,
		33.878536, 39.407177, 28.971704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.509197, 39.922844, 29.579313>,  <34.277008, 39.758232, 29.427755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.509197, 39.922844, 29.579313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.575378, 39.566990, 29.409054>,  <33.615086, 39.353477, 29.306898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.575378, 39.566990, 29.409054>,  <33.509197, 39.922844, 29.579313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.575378, 39.566990, 29.409054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.628700, -0.427671, 0.649487,
		-0.759843, 0.160146, -0.630072,
		0.165451, -0.889635, -0.425647,
		33.625015, 39.300098, 29.281359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.988579, 39.569382, 29.815107>,  <33.509197, 39.922844, 29.579313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.988579, 39.569382, 29.815107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.170811, 39.261200, 29.636734>,  <33.280148, 39.076290, 29.529711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.170811, 39.261200, 29.636734>,  <32.988579, 39.569382, 29.815107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.170811, 39.261200, 29.636734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394857, -0.623857, 0.674455,
		-0.797833, -0.131185, -0.588432,
		0.455576, -0.770450, -0.445935,
		33.307484, 39.030064, 29.502954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.581123, 39.019249, 30.027008>,  <32.988579, 39.569382, 29.815107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.581123, 39.019249, 30.027008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.913307, 38.838253, 29.897036>,  <33.112617, 38.729656, 29.819052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.913307, 38.838253, 29.897036>,  <32.581123, 39.019249, 30.027008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.913307, 38.838253, 29.897036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203573, -0.789448, 0.579077,
		-0.518543, -0.414756, -0.747724,
		0.830464, -0.452492, -0.324930,
		33.162445, 38.702507, 29.799557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.393600, 38.245033, 29.766226>,  <32.581123, 39.019249, 30.027008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.393600, 38.245033, 29.766226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.782707, 38.257828, 29.858059>,  <33.016171, 38.265507, 29.913158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.782707, 38.257828, 29.858059>,  <32.393600, 38.245033, 29.766226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.782707, 38.257828, 29.858059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079911, -0.883437, 0.461684,
		0.217593, -0.467456, -0.856819,
		0.972763, 0.031990, 0.229585,
		33.074535, 38.267426, 29.926935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.645615, 37.577061, 29.670208>,  <32.393600, 38.245033, 29.766226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.645615, 37.577061, 29.670208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.924744, 37.746395, 29.901318>,  <33.092220, 37.847996, 30.039984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.924744, 37.746395, 29.901318>,  <32.645615, 37.577061, 29.670208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.924744, 37.746395, 29.901318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063569, -0.766862, 0.638656,
		0.713441, -0.482400, -0.508225,
		0.697826, 0.423336, 0.577776,
		33.134090, 37.873398, 30.074650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.167500, 36.978672, 29.808258>,  <32.645615, 37.577061, 29.670208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.167500, 36.978672, 29.808258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.178501, 37.268559, 30.083658>,  <33.185101, 37.442490, 30.248898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.178501, 37.268559, 30.083658>,  <33.167500, 36.978672, 29.808258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.178501, 37.268559, 30.083658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156698, -0.677118, 0.718997,
		0.987264, -0.127658, 0.094941,
		0.027499, 0.724716, 0.688498,
		33.186752, 37.485973, 30.290207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.722912, 36.698635, 30.155117>,  <33.167500, 36.978672, 29.808258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.722912, 36.698635, 30.155117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.535217, 36.954067, 30.399094>,  <33.422600, 37.107327, 30.545481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.535217, 36.954067, 30.399094>,  <33.722912, 36.698635, 30.155117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.535217, 36.954067, 30.399094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095724, -0.649853, 0.754008,
		0.877868, 0.412195, 0.243808,
		-0.469238, 0.638581, 0.609943,
		33.394447, 37.145641, 30.582077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.267906, 36.910351, 30.707176>,  <33.722912, 36.698635, 30.155117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.267906, 36.910351, 30.707176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.877750, 36.913326, 30.795322>,  <33.643658, 36.915112, 30.848211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.877750, 36.913326, 30.795322>,  <34.267906, 36.910351, 30.707176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.877750, 36.913326, 30.795322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123404, -0.809832, 0.573536,
		0.182724, 0.586614, 0.788984,
		-0.975389, 0.007435, 0.220367,
		33.585133, 36.915558, 30.861433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.085285, 36.789291, 31.476606>,  <34.267906, 36.910351, 30.707176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.085285, 36.789291, 31.476606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.058064, 36.946175, 31.843548>,  <34.041729, 37.040306, 32.063713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.058064, 36.946175, 31.843548>,  <34.085285, 36.789291, 31.476606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.058064, 36.946175, 31.843548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.772507, 0.602581, -0.200321,
		-0.631348, 0.695031, -0.343994,
		-0.068055, 0.392210, 0.917355,
		34.037647, 37.063839, 32.118755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.950085, 37.558372, 31.487225>,  <34.085285, 36.789291, 31.476606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.950085, 37.558372, 31.487225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.165478, 37.437542, 31.801876>,  <34.294712, 37.365044, 31.990667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.165478, 37.437542, 31.801876>,  <33.950085, 37.558372, 31.487225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.165478, 37.437542, 31.801876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.812414, 0.433898, -0.389508,
		-0.223654, 0.848811, 0.479061,
		0.538482, -0.302080, 0.786629,
		34.327023, 37.346916, 32.037865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.200897, 38.144157, 31.752556>,  <33.950085, 37.558372, 31.487225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.200897, 38.144157, 31.752556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.441502, 37.856041, 31.890751>,  <34.585865, 37.683170, 31.973669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.441502, 37.856041, 31.890751>,  <34.200897, 38.144157, 31.752556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.441502, 37.856041, 31.890751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.797363, 0.514826, -0.314906,
		0.048958, 0.464899, 0.884009,
		0.601510, -0.720293, 0.345489,
		34.621956, 37.639954, 31.994398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.757378, 38.509453, 32.118988>,  <34.200897, 38.144157, 31.752556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.757378, 38.509453, 32.118988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.925346, 38.157433, 32.030296>,  <35.026127, 37.946220, 31.977081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.925346, 38.157433, 32.030296>,  <34.757378, 38.509453, 32.118988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.925346, 38.157433, 32.030296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.828243, 0.471500, -0.302822,
		0.371047, -0.056486, 0.926895,
		0.419925, -0.880055, -0.221733,
		35.051323, 37.893417, 31.963776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.462975, 38.512032, 32.465626>,  <34.757378, 38.509453, 32.118988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.462975, 38.512032, 32.465626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.443909, 38.262291, 32.153751>,  <35.432468, 38.112446, 31.966627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.443909, 38.262291, 32.153751>,  <35.462975, 38.512032, 32.465626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.443909, 38.262291, 32.153751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.836298, 0.401887, -0.372952,
		0.546199, -0.669828, 0.502987,
		-0.047669, -0.624353, -0.779686,
		35.429607, 38.074986, 31.919846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.118599, 38.258915, 32.513779>,  <35.462975, 38.512032, 32.465626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.118599, 38.258915, 32.513779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.996185, 38.141975, 32.151371>,  <35.922737, 38.071812, 31.933926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.996185, 38.141975, 32.151371>,  <36.118599, 38.258915, 32.513779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.996185, 38.141975, 32.151371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.872855, 0.293794, -0.389628,
		0.380092, -0.910063, 0.165270,
		-0.306031, -0.292352, -0.906022,
		35.904377, 38.054272, 31.879564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.714008, 37.903095, 32.153004>,  <36.118599, 38.258915, 32.513779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.714008, 37.903095, 32.153004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.472931, 37.963352, 31.839556>,  <36.328285, 37.999508, 31.651485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.472931, 37.963352, 31.839556>,  <36.714008, 37.903095, 32.153004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.472931, 37.963352, 31.839556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.771466, 0.360996, -0.523949,
		0.203957, -0.920320, -0.333785,
		-0.602696, 0.150641, -0.783623,
		36.292122, 38.008545, 31.604469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.077229, 37.656330, 31.520155>,  <36.714008, 37.903095, 32.153004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.077229, 37.656330, 31.520155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.806408, 37.924091, 31.397846>,  <36.643917, 38.084747, 31.324461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.806408, 37.924091, 31.397846>,  <37.077229, 37.656330, 31.520155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.806408, 37.924091, 31.397846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.684742, 0.420746, -0.595064,
		-0.269687, -0.612264, -0.743237,
		-0.677050, 0.669407, -0.305774,
		36.603294, 38.124912, 31.306114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.042244, 37.672363, 30.762623>,  <37.077229, 37.656330, 31.520155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.042244, 37.672363, 30.762623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.888859, 38.027740, 30.863522>,  <36.796829, 38.240967, 30.924061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.888859, 38.027740, 30.863522>,  <37.042244, 37.672363, 30.762623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.888859, 38.027740, 30.863522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558414, 0.440581, -0.702895,
		-0.735617, -0.128675, -0.665065,
		-0.383460, 0.888443, 0.252245,
		36.773819, 38.294273, 30.939196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.059742, 37.949783, 30.180593>,  <37.042244, 37.672363, 30.762623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.059742, 37.949783, 30.180593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.006397, 38.267166, 30.418125>,  <36.974388, 38.457596, 30.560644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.006397, 38.267166, 30.418125>,  <37.059742, 37.949783, 30.180593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.006397, 38.267166, 30.418125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495239, 0.572365, -0.653557,
		-0.858459, 0.206928, -0.469285,
		-0.133364, 0.793460, 0.593831,
		36.966389, 38.505203, 30.596275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.869942, 38.501663, 29.794712>,  <37.059742, 37.949783, 30.180593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.869942, 38.501663, 29.794712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.983192, 38.694099, 30.126591>,  <37.051144, 38.809559, 30.325718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.983192, 38.694099, 30.126591>,  <36.869942, 38.501663, 29.794712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.983192, 38.694099, 30.126591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569759, 0.611526, -0.549008,
		-0.771502, 0.628164, -0.100967,
		0.283123, 0.481088, 0.829696,
		37.068130, 38.838425, 30.375500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.667419, 39.258987, 29.711180>,  <36.869942, 38.501663, 29.794712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.667419, 39.258987, 29.711180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.945415, 39.266376, 29.998692>,  <37.112213, 39.270809, 30.171198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.945415, 39.266376, 29.998692>,  <36.667419, 39.258987, 29.711180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.945415, 39.266376, 29.998692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389946, 0.830205, -0.398374,
		-0.604093, 0.557152, 0.569784,
		0.694992, 0.018470, 0.718780,
		37.153912, 39.271919, 30.214325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.684383, 39.938633, 29.950520>,  <36.667419, 39.258987, 29.711180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.684383, 39.938633, 29.950520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.045872, 39.806133, 30.059006>,  <37.262764, 39.726635, 30.124098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.045872, 39.806133, 30.059006>,  <36.684383, 39.938633, 29.950520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.045872, 39.806133, 30.059006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417137, 0.823857, -0.383739,
		-0.096331, 0.459929, 0.882715,
		0.903724, -0.331247, 0.271217,
		37.316990, 39.706760, 30.140371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.078548, 40.539368, 30.317047>,  <36.684383, 39.938633, 29.950520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.078548, 40.539368, 30.317047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.366764, 40.283115, 30.210907>,  <37.539692, 40.129364, 30.147223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.366764, 40.283115, 30.210907>,  <37.078548, 40.539368, 30.317047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.366764, 40.283115, 30.210907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471047, 0.733041, -0.490679,
		0.508859, 0.228560, 0.829953,
		0.720540, -0.640633, -0.265352,
		37.582928, 40.090927, 30.131302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.677502, 40.958649, 30.385237>,  <37.078548, 40.539368, 30.317047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.677502, 40.958649, 30.385237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.776321, 40.636032, 30.170403>,  <37.835613, 40.442463, 30.041502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.776321, 40.636032, 30.170403>,  <37.677502, 40.958649, 30.385237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.776321, 40.636032, 30.170403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428334, 0.588071, -0.686078,
		0.869193, -0.060557, 0.490751,
		0.247050, -0.806539, -0.537086,
		37.850437, 40.394070, 30.009277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.399525, 41.046143, 30.207594>,  <37.677502, 40.958649, 30.385237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.399525, 41.046143, 30.207594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.221432, 40.825073, 29.925795>,  <38.114574, 40.692432, 29.756716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.221432, 40.825073, 29.925795>,  <38.399525, 41.046143, 30.207594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.221432, 40.825073, 29.925795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510018, 0.490153, -0.706847,
		0.735967, -0.674020, 0.063640,
		-0.445235, -0.552674, -0.704498,
		38.087860, 40.659271, 29.714445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.991108, 40.842426, 29.661283>,  <38.399525, 41.046143, 30.207594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.991108, 40.842426, 29.661283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.643246, 40.780254, 29.473862>,  <38.434528, 40.742950, 29.361408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.643246, 40.780254, 29.473862>,  <38.991108, 40.842426, 29.661283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.643246, 40.780254, 29.473862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374354, 0.411089, -0.831183,
		0.321808, -0.898247, -0.299320,
		-0.869654, -0.155429, -0.468554,
		38.382351, 40.733624, 29.333296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.187077, 40.642849, 29.023430>,  <38.991108, 40.842426, 29.661283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.187077, 40.642849, 29.023430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.812378, 40.777481, 28.985006>,  <38.587559, 40.858261, 28.961952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.812378, 40.777481, 28.985006>,  <39.187077, 40.642849, 29.023430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.812378, 40.777481, 28.985006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264795, 0.501971, -0.823352,
		-0.228904, -0.796705, -0.559342,
		-0.936743, 0.336580, -0.096061,
		38.531357, 40.878456, 28.956188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.089069, 40.470989, 28.330654>,  <39.187077, 40.642849, 29.023430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.089069, 40.470989, 28.330654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.817657, 40.755859, 28.402649>,  <38.654808, 40.926781, 28.445847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.817657, 40.755859, 28.402649>,  <39.089069, 40.470989, 28.330654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.817657, 40.755859, 28.402649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104014, 0.335707, -0.936206,
		-0.727169, -0.616525, -0.301865,
		-0.678533, 0.712178, 0.179988,
		38.614098, 40.969513, 28.456646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.793011, 40.499748, 27.677013>,  <39.089069, 40.470989, 28.330654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.793011, 40.499748, 27.677013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.659557, 40.823895, 27.869680>,  <38.579487, 41.018383, 27.985281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.659557, 40.823895, 27.869680>,  <38.793011, 40.499748, 27.677013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.659557, 40.823895, 27.869680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046056, 0.496319, -0.866918,
		-0.941578, -0.311413, -0.128264,
		-0.333630, 0.810364, 0.481666,
		38.559467, 41.067005, 28.014179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.233376, 40.787189, 27.254652>,  <38.793011, 40.499748, 27.677013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.233376, 40.787189, 27.254652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.409145, 41.047691, 27.502125>,  <38.514606, 41.203995, 27.650608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.409145, 41.047691, 27.502125>,  <38.233376, 40.787189, 27.254652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.409145, 41.047691, 27.502125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173939, 0.614015, -0.769890,
		-0.881276, 0.445925, 0.156537,
		0.439429, 0.651258, 0.618680,
		38.540974, 41.243069, 27.687729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.981506, 41.263885, 26.995958>,  <38.233376, 40.787189, 27.254652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.981506, 41.263885, 26.995958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.310448, 41.412441, 27.168381>,  <38.507812, 41.501575, 27.271833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.310448, 41.412441, 27.168381>,  <37.981506, 41.263885, 26.995958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.310448, 41.412441, 27.168381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195598, 0.526900, -0.827114,
		-0.534302, 0.764493, 0.360655,
		0.822352, 0.371385, 0.431057,
		38.557152, 41.523857, 27.297697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.965378, 41.961857, 26.882906>,  <37.981506, 41.263885, 26.995958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.965378, 41.961857, 26.882906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.350395, 41.864281, 26.930239>,  <38.581406, 41.805737, 26.958637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.350395, 41.864281, 26.930239>,  <37.965378, 41.961857, 26.882906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.350395, 41.864281, 26.930239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256927, 0.681292, -0.685442,
		0.086590, 0.690170, 0.718448,
		0.962544, -0.243941, 0.118330,
		38.639160, 41.791100, 26.965738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.232986, 42.522736, 26.676178>,  <37.965378, 41.961857, 26.882906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.232986, 42.522736, 26.676178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.545998, 42.274120, 26.661552>,  <38.733803, 42.124950, 26.652777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.545998, 42.274120, 26.661552>,  <38.232986, 42.522736, 26.676178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.545998, 42.274120, 26.661552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334676, 0.469429, -0.817085,
		0.525017, 0.627154, 0.575356,
		0.782527, -0.621542, -0.036565,
		38.780754, 42.087658, 26.650583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.754837, 42.979786, 26.527525>,  <38.232986, 42.522736, 26.676178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.754837, 42.979786, 26.527525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.885315, 42.615253, 26.427067>,  <38.963600, 42.396534, 26.366793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.885315, 42.615253, 26.427067>,  <38.754837, 42.979786, 26.527525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.885315, 42.615253, 26.427067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445569, 0.382536, -0.809404,
		0.833707, 0.152120, 0.530841,
		0.326192, -0.911332, -0.251143,
		38.983173, 42.341854, 26.351725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.401615, 43.190365, 26.187859>,  <38.754837, 42.979786, 26.527525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.401615, 43.190365, 26.187859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.357445, 42.803265, 26.097286>,  <39.330944, 42.571007, 26.042944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.357445, 42.803265, 26.097286>,  <39.401615, 43.190365, 26.187859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.357445, 42.803265, 26.097286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351660, 0.175042, -0.919617,
		0.929592, -0.181174, 0.320990,
		-0.110424, -0.967748, -0.226430,
		39.324318, 42.512939, 26.029358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.110195, 42.837017, 25.971119>,  <39.401615, 43.190365, 26.187859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.110195, 42.837017, 25.971119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.804218, 42.649139, 25.794825>,  <39.620632, 42.536411, 25.689049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.804218, 42.649139, 25.794825>,  <40.110195, 42.837017, 25.971119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.804218, 42.649139, 25.794825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427380, 0.141799, -0.892883,
		0.481882, -0.871364, 0.092272,
		-0.764942, -0.469699, -0.440734,
		39.574734, 42.508228, 25.662605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.427761, 42.132950, 25.857994>,  <40.110195, 42.837017, 25.971119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.427761, 42.132950, 25.857994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.120537, 42.159748, 25.603249>,  <39.936203, 42.175827, 25.450401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.120537, 42.159748, 25.603249>,  <40.427761, 42.132950, 25.857994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.120537, 42.159748, 25.603249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.616293, -0.192861, -0.763537,
		-0.173976, -0.978937, 0.106842,
		-0.768060, 0.066991, -0.636865,
		39.890118, 42.179848, 25.412189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.632439, 41.597160, 25.327431>,  <40.427761, 42.132950, 25.857994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.632439, 41.597160, 25.327431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.328648, 41.783157, 25.145452>,  <40.146374, 41.894756, 25.036266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.328648, 41.783157, 25.145452>,  <40.632439, 41.597160, 25.327431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.328648, 41.783157, 25.145452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526847, 0.029418, -0.849451,
		-0.381601, -0.884828, -0.267320,
		-0.759482, 0.464988, -0.454943,
		40.100803, 41.922653, 25.008970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.508434, 41.265587, 24.722502>,  <40.632439, 41.597160, 25.327431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.508434, 41.265587, 24.722502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.351250, 41.624279, 24.641062>,  <40.256939, 41.839493, 24.592197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.351250, 41.624279, 24.641062>,  <40.508434, 41.265587, 24.722502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.351250, 41.624279, 24.641062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420439, -0.021699, -0.907061,
		-0.817808, -0.442043, -0.368494,
		-0.392964, 0.896731, -0.203598,
		40.233360, 41.893299, 24.579983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.143871, 41.216709, 24.050486>,  <40.508434, 41.265587, 24.722502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.143871, 41.216709, 24.050486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.263985, 41.590492, 24.127033>,  <40.336052, 41.814762, 24.172962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.263985, 41.590492, 24.127033>,  <40.143871, 41.216709, 24.050486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.263985, 41.590492, 24.127033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434374, 0.044652, -0.899625,
		-0.849204, 0.353271, -0.392494,
		0.300285, 0.934455, 0.191370,
		40.354069, 41.870831, 24.184444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.002342, 41.612339, 23.401121>,  <40.143871, 41.216709, 24.050486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.002342, 41.612339, 23.401121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.276203, 41.814548, 23.611147>,  <40.440521, 41.935875, 23.737162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.276203, 41.814548, 23.611147>,  <40.002342, 41.612339, 23.401121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.276203, 41.814548, 23.611147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578434, 0.061450, -0.813411,
		-0.443463, 0.860622, -0.250340,
		0.684656, 0.505523, 0.525064,
		40.481602, 41.966206, 23.768665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.151749, 42.097984, 22.941555>,  <40.002342, 41.612339, 23.401121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.151749, 42.097984, 22.941555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.455647, 42.107658, 23.201462>,  <40.637985, 42.113461, 23.357407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.455647, 42.107658, 23.201462>,  <40.151749, 42.097984, 22.941555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.455647, 42.107658, 23.201462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638605, 0.160272, -0.752660,
		-0.122340, 0.986777, 0.106324,
		0.759748, 0.024181, 0.649768,
		40.683571, 42.114914, 23.396393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.617725, 42.595936, 22.704733>,  <40.151749, 42.097984, 22.941555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.617725, 42.595936, 22.704733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.835453, 42.360909, 22.944225>,  <40.966091, 42.219891, 23.087921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.835453, 42.360909, 22.944225>,  <40.617725, 42.595936, 22.704733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.835453, 42.360909, 22.944225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.722557, -0.034209, -0.690464,
		0.426180, 0.808448, 0.405934,
		0.544318, -0.587573, 0.598729,
		40.998749, 42.184635, 23.123844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.291355, 42.912552, 22.653381>,  <40.617725, 42.595936, 22.704733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.291355, 42.912552, 22.653381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.358189, 42.544567, 22.795233>,  <41.398289, 42.323776, 22.880344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.358189, 42.544567, 22.795233>,  <41.291355, 42.912552, 22.653381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.358189, 42.544567, 22.795233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.861282, -0.038876, -0.506637,
		0.479871, 0.390086, 0.785847,
		0.167081, -0.919957, 0.354630,
		41.408314, 42.268581, 22.901621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.017662, 42.871292, 22.925150>,  <41.291355, 42.912552, 22.653381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.017662, 42.871292, 22.925150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.872154, 42.516159, 22.812420>,  <41.784851, 42.303078, 22.744781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.872154, 42.516159, 22.812420>,  <42.017662, 42.871292, 22.925150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.872154, 42.516159, 22.812420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.773115, -0.119005, -0.623001,
		0.519584, -0.444509, 0.729688,
		-0.363766, -0.887835, -0.281823,
		41.763023, 42.249809, 22.727873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.708652, 42.433495, 22.868296>,  <42.017662, 42.871292, 22.925150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.708652, 42.433495, 22.868296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.413280, 42.234692, 22.685993>,  <42.236057, 42.115410, 22.576612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.413280, 42.234692, 22.685993>,  <42.708652, 42.433495, 22.868296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.413280, 42.234692, 22.685993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609132, -0.201683, -0.766995,
		0.289281, -0.843986, 0.451669,
		-0.738427, -0.497003, -0.455755,
		42.191753, 42.085590, 22.549267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.126537, 41.920704, 22.508116>,  <42.708652, 42.433495, 22.868296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.126537, 41.920704, 22.508116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.773735, 41.926064, 22.319700>,  <42.562054, 41.929279, 22.206650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.773735, 41.926064, 22.319700>,  <43.126537, 41.920704, 22.508116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.773735, 41.926064, 22.319700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456248, -0.225789, -0.860731,
		-0.117886, -0.974084, 0.193036,
		-0.882010, 0.013395, -0.471041,
		42.509132, 41.930080, 22.178389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.027237, 41.284214, 22.232735>,  <43.126537, 41.920704, 22.508116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.027237, 41.284214, 22.232735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.828857, 41.566090, 22.029779>,  <42.709827, 41.735214, 21.908007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.828857, 41.566090, 22.029779>,  <43.027237, 41.284214, 22.232735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.828857, 41.566090, 22.029779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589356, -0.155958, -0.792677,
		-0.637725, -0.692160, -0.337967,
		-0.495951, 0.704692, -0.507387,
		42.680073, 41.777496, 21.877563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.406502, 41.399574, 21.596609>,  <43.027237, 41.284214, 22.232735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.406502, 41.399574, 21.596609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.637371, 41.086269, 21.689024>,  <43.775890, 40.898289, 21.744473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.637371, 41.086269, 21.689024>,  <43.406502, 41.399574, 21.596609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.637371, 41.086269, 21.689024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.647768, -0.266847, 0.713575,
		-0.497264, -0.561512, -0.661388,
		0.577170, -0.783261, 0.231036,
		43.810524, 40.851292, 21.758335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.969910, 40.786983, 21.638182>,  <43.406502, 41.399574, 21.596609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.969910, 40.786983, 21.638182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.297428, 40.688961, 21.845844>,  <43.493938, 40.630146, 21.970442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.297428, 40.688961, 21.845844>,  <42.969910, 40.786983, 21.638182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.297428, 40.688961, 21.845844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569554, -0.460188, 0.681054,
		0.072013, -0.853331, -0.516372,
		0.818793, -0.245057, 0.519158,
		43.543068, 40.615444, 22.001591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.723671, 40.222900, 21.890131>,  <42.969910, 40.786983, 21.638182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.723671, 40.222900, 21.890131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.053677, 40.284531, 22.107615>,  <43.251678, 40.321507, 22.238104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.053677, 40.284531, 22.107615>,  <42.723671, 40.222900, 21.890131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.053677, 40.284531, 22.107615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439172, -0.430688, 0.788439,
		0.355645, -0.889252, -0.287658,
		0.825012, 0.154073, 0.543707,
		43.301182, 40.330753, 22.270727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.910973, 39.528591, 22.342512>,  <42.723671, 40.222900, 21.890131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.910973, 39.528591, 22.342512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.056213, 39.862656, 22.507757>,  <43.143356, 40.063095, 22.606905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.056213, 39.862656, 22.507757>,  <42.910973, 39.528591, 22.342512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.056213, 39.862656, 22.507757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434347, -0.240535, 0.868036,
		0.824317, -0.494621, 0.275410,
		0.363103, 0.835160, 0.413114,
		43.165146, 40.113205, 22.631691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.208279, 39.225563, 22.860641>,  <42.910973, 39.528591, 22.342512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.208279, 39.225563, 22.860641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.146385, 39.612759, 22.939686>,  <43.109249, 39.845078, 22.987112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.146385, 39.612759, 22.939686>,  <43.208279, 39.225563, 22.860641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.146385, 39.612759, 22.939686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384376, -0.243243, 0.890555,
		0.910118, 0.061838, 0.409710,
		-0.154729, 0.967992, 0.197611,
		43.099968, 39.903156, 22.998970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.351147, 39.227371, 23.547325>,  <43.208279, 39.225563, 22.860641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.351147, 39.227371, 23.547325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.169899, 39.575191, 23.468784>,  <43.061150, 39.783886, 23.421659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.169899, 39.575191, 23.468784>,  <43.351147, 39.227371, 23.547325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.169899, 39.575191, 23.468784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523671, -0.081395, 0.848023,
		0.721421, 0.487082, 0.492243,
		-0.453123, 0.869555, -0.196350,
		43.033962, 39.836060, 23.409880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.346252, 39.584488, 24.111765>,  <43.351147, 39.227371, 23.547325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.346252, 39.584488, 24.111765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.052345, 39.766598, 23.910629>,  <42.875999, 39.875862, 23.789948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.052345, 39.766598, 23.910629>,  <43.346252, 39.584488, 24.111765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.052345, 39.766598, 23.910629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.641194, -0.224284, 0.733871,
		0.221332, 0.861641, 0.456713,
		-0.734767, 0.455271, -0.502838,
		42.831917, 39.903179, 23.759777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.994129, 39.956635, 24.563429>,  <43.346252, 39.584488, 24.111765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.994129, 39.956635, 24.563429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.729473, 39.933094, 24.264425>,  <42.570679, 39.918968, 24.085024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.729473, 39.933094, 24.264425>,  <42.994129, 39.956635, 24.563429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.729473, 39.933094, 24.264425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.733792, -0.154219, 0.661639,
		-0.154219, 0.986282, 0.058852,
		-0.661639, -0.058852, -0.747509,
		42.530983, 39.915440, 24.040173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.406349, 40.322353, 24.807491>,  <42.994129, 39.956635, 24.563429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.406349, 40.322353, 24.807491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.242970, 40.113674, 24.507891>,  <42.144943, 39.988468, 24.328131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.242970, 40.113674, 24.507891>,  <42.406349, 40.322353, 24.807491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.242970, 40.113674, 24.507891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.782488, -0.222378, 0.581601,
		-0.469981, 0.823638, -0.317392,
		-0.408448, -0.521697, -0.749001,
		42.120434, 39.957165, 24.283190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.626675, 40.536201, 24.785172>,  <42.406349, 40.322353, 24.807491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.626675, 40.536201, 24.785172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.657333, 40.173115, 24.620163>,  <41.675728, 39.955261, 24.521158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.657333, 40.173115, 24.620163>,  <41.626675, 40.536201, 24.785172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.657333, 40.173115, 24.620163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.814660, -0.295552, 0.498977,
		-0.574852, 0.297820, -0.762134,
		0.076645, -0.907718, -0.412521,
		41.680328, 39.900799, 24.496407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.951237, 40.282619, 24.626816>,  <41.626675, 40.536201, 24.785172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.951237, 40.282619, 24.626816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.166199, 39.945293, 24.625668>,  <41.295177, 39.742897, 24.624979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.166199, 39.945293, 24.625668>,  <40.951237, 40.282619, 24.626816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.166199, 39.945293, 24.625668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.705800, -0.451631, 0.545780,
		-0.461568, -0.291272, -0.837924,
		0.537403, -0.843321, -0.002879,
		41.327419, 39.692299, 24.624805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.511448, 39.725021, 24.390806>,  <40.951237, 40.282619, 24.626816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.511448, 39.725021, 24.390806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.812744, 39.619255, 24.631708>,  <40.993523, 39.555794, 24.776249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.812744, 39.619255, 24.631708>,  <40.511448, 39.725021, 24.390806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.812744, 39.619255, 24.631708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.655380, -0.379255, 0.653179,
		0.055696, -0.886707, -0.458964,
		0.753243, -0.264416, 0.602254,
		41.038715, 39.539928, 24.812384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.284008, 39.145405, 24.738050>,  <40.511448, 39.725021, 24.390806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.284008, 39.145405, 24.738050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.609734, 39.262520, 24.938519>,  <40.805168, 39.332790, 25.058800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.609734, 39.262520, 24.938519>,  <40.284008, 39.145405, 24.738050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.609734, 39.262520, 24.938519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410288, -0.320391, 0.853823,
		0.410558, -0.900902, -0.140771,
		0.814313, 0.292787, 0.501168,
		40.854027, 39.350357, 25.088869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.548759, 38.570770, 25.176849>,  <40.284008, 39.145405, 24.738050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.548759, 38.570770, 25.176849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.739307, 38.869186, 25.362967>,  <40.853638, 39.048237, 25.474636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.739307, 38.869186, 25.362967>,  <40.548759, 38.570770, 25.176849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.739307, 38.869186, 25.362967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344590, -0.328446, 0.879421,
		0.808905, -0.579266, 0.100614,
		0.476372, 0.746039, 0.465291,
		40.882217, 39.092999, 25.502554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.070160, 38.251522, 25.743734>,  <40.548759, 38.570770, 25.176849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.070160, 38.251522, 25.743734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.949600, 38.620163, 25.841555>,  <40.877266, 38.841347, 25.900248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.949600, 38.620163, 25.841555>,  <41.070160, 38.251522, 25.743734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.949600, 38.620163, 25.841555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188147, -0.308918, 0.932293,
		0.934752, 0.234978, 0.266504,
		-0.301397, 0.921605, 0.244551,
		40.859180, 38.896645, 25.914921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.181561, 38.241421, 26.455379>,  <41.070160, 38.251522, 25.743734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.181561, 38.241421, 26.455379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.943520, 38.560387, 26.415421>,  <40.800697, 38.751766, 26.391445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.943520, 38.560387, 26.415421>,  <41.181561, 38.241421, 26.455379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.943520, 38.560387, 26.415421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247750, -0.063783, 0.966722,
		0.764510, 0.600047, 0.235517,
		-0.595100, 0.797418, -0.099899,
		40.764988, 38.799614, 26.385450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.366821, 38.753445, 26.983278>,  <41.181561, 38.241421, 26.455379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.366821, 38.753445, 26.983278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.983902, 38.769657, 26.868784>,  <40.754150, 38.779385, 26.800087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.983902, 38.769657, 26.868784>,  <41.366821, 38.753445, 26.983278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.983902, 38.769657, 26.868784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283197, 0.067449, 0.956687,
		0.058078, 0.996899, -0.053092,
		-0.957302, 0.040527, -0.286236,
		40.696712, 38.781815, 26.782913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.151875, 39.342361, 27.331291>,  <41.366821, 38.753445, 26.983278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.151875, 39.342361, 27.331291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.812050, 39.165493, 27.216244>,  <40.608154, 39.059372, 27.147215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.812050, 39.165493, 27.216244>,  <41.151875, 39.342361, 27.331291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.812050, 39.165493, 27.216244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360760, 0.089266, 0.928377,
		-0.384827, 0.892477, -0.235355,
		-0.849565, -0.442171, -0.287618,
		40.557182, 39.032841, 27.129959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.664055, 39.710518, 27.683941>,  <41.151875, 39.342361, 27.331291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.664055, 39.710518, 27.683941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.464462, 39.382832, 27.570869>,  <40.344707, 39.186222, 27.503027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.464462, 39.382832, 27.570869>,  <40.664055, 39.710518, 27.683941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.464462, 39.382832, 27.570869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374636, -0.090224, 0.922772,
		-0.781450, 0.566349, -0.261887,
		-0.498982, -0.819212, -0.282680,
		40.314766, 39.137070, 27.486065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.001183, 39.732937, 27.971552>,  <40.664055, 39.710518, 27.683941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.001183, 39.732937, 27.971552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.025433, 39.343094, 27.885321>,  <40.039982, 39.109188, 27.833582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.025433, 39.343094, 27.885321>,  <40.001183, 39.732937, 27.971552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.025433, 39.343094, 27.885321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345314, -0.223118, 0.911579,
		-0.936527, 0.019178, -0.350071,
		0.060625, -0.974603, -0.215578,
		40.043621, 39.050713, 27.820648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.358433, 39.400131, 28.015017>,  <40.001183, 39.732937, 27.971552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.358433, 39.400131, 28.015017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.654766, 39.136337, 28.066002>,  <39.832565, 38.978062, 28.096594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.654766, 39.136337, 28.066002>,  <39.358433, 39.400131, 28.015017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.654766, 39.136337, 28.066002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427589, -0.316686, 0.846686,
		-0.518009, -0.681755, -0.516600,
		0.740833, -0.659484, 0.127465,
		39.877018, 38.938492, 28.104242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.031811, 38.985867, 28.363813>,  <39.358433, 39.400131, 28.015017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.031811, 38.985867, 28.363813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.405941, 38.872555, 28.448582>,  <39.630421, 38.804569, 28.499443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.405941, 38.872555, 28.448582>,  <39.031811, 38.985867, 28.363813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.405941, 38.872555, 28.448582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302028, -0.327467, 0.895290,
		-0.184218, -0.901398, -0.391848,
		0.935330, -0.283278, 0.211922,
		39.686539, 38.787571, 28.512159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.056889, 38.259800, 28.660778>,  <39.031811, 38.985867, 28.363813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.056889, 38.259800, 28.660778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.385513, 38.452877, 28.782139>,  <39.582687, 38.568722, 28.854956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.385513, 38.452877, 28.782139>,  <39.056889, 38.259800, 28.660778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.385513, 38.452877, 28.782139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108582, -0.389949, 0.914412,
		0.559690, -0.784186, -0.267954,
		0.821557, 0.482693, 0.303400,
		39.631981, 38.597687, 28.873159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.369427, 37.764080, 29.063036>,  <39.056889, 38.259800, 28.660778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.369427, 37.764080, 29.063036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.583363, 38.081303, 29.179655>,  <39.711723, 38.271637, 29.249626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.583363, 38.081303, 29.179655>,  <39.369427, 37.764080, 29.063036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.583363, 38.081303, 29.179655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081245, -0.295181, 0.951981,
		0.841038, -0.532844, -0.093442,
		0.534840, 0.793061, 0.291549,
		39.743816, 38.319221, 29.267120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.851902, 37.554520, 29.563240>,  <39.369427, 37.764080, 29.063036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.851902, 37.554520, 29.563240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.827156, 37.946358, 29.639729>,  <39.812309, 38.181461, 29.685621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.827156, 37.946358, 29.639729>,  <39.851902, 37.554520, 29.563240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.827156, 37.946358, 29.639729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034390, -0.193569, 0.980484,
		0.997492, 0.054085, 0.045664,
		-0.061869, 0.979595, 0.191223,
		39.808594, 38.240234, 29.697096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.421589, 37.670200, 29.975670>,  <39.851902, 37.554520, 29.563240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.421589, 37.670200, 29.975670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.193909, 37.990170, 30.051706>,  <40.057301, 38.182152, 30.097328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.193909, 37.990170, 30.051706>,  <40.421589, 37.670200, 29.975670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.193909, 37.990170, 30.051706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145656, -0.129439, 0.980831,
		0.809195, 0.585976, -0.042837,
		-0.569199, 0.799924, 0.190093,
		40.023148, 38.230148, 30.108734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.825863, 38.188675, 30.362041>,  <40.421589, 37.670200, 29.975670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.825863, 38.188675, 30.362041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.443726, 38.270935, 30.446915>,  <40.214443, 38.320293, 30.497839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.443726, 38.270935, 30.446915>,  <40.825863, 38.188675, 30.362041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.443726, 38.270935, 30.446915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199319, -0.081617, 0.976530,
		0.218146, 0.975215, 0.036981,
		-0.955345, 0.205655, 0.212183,
		40.157124, 38.332630, 30.510571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.769608, 38.777943, 30.909330>,  <40.825863, 38.188675, 30.362041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.769608, 38.777943, 30.909330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.438061, 38.554283, 30.916668>,  <40.239132, 38.420086, 30.921070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.438061, 38.554283, 30.916668>,  <40.769608, 38.777943, 30.909330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.438061, 38.554283, 30.916668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141206, -0.177364, 0.973963,
		-0.541339, 0.809872, 0.225966,
		-0.828863, -0.559151, 0.018345,
		40.189404, 38.386539, 30.922171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.534245, 38.914585, 31.538206>,  <40.769608, 38.777943, 30.909330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.534245, 38.914585, 31.538206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.330200, 38.583630, 31.444216>,  <40.207775, 38.385056, 31.387821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.330200, 38.583630, 31.444216>,  <40.534245, 38.914585, 31.538206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.330200, 38.583630, 31.444216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100550, -0.328687, 0.939071,
		-0.854212, 0.455402, 0.250861,
		-0.510110, -0.827389, -0.234978,
		40.177166, 38.335411, 31.373722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.162540, 38.672710, 32.208073>,  <40.534245, 38.914585, 31.538206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.162540, 38.672710, 32.208073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.092911, 38.350613, 31.981348>,  <40.051132, 38.157352, 31.845312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.092911, 38.350613, 31.981348>,  <40.162540, 38.672710, 32.208073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.092911, 38.350613, 31.981348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041250, -0.569134, 0.821209,
		-0.983868, 0.166332, 0.065855,
		-0.174073, -0.805246, -0.566814,
		40.040688, 38.109039, 31.811304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.665401, 38.345921, 32.547970>,  <40.162540, 38.672710, 32.208073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.665401, 38.345921, 32.547970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.848446, 38.070614, 32.322800>,  <39.958271, 37.905430, 32.187698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.848446, 38.070614, 32.322800>,  <39.665401, 38.345921, 32.547970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.848446, 38.070614, 32.322800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035793, -0.618331, 0.785102,
		-0.888431, -0.379420, -0.258321,
		0.457612, -0.688263, -0.562926,
		39.985729, 37.864136, 32.153923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.315598, 37.726936, 32.660851>,  <39.665401, 38.345921, 32.547970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.315598, 37.726936, 32.660851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.663292, 37.596794, 32.511951>,  <39.871910, 37.518707, 32.422611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.663292, 37.596794, 32.511951>,  <39.315598, 37.726936, 32.660851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.663292, 37.596794, 32.511951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002212, -0.750371, 0.661013,
		-0.494386, -0.575403, -0.651533,
		0.869240, -0.325354, -0.372246,
		39.924065, 37.499187, 32.400276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.287476, 36.948284, 32.713634>,  <39.315598, 37.726936, 32.660851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.287476, 36.948284, 32.713634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.669384, 37.064053, 32.686371>,  <39.898529, 37.133514, 32.670013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.669384, 37.064053, 32.686371>,  <39.287476, 36.948284, 32.713634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.669384, 37.064053, 32.686371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273643, -0.765609, 0.582204,
		0.116323, -0.574522, -0.810181,
		0.954771, 0.289424, -0.068156,
		39.955814, 37.150879, 32.665924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.774445, 36.315273, 32.663269>,  <39.287476, 36.948284, 32.713634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.774445, 36.315273, 32.663269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.032295, 36.603725, 32.764793>,  <40.187004, 36.776798, 32.825710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.032295, 36.603725, 32.764793>,  <39.774445, 36.315273, 32.663269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.032295, 36.603725, 32.764793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556583, -0.670293, 0.490839,
		0.524090, -0.175139, -0.833460,
		0.644627, 0.721134, 0.253814,
		40.225685, 36.820065, 32.840939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.320389, 35.959053, 32.807999>,  <39.774445, 36.315273, 32.663269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.320389, 35.959053, 32.807999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.439732, 36.308125, 32.962616>,  <40.511337, 36.517567, 33.055386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.439732, 36.308125, 32.962616>,  <40.320389, 35.959053, 32.807999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.439732, 36.308125, 32.962616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585415, -0.487187, 0.648026,
		0.753838, 0.032945, -0.656234,
		0.298359, 0.872676, 0.386547,
		40.529240, 36.569927, 33.078579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.123001, 35.999519, 32.851101>,  <40.320389, 35.959053, 32.807999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.123001, 35.999519, 32.851101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.008747, 36.256401, 33.135632>,  <40.940193, 36.410530, 33.306351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.008747, 36.256401, 33.135632>,  <41.123001, 35.999519, 32.851101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.008747, 36.256401, 33.135632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547440, -0.499884, 0.671137,
		0.786588, 0.581109, -0.208785,
		-0.285636, 0.642206, 0.711325,
		40.923058, 36.449062, 33.349030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.733597, 36.222740, 33.260754>,  <41.123001, 35.999519, 32.851101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.733597, 36.222740, 33.260754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.414238, 36.256821, 33.499180>,  <41.222622, 36.277267, 33.642235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.414238, 36.256821, 33.499180>,  <41.733597, 36.222740, 33.260754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.414238, 36.256821, 33.499180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550377, -0.298249, 0.779829,
		0.244220, 0.950678, 0.191230,
		-0.798400, 0.085201, 0.596069,
		41.174717, 36.282379, 33.678001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.938797, 36.495201, 33.869804>,  <41.733597, 36.222740, 33.260754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.938797, 36.495201, 33.869804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.578022, 36.371311, 33.990196>,  <41.361557, 36.296978, 34.062431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.578022, 36.371311, 33.990196>,  <41.938797, 36.495201, 33.869804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.578022, 36.371311, 33.990196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421596, -0.480307, 0.769130,
		-0.093655, 0.820596, 0.563783,
		-0.901934, -0.309721, 0.300977,
		41.307442, 36.278397, 34.080490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.938427, 36.513107, 34.544796>,  <41.938797, 36.495201, 33.869804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.938427, 36.513107, 34.544796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.612675, 36.282879, 34.515129>,  <41.417225, 36.144741, 34.497330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.612675, 36.282879, 34.515129>,  <41.938427, 36.513107, 34.544796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.612675, 36.282879, 34.515129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329504, -0.563805, 0.757332,
		-0.477720, 0.592315, 0.648804,
		-0.814378, -0.575576, -0.074171,
		41.368362, 36.110207, 34.492878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.778786, 36.422523, 35.218357>,  <41.938427, 36.513107, 34.544796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.778786, 36.422523, 35.218357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.608227, 36.113171, 35.030712>,  <41.505890, 35.927559, 34.918125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.608227, 36.113171, 35.030712>,  <41.778786, 36.422523, 35.218357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.608227, 36.113171, 35.030712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257440, -0.600931, 0.756708,
		-0.867127, 0.201891, 0.455335,
		-0.426398, -0.773384, -0.469108,
		41.480309, 35.881157, 34.889980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.944118, 35.812534, 35.709293>,  <41.778786, 36.422523, 35.218357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.944118, 35.812534, 35.709293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.321793, 35.731895, 35.813507>,  <42.548397, 35.683514, 35.876034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.321793, 35.731895, 35.813507>,  <41.944118, 35.812534, 35.709293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.321793, 35.731895, 35.813507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278863, -0.910151, 0.306368,
		0.175359, -0.361920, -0.915567,
		0.944185, -0.201593, 0.260530,
		42.605049, 35.671417, 35.891666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.094646, 35.229343, 35.294830>,  <41.944118, 35.812534, 35.709293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.094646, 35.229343, 35.294830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.279648, 35.272678, 35.646820>,  <42.390648, 35.298679, 35.858013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.279648, 35.272678, 35.646820>,  <42.094646, 35.229343, 35.294830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.279648, 35.272678, 35.646820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304039, -0.912947, 0.272193,
		0.832856, -0.393436, -0.389305,
		0.462505, 0.108334, 0.879973,
		42.418400, 35.305180, 35.910812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.654171, 34.649078, 35.354553>,  <42.094646, 35.229343, 35.294830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.654171, 34.649078, 35.354553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.545940, 34.776096, 35.718082>,  <42.481003, 34.852306, 35.936199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.545940, 34.776096, 35.718082>,  <42.654171, 34.649078, 35.354553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.545940, 34.776096, 35.718082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267465, -0.931665, 0.245894,
		0.924798, -0.176545, 0.337017,
		-0.270575, 0.317542, 0.908821,
		42.464767, 34.871361, 35.990730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.014698, 34.245090, 35.852798>,  <42.654171, 34.649078, 35.354553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.014698, 34.245090, 35.852798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.685257, 34.371853, 36.040947>,  <42.487591, 34.447910, 36.153835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.685257, 34.371853, 36.040947>,  <43.014698, 34.245090, 35.852798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.685257, 34.371853, 36.040947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237269, -0.945794, 0.221761,
		0.515147, 0.071040, 0.854152,
		-0.823606, 0.316903, 0.470368,
		42.438175, 34.466923, 36.182056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.870304, 33.686779, 36.105301>,  <43.014698, 34.245090, 35.852798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.870304, 33.686779, 36.105301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.560017, 33.898781, 36.242332>,  <42.373844, 34.025982, 36.324551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.560017, 33.898781, 36.242332>,  <42.870304, 33.686779, 36.105301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.560017, 33.898781, 36.242332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443759, -0.844068, 0.301044,
		0.448712, 0.081504, 0.889952,
		-0.775716, 0.530006, 0.342576,
		42.327301, 34.057781, 36.345104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.693546, 33.455727, 36.753109>,  <42.870304, 33.686779, 36.105301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.693546, 33.455727, 36.753109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.351234, 33.645546, 36.670708>,  <42.145847, 33.759438, 36.621265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.351234, 33.645546, 36.670708>,  <42.693546, 33.455727, 36.753109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.351234, 33.645546, 36.670708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512371, -0.722447, 0.464271,
		0.071491, 0.502867, 0.861403,
		-0.855784, 0.474549, -0.206006,
		42.094498, 33.787910, 36.608906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.236301, 33.490742, 37.420769>,  <42.693546, 33.455727, 36.753109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.236301, 33.490742, 37.420769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.971661, 33.525887, 37.122890>,  <41.812878, 33.546974, 36.944164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.971661, 33.525887, 37.122890>,  <42.236301, 33.490742, 37.420769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.971661, 33.525887, 37.122890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579853, -0.689638, 0.433785,
		-0.475453, 0.718804, 0.507212,
		-0.661600, 0.087864, -0.744692,
		41.773182, 33.552246, 36.899483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.440052, 33.485840, 37.699413>,  <42.236301, 33.490742, 37.420769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.440052, 33.485840, 37.699413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.494667, 33.350578, 37.326962>,  <41.527435, 33.269421, 37.103489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.494667, 33.350578, 37.326962>,  <41.440052, 33.485840, 37.699413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.494667, 33.350578, 37.326962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521195, -0.823850, 0.222771,
		-0.842445, 0.454886, -0.288728,
		0.136533, -0.338156, -0.931133,
		41.535625, 33.249130, 37.047623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.918343, 33.045181, 37.475040>,  <41.440052, 33.485840, 37.699413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.918343, 33.045181, 37.475040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.201920, 32.936062, 37.214890>,  <41.372066, 32.870590, 37.058800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.201920, 32.936062, 37.214890>,  <40.918343, 33.045181, 37.475040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.201920, 32.936062, 37.214890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337336, -0.940998, 0.026985,
		-0.619364, 0.200264, -0.759133,
		0.708938, -0.272796, -0.650376,
		41.414600, 32.854221, 37.019775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.724129, 32.535358, 36.926804>,  <40.918343, 33.045181, 37.475040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.724129, 32.535358, 36.926804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.115898, 32.507427, 37.002544>,  <41.350960, 32.490669, 37.047989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.115898, 32.507427, 37.002544>,  <40.724129, 32.535358, 36.926804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.115898, 32.507427, 37.002544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107157, -0.974990, 0.194709,
		0.171023, -0.210993, -0.962410,
		0.979422, -0.069829, 0.189356,
		41.409725, 32.486477, 37.059353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.978783, 32.045456, 36.461784>,  <40.724129, 32.535358, 36.926804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.978783, 32.045456, 36.461784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.210922, 32.070801, 36.786545>,  <41.350204, 32.086006, 36.981400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.210922, 32.070801, 36.786545>,  <40.978783, 32.045456, 36.461784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.210922, 32.070801, 36.786545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247920, -0.935900, 0.250254,
		0.775715, -0.346521, -0.527437,
		0.580346, 0.063363, 0.811901,
		41.385025, 32.089809, 37.030113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.440266, 31.464634, 36.573418>,  <40.978783, 32.045456, 36.461784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.440266, 31.464634, 36.573418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.399040, 31.603703, 36.946190>,  <41.374306, 31.687143, 37.169853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.399040, 31.603703, 36.946190>,  <41.440266, 31.464634, 36.573418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.399040, 31.603703, 36.946190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060519, -0.932996, 0.354762,
		0.992832, 0.092964, 0.075119,
		-0.103066, 0.347673, 0.931934,
		41.368122, 31.708004, 37.225769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.556149, 30.839973, 36.843590>,  <41.440266, 31.464634, 36.573418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.556149, 30.839973, 36.843590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.517944, 31.092728, 37.151253>,  <41.495022, 31.244381, 37.335850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.517944, 31.092728, 37.151253>,  <41.556149, 30.839973, 36.843590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.517944, 31.092728, 37.151253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037062, -0.769893, 0.637096,
		0.994738, 0.089356, 0.050114,
		-0.095511, 0.631886, 0.769154,
		41.489292, 31.282293, 37.382000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.172447, 30.760376, 37.214718>,  <41.556149, 30.839973, 36.843590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.172447, 30.760376, 37.214718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.919506, 30.903042, 37.489796>,  <41.767742, 30.988642, 37.654842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.919506, 30.903042, 37.489796>,  <42.172447, 30.760376, 37.214718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.919506, 30.903042, 37.489796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199501, -0.782793, 0.589435,
		0.748552, 0.509926, 0.423845,
		-0.632352, 0.356666, 0.687692,
		41.729801, 31.010042, 37.696102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.531387, 30.639494, 37.863400>,  <42.172447, 30.760376, 37.214718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.531387, 30.639494, 37.863400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.160561, 30.707415, 37.997093>,  <41.938065, 30.748167, 38.077309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.160561, 30.707415, 37.997093>,  <42.531387, 30.639494, 37.863400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.160561, 30.707415, 37.997093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137783, -0.674822, 0.725004,
		0.348653, 0.718180, 0.602211,
		-0.927069, 0.169801, 0.334232,
		41.882439, 30.758354, 38.097363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.504971, 30.619911, 38.622124>,  <42.531387, 30.639494, 37.863400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.504971, 30.619911, 38.622124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.121685, 30.586966, 38.512550>,  <41.891712, 30.567198, 38.446808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.121685, 30.586966, 38.512550>,  <42.504971, 30.619911, 38.622124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.121685, 30.586966, 38.512550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134122, -0.716495, 0.684578,
		-0.252656, 0.692713, 0.675509,
		-0.958215, -0.082362, -0.273935,
		41.834221, 30.562258, 38.430370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.070229, 30.706337, 39.197109>,  <42.504971, 30.619911, 38.622124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.070229, 30.706337, 39.197109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.868336, 30.493393, 38.925274>,  <41.747200, 30.365627, 38.762173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.868336, 30.493393, 38.925274>,  <42.070229, 30.706337, 39.197109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.868336, 30.493393, 38.925274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050209, -0.803989, 0.592520,
		-0.861817, 0.264940, 0.432525,
		-0.504728, -0.532360, -0.679590,
		41.716919, 30.333685, 38.721397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.609680, 30.294344, 39.653786>,  <42.070229, 30.706337, 39.197109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.609680, 30.294344, 39.653786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.597500, 30.114201, 39.296856>,  <41.590191, 30.006115, 39.082699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.597500, 30.114201, 39.296856>,  <41.609680, 30.294344, 39.653786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.597500, 30.114201, 39.296856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011876, -0.892516, 0.450858,
		-0.999466, 0.024326, 0.021827,
		-0.030449, -0.450358, -0.892329,
		41.588364, 29.979094, 39.029156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.975597, 29.882687, 39.644363>,  <41.609680, 30.294344, 39.653786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.975597, 29.882687, 39.644363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.233665, 29.732220, 39.378353>,  <41.388508, 29.641939, 39.218746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.233665, 29.732220, 39.378353>,  <40.975597, 29.882687, 39.644363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.233665, 29.732220, 39.378353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018629, -0.877890, 0.478501,
		-0.763813, -0.296325, -0.573395,
		0.645169, -0.376167, -0.665023,
		41.427216, 29.619370, 39.178844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.720818, 29.248270, 39.423214>,  <40.975597, 29.882687, 39.644363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.720818, 29.248270, 39.423214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.117210, 29.211632, 39.384090>,  <41.355045, 29.189650, 39.360615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.117210, 29.211632, 39.384090>,  <40.720818, 29.248270, 39.423214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.117210, 29.211632, 39.384090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043697, -0.910904, 0.410297,
		-0.126675, -0.402323, -0.906691,
		0.990981, -0.091594, -0.097808,
		41.414505, 29.184155, 39.354748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.887043, 28.435181, 39.403378>,  <40.720818, 29.248270, 39.423214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.887043, 28.435181, 39.403378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.209595, 28.651573, 39.498951>,  <41.403126, 28.781408, 39.556293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.209595, 28.651573, 39.498951>,  <40.887043, 28.435181, 39.403378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.209595, 28.651573, 39.498951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315501, -0.735236, 0.599906,
		0.500211, -0.408368, -0.763560,
		0.806380, 0.540984, 0.238933,
		41.451508, 28.813868, 39.570629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.523216, 28.122187, 39.248856>,  <40.887043, 28.435181, 39.403378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.523216, 28.122187, 39.248856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.576725, 28.378813, 39.550980>,  <41.608829, 28.532789, 39.732254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.576725, 28.378813, 39.550980>,  <41.523216, 28.122187, 39.248856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.576725, 28.378813, 39.550980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254307, -0.758865, 0.599543,
		0.957827, 0.111876, -0.264673,
		0.133776, 0.641567, 0.755312,
		41.616859, 28.571283, 39.777573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.236164, 27.940708, 39.384296>,  <41.523216, 28.122187, 39.248856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.236164, 27.940708, 39.384296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.031998, 28.100222, 39.689045>,  <41.909496, 28.195930, 39.871895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.031998, 28.100222, 39.689045>,  <42.236164, 27.940708, 39.384296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.031998, 28.100222, 39.689045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287196, -0.756048, 0.588141,
		0.810553, 0.519002, 0.271369,
		-0.510414, 0.398783, 0.761872,
		41.878872, 28.219856, 39.917606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.831573, 28.058218, 39.769825>,  <42.236164, 27.940708, 39.384296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.831573, 28.058218, 39.769825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.466148, 27.966982, 39.904518>,  <42.246895, 27.912241, 39.985332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.466148, 27.966982, 39.904518>,  <42.831573, 28.058218, 39.769825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.466148, 27.966982, 39.904518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352666, -0.856654, 0.376526,
		0.202580, 0.462731, 0.863042,
		-0.913558, -0.228089, 0.336730,
		42.192081, 27.898556, 40.005539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.902988, 28.486763, 39.126572>,  <42.831573, 28.058218, 39.769825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.902988, 28.486763, 39.126572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.925953, 28.841974, 39.309048>,  <42.939732, 29.055101, 39.418533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.925953, 28.841974, 39.309048>,  <42.902988, 28.486763, 39.126572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.925953, 28.841974, 39.309048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549386, 0.353432, -0.757139,
		-0.833594, 0.294093, -0.467579,
		0.057412, 0.888028, 0.456190,
		42.943176, 29.108383, 39.445904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.522800, 29.124107, 38.905918>,  <42.902988, 28.486763, 39.126572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.522800, 29.124107, 38.905918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.130455, 29.099873, 38.979919>,  <41.895046, 29.085333, 39.024323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.130455, 29.099873, 38.979919>,  <42.522800, 29.124107, 38.905918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.130455, 29.099873, 38.979919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164661, 0.765159, -0.622430,
		-0.103848, -0.640985, -0.760496,
		-0.980868, -0.060586, 0.185005,
		41.836193, 29.081697, 39.035419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.139713, 29.070801, 38.250870>,  <42.522800, 29.124107, 38.905918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.139713, 29.070801, 38.250870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.909256, 29.238567, 38.531483>,  <41.770981, 29.339228, 38.699852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.909256, 29.238567, 38.531483>,  <42.139713, 29.070801, 38.250870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.909256, 29.238567, 38.531483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212023, 0.752231, -0.623855,
		-0.789370, -0.508171, -0.344466,
		-0.576143, 0.419418, 0.701532,
		41.736412, 29.364393, 38.741943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.584099, 29.350958, 37.915565>,  <42.139713, 29.070801, 38.250870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.584099, 29.350958, 37.915565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.610474, 29.551285, 38.260780>,  <41.626297, 29.671480, 38.467911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.610474, 29.551285, 38.260780>,  <41.584099, 29.350958, 37.915565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.610474, 29.551285, 38.260780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153856, 0.859679, -0.487115,
		-0.985891, -0.100665, 0.133736,
		0.065935, 0.500818, 0.863038,
		41.630253, 29.701530, 38.519691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.034443, 29.718412, 37.851181>,  <41.584099, 29.350958, 37.915565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.034443, 29.718412, 37.851181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.272099, 29.879787, 38.129532>,  <41.414692, 29.976612, 38.296543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.272099, 29.879787, 38.129532>,  <41.034443, 29.718412, 37.851181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.272099, 29.879787, 38.129532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209349, 0.912865, -0.350501,
		-0.776644, 0.062565, 0.626825,
		0.594136, 0.403439, 0.695873,
		41.450340, 30.000820, 38.338295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.701954, 30.279747, 38.005611>,  <41.034443, 29.718412, 37.851181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.701954, 30.279747, 38.005611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.063938, 30.355129, 38.158203>,  <41.281128, 30.400358, 38.249760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.063938, 30.355129, 38.158203>,  <40.701954, 30.279747, 38.005611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.063938, 30.355129, 38.158203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104488, 0.967539, -0.230110,
		-0.412465, 0.168380, 0.895277,
		0.904961, 0.188458, 0.381483,
		41.335426, 30.411667, 38.272648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.649818, 30.820139, 38.399593>,  <40.701954, 30.279747, 38.005611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.649818, 30.820139, 38.399593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.039532, 30.811295, 38.309891>,  <41.273357, 30.805988, 38.256069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.039532, 30.811295, 38.309891>,  <40.649818, 30.820139, 38.399593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.039532, 30.811295, 38.309891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024122, 0.979225, -0.201338,
		0.224052, 0.201568, 0.953505,
		0.974279, -0.022110, -0.224259,
		41.331814, 30.804661, 38.242615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.906948, 31.435589, 38.569988>,  <40.649818, 30.820139, 38.399593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.906948, 31.435589, 38.569988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.176037, 31.313148, 38.300545>,  <41.337490, 31.239685, 38.138878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.176037, 31.313148, 38.300545>,  <40.906948, 31.435589, 38.569988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.176037, 31.313148, 38.300545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211286, 0.951976, -0.221585,
		0.709090, 0.006739, 0.705086,
		0.672718, -0.306098, -0.673613,
		41.377853, 31.221319, 38.098461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.649342, 31.676962, 38.582676>,  <40.906948, 31.435589, 38.569988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.649342, 31.676962, 38.582676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.599388, 31.596151, 38.194122>,  <41.569416, 31.547665, 37.960991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.599388, 31.596151, 38.194122>,  <41.649342, 31.676962, 38.582676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.599388, 31.596151, 38.194122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384514, 0.892681, -0.235093,
		0.914633, -0.402870, -0.033798,
		-0.124883, -0.202029, -0.971385,
		41.561924, 31.535543, 37.902706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.926003, 32.148106, 38.301052>,  <41.649342, 31.676962, 38.582676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.926003, 32.148106, 38.301052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.784969, 31.999489, 37.957508>,  <41.700348, 31.910318, 37.751381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.784969, 31.999489, 37.957508>,  <41.926003, 32.148106, 38.301052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.784969, 31.999489, 37.957508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314748, 0.817242, -0.482752,
		0.881258, -0.440536, -0.171207,
		-0.352586, -0.371542, -0.858859,
		41.679192, 31.888025, 37.699852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.475266, 32.119778, 37.802761>,  <41.926003, 32.148106, 38.301052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.475266, 32.119778, 37.802761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.133461, 32.129822, 37.595234>,  <41.928379, 32.135849, 37.470718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.133461, 32.129822, 37.595234>,  <42.475266, 32.119778, 37.802761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.133461, 32.129822, 37.595234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358113, 0.751976, -0.553432,
		0.376245, -0.658712, -0.651565,
		-0.854514, 0.025108, -0.518821,
		41.877106, 32.137356, 37.439587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.640911, 32.391796, 37.175842>,  <42.475266, 32.119778, 37.802761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.640911, 32.391796, 37.175842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.246231, 32.390930, 37.110825>,  <42.009422, 32.390411, 37.071812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.246231, 32.390930, 37.110825>,  <42.640911, 32.391796, 37.175842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.246231, 32.390930, 37.110825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083261, 0.852080, -0.516746,
		0.139620, -0.523407, -0.840566,
		-0.986698, -0.002161, -0.162547,
		41.950222, 32.390282, 37.062061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.524456, 32.494167, 36.428955>,  <42.640911, 32.391796, 37.175842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.524456, 32.494167, 36.428955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.186459, 32.619732, 36.602135>,  <41.983658, 32.695072, 36.706043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.186459, 32.619732, 36.602135>,  <42.524456, 32.494167, 36.428955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.186459, 32.619732, 36.602135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201081, 0.936681, -0.286698,
		-0.495530, -0.155201, -0.854613,
		-0.844995, 0.313913, 0.432945,
		41.932961, 32.713905, 36.732018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.835102, 32.444771, 36.253345>,  <42.524456, 32.494167, 36.428955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.835102, 32.444771, 36.253345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.537601, 32.588379, 36.478893>,  <41.359100, 32.674541, 36.614223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.537601, 32.588379, 36.478893>,  <41.835102, 32.444771, 36.253345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.537601, 32.588379, 36.478893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345250, 0.928624, -0.135868,
		-0.572400, 0.093624, -0.814612,
		-0.743748, 0.359016, 0.563868,
		41.314476, 32.696083, 36.648052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.614685, 32.994305, 35.797764>,  <41.835102, 32.444771, 36.253345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.614685, 32.994305, 35.797764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.499699, 33.078140, 36.171597>,  <41.430706, 33.128441, 36.395897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.499699, 33.078140, 36.171597>,  <41.614685, 32.994305, 35.797764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.499699, 33.078140, 36.171597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218083, 0.964457, -0.149206,
		-0.932633, 0.160924, -0.322954,
		-0.287464, 0.209585, 0.934579,
		41.413460, 33.141014, 36.451969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.024479, 33.519550, 35.863911>,  <41.614685, 32.994305, 35.797764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.024479, 33.519550, 35.863911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.252731, 33.546143, 36.191315>,  <41.389683, 33.562099, 36.387756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.252731, 33.546143, 36.191315>,  <41.024479, 33.519550, 35.863911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.252731, 33.546143, 36.191315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306583, 0.907406, -0.287438,
		-0.761834, 0.414962, 0.497408,
		0.570628, 0.066483, 0.818513,
		41.423920, 33.566086, 36.436871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.041283, 34.247520, 36.109653>,  <41.024479, 33.519550, 35.863911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.041283, 34.247520, 36.109653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.377689, 34.097836, 36.265934>,  <41.579533, 34.008026, 36.359703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.377689, 34.097836, 36.265934>,  <41.041283, 34.247520, 36.109653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.377689, 34.097836, 36.265934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448007, 0.886575, -0.115217,
		-0.303270, 0.271937, 0.913279,
		0.841021, -0.374214, 0.390701,
		41.629997, 33.985573, 36.383144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.206352, 34.733662, 36.594307>,  <41.041283, 34.247520, 36.109653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.206352, 34.733662, 36.594307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.552917, 34.542248, 36.537270>,  <41.760857, 34.427399, 36.503048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.552917, 34.542248, 36.537270>,  <41.206352, 34.733662, 36.594307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.552917, 34.542248, 36.537270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495965, 0.857835, 0.134675,
		0.057870, -0.187404, 0.980577,
		0.866412, -0.478538, -0.142589,
		41.812840, 34.398685, 36.494492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.713749, 35.014507, 37.014126>,  <41.206352, 34.733662, 36.594307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.713749, 35.014507, 37.014126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.912670, 34.856995, 36.704899>,  <42.032021, 34.762489, 36.519363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.912670, 34.856995, 36.704899>,  <41.713749, 35.014507, 37.014126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.912670, 34.856995, 36.704899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569523, 0.820360, -0.051506,
		0.654474, -0.414664, 0.632232,
		0.497301, -0.393780, -0.773065,
		42.061859, 34.738861, 36.472980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.325058, 35.176285, 37.225620>,  <41.713749, 35.014507, 37.014126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.325058, 35.176285, 37.225620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.338467, 35.099022, 36.833382>,  <42.346512, 35.052666, 36.598038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.338467, 35.099022, 36.833382>,  <42.325058, 35.176285, 37.225620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.338467, 35.099022, 36.833382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587262, 0.797709, -0.137053,
		0.808702, -0.571271, 0.140177,
		0.033526, -0.193156, -0.980595,
		42.348526, 35.041077, 36.539204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.072617, 35.165997, 37.088276>,  <42.325058, 35.176285, 37.225620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.072617, 35.165997, 37.088276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.848099, 35.233780, 36.764244>,  <42.713387, 35.274448, 36.569824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.848099, 35.233780, 36.764244>,  <43.072617, 35.165997, 37.088276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.848099, 35.233780, 36.764244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569489, 0.789316, -0.229483,
		0.600523, -0.590140, -0.539543,
		-0.561297, 0.169454, -0.810081,
		42.679710, 35.284615, 36.521221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.475803, 35.414738, 36.680557>,  <43.072617, 35.165997, 37.088276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.475803, 35.414738, 36.680557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.130695, 35.527782, 36.512867>,  <42.923630, 35.595612, 36.412254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.130695, 35.527782, 36.512867>,  <43.475803, 35.414738, 36.680557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.130695, 35.527782, 36.512867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318496, 0.947780, -0.016540,
		0.392659, -0.147792, -0.907732,
		-0.862774, 0.282614, -0.419225,
		42.871864, 35.612568, 36.387100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.678387, 36.004242, 36.442673>,  <43.475803, 35.414738, 36.680557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.678387, 36.004242, 36.442673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.288841, 35.989170, 36.353077>,  <43.055115, 35.980125, 36.299320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.288841, 35.989170, 36.353077>,  <43.678387, 36.004242, 36.442673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.288841, 35.989170, 36.353077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004449, 0.989120, -0.147043,
		0.227096, -0.142204, -0.963434,
		-0.973862, -0.037679, -0.223992,
		42.996681, 35.977867, 36.285881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.599075, 36.451221, 35.880268>,  <43.678387, 36.004242, 36.442673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.599075, 36.451221, 35.880268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.276096, 36.395512, 36.109573>,  <43.082310, 36.362087, 36.247154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.276096, 36.395512, 36.109573>,  <43.599075, 36.451221, 35.880268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.276096, 36.395512, 36.109573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138037, 0.989361, 0.045940,
		-0.573560, -0.042037, -0.818084,
		-0.807449, -0.139275, 0.573261,
		43.033863, 36.353729, 36.281551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.096489, 36.862827, 35.607006>,  <43.599075, 36.451221, 35.880268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.096489, 36.862827, 35.607006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.056744, 36.851593, 36.004868>,  <43.032898, 36.844852, 36.243584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.056744, 36.851593, 36.004868>,  <43.096489, 36.862827, 35.607006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.056744, 36.851593, 36.004868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139693, 0.990096, 0.014004,
		-0.985197, -0.137555, -0.102301,
		-0.099362, -0.028088, 0.994655,
		43.026936, 36.843166, 36.303265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.569538, 37.355247, 35.753208>,  <43.096489, 36.862827, 35.607006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.569538, 37.355247, 35.753208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.812012, 37.318569, 36.069218>,  <42.957497, 37.296562, 36.258823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.812012, 37.318569, 36.069218>,  <42.569538, 37.355247, 35.753208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.812012, 37.318569, 36.069218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168178, 0.985648, -0.014647,
		-0.777338, 0.141743, 0.612907,
		0.606186, -0.091692, 0.790019,
		42.993866, 37.291061, 36.306225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.316963, 37.754799, 36.431282>,  <42.569538, 37.355247, 35.753208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.316963, 37.754799, 36.431282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.714008, 37.714325, 36.404533>,  <42.952236, 37.690041, 36.388485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.714008, 37.714325, 36.404533>,  <42.316963, 37.754799, 36.431282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.714008, 37.714325, 36.404533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101359, 0.994850, -0.000840,
		0.066613, -0.005944, 0.997761,
		0.992617, -0.101188, -0.066872,
		43.011795, 37.683968, 36.384472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.744606, 38.172272, 37.008045>,  <42.316963, 37.754799, 36.431282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.744606, 38.172272, 37.008045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.974209, 38.129673, 36.683289>,  <43.111973, 38.104115, 36.488434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.974209, 38.129673, 36.683289>,  <42.744606, 38.172272, 37.008045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.974209, 38.129673, 36.683289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175700, 0.984432, -0.004914,
		0.799777, -0.139829, 0.583785,
		0.574009, -0.106501, -0.811894,
		43.146412, 38.097721, 36.439720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.357464, 38.522591, 37.086575>,  <42.744606, 38.172272, 37.008045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.357464, 38.522591, 37.086575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.281670, 38.510403, 36.694012>,  <43.236195, 38.503090, 36.458473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.281670, 38.510403, 36.694012>,  <43.357464, 38.522591, 37.086575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.281670, 38.510403, 36.694012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124376, 0.990722, -0.054769,
		0.973974, -0.132442, -0.183939,
		-0.189486, -0.030466, -0.981411,
		43.224823, 38.501263, 36.399590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.909729, 38.902645, 36.790009>,  <43.357464, 38.522591, 37.086575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.909729, 38.902645, 36.790009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.591465, 38.871933, 36.549664>,  <43.400509, 38.853508, 36.405457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.591465, 38.871933, 36.549664>,  <43.909729, 38.902645, 36.790009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.591465, 38.871933, 36.549664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052217, 0.979549, -0.194313,
		0.603492, -0.185982, -0.775376,
		-0.795657, -0.076779, -0.600862,
		43.352768, 38.848900, 36.369404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.065022, 38.251335, 37.268536>,  <43.909729, 38.902645, 36.790009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.065022, 38.251335, 37.268536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.920990, 38.545200, 37.498528>,  <43.834572, 38.721519, 37.636524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.920990, 38.545200, 37.498528>,  <44.065022, 38.251335, 37.268536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.920990, 38.545200, 37.498528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.780907, -0.099846, 0.616616,
		0.510417, 0.671041, -0.537754,
		-0.360082, 0.734667, 0.574983,
		43.812965, 38.765602, 37.671024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.731262, 37.873951, 37.372120>,  <44.065022, 38.251335, 37.268536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.731262, 37.873951, 37.372120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.906563, 37.886929, 37.731426>,  <45.011742, 37.894714, 37.947010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.906563, 37.886929, 37.731426>,  <44.731262, 37.873951, 37.372120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.906563, 37.886929, 37.731426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.846778, -0.350110, -0.400486,
		0.301498, 0.936146, -0.180912,
		0.438253, 0.032447, 0.898266,
		45.038040, 37.896664, 38.000908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.335804, 38.192608, 37.274326>,  <44.731262, 37.873951, 37.372120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.335804, 38.192608, 37.274326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.414654, 37.984970, 37.606995>,  <45.461964, 37.860386, 37.806595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.414654, 37.984970, 37.606995>,  <45.335804, 38.192608, 37.274326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.414654, 37.984970, 37.606995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.864033, -0.308846, -0.397569,
		0.463236, 0.796964, 0.387635,
		0.197128, -0.519098, 0.831672,
		45.473793, 37.829243, 37.856495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.045471, 38.304688, 37.437252>,  <45.335804, 38.192608, 37.274326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.045471, 38.304688, 37.437252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.970287, 37.964748, 37.634197>,  <45.925175, 37.760784, 37.752365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.970287, 37.964748, 37.634197>,  <46.045471, 38.304688, 37.437252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.970287, 37.964748, 37.634197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.866014, -0.379895, -0.325116,
		0.463348, 0.365287, 0.807388,
		-0.187962, -0.849850, 0.492367,
		45.913898, 37.709793, 37.781906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.641983, 38.042271, 37.843849>,  <46.045471, 38.304688, 37.437252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.641983, 38.042271, 37.843849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.408195, 37.761395, 37.681210>,  <46.267921, 37.592869, 37.583626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.408195, 37.761395, 37.681210>,  <46.641983, 38.042271, 37.843849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.408195, 37.761395, 37.681210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.802699, -0.427103, -0.416242,
		0.118623, -0.569656, 0.813278,
		-0.584468, -0.702193, -0.406598,
		46.232857, 37.550735, 37.559231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.959835, 37.374722, 38.071815>,  <46.641983, 38.042271, 37.843849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.959835, 37.374722, 38.071815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.757637, 37.378357, 37.726704>,  <46.636318, 37.380539, 37.519634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.757637, 37.378357, 37.726704>,  <46.959835, 37.374722, 38.071815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.757637, 37.378357, 37.726704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.828151, -0.275533, -0.488105,
		-0.242159, -0.961249, 0.131757,
		-0.505494, 0.009084, -0.862782,
		46.605988, 37.381081, 37.467869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.926830, 36.818581, 37.663681>,  <46.959835, 37.374722, 38.071815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.926830, 36.818581, 37.663681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.889812, 37.079006, 37.362339>,  <46.867603, 37.235260, 37.181534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.889812, 37.079006, 37.362339>,  <46.926830, 36.818581, 37.663681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.889812, 37.079006, 37.362339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.813813, -0.386486, -0.433978,
		-0.573711, -0.653256, -0.494078,
		-0.092544, 0.651065, -0.753359,
		46.862049, 37.274326, 37.136330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.234737, 36.514900, 37.033722>,  <46.926830, 36.818581, 37.663681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.234737, 36.514900, 37.033722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.227055, 36.907291, 36.956455>,  <47.222446, 37.142727, 36.910095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.227055, 36.907291, 36.956455>,  <47.234737, 36.514900, 37.033722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.227055, 36.907291, 36.956455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.820216, -0.095024, -0.564106,
		-0.571731, -0.169272, -0.802789,
		-0.019203, 0.980978, -0.193168,
		47.221294, 37.201584, 36.898506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.221962, 36.643826, 36.349266>,  <47.234737, 36.514900, 37.033722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.221962, 36.643826, 36.349266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.378613, 36.987267, 36.481590>,  <47.472603, 37.193329, 36.560986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.378613, 36.987267, 36.481590>,  <47.221962, 36.643826, 36.349266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.378613, 36.987267, 36.481590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.712900, -0.055834, -0.699039,
		-0.581724, 0.509598, -0.633961,
		0.391626, 0.858599, 0.330813,
		47.496101, 37.244846, 36.580833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.242031, 37.148735, 35.846436>,  <47.221962, 36.643826, 36.349266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.242031, 37.148735, 35.846436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.528088, 37.182480, 36.123985>,  <47.699722, 37.202728, 36.290516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.528088, 37.182480, 36.123985>,  <47.242031, 37.148735, 35.846436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.528088, 37.182480, 36.123985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.697341, -0.018095, -0.716511,
		-0.047892, 0.996271, -0.071771,
		0.715138, 0.084364, 0.693874,
		47.742630, 37.207790, 36.332146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.315495, 36.455154, 35.451702>,  <47.242031, 37.148735, 35.846436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.315495, 36.455154, 35.451702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.659279, 36.531410, 35.261974>,  <47.865551, 36.577164, 35.148136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.659279, 36.531410, 35.261974>,  <47.315495, 36.455154, 35.451702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.659279, 36.531410, 35.261974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465630, -0.674881, 0.572472,
		-0.210977, -0.712878, -0.668801,
		0.859463, 0.190635, -0.474322,
		47.917118, 36.588600, 35.119678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.632896, 35.824421, 35.265160>,  <47.315495, 36.455154, 35.451702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.632896, 35.824421, 35.265160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.921497, 36.097404, 35.311939>,  <48.094658, 36.261196, 35.340008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.921497, 36.097404, 35.311939>,  <47.632896, 35.824421, 35.265160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.921497, 36.097404, 35.311939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391678, -0.541554, 0.743847,
		0.570982, -0.490882, -0.658039,
		0.721504, 0.682462, 0.116950,
		48.137947, 36.302143, 35.347023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.097748, 35.231575, 35.127041>,  <47.632896, 35.824421, 35.265160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.097748, 35.231575, 35.127041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.781143, 35.402718, 34.952480>,  <47.591183, 35.505405, 34.847744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.781143, 35.402718, 34.952480>,  <48.097748, 35.231575, 35.127041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.781143, 35.402718, 34.952480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524764, -0.841804, 0.126447,
		-0.313266, 0.329094, 0.890820,
		-0.791509, 0.427859, -0.436405,
		47.543690, 35.531075, 34.821560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<41.854259, 35.251198, 25.264359> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.460136, 35.210754, 25.209307>,  <41.223663, 35.186489, 25.176275>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.460136, 35.210754, 25.209307>,  <41.854259, 35.251198, 25.264359>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.460136, 35.210754, 25.209307> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109276, -0.246044, 0.963079,
		-0.131237, 0.963971, 0.231381,
		-0.985310, -0.101107, -0.137629,
		41.164543, 35.180424, 25.168018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.379627, 35.730770, 25.775663>,  <41.854259, 35.251198, 25.264359>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.379627, 35.730770, 25.775663> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.119518, 35.463764, 25.630573>,  <40.963451, 35.303562, 25.543518>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.119518, 35.463764, 25.630573>,  <41.379627, 35.730770, 25.775663>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.119518, 35.463764, 25.630573> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395748, -0.109924, 0.911757,
		-0.648484, 0.736437, -0.192687,
		-0.650271, -0.667515, -0.362727,
		40.924438, 35.263508, 25.521755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.767483, 35.872486, 26.210062>,  <41.379627, 35.730770, 25.775663>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.767483, 35.872486, 26.210062> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.712784, 35.519516, 26.030006>,  <40.679966, 35.307735, 25.921974>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.712784, 35.519516, 26.030006>,  <40.767483, 35.872486, 26.210062>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.712784, 35.519516, 26.030006> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284168, -0.400365, 0.871181,
		-0.948972, 0.247047, -0.196008,
		-0.136748, -0.882426, -0.450138,
		40.671761, 35.254787, 25.894964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.083782, 35.738693, 26.252819>,  <40.767483, 35.872486, 26.210062>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.083782, 35.738693, 26.252819> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.248463, 35.379787, 26.189035>,  <40.347271, 35.164444, 26.150764>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.248463, 35.379787, 26.189035>,  <40.083782, 35.738693, 26.252819>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.248463, 35.379787, 26.189035> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364362, -0.322447, 0.873652,
		-0.835312, -0.301580, -0.459679,
		0.411698, -0.897261, -0.159460,
		40.371971, 35.110611, 26.141197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.505909, 35.263821, 26.268259>,  <40.083782, 35.738693, 26.252819>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.505909, 35.263821, 26.268259> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.836102, 35.059109, 26.363472>,  <40.034218, 34.936283, 26.420599>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.836102, 35.059109, 26.363472>,  <39.505909, 35.263821, 26.268259>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.836102, 35.059109, 26.363472> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509852, -0.495209, 0.703433,
		-0.242123, -0.702036, -0.669718,
		0.825486, -0.511774, 0.238033,
		40.083748, 34.905575, 26.434881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.220539, 34.694828, 26.468868>,  <39.505909, 35.263821, 26.268259>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.220539, 34.694828, 26.468868> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.592182, 34.637859, 26.605383>,  <39.815166, 34.603676, 26.687292>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.592182, 34.637859, 26.605383>,  <39.220539, 34.694828, 26.468868>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.592182, 34.637859, 26.605383> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368722, -0.427657, 0.825320,
		0.028407, -0.892650, -0.449855,
		0.929106, -0.142427, 0.341288,
		39.870914, 34.595131, 26.707769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.223457, 33.995258, 26.637516>,  <39.220539, 34.694828, 26.468868>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.223457, 33.995258, 26.637516> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.506054, 34.172615, 26.858160>,  <39.675610, 34.279030, 26.990547>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.506054, 34.172615, 26.858160>,  <39.223457, 33.995258, 26.637516>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.506054, 34.172615, 26.858160> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340656, -0.470132, 0.814205,
		0.620345, -0.763136, -0.181097,
		0.706489, 0.443396, 0.551610,
		39.718002, 34.305634, 27.023643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.652008, 33.450264, 27.037579>,  <39.223457, 33.995258, 26.637516>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.652008, 33.450264, 27.037579> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.716927, 33.790047, 27.238409>,  <39.755878, 33.993916, 27.358908>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.716927, 33.790047, 27.238409>,  <39.652008, 33.450264, 27.037579>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.716927, 33.790047, 27.238409> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293456, -0.444248, 0.846480,
		0.942095, -0.284718, 0.177178,
		0.162297, 0.849458, 0.502076,
		39.765617, 34.044884, 27.389032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.889542, 33.187653, 27.658827>,  <39.652008, 33.450264, 27.037579>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.889542, 33.187653, 27.658827> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.864964, 33.581905, 27.721771>,  <39.850216, 33.818455, 27.759539>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.864964, 33.581905, 27.721771>,  <39.889542, 33.187653, 27.658827>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.864964, 33.581905, 27.721771> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182264, -0.166090, 0.969120,
		0.981328, 0.030865, 0.189849,
		-0.061444, 0.985627, 0.157363,
		39.846531, 33.877594, 27.768980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.276924, 33.427315, 28.221270>,  <39.889542, 33.187653, 27.658827>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.276924, 33.427315, 28.221270> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.973572, 33.687725, 28.208467>,  <39.791561, 33.843971, 28.200787>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.973572, 33.687725, 28.208467>,  <40.276924, 33.427315, 28.221270>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.973572, 33.687725, 28.208467> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137500, -0.111790, 0.984173,
		0.637144, 0.750779, 0.174295,
		-0.758381, 0.651025, -0.032005,
		39.746056, 33.883034, 28.198866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.402569, 33.966331, 28.669643>,  <40.276924, 33.427315, 28.221270>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.402569, 33.966331, 28.669643> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.004112, 33.981075, 28.637802>,  <39.765038, 33.989922, 28.618696>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.004112, 33.981075, 28.637802>,  <40.402569, 33.966331, 28.669643>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.004112, 33.981075, 28.637802> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085149, -0.188047, 0.978462,
		0.021092, 0.981468, 0.190460,
		-0.996145, 0.036855, -0.079605,
		39.705269, 33.992130, 28.613920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.109325, 34.522087, 29.114031>,  <40.402569, 33.966331, 28.669643>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.109325, 34.522087, 29.114031> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.835442, 34.235592, 29.060110>,  <39.671112, 34.063694, 29.027758>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.835442, 34.235592, 29.060110>,  <40.109325, 34.522087, 29.114031>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.835442, 34.235592, 29.060110> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151585, -0.040959, 0.987595,
		-0.712874, 0.696654, -0.080526,
		-0.684714, -0.716237, -0.134801,
		39.630028, 34.020721, 29.019670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.678505, 34.708397, 29.638893>,  <40.109325, 34.522087, 29.114031>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.678505, 34.708397, 29.638893> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.578720, 34.342655, 29.511312>,  <39.518848, 34.123211, 29.434765>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.578720, 34.342655, 29.511312>,  <39.678505, 34.708397, 29.638893>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.578720, 34.342655, 29.511312> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307969, -0.237357, 0.921313,
		-0.918108, 0.328062, -0.222380,
		-0.249465, -0.914351, -0.318952,
		39.503880, 34.068352, 29.415627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.026329, 34.662785, 29.912092>,  <39.678505, 34.708397, 29.638893>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.026329, 34.662785, 29.912092> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.123196, 34.283863, 29.828211>,  <39.181316, 34.056511, 29.777882>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.123196, 34.283863, 29.828211>,  <39.026329, 34.662785, 29.912092>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.123196, 34.283863, 29.828211> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221235, -0.264358, 0.938707,
		-0.944674, -0.180932, -0.273595,
		0.242169, -0.947300, -0.209704,
		39.195847, 33.999672, 29.765299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.499157, 34.249889, 30.276691>,  <39.026329, 34.662785, 29.912092>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.499157, 34.249889, 30.276691> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.761169, 33.968266, 30.166969>,  <38.918377, 33.799294, 30.101135>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.761169, 33.968266, 30.166969>,  <38.499157, 34.249889, 30.276691>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.761169, 33.968266, 30.166969> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199123, -0.511037, 0.836177,
		-0.728896, -0.493098, -0.474937,
		0.655027, -0.704057, -0.274305,
		38.957676, 33.757050, 30.084679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.176376, 33.520164, 30.250843>,  <38.499157, 34.249889, 30.276691>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.176376, 33.520164, 30.250843> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.564404, 33.472420, 30.335440>,  <38.797218, 33.443775, 30.386198>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.564404, 33.472420, 30.335440>,  <38.176376, 33.520164, 30.250843>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.564404, 33.472420, 30.335440> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242831, -0.487265, 0.838812,
		0.002934, -0.865059, -0.501662,
		0.970064, -0.119358, 0.211493,
		38.855423, 33.436611, 30.398888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.237598, 32.727074, 30.289974>,  <38.176376, 33.520164, 30.250843>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.237598, 32.727074, 30.289974> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.534557, 32.919331, 30.476664>,  <38.712730, 33.034683, 30.588678>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.534557, 32.919331, 30.476664>,  <38.237598, 32.727074, 30.289974>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.534557, 32.919331, 30.476664> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253617, -0.443179, 0.859808,
		0.620104, -0.756687, -0.207114,
		0.742394, 0.480643, 0.466726,
		38.757275, 33.063522, 30.616682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.596745, 32.230145, 30.799465>,  <38.237598, 32.727074, 30.289974>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.596745, 32.230145, 30.799465> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.718258, 32.591766, 30.919725>,  <38.791168, 32.808739, 30.991882>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.718258, 32.591766, 30.919725>,  <38.596745, 32.230145, 30.799465>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.718258, 32.591766, 30.919725> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232930, -0.235511, 0.943545,
		0.923827, -0.356667, 0.139037,
		0.303787, 0.904059, 0.300651,
		38.809395, 32.862984, 31.009920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.906673, 32.238064, 31.410664>,  <38.596745, 32.230145, 30.799465>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.906673, 32.238064, 31.410664> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.848900, 32.632221, 31.446728>,  <38.814236, 32.868717, 31.468367>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.848900, 32.632221, 31.446728>,  <38.906673, 32.238064, 31.410664>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.848900, 32.632221, 31.446728> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317345, -0.132432, 0.939018,
		0.937246, 0.107017, 0.331839,
		-0.144437, 0.985398, 0.090160,
		38.805569, 32.927841, 31.473776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.109825, 32.347950, 32.083733>,  <38.906673, 32.238064, 31.410664>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.109825, 32.347950, 32.083733> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.884155, 32.661858, 31.981089>,  <38.748753, 32.850201, 31.919502>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.884155, 32.661858, 31.981089>,  <39.109825, 32.347950, 32.083733>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.884155, 32.661858, 31.981089> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393653, 0.017533, 0.919092,
		0.725774, 0.619540, 0.299035,
		-0.564171, 0.784769, -0.256609,
		38.714905, 32.897289, 31.904106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.270664, 32.923004, 32.536900>,  <39.109825, 32.347950, 32.083733>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.270664, 32.923004, 32.536900> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.893841, 32.946114, 32.404728>,  <38.667747, 32.959980, 32.325424>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.893841, 32.946114, 32.404728>,  <39.270664, 32.923004, 32.536900>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.893841, 32.946114, 32.404728> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335156, -0.121217, 0.934332,
		0.013929, 0.990943, 0.133558,
		-0.942060, 0.057777, -0.330432,
		38.611221, 32.963448, 32.305599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.726070, 32.849602, 33.163994>,  <39.270664, 32.923004, 32.536900>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.726070, 32.849602, 33.163994> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.794353, 33.113701, 33.456551>,  <39.835323, 33.272160, 33.632084>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.794353, 33.113701, 33.456551>,  <39.726070, 32.849602, 33.163994>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.794353, 33.113701, 33.456551> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.683668, 0.455164, -0.570459,
		-0.709547, 0.597409, -0.373691,
		0.170707, 0.660248, 0.731390,
		39.845566, 33.311775, 33.675968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.483234, 33.582405, 32.967876>,  <39.726070, 32.849602, 33.163994>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.483234, 33.582405, 32.967876> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.784134, 33.582561, 33.231426>,  <39.964672, 33.582657, 33.389557>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.784134, 33.582561, 33.231426>,  <39.483234, 33.582405, 32.967876>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.784134, 33.582561, 33.231426> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622811, 0.325895, -0.711266,
		-0.215007, 0.945406, 0.244907,
		0.752249, 0.000396, 0.658879,
		40.009808, 33.582680, 33.429089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.797543, 34.242306, 32.974277>,  <39.483234, 33.582405, 32.967876>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.797543, 34.242306, 32.974277> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.073235, 33.973568, 33.082787>,  <40.238647, 33.812325, 33.147892>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.073235, 33.973568, 33.082787>,  <39.797543, 34.242306, 32.974277>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.073235, 33.973568, 33.082787> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626332, 0.364243, -0.689228,
		0.364243, 0.644944, 0.671844,
		0.689228, -0.671844, 0.271276,
		40.280003, 33.772015, 33.164169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.340340, 34.701859, 33.059032>,  <39.797543, 34.242306, 32.974277>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.340340, 34.701859, 33.059032> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.460602, 34.323006, 33.014217>,  <40.532761, 34.095695, 32.987328>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.460602, 34.323006, 33.014217>,  <40.340340, 34.701859, 33.059032>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.460602, 34.323006, 33.014217> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.805840, 0.315107, -0.501328,
		0.510125, 0.060448, 0.857974,
		0.300658, -0.947129, -0.112033,
		40.550800, 34.038868, 32.980606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.152790, 34.729412, 33.130470>,  <40.340340, 34.701859, 33.059032>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.152790, 34.729412, 33.130470> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.073353, 34.388245, 32.937355>,  <41.025692, 34.183544, 32.821484>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.073353, 34.388245, 32.937355>,  <41.152790, 34.729412, 33.130470>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.073353, 34.388245, 32.937355> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.753837, 0.181871, -0.631389,
		0.626330, -0.489336, 0.606845,
		-0.198594, -0.852920, -0.482791,
		41.013775, 34.132370, 32.792519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.779789, 34.456367, 32.890945>,  <41.152790, 34.729412, 33.130470>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.779789, 34.456367, 32.890945> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.534744, 34.250656, 32.650871>,  <41.387718, 34.127228, 32.506828>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.534744, 34.250656, 32.650871>,  <41.779789, 34.456367, 32.890945>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.534744, 34.250656, 32.650871> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.637609, 0.127175, -0.759790,
		0.467073, -0.848141, 0.250000,
		-0.612615, -0.514280, -0.600182,
		41.350960, 34.096371, 32.470818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.209663, 34.035057, 32.393364>,  <41.779789, 34.456367, 32.890945>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.209663, 34.035057, 32.393364> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.855831, 34.027885, 32.206944>,  <41.643532, 34.023582, 32.095093>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.855831, 34.027885, 32.206944>,  <42.209663, 34.035057, 32.393364>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.855831, 34.027885, 32.206944> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463453, 0.078196, -0.882664,
		0.052259, -0.996777, -0.060866,
		-0.884579, -0.017919, -0.466046,
		41.590458, 34.022507, 32.067131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.327148, 33.634766, 31.826914>,  <42.209663, 34.035057, 32.393364>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.327148, 33.634766, 31.826914> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.991203, 33.828873, 31.729635>,  <41.789635, 33.945335, 31.671268>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.991203, 33.828873, 31.729635>,  <42.327148, 33.634766, 31.826914>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.991203, 33.828873, 31.729635> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321799, 0.084336, -0.943044,
		-0.437115, -0.870291, -0.226988,
		-0.839866, 0.485264, -0.243194,
		41.739243, 33.974453, 31.656677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.066147, 33.350891, 31.136099>,  <42.327148, 33.634766, 31.826914>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.066147, 33.350891, 31.136099> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.896187, 33.709377, 31.187101>,  <41.794209, 33.924469, 31.217703>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.896187, 33.709377, 31.187101>,  <42.066147, 33.350891, 31.136099>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.896187, 33.709377, 31.187101> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284989, 0.266126, -0.920846,
		-0.859208, -0.354932, -0.368489,
		-0.424903, 0.896214, 0.127506,
		41.768715, 33.978241, 31.225353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.793995, 33.391750, 30.503265>,  <42.066147, 33.350891, 31.136099>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.793995, 33.391750, 30.503265> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.787682, 33.764034, 30.649429>,  <41.783894, 33.987404, 30.737127>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.787682, 33.764034, 30.649429>,  <41.793995, 33.391750, 30.503265>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.787682, 33.764034, 30.649429> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170759, 0.362596, -0.916169,
		-0.985187, 0.047939, -0.164649,
		-0.015781, 0.930713, 0.365410,
		41.782948, 34.043247, 30.759052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.318233, 33.700977, 30.088896>,  <41.793995, 33.391750, 30.503265>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.318233, 33.700977, 30.088896> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.557682, 33.971050, 30.261307>,  <41.701351, 34.133095, 30.364754>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.557682, 33.971050, 30.261307>,  <41.318233, 33.700977, 30.088896>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.557682, 33.971050, 30.261307> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208921, 0.387867, -0.897725,
		-0.773306, 0.627450, 0.091128,
		0.598624, 0.675178, 0.431028,
		41.737270, 34.173603, 30.390615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.105450, 34.354580, 29.816311>,  <41.318233, 33.700977, 30.088896>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.105450, 34.354580, 29.816311> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.479740, 34.389359, 29.953045>,  <41.704315, 34.410225, 30.035086>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.479740, 34.389359, 29.953045>,  <41.105450, 34.354580, 29.816311>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.479740, 34.389359, 29.953045> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295950, 0.333723, -0.895010,
		-0.191896, 0.938653, 0.286542,
		0.935729, 0.086947, 0.341834,
		41.760460, 34.415443, 30.055595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.392429, 35.096996, 29.615799>,  <41.105450, 34.354580, 29.816311>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.392429, 35.096996, 29.615799> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.712009, 34.868244, 29.690235>,  <41.903759, 34.730991, 29.734898>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.712009, 34.868244, 29.690235>,  <41.392429, 35.096996, 29.615799>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.712009, 34.868244, 29.690235> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457648, 0.377392, -0.805067,
		0.390173, 0.728374, 0.563238,
		0.798952, -0.571880, 0.186091,
		41.951694, 34.696682, 29.746063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.896797, 35.614079, 29.572271>,  <41.392429, 35.096996, 29.615799>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.896797, 35.614079, 29.572271> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.073715, 35.259769, 29.516005>,  <42.179867, 35.047184, 29.482244>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.073715, 35.259769, 29.516005>,  <41.896797, 35.614079, 29.572271>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.073715, 35.259769, 29.516005> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589332, 0.405260, -0.698894,
		0.676066, 0.226218, 0.701256,
		0.442293, -0.885771, -0.140665,
		42.206402, 34.994038, 29.473804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.538857, 35.763306, 29.436035>,  <41.896797, 35.614079, 29.572271>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.538857, 35.763306, 29.436035> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.471512, 35.396641, 29.291046>,  <42.431103, 35.176643, 29.204054>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.471512, 35.396641, 29.291046>,  <42.538857, 35.763306, 29.436035>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.471512, 35.396641, 29.291046> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382185, 0.278251, -0.881199,
		0.908619, -0.286893, 0.303487,
		-0.168364, -0.916662, -0.362470,
		42.421001, 35.121643, 29.182304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.155102, 35.520321, 29.182772>,  <42.538857, 35.763306, 29.436035>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.155102, 35.520321, 29.182772> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.907009, 35.286160, 28.973917>,  <42.758156, 35.145664, 28.848604>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.907009, 35.286160, 28.973917>,  <43.155102, 35.520321, 29.182772>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.907009, 35.286160, 28.973917> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519434, 0.192279, -0.832596,
		0.587797, -0.787614, 0.184820,
		-0.620228, -0.585399, -0.522135,
		42.720940, 35.110538, 28.817276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.563404, 35.156158, 28.747644>,  <43.155102, 35.520321, 29.182772>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.563404, 35.156158, 28.747644> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.203381, 35.116463, 28.577915>,  <42.987366, 35.092648, 28.476078>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.203381, 35.116463, 28.577915>,  <43.563404, 35.156158, 28.747644>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.203381, 35.116463, 28.577915> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392641, 0.237687, -0.888447,
		0.189024, -0.966259, -0.174967,
		-0.900057, -0.099239, -0.424322,
		42.933365, 35.086693, 28.450619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.580723, 34.743229, 28.140078>,  <43.563404, 35.156158, 28.747644>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.580723, 34.743229, 28.140078> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.235016, 34.936653, 28.084652>,  <43.027592, 35.052708, 28.051395>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.235016, 34.936653, 28.084652>,  <43.580723, 34.743229, 28.140078>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.235016, 34.936653, 28.084652> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296578, 0.267357, -0.916822,
		-0.406295, -0.833479, -0.374483,
		-0.864272, 0.483564, -0.138566,
		42.975735, 35.081722, 28.043081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.470768, 34.561314, 27.483263>,  <43.580723, 34.743229, 28.140078>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.470768, 34.561314, 27.483263> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.274803, 34.902805, 27.553848>,  <43.157223, 35.107700, 27.596199>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.274803, 34.902805, 27.553848>,  <43.470768, 34.561314, 27.483263>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.274803, 34.902805, 27.553848> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282021, 0.346740, -0.894559,
		-0.824893, -0.388491, -0.410641,
		-0.489914, 0.853725, 0.176461,
		43.127831, 35.158924, 27.606787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<43.105591, 34.637314, 26.851311> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.055252, 35.006447, 26.996937>,  <43.025051, 35.227928, 27.084312>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.055252, 35.006447, 26.996937>,  <43.105591, 34.637314, 26.851311>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.055252, 35.006447, 26.996937> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028742, 0.363437, -0.931175,
		-0.991634, -0.127646, -0.019212,
		-0.125843, 0.922833, 0.364065,
		43.017498, 35.283298, 27.106157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.545780, 35.044182, 26.473738>,  <43.105591, 34.637314, 26.851311>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.545780, 35.044182, 26.473738> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.808041, 35.298729, 26.636295>,  <42.965397, 35.451458, 26.733829>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.808041, 35.298729, 26.636295>,  <42.545780, 35.044182, 26.473738>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.808041, 35.298729, 26.636295> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010325, 0.545731, -0.837897,
		-0.754994, 0.545171, 0.364379,
		0.655650, 0.636369, 0.406395,
		43.004734, 35.489639, 26.758213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.298222, 35.606308, 26.338606>,  <42.545780, 35.044182, 26.473738>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.298222, 35.606308, 26.338606> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.671318, 35.726524, 26.418278>,  <42.895176, 35.798653, 26.466082>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.671318, 35.726524, 26.418278>,  <42.298222, 35.606308, 26.338606>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.671318, 35.726524, 26.418278> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002942, 0.546069, -0.837735,
		-0.360538, 0.781975, 0.508456,
		0.932740, 0.300540, 0.199180,
		42.951141, 35.816685, 26.478031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.202579, 36.216042, 26.093536>,  <42.298222, 35.606308, 26.338606>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.202579, 36.216042, 26.093536> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.599724, 36.177959, 26.122286>,  <42.838009, 36.155109, 26.139536>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.599724, 36.177959, 26.122286>,  <42.202579, 36.216042, 26.093536>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.599724, 36.177959, 26.122286> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113722, 0.573445, -0.811313,
		0.036029, 0.813693, 0.580177,
		0.992859, -0.095210, 0.071874,
		42.897583, 36.149395, 26.143848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.509781, 36.896656, 25.942356>,  <42.202579, 36.216042, 26.093536>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.509781, 36.896656, 25.942356> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.804073, 36.631920, 25.884846>,  <42.980648, 36.473080, 25.850340>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.804073, 36.631920, 25.884846>,  <42.509781, 36.896656, 25.942356>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.804073, 36.631920, 25.884846> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257544, 0.469732, -0.844406,
		0.626395, 0.584228, 0.516049,
		0.735731, -0.661837, -0.143773,
		43.024792, 36.433369, 25.841713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.983902, 37.318729, 25.882317>,  <42.509781, 36.896656, 25.942356>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.983902, 37.318729, 25.882317> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.122196, 36.975826, 25.729698>,  <43.205173, 36.770084, 25.638128>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.122196, 36.975826, 25.729698>,  <42.983902, 37.318729, 25.882317>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.122196, 36.975826, 25.729698> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351899, 0.495399, -0.794196,
		0.869847, 0.140315, 0.472945,
		0.345734, -0.857258, -0.381545,
		43.225918, 36.718647, 25.615234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.620716, 37.543083, 25.623610>,  <42.983902, 37.318729, 25.882317>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.620716, 37.543083, 25.623610> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.540565, 37.188580, 25.456566>,  <43.492477, 36.975880, 25.356339>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.540565, 37.188580, 25.456566>,  <43.620716, 37.543083, 25.623610>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.540565, 37.188580, 25.456566> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419424, 0.307622, -0.854080,
		0.885401, -0.346290, 0.310078,
		-0.200373, -0.886257, -0.417611,
		43.480453, 36.922703, 25.331282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.184959, 37.212444, 25.362005>,  <43.620716, 37.543083, 25.623610>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.184959, 37.212444, 25.362005> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.901516, 37.045933, 25.134113>,  <43.731449, 36.946026, 24.997379>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.901516, 37.045933, 25.134113>,  <44.184959, 37.212444, 25.362005>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.901516, 37.045933, 25.134113> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416083, 0.405596, -0.813859,
		0.569870, -0.813761, -0.114203,
		-0.708607, -0.416276, -0.569729,
		43.688934, 36.921051, 24.963194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.498207, 36.861122, 24.859467>,  <44.184959, 37.212444, 25.362005>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.498207, 36.861122, 24.859467> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.132648, 36.930122, 24.712482>,  <43.913311, 36.971523, 24.624292>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.132648, 36.930122, 24.712482>,  <44.498207, 36.861122, 24.859467>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.132648, 36.930122, 24.712482> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405827, 0.367176, -0.836950,
		-0.009456, -0.914015, -0.405570,
		-0.913901, 0.172505, -0.367460,
		43.858479, 36.981873, 24.602243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.595882, 36.802124, 24.172188>,  <44.498207, 36.861122, 24.859467>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.595882, 36.802124, 24.172188> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.233021, 36.970406, 24.175768>,  <44.015305, 37.071373, 24.177916>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.233021, 36.970406, 24.175768>,  <44.595882, 36.802124, 24.172188>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.233021, 36.970406, 24.175768> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128031, 0.296203, -0.946505,
		-0.400849, -0.857480, -0.322565,
		-0.907154, 0.420704, 0.008949,
		43.960876, 37.096619, 24.178452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.521976, 36.741756, 23.525909>,  <44.595882, 36.802124, 24.172188>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.521976, 36.741756, 23.525909> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.202579, 36.968594, 23.606728>,  <44.010941, 37.104694, 23.655218>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.202579, 36.968594, 23.606728>,  <44.521976, 36.741756, 23.525909>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.202579, 36.968594, 23.606728> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069249, 0.246870, -0.966571,
		-0.598014, -0.785788, -0.157852,
		-0.798489, 0.567092, 0.202047,
		43.963032, 37.138721, 23.667341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.855198, 36.493282, 23.044174>,  <44.521976, 36.741756, 23.525909>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.855198, 36.493282, 23.044174> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.825294, 36.871517, 23.170841>,  <43.807354, 37.098457, 23.246841>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.825294, 36.871517, 23.170841>,  <43.855198, 36.493282, 23.044174>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.825294, 36.871517, 23.170841> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093892, 0.309469, -0.946263,
		-0.992772, -0.100473, 0.065648,
		-0.074757, 0.945587, 0.316666,
		43.802868, 37.155193, 23.265841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.370590, 36.829048, 22.610168>,  <43.855198, 36.493282, 23.044174>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.370590, 36.829048, 22.610168> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.540085, 37.148205, 22.781664>,  <43.641781, 37.339699, 22.884562>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.540085, 37.148205, 22.781664>,  <43.370590, 36.829048, 22.610168>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.540085, 37.148205, 22.781664> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095104, 0.431527, -0.897073,
		-0.900778, 0.420899, 0.106972,
		0.423738, 0.797890, 0.428739,
		43.667206, 37.387573, 22.910286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.008686, 37.489594, 22.361959>,  <43.370590, 36.829048, 22.610168>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.008686, 37.489594, 22.361959> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.367687, 37.583393, 22.511356>,  <43.583088, 37.639671, 22.600994>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.367687, 37.583393, 22.511356>,  <43.008686, 37.489594, 22.361959>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.367687, 37.583393, 22.511356> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179463, 0.579410, -0.795033,
		-0.402838, 0.780574, 0.477940,
		0.897505, 0.234497, 0.373493,
		43.636940, 37.653744, 22.623404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.047840, 38.186131, 22.352947>,  <43.008686, 37.489594, 22.361959>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.047840, 38.186131, 22.352947> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.425964, 38.055737, 22.357176>,  <43.652840, 37.977501, 22.359713>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.425964, 38.055737, 22.357176>,  <43.047840, 38.186131, 22.352947>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.425964, 38.055737, 22.357176> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165334, 0.450993, -0.877080,
		0.281150, 0.830865, 0.480228,
		0.945314, -0.325989, 0.010573,
		43.709560, 37.957939, 22.360348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.395218, 38.737873, 22.050547>,  <43.047840, 38.186131, 22.352947>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.395218, 38.737873, 22.050547> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.663933, 38.445934, 21.999908>,  <43.825161, 38.270771, 21.969526>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.663933, 38.445934, 21.999908>,  <43.395218, 38.737873, 22.050547>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.663933, 38.445934, 21.999908> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293590, 0.419244, -0.859092,
		0.680081, 0.539958, 0.495918,
		0.671784, -0.729849, -0.126594,
		43.865467, 38.226978, 21.961931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.996872, 39.042976, 21.839645>,  <43.395218, 38.737873, 22.050547>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.996872, 39.042976, 21.839645> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.053513, 38.657131, 21.750681>,  <44.087498, 38.425625, 21.697302>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.053513, 38.657131, 21.750681>,  <43.996872, 39.042976, 21.839645>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.053513, 38.657131, 21.750681> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451326, 0.262874, -0.852761,
		0.881052, 0.020374, 0.472580,
		0.141604, -0.964615, -0.222410,
		44.095993, 38.367748, 21.683958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.710278, 39.030960, 21.495649>,  <43.996872, 39.042976, 21.839645>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.710278, 39.030960, 21.495649> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.503677, 38.705166, 21.389936>,  <44.379719, 38.509689, 21.326509>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.503677, 38.705166, 21.389936>,  <44.710278, 39.030960, 21.495649>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.503677, 38.705166, 21.389936> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288709, 0.124921, -0.949232,
		0.806150, -0.566575, 0.170628,
		-0.516496, -0.814486, -0.264281,
		44.348728, 38.460819, 21.310652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.265305, 38.553459, 21.200506>,  <44.710278, 39.030960, 21.495649>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.265305, 38.553459, 21.200506> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.900860, 38.471397, 21.057516>,  <44.682194, 38.422161, 20.971722>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.900860, 38.471397, 21.057516>,  <45.265305, 38.553459, 21.200506>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.900860, 38.471397, 21.057516> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332746, 0.145692, -0.931694,
		0.243222, -0.967825, -0.064478,
		-0.911111, -0.205153, -0.357475,
		44.627525, 38.409851, 20.950274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.399597, 38.279030, 20.572546>,  <45.265305, 38.553459, 21.200506>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.399597, 38.279030, 20.572546> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.021698, 38.399521, 20.520834>,  <44.794960, 38.471817, 20.489807>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.021698, 38.399521, 20.520834>,  <45.399597, 38.279030, 20.572546>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.021698, 38.399521, 20.520834> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162295, 0.087182, -0.982883,
		-0.284802, -0.949558, -0.131253,
		-0.944747, 0.301229, -0.129279,
		44.738274, 38.489891, 20.482050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.164585, 38.044258, 20.001989>,  <45.399597, 38.279030, 20.572546>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.164585, 38.044258, 20.001989> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.848904, 38.284454, 20.053473>,  <44.659492, 38.428574, 20.084362>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.848904, 38.284454, 20.053473>,  <45.164585, 38.044258, 20.001989>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.848904, 38.284454, 20.053473> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207450, 0.457929, -0.864445,
		-0.578030, -0.655525, -0.485972,
		-0.789206, 0.600490, 0.128708,
		44.612141, 38.464600, 20.092085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.665184, 37.961693, 19.364937>,  <45.164585, 38.044258, 20.001989>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.665184, 37.961693, 19.364937> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.643482, 38.316795, 19.547777>,  <44.630459, 38.529858, 19.657480>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.643482, 38.316795, 19.547777>,  <44.665184, 37.961693, 19.364937>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.643482, 38.316795, 19.547777> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117640, 0.460269, -0.879951,
		-0.991573, 0.006028, -0.129410,
		-0.054259, 0.887759, 0.457099,
		44.627205, 38.583122, 19.684906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.226498, 38.376278, 18.904461>,  <44.665184, 37.961693, 19.364937>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.226498, 38.376278, 18.904461> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.428932, 38.650547, 19.113741>,  <44.550392, 38.815109, 19.239309>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.428932, 38.650547, 19.113741>,  <44.226498, 38.376278, 18.904461>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.428932, 38.650547, 19.113741> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020546, 0.596862, -0.802081,
		-0.862239, 0.416671, 0.287975,
		0.506085, 0.685669, 0.523199,
		44.580757, 38.856247, 19.270700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.846828, 38.501186, 18.253048>,  <44.226498, 38.376278, 18.904461>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.846828, 38.501186, 18.253048> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.580822, 38.791012, 18.180653>,  <43.421219, 38.964909, 18.137217>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.580822, 38.791012, 18.180653>,  <43.846828, 38.501186, 18.253048>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.580822, 38.791012, 18.180653> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523830, -0.279813, 0.804553,
		0.532310, 0.629848, 0.565630,
		-0.665017, 0.724566, -0.180986,
		43.381317, 39.008381, 18.126356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.646809, 38.981098, 18.866865>,  <43.846828, 38.501186, 18.253048>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.646809, 38.981098, 18.866865> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.325024, 39.004875, 18.630455>,  <43.131954, 39.019142, 18.488609>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.325024, 39.004875, 18.630455>,  <43.646809, 38.981098, 18.866865>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.325024, 39.004875, 18.630455> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.575773, -0.322648, 0.751254,
		-0.146037, 0.944651, 0.293783,
		-0.804461, 0.059441, -0.591023,
		43.083687, 39.022709, 18.453148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.043316, 39.461880, 19.129717>,  <43.646809, 38.981098, 18.866865>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.043316, 39.461880, 19.129717> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.920429, 39.158829, 18.899370>,  <42.846699, 38.976997, 18.761162>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.920429, 39.158829, 18.899370>,  <43.043316, 39.461880, 19.129717>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.920429, 39.158829, 18.899370> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.657490, -0.268495, 0.704001,
		-0.687986, 0.594907, -0.415644,
		-0.307216, -0.757625, -0.575867,
		42.828266, 38.931541, 18.726610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.397552, 39.510452, 19.249460>,  <43.043316, 39.461880, 19.129717>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.397552, 39.510452, 19.249460> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.421169, 39.134453, 19.115044>,  <42.435337, 38.908855, 19.034393>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.421169, 39.134453, 19.115044>,  <42.397552, 39.510452, 19.249460>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.421169, 39.134453, 19.115044> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.586468, -0.305073, 0.750324,
		-0.807818, 0.152780, -0.569288,
		0.059040, -0.939994, -0.336044,
		42.438881, 38.852455, 19.014231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.644352, 39.200737, 19.233858>,  <42.397552, 39.510452, 19.249460>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.644352, 39.200737, 19.233858> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.885723, 38.881985, 19.222153>,  <42.030544, 38.690731, 19.215130>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.885723, 38.881985, 19.222153>,  <41.644352, 39.200737, 19.233858>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.885723, 38.881985, 19.222153> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.607249, -0.482994, 0.630845,
		-0.516849, -0.362891, -0.775356,
		0.603420, -0.796886, -0.029270,
		42.066750, 38.642921, 19.213373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.157558, 38.612968, 19.277447>,  <41.644352, 39.200737, 19.233858>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.157558, 38.612968, 19.277447> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.516891, 38.468769, 19.377880>,  <41.732491, 38.382248, 19.438141>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.516891, 38.468769, 19.377880>,  <41.157558, 38.612968, 19.277447>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.516891, 38.468769, 19.377880> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420647, -0.540972, 0.728289,
		-0.126718, -0.759862, -0.637614,
		0.898331, -0.360498, 0.251083,
		41.786392, 38.360619, 19.453205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.107803, 37.907276, 19.301104>,  <41.157558, 38.612968, 19.277447>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.107803, 37.907276, 19.301104> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.406769, 37.998035, 19.550867>,  <41.586147, 38.052490, 19.700726>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.406769, 37.998035, 19.550867>,  <41.107803, 37.907276, 19.301104>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.406769, 37.998035, 19.550867> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529291, -0.364670, 0.766072,
		0.401522, -0.903069, -0.152466,
		0.747416, 0.226896, 0.624410,
		41.630993, 38.066105, 19.738190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.949829, 37.559650, 19.865191>,  <41.107803, 37.907276, 19.301104>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.949829, 37.559650, 19.865191> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.267014, 37.748615, 20.019094>,  <41.457325, 37.861996, 20.111437>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.267014, 37.748615, 20.019094>,  <40.949829, 37.559650, 19.865191>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.267014, 37.748615, 20.019094> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140400, -0.472829, 0.869897,
		0.592879, -0.743812, -0.308606,
		0.792958, 0.472416, 0.384761,
		41.504902, 37.890339, 20.134523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.307838, 36.983849, 20.266220>,  <40.949829, 37.559650, 19.865191>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.307838, 36.983849, 20.266220> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.413239, 37.342209, 20.409288>,  <41.476479, 37.557224, 20.495129>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.413239, 37.342209, 20.409288>,  <41.307838, 36.983849, 20.266220>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.413239, 37.342209, 20.409288> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016541, -0.366524, 0.930262,
		0.964517, -0.251041, -0.081760,
		0.263501, 0.895901, 0.357671,
		41.492290, 37.610981, 20.516590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.932884, 36.946651, 20.602463>,  <41.307838, 36.983849, 20.266220>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.932884, 36.946651, 20.602463> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.760727, 37.274292, 20.754166>,  <41.657433, 37.470875, 20.845188>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.760727, 37.274292, 20.754166>,  <41.932884, 36.946651, 20.602463>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.760727, 37.274292, 20.754166> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010577, -0.424712, 0.905267,
		0.902580, 0.385609, 0.191456,
		-0.430393, 0.819100, 0.379258,
		41.631611, 37.520023, 20.867943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.201469, 37.026134, 21.270308>,  <41.932884, 36.946651, 20.602463>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.201469, 37.026134, 21.270308> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.862957, 37.239223, 21.269539>,  <41.659847, 37.367077, 21.269077>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.862957, 37.239223, 21.269539>,  <42.201469, 37.026134, 21.270308>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.862957, 37.239223, 21.269539> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169365, -0.265629, 0.949082,
		0.505091, 0.803519, 0.315024,
		-0.846285, 0.532727, -0.001921,
		41.609070, 37.399040, 21.268963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.390022, 37.447235, 21.873796>,  <42.201469, 37.026134, 21.270308>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.390022, 37.447235, 21.873796> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.998341, 37.418674, 21.797831>,  <41.763332, 37.401539, 21.752251>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.998341, 37.418674, 21.797831>,  <42.390022, 37.447235, 21.873796>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.998341, 37.418674, 21.797831> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182458, -0.099490, 0.978167,
		-0.088738, 0.992473, 0.084393,
		-0.979201, -0.071402, -0.189914,
		41.704582, 37.397255, 21.740856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.078934, 37.906197, 22.384731>,  <42.390022, 37.447235, 21.873796>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.078934, 37.906197, 22.384731> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.812344, 37.639526, 22.251249>,  <41.652390, 37.479527, 22.171160>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.812344, 37.639526, 22.251249>,  <42.078934, 37.906197, 22.384731>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.812344, 37.639526, 22.251249> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311286, -0.157883, 0.937109,
		-0.677432, 0.728437, -0.102301,
		-0.666474, -0.666673, -0.333707,
		41.612400, 37.439526, 22.151136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.474148, 38.051250, 22.886784>,  <42.078934, 37.906197, 22.384731>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.474148, 38.051250, 22.886784> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.408398, 37.702717, 22.701845>,  <41.368950, 37.493599, 22.590881>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.408398, 37.702717, 22.701845>,  <41.474148, 38.051250, 22.886784>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.408398, 37.702717, 22.701845> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225449, -0.423128, 0.877573,
		-0.960289, 0.248485, -0.126889,
		-0.164373, -0.871331, -0.462346,
		41.359085, 37.441319, 22.563141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.049030, 37.724041, 23.392145>,  <41.474148, 38.051250, 22.886784>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.049030, 37.724041, 23.392145> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.158737, 37.421860, 23.154131>,  <41.224560, 37.240551, 23.011322>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.158737, 37.421860, 23.154131>,  <41.049030, 37.724041, 23.392145>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.158737, 37.421860, 23.154131> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264236, -0.654149, 0.708709,
		-0.924639, -0.037144, -0.379029,
		0.274265, -0.755453, -0.595037,
		41.241016, 37.195225, 22.975620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.523247, 37.140778, 23.424240>,  <41.049030, 37.724041, 23.392145>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.523247, 37.140778, 23.424240> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.858742, 36.951332, 23.316761>,  <41.060040, 36.837666, 23.252274>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.858742, 36.951332, 23.316761>,  <40.523247, 37.140778, 23.424240>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.858742, 36.951332, 23.316761> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130582, -0.653996, 0.745143,
		-0.528641, -0.589895, -0.610379,
		0.838742, -0.473617, -0.268699,
		41.110363, 36.809246, 23.236151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.328743, 36.359119, 23.437582>,  <40.523247, 37.140778, 23.424240>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.328743, 36.359119, 23.437582> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.727272, 36.367050, 23.470903>,  <40.966389, 36.371807, 23.490896>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.727272, 36.367050, 23.470903>,  <40.328743, 36.359119, 23.437582>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.727272, 36.367050, 23.470903> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053695, -0.613197, 0.788103,
		0.066707, -0.789681, -0.609880,
		0.996327, 0.019824, 0.083306,
		41.026169, 36.372997, 23.495895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.589008, 35.674316, 23.281685>,  <40.328743, 36.359119, 23.437582>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.589008, 35.674316, 23.281685> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.849167, 35.868557, 23.515326>,  <41.005264, 35.985100, 23.655510>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.849167, 35.868557, 23.515326>,  <40.589008, 35.674316, 23.281685>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.849167, 35.868557, 23.515326> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030897, -0.785242, 0.618418,
		0.758964, -0.384172, -0.525724,
		0.650399, 0.485600, 0.584101,
		41.044285, 36.014236, 23.690556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.980015, 35.157501, 23.533714>,  <40.589008, 35.674316, 23.281685>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.980015, 35.157501, 23.533714> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.066273, 35.453148, 23.788965>,  <41.118027, 35.630535, 23.942116>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.066273, 35.453148, 23.788965>,  <40.980015, 35.157501, 23.533714>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.066273, 35.453148, 23.788965> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161452, -0.671495, 0.723207,
		0.963032, -0.052929, -0.264136,
		0.215645, 0.739117, 0.638125,
		41.130966, 35.674881, 23.980402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.480461, 34.889996, 24.025980>,  <40.980015, 35.157501, 23.533714>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.480461, 34.889996, 24.025980> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.331474, 35.189049, 24.245911>,  <41.242085, 35.368481, 24.377869>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.331474, 35.189049, 24.245911>,  <41.480461, 34.889996, 24.025980>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.331474, 35.189049, 24.245911> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036673, -0.580136, 0.813693,
		0.927321, 0.323236, 0.188663,
		-0.372465, 0.747636, 0.549827,
		41.219734, 35.413342, 24.410858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.844070, 34.818184, 24.654751>,  <41.480461, 34.889996, 24.025980>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.844070, 34.818184, 24.654751> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.496010, 35.009544, 24.702021>,  <41.287174, 35.124359, 24.730383>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.496010, 35.009544, 24.702021>,  <41.844070, 34.818184, 24.654751>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.496010, 35.009544, 24.702021> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166427, -0.511030, 0.843298,
		0.463822, 0.714133, 0.524293,
		-0.870156, 0.478397, 0.118176,
		41.234962, 35.153065, 24.737474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<43.018673, 34.007957, 29.959118> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.691830, 34.228355, 29.891315>,  <42.495724, 34.360596, 29.850634>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.691830, 34.228355, 29.891315>,  <43.018673, 34.007957, 29.959118>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.691830, 34.228355, 29.891315> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333551, -0.212061, 0.918571,
		0.470181, 0.807116, 0.357062,
		-0.817113, 0.550994, -0.169508,
		42.446697, 34.393654, 29.840464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.963840, 34.610668, 30.597740>,  <43.018673, 34.007957, 29.959118>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.963840, 34.610668, 30.597740> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.610332, 34.556480, 30.418589>,  <42.398228, 34.523968, 30.311098>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.610332, 34.556480, 30.418589>,  <42.963840, 34.610668, 30.597740>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.610332, 34.556480, 30.418589> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451061, -0.007951, 0.892457,
		-0.124458, 0.990750, -0.054076,
		-0.883773, -0.135465, -0.447879,
		42.345200, 34.515842, 30.284225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.493504, 35.115135, 30.880745>,  <42.963840, 34.610668, 30.597740>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.493504, 35.115135, 30.880745> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.259789, 34.829433, 30.726627>,  <42.119560, 34.658012, 30.634157>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.259789, 34.829433, 30.726627>,  <42.493504, 35.115135, 30.880745>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.259789, 34.829433, 30.726627> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.573075, 0.026969, 0.819059,
		-0.574625, 0.699366, -0.425079,
		-0.584286, -0.714254, -0.385293,
		42.084503, 34.615158, 30.611040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.919117, 35.279369, 31.141745>,  <42.493504, 35.115135, 30.880745>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.919117, 35.279369, 31.141745> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.860348, 34.898884, 31.033222>,  <41.825085, 34.670593, 30.968109>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.860348, 34.898884, 31.033222>,  <41.919117, 35.279369, 31.141745>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.860348, 34.898884, 31.033222> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539685, -0.152773, 0.827889,
		-0.828947, 0.268060, -0.490909,
		-0.146927, -0.951212, -0.271308,
		41.816269, 34.613522, 30.951830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.176956, 35.103714, 31.300215>,  <41.919117, 35.279369, 31.141745>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.176956, 35.103714, 31.300215> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.376534, 34.757309, 31.287127>,  <41.496281, 34.549465, 31.279274>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.376534, 34.757309, 31.287127>,  <41.176956, 35.103714, 31.300215>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.376534, 34.757309, 31.287127> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366709, -0.245184, 0.897446,
		-0.785224, -0.435778, -0.439909,
		0.498946, -0.866015, -0.032721,
		41.526218, 34.497505, 31.277309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.668663, 34.633324, 31.352919>,  <41.176956, 35.103714, 31.300215>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.668663, 34.633324, 31.352919> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.994762, 34.426407, 31.457056>,  <41.190422, 34.302258, 31.519539>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.994762, 34.426407, 31.457056>,  <40.668663, 34.633324, 31.352919>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.994762, 34.426407, 31.457056> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441284, -0.263787, 0.857721,
		-0.375019, -0.814140, -0.443326,
		0.815248, -0.517294, 0.260342,
		41.239338, 34.271217, 31.535158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.379204, 34.121868, 31.584908>,  <40.668663, 34.633324, 31.352919>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.379204, 34.121868, 31.584908> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.755856, 34.076210, 31.711592>,  <40.981846, 34.048817, 31.787603>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.755856, 34.076210, 31.711592>,  <40.379204, 34.121868, 31.584908>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.755856, 34.076210, 31.711592> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334349, -0.426954, 0.840191,
		0.039319, -0.897040, -0.440196,
		0.941629, -0.114143, 0.316712,
		41.038345, 34.041965, 31.806606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.607128, 33.337254, 31.636261>,  <40.379204, 34.121868, 31.584908>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.607128, 33.337254, 31.636261> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.786758, 33.577965, 31.900442>,  <40.894535, 33.722389, 32.058949>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.786758, 33.577965, 31.900442>,  <40.607128, 33.337254, 31.636261>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.786758, 33.577965, 31.900442> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503079, -0.440577, 0.743507,
		0.738404, -0.666151, 0.104887,
		0.449077, 0.601776, 0.660451,
		40.921482, 33.758499, 32.098576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.734524, 32.992237, 32.261703>,  <40.607128, 33.337254, 31.636261>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.734524, 32.992237, 32.261703> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.836647, 33.345196, 32.419792>,  <40.897923, 33.556969, 32.514645>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.836647, 33.345196, 32.419792>,  <40.734524, 32.992237, 32.261703>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.836647, 33.345196, 32.419792> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195918, -0.353077, 0.914851,
		0.946802, -0.310999, 0.082734,
		0.255307, 0.882392, 0.395224,
		40.913239, 33.609913, 32.538361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.172031, 32.875481, 32.959988>,  <40.734524, 32.992237, 32.261703>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.172031, 32.875481, 32.959988> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.992348, 33.232826, 32.955826>,  <40.884537, 33.447235, 32.953327>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.992348, 33.232826, 32.955826>,  <41.172031, 32.875481, 32.959988>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.992348, 33.232826, 32.955826> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443667, -0.212947, 0.870525,
		0.775483, 0.395662, 0.492015,
		-0.449207, 0.893368, -0.010406,
		40.857586, 33.500835, 32.952705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.204838, 33.072197, 33.645222>,  <41.172031, 32.875481, 32.959988>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.204838, 33.072197, 33.645222> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.907005, 33.290047, 33.490829>,  <40.728306, 33.420757, 33.398193>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.907005, 33.290047, 33.490829>,  <41.204838, 33.072197, 33.645222>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.907005, 33.290047, 33.490829> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518422, -0.107545, 0.848336,
		0.420514, 0.831757, 0.362421,
		-0.744585, 0.544623, -0.385977,
		40.683628, 33.453434, 33.375038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.046551, 33.427280, 34.234074>,  <41.204838, 33.072197, 33.645222>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.046551, 33.427280, 34.234074> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.739925, 33.461155, 33.979450>,  <40.555950, 33.481480, 33.826675>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.739925, 33.461155, 33.979450>,  <41.046551, 33.427280, 34.234074>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.739925, 33.461155, 33.979450> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.642108, -0.087531, 0.761601,
		0.008776, 0.992556, 0.121474,
		-0.766564, 0.084683, -0.636560,
		40.509956, 33.486561, 33.788483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.378498, 34.022038, 34.255356>,  <41.046551, 33.427280, 34.234074>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.378498, 34.022038, 34.255356> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.765141, 34.028549, 34.357658>,  <41.997124, 34.032455, 34.419041>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.765141, 34.028549, 34.357658>,  <41.378498, 34.022038, 34.255356>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.765141, 34.028549, 34.357658> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254673, -0.050419, 0.965712,
		0.028625, -0.998595, -0.044587,
		0.966603, 0.016288, 0.255758,
		42.055122, 34.033432, 34.434387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.598099, 34.688549, 34.354633>,  <41.378498, 34.022038, 34.255356>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.598099, 34.688549, 34.354633> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.532204, 34.959412, 34.641499>,  <41.492664, 35.121929, 34.813618>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.532204, 34.959412, 34.641499>,  <41.598099, 34.688549, 34.354633>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.532204, 34.959412, 34.641499> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556258, 0.536649, -0.634496,
		-0.814517, -0.503453, 0.288266,
		-0.164742, 0.677158, 0.717159,
		41.482780, 35.162560, 34.856647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.937187, 34.863724, 34.403774>,  <41.598099, 34.688549, 34.354633>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.937187, 34.863724, 34.403774> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.114967, 35.197090, 34.535152>,  <41.221638, 35.397110, 34.613979>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.114967, 35.197090, 34.535152>,  <40.937187, 34.863724, 34.403774>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.114967, 35.197090, 34.535152> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.587153, 0.547937, -0.595833,
		-0.676545, 0.071972, 0.732876,
		0.444454, 0.833418, 0.328445,
		41.248302, 35.447117, 34.633686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.393814, 35.276104, 34.421448>,  <40.937187, 34.863724, 34.403774>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.393814, 35.276104, 34.421448> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.692886, 35.541332, 34.435963>,  <40.872330, 35.700470, 34.444672>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.692886, 35.541332, 34.435963>,  <40.393814, 35.276104, 34.421448>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.692886, 35.541332, 34.435963> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429632, 0.524676, -0.734936,
		-0.506353, 0.533905, 0.677165,
		0.747678, 0.663069, 0.036289,
		40.917191, 35.740253, 34.446850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.063183, 35.845276, 34.297230>,  <40.393814, 35.276104, 34.421448>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.063183, 35.845276, 34.297230> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.442730, 35.954525, 34.233921>,  <40.670460, 36.020073, 34.195934>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.442730, 35.954525, 34.233921>,  <40.063183, 35.845276, 34.297230>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.442730, 35.954525, 34.233921> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302269, 0.641631, -0.704941,
		-0.090981, 0.716739, 0.691381,
		0.948871, 0.273120, -0.158272,
		40.727390, 36.036461, 34.186440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.985893, 36.501102, 34.211185>,  <40.063183, 35.845276, 34.297230>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.985893, 36.501102, 34.211185> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.348835, 36.428181, 34.059669>,  <40.566601, 36.384426, 33.968761>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.348835, 36.428181, 34.059669>,  <39.985893, 36.501102, 34.211185>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.348835, 36.428181, 34.059669> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166126, 0.672220, -0.721472,
		0.386157, 0.717554, 0.579654,
		0.907350, -0.182306, -0.378787,
		40.621040, 36.373489, 33.946033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.300282, 37.163059, 34.226555>,  <39.985893, 36.501102, 34.211185>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.300282, 37.163059, 34.226555> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.496052, 36.951283, 33.949383>,  <40.613514, 36.824219, 33.783077>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.496052, 36.951283, 33.949383>,  <40.300282, 37.163059, 34.226555>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.496052, 36.951283, 33.949383> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293365, 0.648332, -0.702568,
		0.821217, 0.547139, 0.161993,
		0.489428, -0.529438, -0.692933,
		40.642879, 36.792450, 33.741505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.745186, 37.669056, 33.817467>,  <40.300282, 37.163059, 34.226555>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.745186, 37.669056, 33.817467> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.666748, 37.350269, 33.588947>,  <40.619686, 37.158997, 33.451836>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.666748, 37.350269, 33.588947>,  <40.745186, 37.669056, 33.817467>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.666748, 37.350269, 33.588947> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175011, 0.601705, -0.779309,
		0.964841, -0.052832, -0.257468,
		-0.196092, -0.796970, -0.571303,
		40.607922, 37.111179, 33.417557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.999565, 37.852940, 33.171864>,  <40.745186, 37.669056, 33.817467>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.999565, 37.852940, 33.171864> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.790195, 37.522030, 33.090225>,  <40.664574, 37.323486, 33.041241>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.790195, 37.522030, 33.090225>,  <40.999565, 37.852940, 33.171864>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.790195, 37.522030, 33.090225> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219278, 0.362242, -0.905924,
		0.823376, -0.429425, -0.371007,
		-0.523420, -0.827270, -0.204098,
		40.633171, 37.273849, 33.028996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.281174, 37.446968, 32.597157>,  <40.999565, 37.852940, 33.171864>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.281174, 37.446968, 32.597157> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.889935, 37.368122, 32.623901>,  <40.655190, 37.320812, 32.639950>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.889935, 37.368122, 32.623901>,  <41.281174, 37.446968, 32.597157>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.889935, 37.368122, 32.623901> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128725, 0.320369, -0.938506,
		0.163572, -0.926558, -0.338726,
		-0.978097, -0.197116, 0.066868,
		40.596504, 37.308987, 32.643963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.094765, 37.271141, 31.950821>,  <41.281174, 37.446968, 32.597157>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.094765, 37.271141, 31.950821> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.737595, 37.344467, 32.115299>,  <40.523293, 37.388462, 32.213985>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.737595, 37.344467, 32.115299>,  <41.094765, 37.271141, 31.950821>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.737595, 37.344467, 32.115299> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326101, 0.366360, -0.871458,
		-0.310396, -0.912237, -0.267353,
		-0.892924, 0.183312, 0.411198,
		40.469719, 37.399460, 32.238659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.608212, 37.008133, 31.452229>,  <41.094765, 37.271141, 31.950821>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.608212, 37.008133, 31.452229> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.403133, 37.271404, 31.672754>,  <40.280087, 37.429367, 31.805069>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.403133, 37.271404, 31.672754>,  <40.608212, 37.008133, 31.452229>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.403133, 37.271404, 31.672754> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358186, 0.419611, -0.834044,
		-0.780284, -0.625085, 0.020616,
		-0.512698, 0.658176, 0.551312,
		40.249325, 37.468857, 31.838148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.891685, 37.006126, 31.170500>,  <40.608212, 37.008133, 31.452229>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.891685, 37.006126, 31.170500> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.933598, 37.357235, 31.357491>,  <39.958744, 37.567902, 31.469685>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.933598, 37.357235, 31.357491>,  <39.891685, 37.006126, 31.170500>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.933598, 37.357235, 31.357491> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360691, 0.471598, -0.804672,
		-0.926781, -0.084302, 0.366018,
		0.104778, 0.877775, 0.467475,
		39.965031, 37.620567, 31.497734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.299530, 37.353733, 31.099878>,  <39.891685, 37.006126, 31.170500>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.299530, 37.353733, 31.099878> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.576450, 37.632465, 31.174879>,  <39.742603, 37.799706, 31.219879>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.576450, 37.632465, 31.174879>,  <39.299530, 37.353733, 31.099878>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.576450, 37.632465, 31.174879> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404197, 0.589708, -0.699192,
		-0.597786, 0.408262, 0.689909,
		0.692298, 0.696827, 0.187501,
		39.784142, 37.841515, 31.231129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.011040, 37.847137, 30.873055>,  <39.299530, 37.353733, 31.099878>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.011040, 37.847137, 30.873055> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.372486, 38.015182, 30.906452>,  <39.589355, 38.116009, 30.926491>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.372486, 38.015182, 30.906452>,  <39.011040, 37.847137, 30.873055>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.372486, 38.015182, 30.906452> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192272, 0.572025, -0.797382,
		-0.382755, 0.704478, 0.597670,
		0.903621, 0.420117, 0.083494,
		39.643574, 38.141216, 30.931499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.867474, 38.598888, 30.672682>,  <39.011040, 37.847137, 30.873055>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.867474, 38.598888, 30.672682> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.255051, 38.510559, 30.628155>,  <39.487595, 38.457561, 30.601439>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.255051, 38.510559, 30.628155>,  <38.867474, 38.598888, 30.672682>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.255051, 38.510559, 30.628155> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011354, 0.489401, -0.871985,
		0.247034, 0.843638, 0.476707,
		0.968941, -0.220822, -0.111320,
		39.545734, 38.444313, 30.594759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.441513, 39.239304, 30.500488>,  <38.867474, 38.598888, 30.672682>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.441513, 39.239304, 30.500488> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.088112, 39.380402, 30.377203>,  <37.876072, 39.465061, 30.303232>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.088112, 39.380402, 30.377203>,  <38.441513, 39.239304, 30.500488>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.088112, 39.380402, 30.377203> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465703, -0.590559, 0.659061,
		0.050462, 0.725817, 0.686034,
		-0.883501, 0.352746, -0.308215,
		37.823063, 39.486225, 30.284739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.095661, 39.298569, 31.111917>,  <38.441513, 39.239304, 30.500488>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.095661, 39.298569, 31.111917> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.805805, 39.270844, 30.837666>,  <37.631889, 39.254208, 30.673115>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.805805, 39.270844, 30.837666>,  <38.095661, 39.298569, 31.111917>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.805805, 39.270844, 30.837666> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465042, -0.685045, 0.560758,
		-0.508557, 0.725196, 0.464179,
		-0.724642, -0.069315, -0.685631,
		37.588413, 39.250050, 30.631977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.449825, 39.515205, 31.461031>,  <38.095661, 39.298569, 31.111917>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.449825, 39.515205, 31.461031> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.333488, 39.313931, 31.135525>,  <37.263687, 39.193165, 30.940222>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.333488, 39.313931, 31.135525>,  <37.449825, 39.515205, 31.461031>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.333488, 39.313931, 31.135525> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.678481, -0.491214, 0.546234,
		-0.674590, 0.710993, -0.198536,
		-0.290845, -0.503187, -0.813764,
		37.246235, 39.162975, 30.891396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.845406, 39.470058, 31.522457>,  <37.449825, 39.515205, 31.461031>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.845406, 39.470058, 31.522457> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.865250, 39.184231, 31.243336>,  <36.877155, 39.012733, 31.075863>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.865250, 39.184231, 31.243336>,  <36.845406, 39.470058, 31.522457>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.865250, 39.184231, 31.243336> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.780203, -0.463920, 0.419597,
		-0.623556, 0.523611, -0.580525,
		0.049612, -0.714570, -0.697803,
		36.880135, 38.969860, 31.033995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.198799, 39.437836, 31.280565>,  <36.845406, 39.470058, 31.522457>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.198799, 39.437836, 31.280565> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.382286, 39.097820, 31.177025>,  <36.492378, 38.893810, 31.114901>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.382286, 39.097820, 31.177025>,  <36.198799, 39.437836, 31.280565>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.382286, 39.097820, 31.177025> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.850085, -0.504630, 0.150679,
		-0.258708, 0.150927, -0.954092,
		0.458722, -0.850041, -0.258852,
		36.519901, 38.842808, 31.099369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.745567, 39.018646, 30.884312>,  <36.198799, 39.437836, 31.280565>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.745567, 39.018646, 30.884312> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.994072, 38.735901, 31.019587>,  <36.143173, 38.566254, 31.100752>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.994072, 38.735901, 31.019587>,  <35.745567, 39.018646, 30.884312>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.994072, 38.735901, 31.019587> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.780464, -0.519590, 0.347709,
		-0.070065, -0.479962, -0.874487,
		0.621262, -0.706868, 0.338188,
		36.180450, 38.523842, 31.121042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.472519, 38.432171, 30.689964>,  <35.745567, 39.018646, 30.884312>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.472519, 38.432171, 30.689964> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.715248, 38.293556, 30.976093>,  <35.860886, 38.210388, 31.147770>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.715248, 38.293556, 30.976093>,  <35.472519, 38.432171, 30.689964>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.715248, 38.293556, 30.976093> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.679231, -0.693488, 0.240250,
		0.412812, -0.631656, -0.656198,
		0.606821, -0.346532, 0.715321,
		35.897293, 38.189598, 31.190689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.449562, 37.699821, 30.685421>,  <35.472519, 38.432171, 30.689964>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.449562, 37.699821, 30.685421> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.577866, 37.810238, 31.047838>,  <35.654846, 37.876488, 31.265289>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.577866, 37.810238, 31.047838>,  <35.449562, 37.699821, 30.685421>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.577866, 37.810238, 31.047838> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.580774, -0.698337, 0.418363,
		0.748209, -0.660400, -0.063682,
		0.320758, 0.276038, 0.906045,
		35.674091, 37.893051, 31.319653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.557098, 37.065552, 31.152637>,  <35.449562, 37.699821, 30.685421>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.557098, 37.065552, 31.152637> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.508118, 37.382210, 31.392073>,  <35.478729, 37.572205, 31.535734>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.508118, 37.382210, 31.392073>,  <35.557098, 37.065552, 31.152637>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.508118, 37.382210, 31.392073> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.680541, -0.505981, 0.529949,
		0.722405, -0.342470, 0.600704,
		-0.122453, 0.791642, 0.598588,
		35.471382, 37.619701, 31.571650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.393181, 36.690975, 31.649490>,  <35.557098, 37.065552, 31.152637>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.393181, 36.690975, 31.649490> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.308556, 37.053802, 31.795073>,  <35.257782, 37.271500, 31.882421>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.308556, 37.053802, 31.795073>,  <35.393181, 36.690975, 31.649490>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.308556, 37.053802, 31.795073> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.729661, -0.394339, 0.558652,
		0.650259, -0.147375, 0.745281,
		-0.211562, 0.907071, 0.363956,
		35.245087, 37.325924, 31.904259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.373486, 36.628422, 32.344501>,  <35.393181, 36.690975, 31.649490>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.373486, 36.628422, 32.344501> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.152355, 36.949318, 32.254353>,  <35.019676, 37.141857, 32.200264>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.152355, 36.949318, 32.254353>,  <35.373486, 36.628422, 32.344501>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.152355, 36.949318, 32.254353> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.736030, -0.343302, 0.583441,
		0.390690, 0.488422, 0.780260,
		-0.552831, 0.802239, -0.225368,
		34.986507, 37.189991, 32.186741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.136818, 36.843834, 32.888149>,  <35.373486, 36.628422, 32.344501>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.136818, 36.843834, 32.888149> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.876186, 37.006496, 32.632000>,  <34.719807, 37.104092, 32.478310>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.876186, 37.006496, 32.632000>,  <35.136818, 36.843834, 32.888149>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.876186, 37.006496, 32.632000> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.754659, -0.261717, 0.601659,
		0.077070, 0.875292, 0.477414,
		-0.651575, 0.406654, -0.640376,
		34.680714, 37.128494, 32.439888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<39.569786, 42.023552, 27.881060> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.258965, 41.851574, 27.697176>,  <39.072472, 41.748386, 27.586845>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.258965, 41.851574, 27.697176>,  <39.569786, 42.023552, 27.881060>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.258965, 41.851574, 27.697176> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302792, -0.384959, 0.871851,
		-0.551813, 0.816675, 0.168952,
		-0.777058, -0.429941, -0.459708,
		39.025848, 41.722591, 27.559263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.019825, 42.241287, 28.288128>,  <39.569786, 42.023552, 27.881060>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.019825, 42.241287, 28.288128> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.884262, 41.906975, 28.115335>,  <38.802925, 41.706387, 28.011660>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.884262, 41.906975, 28.115335>,  <39.019825, 42.241287, 28.288128>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.884262, 41.906975, 28.115335> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445613, -0.261787, 0.856094,
		-0.828596, 0.482633, -0.283714,
		-0.338906, -0.835783, -0.431983,
		38.782589, 41.656239, 27.985741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.305298, 42.235470, 28.508293>,  <39.019825, 42.241287, 28.288128>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.305298, 42.235470, 28.508293> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.397144, 41.870384, 28.373096>,  <38.452251, 41.651333, 28.291979>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.397144, 41.870384, 28.373096>,  <38.305298, 42.235470, 28.508293>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.397144, 41.870384, 28.373096> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493721, -0.408501, 0.767702,
		-0.838759, -0.009402, -0.544421,
		0.229614, -0.912709, -0.337992,
		38.466030, 41.596573, 28.271698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.690548, 41.798138, 28.601156>,  <38.305298, 42.235470, 28.508293>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.690548, 41.798138, 28.601156> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.000668, 41.548302, 28.563660>,  <38.186741, 41.398399, 28.541161>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.000668, 41.548302, 28.563660>,  <37.690548, 41.798138, 28.601156>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.000668, 41.548302, 28.563660> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407966, -0.608554, 0.680607,
		-0.482149, -0.489433, -0.726627,
		0.775304, -0.624593, -0.093742,
		38.233257, 41.360924, 28.535536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.305542, 41.190060, 28.734509>,  <37.690548, 41.798138, 28.601156>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.305542, 41.190060, 28.734509> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.688686, 41.097462, 28.802519>,  <37.918575, 41.041904, 28.843325>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.688686, 41.097462, 28.802519>,  <37.305542, 41.190060, 28.734509>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.688686, 41.097462, 28.802519> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284690, -0.686755, 0.668820,
		-0.038062, -0.689042, -0.723721,
		0.957864, -0.231492, 0.170024,
		37.976044, 41.028015, 28.853525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.323009, 40.418827, 28.673203>,  <37.305542, 41.190060, 28.734509>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.323009, 40.418827, 28.673203> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.643494, 40.522816, 28.888786>,  <37.835785, 40.585209, 29.018137>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.643494, 40.522816, 28.888786>,  <37.323009, 40.418827, 28.673203>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.643494, 40.522816, 28.888786> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221415, -0.707963, 0.670644,
		0.555912, -0.656660, -0.509666,
		0.801210, 0.259971, 0.538960,
		37.883858, 40.600807, 29.050474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.743053, 39.761402, 28.791605>,  <37.323009, 40.418827, 28.673203>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.743053, 39.761402, 28.791605> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.839378, 40.026928, 29.074829>,  <37.897175, 40.186245, 29.244764>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.839378, 40.026928, 29.074829>,  <37.743053, 39.761402, 28.791605>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.839378, 40.026928, 29.074829> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134519, -0.699663, 0.701696,
		0.961203, -0.264228, -0.079194,
		0.240817, 0.663819, 0.708062,
		37.911625, 40.226074, 29.287247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.126949, 39.421837, 29.187700>,  <37.743053, 39.761402, 28.791605>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.126949, 39.421837, 29.187700> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.040657, 39.722248, 29.437313>,  <37.988884, 39.902496, 29.587080>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.040657, 39.722248, 29.437313>,  <38.126949, 39.421837, 29.187700>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.040657, 39.722248, 29.437313> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377989, -0.653482, 0.655809,
		0.900326, -0.094401, 0.424855,
		-0.215726, 0.751032, 0.624030,
		37.975941, 39.947559, 29.624521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.511166, 39.280682, 29.781418>,  <38.126949, 39.421837, 29.187700>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.511166, 39.280682, 29.781418> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.219574, 39.535355, 29.881998>,  <38.044621, 39.688156, 29.942347>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.219574, 39.535355, 29.881998>,  <38.511166, 39.280682, 29.781418>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.219574, 39.535355, 29.881998> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305741, -0.631487, 0.712563,
		0.612463, 0.442565, 0.655001,
		-0.728980, 0.636679, 0.251453,
		38.000881, 39.726357, 29.957434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.104023, 39.221851, 30.187220>,  <38.511166, 39.280682, 29.781418>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.104023, 39.221851, 30.187220> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.371590, 38.924564, 30.181904>,  <39.532127, 38.746193, 30.178715>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.371590, 38.924564, 30.181904>,  <39.104023, 39.221851, 30.187220>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.371590, 38.924564, 30.181904> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232893, 0.226521, -0.945753,
		0.705914, 0.629533, 0.324614,
		0.668914, -0.743221, -0.013291,
		39.572266, 38.701599, 30.177917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.774281, 39.532990, 29.826105>,  <39.104023, 39.221851, 30.187220>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.774281, 39.532990, 29.826105> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.754391, 39.135319, 29.787884>,  <39.742455, 38.896713, 29.764952>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.754391, 39.135319, 29.787884>,  <39.774281, 39.532990, 29.826105>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.754391, 39.135319, 29.787884> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227811, 0.081859, -0.970258,
		0.972435, -0.070015, 0.222415,
		-0.049726, -0.994182, -0.095552,
		39.739471, 38.837063, 29.759218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.375843, 39.425560, 29.510815>,  <39.774281, 39.532990, 29.826105>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.375843, 39.425560, 29.510815> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.172977, 39.088882, 29.436703>,  <40.051258, 38.886875, 29.392237>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.172977, 39.088882, 29.436703>,  <40.375843, 39.425560, 29.510815>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.172977, 39.088882, 29.436703> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382890, -0.027452, -0.923386,
		0.772125, -0.539252, 0.336200,
		-0.507167, -0.841697, -0.185278,
		40.020828, 38.836372, 29.381119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.888638, 38.905193, 29.203146>,  <40.375843, 39.425560, 29.510815>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.888638, 38.905193, 29.203146> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.498306, 38.858982, 29.128954>,  <40.264107, 38.831253, 29.084438>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.498306, 38.858982, 29.128954>,  <40.888638, 38.905193, 29.203146>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.498306, 38.858982, 29.128954> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181516, 0.044023, -0.982402,
		0.121667, -0.992327, -0.021988,
		-0.975833, -0.115534, -0.185480,
		40.205555, 38.824322, 29.073311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.877186, 38.422630, 28.699129>,  <40.888638, 38.905193, 29.203146>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.877186, 38.422630, 28.699129> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.501732, 38.544373, 28.634224>,  <40.276459, 38.617420, 28.595280>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.501732, 38.544373, 28.634224>,  <40.877186, 38.422630, 28.699129>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.501732, 38.544373, 28.634224> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183558, 0.042501, -0.982090,
		-0.292013, -0.951608, -0.095761,
		-0.938635, 0.304361, -0.162264,
		40.220142, 38.635681, 28.585545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.714424, 38.011871, 28.142296>,  <40.877186, 38.422630, 28.699129>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.714424, 38.011871, 28.142296> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.458118, 38.318962, 28.143553>,  <40.304337, 38.503216, 28.144308>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.458118, 38.318962, 28.143553>,  <40.714424, 38.011871, 28.142296>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.458118, 38.318962, 28.143553> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025917, -0.017539, -0.999510,
		-0.767300, -0.640532, 0.031136,
		-0.640764, 0.767732, 0.003143,
		40.265888, 38.549282, 28.144495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.154755, 37.746880, 27.647827>,  <40.714424, 38.011871, 28.142296>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.154755, 37.746880, 27.647827> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.145905, 38.143883, 27.695875>,  <40.140594, 38.382084, 27.724705>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.145905, 38.143883, 27.695875>,  <40.154755, 37.746880, 27.647827>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.145905, 38.143883, 27.695875> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024093, 0.119587, -0.992531,
		-0.999465, -0.024858, 0.021267,
		-0.022129, 0.992513, 0.120122,
		40.139267, 38.441635, 27.731913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.767860, 37.996326, 27.124844>,  <40.154755, 37.746880, 27.647827>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.767860, 37.996326, 27.124844> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.954079, 38.335758, 27.225382>,  <40.065811, 38.539417, 27.285704>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.954079, 38.335758, 27.225382>,  <39.767860, 37.996326, 27.124844>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.954079, 38.335758, 27.225382> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023529, 0.295763, -0.954972,
		-0.884711, 0.438668, 0.157657,
		0.465545, 0.848584, 0.251343,
		40.093742, 38.590332, 27.300785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.428791, 38.528046, 26.644787>,  <39.767860, 37.996326, 27.124844>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.428791, 38.528046, 26.644787> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.772190, 38.664383, 26.798054>,  <39.978230, 38.746185, 26.890015>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.772190, 38.664383, 26.798054>,  <39.428791, 38.528046, 26.644787>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.772190, 38.664383, 26.798054> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272011, 0.330755, -0.903665,
		-0.434740, 0.880016, 0.191239,
		0.858494, 0.340840, 0.383167,
		40.029739, 38.766636, 26.913004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.505806, 39.251396, 26.457417>,  <39.428791, 38.528046, 26.644787>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.505806, 39.251396, 26.457417> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.872116, 39.126671, 26.558704>,  <40.091904, 39.051834, 26.619478>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.872116, 39.126671, 26.558704>,  <39.505806, 39.251396, 26.457417>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.872116, 39.126671, 26.558704> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347146, 0.297217, -0.889467,
		0.202088, 0.902460, 0.380430,
		0.915778, -0.311816, 0.253221,
		40.146851, 39.033127, 26.634670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.968849, 39.801598, 26.401882>,  <39.505806, 39.251396, 26.457417>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.968849, 39.801598, 26.401882> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.177479, 39.461494, 26.373522>,  <40.302658, 39.257435, 26.356504>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.177479, 39.461494, 26.373522>,  <39.968849, 39.801598, 26.401882>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.177479, 39.461494, 26.373522> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425036, 0.330985, -0.842492,
		0.739801, 0.409285, 0.534022,
		0.521573, -0.850256, -0.070902,
		40.333950, 39.206417, 26.352251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.496380, 40.129536, 26.163643>,  <39.968849, 39.801598, 26.401882>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.496380, 40.129536, 26.163643> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.609070, 39.750347, 26.104328>,  <40.676685, 39.522835, 26.068739>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.609070, 39.750347, 26.104328>,  <40.496380, 40.129536, 26.163643>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.609070, 39.750347, 26.104328> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490164, 0.275049, -0.827096,
		0.824846, 0.160328, 0.542147,
		0.281724, -0.947968, -0.148286,
		40.693588, 39.465958, 26.059843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.256554, 40.204708, 25.997623>,  <40.496380, 40.129536, 26.163643>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.256554, 40.204708, 25.997623> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.122154, 39.855316, 25.856691>,  <41.041515, 39.645679, 25.772131>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.122154, 39.855316, 25.856691>,  <41.256554, 40.204708, 25.997623>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.122154, 39.855316, 25.856691> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606598, 0.085482, -0.790400,
		0.720517, -0.479296, 0.501130,
		-0.335998, -0.873481, -0.352331,
		41.021355, 39.593273, 25.750992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.873817, 39.728977, 25.872761>,  <41.256554, 40.204708, 25.997623>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.873817, 39.728977, 25.872761> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.568798, 39.630035, 25.633650>,  <41.385788, 39.570671, 25.490183>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.568798, 39.630035, 25.633650>,  <41.873817, 39.728977, 25.872761>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.568798, 39.630035, 25.633650> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597740, 0.084038, -0.797274,
		0.247449, -0.965273, 0.083773,
		-0.762546, -0.247359, -0.597777,
		41.340034, 39.555828, 25.454317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<38.129513, 36.808750, 22.974266> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.322636, 37.049290, 23.228910>,  <38.438511, 37.193615, 23.381697>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.322636, 37.049290, 23.228910>,  <38.129513, 36.808750, 22.974266>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.322636, 37.049290, 23.228910> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335025, -0.544814, 0.768723,
		0.809108, -0.584425, -0.061571,
		0.482806, 0.601352, 0.636611,
		38.467476, 37.229694, 23.419893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.507904, 36.390842, 23.442179>,  <38.129513, 36.808750, 22.974266>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.507904, 36.390842, 23.442179> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.429234, 36.735210, 23.629852>,  <38.382030, 36.941830, 23.742456>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.429234, 36.735210, 23.629852>,  <38.507904, 36.390842, 23.442179>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.429234, 36.735210, 23.629852> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371563, -0.508282, 0.776911,
		0.907336, -0.021530, 0.419854,
		-0.196678, 0.860922, 0.469183,
		38.370232, 36.993488, 23.770607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.724361, 36.261501, 24.090645>,  <38.507904, 36.390842, 23.442179>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.724361, 36.261501, 24.090645> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.536301, 36.608070, 24.157887>,  <38.423462, 36.816013, 24.198233>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.536301, 36.608070, 24.157887>,  <38.724361, 36.261501, 24.090645>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.536301, 36.608070, 24.157887> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259839, -0.317911, 0.911820,
		0.843467, 0.385017, 0.374599,
		-0.470156, 0.866426, 0.168105,
		38.395252, 36.868000, 24.208319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.040249, 36.555527, 24.651953>,  <38.724361, 36.261501, 24.090645>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.040249, 36.555527, 24.651953> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.694153, 36.755585, 24.638058>,  <38.486496, 36.875618, 24.629721>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.694153, 36.755585, 24.638058>,  <39.040249, 36.555527, 24.651953>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.694153, 36.755585, 24.638058> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104843, -0.112754, 0.988076,
		0.490266, 0.858569, 0.149997,
		-0.865244, 0.500146, -0.034736,
		38.434578, 36.905628, 24.627638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.048965, 37.055325, 25.114798>,  <39.040249, 36.555527, 24.651953>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.048965, 37.055325, 25.114798> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.666622, 36.959530, 25.046711>,  <38.437214, 36.902054, 25.005859>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.666622, 36.959530, 25.046711>,  <39.048965, 37.055325, 25.114798>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.666622, 36.959530, 25.046711> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165941, -0.038059, 0.985401,
		-0.242466, 0.970154, -0.003361,
		-0.955863, -0.239484, -0.170216,
		38.379864, 36.887684, 24.995646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.780174, 37.289227, 25.673878>,  <39.048965, 37.055325, 25.114798>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.780174, 37.289227, 25.673878> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.476242, 37.059517, 25.551977>,  <38.293884, 36.921692, 25.478836>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.476242, 37.059517, 25.551977>,  <38.780174, 37.289227, 25.673878>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.476242, 37.059517, 25.551977> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256748, -0.165596, 0.952186,
		-0.597277, 0.801744, -0.021618,
		-0.759829, -0.574269, -0.304752,
		38.248295, 36.887238, 25.460552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.258751, 37.401207, 26.207571>,  <38.780174, 37.289227, 25.673878>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.258751, 37.401207, 26.207571> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.149879, 37.075626, 26.002277>,  <38.084557, 36.880280, 25.879101>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.149879, 37.075626, 26.002277>,  <38.258751, 37.401207, 26.207571>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.149879, 37.075626, 26.002277> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242877, -0.457990, 0.855135,
		-0.931091, 0.357400, -0.073035,
		-0.272176, -0.813947, -0.513235,
		38.068226, 36.831444, 25.848307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.702785, 37.130257, 26.536661>,  <38.258751, 37.401207, 26.207571>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.702785, 37.130257, 26.536661> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.832352, 36.808949, 26.336729>,  <37.910091, 36.616161, 26.216770>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.832352, 36.808949, 26.336729>,  <37.702785, 37.130257, 26.536661>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.832352, 36.808949, 26.336729> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225884, -0.578696, 0.783637,
		-0.918725, -0.140928, -0.368895,
		0.323915, -0.803275, -0.499829,
		37.929527, 36.567966, 26.186781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.254318, 36.710289, 26.684509>,  <37.702785, 37.130257, 26.536661>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.254318, 36.710289, 26.684509> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.545780, 36.470654, 26.551756>,  <37.720657, 36.326870, 26.472103>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.545780, 36.470654, 26.551756>,  <37.254318, 36.710289, 26.684509>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.545780, 36.470654, 26.551756> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244967, -0.680510, 0.690577,
		-0.639570, -0.421893, -0.642617,
		0.728657, -0.599092, -0.331883,
		37.764378, 36.290924, 26.452190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.926586, 36.002331, 26.553097>,  <37.254318, 36.710289, 26.684509>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.926586, 36.002331, 26.553097> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.317444, 35.990234, 26.637264>,  <37.551960, 35.982979, 26.687765>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.317444, 35.990234, 26.637264>,  <36.926586, 36.002331, 26.553097>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.317444, 35.990234, 26.637264> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184175, -0.614716, 0.766944,
		0.106157, -0.788169, -0.606235,
		0.977144, -0.030237, 0.210417,
		37.610588, 35.981163, 26.700390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.023987, 35.327869, 26.543858>,  <36.926586, 36.002331, 26.553097>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.023987, 35.327869, 26.543858> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.334930, 35.478916, 26.745104>,  <37.521496, 35.569546, 26.865850>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.334930, 35.478916, 26.745104>,  <37.023987, 35.327869, 26.543858>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.334930, 35.478916, 26.745104> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094915, -0.720223, 0.687219,
		0.621859, -0.581967, -0.524028,
		0.777356, 0.377615, 0.503115,
		37.568138, 35.592201, 26.896038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.441998, 34.746597, 26.852448>,  <37.023987, 35.327869, 26.543858>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.441998, 34.746597, 26.852448> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.523483, 35.069565, 27.073925>,  <37.572372, 35.263344, 27.206812>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.523483, 35.069565, 27.073925>,  <37.441998, 34.746597, 26.852448>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.523483, 35.069565, 27.073925> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202581, -0.518549, 0.830703,
		0.957843, -0.281390, 0.057935,
		0.203710, 0.807420, 0.553693,
		37.584595, 35.311790, 27.240032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.517769, 34.473331, 27.462149>,  <37.441998, 34.746597, 26.852448>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.517769, 34.473331, 27.462149> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.521458, 34.852749, 27.588758>,  <37.523670, 35.080399, 27.664724>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.521458, 34.852749, 27.588758>,  <37.517769, 34.473331, 27.462149>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.521458, 34.852749, 27.588758> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242568, -0.304962, 0.920956,
		0.970091, -0.085271, 0.227273,
		0.009221, 0.948540, 0.316524,
		37.524223, 35.137310, 27.683716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.971416, 34.550171, 28.012251>,  <37.517769, 34.473331, 27.462149>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.971416, 34.550171, 28.012251> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.689495, 34.831871, 28.046389>,  <37.520340, 35.000889, 28.066872>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.689495, 34.831871, 28.046389>,  <37.971416, 34.550171, 28.012251>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.689495, 34.831871, 28.046389> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376115, -0.472970, 0.796767,
		0.601488, 0.529465, 0.598230,
		-0.704805, 0.704248, 0.085346,
		37.478054, 35.043144, 28.071993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.682217, 34.654549, 28.162777>,  <37.971416, 34.550171, 28.012251>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.682217, 34.654549, 28.162777> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.008698, 34.423447, 28.160793>,  <39.204586, 34.284786, 28.159603>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.008698, 34.423447, 28.160793>,  <38.682217, 34.654549, 28.162777>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.008698, 34.423447, 28.160793> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214986, 0.311655, -0.925555,
		0.536286, 0.754370, 0.378581,
		0.816198, -0.577752, -0.004957,
		39.253555, 34.250122, 28.159306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.345154, 35.088413, 28.031027>,  <38.682217, 34.654549, 28.162777>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.345154, 35.088413, 28.031027> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.449032, 34.716763, 27.925743>,  <39.511356, 34.493771, 27.862574>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.449032, 34.716763, 27.925743>,  <39.345154, 35.088413, 28.031027>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.449032, 34.716763, 27.925743> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557251, 0.366782, -0.744945,
		0.788690, 0.046783, 0.613008,
		0.259691, -0.929130, -0.263207,
		39.526939, 34.438023, 27.846781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.123821, 34.983650, 28.139860>,  <39.345154, 35.088413, 28.031027>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.123821, 34.983650, 28.139860> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.983696, 34.708443, 27.885643>,  <39.899620, 34.543320, 27.733112>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.983696, 34.708443, 27.885643>,  <40.123821, 34.983650, 28.139860>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.983696, 34.708443, 27.885643> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558075, 0.391616, -0.731566,
		0.752219, -0.610957, 0.246778,
		-0.350313, -0.688018, -0.635541,
		39.878601, 34.502037, 27.694981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.662220, 34.909767, 27.696154>,  <40.123821, 34.983650, 28.139860>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.662220, 34.909767, 27.696154> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.385349, 34.700115, 27.497690>,  <40.219227, 34.574326, 27.378613>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.385349, 34.700115, 27.497690>,  <40.662220, 34.909767, 27.696154>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.385349, 34.700115, 27.497690> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491737, 0.160711, -0.855784,
		0.528281, -0.836336, 0.146494,
		-0.692180, -0.524131, -0.496158,
		40.177696, 34.542877, 27.348843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.960945, 34.423355, 27.315823>,  <40.662220, 34.909767, 27.696154>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.960945, 34.423355, 27.315823> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.613358, 34.518414, 27.142191>,  <40.404804, 34.575447, 27.038012>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.613358, 34.518414, 27.142191>,  <40.960945, 34.423355, 27.315823>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.613358, 34.518414, 27.142191> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483359, 0.219475, -0.847464,
		-0.106127, -0.946232, -0.305585,
		-0.868966, 0.237646, -0.434078,
		40.352669, 34.589706, 27.011967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.997223, 34.030392, 26.670691>,  <40.960945, 34.423355, 27.315823>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.997223, 34.030392, 26.670691> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.713562, 34.306427, 26.612877>,  <40.543365, 34.472046, 26.578188>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.713562, 34.306427, 26.612877>,  <40.997223, 34.030392, 26.670691>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.713562, 34.306427, 26.612877> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372037, 0.192117, -0.908119,
		-0.598911, -0.697765, -0.392976,
		-0.709151, 0.690084, -0.144533,
		40.500816, 34.513451, 26.569517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.839039, 33.902470, 26.032587>,  <40.997223, 34.030392, 26.670691>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.839039, 33.902470, 26.032587> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.700695, 34.276211, 26.066931>,  <40.617691, 34.500454, 26.087538>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.700695, 34.276211, 26.066931>,  <40.839039, 33.902470, 26.032587>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.700695, 34.276211, 26.066931> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262643, 0.184254, -0.947137,
		-0.900778, -0.305024, -0.309126,
		-0.345857, 0.934351, 0.085859,
		40.596939, 34.556515, 26.092690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.403130, 34.052086, 25.463627>,  <40.839039, 33.902470, 26.032587>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.403130, 34.052086, 25.463627> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.477287, 34.426571, 25.583054>,  <40.521782, 34.651260, 25.654711>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.477287, 34.426571, 25.583054>,  <40.403130, 34.052086, 25.463627>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.477287, 34.426571, 25.583054> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312784, 0.231811, -0.921103,
		-0.931555, 0.264156, -0.249854,
		0.185396, 0.936208, 0.298569,
		40.532906, 34.707432, 25.672625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.027565, 34.465000, 25.030270>,  <40.403130, 34.052086, 25.463627>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.027565, 34.465000, 25.030270> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.321857, 34.691730, 25.178545>,  <40.498432, 34.827766, 25.267509>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.321857, 34.691730, 25.178545>,  <40.027565, 34.465000, 25.030270>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.321857, 34.691730, 25.178545> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203669, 0.336824, -0.919276,
		-0.645923, 0.751839, 0.132368,
		0.735733, 0.566822, 0.370689,
		40.542576, 34.861778, 25.289751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.963829, 35.067997, 24.761024>,  <40.027565, 34.465000, 25.030270>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.963829, 35.067997, 24.761024> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.333801, 35.119797, 24.903980>,  <40.555786, 35.150875, 24.989754>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.333801, 35.119797, 24.903980>,  <39.963829, 35.067997, 24.761024>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.333801, 35.119797, 24.903980> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248000, 0.506962, -0.825522,
		-0.288084, 0.852186, 0.436791,
		0.924935, 0.129496, 0.357389,
		40.611282, 35.158646, 25.011196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.082394, 35.815102, 25.007317>,  <39.963829, 35.067997, 24.761024>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.082394, 35.815102, 25.007317> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.433575, 35.640770, 24.928066>,  <40.644283, 35.536171, 24.880516>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.433575, 35.640770, 24.928066>,  <40.082394, 35.815102, 25.007317>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.433575, 35.640770, 24.928066> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133127, 0.619767, -0.773412,
		0.459868, 0.652642, 0.602146,
		0.877951, -0.435829, -0.198127,
		40.696960, 35.510021, 24.868628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.591343, 36.311699, 24.973841>,  <40.082394, 35.815102, 25.007317>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.591343, 36.311699, 24.973841> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.765751, 36.014065, 24.771366>,  <40.870396, 35.835484, 24.649881>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.765751, 36.014065, 24.771366>,  <40.591343, 36.311699, 24.973841>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.765751, 36.014065, 24.771366> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354025, 0.658936, -0.663679,
		0.827378, 0.110174, 0.550734,
		0.436018, -0.744087, -0.506185,
		40.896557, 35.790840, 24.619511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.231647, 36.672848, 24.763508>,  <40.591343, 36.311699, 24.973841>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.231647, 36.672848, 24.763508> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.250381, 36.357708, 24.517876>,  <41.261623, 36.168625, 24.370497>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.250381, 36.357708, 24.517876>,  <41.231647, 36.672848, 24.763508>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.250381, 36.357708, 24.517876> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264427, 0.602604, -0.752959,
		0.963268, -0.127114, 0.236554,
		0.046837, -0.787852, -0.614081,
		41.264431, 36.121353, 24.333651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.910831, 36.665512, 24.404600>,  <41.231647, 36.672848, 24.763508>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.910831, 36.665512, 24.404600> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.647709, 36.460033, 24.184271>,  <41.489838, 36.336746, 24.052073>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.647709, 36.460033, 24.184271>,  <41.910831, 36.665512, 24.404600>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.647709, 36.460033, 24.184271> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333399, 0.457182, -0.824518,
		0.675381, -0.726016, -0.129469,
		-0.657804, -0.513699, -0.550825,
		41.450367, 36.305923, 24.019024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.617424, 36.407234, 24.477707>,  <41.910831, 36.665512, 24.404600>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.617424, 36.407234, 24.477707> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.969231, 36.555550, 24.597015>,  <43.180313, 36.644539, 24.668600>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.969231, 36.555550, 24.597015>,  <42.617424, 36.407234, 24.477707>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.969231, 36.555550, 24.597015> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075926, -0.509421, 0.857161,
		0.469772, -0.776534, -0.419891,
		0.879516, 0.370790, 0.298271,
		43.233086, 36.666786, 24.686497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.891735, 35.818920, 24.790478>,  <42.617424, 36.407234, 24.477707>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.891735, 35.818920, 24.790478> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.094601, 36.129219, 24.940678>,  <43.216320, 36.315399, 25.030798>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.094601, 36.129219, 24.940678>,  <42.891735, 35.818920, 24.790478>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.094601, 36.129219, 24.940678> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061188, -0.467005, 0.882135,
		0.859672, -0.424415, -0.284316,
		0.507168, 0.775744, 0.375502,
		43.246750, 36.361942, 25.053328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.523113, 35.602566, 25.078560>,  <42.891735, 35.818920, 24.790478>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.523113, 35.602566, 25.078560> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.443642, 35.956631, 25.246851>,  <43.395958, 36.169071, 25.347826>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.443642, 35.956631, 25.246851>,  <43.523113, 35.602566, 25.078560>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.443642, 35.956631, 25.246851> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060803, -0.417326, 0.906720,
		0.978177, 0.205727, 0.029093,
		-0.198678, 0.885164, 0.420728,
		43.384037, 36.222179, 25.373070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.094334, 35.715248, 25.572594>,  <43.523113, 35.602566, 25.078560>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.094334, 35.715248, 25.572594> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.768925, 35.926647, 25.669641>,  <43.573677, 36.053486, 25.727871>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.768925, 35.926647, 25.669641>,  <44.094334, 35.715248, 25.572594>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.768925, 35.926647, 25.669641> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055977, -0.486439, 0.871920,
		0.578831, 0.695746, 0.425313,
		-0.813524, 0.528502, 0.242620,
		43.524868, 36.085197, 25.742428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.192902, 35.845238, 26.178667>,  <44.094334, 35.715248, 25.572594>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.192902, 35.845238, 26.178667> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.802612, 35.932274, 26.168720>,  <43.568439, 35.984497, 26.162752>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.802612, 35.932274, 26.168720>,  <44.192902, 35.845238, 26.178667>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.802612, 35.932274, 26.168720> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024923, 0.002491, 0.999686,
		0.217586, 0.976037, 0.002993,
		-0.975723, 0.217593, -0.024868,
		43.509895, 35.997551, 26.161261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.084656, 36.342468, 26.671917>,  <44.192902, 35.845238, 26.178667>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.084656, 36.342468, 26.671917> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.740635, 36.144581, 26.622021>,  <43.534222, 36.025848, 26.592083>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.740635, 36.144581, 26.622021>,  <44.084656, 36.342468, 26.671917>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.740635, 36.144581, 26.622021> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075654, -0.118131, 0.990112,
		-0.504559, 0.860989, 0.064173,
		-0.860056, -0.494715, -0.124742,
		43.482616, 35.996166, 26.584599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.721329, 36.493679, 27.263716>,  <44.084656, 36.342468, 26.671917>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.721329, 36.493679, 27.263716> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.481350, 36.205105, 27.125389>,  <43.337364, 36.031960, 27.042393>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.481350, 36.205105, 27.125389>,  <43.721329, 36.493679, 27.263716>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.481350, 36.205105, 27.125389> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338347, -0.162897, 0.926815,
		-0.724972, 0.673047, -0.146366,
		-0.599947, -0.721438, -0.345819,
		43.301365, 35.988674, 27.021643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.012932, 36.477497, 27.649580>,  <43.721329, 36.493679, 27.263716>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.012932, 36.477497, 27.649580> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.009346, 36.121151, 27.467913>,  <43.007195, 35.907341, 27.358912>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.009346, 36.121151, 27.467913>,  <43.012932, 36.477497, 27.649580>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.009346, 36.121151, 27.467913> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487104, -0.392766, 0.780041,
		-0.873298, 0.228223, -0.430424,
		-0.008967, -0.890870, -0.454170,
		43.006657, 35.853889, 27.331661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.290958, 36.188099, 27.563549>,  <43.012932, 36.477497, 27.649580>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.290958, 36.188099, 27.563549> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.539715, 35.875320, 27.580564>,  <42.688969, 35.687653, 27.590775>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.539715, 35.875320, 27.580564>,  <42.290958, 36.188099, 27.563549>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.539715, 35.875320, 27.580564> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.629036, -0.466443, 0.621889,
		-0.466443, -0.413505, -0.781949,
		-0.621889, 0.781949, -0.042541,
		42.726280, 35.640736, 27.593327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.853271, 35.681828, 27.852547>,  <42.290958, 36.188099, 27.563549>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.853271, 35.681828, 27.852547> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.197529, 35.489994, 27.921001>,  <42.404083, 35.374893, 27.962074>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.197529, 35.489994, 27.921001>,  <41.853271, 35.681828, 27.852547>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.197529, 35.489994, 27.921001> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471098, -0.622348, 0.625099,
		-0.193281, -0.618611, -0.761553,
		0.860644, -0.479586, 0.171139,
		42.455723, 35.346119, 27.972343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.684048, 35.021416, 28.058283>,  <41.853271, 35.681828, 27.852547>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.684048, 35.021416, 28.058283> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.065239, 35.033676, 28.178879>,  <42.293953, 35.041035, 28.251236>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.065239, 35.033676, 28.178879>,  <41.684048, 35.021416, 28.058283>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.065239, 35.033676, 28.178879> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218997, -0.617991, 0.755068,
		0.209464, -0.785587, -0.582218,
		0.952977, 0.030655, 0.301488,
		42.351131, 35.042873, 28.269325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.871906, 34.315350, 28.245443>,  <41.684048, 35.021416, 28.058283>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.871906, 34.315350, 28.245443> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.121349, 34.576851, 28.416897>,  <42.271015, 34.733749, 28.519768>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.121349, 34.576851, 28.416897>,  <41.871906, 34.315350, 28.245443>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.121349, 34.576851, 28.416897> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020068, -0.534738, 0.844780,
		0.781482, -0.535411, -0.320346,
		0.623606, 0.653751, 0.428633,
		42.308430, 34.772976, 28.545486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.265591, 33.914753, 28.740028>,  <41.871906, 34.315350, 28.245443>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.265591, 33.914753, 28.740028> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.328476, 34.290279, 28.862602>,  <42.366207, 34.515594, 28.936148>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.328476, 34.290279, 28.862602>,  <42.265591, 33.914753, 28.740028>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.328476, 34.290279, 28.862602> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023467, -0.306656, 0.951531,
		0.987285, -0.156787, -0.026179,
		0.157215, 0.938818, 0.306437,
		42.375641, 34.571926, 28.954533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.816490, 33.922768, 29.273819>,  <42.265591, 33.914753, 28.740028>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.816490, 33.922768, 29.273819> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.573910, 34.236389, 29.326698>,  <42.428364, 34.424564, 29.358427>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.573910, 34.236389, 29.326698>,  <42.816490, 33.922768, 29.273819>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.573910, 34.236389, 29.326698> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038179, -0.194785, 0.980102,
		0.794206, 0.589334, 0.148061,
		-0.606448, 0.784056, 0.132200,
		42.391975, 34.471607, 29.366358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<42.045292, 38.989746, 25.378323> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.720470, 39.024899, 25.147552>,  <41.525578, 39.045990, 25.009090>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.720470, 39.024899, 25.147552>,  <42.045292, 38.989746, 25.378323>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.720470, 39.024899, 25.147552> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562769, 0.379574, -0.734312,
		0.154453, -0.920978, -0.357693,
		-0.812056, 0.087882, -0.576924,
		41.476852, 39.051262, 24.974476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.092838, 38.674553, 24.714336>,  <42.045292, 38.989746, 25.378323>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.092838, 38.674553, 24.714336> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.835918, 38.978203, 24.672031>,  <41.681767, 39.160393, 24.646648>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.835918, 38.978203, 24.672031>,  <42.092838, 38.674553, 24.714336>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.835918, 38.978203, 24.672031> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582334, 0.393618, -0.711303,
		-0.498335, -0.518459, -0.694883,
		-0.642300, 0.759121, -0.105763,
		41.643227, 39.205940, 24.640303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.940353, 38.733845, 23.991167>,  <42.092838, 38.674553, 24.714336>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.940353, 38.733845, 23.991167> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.835255, 39.093941, 24.130043>,  <41.772198, 39.309998, 24.213369>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.835255, 39.093941, 24.130043>,  <41.940353, 38.733845, 23.991167>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.835255, 39.093941, 24.130043> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477515, 0.433998, -0.763953,
		-0.838418, -0.034935, -0.543907,
		-0.262743, 0.900236, 0.347190,
		41.756432, 39.364010, 24.234200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.618690, 39.116295, 23.391279>,  <41.940353, 38.733845, 23.991167>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.618690, 39.116295, 23.391279> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.765278, 39.373573, 23.660204>,  <41.853230, 39.527939, 23.821558>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.765278, 39.373573, 23.660204>,  <41.618690, 39.116295, 23.391279>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.765278, 39.373573, 23.660204> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614544, 0.375212, -0.693939,
		-0.698598, 0.667469, -0.257770,
		0.366465, 0.643196, 0.672312,
		41.875217, 39.566532, 23.861897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.623657, 39.735554, 23.070648>,  <41.618690, 39.116295, 23.391279>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.623657, 39.735554, 23.070648> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.889099, 39.798893, 23.363100>,  <42.048363, 39.836895, 23.538572>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.889099, 39.798893, 23.363100>,  <41.623657, 39.735554, 23.070648>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.889099, 39.798893, 23.363100> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598155, 0.474631, -0.645705,
		-0.449264, 0.865824, 0.220251,
		0.663605, 0.158348, 0.731132,
		42.088181, 39.846397, 23.582439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.959740, 40.335289, 22.900745>,  <41.623657, 39.735554, 23.070648>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.959740, 40.335289, 22.900745> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.208630, 40.206539, 23.186190>,  <42.357964, 40.129292, 23.357456>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.208630, 40.206539, 23.186190>,  <41.959740, 40.335289, 22.900745>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.208630, 40.206539, 23.186190> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.778525, 0.350005, -0.520956,
		-0.082087, 0.879714, 0.468365,
		0.622223, -0.321870, 0.713610,
		42.395298, 40.109978, 23.400272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.302113, 40.913486, 23.143129>,  <41.959740, 40.335289, 22.900745>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.302113, 40.913486, 23.143129> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.518330, 40.588070, 23.228880>,  <42.648060, 40.392818, 23.280331>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.518330, 40.588070, 23.228880>,  <42.302113, 40.913486, 23.143129>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.518330, 40.588070, 23.228880> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.785962, 0.397413, -0.473632,
		0.300124, 0.424511, 0.854234,
		0.540546, -0.813544, 0.214376,
		42.680492, 40.344006, 23.293192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.906502, 41.174484, 23.240831>,  <42.302113, 40.913486, 23.143129>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.906502, 41.174484, 23.240831> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.963993, 40.783661, 23.177973>,  <42.998489, 40.549168, 23.140259>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.963993, 40.783661, 23.177973>,  <42.906502, 41.174484, 23.240831>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.963993, 40.783661, 23.177973> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.756419, 0.210856, -0.619169,
		0.638100, -0.029874, 0.769373,
		0.143730, -0.977061, -0.157144,
		43.007111, 40.490543, 23.130829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.662773, 41.097042, 23.278160>,  <42.906502, 41.174484, 23.240831>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.662773, 41.097042, 23.278160> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.531185, 40.785648, 23.064341>,  <43.452232, 40.598812, 22.936049>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.531185, 40.785648, 23.064341>,  <43.662773, 41.097042, 23.278160>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.531185, 40.785648, 23.064341> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.672639, 0.204144, -0.711253,
		0.662823, -0.593541, 0.456480,
		-0.328970, -0.778482, -0.534551,
		43.432495, 40.552105, 22.903975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.307034, 40.670441, 23.106220>,  <43.662773, 41.097042, 23.278160>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.307034, 40.670441, 23.106220> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.012074, 40.576721, 22.852812>,  <43.835098, 40.520489, 22.700768>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.012074, 40.576721, 22.852812>,  <44.307034, 40.670441, 23.106220>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.012074, 40.576721, 22.852812> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.640053, 0.057297, -0.766191,
		0.215815, -0.970475, 0.107712,
		-0.737398, -0.234297, -0.633521,
		43.790855, 40.506432, 22.662756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.659748, 40.249767, 22.628944>,  <44.307034, 40.670441, 23.106220>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.659748, 40.249767, 22.628944> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.325317, 40.381325, 22.453308>,  <44.124657, 40.460258, 22.347927>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.325317, 40.381325, 22.453308>,  <44.659748, 40.249767, 22.628944>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.325317, 40.381325, 22.453308> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477886, 0.043539, -0.877342,
		-0.269433, -0.943363, -0.193575,
		-0.836081, 0.328892, -0.439089,
		44.074493, 40.479992, 22.321581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.631275, 39.875225, 22.060745>,  <44.659748, 40.249767, 22.628944>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.631275, 39.875225, 22.060745> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.393585, 40.178566, 21.953569>,  <44.250973, 40.360573, 21.889263>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.393585, 40.178566, 21.953569>,  <44.631275, 39.875225, 22.060745>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.393585, 40.178566, 21.953569> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510037, 0.097711, -0.854585,
		-0.621899, -0.644475, -0.444853,
		-0.594226, 0.758356, -0.267939,
		44.215317, 40.406075, 21.873188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.294472, 39.756996, 21.440182>,  <44.631275, 39.875225, 22.060745>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.294472, 39.756996, 21.440182> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.344204, 40.148739, 21.503942>,  <44.374043, 40.383785, 21.542198>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.344204, 40.148739, 21.503942>,  <44.294472, 39.756996, 21.440182>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.344204, 40.148739, 21.503942> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600784, 0.053552, -0.797616,
		-0.789684, 0.194930, -0.581723,
		0.124327, 0.979354, 0.159400,
		44.381500, 40.442547, 21.551762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.155586, 40.058796, 20.818615>,  <44.294472, 39.756996, 21.440182>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.155586, 40.058796, 20.818615> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.418362, 40.282410, 21.020967>,  <44.576027, 40.416576, 21.142380>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.418362, 40.282410, 21.020967>,  <44.155586, 40.058796, 20.818615>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.418362, 40.282410, 21.020967> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553509, 0.097979, -0.827060,
		-0.511921, 0.823334, -0.245065,
		0.656935, 0.559035, 0.505881,
		44.615440, 40.450119, 21.172731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.374668, 39.795643, 20.182413>,  <44.155586, 40.058796, 20.818615>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.374668, 39.795643, 20.182413> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.461590, 39.425362, 20.058575>,  <44.513744, 39.203194, 19.984272>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.461590, 39.425362, 20.058575>,  <44.374668, 39.795643, 20.182413>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.461590, 39.425362, 20.058575> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240295, -0.358146, 0.902214,
		-0.946064, -0.121660, -0.300268,
		0.217303, -0.925705, -0.309595,
		44.526779, 39.147652, 19.965696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.867062, 39.491680, 20.458469>,  <44.374668, 39.795643, 20.182413>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.867062, 39.491680, 20.458469> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.096394, 39.183914, 20.345833>,  <44.233994, 38.999256, 20.278250>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.096394, 39.183914, 20.345833>,  <43.867062, 39.491680, 20.458469>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.096394, 39.183914, 20.345833> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253937, -0.493635, 0.831770,
		-0.778980, -0.405371, -0.478398,
		0.573329, -0.769415, -0.281593,
		44.268391, 38.953091, 20.261354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.472862, 38.902443, 20.451979>,  <43.867062, 39.491680, 20.458469>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.472862, 38.902443, 20.451979> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.850601, 38.778980, 20.497459>,  <44.077244, 38.704903, 20.524748>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.850601, 38.778980, 20.497459>,  <43.472862, 38.902443, 20.451979>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.850601, 38.778980, 20.497459> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290328, -0.619642, 0.729215,
		-0.154626, -0.721646, -0.674773,
		0.944352, -0.308661, 0.113701,
		44.133907, 38.686382, 20.531570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.420174, 38.178890, 20.483732>,  <43.472862, 38.902443, 20.451979>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.420174, 38.178890, 20.483732> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.792892, 38.240593, 20.615166>,  <44.016521, 38.277615, 20.694025>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.792892, 38.240593, 20.615166>,  <43.420174, 38.178890, 20.483732>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.792892, 38.240593, 20.615166> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219108, -0.482689, 0.847940,
		0.289403, -0.862100, -0.415968,
		0.931793, 0.154255, 0.328584,
		44.072430, 38.286869, 20.713741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.642120, 37.488182, 20.740965>,  <43.420174, 38.178890, 20.483732>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.642120, 37.488182, 20.740965> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.843597, 37.784081, 20.919434>,  <43.964485, 37.961620, 21.026516>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.843597, 37.784081, 20.919434>,  <43.642120, 37.488182, 20.740965>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.843597, 37.784081, 20.919434> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183605, -0.413006, 0.892029,
		0.844147, -0.531227, -0.072207,
		0.503692, 0.739746, 0.446174,
		43.994705, 38.006004, 21.053286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.071465, 37.108330, 21.310900>,  <43.642120, 37.488182, 20.740965>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.071465, 37.108330, 21.310900> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.103214, 37.490067, 21.426096>,  <44.122265, 37.719109, 21.495213>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.103214, 37.490067, 21.426096>,  <44.071465, 37.108330, 21.310900>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.103214, 37.490067, 21.426096> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095835, -0.280257, 0.955129,
		0.992228, -0.103408, 0.069215,
		0.079370, 0.954339, 0.287989,
		44.127026, 37.776367, 21.512493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.606434, 37.156315, 21.856386>,  <44.071465, 37.108330, 21.310900>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.606434, 37.156315, 21.856386> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.395782, 37.493092, 21.903372>,  <44.269390, 37.695156, 21.931564>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.395782, 37.493092, 21.903372>,  <44.606434, 37.156315, 21.856386>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.395782, 37.493092, 21.903372> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052399, -0.105767, 0.993009,
		0.848477, 0.529105, 0.011584,
		-0.526631, 0.841939, 0.117465,
		44.237793, 37.745674, 21.938612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.941025, 37.564060, 22.400942>,  <44.606434, 37.156315, 21.856386>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.941025, 37.564060, 22.400942> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.555798, 37.665028, 22.363459>,  <44.324661, 37.725609, 22.340969>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.555798, 37.665028, 22.363459>,  <44.941025, 37.564060, 22.400942>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.555798, 37.665028, 22.363459> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128857, -0.126495, 0.983562,
		0.236415, 0.959314, 0.154350,
		-0.963070, 0.252418, -0.093709,
		44.266876, 37.740753, 22.335346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.802448, 38.096214, 22.902483>,  <44.941025, 37.564060, 22.400942>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.802448, 38.096214, 22.902483> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.461094, 37.901733, 22.827282>,  <44.256283, 37.785046, 22.782162>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.461094, 37.901733, 22.827282>,  <44.802448, 38.096214, 22.902483>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.461094, 37.901733, 22.827282> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142295, -0.129682, 0.981292,
		-0.501486, 0.864171, 0.041484,
		-0.853384, -0.486201, -0.188001,
		44.205078, 37.755875, 22.770882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.336609, 38.468948, 23.305216>,  <44.802448, 38.096214, 22.902483>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.336609, 38.468948, 23.305216> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.156200, 38.128078, 23.199100>,  <44.047955, 37.923557, 23.135431>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.156200, 38.128078, 23.199100>,  <44.336609, 38.468948, 23.305216>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.156200, 38.128078, 23.199100> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163787, -0.213164, 0.963190,
		-0.877356, 0.477871, -0.043433,
		-0.451023, -0.852174, -0.265290,
		44.020893, 37.872425, 23.119514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.737888, 38.420452, 23.758760>,  <44.336609, 38.468948, 23.305216>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.737888, 38.420452, 23.758760> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.752125, 38.052181, 23.603281>,  <43.760666, 37.831219, 23.509993>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.752125, 38.052181, 23.603281>,  <43.737888, 38.420452, 23.758760>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.752125, 38.052181, 23.603281> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263021, -0.383865, 0.885137,
		-0.964133, 0.070731, -0.255821,
		0.035594, -0.920676, -0.388701,
		43.762802, 37.775978, 23.486671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.212006, 38.123653, 23.927828>,  <43.737888, 38.420452, 23.758760>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.212006, 38.123653, 23.927828> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.427147, 37.799477, 23.834963>,  <43.556232, 37.604969, 23.779243>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.427147, 37.799477, 23.834963>,  <43.212006, 38.123653, 23.927828>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.427147, 37.799477, 23.834963> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304878, -0.443736, 0.842703,
		-0.785980, -0.382469, -0.485750,
		0.537852, -0.810442, -0.232161,
		43.588501, 37.556343, 23.765314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.830410, 37.684067, 24.294144>,  <43.212006, 38.123653, 23.927828>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.830410, 37.684067, 24.294144> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.182438, 37.497738, 24.257311>,  <43.393654, 37.385941, 24.235212>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.182438, 37.497738, 24.257311>,  <42.830410, 37.684067, 24.294144>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.182438, 37.497738, 24.257311> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146917, -0.451536, 0.880074,
		-0.451536, -0.761002, -0.465822,
		-0.880074, 0.465822, 0.092081,
		43.446461, 37.357990, 24.229687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.677643, 36.997128, 24.066305>,  <42.830410, 37.684067, 24.294144>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.677643, 36.997128, 24.066305> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.031673, 37.009224, 24.252090>,  <43.244091, 37.016479, 24.363562>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.031673, 37.009224, 24.252090>,  <42.677643, 36.997128, 24.066305>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.031673, 37.009224, 24.252090> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345024, -0.627158, 0.698305,
		0.312406, -0.778305, -0.544651,
		0.885077, 0.030237, 0.464462,
		43.297195, 37.018295, 24.391430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.350189, 36.348118, 23.671906>,  <42.677643, 36.997128, 24.066305>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.350189, 36.348118, 23.671906> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.956821, 36.373234, 23.603844>,  <41.720802, 36.388302, 23.563007>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.956821, 36.373234, 23.603844>,  <42.350189, 36.348118, 23.671906>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.956821, 36.373234, 23.603844> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181340, 0.357097, -0.916295,
		0.003232, -0.931955, -0.362560,
		-0.983415, 0.062785, -0.170154,
		41.661797, 36.392071, 23.552797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.171116, 36.201702, 22.896381>,  <42.350189, 36.348118, 23.671906>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.171116, 36.201702, 22.896381> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.834232, 36.392822, 22.996298>,  <41.632103, 36.507496, 23.056248>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.834232, 36.392822, 22.996298>,  <42.171116, 36.201702, 22.896381>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.834232, 36.392822, 22.996298> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088190, 0.334975, -0.938091,
		-0.531898, -0.812093, -0.239979,
		-0.842204, 0.477804, 0.249791,
		41.581570, 36.536163, 23.071236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.611629, 36.122814, 22.439213>,  <42.171116, 36.201702, 22.896381>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.611629, 36.122814, 22.439213> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.464397, 36.462841, 22.589891>,  <41.376057, 36.666859, 22.680298>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.464397, 36.462841, 22.589891>,  <41.611629, 36.122814, 22.439213>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.464397, 36.462841, 22.589891> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094842, 0.437352, -0.894275,
		-0.924943, -0.293441, -0.241603,
		-0.368083, 0.850068, 0.376695,
		41.353973, 36.717861, 22.702900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.086319, 36.307178, 21.942226>,  <41.611629, 36.122814, 22.439213>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.086319, 36.307178, 21.942226> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.206833, 36.643379, 22.122356>,  <41.279140, 36.845100, 22.230434>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.206833, 36.643379, 22.122356>,  <41.086319, 36.307178, 21.942226>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.206833, 36.643379, 22.122356> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048184, 0.485084, -0.873139,
		-0.952315, 0.241367, 0.186648,
		0.301287, 0.840497, 0.450323,
		41.297218, 36.895527, 22.257454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.645073, 36.742149, 21.683413>,  <41.086319, 36.307178, 21.942226>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.645073, 36.742149, 21.683413> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.942303, 36.962292, 21.835705>,  <41.120640, 37.094376, 21.927080>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.942303, 36.962292, 21.835705>,  <40.645073, 36.742149, 21.683413>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.942303, 36.962292, 21.835705> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114974, 0.455475, -0.882793,
		-0.659263, 0.699751, 0.275173,
		0.743070, 0.550355, 0.380731,
		41.165222, 37.127399, 21.949924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.412720, 37.422367, 21.494371>,  <40.645073, 36.742149, 21.683413>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.412720, 37.422367, 21.494371> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.805695, 37.428173, 21.568792>,  <41.041477, 37.431656, 21.613445>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.805695, 37.428173, 21.568792>,  <40.412720, 37.422367, 21.494371>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.805695, 37.428173, 21.568792> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146967, 0.554198, -0.819308,
		-0.115005, 0.832258, 0.542329,
		0.982433, 0.014519, 0.186050,
		41.100426, 37.432529, 21.624607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.503986, 38.100513, 21.368816>,  <40.412720, 37.422367, 21.494371>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.503986, 38.100513, 21.368816> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.834042, 37.880703, 21.316397>,  <41.032074, 37.748817, 21.284945>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.834042, 37.880703, 21.316397>,  <40.503986, 38.100513, 21.368816>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.834042, 37.880703, 21.316397> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143690, 0.428485, -0.892050,
		0.546358, 0.717230, 0.432519,
		0.825134, -0.549528, -0.131047,
		41.081581, 37.715843, 21.277082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.501858, 38.853134, 21.663603>,  <40.503986, 38.100513, 21.368816>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.501858, 38.853134, 21.663603> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.109612, 38.911503, 21.611296>,  <39.874264, 38.946526, 21.579912>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.109612, 38.911503, 21.611296>,  <40.501858, 38.853134, 21.663603>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.109612, 38.911503, 21.611296> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191166, -0.565982, 0.801947,
		0.043011, 0.811400, 0.582906,
		-0.980615, 0.145924, -0.130769,
		39.815426, 38.955280, 21.572065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.221619, 39.034786, 22.323851>,  <40.501858, 38.853134, 21.663603>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.221619, 39.034786, 22.323851> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.905766, 38.904621, 22.115778>,  <39.716255, 38.826523, 21.990934>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.905766, 38.904621, 22.115778>,  <40.221619, 39.034786, 22.323851>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.905766, 38.904621, 22.115778> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335105, -0.481463, 0.809875,
		-0.513988, 0.813820, 0.271133,
		-0.789634, -0.325408, -0.520181,
		39.668877, 38.806999, 21.959724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.600636, 39.295326, 22.682566>,  <40.221619, 39.034786, 22.323851>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.600636, 39.295326, 22.682566> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.479446, 38.977554, 22.472012>,  <39.406731, 38.786892, 22.345680>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.479446, 38.977554, 22.472012>,  <39.600636, 39.295326, 22.682566>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.479446, 38.977554, 22.472012> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371952, -0.409963, 0.832816,
		-0.877415, 0.448113, -0.171282,
		-0.302977, -0.794434, -0.526384,
		39.388554, 38.739223, 22.314096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.069374, 39.026642, 23.074492>,  <39.600636, 39.295326, 22.682566>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.069374, 39.026642, 23.074492> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.134949, 38.727116, 22.817619>,  <39.174294, 38.547398, 22.663496>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.134949, 38.727116, 22.817619>,  <39.069374, 39.026642, 23.074492>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.134949, 38.727116, 22.817619> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.670521, -0.562067, 0.484233,
		-0.723551, 0.351212, -0.594243,
		0.163936, -0.748820, -0.642179,
		39.184128, 38.502468, 22.624966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.478844, 38.831882, 22.845354>,  <39.069374, 39.026642, 23.074492>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.478844, 38.831882, 22.845354> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.722031, 38.519989, 22.785498>,  <38.867943, 38.332855, 22.749584>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.722031, 38.519989, 22.785498>,  <38.478844, 38.831882, 22.845354>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.722031, 38.519989, 22.785498> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.665548, -0.603274, 0.439440,
		-0.432917, -0.167575, -0.885721,
		0.607971, -0.779730, -0.149639,
		38.904423, 38.286068, 22.740606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.056675, 38.201931, 22.686089>,  <38.478844, 38.831882, 22.845354>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.056675, 38.201931, 22.686089> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.403381, 38.027111, 22.782171>,  <38.611404, 37.922218, 22.839821>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.403381, 38.027111, 22.782171>,  <38.056675, 38.201931, 22.686089>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.403381, 38.027111, 22.782171> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497853, -0.730054, 0.468150,
		-0.029239, -0.525366, -0.850374,
		0.866768, -0.437049, 0.240209,
		38.663410, 37.895996, 22.854235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.880390, 37.495110, 22.763361>,  <38.056675, 38.201931, 22.686089>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.880390, 37.495110, 22.763361> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.211994, 37.550434, 22.980103>,  <38.410957, 37.583630, 23.110147>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.211994, 37.550434, 22.980103>,  <37.880390, 37.495110, 22.763361>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.211994, 37.550434, 22.980103> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361021, -0.607610, 0.707441,
		0.427082, -0.782100, -0.453785,
		0.829014, 0.138310, 0.541854,
		38.460697, 37.591927, 23.142658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<41.869331, 42.562778, 21.205917> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.118210, 42.316418, 21.399218>,  <42.267536, 42.168602, 21.515198>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.118210, 42.316418, 21.399218>,  <41.869331, 42.562778, 21.205917>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.118210, 42.316418, 21.399218> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.714384, -0.194207, 0.672264,
		-0.320201, -0.763507, -0.560829,
		0.622195, -0.615907, 0.483252,
		42.304867, 42.131645, 21.544193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.497902, 41.891773, 21.395273>,  <41.869331, 42.562778, 21.205917>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.497902, 41.891773, 21.395273> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.803490, 41.951229, 21.646435>,  <41.986843, 41.986900, 21.797132>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.803490, 41.951229, 21.646435>,  <41.497902, 41.891773, 21.395273>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.803490, 41.951229, 21.646435> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.596073, -0.210068, 0.774964,
		0.247091, -0.966322, -0.071887,
		0.763966, 0.148636, 0.627904,
		42.032681, 41.995819, 21.834806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.330677, 41.389767, 21.861773>,  <41.497902, 41.891773, 21.395273>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.330677, 41.389767, 21.861773> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.582127, 41.605930, 22.085480>,  <41.732998, 41.735630, 22.219704>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.582127, 41.605930, 22.085480>,  <41.330677, 41.389767, 21.861773>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.582127, 41.605930, 22.085480> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.653263, -0.023280, 0.756773,
		0.421989, -0.841078, 0.338396,
		0.628628, 0.540412, 0.559269,
		41.770714, 41.768055, 22.253260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.365654, 41.029461, 22.560301>,  <41.330677, 41.389767, 21.861773>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.365654, 41.029461, 22.560301> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.485023, 41.406876, 22.617826>,  <41.556648, 41.633324, 22.652342>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.485023, 41.406876, 22.617826>,  <41.365654, 41.029461, 22.560301>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.485023, 41.406876, 22.617826> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.604715, 0.070346, 0.793329,
		0.738417, -0.323717, 0.591563,
		0.298428, 0.943535, 0.143812,
		41.574551, 41.689938, 22.660971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.464485, 41.002644, 23.262934>,  <41.365654, 41.029461, 22.560301>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.464485, 41.002644, 23.262934> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.479389, 41.387909, 23.156401>,  <41.488331, 41.619068, 23.092482>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.479389, 41.387909, 23.156401>,  <41.464485, 41.002644, 23.262934>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.479389, 41.387909, 23.156401> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471097, 0.251971, 0.845327,
		0.881294, 0.093974, 0.463131,
		0.037257, 0.963161, -0.266331,
		41.490566, 41.676857, 23.076502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.729435, 41.440876, 23.847263>,  <41.464485, 41.002644, 23.262934>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.729435, 41.440876, 23.847263> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.517933, 41.685238, 23.611565>,  <41.391033, 41.831856, 23.470146>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.517933, 41.685238, 23.611565>,  <41.729435, 41.440876, 23.847263>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.517933, 41.685238, 23.611565> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.598731, 0.223615, 0.769101,
		0.601613, 0.759467, 0.247531,
		-0.528756, 0.610906, -0.589246,
		41.359306, 41.868511, 23.434792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.697594, 42.056431, 24.169182>,  <41.729435, 41.440876, 23.847263>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.697594, 42.056431, 24.169182> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.374386, 42.074211, 23.934193>,  <41.180462, 42.084881, 23.793200>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.374386, 42.074211, 23.934193>,  <41.697594, 42.056431, 24.169182>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.374386, 42.074211, 23.934193> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533733, 0.366985, 0.761873,
		0.249463, 0.929164, -0.272804,
		-0.808020, 0.044454, -0.587475,
		41.131981, 42.087547, 23.757950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.367382, 42.681324, 24.379206>,  <41.697594, 42.056431, 24.169182>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.367382, 42.681324, 24.379206> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.091610, 42.475368, 24.175409>,  <40.926147, 42.351795, 24.053131>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.091610, 42.475368, 24.175409>,  <41.367382, 42.681324, 24.379206>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.091610, 42.475368, 24.175409> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.678103, 0.211461, 0.703890,
		-0.254688, 0.830767, -0.494935,
		-0.689427, -0.514889, -0.509489,
		40.884781, 42.320900, 24.022562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.760761, 43.097740, 24.419716>,  <41.367382, 42.681324, 24.379206>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.760761, 43.097740, 24.419716> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.632607, 42.725216, 24.350426>,  <40.555714, 42.501701, 24.308851>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.632607, 42.725216, 24.350426>,  <40.760761, 43.097740, 24.419716>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.632607, 42.725216, 24.350426> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.647747, 0.081948, 0.757435,
		-0.691215, 0.354878, -0.629511,
		-0.320384, -0.931314, -0.173228,
		40.536491, 42.445820, 24.298458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.010612, 43.131901, 24.566006>,  <40.760761, 43.097740, 24.419716>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.010612, 43.131901, 24.566006> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.061390, 42.736206, 24.536869>,  <40.091854, 42.498791, 24.519386>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.061390, 42.736206, 24.536869>,  <40.010612, 43.131901, 24.566006>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.061390, 42.736206, 24.536869> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.763532, -0.144326, 0.629435,
		-0.633170, -0.024284, -0.773631,
		0.126941, -0.989232, -0.072841,
		40.099472, 42.439438, 24.515017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.358795, 42.763428, 24.342886>,  <40.010612, 43.131901, 24.566006>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.358795, 42.763428, 24.342886> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.571964, 42.502880, 24.558929>,  <39.699867, 42.346554, 24.688555>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.571964, 42.502880, 24.558929>,  <39.358795, 42.763428, 24.342886>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.571964, 42.502880, 24.558929> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.752992, -0.073885, 0.653869,
		-0.386003, -0.755157, -0.529849,
		0.532922, -0.651367, 0.540107,
		39.731842, 42.307468, 24.720961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.920868, 42.236050, 24.568638>,  <39.358795, 42.763428, 24.342886>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.920868, 42.236050, 24.568638> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.220142, 42.236801, 24.834030>,  <39.399708, 42.237251, 24.993265>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.220142, 42.236801, 24.834030>,  <38.920868, 42.236050, 24.568638>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.220142, 42.236801, 24.834030> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.626152, -0.328707, 0.707026,
		0.219419, -0.944430, -0.244759,
		0.748190, 0.001879, 0.663482,
		39.444599, 42.237366, 25.033075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.309845, 41.717918, 24.431028>,  <38.920868, 42.236050, 24.568638>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.309845, 41.717918, 24.431028> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.003956, 41.964218, 24.355080>,  <37.820423, 42.112000, 24.309509>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.003956, 41.964218, 24.355080>,  <38.309845, 41.717918, 24.431028>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.003956, 41.964218, 24.355080> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405582, 0.230998, -0.884389,
		-0.500701, -0.753322, -0.426386,
		-0.764723, 0.615749, -0.189873,
		37.774540, 42.148941, 24.298119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.167801, 41.555874, 23.768644>,  <38.309845, 41.717918, 24.431028>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.167801, 41.555874, 23.768644> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.008007, 41.919113, 23.818878>,  <37.912132, 42.137058, 23.849018>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.008007, 41.919113, 23.818878>,  <38.167801, 41.555874, 23.768644>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.008007, 41.919113, 23.818878> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304462, 0.260639, -0.916171,
		-0.864705, -0.327760, -0.380603,
		-0.399485, 0.908097, 0.125585,
		37.888161, 42.191544, 23.856554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.893330, 41.744289, 23.191210>,  <38.167801, 41.555874, 23.768644>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.893330, 41.744289, 23.191210> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.922268, 42.111938, 23.346117>,  <37.939632, 42.332527, 23.439062>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.922268, 42.111938, 23.346117>,  <37.893330, 41.744289, 23.191210>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.922268, 42.111938, 23.346117> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385234, 0.332403, -0.860873,
		-0.919979, 0.211470, -0.330030,
		0.072346, 0.919124, 0.387269,
		37.943974, 42.387676, 23.462297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.543324, 42.281769, 22.667509>,  <37.893330, 41.744289, 23.191210>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.543324, 42.281769, 22.667509> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.783829, 42.483990, 22.915024>,  <37.928131, 42.605324, 23.063532>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.783829, 42.483990, 22.915024>,  <37.543324, 42.281769, 22.667509>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.783829, 42.483990, 22.915024> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464060, 0.409486, -0.785474,
		-0.650482, 0.759433, 0.011604,
		0.601267, 0.505552, 0.618786,
		37.964211, 42.635654, 23.100660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.468468, 43.061562, 22.596680>,  <37.543324, 42.281769, 22.667509>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.468468, 43.061562, 22.596680> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.831726, 43.001186, 22.752878>,  <38.049683, 42.964962, 22.846598>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.831726, 43.001186, 22.752878>,  <37.468468, 43.061562, 22.596680>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.831726, 43.001186, 22.752878> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415182, 0.444535, -0.793733,
		-0.053787, 0.882954, 0.466368,
		0.908147, -0.150936, 0.390497,
		38.104172, 42.955906, 22.870028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.796032, 43.784245, 22.604422>,  <37.468468, 43.061562, 22.596680>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.796032, 43.784245, 22.604422> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.089024, 43.519245, 22.667133>,  <38.264816, 43.360245, 22.704760>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.089024, 43.519245, 22.667133>,  <37.796032, 43.784245, 22.604422>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.089024, 43.519245, 22.667133> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.604728, 0.527375, -0.596808,
		0.312702, 0.531955, 0.786919,
		0.732476, -0.662495, 0.156777,
		38.308765, 43.320496, 22.714167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.335621, 44.257248, 22.712915>,  <37.796032, 43.784245, 22.604422>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.335621, 44.257248, 22.712915> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.474037, 43.894970, 22.614958>,  <38.557087, 43.677605, 22.556183>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.474037, 43.894970, 22.614958>,  <38.335621, 44.257248, 22.712915>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.474037, 43.894970, 22.614958> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611705, 0.415707, -0.673056,
		0.711387, 0.083104, 0.697870,
		0.346043, -0.905694, -0.244893,
		38.577850, 43.623260, 22.541491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.201687, 44.249382, 22.639212>,  <38.335621, 44.257248, 22.712915>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.201687, 44.249382, 22.639212> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.073833, 43.933571, 22.429649>,  <38.997120, 43.744083, 22.303913>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.073833, 43.933571, 22.429649>,  <39.201687, 44.249382, 22.639212>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.073833, 43.933571, 22.429649> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627801, 0.237673, -0.741200,
		0.709717, -0.565823, 0.419698,
		-0.319637, -0.789529, -0.523905,
		38.977943, 43.696712, 22.272478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.748909, 43.833878, 22.502871>,  <39.201687, 44.249382, 22.639212>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.748909, 43.833878, 22.502871> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.475887, 43.702614, 22.241665>,  <39.312073, 43.623856, 22.084942>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.475887, 43.702614, 22.241665>,  <39.748909, 43.833878, 22.502871>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.475887, 43.702614, 22.241665> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.678067, 0.048996, -0.733365,
		0.272659, -0.943349, 0.189074,
		-0.682556, -0.328164, -0.653013,
		39.271122, 43.604164, 22.045761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.098766, 43.330132, 22.191420>,  <39.748909, 43.833878, 22.502871>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.098766, 43.330132, 22.191420> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.801769, 43.431210, 21.943275>,  <39.623569, 43.491856, 21.794390>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.801769, 43.431210, 21.943275>,  <40.098766, 43.330132, 22.191420>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.801769, 43.431210, 21.943275> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626764, -0.064701, -0.776518,
		-0.236358, -0.965381, -0.110339,
		-0.742497, 0.252693, -0.620359,
		39.579021, 43.507015, 21.757168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.215424, 42.849731, 21.664297>,  <40.098766, 43.330132, 22.191420>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.215424, 42.849731, 21.664297> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.983978, 43.119156, 21.480330>,  <39.845112, 43.280811, 21.369949>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.983978, 43.119156, 21.480330>,  <40.215424, 42.849731, 21.664297>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.983978, 43.119156, 21.480330> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519278, -0.130607, -0.844566,
		-0.628934, -0.727503, -0.274193,
		-0.578613, 0.673558, -0.459920,
		39.810394, 43.321224, 21.342354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.878666, 42.542400, 21.045927>,  <40.215424, 42.849731, 21.664297>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.878666, 42.542400, 21.045927> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.845440, 42.924706, 20.933065>,  <39.825504, 43.154091, 20.865349>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.845440, 42.924706, 20.933065>,  <39.878666, 42.542400, 21.045927>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.845440, 42.924706, 20.933065> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380675, -0.231230, -0.895332,
		-0.920971, -0.181778, -0.344630,
		-0.083063, 0.955767, -0.282154,
		39.820522, 43.211437, 20.848419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.437290, 42.696178, 20.534954>,  <39.878666, 42.542400, 21.045927>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.437290, 42.696178, 20.534954> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.649456, 43.034214, 20.508183>,  <39.776756, 43.237038, 20.492119>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.649456, 43.034214, 20.508183>,  <39.437290, 42.696178, 20.534954>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.649456, 43.034214, 20.508183> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261878, -0.238431, -0.935185,
		-0.806276, 0.478507, -0.347778,
		0.530414, 0.845092, -0.066931,
		39.808578, 43.287743, 20.488104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.737648, 42.313980, 20.072897>,  <39.437290, 42.696178, 20.534954>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.737648, 42.313980, 20.072897> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.766350, 42.002857, 19.823141>,  <39.783573, 41.816181, 19.673288>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.766350, 42.002857, 19.823141>,  <39.737648, 42.313980, 20.072897>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.766350, 42.002857, 19.823141> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012049, -0.626632, 0.779222,
		-0.997349, -0.048393, -0.054339,
		0.071759, -0.777811, -0.624388,
		39.787876, 41.769512, 19.635824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.327198, 41.744198, 20.437735>,  <39.737648, 42.313980, 20.072897>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.327198, 41.744198, 20.437735> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.504238, 41.529041, 20.150743>,  <39.610462, 41.399948, 19.978548>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.504238, 41.529041, 20.150743>,  <39.327198, 41.744198, 20.437735>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.504238, 41.529041, 20.150743> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092674, -0.823271, 0.560033,
		-0.891916, -0.181380, -0.414231,
		0.442603, -0.537891, -0.717479,
		39.637020, 41.367676, 19.935499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.839645, 41.220375, 20.066420>,  <39.327198, 41.744198, 20.437735>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.839645, 41.220375, 20.066420> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.223103, 41.107124, 20.078058>,  <39.453178, 41.039173, 20.085041>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.223103, 41.107124, 20.078058>,  <38.839645, 41.220375, 20.066420>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.223103, 41.107124, 20.078058> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271394, -0.878523, 0.393119,
		-0.085740, -0.384757, -0.919027,
		0.958642, -0.283125, 0.029097,
		39.510696, 41.022186, 20.086788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.805424, 40.514584, 19.966091>,  <38.839645, 41.220375, 20.066420>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.805424, 40.514584, 19.966091> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.179424, 40.558784, 20.100889>,  <39.403824, 40.585304, 20.181768>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.179424, 40.558784, 20.100889>,  <38.805424, 40.514584, 19.966091>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.179424, 40.558784, 20.100889> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126786, -0.783278, 0.608606,
		0.331213, -0.611772, -0.718354,
		0.934999, 0.110500, 0.336996,
		39.459923, 40.591934, 20.201988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.249203, 39.929955, 19.859873>,  <38.805424, 40.514584, 19.966091>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.249203, 39.929955, 19.859873> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.466667, 40.107349, 20.144901>,  <39.597145, 40.213787, 20.315918>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.466667, 40.107349, 20.144901>,  <39.249203, 39.929955, 19.859873>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.466667, 40.107349, 20.144901> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160378, -0.888248, 0.430459,
		0.823841, -0.119742, -0.554029,
		0.543659, 0.443483, 0.712571,
		39.629765, 40.240395, 20.358673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.796791, 39.497654, 19.938698>,  <39.249203, 39.929955, 19.859873>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.796791, 39.497654, 19.938698> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.759399, 39.699944, 20.281744>,  <39.736965, 39.821320, 20.487572>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.759399, 39.699944, 20.281744>,  <39.796791, 39.497654, 19.938698>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.759399, 39.699944, 20.281744> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202872, -0.833639, 0.513702,
		0.974733, 0.222007, -0.024670,
		-0.093480, 0.505727, 0.857614,
		39.731354, 39.851662, 20.539028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.120865, 38.981266, 20.399597>,  <39.796791, 39.497654, 19.938698>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.120865, 38.981266, 20.399597> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.951904, 39.225266, 20.667768>,  <39.850529, 39.371666, 20.828671>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.951904, 39.225266, 20.667768>,  <40.120865, 38.981266, 20.399597>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.951904, 39.225266, 20.667768> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134780, -0.773700, 0.619049,
		0.896333, 0.171126, 0.409027,
		-0.422400, 0.610003, 0.670429,
		39.825184, 39.408268, 20.868896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.496334, 38.886707, 20.946896>,  <40.120865, 38.981266, 20.399597>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.496334, 38.886707, 20.946896> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.152260, 39.051456, 21.067186>,  <39.945816, 39.150307, 21.139360>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.152260, 39.051456, 21.067186>,  <40.496334, 38.886707, 20.946896>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.152260, 39.051456, 21.067186> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051048, -0.656266, 0.752800,
		0.507416, 0.632198, 0.585538,
		-0.860188, 0.411874, 0.300728,
		39.894203, 39.175018, 21.157404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.095333, 38.602161, 21.353064>,  <40.496334, 38.886707, 20.946896>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.095333, 38.602161, 21.353064> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.229496, 38.261311, 21.192375>,  <41.309994, 38.056801, 21.095963>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.229496, 38.261311, 21.192375>,  <41.095333, 38.602161, 21.353064>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.229496, 38.261311, 21.192375> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345555, 0.507983, -0.789015,
		0.876410, 0.125824, 0.464837,
		0.335407, -0.852128, -0.401723,
		41.330116, 38.005672, 21.071857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.479980, 38.887836, 20.857658>,  <41.095333, 38.602161, 21.353064>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.479980, 38.887836, 20.857658> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.532856, 38.497673, 20.787113>,  <41.564583, 38.263577, 20.744787>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.532856, 38.497673, 20.787113>,  <41.479980, 38.887836, 20.857658>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.532856, 38.497673, 20.787113> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429646, 0.216724, -0.876604,
		0.893269, 0.040108, 0.447729,
		0.132192, -0.975409, -0.176361,
		41.572514, 38.205051, 20.734205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.187122, 38.716240, 20.790869>,  <41.479980, 38.887836, 20.857658>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.187122, 38.716240, 20.790869> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.976070, 38.442501, 20.589563>,  <41.849442, 38.278255, 20.468781>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.976070, 38.442501, 20.589563>,  <42.187122, 38.716240, 20.790869>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.976070, 38.442501, 20.589563> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505694, 0.222985, -0.833398,
		0.682557, -0.694219, 0.228420,
		-0.527627, -0.684352, -0.503262,
		41.817783, 38.237194, 20.438585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.688499, 38.371822, 20.459103>,  <42.187122, 38.716240, 20.790869>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.688499, 38.371822, 20.459103> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.363518, 38.275551, 20.246691>,  <42.168530, 38.217789, 20.119244>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.363518, 38.275551, 20.246691>,  <42.688499, 38.371822, 20.459103>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.363518, 38.275551, 20.246691> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477420, 0.248161, -0.842903,
		0.334651, -0.938344, -0.086714,
		-0.812452, -0.240679, -0.531032,
		42.119781, 38.203346, 20.087381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.953564, 38.003506, 19.883343>,  <42.688499, 38.371822, 20.459103>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.953564, 38.003506, 19.883343> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.582333, 38.086021, 19.759327>,  <42.359596, 38.135532, 19.684917>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.582333, 38.086021, 19.759327>,  <42.953564, 38.003506, 19.883343>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.582333, 38.086021, 19.759327> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333231, 0.088383, -0.938693,
		-0.166242, -0.974491, -0.150768,
		-0.928074, 0.206291, -0.310038,
		42.303909, 38.147907, 19.666315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.770180, 37.559914, 19.280111>,  <42.953564, 38.003506, 19.883343>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.770180, 37.559914, 19.280111> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.575245, 37.908802, 19.263420>,  <42.458286, 38.118134, 19.253405>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.575245, 37.908802, 19.263420>,  <42.770180, 37.559914, 19.280111>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.575245, 37.908802, 19.263420> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349471, 0.151019, -0.924697,
		-0.800235, -0.465219, -0.378411,
		-0.487333, 0.872219, -0.041730,
		42.429047, 38.170467, 19.250900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.566391, 37.636124, 18.617558>,  <42.770180, 37.559914, 19.280111>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.566391, 37.636124, 18.617558> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.529373, 38.019615, 18.725092>,  <42.507164, 38.249710, 18.789612>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.529373, 38.019615, 18.725092>,  <42.566391, 37.636124, 18.617558>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.529373, 38.019615, 18.725092> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302120, 0.284301, -0.909888,
		-0.948767, -0.002984, -0.315962,
		-0.092543, 0.958730, 0.268834,
		42.501610, 38.307236, 18.805742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.450645, 37.953049, 18.019661>,  <42.566391, 37.636124, 18.617558>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.450645, 37.953049, 18.019661> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.592995, 38.257156, 18.237043>,  <42.678406, 38.439621, 18.367474>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.592995, 38.257156, 18.237043>,  <42.450645, 37.953049, 18.019661>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.592995, 38.257156, 18.237043> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426278, 0.385446, -0.818363,
		-0.831650, 0.522895, -0.186917,
		0.355872, 0.760271, 0.543455,
		42.699757, 38.485237, 18.400080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.246258, 38.584511, 17.652493>,  <42.450645, 37.953049, 18.019661>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.246258, 38.584511, 17.652493> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.573845, 38.675499, 17.863226>,  <42.770397, 38.730091, 17.989666>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.573845, 38.675499, 17.863226>,  <42.246258, 38.584511, 17.652493>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.573845, 38.675499, 17.863226> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427630, 0.370291, -0.824632,
		-0.382664, 0.900634, 0.205980,
		0.818964, 0.227473, 0.526834,
		42.819534, 38.743740, 18.021276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<37.346992, 32.601189, 32.257549> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.632420, 32.845318, 32.395149>,  <37.803677, 32.991795, 32.477711>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.632420, 32.845318, 32.395149>,  <37.346992, 32.601189, 32.257549>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.632420, 32.845318, 32.395149> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218894, 0.272218, -0.937007,
		-0.665517, 0.743915, 0.060649,
		0.713563, 0.610319, 0.344004,
		37.846489, 33.028412, 32.498352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.407528, 33.302303, 31.796265>,  <37.346992, 32.601189, 32.257549>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.407528, 33.302303, 31.796265> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.755039, 33.190269, 31.959621>,  <37.963547, 33.123051, 32.057636>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.755039, 33.190269, 31.959621>,  <37.407528, 33.302303, 31.796265>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.755039, 33.190269, 31.959621> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465331, 0.179607, -0.866723,
		0.169407, 0.943024, 0.286370,
		0.868774, -0.280086, 0.408392,
		38.015671, 33.106243, 32.082138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.826660, 33.816929, 31.619951>,  <37.407528, 33.302303, 31.796265>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.826660, 33.816929, 31.619951> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.085098, 33.518974, 31.686535>,  <38.240162, 33.340202, 31.726484>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.085098, 33.518974, 31.686535>,  <37.826660, 33.816929, 31.619951>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.085098, 33.518974, 31.686535> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561130, 0.315721, -0.765150,
		0.517397, 0.587761, 0.621963,
		0.646092, -0.744888, 0.166457,
		38.278927, 33.295509, 31.736471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.467430, 34.184521, 31.531412>,  <37.826660, 33.816929, 31.619951>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.467430, 34.184521, 31.531412> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.570423, 33.798332, 31.515600>,  <38.632221, 33.566620, 31.506113>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.570423, 33.798332, 31.515600>,  <38.467430, 34.184521, 31.531412>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.570423, 33.798332, 31.515600> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552143, 0.180579, -0.813959,
		0.792994, 0.187756, 0.579575,
		0.257485, -0.965473, -0.039530,
		38.647667, 33.508690, 31.503740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.121880, 34.142609, 31.387814>,  <38.467430, 34.184521, 31.531412>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.121880, 34.142609, 31.387814> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.007416, 33.775925, 31.276274>,  <38.938740, 33.555916, 31.209351>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.007416, 33.775925, 31.276274>,  <39.121880, 34.142609, 31.387814>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.007416, 33.775925, 31.276274> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548888, 0.081709, -0.831893,
		0.785389, -0.391109, 0.479790,
		-0.286157, -0.916710, -0.278848,
		38.921570, 33.500912, 31.192619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.706059, 33.822578, 31.211887>,  <39.121880, 34.142609, 31.387814>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.706059, 33.822578, 31.211887> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.417774, 33.608013, 31.036232>,  <39.244804, 33.479275, 30.930840>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.417774, 33.608013, 31.036232>,  <39.706059, 33.822578, 31.211887>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.417774, 33.608013, 31.036232> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442918, 0.131005, -0.886939,
		0.533297, -0.833725, 0.143172,
		-0.720707, -0.536415, -0.439136,
		39.201561, 33.447090, 30.904491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.055283, 33.496502, 30.715231>,  <39.706059, 33.822578, 31.211887>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.055283, 33.496502, 30.715231> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.674568, 33.461624, 30.597591>,  <39.446140, 33.440697, 30.527008>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.674568, 33.461624, 30.597591>,  <40.055283, 33.496502, 30.715231>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.674568, 33.461624, 30.597591> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283331, 0.117562, -0.951789,
		0.117562, -0.989230, -0.087190,
		0.951789, 0.087190, 0.294100,
		39.389030, 33.435467, 30.509361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.063519, 33.042019, 30.137169>,  <40.055283, 33.496502, 30.715231>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.063519, 33.042019, 30.137169> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.726452, 33.253979, 30.098986>,  <39.524212, 33.381157, 30.076077>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.726452, 33.253979, 30.098986>,  <40.063519, 33.042019, 30.137169>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.726452, 33.253979, 30.098986> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105889, -0.010730, -0.994320,
		-0.527917, -0.847990, -0.047069,
		-0.842669, 0.529903, -0.095457,
		39.473652, 33.412949, 30.070349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.633678, 32.742676, 29.491049>,  <40.063519, 33.042019, 30.137169>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.633678, 32.742676, 29.491049> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.488949, 33.105198, 29.578396>,  <39.402111, 33.322712, 29.630804>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.488949, 33.105198, 29.578396>,  <39.633678, 32.742676, 29.491049>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.488949, 33.105198, 29.578396> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106304, 0.192601, -0.975502,
		-0.926164, -0.376177, 0.026656,
		-0.361828, 0.906309, 0.218369,
		39.380402, 33.377090, 29.643906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.003185, 32.873432, 29.041391>,  <39.633678, 32.742676, 29.491049>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.003185, 32.873432, 29.041391> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.151031, 33.226192, 29.158445>,  <39.239738, 33.437847, 29.228678>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.151031, 33.226192, 29.158445>,  <39.003185, 32.873432, 29.041391>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.151031, 33.226192, 29.158445> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272637, 0.404008, -0.873182,
		-0.888286, 0.242960, 0.389767,
		0.369618, 0.881900, 0.292635,
		39.261917, 33.490761, 29.246235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.523296, 33.383495, 28.823832>,  <39.003185, 32.873432, 29.041391>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.523296, 33.383495, 28.823832> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.874123, 33.567165, 28.880264>,  <39.084618, 33.677368, 28.914124>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.874123, 33.567165, 28.880264>,  <38.523296, 33.383495, 28.823832>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.874123, 33.567165, 28.880264> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126416, 0.503981, -0.854414,
		-0.463431, 0.731545, 0.500074,
		0.877070, 0.459179, 0.141081,
		39.137245, 33.704918, 28.922588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.427139, 34.003399, 28.462538>,  <38.523296, 33.383495, 28.823832>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.427139, 34.003399, 28.462538> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.823944, 33.989738, 28.511112>,  <39.062027, 33.981541, 28.540257>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.823944, 33.989738, 28.511112>,  <38.427139, 34.003399, 28.462538>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.823944, 33.989738, 28.511112> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125195, 0.384626, -0.914543,
		-0.015476, 0.922441, 0.385829,
		0.992011, -0.034151, 0.121437,
		39.121548, 33.979492, 28.547543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.805027, 34.541931, 28.737268>,  <38.427139, 34.003399, 28.462538>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.805027, 34.541931, 28.737268> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.509918, 34.777409, 28.605127>,  <37.332851, 34.918694, 28.525843>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.509918, 34.777409, 28.605127>,  <37.805027, 34.541931, 28.737268>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.509918, 34.777409, 28.605127> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.585315, -0.314064, 0.747509,
		0.336303, 0.744850, 0.576280,
		-0.737771, 0.588695, -0.330351,
		37.288586, 34.954018, 28.506021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.481682, 34.584877, 29.340477>,  <37.805027, 34.541931, 28.737268>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.481682, 34.584877, 29.340477> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.209827, 34.760254, 29.105236>,  <37.046715, 34.865479, 28.964092>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.209827, 34.760254, 29.105236>,  <37.481682, 34.584877, 29.340477>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.209827, 34.760254, 29.105236> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.665621, -0.031666, 0.745618,
		0.308286, 0.898203, 0.313356,
		-0.679639, 0.438439, -0.588100,
		37.005936, 34.891785, 28.928806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.173958, 35.303753, 29.613468>,  <37.481682, 34.584877, 29.340477>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.173958, 35.303753, 29.613468> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.898144, 35.115948, 29.392889>,  <36.732655, 35.003265, 29.260542>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.898144, 35.115948, 29.392889>,  <37.173958, 35.303753, 29.613468>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.898144, 35.115948, 29.392889> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.652009, 0.070931, 0.754886,
		-0.315313, 0.880073, -0.355035,
		-0.689538, -0.469511, -0.551449,
		36.691284, 34.975094, 29.227453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.658642, 35.680298, 29.768141>,  <37.173958, 35.303753, 29.613468>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.658642, 35.680298, 29.768141> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.534306, 35.327084, 29.627502>,  <36.459702, 35.115154, 29.543119>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.534306, 35.327084, 29.627502>,  <36.658642, 35.680298, 29.768141>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.534306, 35.327084, 29.627502> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.713599, -0.027523, 0.700013,
		-0.627815, 0.468495, -0.621580,
		-0.310845, -0.883037, -0.351597,
		36.441051, 35.062172, 29.522024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.972538, 35.826801, 29.601572>,  <36.658642, 35.680298, 29.768141>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.972538, 35.826801, 29.601572> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.010216, 35.429634, 29.630539>,  <36.032822, 35.191334, 29.647919>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.010216, 35.429634, 29.630539>,  <35.972538, 35.826801, 29.601572>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.010216, 35.429634, 29.630539> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.889476, -0.051263, 0.454098,
		-0.447169, -0.107187, -0.888004,
		0.094195, -0.992916, 0.072417,
		36.038475, 35.131760, 29.652264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.431976, 35.550991, 29.412996>,  <35.972538, 35.826801, 29.601572>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.431976, 35.550991, 29.412996> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.574928, 35.248856, 29.632723>,  <35.660702, 35.067574, 29.764559>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.574928, 35.248856, 29.632723>,  <35.431976, 35.550991, 29.412996>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.574928, 35.248856, 29.632723> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.906530, -0.139053, 0.398581,
		-0.224679, -0.640415, -0.734430,
		0.357382, -0.755336, 0.549314,
		35.682144, 35.022255, 29.797518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.855141, 35.180939, 29.484833>,  <35.431976, 35.550991, 29.412996>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.855141, 35.180939, 29.484833> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.100327, 35.005711, 29.747852>,  <35.247440, 34.900574, 29.905664>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.100327, 35.005711, 29.747852>,  <34.855141, 35.180939, 29.484833>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.100327, 35.005711, 29.747852> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.786060, -0.253966, 0.563570,
		-0.079885, -0.862322, -0.500018,
		0.612967, -0.438065, 0.657549,
		35.284218, 34.874290, 29.945116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.667278, 34.420670, 29.519188>,  <34.855141, 35.180939, 29.484833>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.667278, 34.420670, 29.519188> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.855694, 34.495850, 29.863932>,  <34.968742, 34.540958, 30.070778>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.855694, 34.495850, 29.863932>,  <34.667278, 34.420670, 29.519188>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.855694, 34.495850, 29.863932> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.796862, -0.328378, 0.507128,
		0.378331, -0.925657, -0.004905,
		0.471037, 0.187954, 0.861857,
		34.997005, 34.552235, 30.122488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.614532, 33.775906, 30.005886>,  <34.667278, 34.420670, 29.519188>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.614532, 33.775906, 30.005886> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.685894, 34.088280, 30.245323>,  <34.728710, 34.275703, 30.388985>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.685894, 34.088280, 30.245323>,  <34.614532, 33.775906, 30.005886>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.685894, 34.088280, 30.245323> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.713331, -0.316378, 0.625351,
		0.677740, -0.538558, 0.500623,
		0.178401, 0.780935, 0.598593,
		34.739414, 34.322559, 30.424900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.571556, 33.606861, 30.772902>,  <34.614532, 33.775906, 30.005886>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.571556, 33.606861, 30.772902> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.552155, 34.006390, 30.771723>,  <34.540512, 34.246105, 30.771015>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.552155, 34.006390, 30.771723>,  <34.571556, 33.606861, 30.772902>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.552155, 34.006390, 30.771723> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.833607, -0.038856, 0.550990,
		0.550224, 0.029181, 0.834507,
		-0.048504, 0.998819, -0.002946,
		34.537605, 34.306034, 30.770840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.301983, 33.749790, 31.434937>,  <34.571556, 33.606861, 30.772902>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.301983, 33.749790, 31.434937> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.234509, 34.097752, 31.249544>,  <34.194023, 34.306530, 31.138309>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.234509, 34.097752, 31.249544>,  <34.301983, 33.749790, 31.434937>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.234509, 34.097752, 31.249544> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.916589, 0.034494, 0.398340,
		0.362504, 0.492017, 0.791524,
		-0.168687, 0.869902, -0.463481,
		34.183903, 34.358723, 31.110500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.092651, 34.259510, 31.966557>,  <34.301983, 33.749790, 31.434937>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.092651, 34.259510, 31.966557> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.946060, 34.436619, 31.639229>,  <33.858105, 34.542885, 31.442833>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.946060, 34.436619, 31.639229>,  <34.092651, 34.259510, 31.966557>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.946060, 34.436619, 31.639229> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.927410, -0.103082, 0.359562,
		0.074851, 0.890689, 0.448410,
		-0.366480, 0.442773, -0.818318,
		33.836117, 34.569450, 31.393734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.787796, 34.905773, 32.198395>,  <34.092651, 34.259510, 31.966557>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.787796, 34.905773, 32.198395> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.616352, 34.833630, 31.844273>,  <33.513485, 34.790344, 31.631800>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.616352, 34.833630, 31.844273>,  <33.787796, 34.905773, 32.198395>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.616352, 34.833630, 31.844273> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.900164, 0.001255, 0.435549,
		-0.077444, 0.983600, -0.162889,
		-0.428610, -0.180357, -0.885305,
		33.487770, 34.779522, 31.578682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.304951, 35.377197, 32.186455>,  <33.787796, 34.905773, 32.198395>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.304951, 35.377197, 32.186455> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.190388, 35.098606, 31.923279>,  <33.121651, 34.931450, 31.765373>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.190388, 35.098606, 31.923279>,  <33.304951, 35.377197, 32.186455>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.190388, 35.098606, 31.923279> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.951162, 0.124146, 0.282628,
		-0.115164, 0.706756, -0.698021,
		-0.286406, -0.696479, -0.657943,
		33.104465, 34.889664, 31.725897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.670120, 35.736526, 31.574827>,  <33.304951, 35.377197, 32.186455>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.670120, 35.736526, 31.574827> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.359932, 35.944752, 31.717745>,  <33.173817, 36.069687, 31.803495>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.359932, 35.944752, 31.717745>,  <33.670120, 35.736526, 31.574827>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.359932, 35.944752, 31.717745> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194336, 0.735214, -0.649380,
		-0.600729, -0.434141, -0.671302,
		-0.775473, 0.520559, 0.357295,
		33.127289, 36.100918, 31.824934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.301113, 35.995136, 31.029408>,  <33.670120, 35.736526, 31.574827>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.301113, 35.995136, 31.029408> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.224228, 36.250229, 31.327763>,  <33.178097, 36.403286, 31.506777>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.224228, 36.250229, 31.327763>,  <33.301113, 35.995136, 31.029408>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.224228, 36.250229, 31.327763> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071278, 0.767127, -0.637523,
		-0.978761, -0.069375, -0.192909,
		-0.192214, 0.637733, 0.745889,
		33.166565, 36.441547, 31.551529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.628025, 36.506683, 30.895185>,  <33.301113, 35.995136, 31.029408>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.628025, 36.506683, 30.895185> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.911613, 36.685143, 31.113655>,  <33.081768, 36.792217, 31.244738>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.911613, 36.685143, 31.113655>,  <32.628025, 36.506683, 30.895185>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.911613, 36.685143, 31.113655> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027483, 0.791347, -0.610749,
		-0.704699, 0.417995, 0.573306,
		0.708974, 0.446151, 0.546174,
		33.124306, 36.818989, 31.277508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.411392, 37.231804, 31.341591>,  <32.628025, 36.506683, 30.895185>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.411392, 37.231804, 31.341591> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.799061, 37.214016, 31.244656>,  <33.031662, 37.203342, 31.186495>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.799061, 37.214016, 31.244656>,  <32.411392, 37.231804, 31.341591>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.799061, 37.214016, 31.244656> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090808, 0.849856, -0.519133,
		0.229041, 0.525135, 0.819618,
		0.969172, -0.044474, -0.242338,
		33.089813, 37.200672, 31.171953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.805145, 37.919445, 31.407873>,  <32.411392, 37.231804, 31.341591>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.805145, 37.919445, 31.407873> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.010910, 37.706470, 31.138981>,  <33.134369, 37.578686, 30.977646>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.010910, 37.706470, 31.138981>,  <32.805145, 37.919445, 31.407873>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.010910, 37.706470, 31.138981> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149986, 0.827681, -0.540784,
		0.844327, 0.177358, 0.505624,
		0.514408, -0.532436, -0.672233,
		33.165234, 37.546741, 30.937311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.326557, 38.347904, 31.234707>,  <32.805145, 37.919445, 31.407873>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.326557, 38.347904, 31.234707> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.284874, 38.085590, 30.935619>,  <33.259865, 37.928204, 30.756166>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.284874, 38.085590, 30.935619>,  <33.326557, 38.347904, 31.234707>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.284874, 38.085590, 30.935619> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278756, 0.702420, -0.654906,
		0.954691, -0.276679, 0.109605,
		-0.104210, -0.655786, -0.747720,
		33.253613, 37.888855, 30.711304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.008530, 38.286182, 31.000666>,  <33.326557, 38.347904, 31.234707>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.008530, 38.286182, 31.000666> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.746044, 38.174141, 30.720402>,  <33.588554, 38.106918, 30.552242>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.746044, 38.174141, 30.720402>,  <34.008530, 38.286182, 31.000666>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.746044, 38.174141, 30.720402> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304915, 0.750934, -0.585768,
		0.690222, -0.598033, -0.407370,
		-0.656216, -0.280098, -0.700661,
		33.549179, 38.090111, 30.510202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.236286, 38.417168, 30.393150>,  <34.008530, 38.286182, 31.000666>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.236286, 38.417168, 30.393150> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.866829, 38.378433, 30.244822>,  <33.645153, 38.355194, 30.155825>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.866829, 38.378433, 30.244822>,  <34.236286, 38.417168, 30.393150>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.866829, 38.378433, 30.244822> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224941, 0.646405, -0.729083,
		0.310300, -0.756825, -0.575265,
		-0.923642, -0.096834, -0.370820,
		33.589737, 38.349384, 30.133575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.308193, 38.202236, 29.712118>,  <34.236286, 38.417168, 30.393150>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.308193, 38.202236, 29.712118> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.945362, 38.368401, 29.739374>,  <33.727665, 38.468098, 29.755728>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.945362, 38.368401, 29.739374>,  <34.308193, 38.202236, 29.712118>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.945362, 38.368401, 29.739374> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176029, 0.521337, -0.834998,
		-0.382391, -0.745414, -0.546017,
		-0.907078, 0.415410, 0.068140,
		33.673237, 38.493023, 29.759817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.998726, 38.063908, 28.971432>,  <34.308193, 38.202236, 29.712118>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.998726, 38.063908, 28.971432> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.782364, 38.351795, 29.145521>,  <33.652546, 38.524529, 29.249975>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.782364, 38.351795, 29.145521>,  <33.998726, 38.063908, 28.971432>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.782364, 38.351795, 29.145521> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103227, 0.570350, -0.814889,
		-0.834723, -0.395854, -0.382802,
		-0.540909, 0.719722, 0.435222,
		33.620090, 38.567711, 29.276087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.510796, 38.338291, 28.491739>,  <33.998726, 38.063908, 28.971432>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.510796, 38.338291, 28.491739> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.534885, 38.645042, 28.747324>,  <33.549339, 38.829094, 28.900675>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.534885, 38.645042, 28.747324>,  <33.510796, 38.338291, 28.491739>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.534885, 38.645042, 28.747324> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059752, 0.636204, -0.769203,
		-0.996395, 0.084506, -0.007505,
		0.060228, 0.766879, 0.638960,
		33.552952, 38.875107, 28.939013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.042023, 38.825279, 28.160490>,  <33.510796, 38.338291, 28.491739>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.042023, 38.825279, 28.160490> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.307209, 38.996162, 28.406406>,  <33.466320, 39.098694, 28.553957>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.307209, 38.996162, 28.406406>,  <33.042023, 38.825279, 28.160490>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.307209, 38.996162, 28.406406> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188770, 0.699276, -0.689477,
		-0.724460, 0.573154, 0.382953,
		0.662966, 0.427209, 0.614791,
		33.506100, 39.124325, 28.590843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.975212, 39.640511, 28.027874>,  <33.042023, 38.825279, 28.160490>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.975212, 39.640511, 28.027874> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.339756, 39.583652, 28.182388>,  <33.558483, 39.549538, 28.275097>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.339756, 39.583652, 28.182388>,  <32.975212, 39.640511, 28.027874>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.339756, 39.583652, 28.182388> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391033, 0.592011, -0.704710,
		-0.128514, 0.793295, 0.595119,
		0.911360, -0.142147, 0.386286,
		33.613163, 39.541008, 28.298275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.157185, 40.231792, 28.110210>,  <32.975212, 39.640511, 28.027874>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.157185, 40.231792, 28.110210> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.494583, 40.019230, 28.078901>,  <33.697021, 39.891693, 28.060116>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.494583, 40.019230, 28.078901>,  <33.157185, 40.231792, 28.110210>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.494583, 40.019230, 28.078901> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407729, 0.728312, -0.550744,
		0.349673, 0.432636, 0.830996,
		0.843496, -0.531402, -0.078273,
		33.747631, 39.859810, 28.055420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.695805, 40.723125, 28.197527>,  <33.157185, 40.231792, 28.110210>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.695805, 40.723125, 28.197527> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.927551, 40.422626, 28.071054>,  <34.066597, 40.242329, 27.995171>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.927551, 40.422626, 28.071054>,  <33.695805, 40.723125, 28.197527>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.927551, 40.422626, 28.071054> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548848, 0.646369, -0.530068,
		0.602580, 0.133567, 0.786802,
		0.579364, -0.751243, -0.316181,
		34.101360, 40.197254, 27.976200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.377090, 41.007748, 28.197739>,  <33.695805, 40.723125, 28.197527>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.377090, 41.007748, 28.197739> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.387550, 40.689274, 27.955942>,  <34.393826, 40.498188, 27.810865>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.387550, 40.689274, 27.955942>,  <34.377090, 41.007748, 28.197739>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.387550, 40.689274, 27.955942> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.658128, 0.468871, -0.589091,
		0.752452, -0.382428, 0.536251,
		0.026147, -0.796184, -0.604489,
		34.395393, 40.450420, 27.774595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.072056, 40.879879, 28.195047>,  <34.377090, 41.007748, 28.197739>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.072056, 40.879879, 28.195047> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.929752, 40.683731, 27.876808>,  <34.844372, 40.566040, 27.685865>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.929752, 40.683731, 27.876808>,  <35.072056, 40.879879, 28.195047>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.929752, 40.683731, 27.876808> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.662869, 0.467709, -0.584682,
		0.658819, -0.735380, 0.158663,
		-0.355755, -0.490372, -0.795596,
		34.823025, 40.536621, 27.638130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.708870, 40.511814, 27.865541>,  <35.072056, 40.879879, 28.195047>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.708870, 40.511814, 27.865541> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.408100, 40.508907, 27.601856>,  <35.227638, 40.507164, 27.443645>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.408100, 40.508907, 27.601856>,  <35.708870, 40.511814, 27.865541>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.408100, 40.508907, 27.601856> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.647123, 0.182789, -0.740148,
		0.125878, -0.983125, -0.132738,
		-0.751921, -0.007271, -0.659212,
		35.182522, 40.506725, 27.404093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.931004, 40.049210, 27.305988>,  <35.708870, 40.511814, 27.865541>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.931004, 40.049210, 27.305988> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.648811, 40.293140, 27.161539>,  <35.479496, 40.439499, 27.074869>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.648811, 40.293140, 27.161539>,  <35.931004, 40.049210, 27.305988>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.648811, 40.293140, 27.161539> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599868, 0.242437, -0.762485,
		-0.377432, -0.754545, -0.536849,
		-0.705481, 0.609825, -0.361123,
		35.437168, 40.476089, 27.053202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.887981, 39.923210, 26.586359>,  <35.931004, 40.049210, 27.305988>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.887981, 39.923210, 26.586359> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.742962, 40.290657, 26.649229>,  <35.655949, 40.511124, 26.686951>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.742962, 40.290657, 26.649229>,  <35.887981, 39.923210, 26.586359>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.742962, 40.290657, 26.649229> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424731, 0.312977, -0.849499,
		-0.829556, -0.241226, -0.503634,
		-0.362547, 0.918616, 0.157175,
		35.634197, 40.566242, 26.696383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.697491, 40.139084, 25.972372>,  <35.887981, 39.923210, 26.586359>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.697491, 40.139084, 25.972372> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.719193, 40.466366, 26.201317>,  <35.732212, 40.662735, 26.338684>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.719193, 40.466366, 26.201317>,  <35.697491, 40.139084, 25.972372>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.719193, 40.466366, 26.201317> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614362, 0.424517, -0.665090,
		-0.787157, 0.387720, -0.479643,
		0.054252, 0.818204, 0.572362,
		35.735470, 40.711826, 26.373026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.557884, 40.713337, 25.499943>,  <35.697491, 40.139084, 25.972372>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.557884, 40.713337, 25.499943> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.760601, 40.877663, 25.803097>,  <35.882233, 40.976257, 25.984989>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.760601, 40.877663, 25.803097>,  <35.557884, 40.713337, 25.499943>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.760601, 40.877663, 25.803097> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.661371, 0.378613, -0.647488,
		-0.552944, 0.829386, -0.079823,
		0.506795, 0.410817, 0.757884,
		35.912640, 41.000908, 26.030462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.595848, 41.465885, 25.310173>,  <35.557884, 40.713337, 25.499943>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.595848, 41.465885, 25.310173> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.898575, 41.395584, 25.561995>,  <36.080212, 41.353405, 25.713087>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.898575, 41.395584, 25.561995>,  <35.595848, 41.465885, 25.310173>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.898575, 41.395584, 25.561995> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581168, 0.621713, -0.525088,
		-0.299115, 0.763271, 0.572667,
		0.756819, -0.175754, 0.629552,
		36.125622, 41.342857, 25.750860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.869537, 42.154427, 25.403049>,  <35.595848, 41.465885, 25.310173>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.869537, 42.154427, 25.403049> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.137779, 41.881580, 25.519672>,  <36.298725, 41.717873, 25.589645>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.137779, 41.881580, 25.519672>,  <35.869537, 42.154427, 25.403049>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.137779, 41.881580, 25.519672> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.737508, 0.570756, -0.360997,
		0.079837, 0.457110, 0.885820,
		0.670603, -0.682120, 0.291555,
		36.338959, 41.676945, 25.607140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.448456, 42.536880, 25.714741>,  <35.869537, 42.154427, 25.403049>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.448456, 42.536880, 25.714741> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.588699, 42.181137, 25.597364>,  <36.672844, 41.967690, 25.526939>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.588699, 42.181137, 25.597364>,  <36.448456, 42.536880, 25.714741>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.588699, 42.181137, 25.597364> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.744523, 0.454768, -0.488744,
		0.568118, -0.047116, 0.821597,
		0.350609, -0.889363, -0.293441,
		36.693882, 41.914330, 25.509333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.118298, 42.605293, 25.789619>,  <36.448456, 42.536880, 25.714741>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.118298, 42.605293, 25.789619> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.054665, 42.300167, 25.538923>,  <37.016483, 42.117092, 25.388506>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.054665, 42.300167, 25.538923>,  <37.118298, 42.605293, 25.789619>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.054665, 42.300167, 25.538923> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.711519, 0.351507, -0.608426,
		0.684421, -0.542730, 0.486838,
		-0.159084, -0.762815, -0.626742,
		37.006939, 42.071323, 25.350901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.717636, 42.410362, 25.593891>,  <37.118298, 42.605293, 25.789619>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.717636, 42.410362, 25.593891> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.503086, 42.245785, 25.299133>,  <37.374355, 42.147038, 25.122278>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.503086, 42.245785, 25.299133>,  <37.717636, 42.410362, 25.593891>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.503086, 42.245785, 25.299133> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.680928, 0.304883, -0.665870,
		0.498634, -0.858930, 0.116630,
		-0.536378, -0.411442, -0.736895,
		37.342175, 42.122353, 25.078064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.205769, 42.090355, 25.085674>,  <37.717636, 42.410362, 25.593891>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.205769, 42.090355, 25.085674> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.864025, 42.162148, 24.890589>,  <37.658981, 42.205223, 24.773539>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.864025, 42.162148, 24.890589>,  <38.205769, 42.090355, 25.085674>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.864025, 42.162148, 24.890589> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519517, 0.319094, -0.792642,
		0.013361, -0.930573, -0.365864,
		-0.854356, 0.179482, -0.487712,
		37.607719, 42.215992, 24.744276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.822090, 41.640507, 25.051561>,  <38.205769, 42.090355, 25.085674>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.822090, 41.640507, 25.051561> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.025047, 41.921127, 25.251711>,  <39.146820, 42.089500, 25.371801>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.025047, 41.921127, 25.251711>,  <38.822090, 41.640507, 25.051561>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.025047, 41.921127, 25.251711> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522289, -0.211487, 0.826128,
		0.685396, -0.680511, 0.259107,
		0.507392, 0.701554, 0.500375,
		39.177265, 42.131592, 25.401823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.886398, 41.325096, 25.680775>,  <38.822090, 41.640507, 25.051561>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.886398, 41.325096, 25.680775> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.030899, 41.684578, 25.780241>,  <39.117599, 41.900265, 25.839920>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.030899, 41.684578, 25.780241>,  <38.886398, 41.325096, 25.680775>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.030899, 41.684578, 25.780241> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232465, -0.171456, 0.957373,
		0.903027, -0.403658, 0.146977,
		0.361251, 0.898701, 0.248666,
		39.139275, 41.954189, 25.854841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.496059, 41.194870, 26.144033>,  <38.886398, 41.325096, 25.680775>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.496059, 41.194870, 26.144033> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.363640, 41.567146, 26.206282>,  <39.284187, 41.790512, 26.243631>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.363640, 41.567146, 26.206282>,  <39.496059, 41.194870, 26.144033>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.363640, 41.567146, 26.206282> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147657, -0.213983, 0.965613,
		0.931988, 0.296689, 0.208262,
		-0.331051, 0.930692, 0.155622,
		39.264324, 41.846355, 26.252968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.929176, 41.440308, 26.665489>,  <39.496059, 41.194870, 26.144033>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.929176, 41.440308, 26.665489> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.597157, 41.662121, 26.689161>,  <39.397945, 41.795208, 26.703363>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.597157, 41.662121, 26.689161>,  <39.929176, 41.440308, 26.665489>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.597157, 41.662121, 26.689161> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158184, -0.335867, 0.928532,
		0.534782, 0.761369, 0.366506,
		-0.830052, 0.554537, 0.059179,
		39.348141, 41.828484, 26.706915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.904366, 41.661831, 27.341152>,  <39.929176, 41.440308, 26.665489>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.904366, 41.661831, 27.341152> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.524063, 41.698895, 27.222847>,  <39.295883, 41.721134, 27.151865>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.524063, 41.698895, 27.222847>,  <39.904366, 41.661831, 27.341152>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.524063, 41.698895, 27.222847> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309935, -0.282221, 0.907905,
		0.000655, 0.954865, 0.297042,
		-0.950758, 0.092658, -0.295761,
		39.238834, 41.726692, 27.134119>
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
