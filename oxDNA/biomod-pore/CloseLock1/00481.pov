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
	<24.418472, 34.839928, 34.315613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.244318, 34.788662, 34.672043>,  <24.139826, 34.757900, 34.885899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.244318, 34.788662, 34.672043>,  <24.418472, 34.839928, 34.315613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.244318, 34.788662, 34.672043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448804, -0.827136, -0.338261,
		0.780393, -0.547191, 0.302603,
		-0.435387, -0.128167, 0.891073,
		24.113701, 34.750214, 34.939365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.690611, 35.457817, 33.975414>,  <24.418472, 34.839928, 34.315613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.690611, 35.457817, 33.975414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.934427, 35.544312, 33.670338>,  <25.080717, 35.596207, 33.487289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.934427, 35.544312, 33.670338>,  <24.690611, 35.457817, 33.975414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.934427, 35.544312, 33.670338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.637357, 0.438440, 0.633677,
		0.471418, -0.872361, 0.129429,
		0.609542, 0.216234, -0.762693,
		25.117290, 35.609180, 33.441528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.274660, 35.350872, 34.380772>,  <24.690611, 35.457817, 33.975414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.274660, 35.350872, 34.380772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.323414, 35.577484, 34.054783>,  <25.352667, 35.713451, 33.859188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.323414, 35.577484, 34.054783>,  <25.274660, 35.350872, 34.380772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.323414, 35.577484, 34.054783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516336, 0.665054, 0.539537,
		0.847668, -0.486562, -0.211462,
		0.121884, 0.566534, -0.814974,
		25.359980, 35.747444, 33.810291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.983564, 35.026505, 34.506386>,  <25.274660, 35.350872, 34.380772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.983564, 35.026505, 34.506386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.339188, 35.193390, 34.431007>,  <26.552561, 35.293522, 34.385780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.339188, 35.193390, 34.431007>,  <25.983564, 35.026505, 34.506386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.339188, 35.193390, 34.431007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241147, -0.776695, -0.581887,
		-0.389133, 0.471889, -0.791136,
		0.889058, 0.417211, -0.188443,
		26.605906, 35.318554, 34.374474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.231960, 34.718304, 33.889137>,  <25.983564, 35.026505, 34.506386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.231960, 34.718304, 33.889137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.566751, 34.930939, 33.941101>,  <26.767626, 35.058521, 33.972279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.566751, 34.930939, 33.941101>,  <26.231960, 34.718304, 33.889137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.566751, 34.930939, 33.941101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422100, -0.476050, -0.771497,
		-0.348277, 0.700562, -0.622829,
		0.836979, 0.531591, 0.129910,
		26.817844, 35.090416, 33.980076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.490181, 34.964138, 33.266090>,  <26.231960, 34.718304, 33.889137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.490181, 34.964138, 33.266090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.823101, 34.945908, 33.487068>,  <27.022854, 34.934967, 33.619656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.823101, 34.945908, 33.487068>,  <26.490181, 34.964138, 33.266090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.823101, 34.945908, 33.487068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524705, -0.256633, -0.811680,
		0.178772, 0.965434, -0.189680,
		0.832301, -0.045580, 0.552446,
		27.072792, 34.932232, 33.652802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.082817, 35.283623, 32.845387>,  <26.490181, 34.964138, 33.266090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.082817, 35.283623, 32.845387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.230055, 35.046192, 33.131653>,  <27.318398, 34.903732, 33.303413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.230055, 35.046192, 33.131653>,  <27.082817, 35.283623, 32.845387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.230055, 35.046192, 33.131653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589151, -0.446563, -0.673411,
		0.719309, 0.669513, 0.185328,
		0.368097, -0.593577, 0.715661,
		27.340485, 34.868118, 33.346352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.864988, 35.392258, 32.836777>,  <27.082817, 35.283623, 32.845387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.864988, 35.392258, 32.836777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.742861, 35.039818, 32.981243>,  <27.669584, 34.828354, 33.067924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.742861, 35.039818, 32.981243>,  <27.864988, 35.392258, 32.836777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.742861, 35.039818, 32.981243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474443, -0.469606, -0.744563,
		0.825642, -0.055975, 0.561411,
		-0.305319, -0.881100, 0.361170,
		27.651264, 34.775490, 33.089596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.457962, 35.009258, 32.896313>,  <27.864988, 35.392258, 32.836777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.457962, 35.009258, 32.896313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.145145, 34.760082, 32.888699>,  <27.957455, 34.610577, 32.884129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.145145, 34.760082, 32.888699>,  <28.457962, 35.009258, 32.896313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.145145, 34.760082, 32.888699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429726, -0.516860, -0.740399,
		0.451384, -0.587202, 0.671898,
		-0.782041, -0.622936, -0.019034,
		27.910534, 34.573200, 32.882988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.668234, 34.423141, 32.922348>,  <28.457962, 35.009258, 32.896313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.668234, 34.423141, 32.922348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.321053, 34.299397, 32.766941>,  <28.112743, 34.225147, 32.673695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.321053, 34.299397, 32.766941>,  <28.668234, 34.423141, 32.922348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.321053, 34.299397, 32.766941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493138, -0.629625, -0.600323,
		-0.058902, -0.712646, 0.699046,
		-0.867955, -0.309366, -0.388519,
		28.060665, 34.206589, 32.650387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.937534, 33.758705, 32.717445>,  <28.668234, 34.423141, 32.922348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.937534, 33.758705, 32.717445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.594854, 33.862179, 32.538944>,  <28.389246, 33.924263, 32.431843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.594854, 33.862179, 32.538944>,  <28.937534, 33.758705, 32.717445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.594854, 33.862179, 32.538944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278418, -0.496392, -0.822240,
		-0.434215, -0.828661, 0.353240,
		-0.856704, 0.258681, -0.446255,
		28.337845, 33.939785, 32.405067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.667789, 33.128792, 32.334866>,  <28.937534, 33.758705, 32.717445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.667789, 33.128792, 32.334866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.499441, 33.436264, 32.142204>,  <28.398432, 33.620747, 32.026608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.499441, 33.436264, 32.142204>,  <28.667789, 33.128792, 32.334866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.499441, 33.436264, 32.142204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325997, -0.367331, -0.871088,
		-0.846519, -0.523633, -0.095991,
		-0.420870, 0.768685, -0.481655,
		28.373180, 33.666870, 31.997707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.415188, 32.784779, 31.802505>,  <28.667789, 33.128792, 32.334866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.415188, 32.784779, 31.802505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.398659, 33.166592, 31.684412>,  <28.388741, 33.395679, 31.613556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.398659, 33.166592, 31.684412>,  <28.415188, 32.784779, 31.802505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.398659, 33.166592, 31.684412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261267, -0.274883, -0.925299,
		-0.964382, -0.115372, -0.238028,
		-0.041324, 0.954530, -0.295235,
		28.386261, 33.452950, 31.595842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.871269, 32.916115, 31.333757>,  <28.415188, 32.784779, 31.802505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.871269, 32.916115, 31.333757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.142195, 33.203979, 31.272663>,  <28.304750, 33.376698, 31.236006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.142195, 33.203979, 31.272663>,  <27.871269, 32.916115, 31.333757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.142195, 33.203979, 31.272663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094443, -0.290946, -0.952067,
		-0.729606, 0.630425, -0.265029,
		0.677316, 0.719663, -0.152737,
		28.345390, 33.419880, 31.226843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.719683, 33.078594, 30.668997>,  <27.871269, 32.916115, 31.333757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.719683, 33.078594, 30.668997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.074474, 33.260281, 30.702368>,  <28.287350, 33.369293, 30.722391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.074474, 33.260281, 30.702368>,  <27.719683, 33.078594, 30.668997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.074474, 33.260281, 30.702368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205837, -0.227120, -0.951865,
		-0.413400, 0.861457, -0.294944,
		0.886979, 0.454212, 0.083428,
		28.340569, 33.396545, 30.727396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.720932, 33.516071, 30.185221>,  <27.719683, 33.078594, 30.668997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.720932, 33.516071, 30.185221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.106026, 33.447163, 30.268614>,  <28.337082, 33.405815, 30.318649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.106026, 33.447163, 30.268614>,  <27.720932, 33.516071, 30.185221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.106026, 33.447163, 30.268614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168397, -0.221369, -0.960541,
		0.211628, 0.959853, -0.184109,
		0.962734, -0.172274, 0.208484,
		28.394846, 33.395481, 30.331160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.087847, 33.896679, 29.698879>,  <27.720932, 33.516071, 30.185221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.087847, 33.896679, 29.698879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.336727, 33.611473, 29.828169>,  <28.486055, 33.440350, 29.905743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.336727, 33.611473, 29.828169>,  <28.087847, 33.896679, 29.698879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.336727, 33.611473, 29.828169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177315, -0.273794, -0.945302,
		0.762514, 0.645479, -0.043926,
		0.622199, -0.713017, 0.323225,
		28.523386, 33.397568, 29.925137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.695187, 33.984283, 29.364275>,  <28.087847, 33.896679, 29.698879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.695187, 33.984283, 29.364275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.763945, 33.614792, 29.501200>,  <28.805199, 33.393097, 29.583355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.763945, 33.614792, 29.501200>,  <28.695187, 33.984283, 29.364275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.763945, 33.614792, 29.501200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386236, -0.256468, -0.886028,
		0.906242, 0.284516, 0.312692,
		0.171894, -0.923729, 0.342312,
		28.815514, 33.337673, 29.603893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.247486, 33.745323, 29.042679>,  <28.695187, 33.984283, 29.364275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.247486, 33.745323, 29.042679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.088593, 33.407764, 29.186924>,  <28.993256, 33.205231, 29.273472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.088593, 33.407764, 29.186924>,  <29.247486, 33.745323, 29.042679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.088593, 33.407764, 29.186924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276760, -0.484812, -0.829675,
		0.874991, -0.229771, 0.426141,
		-0.397234, -0.843897, 0.360615,
		28.969421, 33.154594, 29.295109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.745699, 33.261414, 29.031553>,  <29.247486, 33.745323, 29.042679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.745699, 33.261414, 29.031553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.407290, 33.050640, 29.064011>,  <29.204245, 32.924175, 29.083485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.407290, 33.050640, 29.064011>,  <29.745699, 33.261414, 29.031553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.407290, 33.050640, 29.064011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172269, -0.414216, -0.893727,
		0.504547, -0.742135, 0.441211,
		-0.846023, -0.526935, 0.081145,
		29.153482, 32.892559, 29.088354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.877705, 32.495121, 28.998968>,  <29.745699, 33.261414, 29.031553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.877705, 32.495121, 28.998968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.497084, 32.563087, 28.896460>,  <29.268711, 32.603867, 28.834955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.497084, 32.563087, 28.896460>,  <29.877705, 32.495121, 28.998968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.497084, 32.563087, 28.896460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159733, -0.439002, -0.884174,
		-0.262739, -0.882273, 0.390593,
		-0.951553, 0.169916, -0.256271,
		29.211618, 32.614063, 28.819578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.547085, 31.843760, 28.752501>,  <29.877705, 32.495121, 28.998968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.547085, 31.843760, 28.752501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.310154, 32.131870, 28.608084>,  <29.167995, 32.304737, 28.521433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.310154, 32.131870, 28.608084>,  <29.547085, 31.843760, 28.752501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.310154, 32.131870, 28.608084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004940, -0.451352, -0.892332,
		-0.805682, -0.526769, 0.270907,
		-0.592327, 0.720275, -0.361044,
		29.132456, 32.347954, 28.499771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.987299, 31.537134, 28.391329>,  <29.547085, 31.843760, 28.752501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.987299, 31.537134, 28.391329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.000441, 31.911516, 28.251097>,  <29.008326, 32.136147, 28.166958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.000441, 31.911516, 28.251097>,  <28.987299, 31.537134, 28.391329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.000441, 31.911516, 28.251097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000657, -0.350748, -0.936470,
		-0.999460, 0.030999, -0.010909,
		0.032856, 0.935957, -0.350579,
		29.010298, 32.192303, 28.145924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.586531, 31.439837, 27.785753>,  <28.987299, 31.537134, 28.391329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.586531, 31.439837, 27.785753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.739943, 31.805956, 27.736549>,  <28.831989, 32.025627, 27.707027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.739943, 31.805956, 27.736549>,  <28.586531, 31.439837, 27.785753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.739943, 31.805956, 27.736549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090730, -0.169895, -0.981277,
		-0.919061, 0.365187, -0.148205,
		0.383529, 0.915300, -0.123010,
		28.855001, 32.080547, 27.699646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.237982, 31.657793, 27.237232>,  <28.586531, 31.439837, 27.785753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.237982, 31.657793, 27.237232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.565859, 31.886749, 27.245918>,  <28.762585, 32.024124, 27.251131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.565859, 31.886749, 27.245918>,  <28.237982, 31.657793, 27.237232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.565859, 31.886749, 27.245918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148231, -0.175347, -0.973284,
		-0.553291, 0.801013, -0.228577,
		0.819693, 0.572391, 0.021717,
		28.811768, 32.058468, 27.252434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.242887, 32.211319, 26.731510>,  <28.237982, 31.657793, 27.237232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.242887, 32.211319, 26.731510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.612455, 32.078396, 26.807348>,  <28.834196, 31.998642, 26.852850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.612455, 32.078396, 26.807348>,  <28.242887, 32.211319, 26.731510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.612455, 32.078396, 26.807348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184876, -0.046069, -0.981681,
		0.334956, 0.942045, 0.018872,
		0.923918, -0.332309, 0.189593,
		28.889631, 31.978703, 26.864225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.776018, 32.551346, 26.370119>,  <28.242887, 32.211319, 26.731510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.776018, 32.551346, 26.370119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.924662, 32.192131, 26.464293>,  <29.013847, 31.976601, 26.520796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.924662, 32.192131, 26.464293>,  <28.776018, 32.551346, 26.370119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.924662, 32.192131, 26.464293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019165, -0.246117, -0.969051,
		0.928191, 0.364621, -0.074249,
		0.371610, -0.898041, 0.235432,
		29.036144, 31.922718, 26.534922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.418608, 32.398834, 26.047674>,  <28.776018, 32.551346, 26.370119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.418608, 32.398834, 26.047674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.178928, 32.083118, 26.101313>,  <29.035120, 31.893688, 26.133495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.178928, 32.083118, 26.101313>,  <29.418608, 32.398834, 26.047674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.178928, 32.083118, 26.101313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068809, -0.116104, -0.990851,
		0.797637, -0.602944, 0.015259,
		-0.599200, -0.789289, 0.134097,
		28.999168, 31.846333, 26.141542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.762453, 31.810734, 25.665621>,  <29.418608, 32.398834, 26.047674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.762453, 31.810734, 25.665621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.362972, 31.816008, 25.685310>,  <29.123283, 31.819172, 25.697124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.362972, 31.816008, 25.685310>,  <29.762453, 31.810734, 25.665621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.362972, 31.816008, 25.685310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048394, 0.057132, -0.997193,
		-0.015961, -0.998280, -0.056420,
		-0.998701, 0.013186, 0.049222,
		29.063362, 31.819962, 25.700077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.554903, 31.914959, 25.693796>,  <29.762453, 31.810734, 25.665621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.554903, 31.914959, 25.693796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.496136, 32.270744, 25.866894>,  <30.460875, 32.484215, 25.970753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.496136, 32.270744, 25.866894>,  <30.554903, 31.914959, 25.693796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.496136, 32.270744, 25.866894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.866185, -0.095566, 0.490501,
		0.477639, 0.446898, -0.756401,
		-0.146918, 0.889466, 0.432743,
		30.452061, 32.537582, 25.996717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.067581, 32.392136, 25.617796>,  <30.554903, 31.914959, 25.693796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.067581, 32.392136, 25.617796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.907898, 32.525631, 25.959381>,  <30.812088, 32.605728, 26.164331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.907898, 32.525631, 25.959381>,  <31.067581, 32.392136, 25.617796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.907898, 32.525631, 25.959381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.883774, -0.107878, 0.455308,
		0.244078, 0.936473, -0.251883,
		-0.399210, 0.333738, 0.853961,
		30.788136, 32.625751, 26.215569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.671383, 32.421970, 26.116911>,  <31.067581, 32.392136, 25.617796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.671383, 32.421970, 26.116911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.353436, 32.559010, 26.317236>,  <31.162668, 32.641235, 26.437431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.353436, 32.559010, 26.317236>,  <31.671383, 32.421970, 26.116911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.353436, 32.559010, 26.317236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562079, 0.104797, 0.820418,
		0.228591, 0.933618, -0.275867,
		-0.794867, 0.342600, 0.500811,
		31.114975, 32.661789, 26.467480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.996811, 33.059181, 26.373507>,  <31.671383, 32.421970, 26.116911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.996811, 33.059181, 26.373507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.673325, 32.919712, 26.562994>,  <31.479233, 32.836033, 26.676687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.673325, 32.919712, 26.562994>,  <31.996811, 33.059181, 26.373507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.673325, 32.919712, 26.562994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528203, -0.076123, 0.845699,
		-0.258809, 0.934149, 0.245730,
		-0.808715, -0.348669, 0.473719,
		31.430710, 32.815113, 26.705111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.387993, 32.440853, 26.443075>,  <31.996811, 33.059181, 26.373507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.387993, 32.440853, 26.443075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.744133, 32.607979, 26.370735>,  <32.957817, 32.708252, 26.327332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.744133, 32.607979, 26.370735>,  <32.387993, 32.440853, 26.443075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.744133, 32.607979, 26.370735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052721, 0.299945, 0.952498,
		0.452210, -0.857593, 0.245030,
		0.890352, 0.417812, -0.180851,
		33.011238, 32.733322, 26.316481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.049519, 32.222351, 26.935575>,  <32.387993, 32.440853, 26.443075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.049519, 32.222351, 26.935575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.009453, 32.605831, 26.829102>,  <32.985413, 32.835918, 26.765217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.009453, 32.605831, 26.829102>,  <33.049519, 32.222351, 26.935575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.009453, 32.605831, 26.829102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234139, 0.282728, 0.930185,
		0.967029, 0.030852, -0.252791,
		-0.100169, 0.958704, -0.266183,
		32.979401, 32.893444, 26.749247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.600510, 32.567467, 27.173759>,  <33.049519, 32.222351, 26.935575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.600510, 32.567467, 27.173759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.297642, 32.826832, 27.142113>,  <33.115921, 32.982452, 27.123125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.297642, 32.826832, 27.142113>,  <33.600510, 32.567467, 27.173759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.297642, 32.826832, 27.142113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222045, 0.369391, 0.902356,
		0.614324, 0.665667, -0.423668,
		-0.757168, 0.648412, -0.079118,
		33.070492, 33.021355, 27.118378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.931309, 33.228115, 27.494320>,  <33.600510, 32.567467, 27.173759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.931309, 33.228115, 27.494320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.540306, 33.311760, 27.483385>,  <33.305702, 33.361946, 27.476824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.540306, 33.311760, 27.483385>,  <33.931309, 33.228115, 27.494320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.540306, 33.311760, 27.483385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099429, 0.571283, 0.814708,
		0.185986, 0.793666, -0.579226,
		-0.977509, 0.209116, -0.027337,
		33.247055, 33.374496, 27.475183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.920940, 33.907204, 27.583443>,  <33.931309, 33.228115, 27.494320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.920940, 33.907204, 27.583443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.561279, 33.771599, 27.694149>,  <33.345482, 33.690235, 27.760572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.561279, 33.771599, 27.694149>,  <33.920940, 33.907204, 27.583443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.561279, 33.771599, 27.694149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113931, 0.429275, 0.895959,
		-0.422551, 0.837133, -0.347359,
		-0.899150, -0.339014, 0.276766,
		33.291534, 33.669895, 27.777180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.454052, 34.470898, 27.833414>,  <33.920940, 33.907204, 27.583443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.454052, 34.470898, 27.833414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.258682, 34.162189, 27.996290>,  <33.141460, 33.976963, 28.094015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.258682, 34.162189, 27.996290>,  <33.454052, 34.470898, 27.833414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.258682, 34.162189, 27.996290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068527, 0.499120, 0.863819,
		-0.869910, 0.394008, -0.296671,
		-0.488426, -0.771775, 0.407190,
		33.112156, 33.930656, 28.118446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.843441, 34.651855, 28.141987>,  <33.454052, 34.470898, 27.833414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.843441, 34.651855, 28.141987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.947021, 34.317234, 28.335117>,  <33.009171, 34.116463, 28.450996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.947021, 34.317234, 28.335117>,  <32.843441, 34.651855, 28.141987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.947021, 34.317234, 28.335117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215230, 0.437334, 0.873164,
		-0.941604, -0.330030, -0.066801,
		0.258955, -0.836552, 0.482828,
		33.024708, 34.066269, 28.479965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.397915, 34.653599, 28.699247>,  <32.843441, 34.651855, 28.141987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.397915, 34.653599, 28.699247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.634270, 34.343330, 28.787960>,  <32.776081, 34.157169, 28.841187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.634270, 34.343330, 28.787960>,  <32.397915, 34.653599, 28.699247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.634270, 34.343330, 28.787960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308117, 0.037088, 0.950625,
		-0.745600, -0.630044, -0.217083,
		0.590885, -0.775674, 0.221780,
		32.811535, 34.110630, 28.854494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.980799, 34.211342, 29.076532>,  <32.397915, 34.653599, 28.699247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.980799, 34.211342, 29.076532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.353230, 34.101086, 29.172131>,  <32.576687, 34.034931, 29.229488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.353230, 34.101086, 29.172131>,  <31.980799, 34.211342, 29.076532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.353230, 34.101086, 29.172131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243981, 0.016593, 0.969638,
		-0.271236, -0.961118, -0.051801,
		0.931077, -0.275640, 0.238995,
		32.632553, 34.018394, 29.243830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.961784, 33.624958, 29.414911>,  <31.980799, 34.211342, 29.076532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.961784, 33.624958, 29.414911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.303883, 33.788517, 29.542255>,  <32.509144, 33.886654, 29.618662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.303883, 33.788517, 29.542255>,  <31.961784, 33.624958, 29.414911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.303883, 33.788517, 29.542255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292587, -0.126047, 0.947895,
		0.427721, -0.903833, 0.011836,
		0.855247, 0.408898, 0.318363,
		32.560455, 33.911186, 29.637764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.085747, 33.335106, 30.012337>,  <31.961784, 33.624958, 29.414911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.085747, 33.335106, 30.012337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.351048, 33.633080, 30.041109>,  <32.510227, 33.811863, 30.058372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.351048, 33.633080, 30.041109>,  <32.085747, 33.335106, 30.012337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.351048, 33.633080, 30.041109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072131, -0.032037, 0.996881,
		0.744916, -0.666367, 0.032485,
		0.663248, 0.744935, 0.071930,
		32.550022, 33.856560, 30.062689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.620514, 33.097763, 30.332554>,  <32.085747, 33.335106, 30.012337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.620514, 33.097763, 30.332554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.581142, 33.491329, 30.392191>,  <32.557518, 33.727467, 30.427973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.581142, 33.491329, 30.392191>,  <32.620514, 33.097763, 30.332554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.581142, 33.491329, 30.392191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361612, -0.174942, 0.915769,
		0.927118, 0.036225, 0.373014,
		-0.098430, 0.983912, 0.149092,
		32.551613, 33.786503, 30.436918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.714989, 33.122700, 30.983112>,  <32.620514, 33.097763, 30.332554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.714989, 33.122700, 30.983112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.561756, 33.490181, 30.944670>,  <32.469818, 33.710670, 30.921604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.561756, 33.490181, 30.944670>,  <32.714989, 33.122700, 30.983112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.561756, 33.490181, 30.944670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347751, -0.047044, 0.936406,
		0.855757, 0.392138, 0.337501,
		-0.383077, 0.918703, -0.096108,
		32.446835, 33.765793, 30.915838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.864933, 33.539322, 31.597826>,  <32.714989, 33.122700, 30.983112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.864933, 33.539322, 31.597826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.552166, 33.738251, 31.447475>,  <32.364506, 33.857609, 31.357265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.552166, 33.738251, 31.447475>,  <32.864933, 33.539322, 31.597826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.552166, 33.738251, 31.447475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402031, 0.058519, 0.913754,
		0.476422, 0.865593, 0.154180,
		-0.781917, 0.497317, -0.375875,
		32.317593, 33.887447, 31.334713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.764496, 34.127533, 32.015854>,  <32.864933, 33.539322, 31.597826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.764496, 34.127533, 32.015854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.406788, 34.087601, 31.841354>,  <32.192162, 34.063641, 31.736654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.406788, 34.087601, 31.841354>,  <32.764496, 34.127533, 32.015854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.406788, 34.087601, 31.841354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447441, 0.180174, 0.875976,
		-0.008846, 0.978556, -0.205791,
		-0.894270, -0.099828, -0.436253,
		32.138508, 34.057652, 31.710478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.350048, 34.680035, 32.401463>,  <32.764496, 34.127533, 32.015854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.350048, 34.680035, 32.401463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.092426, 34.443554, 32.207275>,  <31.937853, 34.301666, 32.090763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.092426, 34.443554, 32.207275>,  <32.350048, 34.680035, 32.401463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.092426, 34.443554, 32.207275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.696297, 0.190232, 0.692085,
		-0.316807, 0.783771, -0.534169,
		-0.644052, -0.591198, -0.485471,
		31.899210, 34.266193, 32.061634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.634157, 35.038506, 32.449528>,  <32.350048, 34.680035, 32.401463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.634157, 35.038506, 32.449528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.562687, 34.653675, 32.367088>,  <31.519804, 34.422775, 32.317627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.562687, 34.653675, 32.367088>,  <31.634157, 35.038506, 32.449528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.562687, 34.653675, 32.367088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.721377, -0.014351, 0.692394,
		-0.669096, 0.272388, -0.691459,
		-0.178676, -0.962081, -0.206096,
		31.509085, 34.365051, 32.305260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.907219, 35.056953, 32.403435>,  <31.634157, 35.038506, 32.449528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.907219, 35.056953, 32.403435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.013760, 34.679806, 32.483498>,  <31.077684, 34.453518, 32.531536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.013760, 34.679806, 32.483498>,  <30.907219, 35.056953, 32.403435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.013760, 34.679806, 32.483498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.810134, -0.106477, 0.576494,
		-0.522245, -0.315701, -0.792208,
		0.266351, -0.942866, 0.200153,
		31.093664, 34.396946, 32.543545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.266459, 34.778603, 32.493656>,  <30.907219, 35.056953, 32.403435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.266459, 34.778603, 32.493656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.503941, 34.489483, 32.635120>,  <30.646431, 34.316010, 32.719997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.503941, 34.489483, 32.635120>,  <30.266459, 34.778603, 32.493656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.503941, 34.489483, 32.635120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.696645, -0.241726, 0.675466,
		-0.402738, -0.647402, -0.647049,
		0.593707, -0.722799, 0.353657,
		30.682053, 34.272644, 32.741219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.864309, 34.241379, 32.551235>,  <30.266459, 34.778603, 32.493656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.864309, 34.241379, 32.551235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.165482, 34.132774, 32.791027>,  <30.346184, 34.067612, 32.934902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.165482, 34.132774, 32.791027>,  <29.864309, 34.241379, 32.551235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.165482, 34.132774, 32.791027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.657716, -0.279256, 0.699590,
		-0.022535, -0.921032, -0.388836,
		0.752929, -0.271509, 0.599484,
		30.391359, 34.051323, 32.970871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.774420, 33.551003, 32.650208>,  <29.864309, 34.241379, 32.551235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.774420, 33.551003, 32.650208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.986355, 33.705589, 32.952179>,  <30.113516, 33.798344, 33.133362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.986355, 33.705589, 32.952179>,  <29.774420, 33.551003, 32.650208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.986355, 33.705589, 32.952179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.708983, -0.286655, 0.644339,
		0.465422, -0.876624, 0.122121,
		0.529836, 0.386471, 0.754927,
		30.145306, 33.821529, 33.178658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.782570, 33.025345, 33.217422>,  <29.774420, 33.551003, 32.650208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.782570, 33.025345, 33.217422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.871483, 33.373356, 33.393440>,  <29.924831, 33.582161, 33.499050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.871483, 33.373356, 33.393440>,  <29.782570, 33.025345, 33.217422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.871483, 33.373356, 33.393440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.644340, -0.207640, 0.736010,
		0.731721, -0.447142, 0.514440,
		0.222283, 0.870029, 0.440046,
		29.938168, 33.634365, 33.525455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.739075, 32.924770, 33.947281>,  <29.782570, 33.025345, 33.217422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.739075, 32.924770, 33.947281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.707329, 33.323071, 33.928577>,  <29.688282, 33.562050, 33.917355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.707329, 33.323071, 33.928577>,  <29.739075, 32.924770, 33.947281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.707329, 33.323071, 33.928577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.609557, -0.011358, 0.792661,
		0.788760, 0.091413, 0.607866,
		-0.079363, 0.995748, -0.046762,
		29.683519, 33.621796, 33.914547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.863333, 33.190697, 34.681076>,  <29.739075, 32.924770, 33.947281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.863333, 33.190697, 34.681076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.668409, 33.483429, 34.490517>,  <29.551455, 33.659069, 34.376183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.668409, 33.483429, 34.490517>,  <29.863333, 33.190697, 34.681076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.668409, 33.483429, 34.490517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501531, 0.212044, 0.838751,
		0.714841, 0.647660, 0.263703,
		-0.487309, 0.731829, -0.476399,
		29.522217, 33.702976, 34.347595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.722107, 33.625225, 35.183922>,  <29.863333, 33.190697, 34.681076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.722107, 33.625225, 35.183922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.475906, 33.774200, 34.906090>,  <29.328186, 33.863586, 34.739391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.475906, 33.774200, 34.906090>,  <29.722107, 33.625225, 35.183922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.475906, 33.774200, 34.906090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.727844, 0.069449, 0.682216,
		0.302323, 0.925454, 0.228333,
		-0.615503, 0.372440, -0.694583,
		29.291256, 33.885933, 34.697716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.293711, 33.383839, 35.685692>,  <29.722107, 33.625225, 35.183922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.293711, 33.383839, 35.685692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.488451, 33.602131, 35.412884>,  <30.605295, 33.733109, 35.249199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.488451, 33.602131, 35.412884>,  <30.293711, 33.383839, 35.685692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.488451, 33.602131, 35.412884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221375, 0.678221, 0.700721,
		0.844967, -0.492129, 0.209381,
		0.486851, 0.545734, -0.682019,
		30.634506, 33.765850, 35.208279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.922081, 33.561340, 35.918861>,  <30.293711, 33.383839, 35.685692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.922081, 33.561340, 35.918861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.806664, 33.857220, 35.675686>,  <30.737413, 34.034748, 35.529781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.806664, 33.857220, 35.675686>,  <30.922081, 33.561340, 35.918861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.806664, 33.857220, 35.675686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328193, 0.672888, 0.662957,
		0.899463, -0.008231, -0.436920,
		-0.288541, 0.739699, -0.607939,
		30.720100, 34.079128, 35.493305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.416931, 33.977825, 35.690460>,  <30.922081, 33.561340, 35.918861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.416931, 33.977825, 35.690460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.091602, 34.209808, 35.671883>,  <30.896404, 34.348999, 35.660736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.091602, 34.209808, 35.671883>,  <31.416931, 33.977825, 35.690460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.091602, 34.209808, 35.671883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449483, 0.677014, 0.582766,
		0.369422, 0.453101, -0.811312,
		-0.813322, 0.579957, -0.046443,
		30.847607, 34.383797, 35.657951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.684572, 34.639442, 35.450504>,  <31.416931, 33.977825, 35.690460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.684572, 34.639442, 35.450504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.352102, 34.687263, 35.667706>,  <31.152620, 34.715954, 35.798027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.352102, 34.687263, 35.667706>,  <31.684572, 34.639442, 35.450504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.352102, 34.687263, 35.667706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476375, 0.656751, 0.584589,
		-0.286733, 0.744570, -0.602826,
		-0.831175, 0.119550, 0.543007,
		31.102751, 34.723129, 35.830608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.492666, 35.380100, 35.566879>,  <31.684572, 34.639442, 35.450504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.492666, 35.380100, 35.566879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.333702, 35.183952, 35.877129>,  <31.238323, 35.066261, 36.063278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.333702, 35.183952, 35.877129>,  <31.492666, 35.380100, 35.566879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.333702, 35.183952, 35.877129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441428, 0.638858, 0.630080,
		-0.804492, 0.592784, -0.037424,
		-0.397410, -0.490374, 0.775628,
		31.214479, 35.036839, 36.109818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.260279, 35.883774, 36.003681>,  <31.492666, 35.380100, 35.566879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.260279, 35.883774, 36.003681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.289324, 35.546467, 36.216709>,  <31.306751, 35.344082, 36.344524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.289324, 35.546467, 36.216709>,  <31.260279, 35.883774, 36.003681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.289324, 35.546467, 36.216709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336503, 0.523380, 0.782840,
		-0.938879, 0.122366, 0.321767,
		0.072613, -0.843267, 0.532567,
		31.311108, 35.293488, 36.376480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.783016, 35.923985, 36.556732>,  <31.260279, 35.883774, 36.003681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.783016, 35.923985, 36.556732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.053108, 35.660748, 36.689983>,  <31.215164, 35.502804, 36.769936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.053108, 35.660748, 36.689983>,  <30.783016, 35.923985, 36.556732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.053108, 35.660748, 36.689983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078659, 0.513309, 0.854591,
		-0.733401, -0.550842, 0.398366,
		0.675230, -0.658093, 0.333132,
		31.255678, 35.463318, 36.789925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.504681, 35.776054, 37.189400>,  <30.783016, 35.923985, 36.556732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.504681, 35.776054, 37.189400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.897646, 35.711956, 37.151062>,  <31.133425, 35.673496, 37.128059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.897646, 35.711956, 37.151062>,  <30.504681, 35.776054, 37.189400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.897646, 35.711956, 37.151062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179285, 0.666085, 0.724008,
		-0.052183, -0.728457, 0.683101,
		0.982412, -0.160251, -0.095843,
		31.192369, 35.663879, 37.122311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.783630, 35.636795, 37.836090>,  <30.504681, 35.776054, 37.189400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.783630, 35.636795, 37.836090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.098013, 35.747654, 37.615017>,  <31.286642, 35.814171, 37.482372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.098013, 35.747654, 37.615017>,  <30.783630, 35.636795, 37.836090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.098013, 35.747654, 37.615017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272127, 0.647598, 0.711733,
		0.555172, -0.709792, 0.433565,
		0.785958, 0.277149, -0.552682,
		31.333799, 35.830799, 37.449211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.298073, 35.573853, 38.317368>,  <30.783630, 35.636795, 37.836090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.298073, 35.573853, 38.317368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.462883, 35.812870, 38.042217>,  <31.561769, 35.956280, 37.877129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.462883, 35.812870, 38.042217>,  <31.298073, 35.573853, 38.317368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.462883, 35.812870, 38.042217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243580, 0.655225, 0.715086,
		0.878010, -0.462188, 0.124420,
		0.412027, 0.597547, -0.687874,
		31.586491, 35.992134, 37.835854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.005970, 35.650177, 38.495857>,  <31.298073, 35.573853, 38.317368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.005970, 35.650177, 38.495857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.909788, 35.952766, 38.252571>,  <31.852079, 36.134319, 38.106598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.909788, 35.952766, 38.252571>,  <32.005970, 35.650177, 38.495857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.909788, 35.952766, 38.252571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435934, 0.644013, 0.628656,
		0.867262, -0.113978, -0.484630,
		-0.240455, 0.756476, -0.608215,
		31.837652, 36.179710, 38.070107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.648685, 35.998726, 38.462120>,  <32.005970, 35.650177, 38.495857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.648685, 35.998726, 38.462120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.353462, 36.248241, 38.359238>,  <32.176327, 36.397949, 38.297508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.353462, 36.248241, 38.359238>,  <32.648685, 35.998726, 38.462120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.353462, 36.248241, 38.359238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412194, 0.718630, 0.560060,
		0.534192, 0.307342, -0.787515,
		-0.738062, 0.623789, -0.257201,
		32.132042, 36.435379, 38.282078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.940132, 36.648106, 38.322689>,  <32.648685, 35.998726, 38.462120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.940132, 36.648106, 38.322689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.567585, 36.793549, 38.330002>,  <32.344055, 36.880814, 38.334389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.567585, 36.793549, 38.330002>,  <32.940132, 36.648106, 38.322689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.567585, 36.793549, 38.330002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289154, 0.708273, 0.644002,
		0.221217, 0.605092, -0.764805,
		-0.931372, 0.363611, 0.018282,
		32.288174, 36.902634, 38.335487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.980820, 37.398727, 38.173271>,  <32.940132, 36.648106, 38.322689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.980820, 37.398727, 38.173271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.643768, 37.315392, 38.371891>,  <32.441536, 37.265388, 38.491062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.643768, 37.315392, 38.371891>,  <32.980820, 37.398727, 38.173271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.643768, 37.315392, 38.371891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338327, 0.512558, 0.789189,
		-0.418934, 0.832993, -0.361410,
		-0.842632, -0.208343, 0.496552,
		32.390980, 37.252888, 38.520855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.925732, 38.056374, 38.609047>,  <32.980820, 37.398727, 38.173271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.925732, 38.056374, 38.609047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.670998, 37.787941, 38.760887>,  <32.518158, 37.626881, 38.851990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.670998, 37.787941, 38.760887>,  <32.925732, 38.056374, 38.609047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.670998, 37.787941, 38.760887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142364, 0.381529, 0.913328,
		-0.757746, 0.635677, -0.147431,
		-0.636831, -0.671082, 0.379599,
		32.479950, 37.586617, 38.874767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.433506, 38.389248, 39.038998>,  <32.925732, 38.056374, 38.609047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.433506, 38.389248, 39.038998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.450752, 38.011024, 39.168037>,  <32.461098, 37.784092, 39.245461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.450752, 38.011024, 39.168037>,  <32.433506, 38.389248, 39.038998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.450752, 38.011024, 39.168037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036211, 0.324164, 0.945308,
		-0.998414, -0.029073, 0.048215,
		0.043113, -0.945554, 0.322597,
		32.463688, 37.727360, 39.264816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.046761, 38.471523, 39.680782>,  <32.433506, 38.389248, 39.038998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.046761, 38.471523, 39.680782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.248127, 38.127514, 39.714088>,  <32.368946, 37.921108, 39.734070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.248127, 38.127514, 39.714088>,  <32.046761, 38.471523, 39.680782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.248127, 38.127514, 39.714088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144145, 0.178605, 0.973305,
		-0.851934, -0.477978, 0.213881,
		0.503419, -0.860021, 0.083262,
		32.399151, 37.869507, 39.739067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.654913, 38.191196, 40.254131>,  <32.046761, 38.471523, 39.680782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.654913, 38.191196, 40.254131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.013382, 38.016151, 40.224812>,  <32.228462, 37.911125, 40.207218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.013382, 38.016151, 40.224812>,  <31.654913, 38.191196, 40.254131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.013382, 38.016151, 40.224812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217703, 0.289711, 0.932026,
		-0.386630, -0.851213, 0.354900,
		0.896171, -0.437612, -0.073301,
		32.282234, 37.884869, 40.202820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.737394, 37.733852, 40.751228>,  <31.654913, 38.191196, 40.254131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.737394, 37.733852, 40.751228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.106407, 37.865578, 40.670742>,  <32.327816, 37.944611, 40.622448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.106407, 37.865578, 40.670742>,  <31.737394, 37.733852, 40.751228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.106407, 37.865578, 40.670742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149477, 0.175799, 0.973012,
		0.355799, -0.927711, 0.112956,
		0.922531, 0.329313, -0.201221,
		32.383167, 37.964371, 40.610374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.097099, 37.499432, 41.299030>,  <31.737394, 37.733852, 40.751228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.097099, 37.499432, 41.299030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.371483, 37.738029, 41.132343>,  <32.536114, 37.881187, 41.032330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.371483, 37.738029, 41.132343>,  <32.097099, 37.499432, 41.299030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.371483, 37.738029, 41.132343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337963, 0.245998, 0.908442,
		0.644391, -0.763990, -0.032848,
		0.685960, 0.596493, -0.416719,
		32.577271, 37.916977, 41.007328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.757248, 37.278744, 41.603214>,  <32.097099, 37.499432, 41.299030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.757248, 37.278744, 41.603214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.794117, 37.650101, 41.459221>,  <32.816238, 37.872917, 41.372826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.794117, 37.650101, 41.459221>,  <32.757248, 37.278744, 41.603214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.794117, 37.650101, 41.459221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443383, 0.285433, 0.849670,
		0.891580, -0.237929, -0.385324,
		0.092177, 0.928395, -0.359980,
		32.821770, 37.928619, 41.351227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.338673, 37.565063, 41.893539>,  <32.757248, 37.278744, 41.603214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.338673, 37.565063, 41.893539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.117210, 37.880043, 41.785172>,  <32.984333, 38.069031, 41.720150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.117210, 37.880043, 41.785172>,  <33.338673, 37.565063, 41.893539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.117210, 37.880043, 41.785172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276800, 0.480850, 0.831965,
		0.785400, 0.385628, -0.484188,
		-0.553651, 0.787448, -0.270917,
		32.951115, 38.116276, 41.703896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.474998, 37.960503, 42.409618>,  <33.338673, 37.565063, 41.893539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.474998, 37.960503, 42.409618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.184982, 38.174713, 42.236401>,  <33.010971, 38.303238, 42.132469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.184982, 38.174713, 42.236401>,  <33.474998, 37.960503, 42.409618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.184982, 38.174713, 42.236401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106115, 0.708137, 0.698056,
		0.680478, 0.460170, -0.570258,
		-0.725045, 0.535525, -0.433040,
		32.967468, 38.335369, 42.106487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.716545, 38.551273, 42.307259>,  <33.474998, 37.960503, 42.409618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.716545, 38.551273, 42.307259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.321815, 38.615376, 42.316147>,  <33.084976, 38.653839, 42.321480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.321815, 38.615376, 42.316147>,  <33.716545, 38.551273, 42.307259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.321815, 38.615376, 42.316147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125688, 0.672866, 0.729009,
		0.101878, 0.722197, -0.684143,
		-0.986825, 0.160258, 0.022221,
		33.025768, 38.663452, 42.322815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.624302, 39.216335, 42.387623>,  <33.716545, 38.551273, 42.307259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.624302, 39.216335, 42.387623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.263199, 39.078575, 42.490711>,  <33.046539, 38.995918, 42.552563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.263199, 39.078575, 42.490711>,  <33.624302, 39.216335, 42.387623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.263199, 39.078575, 42.490711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021810, 0.635010, 0.772196,
		-0.429603, 0.691483, -0.580769,
		-0.902754, -0.344405, 0.257721,
		32.992374, 38.975254, 42.568027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.223698, 39.816254, 42.564030>,  <33.624302, 39.216335, 42.387623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.223698, 39.816254, 42.564030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.055939, 39.490665, 42.724808>,  <32.955284, 39.295311, 42.821274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.055939, 39.490665, 42.724808>,  <33.223698, 39.816254, 42.564030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.055939, 39.490665, 42.724808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006751, 0.445553, 0.895230,
		-0.907779, 0.372741, -0.192358,
		-0.419395, -0.813970, 0.401947,
		32.930119, 39.246475, 42.845390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.617306, 40.020889, 42.929478>,  <33.223698, 39.816254, 42.564030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.617306, 40.020889, 42.929478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.682285, 39.661488, 43.092598>,  <32.721275, 39.445847, 43.190472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.682285, 39.661488, 43.092598>,  <32.617306, 40.020889, 42.929478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.682285, 39.661488, 43.092598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302388, 0.348072, 0.887360,
		-0.939240, -0.267469, -0.215151,
		0.162453, -0.898502, 0.407803,
		32.731022, 39.391937, 43.214939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.129993, 39.966133, 43.452740>,  <32.617306, 40.020889, 42.929478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.129993, 39.966133, 43.452740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.405537, 39.698952, 43.565392>,  <32.570862, 39.538643, 43.632980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.405537, 39.698952, 43.565392>,  <32.129993, 39.966133, 43.452740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.405537, 39.698952, 43.565392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061495, 0.333258, 0.940828,
		-0.722286, -0.665413, 0.188491,
		0.688856, -0.667955, 0.281627,
		32.612194, 39.498566, 43.649879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.835133, 39.631523, 43.990063>,  <32.129993, 39.966133, 43.452740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.835133, 39.631523, 43.990063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.230862, 39.582577, 44.021729>,  <32.468300, 39.553207, 44.040730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.230862, 39.582577, 44.021729>,  <31.835133, 39.631523, 43.990063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.230862, 39.582577, 44.021729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059707, 0.155218, 0.986074,
		-0.132952, -0.980272, 0.146255,
		0.989322, -0.122368, 0.079165,
		32.527657, 39.545868, 44.045479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.889935, 39.190792, 44.489914>,  <31.835133, 39.631523, 43.990063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.889935, 39.190792, 44.489914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.255878, 39.349621, 44.460594>,  <32.475445, 39.444916, 44.443001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.255878, 39.349621, 44.460594>,  <31.889935, 39.190792, 44.489914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.255878, 39.349621, 44.460594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043244, 0.084141, 0.995515,
		0.401454, -0.913924, 0.059806,
		0.914858, 0.397067, -0.073300,
		32.530334, 39.468742, 44.438602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.468094, 38.725571, 44.857075>,  <31.889935, 39.190792, 44.489914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.468094, 38.725571, 44.857075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.643436, 39.084435, 44.835365>,  <32.748642, 39.299755, 44.822338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.643436, 39.084435, 44.835365>,  <32.468094, 38.725571, 44.857075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.643436, 39.084435, 44.835365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296609, -0.087395, 0.950992,
		0.848450, -0.432970, -0.304417,
		0.438356, 0.897162, -0.054272,
		32.774944, 39.353584, 44.819084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.982147, 38.703102, 45.300449>,  <32.468094, 38.725571, 44.857075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.982147, 38.703102, 45.300449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.003735, 39.098312, 45.242630>,  <33.016685, 39.335438, 45.207939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.003735, 39.098312, 45.242630>,  <32.982147, 38.703102, 45.300449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.003735, 39.098312, 45.242630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329352, 0.119048, 0.936672,
		0.942663, -0.098158, -0.318983,
		0.053968, 0.988025, -0.144550,
		33.019924, 39.394718, 45.199265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.644825, 38.918411, 45.626865>,  <32.982147, 38.703102, 45.300449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.644825, 38.918411, 45.626865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.391174, 39.227097, 45.607494>,  <33.238983, 39.412308, 45.595871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.391174, 39.227097, 45.607494>,  <33.644825, 38.918411, 45.626865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.391174, 39.227097, 45.607494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083511, 0.130615, 0.987910,
		0.768703, 0.622419, -0.147273,
		-0.634130, 0.771708, -0.048426,
		33.200935, 39.458611, 45.592968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.950512, 39.366379, 46.027649>,  <33.644825, 38.918411, 45.626865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.950512, 39.366379, 46.027649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.570480, 39.488266, 46.000843>,  <33.342461, 39.561398, 45.984760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.570480, 39.488266, 46.000843>,  <33.950512, 39.366379, 46.027649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.570480, 39.488266, 46.000843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069834, 0.001637, 0.997557,
		0.304079, 0.952442, 0.019724,
		-0.950084, 0.304714, -0.067010,
		33.285454, 39.579681, 45.980740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.847542, 39.909477, 46.546108>,  <33.950512, 39.366379, 46.027649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.847542, 39.909477, 46.546108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.488876, 39.739883, 46.495140>,  <33.273678, 39.638126, 46.464558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.488876, 39.739883, 46.495140>,  <33.847542, 39.909477, 46.546108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.488876, 39.739883, 46.495140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167251, 0.057914, 0.984212,
		-0.409911, 0.903816, -0.122841,
		-0.896661, -0.423984, -0.127424,
		33.219879, 39.612690, 46.456913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.480080, 40.294399, 47.042297>,  <33.847542, 39.909477, 46.546108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.480080, 40.294399, 47.042297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.252312, 39.983025, 46.936626>,  <33.115650, 39.796200, 46.873222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.252312, 39.983025, 46.936626>,  <33.480080, 40.294399, 47.042297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.252312, 39.983025, 46.936626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416849, -0.003556, 0.908968,
		-0.708517, 0.627709, -0.322467,
		-0.569421, -0.778440, -0.264179,
		33.081486, 39.749493, 46.857372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.847664, 40.462887, 47.341782>,  <33.480080, 40.294399, 47.042297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.847664, 40.462887, 47.341782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.818699, 40.070343, 47.270569>,  <32.801319, 39.834816, 47.227840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.818699, 40.070343, 47.270569>,  <32.847664, 40.462887, 47.341782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.818699, 40.070343, 47.270569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280996, -0.151199, 0.947724,
		-0.956973, 0.118655, -0.264808,
		-0.072414, -0.981356, -0.178034,
		32.796974, 39.775936, 47.217159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.214066, 40.143364, 47.764904>,  <32.847664, 40.462887, 47.341782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.214066, 40.143364, 47.764904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.446110, 39.826939, 47.687244>,  <32.585335, 39.637085, 47.640648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.446110, 39.826939, 47.687244>,  <32.214066, 40.143364, 47.764904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.446110, 39.826939, 47.687244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128100, -0.323987, 0.937349,
		-0.804403, -0.518894, -0.289283,
		0.580108, -0.791064, -0.194146,
		32.620144, 39.589619, 47.629002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.847765, 39.651295, 47.951149>,  <32.214066, 40.143364, 47.764904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.847765, 39.651295, 47.951149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.221550, 39.509369, 47.963055>,  <32.445820, 39.424213, 47.970200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.221550, 39.509369, 47.963055>,  <31.847765, 39.651295, 47.951149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.221550, 39.509369, 47.963055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055842, -0.063483, 0.996419,
		-0.351654, -0.932779, -0.079136,
		0.934463, -0.354814, 0.029764,
		32.501888, 39.402924, 47.971985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.773317, 38.999237, 48.364090>,  <31.847765, 39.651295, 47.951149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.773317, 38.999237, 48.364090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.163868, 39.085354, 48.356731>,  <32.398197, 39.137024, 48.352314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.163868, 39.085354, 48.356731>,  <31.773317, 38.999237, 48.364090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.163868, 39.085354, 48.356731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084292, -0.301096, 0.949861,
		0.198962, -0.928972, -0.312131,
		0.976376, 0.215296, -0.018398,
		32.456779, 39.149944, 48.351212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.170620, 38.427235, 48.400360>,  <31.773317, 38.999237, 48.364090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.170620, 38.427235, 48.400360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.364429, 38.734596, 48.567589>,  <32.480717, 38.919014, 48.667927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.364429, 38.734596, 48.567589>,  <32.170620, 38.427235, 48.400360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.364429, 38.734596, 48.567589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161884, -0.548428, 0.820378,
		0.859668, -0.329814, -0.390120,
		0.484525, 0.768407, 0.418075,
		32.509789, 38.965118, 48.693012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.386906, 38.278278, 49.098286>,  <32.170620, 38.427235, 48.400360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.386906, 38.278278, 49.098286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.515659, 38.656307, 49.120998>,  <32.592911, 38.883125, 49.134624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.515659, 38.656307, 49.120998>,  <32.386906, 38.278278, 49.098286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.515659, 38.656307, 49.120998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323150, -0.166034, 0.931669,
		0.889924, -0.281542, -0.358845,
		0.321884, 0.945075, 0.056778,
		32.612225, 38.939831, 49.138031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.035194, 38.255848, 49.573906>,  <32.386906, 38.278278, 49.098286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.035194, 38.255848, 49.573906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.897823, 38.631432, 49.565849>,  <32.815399, 38.856781, 49.561016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.897823, 38.631432, 49.565849>,  <33.035194, 38.255848, 49.573906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.897823, 38.631432, 49.565849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195406, 0.092414, 0.976358,
		0.918626, 0.331373, -0.215217,
		-0.343428, 0.938963, -0.020142,
		32.794796, 38.913120, 49.559807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.449863, 38.520912, 50.007843>,  <33.035194, 38.255848, 49.573906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.449863, 38.520912, 50.007843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.117134, 38.742500, 49.994061>,  <32.917496, 38.875454, 49.985790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.117134, 38.742500, 49.994061>,  <33.449863, 38.520912, 50.007843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.117134, 38.742500, 49.994061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065875, -0.036893, 0.997146,
		0.551113, 0.831722, 0.067181,
		-0.831826, 0.553966, -0.034458,
		32.867588, 38.908691, 49.983723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.584999, 39.104668, 50.368237>,  <33.449863, 38.520912, 50.007843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.584999, 39.104668, 50.368237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.185284, 39.099972, 50.382526>,  <32.945454, 39.097153, 50.391098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.185284, 39.099972, 50.382526>,  <33.584999, 39.104668, 50.368237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.185284, 39.099972, 50.382526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033173, 0.172041, 0.984531,
		-0.017705, 0.985020, -0.171529,
		-0.999293, -0.011741, 0.035722,
		32.885494, 39.096451, 50.393242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.513409, 39.576229, 50.855911>,  <33.584999, 39.104668, 50.368237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.513409, 39.576229, 50.855911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.153297, 39.402523, 50.843773>,  <32.937233, 39.298298, 50.836491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.153297, 39.402523, 50.843773>,  <33.513409, 39.576229, 50.855911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.153297, 39.402523, 50.843773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061857, 0.058603, 0.996363,
		-0.430907, 0.898877, -0.079621,
		-0.900274, -0.434265, -0.030349,
		32.883217, 39.272243, 50.834667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.073204, 40.002399, 51.222588>,  <33.513409, 39.576229, 50.855911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.073204, 40.002399, 51.222588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.944904, 39.623947, 51.204918>,  <32.867924, 39.396873, 51.194317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.944904, 39.623947, 51.204918>,  <33.073204, 40.002399, 51.222588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.944904, 39.623947, 51.204918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031326, -0.057208, 0.997871,
		-0.946647, 0.318678, 0.047988,
		-0.320745, -0.946135, -0.044173,
		32.848682, 39.340107, 51.191666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.289330, 39.976959, 51.475952>,  <33.073204, 40.002399, 51.222588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.289330, 39.976959, 51.475952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.505749, 39.641834, 51.505165>,  <32.635601, 39.440758, 51.522694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.505749, 39.641834, 51.505165>,  <32.289330, 39.976959, 51.475952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.505749, 39.641834, 51.505165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001912, 0.088065, 0.996113,
		-0.840988, -0.538808, 0.049249,
		0.541050, -0.837813, 0.073031,
		32.668064, 39.390491, 51.527073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.091103, 39.970234, 52.187576>,  <32.289330, 39.976959, 51.475952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.091103, 39.970234, 52.187576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.905827, 40.030735, 52.536880>,  <31.794662, 40.067036, 52.746464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.905827, 40.030735, 52.536880>,  <32.091103, 39.970234, 52.187576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.905827, 40.030735, 52.536880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.806382, 0.336881, -0.486065,
		-0.367705, -0.929318, -0.034067,
		-0.463186, 0.151257, 0.873258,
		31.766870, 40.076111, 52.798859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.366806, 39.537228, 52.230171>,  <32.091103, 39.970234, 52.187576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.366806, 39.537228, 52.230171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.403040, 39.892246, 52.410866>,  <31.424780, 40.105255, 52.519283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.403040, 39.892246, 52.410866>,  <31.366806, 39.537228, 52.230171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.403040, 39.892246, 52.410866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.910293, 0.257769, -0.323916,
		-0.403932, -0.381869, 0.831273,
		0.090583, 0.887542, 0.451734,
		31.430214, 40.158508, 52.546387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.740055, 38.780560, 52.318161>,  <31.366806, 39.537228, 52.230171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.740055, 38.780560, 52.318161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.481651, 38.820839, 52.015499>,  <31.326609, 38.845005, 51.833900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.481651, 38.820839, 52.015499>,  <31.740055, 38.780560, 52.318161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.481651, 38.820839, 52.015499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505600, 0.686189, 0.522985,
		0.571875, 0.720419, -0.392371,
		-0.646009, 0.100699, -0.756658,
		31.287849, 38.851048, 51.788502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.091042, 38.953045, 53.057022>,  <31.740055, 38.780560, 52.318161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.091042, 38.953045, 53.057022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.004032, 38.564964, 53.014317>,  <31.951826, 38.332115, 52.988693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.004032, 38.564964, 53.014317>,  <32.091042, 38.953045, 53.057022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.004032, 38.564964, 53.014317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467343, -0.007499, -0.884044,
		0.856898, -0.242193, 0.455047,
		-0.217522, -0.970199, -0.106762,
		31.938776, 38.273903, 52.982288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.701252, 38.541592, 53.165993>,  <32.091042, 38.953045, 53.057022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.701252, 38.541592, 53.165993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.422405, 38.397034, 52.918308>,  <32.255096, 38.310299, 52.769695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.422405, 38.397034, 52.918308>,  <32.701252, 38.541592, 53.165993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.422405, 38.397034, 52.918308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549506, 0.285432, -0.785221,
		0.460518, -0.887650, -0.000390,
		-0.697113, -0.361394, -0.619215,
		32.213272, 38.288616, 52.732544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.867218, 37.815952, 53.267124>,  <32.701252, 38.541592, 53.165993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.867218, 37.815952, 53.267124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.745117, 37.449970, 53.372711>,  <32.671856, 37.230381, 53.436062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.745117, 37.449970, 53.372711>,  <32.867218, 37.815952, 53.267124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.745117, 37.449970, 53.372711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237763, -0.341646, -0.909256,
		0.922112, -0.214792, 0.321831,
		-0.305253, -0.914955, 0.263966,
		32.653542, 37.175484, 53.451900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.424500, 37.290421, 53.106236>,  <32.867218, 37.815952, 53.267124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.424500, 37.290421, 53.106236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.045052, 37.164009, 53.099964>,  <32.817383, 37.088161, 53.096199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.045052, 37.164009, 53.099964>,  <33.424500, 37.290421, 53.106236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.045052, 37.164009, 53.099964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128720, -0.340150, -0.931520,
		0.289055, -0.885676, 0.363352,
		-0.948619, -0.316031, -0.015682,
		32.760468, 37.069199, 53.095261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.523895, 36.701221, 52.795727>,  <33.424500, 37.290421, 53.106236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.523895, 36.701221, 52.795727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.138954, 36.798210, 52.746601>,  <32.907990, 36.856403, 52.717125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.138954, 36.798210, 52.746601>,  <33.523895, 36.701221, 52.795727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.138954, 36.798210, 52.746601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048416, -0.291703, -0.955283,
		-0.267450, -0.925267, 0.268983,
		-0.962354, 0.242467, -0.122814,
		32.850250, 36.870953, 52.709755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.278820, 36.171146, 52.445992>,  <33.523895, 36.701221, 52.795727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.278820, 36.171146, 52.445992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.052746, 36.489258, 52.358269>,  <32.917103, 36.680126, 52.305637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.052746, 36.489258, 52.358269>,  <33.278820, 36.171146, 52.445992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.052746, 36.489258, 52.358269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047353, -0.234123, -0.971053,
		-0.823604, -0.559210, 0.094664,
		-0.565186, 0.795280, -0.219305,
		32.883190, 36.727840, 52.292477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.797836, 35.978901, 52.052311>,  <33.278820, 36.171146, 52.445992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.797836, 35.978901, 52.052311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.788956, 36.369362, 51.965935>,  <32.783627, 36.603638, 51.914108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.788956, 36.369362, 51.965935>,  <32.797836, 35.978901, 52.052311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.788956, 36.369362, 51.965935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194582, -0.216082, -0.956790,
		-0.980635, 0.020780, 0.194738,
		-0.022197, 0.976154, -0.215941,
		32.782295, 36.662209, 51.901154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.074986, 36.157051, 51.660397>,  <32.797836, 35.978901, 52.052311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.074986, 36.157051, 51.660397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.355728, 36.432762, 51.588512>,  <32.524174, 36.598186, 51.545380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.355728, 36.432762, 51.588512>,  <32.074986, 36.157051, 51.660397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.355728, 36.432762, 51.588512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177499, -0.075099, -0.981251,
		-0.689846, 0.720599, 0.069637,
		0.701859, 0.689273, -0.179712,
		32.566284, 36.639545, 51.534599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.834908, 36.574772, 51.170063>,  <32.074986, 36.157051, 51.660397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.834908, 36.574772, 51.170063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.227772, 36.627831, 51.116756>,  <32.463490, 36.659668, 51.084774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.227772, 36.627831, 51.116756>,  <31.834908, 36.574772, 51.170063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.227772, 36.627831, 51.116756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142963, 0.066441, -0.987495,
		-0.122138, 0.988933, 0.084220,
		0.982163, 0.132651, -0.133266,
		32.522419, 36.667625, 51.076778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.866207, 37.059891, 50.738354>,  <31.834908, 36.574772, 51.170063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.866207, 37.059891, 50.738354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.245098, 36.932159, 50.727112>,  <32.472431, 36.855522, 50.720367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.245098, 36.932159, 50.727112>,  <31.866207, 37.059891, 50.738354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.245098, 36.932159, 50.727112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024765, 0.014518, -0.999588,
		0.319603, 0.947534, 0.005844,
		0.947228, -0.319326, -0.028106,
		32.529266, 36.836361, 50.718681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.215298, 37.424660, 50.155331>,  <31.866207, 37.059891, 50.738354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.215298, 37.424660, 50.155331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.428841, 37.090782, 50.209408>,  <32.556969, 36.890453, 50.241856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.428841, 37.090782, 50.209408>,  <32.215298, 37.424660, 50.155331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.428841, 37.090782, 50.209408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073098, -0.204840, -0.976062,
		0.842408, 0.511197, -0.170370,
		0.533859, -0.834696, 0.135192,
		32.588997, 36.840374, 50.249966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.560627, 37.417538, 49.523605>,  <32.215298, 37.424660, 50.155331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.560627, 37.417538, 49.523605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.603848, 37.055515, 49.688137>,  <32.629780, 36.838303, 49.786858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.603848, 37.055515, 49.688137>,  <32.560627, 37.417538, 49.523605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.603848, 37.055515, 49.688137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022641, -0.411408, -0.911170,
		0.993887, 0.107768, -0.023963,
		0.108053, -0.905058, 0.411334,
		32.636265, 36.783997, 49.811539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.137722, 37.081806, 49.094139>,  <32.560627, 37.417538, 49.523605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.137722, 37.081806, 49.094139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.890934, 36.816311, 49.263275>,  <32.742859, 36.657013, 49.364758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.890934, 36.816311, 49.263275>,  <33.137722, 37.081806, 49.094139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.890934, 36.816311, 49.263275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049377, -0.568886, -0.820933,
		0.785433, -0.485615, 0.383761,
		-0.616973, -0.663737, 0.422844,
		32.705841, 36.617191, 49.390129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.457378, 36.543770, 48.858498>,  <33.137722, 37.081806, 49.094139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.457378, 36.543770, 48.858498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.098152, 36.409927, 48.972706>,  <32.882618, 36.329624, 49.041229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.098152, 36.409927, 48.972706>,  <33.457378, 36.543770, 48.858498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.098152, 36.409927, 48.972706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052948, -0.562157, -0.825334,
		0.436665, -0.756320, 0.487137,
		-0.898064, -0.334602, 0.285520,
		32.828732, 36.309547, 49.058361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.487053, 35.801186, 48.910889>,  <33.457378, 36.543770, 48.858498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.487053, 35.801186, 48.910889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.106869, 35.915066, 48.860958>,  <32.878757, 35.983395, 48.831001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.106869, 35.915066, 48.860958>,  <33.487053, 35.801186, 48.910889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.106869, 35.915066, 48.860958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118892, -0.703944, -0.700234,
		-0.287225, -0.650700, 0.702916,
		-0.950456, 0.284696, -0.124828,
		32.821732, 36.000473, 48.823509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.029099, 35.161438, 48.968410>,  <33.487053, 35.801186, 48.910889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.029099, 35.161438, 48.968410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.883839, 35.446400, 48.728210>,  <32.796684, 35.617378, 48.584091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.883839, 35.446400, 48.728210>,  <33.029099, 35.161438, 48.968410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.883839, 35.446400, 48.728210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086418, -0.667474, -0.739601,
		-0.927716, -0.216689, 0.303956,
		-0.363147, 0.712407, -0.600501,
		32.774895, 35.660122, 48.548061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.594849, 34.774860, 48.645226>,  <33.029099, 35.161438, 48.968410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.594849, 34.774860, 48.645226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.597862, 35.098213, 48.409779>,  <32.599670, 35.292225, 48.268513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.597862, 35.098213, 48.409779>,  <32.594849, 34.774860, 48.645226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.597862, 35.098213, 48.409779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287413, -0.562043, -0.775565,
		-0.957777, 0.175021, 0.228102,
		0.007537, 0.808378, -0.588616,
		32.600124, 35.340725, 48.233192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.923622, 34.686836, 48.170986>,  <32.594849, 34.774860, 48.645226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.923622, 34.686836, 48.170986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.173466, 34.949600, 48.002068>,  <32.323372, 35.107258, 47.900715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.173466, 34.949600, 48.002068>,  <31.923622, 34.686836, 48.170986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.173466, 34.949600, 48.002068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334157, -0.263939, -0.904807,
		-0.705836, 0.706264, 0.054651,
		0.624608, 0.656907, -0.422300,
		32.360847, 35.146671, 47.875378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.569048, 35.055122, 47.653244>,  <31.923622, 34.686836, 48.170986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.569048, 35.055122, 47.653244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.947681, 35.123878, 47.544113>,  <32.174862, 35.165131, 47.478634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.947681, 35.123878, 47.544113>,  <31.569048, 35.055122, 47.653244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.947681, 35.123878, 47.544113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249435, -0.145883, -0.957340,
		-0.204356, 0.974255, -0.095215,
		0.946584, 0.171888, -0.272825,
		32.231655, 35.175446, 47.462265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.498796, 35.534733, 47.046970>,  <31.569048, 35.055122, 47.653244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.498796, 35.534733, 47.046970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.869888, 35.386566, 47.028587>,  <32.092545, 35.297668, 47.017555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.869888, 35.386566, 47.028587>,  <31.498796, 35.534733, 47.046970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.869888, 35.386566, 47.028587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050839, -0.003412, -0.998701,
		0.369777, 0.928860, -0.021997,
		0.927729, -0.370415, -0.045961,
		32.148209, 35.275440, 47.014797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.845930, 35.890484, 46.456913>,  <31.498796, 35.534733, 47.046970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.845930, 35.890484, 46.456913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.063446, 35.560188, 46.516842>,  <32.193954, 35.362011, 46.552799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.063446, 35.560188, 46.516842>,  <31.845930, 35.890484, 46.456913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.063446, 35.560188, 46.516842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034219, -0.200199, -0.979158,
		0.838522, 0.527331, -0.137122,
		0.543792, -0.825737, 0.149827,
		32.226585, 35.312466, 46.561790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.325230, 36.019867, 46.050892>,  <31.845930, 35.890484, 46.456913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.325230, 36.019867, 46.050892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.303902, 35.624386, 46.106926>,  <32.291107, 35.387096, 46.140545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.303902, 35.624386, 46.106926>,  <32.325230, 36.019867, 46.050892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.303902, 35.624386, 46.106926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005340, -0.139997, -0.990138,
		0.998563, -0.053539, 0.002185,
		-0.053317, -0.988703, 0.140082,
		32.287907, 35.327774, 46.148949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.703236, 35.765808, 45.496136>,  <32.325230, 36.019867, 46.050892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.703236, 35.765808, 45.496136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.497910, 35.445507, 45.619621>,  <32.374714, 35.253326, 45.693714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.497910, 35.445507, 45.619621>,  <32.703236, 35.765808, 45.496136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.497910, 35.445507, 45.619621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008522, -0.364460, -0.931180,
		0.858160, -0.475355, 0.193905,
		-0.513312, -0.800754, 0.308714,
		32.343918, 35.205280, 45.712234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.938354, 35.152962, 45.160446>,  <32.703236, 35.765808, 45.496136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.938354, 35.152962, 45.160446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.570015, 35.043102, 45.271156>,  <32.349010, 34.977184, 45.337582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.570015, 35.043102, 45.271156>,  <32.938354, 35.152962, 45.160446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.570015, 35.043102, 45.271156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151579, -0.401835, -0.903080,
		0.359249, -0.873553, 0.328398,
		-0.920850, -0.274652, 0.276771,
		32.293758, 34.960705, 45.354187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.797710, 34.454559, 44.972103>,  <32.938354, 35.152962, 45.160446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.797710, 34.454559, 44.972103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.425858, 34.597763, 45.006985>,  <32.202744, 34.683685, 45.027916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.425858, 34.597763, 45.006985>,  <32.797710, 34.454559, 44.972103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.425858, 34.597763, 45.006985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275246, -0.517345, -0.810304,
		-0.244982, -0.777292, 0.579484,
		-0.929636, 0.358011, 0.087207,
		32.146965, 34.705166, 45.033146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.366730, 33.847290, 44.857372>,  <32.797710, 34.454559, 44.972103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.366730, 33.847290, 44.857372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.149319, 34.175159, 44.785030>,  <32.018871, 34.371880, 44.741627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.149319, 34.175159, 44.785030>,  <32.366730, 33.847290, 44.857372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.149319, 34.175159, 44.785030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268443, -0.373883, -0.887778,
		-0.795307, -0.433987, 0.423253,
		-0.543531, 0.819675, -0.180852,
		31.986259, 34.421062, 44.730774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.809589, 33.573112, 44.605370>,  <32.366730, 33.847290, 44.857372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.809589, 33.573112, 44.605370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.767456, 33.952423, 44.485588>,  <31.742176, 34.180008, 44.413719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.767456, 33.952423, 44.485588>,  <31.809589, 33.573112, 44.605370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.767456, 33.952423, 44.485588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399216, -0.316125, -0.860635,
		-0.910786, 0.028895, 0.411866,
		-0.105333, 0.948277, -0.299458,
		31.735857, 34.236908, 44.395752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.074909, 33.587093, 44.288807>,  <31.809589, 33.573112, 44.605370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.074909, 33.587093, 44.288807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.267458, 33.908951, 44.149769>,  <31.382988, 34.102066, 44.066345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.267458, 33.908951, 44.149769>,  <31.074909, 33.587093, 44.288807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.267458, 33.908951, 44.149769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307110, -0.216590, -0.926699,
		-0.820952, 0.552838, 0.142855,
		0.481374, 0.804648, -0.347593,
		31.411871, 34.150345, 44.045490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.616882, 33.905235, 43.673691>,  <31.074909, 33.587093, 44.288807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.616882, 33.905235, 43.673691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.972172, 34.080730, 43.619183>,  <31.185345, 34.186028, 43.586479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.972172, 34.080730, 43.619183>,  <30.616882, 33.905235, 43.673691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.972172, 34.080730, 43.619183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113339, -0.078179, -0.990476,
		-0.445211, 0.895208, -0.019715,
		0.888224, 0.438736, -0.136268,
		31.238640, 34.212353, 43.578300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.423508, 34.348484, 43.238968>,  <30.616882, 33.905235, 43.673691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.423508, 34.348484, 43.238968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.818207, 34.285229, 43.224411>,  <31.055025, 34.247276, 43.215675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.818207, 34.285229, 43.224411>,  <30.423508, 34.348484, 43.238968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.818207, 34.285229, 43.224411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075320, -0.247674, -0.965911,
		0.143735, 0.955850, -0.256303,
		0.986746, -0.158140, -0.036396,
		31.114231, 34.237785, 43.213493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.590157, 34.726131, 42.602406>,  <30.423508, 34.348484, 43.238968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.590157, 34.726131, 42.602406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.887051, 34.471004, 42.684647>,  <31.065187, 34.317928, 42.733990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.887051, 34.471004, 42.684647>,  <30.590157, 34.726131, 42.602406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.887051, 34.471004, 42.684647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105991, -0.191211, -0.975810,
		0.661704, 0.746073, -0.074320,
		0.742236, -0.637820, 0.205602,
		31.109722, 34.279659, 42.746326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.121572, 34.898434, 42.189793>,  <30.590157, 34.726131, 42.602406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.121572, 34.898434, 42.189793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.203148, 34.513832, 42.263462>,  <31.252092, 34.283070, 42.307663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.203148, 34.513832, 42.263462>,  <31.121572, 34.898434, 42.189793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.203148, 34.513832, 42.263462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148829, -0.155495, -0.976561,
		0.967605, 0.226569, 0.111388,
		0.203938, -0.961503, 0.184178,
		31.264330, 34.225380, 42.318714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.623320, 34.826344, 41.676369>,  <31.121572, 34.898434, 42.189793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.623320, 34.826344, 41.676369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.528723, 34.460888, 41.808636>,  <31.471964, 34.241615, 41.887997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.528723, 34.460888, 41.808636>,  <31.623320, 34.826344, 41.676369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.528723, 34.460888, 41.808636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222138, -0.382147, -0.897005,
		0.945900, -0.138681, 0.293328,
		-0.236492, -0.913637, 0.330666,
		31.457775, 34.186798, 41.907837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.234756, 34.383213, 41.482761>,  <31.623320, 34.826344, 41.676369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.234756, 34.383213, 41.482761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.897593, 34.171864, 41.523426>,  <31.695295, 34.045055, 41.547825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.897593, 34.171864, 41.523426>,  <32.234756, 34.383213, 41.482761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.897593, 34.171864, 41.523426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147241, -0.408237, -0.900923,
		0.517523, -0.744425, 0.421903,
		-0.842906, -0.528370, 0.101663,
		31.644720, 34.013351, 41.553925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.466789, 33.710907, 41.309875>,  <32.234756, 34.383213, 41.482761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.466789, 33.710907, 41.309875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.070965, 33.693954, 41.254791>,  <31.833469, 33.683784, 41.221741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.070965, 33.693954, 41.254791>,  <32.466789, 33.710907, 41.309875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.070965, 33.693954, 41.254791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133609, -0.627679, -0.766921,
		-0.053938, -0.777318, 0.626792,
		-0.989565, -0.042379, -0.137712,
		31.774096, 33.681240, 41.213478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.307011, 33.086613, 41.215508>,  <32.466789, 33.710907, 41.309875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.307011, 33.086613, 41.215508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.996452, 33.271564, 41.044201>,  <31.810118, 33.382538, 40.941418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.996452, 33.271564, 41.044201>,  <32.307011, 33.086613, 41.215508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.996452, 33.271564, 41.044201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061163, -0.621034, -0.781394,
		-0.627264, -0.632869, 0.453891,
		-0.776401, 0.462379, -0.428260,
		31.763533, 33.410278, 40.915722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.885565, 32.472382, 41.029099>,  <32.307011, 33.086613, 41.215508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.885565, 32.472382, 41.029099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.786669, 32.801434, 40.824295>,  <31.727331, 32.998863, 40.701412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.786669, 32.801434, 40.824295>,  <31.885565, 32.472382, 41.029099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.786669, 32.801434, 40.824295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002638, -0.527839, -0.849340,
		-0.968951, -0.211341, 0.128332,
		-0.247239, 0.822630, -0.512008,
		31.712498, 33.048222, 40.670692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.431562, 32.150642, 40.644020>,  <31.885565, 32.472382, 41.029099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.431562, 32.150642, 40.644020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.539333, 32.485043, 40.452808>,  <31.603996, 32.685680, 40.338081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.539333, 32.485043, 40.452808>,  <31.431562, 32.150642, 40.644020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.539333, 32.485043, 40.452808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181335, -0.443467, -0.877756,
		-0.945794, 0.323177, 0.032113,
		0.269430, 0.835999, -0.478031,
		31.620163, 32.735844, 40.309399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.171808, 32.079624, 40.009216>,  <31.431562, 32.150642, 40.644020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.171808, 32.079624, 40.009216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.398104, 32.396603, 39.918026>,  <31.533882, 32.586788, 39.863312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.398104, 32.396603, 39.918026>,  <31.171808, 32.079624, 40.009216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.398104, 32.396603, 39.918026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012857, -0.284919, -0.958465,
		-0.824484, 0.539311, -0.171378,
		0.565740, 0.792443, -0.227977,
		31.567825, 32.634335, 39.849632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.822001, 32.349934, 39.475601>,  <31.171808, 32.079624, 40.009216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.822001, 32.349934, 39.475601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.202261, 32.466694, 39.433544>,  <31.430418, 32.536751, 39.408310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.202261, 32.466694, 39.433544>,  <30.822001, 32.349934, 39.475601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.202261, 32.466694, 39.433544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001361, -0.334950, -0.942235,
		-0.310257, 0.895880, -0.318024,
		0.950652, 0.291902, -0.105140,
		31.487457, 32.554264, 39.402000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.860077, 32.648155, 38.844563>,  <30.822001, 32.349934, 39.475601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.860077, 32.648155, 38.844563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.242552, 32.571075, 38.932720>,  <31.472036, 32.524826, 38.985615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.242552, 32.571075, 38.932720>,  <30.860077, 32.648155, 38.844563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.242552, 32.571075, 38.932720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196572, -0.135288, -0.971111,
		0.216953, 0.971886, -0.091480,
		0.956186, -0.192703, 0.220397,
		31.529408, 32.513264, 38.998840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.237810, 33.223557, 38.524067>,  <30.860077, 32.648155, 38.844563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.237810, 33.223557, 38.524067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.486654, 32.912971, 38.564232>,  <31.635960, 32.726620, 38.588329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.486654, 32.912971, 38.564232>,  <31.237810, 33.223557, 38.524067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.486654, 32.912971, 38.564232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271732, 0.093855, -0.957785,
		0.734263, 0.623131, 0.269379,
		0.622109, -0.776465, 0.100410,
		31.673286, 32.680031, 38.594357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.836847, 33.449051, 38.259781>,  <31.237810, 33.223557, 38.524067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.836847, 33.449051, 38.259781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.861446, 33.049870, 38.266708>,  <31.876205, 32.810360, 38.270863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.861446, 33.049870, 38.266708>,  <31.836847, 33.449051, 38.259781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.861446, 33.049870, 38.266708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403337, 0.008979, -0.915007,
		0.912983, 0.063254, 0.403065,
		0.061497, -0.997957, 0.017315,
		31.879896, 32.750481, 38.271904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.515297, 33.347027, 37.911758>,  <31.836847, 33.449051, 38.259781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.515297, 33.347027, 37.911758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.312634, 33.002239, 37.904793>,  <32.191036, 32.795364, 37.900616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.312634, 33.002239, 37.904793>,  <32.515297, 33.347027, 37.911758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.312634, 33.002239, 37.904793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332292, -0.176606, -0.926495,
		0.795537, -0.475202, 0.375905,
		-0.506659, -0.861971, -0.017410,
		32.160637, 32.743649, 37.899570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.001839, 32.841938, 37.774918>,  <32.515297, 33.347027, 37.911758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.001839, 32.841938, 37.774918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.649929, 32.695194, 37.653980>,  <32.438782, 32.607147, 37.581417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.649929, 32.695194, 37.653980>,  <33.001839, 32.841938, 37.774918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.649929, 32.695194, 37.653980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389924, -0.193029, -0.900388,
		0.271954, -0.910030, 0.312869,
		-0.879773, -0.366859, -0.302347,
		32.385998, 32.585136, 37.563274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.033260, 32.085163, 37.595219>,  <33.001839, 32.841938, 37.774918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.033260, 32.085163, 37.595219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.758991, 32.300419, 37.399151>,  <32.594429, 32.429573, 37.281509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.758991, 32.300419, 37.399151>,  <33.033260, 32.085163, 37.595219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.758991, 32.300419, 37.399151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488515, -0.159024, -0.857942,
		-0.539642, -0.827718, -0.153852,
		-0.685668, 0.538140, -0.490168,
		32.553291, 32.461861, 37.252102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.990520, 31.499796, 37.293468>,  <33.033260, 32.085163, 37.595219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.990520, 31.499796, 37.293468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.213615, 31.167797, 37.291306>,  <33.347473, 30.968597, 37.290009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.213615, 31.167797, 37.291306>,  <32.990520, 31.499796, 37.293468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.213615, 31.167797, 37.291306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188748, 0.120488, 0.974606,
		-0.808270, -0.544597, 0.223862,
		0.557740, -0.829998, -0.005405,
		33.380936, 30.918798, 37.289684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.704304, 30.845518, 37.763264>,  <32.990520, 31.499796, 37.293468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.704304, 30.845518, 37.763264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.102230, 30.843910, 37.722603>,  <33.340984, 30.842945, 37.698204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.102230, 30.843910, 37.722603>,  <32.704304, 30.845518, 37.763264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.102230, 30.843910, 37.722603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101358, 0.124954, 0.986972,
		0.008732, -0.992155, 0.124713,
		0.994812, -0.004022, -0.101654,
		33.400673, 30.842705, 37.692108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.930828, 30.431458, 38.297840>,  <32.704304, 30.845518, 37.763264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.930828, 30.431458, 38.297840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.254559, 30.634838, 38.180218>,  <33.448795, 30.756866, 38.109646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.254559, 30.634838, 38.180218>,  <32.930828, 30.431458, 38.297840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.254559, 30.634838, 38.180218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374125, -0.060314, 0.925415,
		0.452792, -0.858976, -0.239038,
		0.809327, 0.508450, -0.294055,
		33.497356, 30.787373, 38.092003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.453953, 30.109610, 38.531372>,  <32.930828, 30.431458, 38.297840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.453953, 30.109610, 38.531372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.627327, 30.465490, 38.474014>,  <33.731354, 30.679018, 38.439598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.627327, 30.465490, 38.474014>,  <33.453953, 30.109610, 38.531372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.627327, 30.465490, 38.474014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253348, 0.032402, 0.966832,
		0.864839, -0.455391, -0.211360,
		0.433439, 0.889701, -0.143395,
		33.757359, 30.732401, 38.430996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.164909, 30.118256, 38.929672>,  <33.453953, 30.109610, 38.531372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.164909, 30.118256, 38.929672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.084621, 30.505037, 38.866798>,  <34.036449, 30.737106, 38.829075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.084621, 30.505037, 38.866798>,  <34.164909, 30.118256, 38.929672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.084621, 30.505037, 38.866798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254703, 0.206445, 0.944726,
		0.945959, 0.149588, -0.287724,
		-0.200718, 0.966956, -0.157188,
		34.024406, 30.795124, 38.819641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.760807, 30.484091, 39.222786>,  <34.164909, 30.118256, 38.929672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.760807, 30.484091, 39.222786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.476654, 30.762102, 39.178440>,  <34.306164, 30.928909, 39.151833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.476654, 30.762102, 39.178440>,  <34.760807, 30.484091, 39.222786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.476654, 30.762102, 39.178440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163894, 0.316552, 0.934309,
		0.684469, 0.645545, -0.338783,
		-0.710381, 0.695030, -0.110869,
		34.263538, 30.970612, 39.145180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.096214, 31.110115, 39.454937>,  <34.760807, 30.484091, 39.222786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.096214, 31.110115, 39.454937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.697876, 31.140612, 39.474884>,  <34.458874, 31.158911, 39.486855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.697876, 31.140612, 39.474884>,  <35.096214, 31.110115, 39.454937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.697876, 31.140612, 39.474884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061470, 0.158258, 0.985483,
		0.067243, 0.984450, -0.162286,
		-0.995841, 0.076243, 0.049872,
		34.399124, 31.163485, 39.489845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.052689, 31.818695, 39.596611>,  <35.096214, 31.110115, 39.454937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.052689, 31.818695, 39.596611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.690033, 31.707949, 39.723953>,  <34.472439, 31.641500, 39.800358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.690033, 31.707949, 39.723953>,  <35.052689, 31.818695, 39.596611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.690033, 31.707949, 39.723953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267814, 0.205385, 0.941325,
		-0.326004, 0.938703, -0.112062,
		-0.906640, -0.276864, 0.318354,
		34.418041, 31.624889, 39.819458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.742599, 32.352734, 39.989811>,  <35.052689, 31.818695, 39.596611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.742599, 32.352734, 39.989811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.544468, 32.025322, 40.106197>,  <34.425587, 31.828876, 40.176029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.544468, 32.025322, 40.106197>,  <34.742599, 32.352734, 39.989811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.544468, 32.025322, 40.106197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018380, 0.324996, 0.945537,
		-0.868509, 0.473703, -0.145936,
		-0.495332, -0.818525, 0.290969,
		34.395870, 31.779764, 40.193489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.181778, 32.543438, 40.468815>,  <34.742599, 32.352734, 39.989811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.181778, 32.543438, 40.468815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.301323, 32.169502, 40.545502>,  <34.373051, 31.945141, 40.591515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.301323, 32.169502, 40.545502>,  <34.181778, 32.543438, 40.468815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.301323, 32.169502, 40.545502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022037, 0.194081, 0.980738,
		-0.954041, -0.297331, 0.037402,
		0.298863, -0.934841, 0.191713,
		34.390984, 31.889050, 40.603016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.815159, 32.432457, 40.998909>,  <34.181778, 32.543438, 40.468815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.815159, 32.432457, 40.998909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.097122, 32.149109, 41.013428>,  <34.266300, 31.979101, 41.022141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.097122, 32.149109, 41.013428>,  <33.815159, 32.432457, 40.998909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.097122, 32.149109, 41.013428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034016, 0.017358, 0.999270,
		-0.708480, -0.705631, -0.011860,
		0.704911, -0.708367, 0.036301,
		34.308594, 31.936600, 41.024319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.508091, 32.009518, 41.528404>,  <33.815159, 32.432457, 40.998909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.508091, 32.009518, 41.528404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.891766, 31.899208, 41.503387>,  <34.121971, 31.833023, 41.488377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.891766, 31.899208, 41.503387>,  <33.508091, 32.009518, 41.528404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.891766, 31.899208, 41.503387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042568, -0.077831, 0.996058,
		-0.279552, -0.958067, -0.062915,
		0.959186, -0.275772, -0.062541,
		34.179523, 31.816477, 41.484627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.577694, 31.311312, 41.787014>,  <33.508091, 32.009518, 41.528404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.577694, 31.311312, 41.787014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.931522, 31.492964, 41.829536>,  <34.143818, 31.601955, 41.855049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.931522, 31.492964, 41.829536>,  <33.577694, 31.311312, 41.787014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.931522, 31.492964, 41.829536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032331, -0.167669, 0.985313,
		0.465285, -0.875015, -0.133633,
		0.884570, 0.454131, 0.106304,
		34.196892, 31.629204, 41.861427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.072399, 30.828495, 42.150043>,  <33.577694, 31.311312, 41.787014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.072399, 30.828495, 42.150043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.194931, 31.206699, 42.194168>,  <34.268452, 31.433622, 42.220642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.194931, 31.206699, 42.194168>,  <34.072399, 30.828495, 42.150043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.194931, 31.206699, 42.194168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051853, -0.099133, 0.993722,
		0.950511, -0.310129, 0.018660,
		0.306332, 0.945512, 0.110308,
		34.286831, 31.490353, 42.227261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.510006, 30.802233, 42.733742>,  <34.072399, 30.828495, 42.150043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.510006, 30.802233, 42.733742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.437569, 31.192968, 42.688152>,  <34.394104, 31.427410, 42.660797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.437569, 31.192968, 42.688152>,  <34.510006, 30.802233, 42.733742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.437569, 31.192968, 42.688152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014524, 0.113224, 0.993463,
		0.983358, 0.181568, -0.006317,
		-0.181096, 0.976838, -0.113977,
		34.383240, 31.486019, 42.653957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.940865, 31.129765, 43.169430>,  <34.510006, 30.802233, 42.733742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.940865, 31.129765, 43.169430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.671692, 31.420219, 43.113029>,  <34.510189, 31.594492, 43.079189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.671692, 31.420219, 43.113029>,  <34.940865, 31.129765, 43.169430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.671692, 31.420219, 43.113029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066485, 0.249216, 0.966163,
		0.736707, 0.640791, -0.215984,
		-0.672936, 0.726139, -0.140996,
		34.469810, 31.638062, 43.070732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.272846, 31.787842, 43.521221>,  <34.940865, 31.129765, 43.169430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.272846, 31.787842, 43.521221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.874180, 31.815746, 43.504322>,  <34.634979, 31.832489, 43.494183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.874180, 31.815746, 43.504322>,  <35.272846, 31.787842, 43.521221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.874180, 31.815746, 43.504322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008027, 0.431597, 0.902031,
		0.081158, 0.899365, -0.429600,
		-0.996669, 0.069759, -0.042247,
		34.575180, 31.836674, 43.491650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.061756, 32.531788, 43.707970>,  <35.272846, 31.787842, 43.521221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.061756, 32.531788, 43.707970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.752018, 32.283772, 43.758476>,  <34.566177, 32.134960, 43.788780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.752018, 32.283772, 43.758476>,  <35.061756, 32.531788, 43.707970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.752018, 32.283772, 43.758476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200174, 0.429339, 0.880681,
		-0.600270, 0.656672, -0.456571,
		-0.774342, -0.620040, 0.126271,
		34.519714, 32.097759, 43.796356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.599564, 33.012436, 43.919289>,  <35.061756, 32.531788, 43.707970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.599564, 33.012436, 43.919289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.446659, 32.656406, 44.018597>,  <34.354916, 32.442787, 44.078182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.446659, 32.656406, 44.018597>,  <34.599564, 33.012436, 43.919289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.446659, 32.656406, 44.018597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321246, 0.379922, 0.867445,
		-0.866416, 0.251837, -0.431164,
		-0.382263, -0.890077, 0.248269,
		34.331982, 32.389381, 44.093079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.932266, 33.172020, 44.082638>,  <34.599564, 33.012436, 43.919289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.932266, 33.172020, 44.082638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.993275, 32.822029, 44.266445>,  <34.029881, 32.612034, 44.376728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.993275, 32.822029, 44.266445>,  <33.932266, 33.172020, 44.082638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.993275, 32.822029, 44.266445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258631, 0.413419, 0.873038,
		-0.953859, -0.252004, -0.163239,
		0.152523, -0.874974, 0.459520,
		34.039032, 32.559536, 44.404301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.329044, 33.124573, 44.557087>,  <33.932266, 33.172020, 44.082638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.329044, 33.124573, 44.557087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.644623, 32.909924, 44.676815>,  <33.833969, 32.781132, 44.748653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.644623, 32.909924, 44.676815>,  <33.329044, 33.124573, 44.557087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.644623, 32.909924, 44.676815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040231, 0.440970, 0.896620,
		-0.613139, -0.719430, 0.326314,
		0.788950, -0.536625, 0.299320,
		33.881310, 32.748936, 44.766609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.098312, 32.901081, 45.271629>,  <33.329044, 33.124573, 44.557087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.098312, 32.901081, 45.271629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.493732, 32.879055, 45.215424>,  <33.730984, 32.865841, 45.181698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.493732, 32.879055, 45.215424>,  <33.098312, 32.901081, 45.271629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.493732, 32.879055, 45.215424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150919, 0.361888, 0.919924,
		0.000198, -0.930594, 0.366053,
		0.988546, -0.055062, -0.140516,
		33.790295, 32.862537, 45.173267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.477524, 32.870907, 45.925297>,  <33.098312, 32.901081, 45.271629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.477524, 32.870907, 45.925297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.771648, 32.987431, 45.680527>,  <33.948124, 33.057346, 45.533665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.771648, 32.987431, 45.680527>,  <33.477524, 32.870907, 45.925297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.771648, 32.987431, 45.680527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410655, 0.526761, 0.744234,
		0.539137, -0.798538, 0.267710,
		0.735318, 0.291307, -0.611920,
		33.992245, 33.074825, 45.496952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.050091, 32.938480, 46.379551>,  <33.477524, 32.870907, 45.925297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.050091, 32.938480, 46.379551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.176411, 33.152504, 46.066124>,  <34.252201, 33.280918, 45.878067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.176411, 33.152504, 46.066124>,  <34.050091, 32.938480, 46.379551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.176411, 33.152504, 46.066124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519468, 0.593571, 0.614676,
		0.793993, -0.601153, -0.090499,
		0.315797, 0.535060, -0.783571,
		34.271149, 33.313023, 45.831051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.826817, 32.997936, 46.301640>,  <34.050091, 32.938480, 46.379551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.826817, 32.997936, 46.301640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.683926, 33.320057, 46.112377>,  <34.598190, 33.513329, 45.998821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.683926, 33.320057, 46.112377>,  <34.826817, 32.997936, 46.301640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.683926, 33.320057, 46.112377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528369, 0.591966, 0.608607,
		0.770205, -0.032589, -0.636963,
		-0.357227, 0.805304, -0.473154,
		34.576759, 33.561649, 45.970432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.354183, 33.444889, 46.318668>,  <34.826817, 32.997936, 46.301640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.354183, 33.444889, 46.318668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.057880, 33.697166, 46.226151>,  <34.880100, 33.848534, 46.170639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.057880, 33.697166, 46.226151>,  <35.354183, 33.444889, 46.318668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.057880, 33.697166, 46.226151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427664, 0.708270, 0.561655,
		0.518055, 0.317133, -0.794384,
		-0.740758, 0.630698, -0.231297,
		34.835651, 33.886375, 46.156761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.672253, 34.115913, 46.264313>,  <35.354183, 33.444889, 46.318668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.672253, 34.115913, 46.264313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.282192, 34.178448, 46.327095>,  <35.048157, 34.215969, 46.364765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.282192, 34.178448, 46.327095>,  <35.672253, 34.115913, 46.264313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.282192, 34.178448, 46.327095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220745, 0.745263, 0.629170,
		-0.018613, 0.648185, -0.761256,
		-0.975154, 0.156332, 0.156955,
		34.989647, 34.225346, 46.374180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.631329, 34.852226, 46.355316>,  <35.672253, 34.115913, 46.264313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.631329, 34.852226, 46.355316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.306816, 34.687881, 46.521694>,  <35.112106, 34.589275, 46.621521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.306816, 34.687881, 46.521694>,  <35.631329, 34.852226, 46.355316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.306816, 34.687881, 46.521694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008385, 0.703194, 0.710949,
		-0.584593, 0.580269, -0.567045,
		-0.811284, -0.410861, 0.415947,
		35.063431, 34.564625, 46.646477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.176426, 35.450748, 46.474514>,  <35.631329, 34.852226, 46.355316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.176426, 35.450748, 46.474514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.087879, 35.151806, 46.725098>,  <35.034752, 34.972439, 46.875450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.087879, 35.151806, 46.725098>,  <35.176426, 35.450748, 46.474514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.087879, 35.151806, 46.725098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210885, 0.590512, 0.778989,
		-0.952115, 0.304555, 0.026885,
		-0.221369, -0.747357, 0.626461,
		35.021469, 34.927597, 46.913036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.689705, 35.705822, 46.852654>,  <35.176426, 35.450748, 46.474514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.689705, 35.705822, 46.852654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.816113, 35.392200, 47.066345>,  <34.891956, 35.204029, 47.194561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.816113, 35.392200, 47.066345>,  <34.689705, 35.705822, 46.852654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.816113, 35.392200, 47.066345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116309, 0.590850, 0.798354,
		-0.941597, -0.190159, 0.277911,
		0.316018, -0.784051, 0.534225,
		34.910919, 35.156986, 47.226612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.286003, 35.690758, 47.396645>,  <34.689705, 35.705822, 46.852654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.286003, 35.690758, 47.396645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.616909, 35.484970, 47.486946>,  <34.815453, 35.361500, 47.541126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.616909, 35.484970, 47.486946>,  <34.286003, 35.690758, 47.396645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.616909, 35.484970, 47.486946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111524, 0.544201, 0.831509,
		-0.550636, -0.662699, 0.507572,
		0.827262, -0.514465, 0.225750,
		34.865089, 35.330631, 47.554672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.219162, 35.658466, 48.110340>,  <34.286003, 35.690758, 47.396645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.219162, 35.658466, 48.110340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.606377, 35.574402, 48.055576>,  <34.838703, 35.523964, 48.022720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.606377, 35.574402, 48.055576>,  <34.219162, 35.658466, 48.110340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.606377, 35.574402, 48.055576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203059, 0.336240, 0.919625,
		-0.147239, -0.918027, 0.368167,
		0.968033, -0.210164, -0.136906,
		34.896786, 35.511353, 48.014503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.509163, 35.418293, 48.769012>,  <34.219162, 35.658466, 48.110340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.509163, 35.418293, 48.769012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.816521, 35.565483, 48.559566>,  <35.000935, 35.653797, 48.433899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.816521, 35.565483, 48.559566>,  <34.509163, 35.418293, 48.769012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.816521, 35.565483, 48.559566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348623, 0.445457, 0.824639,
		0.536695, -0.816188, 0.214000,
		0.768389, 0.367974, -0.523617,
		35.047039, 35.675873, 48.402481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.043564, 35.397896, 49.218369>,  <34.509163, 35.418293, 48.769012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.043564, 35.397896, 49.218369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.166786, 35.668804, 48.951115>,  <35.240719, 35.831348, 48.790764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.166786, 35.668804, 48.951115>,  <35.043564, 35.397896, 49.218369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.166786, 35.668804, 48.951115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488317, 0.490157, 0.722007,
		0.816485, -0.548681, -0.179727,
		0.308057, 0.677271, -0.668136,
		35.259205, 35.871986, 48.750675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.746204, 35.498482, 49.309486>,  <35.043564, 35.397896, 49.218369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.746204, 35.498482, 49.309486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.621254, 35.826237, 49.117226>,  <35.546284, 36.022892, 49.001869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.621254, 35.826237, 49.117226>,  <35.746204, 35.498482, 49.309486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.621254, 35.826237, 49.117226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515477, 0.571202, 0.638758,
		0.797939, -0.048233, -0.600805,
		-0.312372, 0.819391, -0.480647,
		35.527542, 36.072056, 48.973030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.343689, 35.860725, 49.375069>,  <35.746204, 35.498482, 49.309486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.343689, 35.860725, 49.375069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.058910, 36.117760, 49.261784>,  <35.888042, 36.271980, 49.193813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.058910, 36.117760, 49.261784>,  <36.343689, 35.860725, 49.375069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.058910, 36.117760, 49.261784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363489, 0.682297, 0.634309,
		0.600834, 0.348651, -0.719334,
		-0.711951, 0.642584, -0.283217,
		35.845325, 36.310535, 49.176819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.594646, 36.533867, 49.050999>,  <36.343689, 35.860725, 49.375069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.594646, 36.533867, 49.050999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.241482, 36.603394, 49.225471>,  <36.029583, 36.645111, 49.330154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.241482, 36.603394, 49.225471>,  <36.594646, 36.533867, 49.050999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.241482, 36.603394, 49.225471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411330, 0.734320, 0.539983,
		-0.226437, 0.656172, -0.719836,
		-0.882912, 0.173818, 0.436180,
		35.976608, 36.655540, 49.356327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.624699, 37.314339, 49.112701>,  <36.594646, 36.533867, 49.050999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.624699, 37.314339, 49.112701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.333683, 37.170654, 49.346508>,  <36.159073, 37.084442, 49.486790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.333683, 37.170654, 49.346508>,  <36.624699, 37.314339, 49.112701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.333683, 37.170654, 49.346508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293573, 0.607035, 0.738460,
		-0.620084, 0.708854, -0.336185,
		-0.727537, -0.359212, 0.584514,
		36.115421, 37.062889, 49.521862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.845867, 37.723625, 49.691784>,  <36.624699, 37.314339, 49.112701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.845867, 37.723625, 49.691784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.218609, 37.868126, 49.678280>,  <37.442253, 37.954826, 49.670177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.218609, 37.868126, 49.678280>,  <36.845867, 37.723625, 49.691784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.218609, 37.868126, 49.678280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095996, -0.335205, -0.937242,
		-0.349895, 0.870135, -0.347042,
		0.931857, 0.361251, -0.033757,
		37.498165, 37.976501, 49.668152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.919861, 38.110950, 49.124851>,  <36.845867, 37.723625, 49.691784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.919861, 38.110950, 49.124851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.298229, 38.003300, 49.197304>,  <37.525249, 37.938709, 49.240776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.298229, 38.003300, 49.197304>,  <36.919861, 38.110950, 49.124851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.298229, 38.003300, 49.197304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092429, -0.311614, -0.945703,
		0.310958, 0.911299, -0.269886,
		0.945918, -0.269129, 0.181130,
		37.582005, 37.922562, 49.251644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.305882, 38.143394, 48.439697>,  <36.919861, 38.110950, 49.124851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.305882, 38.143394, 48.439697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.574364, 37.949261, 48.663815>,  <37.735455, 37.832779, 48.798286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.574364, 37.949261, 48.663815>,  <37.305882, 38.143394, 48.439697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.574364, 37.949261, 48.663815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274847, -0.539038, -0.796177,
		0.688435, 0.688394, -0.228412,
		0.671206, -0.485338, 0.560295,
		37.775726, 37.803658, 48.831902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.935543, 38.097820, 48.031948>,  <37.305882, 38.143394, 48.439697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.935543, 38.097820, 48.031948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.939259, 37.811386, 48.311127>,  <37.941486, 37.639526, 48.478634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.939259, 37.811386, 48.311127>,  <37.935543, 38.097820, 48.031948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.939259, 37.811386, 48.311127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328351, -0.657094, -0.678538,
		0.944510, 0.235474, 0.229025,
		0.009288, -0.716087, 0.697950,
		37.942043, 37.596561, 48.520512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.513027, 37.696327, 47.856239>,  <37.935543, 38.097820, 48.031948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.513027, 37.696327, 47.856239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.279510, 37.460743, 48.079777>,  <38.139400, 37.319393, 48.213902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.279510, 37.460743, 48.079777>,  <38.513027, 37.696327, 47.856239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.279510, 37.460743, 48.079777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256182, -0.786777, -0.561562,
		0.770428, -0.184668, 0.610196,
		-0.583791, -0.588964, 0.558846,
		38.104374, 37.284054, 48.247429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.929852, 37.174801, 47.951302>,  <38.513027, 37.696327, 47.856239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.929852, 37.174801, 47.951302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.572281, 37.027592, 48.053638>,  <38.357738, 36.939266, 48.115040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.572281, 37.027592, 48.053638>,  <38.929852, 37.174801, 47.951302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.572281, 37.027592, 48.053638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143649, -0.775935, -0.614239,
		0.424568, -0.512334, 0.746496,
		-0.893928, -0.368020, 0.255840,
		38.304104, 36.917187, 48.130390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.977402, 36.477440, 48.108963>,  <38.929852, 37.174801, 47.951302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.977402, 36.477440, 48.108963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.581505, 36.473835, 48.051933>,  <38.343967, 36.471672, 48.017715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.581505, 36.473835, 48.051933>,  <38.977402, 36.477440, 48.108963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.581505, 36.473835, 48.051933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089508, -0.816981, -0.569675,
		-0.111347, -0.576594, 0.809408,
		-0.989743, -0.009017, -0.142578,
		38.284580, 36.471130, 48.009159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.804214, 35.733650, 48.125549>,  <38.977402, 36.477440, 48.108963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.804214, 35.733650, 48.125549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.499378, 35.919804, 47.945488>,  <38.316475, 36.031494, 47.837452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.499378, 35.919804, 47.945488>,  <38.804214, 35.733650, 48.125549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.499378, 35.919804, 47.945488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018442, -0.679359, -0.733574,
		-0.647205, -0.567353, 0.509152,
		-0.762093, 0.465383, -0.450148,
		38.270752, 36.059418, 47.810444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.407463, 35.187683, 47.964664>,  <38.804214, 35.733650, 48.125549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.407463, 35.187683, 47.964664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.296272, 35.488815, 47.726009>,  <38.229561, 35.669495, 47.582817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.296272, 35.488815, 47.726009>,  <38.407463, 35.187683, 47.964664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.296272, 35.488815, 47.726009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031036, -0.627831, -0.777731,
		-0.960087, -0.197670, 0.197885,
		-0.277972, 0.752831, -0.596637,
		38.212879, 35.714664, 47.547020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.729504, 34.924309, 47.666206>,  <38.407463, 35.187683, 47.964664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.729504, 34.924309, 47.666206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.883022, 35.207653, 47.429253>,  <37.975132, 35.377659, 47.287079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.883022, 35.207653, 47.429253>,  <37.729504, 34.924309, 47.666206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.883022, 35.207653, 47.429253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229973, -0.547978, -0.804259,
		-0.894323, 0.444903, -0.047407,
		0.383795, 0.708365, -0.592385,
		37.998161, 35.420162, 47.251537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.207764, 35.135296, 47.181911>,  <37.729504, 34.924309, 47.666206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.207764, 35.135296, 47.181911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.541805, 35.246376, 46.991970>,  <37.742229, 35.313026, 46.878006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.541805, 35.246376, 46.991970>,  <37.207764, 35.135296, 47.181911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.541805, 35.246376, 46.991970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340578, -0.416877, -0.842745,
		-0.431990, 0.865503, -0.253554,
		0.835099, 0.277702, -0.474858,
		37.792336, 35.329685, 46.849514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.992100, 35.284023, 46.498768>,  <37.207764, 35.135296, 47.181911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.992100, 35.284023, 46.498768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.391083, 35.273651, 46.472198>,  <37.630470, 35.267429, 46.456257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.391083, 35.273651, 46.472198>,  <36.992100, 35.284023, 46.498768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.391083, 35.273651, 46.472198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071280, -0.385540, -0.919934,
		-0.001755, 0.922327, -0.386407,
		0.997455, -0.025929, -0.066420,
		37.690319, 35.265873, 46.452274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.225185, 35.691021, 45.928566>,  <36.992100, 35.284023, 46.498768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.225185, 35.691021, 45.928566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.509262, 35.416473, 45.991222>,  <37.679707, 35.251747, 46.028816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.509262, 35.416473, 45.991222>,  <37.225185, 35.691021, 45.928566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.509262, 35.416473, 45.991222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033523, -0.255217, -0.966302,
		0.703214, 0.681004, -0.204261,
		0.710187, -0.686365, 0.156643,
		37.722317, 35.210564, 46.038216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.780430, 35.700336, 45.355537>,  <37.225185, 35.691021, 45.928566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.780430, 35.700336, 45.355537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.801651, 35.347561, 45.542881>,  <37.814384, 35.135895, 45.655289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.801651, 35.347561, 45.542881>,  <37.780430, 35.700336, 45.355537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.801651, 35.347561, 45.542881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108319, -0.461172, -0.880674,
		0.992699, 0.097454, 0.071065,
		0.053052, -0.881943, 0.468361,
		37.817566, 35.082977, 45.683388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.162247, 35.309891, 44.804115>,  <37.780430, 35.700336, 45.355537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.162247, 35.309891, 44.804115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.972244, 35.058945, 45.050949>,  <37.858242, 34.908379, 45.199047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.972244, 35.058945, 45.050949>,  <38.162247, 35.309891, 44.804115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.972244, 35.058945, 45.050949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049835, -0.680939, -0.730643,
		0.878571, -0.377811, 0.292184,
		-0.475005, -0.627360, 0.617081,
		37.829742, 34.870735, 45.236073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.333759, 34.724888, 44.476952>,  <38.162247, 35.309891, 44.804115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.333759, 34.724888, 44.476952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.054657, 34.579922, 44.724110>,  <37.887196, 34.492943, 44.872406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.054657, 34.579922, 44.724110>,  <38.333759, 34.724888, 44.476952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.054657, 34.579922, 44.724110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249097, -0.685994, -0.683639,
		0.671634, -0.630927, 0.388378,
		-0.697752, -0.362412, 0.617900,
		37.845333, 34.471199, 44.909481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.265812, 34.056297, 44.499210>,  <38.333759, 34.724888, 44.476952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.265812, 34.056297, 44.499210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.894238, 34.133999, 44.625278>,  <37.671291, 34.180622, 44.700920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.894238, 34.133999, 44.625278>,  <38.265812, 34.056297, 44.499210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.894238, 34.133999, 44.625278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367399, -0.588775, -0.719973,
		0.045707, -0.784607, 0.618307,
		-0.928939, 0.194258, 0.315175,
		37.615555, 34.192276, 44.719830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.964462, 33.390034, 44.537281>,  <38.265812, 34.056297, 44.499210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.964462, 33.390034, 44.537281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.635178, 33.616253, 44.557152>,  <37.437607, 33.751984, 44.569077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.635178, 33.616253, 44.557152>,  <37.964462, 33.390034, 44.537281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.635178, 33.616253, 44.557152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472841, -0.634566, -0.611349,
		-0.314224, -0.526763, 0.789800,
		-0.823216, 0.565550, 0.049679,
		37.388214, 33.785919, 44.572056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.387859, 32.955360, 44.452713>,  <37.964462, 33.390034, 44.537281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.387859, 32.955360, 44.452713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.202572, 33.300213, 44.370579>,  <37.091400, 33.507126, 44.321297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.202572, 33.300213, 44.370579>,  <37.387859, 32.955360, 44.452713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.202572, 33.300213, 44.370579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472419, -0.436231, -0.765848,
		-0.749836, -0.257746, 0.609355,
		-0.463213, 0.862131, -0.205337,
		37.063606, 33.558853, 44.308979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.689884, 32.829121, 44.300056>,  <37.387859, 32.955360, 44.452713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.689884, 32.829121, 44.300056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.729191, 33.193653, 44.140144>,  <36.752773, 33.412373, 44.044197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.729191, 33.193653, 44.140144>,  <36.689884, 32.829121, 44.300056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.729191, 33.193653, 44.140144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537711, -0.289409, -0.791903,
		-0.837384, 0.292783, 0.461592,
		0.098267, 0.911329, -0.399779,
		36.758671, 33.467052, 44.020210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.001858, 33.144466, 43.953747>,  <36.689884, 32.829121, 44.300056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.001858, 33.144466, 43.953747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.303867, 33.337315, 43.775978>,  <36.485073, 33.453022, 43.669315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.303867, 33.337315, 43.775978>,  <36.001858, 33.144466, 43.953747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.303867, 33.337315, 43.775978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453700, -0.105214, -0.884922,
		-0.473394, 0.869767, 0.139297,
		0.755020, 0.482116, -0.444421,
		36.530373, 33.481949, 43.642651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.717842, 33.532261, 43.456345>,  <36.001858, 33.144466, 43.953747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.717842, 33.532261, 43.456345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.094715, 33.501862, 43.325798>,  <36.320839, 33.483624, 43.247471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.094715, 33.501862, 43.325798>,  <35.717842, 33.532261, 43.456345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.094715, 33.501862, 43.325798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333150, -0.107573, -0.936717,
		0.036076, 0.991288, -0.126671,
		0.942183, -0.075994, -0.326367,
		36.377369, 33.479065, 43.227886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.655384, 33.679264, 42.790459>,  <35.717842, 33.532261, 43.456345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.655384, 33.679264, 42.790459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.034683, 33.552502, 42.798359>,  <36.262264, 33.476444, 42.803101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.034683, 33.552502, 42.798359>,  <35.655384, 33.679264, 42.790459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.034683, 33.552502, 42.798359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054597, -0.224006, -0.973057,
		0.312793, 0.921624, -0.229716,
		0.948251, -0.316907, 0.019749,
		36.319160, 33.457428, 42.804283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.983109, 33.964329, 42.190434>,  <35.655384, 33.679264, 42.790459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.983109, 33.964329, 42.190434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.198700, 33.639393, 42.279526>,  <36.328056, 33.444431, 42.332981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.198700, 33.639393, 42.279526>,  <35.983109, 33.964329, 42.190434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.198700, 33.639393, 42.279526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041504, -0.238488, -0.970258,
		0.841297, 0.532191, -0.094824,
		0.538978, -0.812340, 0.222727,
		36.360394, 33.395691, 42.346344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.551388, 33.968819, 41.723503>,  <35.983109, 33.964329, 42.190434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.551388, 33.968819, 41.723503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.515976, 33.592598, 41.854668>,  <36.494728, 33.366867, 41.933365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.515976, 33.592598, 41.854668>,  <36.551388, 33.968819, 41.723503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.515976, 33.592598, 41.854668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091733, -0.335502, -0.937563,
		0.991841, -0.052920, 0.115981,
		-0.088528, -0.940552, 0.327910,
		36.489418, 33.310432, 41.953041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.153282, 33.628498, 41.389450>,  <36.551388, 33.968819, 41.723503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.153282, 33.628498, 41.389450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.907330, 33.325062, 41.475677>,  <36.759758, 33.143002, 41.527412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.907330, 33.325062, 41.475677>,  <37.153282, 33.628498, 41.389450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.907330, 33.325062, 41.475677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288640, -0.470855, -0.833656,
		0.733902, -0.450376, 0.508478,
		-0.614878, -0.758589, 0.215565,
		36.722866, 33.097485, 41.540348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.636951, 33.106304, 41.341274>,  <37.153282, 33.628498, 41.389450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.636951, 33.106304, 41.341274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.270222, 32.948166, 41.318905>,  <37.050182, 32.853283, 41.305485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.270222, 32.948166, 41.318905>,  <37.636951, 33.106304, 41.341274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.270222, 32.948166, 41.318905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231607, -0.412491, -0.881027,
		0.325244, -0.820702, 0.469749,
		-0.916829, -0.395346, -0.055920,
		36.995174, 32.829563, 41.302128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.739235, 32.459625, 41.056942>,  <37.636951, 33.106304, 41.341274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.739235, 32.459625, 41.056942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.351547, 32.518204, 40.977779>,  <37.118935, 32.553352, 40.930283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.351547, 32.518204, 40.977779>,  <37.739235, 32.459625, 41.056942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.351547, 32.518204, 40.977779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162616, -0.222761, -0.961215,
		-0.184850, -0.963811, 0.192090,
		-0.969220, 0.146444, -0.197909,
		37.060783, 32.562138, 40.918407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.442215, 31.867245, 40.719433>,  <37.739235, 32.459625, 41.056942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.442215, 31.867245, 40.719433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.199337, 32.171288, 40.626873>,  <37.053608, 32.353714, 40.571339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.199337, 32.171288, 40.626873>,  <37.442215, 31.867245, 40.719433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.199337, 32.171288, 40.626873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121718, -0.198808, -0.972450,
		-0.785171, -0.618636, 0.028197,
		-0.607199, 0.760108, -0.231398,
		37.017178, 32.399319, 40.557453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.044903, 31.612179, 40.182331>,  <37.442215, 31.867245, 40.719433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.044903, 31.612179, 40.182331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.976185, 32.004303, 40.143394>,  <36.934956, 32.239578, 40.120033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.976185, 32.004303, 40.143394>,  <37.044903, 31.612179, 40.182331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.976185, 32.004303, 40.143394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154629, -0.070749, -0.985436,
		-0.972922, -0.184344, -0.139430,
		-0.171795, 0.980312, -0.097338,
		36.924648, 32.298397, 40.114193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.590473, 31.656666, 39.561783>,  <37.044903, 31.612179, 40.182331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.590473, 31.656666, 39.561783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.745346, 32.018570, 39.632774>,  <36.838272, 32.235714, 39.675369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.745346, 32.018570, 39.632774>,  <36.590473, 31.656666, 39.561783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.745346, 32.018570, 39.632774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302226, 0.057316, -0.951512,
		-0.871062, 0.422049, -0.251249,
		0.387184, 0.904759, 0.177480,
		36.861500, 32.289997, 39.686020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.356400, 32.164051, 38.971558>,  <36.590473, 31.656666, 39.561783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.356400, 32.164051, 38.971558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.683987, 32.327866, 39.132343>,  <36.880539, 32.426155, 39.228813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.683987, 32.327866, 39.132343>,  <36.356400, 32.164051, 38.971558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.683987, 32.327866, 39.132343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414753, 0.061654, -0.907843,
		-0.396575, 0.910209, -0.119362,
		0.818968, 0.409534, 0.401962,
		36.929676, 32.450726, 39.252934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.566479, 32.647026, 38.438000>,  <36.356400, 32.164051, 38.971558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.566479, 32.647026, 38.438000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.897602, 32.634720, 38.662067>,  <37.096275, 32.627335, 38.796509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.897602, 32.634720, 38.662067>,  <36.566479, 32.647026, 38.438000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.897602, 32.634720, 38.662067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552187, -0.131773, -0.823241,
		0.099145, 0.990802, -0.092092,
		0.827804, -0.030768, 0.560173,
		37.145943, 32.625488, 38.830120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.099827, 33.242550, 38.246311>,  <36.566479, 32.647026, 38.438000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.099827, 33.242550, 38.246311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.287563, 32.929462, 38.409805>,  <37.400208, 32.741611, 38.507904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.287563, 32.929462, 38.409805>,  <37.099827, 33.242550, 38.246311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.287563, 32.929462, 38.409805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.727148, 0.079982, -0.681805,
		0.500970, 0.617214, 0.606692,
		0.469344, -0.782719, 0.408738,
		37.428368, 32.694645, 38.532425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.769703, 33.433159, 38.184994>,  <37.099827, 33.242550, 38.246311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.769703, 33.433159, 38.184994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.822281, 33.040646, 38.241287>,  <37.853828, 32.805138, 38.275063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.822281, 33.040646, 38.241287>,  <37.769703, 33.433159, 38.184994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.822281, 33.040646, 38.241287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.752080, 0.006229, -0.659043,
		0.645831, 0.192469, 0.738822,
		0.131448, -0.981283, 0.140729,
		37.861713, 32.746262, 38.283504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.481037, 33.321228, 38.296738>,  <37.769703, 33.433159, 38.184994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.481037, 33.321228, 38.296738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.329918, 32.959309, 38.218147>,  <38.239246, 32.742157, 38.170994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.329918, 32.959309, 38.218147>,  <38.481037, 33.321228, 38.296738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.329918, 32.959309, 38.218147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.716875, -0.151555, -0.680530,
		0.585968, -0.397952, 0.705887,
		-0.377799, -0.904801, -0.196475,
		38.216579, 32.687870, 38.159206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.064770, 32.977421, 38.298069>,  <38.481037, 33.321228, 38.296738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.064770, 32.977421, 38.298069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.803013, 32.736492, 38.115208>,  <38.645958, 32.591934, 38.005493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.803013, 32.736492, 38.115208>,  <39.064770, 32.977421, 38.298069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.803013, 32.736492, 38.115208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.690998, -0.230816, -0.685016,
		0.307082, -0.764156, 0.567245,
		-0.654388, -0.602321, -0.457150,
		38.606697, 32.555798, 37.978062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.487148, 32.416935, 38.214272>,  <39.064770, 32.977421, 38.298069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.487148, 32.416935, 38.214272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.173965, 32.398380, 37.966133>,  <38.986057, 32.387249, 37.817249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.173965, 32.398380, 37.966133>,  <39.487148, 32.416935, 38.214272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.173965, 32.398380, 37.966133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606427, -0.279197, -0.744510,
		-0.138665, -0.959113, 0.246727,
		-0.782955, -0.046385, -0.620347,
		38.939079, 32.384464, 37.780029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.537411, 31.766426, 37.889500>,  <39.487148, 32.416935, 38.214272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.537411, 31.766426, 37.889500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.335838, 32.023937, 37.659161>,  <39.214893, 32.178444, 37.520958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.335838, 32.023937, 37.659161>,  <39.537411, 31.766426, 37.889500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.335838, 32.023937, 37.659161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.668145, -0.131963, -0.732235,
		-0.547388, -0.753747, -0.363637,
		-0.503933, 0.643779, -0.575847,
		39.184658, 32.217072, 37.486408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.655910, 31.491451, 37.225147>,  <39.537411, 31.766426, 37.889500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.655910, 31.491451, 37.225147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.539288, 31.861559, 37.128094>,  <39.469315, 32.083622, 37.069862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.539288, 31.861559, 37.128094>,  <39.655910, 31.491451, 37.225147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.539288, 31.861559, 37.128094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.756832, 0.068017, -0.650060,
		-0.584976, -0.373167, -0.720104,
		-0.291560, 0.925268, -0.242637,
		39.451820, 32.139137, 37.055302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.699722, 31.622004, 36.480274>,  <39.655910, 31.491451, 37.225147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.699722, 31.622004, 36.480274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.699898, 31.972616, 36.672810>,  <39.700001, 32.182983, 36.788330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.699898, 31.972616, 36.672810>,  <39.699722, 31.622004, 36.480274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.699898, 31.972616, 36.672810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.925990, 0.181375, -0.331126,
		-0.377546, 0.445863, -0.811581,
		0.000436, 0.876532, 0.481343,
		39.700027, 32.235577, 36.817211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.956459, 32.072803, 36.007542>,  <39.699722, 31.622004, 36.480274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.956459, 32.072803, 36.007542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.007774, 32.235096, 36.369518>,  <40.038563, 32.332470, 36.586704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.007774, 32.235096, 36.369518>,  <39.956459, 32.072803, 36.007542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.007774, 32.235096, 36.369518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.963577, 0.164906, -0.210537,
		-0.234651, 0.898995, -0.369793,
		0.128290, 0.405727, 0.904946,
		40.046261, 32.356815, 36.641003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.437618, 32.639191, 35.891972>,  <39.956459, 32.072803, 36.007542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.437618, 32.639191, 35.891972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.474903, 32.527611, 36.274281>,  <40.497276, 32.460663, 36.503666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.474903, 32.527611, 36.274281>,  <40.437618, 32.639191, 35.891972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.474903, 32.527611, 36.274281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.995601, 0.035196, -0.086827,
		-0.009419, 0.959660, 0.281005,
		0.093215, -0.278951, 0.955771,
		40.502869, 32.443924, 36.561012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.006409, 33.069202, 36.019749>,  <40.437618, 32.639191, 35.891972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.006409, 33.069202, 36.019749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.961403, 32.793354, 36.305901>,  <40.934399, 32.627846, 36.477592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.961403, 32.793354, 36.305901>,  <41.006409, 33.069202, 36.019749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.961403, 32.793354, 36.305901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.941243, 0.156755, 0.299147,
		-0.318437, 0.707006, 0.631460,
		-0.112514, -0.689617, 0.715381,
		40.927650, 32.586468, 36.520515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.374741, 33.472729, 36.539841>,  <41.006409, 33.069202, 36.019749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.374741, 33.472729, 36.539841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.379593, 33.072849, 36.548389>,  <41.382504, 32.832920, 36.553520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.379593, 33.072849, 36.548389>,  <41.374741, 33.472729, 36.539841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.379593, 33.072849, 36.548389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.979182, 0.016203, 0.202336,
		-0.202621, 0.018473, 0.979083,
		0.012126, -0.999698, 0.021371,
		41.383232, 32.772942, 36.554802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.995773, 33.468388, 36.961697>,  <41.374741, 33.472729, 36.539841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.995773, 33.468388, 36.961697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.227825, 33.180573, 36.809013>,  <42.367058, 33.007881, 36.717403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.227825, 33.180573, 36.809013>,  <41.995773, 33.468388, 36.961697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.227825, 33.180573, 36.809013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268646, -0.273382, 0.923629,
		-0.768944, -0.638374, 0.034703,
		0.580134, -0.719542, -0.381712,
		42.401867, 32.964710, 36.694500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.955402, 32.923378, 37.379642>,  <41.995773, 33.468388, 36.961697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.955402, 32.923378, 37.379642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.297028, 32.840546, 37.188774>,  <42.502003, 32.790844, 37.074253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.297028, 32.840546, 37.188774>,  <41.955402, 32.923378, 37.379642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.297028, 32.840546, 37.188774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431605, -0.229889, 0.872278,
		-0.290334, -0.950929, -0.106959,
		0.854063, -0.207088, -0.477170,
		42.553246, 32.778419, 37.045624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.337772, 32.293488, 37.676216>,  <41.955402, 32.923378, 37.379642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.337772, 32.293488, 37.676216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.619209, 32.502022, 37.483070>,  <42.788071, 32.627144, 37.367184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.619209, 32.502022, 37.483070>,  <42.337772, 32.293488, 37.676216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.619209, 32.502022, 37.483070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606685, -0.086917, 0.790176,
		0.369980, -0.848912, -0.377443,
		0.703596, 0.521339, -0.482864,
		42.830288, 32.658424, 37.338211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.978729, 31.851339, 37.590153>,  <42.337772, 32.293488, 37.676216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.978729, 31.851339, 37.590153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.088577, 32.235474, 37.570827>,  <43.154488, 32.465954, 37.559231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.088577, 32.235474, 37.570827>,  <42.978729, 31.851339, 37.590153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.088577, 32.235474, 37.570827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.663926, -0.153032, 0.731972,
		0.695547, -0.233093, -0.679619,
		0.274621, 0.960338, -0.048316,
		43.170963, 32.523575, 37.556332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.661499, 31.803293, 37.739532>,  <42.978729, 31.851339, 37.590153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.661499, 31.803293, 37.739532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.572208, 32.186588, 37.811028>,  <43.518635, 32.416565, 37.853924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.572208, 32.186588, 37.811028>,  <43.661499, 31.803293, 37.739532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.572208, 32.186588, 37.811028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.677150, 0.020541, 0.735559,
		0.701170, 0.285229, -0.653457,
		-0.223225, 0.958239, 0.178741,
		43.505241, 32.474060, 37.864651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.245361, 31.931084, 38.002995>,  <43.661499, 31.803293, 37.739532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.245361, 31.931084, 38.002995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.015026, 32.238388, 38.114841>,  <43.876823, 32.422771, 38.181950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.015026, 32.238388, 38.114841>,  <44.245361, 31.931084, 38.002995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.015026, 32.238388, 38.114841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594885, 0.159125, 0.787903,
		0.560823, 0.620042, -0.548658,
		-0.575839, 0.768262, 0.279613,
		43.842274, 32.468868, 38.198727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.676414, 32.485439, 38.050583>,  <44.245361, 31.931084, 38.002995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.676414, 32.485439, 38.050583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.350475, 32.530403, 38.278049>,  <44.154911, 32.557381, 38.414528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.350475, 32.530403, 38.278049>,  <44.676414, 32.485439, 38.050583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.350475, 32.530403, 38.278049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555946, -0.126229, 0.821577,
		0.164139, 0.985611, 0.040362,
		-0.814851, 0.112414, 0.568666,
		44.106022, 32.564129, 38.448650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.939529, 32.778706, 38.580193>,  <44.676414, 32.485439, 38.050583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.939529, 32.778706, 38.580193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.597157, 32.642872, 38.736176>,  <44.391731, 32.561371, 38.829765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.597157, 32.642872, 38.736176>,  <44.939529, 32.778706, 38.580193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.597157, 32.642872, 38.736176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483917, -0.260286, 0.835509,
		-0.182226, 0.903844, 0.387117,
		-0.855931, -0.339584, 0.389955,
		44.340378, 32.540997, 38.853161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.957069, 32.986340, 39.227947>,  <44.939529, 32.778706, 38.580193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.957069, 32.986340, 39.227947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.682743, 32.695232, 39.229446>,  <44.518147, 32.520569, 39.230347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.682743, 32.695232, 39.229446>,  <44.957069, 32.986340, 39.227947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.682743, 32.695232, 39.229446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354968, -0.329994, 0.874701,
		-0.635342, 0.601213, 0.484648,
		-0.685812, -0.727769, 0.003752,
		44.477001, 32.476902, 39.230572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.566082, 33.027451, 39.838737>,  <44.957069, 32.986340, 39.227947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.566082, 33.027451, 39.838737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.485214, 32.649227, 39.736725>,  <44.436695, 32.422291, 39.675518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.485214, 32.649227, 39.736725>,  <44.566082, 33.027451, 39.838737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.485214, 32.649227, 39.736725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087817, -0.241862, 0.966329,
		-0.975406, 0.217756, -0.034140,
		-0.202167, -0.945561, -0.255036,
		44.424564, 32.365559, 39.660213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.919331, 32.834484, 40.162930>,  <44.566082, 33.027451, 39.838737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.919331, 32.834484, 40.162930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.116386, 32.495998, 40.081711>,  <44.234619, 32.292908, 40.032978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.116386, 32.495998, 40.081711>,  <43.919331, 32.834484, 40.162930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.116386, 32.495998, 40.081711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022902, -0.245852, 0.969037,
		-0.869934, -0.472732, -0.140496,
		0.492635, -0.846216, -0.203049,
		44.264175, 32.242134, 40.020798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.677288, 32.386921, 40.648258>,  <43.919331, 32.834484, 40.162930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.677288, 32.386921, 40.648258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.018429, 32.210693, 40.536156>,  <44.223114, 32.104958, 40.468895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.018429, 32.210693, 40.536156>,  <43.677288, 32.386921, 40.648258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.018429, 32.210693, 40.536156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049945, -0.465443, 0.883668,
		-0.519762, -0.767633, -0.374949,
		0.852850, -0.440570, -0.280259,
		44.274284, 32.078522, 40.452080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.738514, 31.791573, 41.039299>,  <43.677288, 32.386921, 40.648258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.738514, 31.791573, 41.039299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.116798, 31.831430, 40.915550>,  <44.343769, 31.855345, 40.841301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.116798, 31.831430, 40.915550>,  <43.738514, 31.791573, 41.039299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.116798, 31.831430, 40.915550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318878, -0.468632, 0.823833,
		-0.062887, -0.877755, -0.474964,
		0.945707, 0.099647, -0.309368,
		44.400509, 31.861324, 40.822739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.075859, 31.119209, 41.215206>,  <43.738514, 31.791573, 41.039299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.075859, 31.119209, 41.215206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.392521, 31.358833, 41.167191>,  <44.582520, 31.502607, 41.138382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.392521, 31.358833, 41.167191>,  <44.075859, 31.119209, 41.215206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.392521, 31.358833, 41.167191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274530, -0.173268, 0.945839,
		0.545814, -0.781733, -0.301628,
		0.791656, 0.599059, -0.120038,
		44.630016, 31.538551, 41.131180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.671638, 30.794083, 41.489159>,  <44.075859, 31.119209, 41.215206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.671638, 30.794083, 41.489159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.794937, 31.174288, 41.473625>,  <44.868916, 31.402411, 41.464306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.794937, 31.174288, 41.473625>,  <44.671638, 30.794083, 41.489159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.794937, 31.174288, 41.473625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434519, -0.104364, 0.894596,
		0.846274, -0.292624, -0.445186,
		0.308242, 0.950515, -0.038830,
		44.887409, 31.459442, 41.461975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.464924, 30.773144, 41.640411>,  <44.671638, 30.794083, 41.489159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.464924, 30.773144, 41.640411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.305660, 31.126793, 41.738228>,  <45.210102, 31.338982, 41.796917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.305660, 31.126793, 41.738228>,  <45.464924, 30.773144, 41.640411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.305660, 31.126793, 41.738228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398389, -0.073470, 0.914269,
		0.826292, 0.461444, -0.322972,
		-0.398155, 0.884122, 0.244542,
		45.186214, 31.392029, 41.811592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.965214, 30.970034, 42.060387>,  <45.464924, 30.773144, 41.640411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.965214, 30.970034, 42.060387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.680660, 31.244556, 42.120934>,  <45.509926, 31.409269, 42.157261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.680660, 31.244556, 42.120934>,  <45.965214, 30.970034, 42.060387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.680660, 31.244556, 42.120934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223078, 0.016270, 0.974665,
		0.666457, 0.727130, -0.164674,
		-0.711387, 0.686307, 0.151363,
		45.467243, 31.450449, 42.166344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.254498, 31.502932, 42.475365>,  <45.965214, 30.970034, 42.060387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.254498, 31.502932, 42.475365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.857433, 31.519337, 42.520870>,  <45.619194, 31.529181, 42.548172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.857433, 31.519337, 42.520870>,  <46.254498, 31.502932, 42.475365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.857433, 31.519337, 42.520870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114670, 0.020502, 0.993192,
		0.038402, 0.998948, -0.025054,
		-0.992661, 0.041014, 0.113762,
		45.559635, 31.531641, 42.555000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.092144, 32.121109, 43.021465>,  <46.254498, 31.502932, 42.475365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.092144, 32.121109, 43.021465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.760944, 31.897343, 43.006077>,  <45.562225, 31.763083, 42.996845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.760944, 31.897343, 43.006077>,  <46.092144, 32.121109, 43.021465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.760944, 31.897343, 43.006077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109030, 0.093322, 0.989648,
		-0.550034, 0.823618, -0.138263,
		-0.827994, -0.559415, -0.038469,
		45.512547, 31.729519, 42.994537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.678612, 32.360039, 43.581898>,  <46.092144, 32.121109, 43.021465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.678612, 32.360039, 43.581898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.517670, 32.000523, 43.512280>,  <45.421104, 31.784813, 43.470509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.517670, 32.000523, 43.512280>,  <45.678612, 32.360039, 43.581898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.517670, 32.000523, 43.512280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139834, -0.127545, 0.981926,
		-0.904740, 0.419423, -0.074362,
		-0.402357, -0.898787, -0.174045,
		45.396961, 31.730886, 43.460068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.077900, 32.451958, 43.913536>,  <45.678612, 32.360039, 43.581898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.077900, 32.451958, 43.913536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.161167, 32.063530, 43.866745>,  <45.211128, 31.830473, 43.838669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.161167, 32.063530, 43.866745>,  <45.077900, 32.451958, 43.913536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.161167, 32.063530, 43.866745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353109, -0.186145, 0.916877,
		-0.912130, -0.149557, -0.381644,
		0.208167, -0.971073, -0.116979,
		45.223618, 31.772207, 43.831650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.485912, 32.200466, 44.164200>,  <45.077900, 32.451958, 43.913536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.485912, 32.200466, 44.164200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.738308, 31.890154, 44.165730>,  <44.889744, 31.703966, 44.166649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.738308, 31.890154, 44.165730>,  <44.485912, 32.200466, 44.164200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.738308, 31.890154, 44.165730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344286, -0.275602, 0.897502,
		-0.695212, -0.567632, -0.440993,
		0.630990, -0.775782, 0.003826,
		44.927605, 31.657419, 44.166878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.467991, 32.777386, 44.635475>,  <44.485912, 32.200466, 44.164200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.467991, 32.777386, 44.635475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.612621, 32.818516, 45.006138>,  <44.699398, 32.843193, 45.228535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.612621, 32.818516, 45.006138>,  <44.467991, 32.777386, 44.635475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.612621, 32.818516, 45.006138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050377, -0.994603, 0.090707,
		0.930982, 0.013886, -0.364801,
		0.361573, 0.102824, 0.926657,
		44.721092, 32.849361, 45.284134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.973503, 33.368614, 44.572468>,  <44.467991, 32.777386, 44.635475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.973503, 33.368614, 44.572468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.153751, 33.271126, 44.915989>,  <45.261898, 33.212635, 45.122101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.153751, 33.271126, 44.915989>,  <44.973503, 33.368614, 44.572468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.153751, 33.271126, 44.915989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228164, 0.961503, 0.153145,
		-0.863068, 0.126939, 0.488877,
		0.450617, -0.243719, 0.858805,
		45.288937, 33.198009, 45.173630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.779140, 33.749889, 45.304901>,  <44.973503, 33.368614, 44.572468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.779140, 33.749889, 45.304901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.163937, 33.640659, 45.304283>,  <45.394814, 33.575119, 45.303913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.163937, 33.640659, 45.304283>,  <44.779140, 33.749889, 45.304901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.163937, 33.640659, 45.304283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267161, 0.939943, 0.212441,
		-0.056557, -0.204781, 0.977172,
		0.961991, -0.273077, -0.001549,
		45.452534, 33.558735, 45.303818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.127262, 33.822277, 45.945045>,  <44.779140, 33.749889, 45.304901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.127262, 33.822277, 45.945045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.355579, 33.867012, 45.619667>,  <45.492569, 33.893852, 45.424442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.355579, 33.867012, 45.619667>,  <45.127262, 33.822277, 45.945045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.355579, 33.867012, 45.619667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199550, 0.942084, 0.269552,
		0.796479, -0.316180, 0.515414,
		0.570790, 0.111842, -0.813444,
		45.526817, 33.900566, 45.375633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.915447, 34.069035, 46.068951>,  <45.127262, 33.822277, 45.945045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.915447, 34.069035, 46.068951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.794209, 34.170166, 45.701427>,  <45.721466, 34.230843, 45.480911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.794209, 34.170166, 45.701427>,  <45.915447, 34.069035, 46.068951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.794209, 34.170166, 45.701427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302254, 0.939887, 0.158918,
		0.903756, -0.229547, -0.361293,
		-0.303096, 0.252825, -0.918810,
		45.703281, 34.246014, 45.425785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.475555, 34.266121, 45.577911>,  <45.915447, 34.069035, 46.068951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.475555, 34.266121, 45.577911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.127064, 34.461086, 45.554630>,  <45.917969, 34.578068, 45.540661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.127064, 34.461086, 45.554630>,  <46.475555, 34.266121, 45.577911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.127064, 34.461086, 45.554630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483800, 0.872669, 0.066236,
		0.083075, 0.029548, -0.996105,
		-0.871227, 0.487418, -0.058202,
		45.865696, 34.607311, 45.537170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.489250, 34.721489, 44.965179>,  <46.475555, 34.266121, 45.577911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.489250, 34.721489, 44.965179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.314667, 34.869667, 45.293148>,  <46.209915, 34.958576, 45.489929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.314667, 34.869667, 45.293148>,  <46.489250, 34.721489, 44.965179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.314667, 34.869667, 45.293148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.726621, 0.682550, 0.078411,
		-0.530591, 0.629996, -0.567079,
		-0.436458, 0.370447, 0.819923,
		46.183731, 34.980801, 45.539124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.899845, 35.334427, 44.747139>,  <46.489250, 34.721489, 44.965179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.899845, 35.334427, 44.747139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.239433, 35.490044, 44.604084>,  <47.443184, 35.583416, 44.518253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.239433, 35.490044, 44.604084>,  <46.899845, 35.334427, 44.747139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.239433, 35.490044, 44.604084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255692, -0.289853, -0.922283,
		-0.462470, 0.874431, -0.146600,
		0.848966, 0.389044, -0.357634,
		47.494122, 35.606758, 44.496796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.935013, 35.893532, 44.144112>,  <46.899845, 35.334427, 44.747139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.935013, 35.893532, 44.144112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.221676, 35.615124, 44.126438>,  <47.393673, 35.448078, 44.115833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.221676, 35.615124, 44.126438>,  <46.935013, 35.893532, 44.144112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.221676, 35.615124, 44.126438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318251, -0.269996, -0.908746,
		0.620577, 0.665323, -0.415005,
		0.716659, -0.696023, -0.044186,
		47.436672, 35.406319, 44.113182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.377403, 36.142315, 43.609795>,  <46.935013, 35.893532, 44.144112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.377403, 36.142315, 43.609795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.338371, 35.747108, 43.657631>,  <47.314953, 35.509983, 43.686333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.338371, 35.747108, 43.657631>,  <47.377403, 36.142315, 43.609795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.338371, 35.747108, 43.657631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250910, -0.091859, -0.963642,
		0.963080, -0.124036, -0.238940,
		-0.097577, -0.988017, 0.119590,
		47.309097, 35.450703, 43.693508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.707317, 35.823578, 43.009129>,  <47.377403, 36.142315, 43.609795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.707317, 35.823578, 43.009129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.448261, 35.564850, 43.170219>,  <47.292828, 35.409615, 43.266872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.448261, 35.564850, 43.170219>,  <47.707317, 35.823578, 43.009129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.448261, 35.564850, 43.170219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321845, -0.246857, -0.914045,
		0.690636, -0.721588, -0.048300,
		-0.647640, -0.646818, 0.402727,
		47.253967, 35.370804, 43.291039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.859940, 35.181877, 42.727169>,  <47.707317, 35.823578, 43.009129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.859940, 35.181877, 42.727169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.481133, 35.233444, 42.844837>,  <47.253849, 35.264385, 42.915440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.481133, 35.233444, 42.844837>,  <47.859940, 35.181877, 42.727169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.481133, 35.233444, 42.844837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309869, -0.125793, -0.942421,
		-0.084484, -0.983645, 0.159074,
		-0.947018, 0.128911, 0.294174,
		47.197025, 35.272118, 42.933090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.579155, 34.574139, 42.688217>,  <47.859940, 35.181877, 42.727169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.579155, 34.574139, 42.688217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.280205, 34.839161, 42.668442>,  <47.100834, 34.998177, 42.656578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.280205, 34.839161, 42.668442>,  <47.579155, 34.574139, 42.688217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.280205, 34.839161, 42.668442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156333, -0.247692, -0.956143,
		-0.645748, -0.706869, 0.288699,
		-0.747376, 0.662560, -0.049440,
		47.055992, 35.037930, 42.653610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.964066, 34.229122, 42.445282>,  <47.579155, 34.574139, 42.688217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.964066, 34.229122, 42.445282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.882511, 34.614021, 42.373165>,  <46.833576, 34.844959, 42.329895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.882511, 34.614021, 42.373165>,  <46.964066, 34.229122, 42.445282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.882511, 34.614021, 42.373165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110944, -0.205687, -0.972309,
		-0.972687, -0.178241, 0.148694,
		-0.203890, 0.962249, -0.180295,
		46.821342, 34.902695, 42.319077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.341515, 34.230438, 42.056496>,  <46.964066, 34.229122, 42.445282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.341515, 34.230438, 42.056496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.467278, 34.605190, 41.995296>,  <46.542736, 34.830040, 41.958576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.467278, 34.605190, 41.995296>,  <46.341515, 34.230438, 42.056496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.467278, 34.605190, 41.995296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223012, -0.083766, -0.971210,
		-0.922722, 0.339473, 0.182599,
		0.314404, 0.936878, -0.152999,
		46.561600, 34.886253, 41.949398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.739708, 34.549225, 41.793011>,  <46.341515, 34.230438, 42.056496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.739708, 34.549225, 41.793011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.061356, 34.750721, 41.666752>,  <46.254345, 34.871620, 41.590996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.061356, 34.750721, 41.666752>,  <45.739708, 34.549225, 41.793011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.061356, 34.750721, 41.666752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288999, -0.132745, -0.948081,
		-0.519488, 0.853595, 0.038837,
		0.804122, 0.503740, -0.315647,
		46.302593, 34.901844, 41.572056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.500534, 35.040375, 41.295372>,  <45.739708, 34.549225, 41.793011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.500534, 35.040375, 41.295372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.890072, 34.991859, 41.218525>,  <46.123795, 34.962749, 41.172417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.890072, 34.991859, 41.218525>,  <45.500534, 35.040375, 41.295372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.890072, 34.991859, 41.218525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196349, -0.023879, -0.980243,
		0.114307, 0.992329, -0.047070,
		0.973848, -0.121291, -0.192114,
		46.182228, 34.955471, 41.160892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.476250, 35.241173, 40.664268>,  <45.500534, 35.040375, 41.295372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.476250, 35.241173, 40.664268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.846394, 35.093163, 40.697208>,  <46.068481, 35.004356, 40.716972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.846394, 35.093163, 40.697208>,  <45.476250, 35.241173, 40.664268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.846394, 35.093163, 40.697208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042975, -0.113430, -0.992616,
		0.376637, 0.922070, -0.089062,
		0.925363, -0.370029, 0.082348,
		46.124004, 34.982155, 40.721912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.940090, 35.742374, 40.234978>,  <45.476250, 35.241173, 40.664268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.940090, 35.742374, 40.234978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.096500, 35.376663, 40.277302>,  <46.190346, 35.157238, 40.302696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.096500, 35.376663, 40.277302>,  <45.940090, 35.742374, 40.234978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.096500, 35.376663, 40.277302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191443, -0.193249, -0.962291,
		0.900248, 0.356027, -0.250597,
		0.391029, -0.914276, 0.105813,
		46.213810, 35.102379, 40.309044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.389599, 35.677086, 39.743439>,  <45.940090, 35.742374, 40.234978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.389599, 35.677086, 39.743439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.289909, 35.302376, 39.841686>,  <46.230095, 35.077549, 39.900635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.289909, 35.302376, 39.841686>,  <46.389599, 35.677086, 39.743439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.289909, 35.302376, 39.841686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197832, -0.199031, -0.959817,
		0.948023, -0.287804, -0.135721,
		-0.249227, -0.936779, 0.245623,
		46.215141, 35.021343, 39.915375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.623386, 35.296745, 39.207027>,  <46.389599, 35.677086, 39.743439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.623386, 35.296745, 39.207027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.383446, 35.021458, 39.370258>,  <46.239479, 34.856285, 39.468197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.383446, 35.021458, 39.370258>,  <46.623386, 35.296745, 39.207027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.383446, 35.021458, 39.370258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009444, -0.516084, -0.856486,
		0.800053, -0.509913, 0.316075,
		-0.599854, -0.688219, 0.408079,
		46.203491, 34.814991, 39.492683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.956261, 34.696560, 38.994282>,  <46.623386, 35.296745, 39.207027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.956261, 34.696560, 38.994282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.569923, 34.615116, 39.058395>,  <46.338120, 34.566250, 39.096863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.569923, 34.615116, 39.058395>,  <46.956261, 34.696560, 38.994282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.569923, 34.615116, 39.058395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097499, -0.287550, -0.952790,
		0.240082, -0.935874, 0.257878,
		-0.965844, -0.203605, 0.160282,
		46.280170, 34.554035, 39.106480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.891937, 34.104141, 38.768978>,  <46.956261, 34.696560, 38.994282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.891937, 34.104141, 38.768978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.512932, 34.232025, 38.768208>,  <46.285530, 34.308758, 38.767746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.512932, 34.232025, 38.768208>,  <46.891937, 34.104141, 38.768978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.512932, 34.232025, 38.768208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110278, -0.332472, -0.936644,
		-0.300095, -0.887270, 0.350279,
		-0.947514, 0.319710, -0.001926,
		46.228680, 34.327938, 38.767628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.545532, 33.581558, 38.484600>,  <46.891937, 34.104141, 38.768978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.545532, 33.581558, 38.484600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.291885, 33.887875, 38.441772>,  <46.139698, 34.071663, 38.416077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.291885, 33.887875, 38.441772>,  <46.545532, 33.581558, 38.484600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.291885, 33.887875, 38.441772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263396, -0.344107, -0.901228,
		-0.726995, -0.543281, 0.419909,
		-0.634114, 0.765791, -0.107066,
		46.101650, 34.117611, 38.409653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.806923, 33.365871, 38.303726>,  <46.545532, 33.581558, 38.484600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.806923, 33.365871, 38.303726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.824684, 33.741550, 38.167526>,  <45.835342, 33.966957, 38.085808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.824684, 33.741550, 38.167526>,  <45.806923, 33.365871, 38.303726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.824684, 33.741550, 38.167526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266202, -0.317388, -0.910166,
		-0.962894, 0.131058, 0.235922,
		0.044406, 0.939196, -0.340499,
		45.838005, 34.023308, 38.065376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.239311, 33.399712, 37.906181>,  <45.806923, 33.365871, 38.303726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.239311, 33.399712, 37.906181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.463104, 33.712589, 37.796520>,  <45.597378, 33.900314, 37.730724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.463104, 33.712589, 37.796520>,  <45.239311, 33.399712, 37.906181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.463104, 33.712589, 37.796520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294089, -0.121909, -0.947971,
		-0.774916, 0.610996, 0.161828,
		0.559479, 0.782190, -0.274157,
		45.630947, 33.947247, 37.714272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.825562, 33.643082, 37.466976>,  <45.239311, 33.399712, 37.906181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.825562, 33.643082, 37.466976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.176872, 33.805111, 37.365356>,  <45.387657, 33.902328, 37.304382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.176872, 33.805111, 37.365356>,  <44.825562, 33.643082, 37.466976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.176872, 33.805111, 37.365356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271125, -0.015756, -0.962415,
		-0.393854, 0.914148, 0.095987,
		0.878277, 0.405075, -0.254054,
		45.440357, 33.926632, 37.289139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.664421, 34.201786, 37.070072>,  <44.825562, 33.643082, 37.466976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.664421, 34.201786, 37.070072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.045811, 34.124805, 36.977257>,  <45.274647, 34.078617, 36.921566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.045811, 34.124805, 36.977257>,  <44.664421, 34.201786, 37.070072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.045811, 34.124805, 36.977257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242529, -0.032530, -0.969598,
		0.179052, 0.980767, -0.077692,
		0.953478, -0.192451, -0.232040,
		45.331856, 34.067070, 36.907646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.784557, 34.699089, 36.616241>,  <44.664421, 34.201786, 37.070072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.784557, 34.699089, 36.616241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.081226, 34.440434, 36.544945>,  <45.259228, 34.285240, 36.502167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.081226, 34.440434, 36.544945>,  <44.784557, 34.699089, 36.616241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.081226, 34.440434, 36.544945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222039, 0.014062, -0.974936,
		0.632941, 0.762665, -0.133150,
		0.741677, -0.646641, -0.178242,
		45.303730, 34.246441, 36.491470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.918789, 34.888878, 35.994133>,  <44.784557, 34.699089, 36.616241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.918789, 34.888878, 35.994133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.076836, 34.522087, 36.016144>,  <45.171665, 34.302013, 36.029350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.076836, 34.522087, 36.016144>,  <44.918789, 34.888878, 35.994133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.076836, 34.522087, 36.016144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254430, -0.166798, -0.952598,
		0.882692, 0.362389, -0.299213,
		0.395119, -0.916980, 0.055029,
		45.195370, 34.246994, 36.032654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.163387, 34.692524, 35.286236>,  <44.918789, 34.888878, 35.994133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.163387, 34.692524, 35.286236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.120529, 34.337494, 35.465446>,  <45.094814, 34.124477, 35.572971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.120529, 34.337494, 35.465446>,  <45.163387, 34.692524, 35.286236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.120529, 34.337494, 35.465446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365195, -0.383988, -0.848048,
		0.924744, -0.254484, -0.282995,
		-0.107148, -0.887576, 0.448027,
		45.088387, 34.071220, 35.599854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.342865, 34.201756, 34.865639>,  <45.163387, 34.692524, 35.286236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.342865, 34.201756, 34.865639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.105953, 34.010834, 35.125294>,  <44.963806, 33.896282, 35.281086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.105953, 34.010834, 35.125294>,  <45.342865, 34.201756, 34.865639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.105953, 34.010834, 35.125294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529336, -0.376901, -0.760098,
		0.607459, -0.793806, -0.029422,
		-0.592281, -0.477303, 0.649142,
		44.928268, 33.867641, 35.320038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.006348, 34.146618, 34.848724>,  <45.342865, 34.201756, 34.865639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.006348, 34.146618, 34.848724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.261562, 34.221882, 35.147388>,  <46.414692, 34.267040, 35.326588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.261562, 34.221882, 35.147388>,  <46.006348, 34.146618, 34.848724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.261562, 34.221882, 35.147388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.721900, 0.191188, -0.665062,
		-0.267891, 0.963350, -0.013847,
		0.638040, 0.188161, 0.746660,
		46.452972, 34.278332, 35.371387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.315983, 34.801720, 34.770397>,  <46.006348, 34.146618, 34.848724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.315983, 34.801720, 34.770397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.559868, 34.563076, 34.979130>,  <46.706200, 34.419891, 35.104370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.559868, 34.563076, 34.979130>,  <46.315983, 34.801720, 34.770397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.559868, 34.563076, 34.979130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.757645, 0.245261, -0.604831,
		0.232860, 0.764139, 0.601555,
		0.609713, -0.596606, 0.521834,
		46.742783, 34.384094, 35.135681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.888214, 35.226166, 34.881638>,  <46.315983, 34.801720, 34.770397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.888214, 35.226166, 34.881638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.011890, 34.850220, 34.939678>,  <47.086098, 34.624653, 34.974503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.011890, 34.850220, 34.939678>,  <46.888214, 35.226166, 34.881638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.011890, 34.850220, 34.939678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.870280, 0.218118, -0.441631,
		0.383424, 0.262829, 0.885385,
		0.309192, -0.939865, 0.145103,
		47.104649, 34.568260, 34.983208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.602417, 35.128960, 35.352024>,  <46.888214, 35.226166, 34.881638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.602417, 35.128960, 35.352024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.541782, 34.849941, 35.071896>,  <47.505402, 34.682529, 34.903820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.541782, 34.849941, 35.071896>,  <47.602417, 35.128960, 35.352024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.541782, 34.849941, 35.071896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.793956, 0.336100, -0.506626,
		0.588773, -0.632822, 0.502874,
		-0.151588, -0.697548, -0.700320,
		47.496307, 34.640678, 34.861801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<36.197960, 38.325962, 44.510773> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.917873, 38.596386, 44.419006>,  <35.749821, 38.758640, 44.363945>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.917873, 38.596386, 44.419006>,  <36.197960, 38.325962, 44.510773>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.917873, 38.596386, 44.419006> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092635, -0.232591, -0.968153,
		-0.707893, -0.699171, 0.100237,
		-0.700218, 0.676063, -0.229417,
		35.707809, 38.799206, 44.350182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.685856, 38.045700, 43.981758>,  <36.197960, 38.325962, 44.510773>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.685856, 38.045700, 43.981758> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.627617, 38.440304, 43.951843>,  <35.592674, 38.677067, 43.933895>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.627617, 38.440304, 43.951843>,  <35.685856, 38.045700, 43.981758>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.627617, 38.440304, 43.951843> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097830, -0.089579, -0.991163,
		-0.984495, -0.136998, 0.109553,
		-0.145601, 0.986512, -0.074788,
		35.583935, 38.736259, 43.929405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.220089, 38.048977, 43.467266>,  <35.685856, 38.045700, 43.981758>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.220089, 38.048977, 43.467266> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.338047, 38.431030, 43.478249>,  <35.408821, 38.660263, 43.484840>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.338047, 38.431030, 43.478249>,  <35.220089, 38.048977, 43.467266>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.338047, 38.431030, 43.478249> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183616, 0.084845, -0.979330,
		-0.937723, 0.283753, 0.200398,
		0.294890, 0.955136, 0.027460,
		35.426514, 38.717571, 43.486488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.631489, 38.445942, 43.327953>,  <35.220089, 38.048977, 43.467266>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.631489, 38.445942, 43.327953> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.969868, 38.644302, 43.249523>,  <35.172897, 38.763321, 43.202465>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.969868, 38.644302, 43.249523>,  <34.631489, 38.445942, 43.327953>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.969868, 38.644302, 43.249523> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227573, 0.003197, -0.973756,
		-0.482264, 0.868371, 0.115559,
		0.845951, 0.495905, -0.196075,
		35.223652, 38.793076, 43.190701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.474606, 39.062965, 42.878258>,  <34.631489, 38.445942, 43.327953>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.474606, 39.062965, 42.878258> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.857742, 38.977268, 42.801693>,  <35.087624, 38.925850, 42.755756>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.857742, 38.977268, 42.801693>,  <34.474606, 39.062965, 42.878258>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.857742, 38.977268, 42.801693> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195315, 0.002984, -0.980736,
		0.210684, 0.976777, -0.038986,
		0.957844, -0.214240, -0.191408,
		35.145096, 38.912994, 42.744270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.626240, 39.458874, 42.329056>,  <34.474606, 39.062965, 42.878258>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.626240, 39.458874, 42.329056> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.927975, 39.196278, 42.329136>,  <35.109016, 39.038719, 42.329185>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.927975, 39.196278, 42.329136>,  <34.626240, 39.458874, 42.329056>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.927975, 39.196278, 42.329136> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095880, -0.110471, -0.989244,
		0.649453, 0.746200, -0.146276,
		0.754333, -0.656492, 0.000200,
		35.154274, 38.999329, 42.329197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.997280, 39.716751, 41.739864>,  <34.626240, 39.458874, 42.329056>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.997280, 39.716751, 41.739864> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.115250, 39.341827, 41.814129>,  <35.186031, 39.116875, 41.858688>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.115250, 39.341827, 41.814129>,  <34.997280, 39.716751, 41.739864>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.115250, 39.341827, 41.814129> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091847, -0.221214, -0.970891,
		0.951095, 0.269289, -0.151331,
		0.294927, -0.937309, 0.185662,
		35.203728, 39.060635, 41.869827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.498203, 39.616447, 41.176205>,  <34.997280, 39.716751, 41.739864>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.498203, 39.616447, 41.176205> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.368450, 39.263214, 41.311817>,  <35.290600, 39.051273, 41.393185>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.368450, 39.263214, 41.311817>,  <35.498203, 39.616447, 41.176205>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.368450, 39.263214, 41.311817> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016588, -0.353044, -0.935460,
		0.945780, -0.309072, 0.099873,
		-0.324384, -0.883082, 0.339029,
		35.271133, 38.998291, 41.413525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.890583, 39.084354, 40.874886>,  <35.498203, 39.616447, 41.176205>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.890583, 39.084354, 40.874886> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.548733, 38.902821, 40.975807>,  <35.343624, 38.793900, 41.036362>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.548733, 38.902821, 40.975807>,  <35.890583, 39.084354, 40.874886>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.548733, 38.902821, 40.975807> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096299, -0.338943, -0.935865,
		0.510241, -0.824109, 0.245965,
		-0.854623, -0.453831, 0.252304,
		35.292347, 38.766670, 41.051498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.033596, 38.413719, 40.650848>,  <35.890583, 39.084354, 40.874886>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.033596, 38.413719, 40.650848> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.634914, 38.438015, 40.672356>,  <35.395706, 38.452595, 40.685261>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.634914, 38.438015, 40.672356>,  <36.033596, 38.413719, 40.650848>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.634914, 38.438015, 40.672356> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076671, -0.488706, -0.869073,
		-0.026512, -0.870332, 0.491752,
		-0.996704, 0.060744, 0.053772,
		35.335903, 38.456238, 40.688488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.888821, 37.781952, 40.634060>,  <36.033596, 38.413719, 40.650848>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.888821, 37.781952, 40.634060> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.506134, 37.888340, 40.586803>,  <35.276524, 37.952171, 40.558449>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.506134, 37.888340, 40.586803>,  <35.888821, 37.781952, 40.634060>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.506134, 37.888340, 40.586803> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063526, -0.587012, -0.807082,
		-0.284006, -0.764643, 0.578500,
		-0.956716, 0.265966, -0.118140,
		35.219120, 37.968128, 40.551361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.513966, 37.158970, 40.583305>,  <35.888821, 37.781952, 40.634060>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.513966, 37.158970, 40.583305> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.310204, 37.454121, 40.406197>,  <35.187946, 37.631210, 40.299931>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.310204, 37.454121, 40.406197>,  <35.513966, 37.158970, 40.583305>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.310204, 37.454121, 40.406197> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093707, -0.559041, -0.823828,
		-0.855409, -0.378173, 0.353923,
		-0.509407, 0.737874, -0.442771,
		35.157383, 37.675484, 40.273365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.101246, 36.812271, 40.191372>,  <35.513966, 37.158970, 40.583305>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.101246, 36.812271, 40.191372> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.074440, 37.168320, 40.011059>,  <35.058357, 37.381947, 39.902870>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.074440, 37.168320, 40.011059>,  <35.101246, 36.812271, 40.191372>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.074440, 37.168320, 40.011059> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196198, -0.454729, -0.868751,
		-0.978272, 0.030223, 0.205113,
		-0.067015, 0.890117, -0.450778,
		35.054337, 37.435356, 39.875824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.445526, 36.803391, 39.844646>,  <35.101246, 36.812271, 40.191372>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.445526, 36.803391, 39.844646> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.704006, 37.052410, 39.668079>,  <34.859097, 37.201824, 39.562138>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.704006, 37.052410, 39.668079>,  <34.445526, 36.803391, 39.844646>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.704006, 37.052410, 39.668079> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016032, -0.589350, -0.807719,
		-0.762996, 0.514875, -0.390821,
		0.646205, 0.622552, -0.441417,
		34.897869, 37.239174, 39.535656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.210732, 36.676891, 39.133224>,  <34.445526, 36.803391, 39.844646>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.210732, 36.676891, 39.133224> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.545242, 36.888638, 39.076065>,  <34.745949, 37.015686, 39.041767>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.545242, 36.888638, 39.076065>,  <34.210732, 36.676891, 39.133224>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.545242, 36.888638, 39.076065> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230726, -0.576163, -0.784093,
		-0.497405, 0.622745, -0.603967,
		0.836274, 0.529363, -0.142903,
		34.796124, 37.047447, 39.033195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.308868, 36.749050, 38.465416>,  <34.210732, 36.676891, 39.133224>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.308868, 36.749050, 38.465416> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.676849, 36.812347, 38.608887>,  <34.897636, 36.850327, 38.694969>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.676849, 36.812347, 38.608887>,  <34.308868, 36.749050, 38.465416>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.676849, 36.812347, 38.608887> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385575, -0.530560, -0.754876,
		0.070845, 0.832746, -0.549104,
		0.919952, 0.158242, 0.358674,
		34.952835, 36.859821, 38.716488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.763458, 36.852062, 37.907246>,  <34.308868, 36.749050, 38.465416>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.763458, 36.852062, 37.907246> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.029762, 36.785934, 38.198292>,  <35.189545, 36.746258, 38.372921>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.029762, 36.785934, 38.198292>,  <34.763458, 36.852062, 37.907246>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.029762, 36.785934, 38.198292> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592404, -0.475785, -0.650143,
		0.453671, 0.863886, -0.218824,
		0.665763, -0.165319, 0.727619,
		35.229492, 36.736340, 38.416576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.390453, 37.000851, 37.682556>,  <34.763458, 36.852062, 37.907246>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.390453, 37.000851, 37.682556> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.523838, 36.753555, 37.967258>,  <35.603870, 36.605179, 38.138081>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.523838, 36.753555, 37.967258>,  <35.390453, 37.000851, 37.682556>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.523838, 36.753555, 37.967258> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.620721, -0.424256, -0.659327,
		0.709583, 0.661660, 0.242277,
		0.333462, -0.618234, 0.711751,
		35.623878, 36.568085, 38.180782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.084755, 37.130486, 37.652115>,  <35.390453, 37.000851, 37.682556>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.084755, 37.130486, 37.652115> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.019424, 36.773212, 37.819710>,  <35.980225, 36.558849, 37.920269>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.019424, 36.773212, 37.819710>,  <36.084755, 37.130486, 37.652115>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.019424, 36.773212, 37.819710> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597400, -0.427516, -0.678486,
		0.785135, 0.139491, 0.603411,
		-0.163326, -0.893181, 0.418990,
		35.970428, 36.505257, 37.945408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.805691, 36.786396, 37.734112>,  <36.084755, 37.130486, 37.652115>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.805691, 36.786396, 37.734112> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.551083, 36.480591, 37.774845>,  <36.398319, 36.297108, 37.799286>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.551083, 36.480591, 37.774845>,  <36.805691, 36.786396, 37.734112>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.551083, 36.480591, 37.774845> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595168, -0.570866, -0.565586,
		0.490529, -0.299397, 0.818378,
		-0.636519, -0.764508, 0.101835,
		36.360126, 36.251240, 37.805397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.179157, 36.162067, 37.846943>,  <36.805691, 36.786396, 37.734112>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.179157, 36.162067, 37.846943> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.830761, 36.037865, 37.694649>,  <36.621723, 35.963345, 37.603271>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.830761, 36.037865, 37.694649>,  <37.179157, 36.162067, 37.846943>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.830761, 36.037865, 37.694649> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488035, -0.635999, -0.597769,
		-0.056534, -0.706463, 0.705488,
		-0.870991, -0.310508, -0.380734,
		36.569462, 35.944714, 37.580429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.296562, 35.459614, 37.660225>,  <37.179157, 36.162067, 37.846943>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.296562, 35.459614, 37.660225> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.973682, 35.569855, 37.451431>,  <36.779953, 35.635998, 37.326153>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.973682, 35.569855, 37.451431>,  <37.296562, 35.459614, 37.660225>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.973682, 35.569855, 37.451431> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233875, -0.662612, -0.711511,
		-0.541967, -0.696412, 0.470406,
		-0.807201, 0.275599, -0.521987,
		36.731522, 35.652534, 37.294834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.991253, 35.200680, 37.509289>,  <37.296562, 35.459614, 37.660225>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.991253, 35.200680, 37.509289> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.377316, 35.109734, 37.457478>,  <38.608952, 35.055164, 37.426392>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.377316, 35.109734, 37.457478>,  <37.991253, 35.200680, 37.509289>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.377316, 35.109734, 37.457478> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127350, -0.024290, 0.991560,
		-0.228594, -0.973506, 0.005512,
		0.965156, -0.227367, -0.129528,
		38.666862, 35.041523, 37.418617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.032970, 34.691181, 37.878426>,  <37.991253, 35.200680, 37.509289>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.032970, 34.691181, 37.878426> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.402767, 34.834888, 37.827435>,  <38.624645, 34.921112, 37.796841>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.402767, 34.834888, 37.827435>,  <38.032970, 34.691181, 37.878426>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.402767, 34.834888, 37.827435> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153813, -0.045563, 0.987049,
		0.348804, -0.932122, -0.097382,
		0.924487, 0.359266, -0.127480,
		38.680115, 34.942669, 37.789192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.409508, 34.429829, 38.417503>,  <38.032970, 34.691181, 37.878426>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.409508, 34.429829, 38.417503> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.640327, 34.744129, 38.328419>,  <38.778820, 34.932709, 38.274967>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.640327, 34.744129, 38.328419>,  <38.409508, 34.429829, 38.417503>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.640327, 34.744129, 38.328419> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272418, 0.071896, 0.959489,
		0.769936, -0.614344, -0.172566,
		0.577050, 0.785756, -0.222713,
		38.813442, 34.979855, 38.261604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.043835, 34.308331, 38.705284>,  <38.409508, 34.429829, 38.417503>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.043835, 34.308331, 38.705284> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.021278, 34.701595, 38.635750>,  <39.007744, 34.937553, 38.594028>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.021278, 34.701595, 38.635750>,  <39.043835, 34.308331, 38.705284>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.021278, 34.701595, 38.635750> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418203, 0.181359, 0.890064,
		0.906601, -0.022507, -0.421387,
		-0.056390, 0.983159, -0.173833,
		39.004360, 34.996544, 38.583599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.641819, 34.518970, 39.014317>,  <39.043835, 34.308331, 38.705284>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.641819, 34.518970, 39.014317> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.400822, 34.832928, 38.956417>,  <39.256226, 35.021301, 38.921677>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.400822, 34.832928, 38.956417>,  <39.641819, 34.518970, 39.014317>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.400822, 34.832928, 38.956417> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036966, 0.208610, 0.977300,
		0.797271, 0.583461, -0.154700,
		-0.602489, 0.784891, -0.144750,
		39.220074, 35.068394, 38.912991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.933170, 34.980373, 39.555950>,  <39.641819, 34.518970, 39.014317>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.933170, 34.980373, 39.555950> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.565598, 35.101185, 39.454483>,  <39.345055, 35.173672, 39.393604>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.565598, 35.101185, 39.454483>,  <39.933170, 34.980373, 39.555950>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.565598, 35.101185, 39.454483> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168016, 0.282109, 0.944556,
		0.356840, 0.910602, -0.208493,
		-0.918932, 0.302025, -0.253664,
		39.289917, 35.191792, 39.378384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.840084, 35.837814, 39.638458>,  <39.933170, 34.980373, 39.555950>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.840084, 35.837814, 39.638458> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.501091, 35.625603, 39.645527>,  <39.297695, 35.498276, 39.649769>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.501091, 35.625603, 39.645527>,  <39.840084, 35.837814, 39.638458>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.501091, 35.625603, 39.645527> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235912, 0.406260, 0.882779,
		-0.475523, 0.743968, -0.469457,
		-0.847481, -0.530532, 0.017675,
		39.246845, 35.466442, 39.650829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.502014, 36.335606, 39.923748>,  <39.840084, 35.837814, 39.638458>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.502014, 36.335606, 39.923748> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.263371, 36.015106, 39.941853>,  <39.120182, 35.822807, 39.952717>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.263371, 36.015106, 39.941853>,  <39.502014, 36.335606, 39.923748>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.263371, 36.015106, 39.941853> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455346, 0.384416, 0.803047,
		-0.660844, 0.458495, -0.594195,
		-0.596611, -0.801253, 0.045265,
		39.084389, 35.774731, 39.955433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.804558, 36.522469, 39.936291>,  <39.502014, 36.335606, 39.923748>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.804558, 36.522469, 39.936291> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.829319, 36.157276, 40.097603>,  <38.844173, 35.938160, 40.194389>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.829319, 36.157276, 40.097603>,  <38.804558, 36.522469, 39.936291>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.829319, 36.157276, 40.097603> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422617, 0.342068, 0.839276,
		-0.904192, -0.222385, -0.364667,
		0.061901, -0.912981, 0.403278,
		38.847889, 35.883381, 40.218586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.212391, 36.420944, 40.375610>,  <38.804558, 36.522469, 39.936291>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.212391, 36.420944, 40.375610> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.483070, 36.165306, 40.521839>,  <38.645477, 36.011925, 40.609577>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.483070, 36.165306, 40.521839>,  <38.212391, 36.420944, 40.375610>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.483070, 36.165306, 40.521839> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398579, 0.099487, 0.911722,
		-0.619043, -0.762670, -0.187405,
		0.676698, -0.639091, 0.365571,
		38.686081, 35.973579, 40.631512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.827145, 36.053692, 40.940708>,  <38.212391, 36.420944, 40.375610>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.827145, 36.053692, 40.940708> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.215969, 35.983692, 41.003273>,  <38.449265, 35.941692, 41.040810>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.215969, 35.983692, 41.003273>,  <37.827145, 36.053692, 40.940708>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.215969, 35.983692, 41.003273> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138204, 0.111851, 0.984068,
		-0.189708, -0.978194, 0.084541,
		0.972065, -0.175001, 0.156409,
		38.507587, 35.931190, 41.050194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.806129, 35.591797, 41.483921>,  <37.827145, 36.053692, 40.940708>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.806129, 35.591797, 41.483921> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.179020, 35.736507, 41.480633>,  <38.402756, 35.823334, 41.478661>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.179020, 35.736507, 41.480633>,  <37.806129, 35.591797, 41.483921>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.179020, 35.736507, 41.480633> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113253, 0.313252, 0.942893,
		0.343687, -0.878063, 0.332995,
		0.932230, 0.361773, -0.008217,
		38.458687, 35.845039, 41.478168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.168549, 35.431656, 42.224308>,  <37.806129, 35.591797, 41.483921>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.168549, 35.431656, 42.224308> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.364605, 35.741974, 42.065357>,  <38.482239, 35.928165, 41.969986>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.364605, 35.741974, 42.065357>,  <38.168549, 35.431656, 42.224308>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.364605, 35.741974, 42.065357> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021403, 0.466469, 0.884279,
		0.871381, -0.424916, 0.245239,
		0.490141, 0.775792, -0.397377,
		38.511646, 35.974712, 41.946144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.715099, 35.568275, 42.757553>,  <38.168549, 35.431656, 42.224308>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.715099, 35.568275, 42.757553> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.650787, 35.890049, 42.528805>,  <38.612202, 36.083111, 42.391556>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.650787, 35.890049, 42.528805>,  <38.715099, 35.568275, 42.757553>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.650787, 35.890049, 42.528805> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012584, 0.577695, 0.816155,
		0.986910, 0.138418, -0.082759,
		-0.160781, 0.804431, -0.571875,
		38.602554, 36.131378, 42.357243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.142921, 36.019112, 43.050003>,  <38.715099, 35.568275, 42.757553>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.142921, 36.019112, 43.050003> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.875359, 36.221348, 42.832035>,  <38.714821, 36.342690, 42.701252>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.875359, 36.221348, 42.832035>,  <39.142921, 36.019112, 43.050003>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.875359, 36.221348, 42.832035> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004890, 0.736048, 0.676912,
		0.743328, 0.450128, -0.494822,
		-0.668910, 0.505587, -0.544923,
		38.674686, 36.373024, 42.668556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.273697, 36.682968, 43.180576>,  <39.142921, 36.019112, 43.050003>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.273697, 36.682968, 43.180576> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.908722, 36.684921, 43.016903>,  <38.689735, 36.686092, 42.918697>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.908722, 36.684921, 43.016903>,  <39.273697, 36.682968, 43.180576>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.908722, 36.684921, 43.016903> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222292, 0.833622, 0.505628,
		0.343572, 0.552313, -0.759545,
		-0.912439, 0.004879, -0.409184,
		38.634991, 36.686386, 42.894146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.162083, 37.362022, 42.898026>,  <39.273697, 36.682968, 43.180576>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.162083, 37.362022, 42.898026> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.796623, 37.207230, 42.947819>,  <38.577347, 37.114353, 42.977695>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.796623, 37.207230, 42.947819>,  <39.162083, 37.362022, 42.898026>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.796623, 37.207230, 42.947819> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214151, 0.718476, 0.661764,
		-0.345533, 0.577958, -0.739305,
		-0.913645, -0.386984, 0.124487,
		38.522530, 37.091133, 42.985165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.650593, 37.964737, 42.912754>,  <39.162083, 37.362022, 42.898026>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.650593, 37.964737, 42.912754> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.467728, 37.669601, 43.111385>,  <38.358009, 37.492519, 43.230564>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.467728, 37.669601, 43.111385>,  <38.650593, 37.964737, 42.912754>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.467728, 37.669601, 43.111385> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184049, 0.624740, 0.758832,
		-0.870129, 0.255518, -0.421410,
		-0.457166, -0.737842, 0.496577,
		38.330578, 37.448250, 43.260357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<37.986275, 38.293209, 43.188782> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.999249, 37.940910, 43.377773>,  <38.007034, 37.729530, 43.491169>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.999249, 37.940910, 43.377773>,  <37.986275, 38.293209, 43.188782>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.999249, 37.940910, 43.377773> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355316, 0.431682, 0.829096,
		-0.934183, -0.194768, -0.298943,
		0.032433, -0.880747, 0.472475,
		38.008980, 37.676685, 43.519516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.366356, 38.240276, 43.704826>,  <37.986275, 38.293209, 43.188782>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.366356, 38.240276, 43.704826> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.600014, 37.956963, 43.863373>,  <37.740208, 37.786976, 43.958500>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.600014, 37.956963, 43.863373>,  <37.366356, 38.240276, 43.704826>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.600014, 37.956963, 43.863373> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223357, 0.329210, 0.917460,
		-0.780310, -0.624462, 0.034107,
		0.584147, -0.708285, 0.396364,
		37.775257, 37.744476, 43.982281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.984177, 37.926338, 44.304398>,  <37.366356, 38.240276, 43.704826>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.984177, 37.926338, 44.304398> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.374088, 37.844246, 44.339470>,  <37.608036, 37.794991, 44.360512>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.374088, 37.844246, 44.339470>,  <36.984177, 37.926338, 44.304398>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.374088, 37.844246, 44.339470> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005881, 0.369119, 0.929363,
		-0.223098, -0.906439, 0.358602,
		0.974778, -0.205231, 0.087680,
		37.666523, 37.782677, 44.365772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.982613, 37.591923, 44.953072>,  <36.984177, 37.926338, 44.304398>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.982613, 37.591923, 44.953072> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.354275, 37.716988, 44.874165>,  <37.577271, 37.792027, 44.826820>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.354275, 37.716988, 44.874165>,  <36.982613, 37.591923, 44.953072>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.354275, 37.716988, 44.874165> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007261, 0.548928, 0.835838,
		0.369622, -0.775190, 0.512309,
		0.929154, 0.312664, -0.197267,
		37.633022, 37.810787, 44.814983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.444263, 37.395573, 45.534550>,  <36.982613, 37.591923, 44.953072>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.444263, 37.395573, 45.534550> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.615025, 37.705639, 45.348270>,  <37.717480, 37.891678, 45.236504>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.615025, 37.705639, 45.348270>,  <37.444263, 37.395573, 45.534550>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.615025, 37.705639, 45.348270> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045458, 0.532731, 0.845063,
		0.903156, -0.339586, 0.262659,
		0.426899, 0.775164, -0.465702,
		37.743095, 37.938187, 45.208561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.060295, 37.660446, 45.867596>,  <37.444263, 37.395573, 45.534550>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.060295, 37.660446, 45.867596> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.914375, 37.982391, 45.680355>,  <37.826824, 38.175556, 45.568012>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.914375, 37.982391, 45.680355>,  <38.060295, 37.660446, 45.867596>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.914375, 37.982391, 45.680355> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089501, 0.530734, 0.842799,
		0.926774, 0.265558, -0.265648,
		-0.364801, 0.804861, -0.468103,
		37.804935, 38.223850, 45.539925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.574287, 38.213013, 46.047050>,  <38.060295, 37.660446, 45.867596>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.574287, 38.213013, 46.047050> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.258244, 38.419815, 45.915337>,  <38.068619, 38.543896, 45.836308>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.258244, 38.419815, 45.915337>,  <38.574287, 38.213013, 46.047050>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.258244, 38.419815, 45.915337> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089596, 0.628841, 0.772354,
		0.606385, 0.580740, -0.543174,
		-0.790107, 0.517010, -0.329288,
		38.021210, 38.574917, 45.816551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.765800, 38.936192, 46.191097>,  <38.574287, 38.213013, 46.047050>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.765800, 38.936192, 46.191097> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.373421, 38.960461, 46.117287>,  <38.137993, 38.975021, 46.072998>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.373421, 38.960461, 46.117287>,  <38.765800, 38.936192, 46.191097>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.373421, 38.960461, 46.117287> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078888, 0.743666, 0.663880,
		0.177510, 0.665792, -0.724715,
		-0.980952, 0.060674, -0.184531,
		38.079136, 38.978664, 46.061928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.602657, 39.571316, 45.968979>,  <38.765800, 38.936192, 46.191097>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.602657, 39.571316, 45.968979> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.284256, 39.408207, 46.147911>,  <38.093216, 39.310341, 46.255268>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.284256, 39.408207, 46.147911>,  <38.602657, 39.571316, 45.968979>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.284256, 39.408207, 46.147911> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128826, 0.607964, 0.783443,
		-0.591421, 0.681252, -0.431412,
		-0.796006, -0.407768, 0.447326,
		38.045456, 39.285877, 46.282108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.297882, 40.134148, 46.145908>,  <38.602657, 39.571316, 45.968979>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.297882, 40.134148, 46.145908> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.137993, 39.831528, 46.352928>,  <38.042061, 39.649956, 46.477142>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.137993, 39.831528, 46.352928>,  <38.297882, 40.134148, 46.145908>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.137993, 39.831528, 46.352928> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119452, 0.602799, 0.788901,
		-0.908819, 0.253519, -0.331324,
		-0.399723, -0.756546, 0.517552,
		38.018078, 39.604565, 46.508194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.989414, 40.515339, 46.606621>,  <38.297882, 40.134148, 46.145908>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.989414, 40.515339, 46.606621> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.993565, 40.147495, 46.763702>,  <37.996056, 39.926788, 46.857952>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.993565, 40.147495, 46.763702>,  <37.989414, 40.515339, 46.606621>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.993565, 40.147495, 46.763702> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094310, 0.390077, 0.915940,
		-0.995489, -0.046543, -0.082680,
		0.010380, -0.919605, 0.392706,
		37.996677, 39.871613, 46.881516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.449135, 40.491676, 47.117279>,  <37.989414, 40.515339, 46.606621>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.449135, 40.491676, 47.117279> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.696026, 40.198204, 47.230938>,  <37.844162, 40.022121, 47.299133>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.696026, 40.198204, 47.230938>,  <37.449135, 40.491676, 47.117279>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.696026, 40.198204, 47.230938> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005347, 0.357230, 0.934001,
		-0.786766, -0.578011, 0.216570,
		0.617229, -0.733682, 0.284147,
		37.881195, 39.978100, 47.316181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.233475, 40.361610, 47.795975>,  <37.449135, 40.491676, 47.117279>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.233475, 40.361610, 47.795975> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.595142, 40.198071, 47.746479>,  <37.812145, 40.099945, 47.716782>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.595142, 40.198071, 47.746479>,  <37.233475, 40.361610, 47.795975>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.595142, 40.198071, 47.746479> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172584, 0.084671, 0.981349,
		-0.390749, -0.908664, 0.147118,
		0.904173, -0.408852, -0.123736,
		37.866394, 40.075417, 47.709358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.235119, 39.847004, 48.266121>,  <37.233475, 40.361610, 47.795975>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.235119, 39.847004, 48.266121> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.620213, 39.915646, 48.182503>,  <37.851269, 39.956829, 48.132332>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.620213, 39.915646, 48.182503>,  <37.235119, 39.847004, 48.266121>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.620213, 39.915646, 48.182503> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191124, 0.115201, 0.974782,
		0.191357, -0.978407, 0.078110,
		0.962732, 0.171603, -0.209042,
		37.909031, 39.967125, 48.119789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.704811, 39.772446, 48.961891>,  <37.235119, 39.847004, 48.266121>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.704811, 39.772446, 48.961891> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.955109, 39.958656, 48.711540>,  <38.105289, 40.070381, 48.561329>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.955109, 39.958656, 48.711540>,  <37.704811, 39.772446, 48.961891>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.955109, 39.958656, 48.711540> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.665232, 0.100500, 0.739842,
		0.407317, -0.879310, -0.246794,
		0.625748, 0.465525, -0.625880,
		38.142834, 40.098312, 48.523777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.291992, 39.492241, 49.039173>,  <37.704811, 39.772446, 48.961891>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.291992, 39.492241, 49.039173> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.345341, 39.865696, 48.906181>,  <38.377350, 40.089767, 48.826385>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.345341, 39.865696, 48.906181>,  <38.291992, 39.492241, 49.039173>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.345341, 39.865696, 48.906181> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464306, 0.237520, 0.853231,
		0.875575, -0.268165, -0.401814,
		0.133368, 0.933634, -0.332477,
		38.385349, 40.145786, 48.806438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.995350, 39.604748, 49.222298>,  <38.291992, 39.492241, 49.039173>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.995350, 39.604748, 49.222298> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.852329, 39.967491, 49.133072>,  <38.766518, 40.185139, 49.079536>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.852329, 39.967491, 49.133072>,  <38.995350, 39.604748, 49.222298>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.852329, 39.967491, 49.133072> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489160, 0.385331, 0.782460,
		0.795537, 0.170655, -0.581376,
		-0.357553, 0.906861, -0.223067,
		38.745064, 40.239548, 49.066151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.486702, 40.180931, 49.484341>,  <38.995350, 39.604748, 49.222298>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.486702, 40.180931, 49.484341> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.120743, 40.340393, 49.458931>,  <38.901169, 40.436069, 49.443684>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.120743, 40.340393, 49.458931>,  <39.486702, 40.180931, 49.484341>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.120743, 40.340393, 49.458931> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111271, 0.400307, 0.909600,
		0.388051, 0.825121, -0.410599,
		-0.914896, 0.398659, -0.063528,
		38.846275, 40.459991, 49.439873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.458675, 40.815037, 49.864025>,  <39.486702, 40.180931, 49.484341>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.458675, 40.815037, 49.864025> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.060326, 40.785400, 49.843044>,  <38.821316, 40.767616, 49.830456>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.060326, 40.785400, 49.843044>,  <39.458675, 40.815037, 49.864025>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.060326, 40.785400, 49.843044> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067886, 0.224234, 0.972168,
		-0.060271, 0.971715, -0.228338,
		-0.995871, -0.074094, -0.052451,
		38.761566, 40.763172, 49.827309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.277405, 41.396664, 50.239513>,  <39.458675, 40.815037, 49.864025>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.277405, 41.396664, 50.239513> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.984009, 41.125149, 50.225445>,  <38.807972, 40.962238, 50.217003>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.984009, 41.125149, 50.225445>,  <39.277405, 41.396664, 50.239513>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.984009, 41.125149, 50.225445> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052348, 0.004820, 0.998617,
		-0.677683, 0.734316, -0.039069,
		-0.733489, -0.678791, -0.035173,
		38.763962, 40.921513, 50.214893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.823025, 41.629608, 50.748386>,  <39.277405, 41.396664, 50.239513>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.823025, 41.629608, 50.748386> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.730881, 41.246216, 50.681149>,  <38.675594, 41.016182, 50.640808>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.730881, 41.246216, 50.681149>,  <38.823025, 41.629608, 50.748386>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.730881, 41.246216, 50.681149> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152566, -0.135029, 0.979025,
		-0.961072, 0.251169, -0.115127,
		-0.230356, -0.958479, -0.168092,
		38.661774, 40.958672, 50.630722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.036465, 41.534676, 50.959797>,  <38.823025, 41.629608, 50.748386>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.036465, 41.534676, 50.959797> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.260536, 41.210396, 51.027874>,  <38.394978, 41.015827, 51.068718>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.260536, 41.210396, 51.027874>,  <38.036465, 41.534676, 50.959797>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.260536, 41.210396, 51.027874> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420957, -0.101649, 0.901367,
		-0.713439, -0.576570, -0.398212,
		0.560179, -0.810700, 0.170190,
		38.428589, 40.967186, 51.078930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.548893, 40.927521, 51.329094>,  <38.036465, 41.534676, 50.959797>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.548893, 40.927521, 51.329094> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.937794, 40.940399, 51.421780>,  <38.171135, 40.948128, 51.477390>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.937794, 40.940399, 51.421780>,  <37.548893, 40.927521, 51.329094>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.937794, 40.940399, 51.421780> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226048, -0.125873, 0.965949,
		0.060268, -0.991524, -0.115102,
		0.972250, 0.032197, 0.231718,
		38.229469, 40.950058, 51.491295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.994312, 41.129227, 51.794144>,  <37.548893, 40.927521, 51.329094>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.994312, 41.129227, 51.794144> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.666275, 41.140560, 52.022755>,  <36.469452, 41.147362, 52.159920>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.666275, 41.140560, 52.022755>,  <36.994312, 41.129227, 51.794144>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.666275, 41.140560, 52.022755> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564106, -0.207698, -0.799153,
		0.096061, -0.977783, 0.186316,
		-0.820096, 0.028334, 0.571524,
		36.420246, 41.149059, 52.194210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.610512, 40.516224, 51.765518>,  <36.994312, 41.129227, 51.794144>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.610512, 40.516224, 51.765518> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.354805, 40.812313, 51.848862>,  <36.201382, 40.989967, 51.898869>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.354805, 40.812313, 51.848862>,  <36.610512, 40.516224, 51.765518>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.354805, 40.812313, 51.848862> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506737, -0.201692, -0.838175,
		-0.578411, -0.641399, 0.504032,
		-0.639264, 0.740222, 0.208359,
		36.163025, 41.034378, 51.911369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.966328, 40.164791, 51.658215>,  <36.610512, 40.516224, 51.765518>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.966328, 40.164791, 51.658215> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.874916, 40.552082, 51.617611>,  <35.820068, 40.784458, 51.593250>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.874916, 40.552082, 51.617611>,  <35.966328, 40.164791, 51.658215>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.874916, 40.552082, 51.617611> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482142, -0.203141, -0.852216,
		-0.845764, -0.145811, 0.513248,
		-0.228524, 0.968232, -0.101508,
		35.806358, 40.842552, 51.587158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.231316, 40.220264, 51.649147>,  <35.966328, 40.164791, 51.658215>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.231316, 40.220264, 51.649147> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.373734, 40.544903, 51.463871>,  <35.459183, 40.739685, 51.352707>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.373734, 40.544903, 51.463871>,  <35.231316, 40.220264, 51.649147>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.373734, 40.544903, 51.463871> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535114, -0.229281, -0.813070,
		-0.766086, 0.537345, 0.352664,
		0.356040, 0.811597, -0.463190,
		35.480545, 40.788383, 51.324913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.524323, 40.644314, 51.414219>,  <35.231316, 40.220264, 51.649147>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.524323, 40.644314, 51.414219> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.822491, 40.781414, 51.185528>,  <35.001392, 40.863674, 51.048313>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.822491, 40.781414, 51.185528>,  <34.524323, 40.644314, 51.414219>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.822491, 40.781414, 51.185528> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540937, -0.190164, -0.819283,
		-0.389532, 0.919978, 0.043655,
		0.745421, 0.342752, -0.571725,
		35.046116, 40.884239, 51.014011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.251225, 41.049507, 50.807961>,  <34.524323, 40.644314, 51.414219>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.251225, 41.049507, 50.807961> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.621658, 40.941097, 50.702953>,  <34.843918, 40.876049, 50.639950>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.621658, 40.941097, 50.702953>,  <34.251225, 41.049507, 50.807961>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.621658, 40.941097, 50.702953> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317412, -0.183382, -0.930387,
		0.204020, 0.944941, -0.255855,
		0.926080, -0.271029, -0.262523,
		34.899483, 40.859787, 50.624195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.294796, 41.347969, 50.132824>,  <34.251225, 41.049507, 50.807961>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.294796, 41.347969, 50.132824> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.580536, 41.068726, 50.152184>,  <34.751980, 40.901180, 50.163799>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.580536, 41.068726, 50.152184>,  <34.294796, 41.347969, 50.132824>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.580536, 41.068726, 50.152184> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160558, -0.230830, -0.959655,
		0.681119, 0.677760, -0.276982,
		0.714352, -0.698111, 0.048403,
		34.794842, 40.859291, 50.166706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.719810, 41.485157, 49.545322>,  <34.294796, 41.347969, 50.132824>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.719810, 41.485157, 49.545322> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.879074, 41.133831, 49.651184>,  <34.974632, 40.923035, 49.714699>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.879074, 41.133831, 49.651184>,  <34.719810, 41.485157, 49.545322>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.879074, 41.133831, 49.651184> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094687, -0.247612, -0.964221,
		0.912417, 0.408970, -0.015424,
		0.398157, -0.878312, 0.264650,
		34.998520, 40.870338, 49.730579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.363621, 41.433201, 49.201214>,  <34.719810, 41.485157, 49.545322>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.363621, 41.433201, 49.201214> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.240429, 41.060863, 49.279873>,  <35.166512, 40.837460, 49.327068>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.240429, 41.060863, 49.279873>,  <35.363621, 41.433201, 49.201214>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.240429, 41.060863, 49.279873> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123515, -0.244064, -0.961861,
		0.943340, -0.271948, 0.190141,
		-0.307982, -0.930848, 0.196646,
		35.148033, 40.781609, 49.338867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.783062, 40.975857, 48.826370>,  <35.363621, 41.433201, 49.201214>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.783062, 40.975857, 48.826370> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.455696, 40.756714, 48.895714>,  <35.259277, 40.625229, 48.937321>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.455696, 40.756714, 48.895714>,  <35.783062, 40.975857, 48.826370>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.455696, 40.756714, 48.895714> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059515, -0.380879, -0.922707,
		0.571544, -0.744836, 0.344322,
		-0.818410, -0.547860, 0.173360,
		35.210175, 40.592358, 48.947723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.035374, 40.354198, 48.903381>,  <35.783062, 40.975857, 48.826370>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.035374, 40.354198, 48.903381> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.653728, 40.286961, 48.804260>,  <35.424740, 40.246616, 48.744785>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.653728, 40.286961, 48.804260>,  <36.035374, 40.354198, 48.903381>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.653728, 40.286961, 48.804260> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296642, -0.417723, -0.858785,
		0.040846, -0.892889, 0.448421,
		-0.954115, -0.168099, -0.247806,
		35.367493, 40.236530, 48.729919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.996178, 39.608776, 48.612358>,  <36.035374, 40.354198, 48.903381>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.996178, 39.608776, 48.612358> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.647076, 39.760170, 48.489033>,  <35.437614, 39.851006, 48.415039>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.647076, 39.760170, 48.489033>,  <35.996178, 39.608776, 48.612358>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.647076, 39.760170, 48.489033> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131706, -0.425588, -0.895281,
		-0.470063, -0.821964, 0.321584,
		-0.872751, 0.378484, -0.308311,
		35.385250, 39.873714, 48.396542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.645927, 39.056862, 48.196171>,  <35.996178, 39.608776, 48.612358>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.645927, 39.056862, 48.196171> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.525307, 39.417774, 48.072914>,  <35.452934, 39.634323, 47.998959>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.525307, 39.417774, 48.072914>,  <35.645927, 39.056862, 48.196171>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.525307, 39.417774, 48.072914> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079536, -0.298259, -0.951165,
		-0.950127, -0.311333, 0.018176,
		-0.301550, 0.902282, -0.308146,
		35.434841, 39.688457, 47.980469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.086952, 38.934177, 47.652184>,  <35.645927, 39.056862, 48.196171>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.086952, 38.934177, 47.652184> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.239483, 39.294361, 47.568504>,  <35.331001, 39.510471, 47.518295>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.239483, 39.294361, 47.568504>,  <35.086952, 38.934177, 47.652184>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.239483, 39.294361, 47.568504> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008357, -0.229644, -0.973239,
		-0.924404, 0.369369, -0.095093,
		0.381322, 0.900461, -0.209197,
		35.353878, 39.564499, 47.505745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.753532, 39.042263, 47.082619>,  <35.086952, 38.934177, 47.652184>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.753532, 39.042263, 47.082619> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.035851, 39.325310, 47.096016>,  <35.205242, 39.495140, 47.104053>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.035851, 39.325310, 47.096016>,  <34.753532, 39.042263, 47.082619>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.035851, 39.325310, 47.096016> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140525, -0.093512, -0.985651,
		-0.694334, 0.700379, -0.165439,
		0.705800, 0.707619, 0.033492,
		35.247589, 39.537594, 47.106064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.461727, 39.491749, 46.556355>,  <34.753532, 39.042263, 47.082619>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.461727, 39.491749, 46.556355> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.852352, 39.569206, 46.593922>,  <35.086727, 39.615681, 46.616463>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.852352, 39.569206, 46.593922>,  <34.461727, 39.491749, 46.556355>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.852352, 39.569206, 46.593922> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093620, 0.010694, -0.995551,
		-0.193789, 0.981013, -0.007686,
		0.976566, 0.193646, 0.093915,
		35.145321, 39.627300, 46.622097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.600452, 40.047459, 46.168953>,  <34.461727, 39.491749, 46.556355>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.600452, 40.047459, 46.168953> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.963818, 39.883404, 46.201397>,  <35.181835, 39.784973, 46.220863>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.963818, 39.883404, 46.201397>,  <34.600452, 40.047459, 46.168953>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.963818, 39.883404, 46.201397> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122298, 0.075151, -0.989644,
		0.399791, 0.908924, 0.118427,
		0.908411, -0.410134, 0.081115,
		35.236340, 39.760365, 46.225731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.131954, 40.463562, 45.644588>,  <34.600452, 40.047459, 46.168953>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.131954, 40.463562, 45.644588> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.274406, 40.099178, 45.727848>,  <35.359879, 39.880550, 45.777805>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.274406, 40.099178, 45.727848>,  <35.131954, 40.463562, 45.644588>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.274406, 40.099178, 45.727848> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276463, -0.110065, -0.954701,
		0.892601, 0.397547, 0.212648,
		0.356133, -0.910957, 0.208151,
		35.381245, 39.825890, 45.790295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.725727, 40.486897, 45.226418>,  <35.131954, 40.463562, 45.644588>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.725727, 40.486897, 45.226418> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.626114, 40.106976, 45.302155>,  <35.566345, 39.879021, 45.347595>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.626114, 40.106976, 45.302155>,  <35.725727, 40.486897, 45.226418>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.626114, 40.106976, 45.302155> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077202, -0.214349, -0.973701,
		0.965413, -0.227866, 0.126707,
		-0.249033, -0.949806, 0.189343,
		35.551403, 39.822033, 45.358959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.231377, 40.124603, 44.747494>,  <35.725727, 40.486897, 45.226418>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.231377, 40.124603, 44.747494> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.961277, 39.847431, 44.848598>,  <35.799217, 39.681129, 44.909260>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.961277, 39.847431, 44.848598>,  <36.231377, 40.124603, 44.747494>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.961277, 39.847431, 44.848598> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150460, -0.464886, -0.872492,
		0.722079, -0.551121, 0.418173,
		-0.675251, -0.692926, 0.252762,
		35.758701, 39.639553, 44.924427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.597786, 39.423302, 44.665623>,  <36.231377, 40.124603, 44.747494>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.597786, 39.423302, 44.665623> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.200832, 39.380581, 44.641045>,  <35.962662, 39.354950, 44.626297>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.200832, 39.380581, 44.641045>,  <36.597786, 39.423302, 44.665623>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.200832, 39.380581, 44.641045> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106757, -0.496338, -0.861540,
		0.061517, -0.861535, 0.503957,
		-0.992380, -0.106800, -0.061442,
		35.903118, 39.348541, 44.622612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<46.151543, 31.221598, 44.713520> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.755459, 31.236921, 44.659832>,  <45.517807, 31.246115, 44.627617>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.755459, 31.236921, 44.659832>,  <46.151543, 31.221598, 44.713520>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.755459, 31.236921, 44.659832> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130443, -0.088297, -0.987516,
		-0.049675, -0.995358, 0.082436,
		-0.990211, 0.038301, -0.134223,
		45.458397, 31.248413, 44.619564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.913490, 30.768764, 44.142494>,  <46.151543, 31.221598, 44.713520>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.913490, 30.768764, 44.142494> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.612751, 31.031088, 44.169743>,  <45.432308, 31.188482, 44.186092>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.612751, 31.031088, 44.169743>,  <45.913490, 30.768764, 44.142494>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.612751, 31.031088, 44.169743> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169259, -0.092122, -0.981257,
		-0.637243, -0.749284, 0.180263,
		-0.751846, 0.655810, 0.068119,
		45.387196, 31.227831, 44.190178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.618862, 30.551916, 43.687126>,  <45.913490, 30.768764, 44.142494>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.618862, 30.551916, 43.687126> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.480915, 30.926132, 43.717670>,  <45.398148, 31.150661, 43.735996>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.480915, 30.926132, 43.717670>,  <45.618862, 30.551916, 43.687126>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.480915, 30.926132, 43.717670> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114966, 0.038642, -0.992618,
		-0.931585, -0.351099, 0.094229,
		-0.344866, 0.935541, 0.076363,
		45.377457, 31.206795, 43.740578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.908112, 30.527813, 43.370049>,  <45.618862, 30.551916, 43.687126>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.908112, 30.527813, 43.370049> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.068871, 30.894070, 43.366428>,  <45.165325, 31.113823, 43.364258>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.068871, 30.894070, 43.366428>,  <44.908112, 30.527813, 43.370049>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.068871, 30.894070, 43.366428> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199733, 0.078014, -0.976740,
		-0.893637, 0.394354, 0.214237,
		0.401895, 0.915641, -0.009049,
		45.189438, 31.168762, 43.363712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.427464, 31.029087, 43.081165>,  <44.908112, 30.527813, 43.370049>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.427464, 31.029087, 43.081165> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.775990, 31.221601, 43.042854>,  <44.985107, 31.337111, 43.019867>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.775990, 31.221601, 43.042854>,  <44.427464, 31.029087, 43.081165>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.775990, 31.221601, 43.042854> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177925, 0.127958, -0.975689,
		-0.457329, 0.867175, 0.197124,
		0.871317, 0.481284, -0.095773,
		45.037384, 31.365986, 43.014122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.295479, 31.630245, 42.722630>,  <44.427464, 31.029087, 43.081165>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.295479, 31.630245, 42.722630> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.689957, 31.584990, 42.674274>,  <44.926643, 31.557837, 42.645260>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.689957, 31.584990, 42.674274>,  <44.295479, 31.630245, 42.722630>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.689957, 31.584990, 42.674274> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076392, 0.336845, -0.938456,
		0.146898, 0.934738, 0.323552,
		0.986197, -0.113141, -0.120888,
		44.985817, 31.551046, 42.638008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.399307, 32.255135, 42.500961>,  <44.295479, 31.630245, 42.722630>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.399307, 32.255135, 42.500961> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.689270, 32.011280, 42.372684>,  <44.863247, 31.864967, 42.295719>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.689270, 32.011280, 42.372684>,  <44.399307, 32.255135, 42.500961>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.689270, 32.011280, 42.372684> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155328, 0.308900, -0.938325,
		0.671103, 0.730014, 0.129231,
		0.724910, -0.609639, -0.320695,
		44.906742, 31.828388, 42.276478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.727058, 32.583282, 42.061020>,  <44.399307, 32.255135, 42.500961>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.727058, 32.583282, 42.061020> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.861668, 32.214802, 41.982895>,  <44.942432, 31.993715, 41.936020>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.861668, 32.214802, 41.982895>,  <44.727058, 32.583282, 42.061020>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.861668, 32.214802, 41.982895> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020608, 0.200155, -0.979547,
		0.941449, 0.333666, 0.048373,
		0.336524, -0.921198, -0.195311,
		44.962624, 31.938442, 41.924301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.262745, 32.693535, 41.561020>,  <44.727058, 32.583282, 42.061020>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.262745, 32.693535, 41.561020> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.143524, 32.312340, 41.539165>,  <45.071991, 32.083622, 41.526051>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.143524, 32.312340, 41.539165>,  <45.262745, 32.693535, 41.561020>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.143524, 32.312340, 41.539165> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147804, 0.102624, -0.983678,
		0.943037, -0.285111, -0.171443,
		-0.298052, -0.952985, -0.054638,
		45.054108, 32.026443, 41.522774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.615147, 32.446651, 40.957298>,  <45.262745, 32.693535, 41.561020>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.615147, 32.446651, 40.957298> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.318871, 32.184345, 41.015743>,  <45.141106, 32.026962, 41.050812>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.318871, 32.184345, 41.015743>,  <45.615147, 32.446651, 40.957298>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.318871, 32.184345, 41.015743> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256265, 0.074721, -0.963714,
		0.621056, -0.751255, -0.223395,
		-0.740687, -0.655769, 0.146115,
		45.096664, 31.987616, 41.059578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.636967, 31.800549, 40.418228>,  <45.615147, 32.446651, 40.957298>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.636967, 31.800549, 40.418228> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.263710, 31.862141, 40.548176>,  <45.039757, 31.899096, 40.626144>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.263710, 31.862141, 40.548176>,  <45.636967, 31.800549, 40.418228>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.263710, 31.862141, 40.548176> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329146, -0.002441, -0.944276,
		-0.144610, -0.988070, 0.052960,
		-0.933140, 0.153983, 0.324866,
		44.983768, 31.908335, 40.645638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.323765, 31.372696, 40.070438>,  <45.636967, 31.800549, 40.418228>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.323765, 31.372696, 40.070438> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.027542, 31.617914, 40.180531>,  <44.849808, 31.765045, 40.246586>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.027542, 31.617914, 40.180531>,  <45.323765, 31.372696, 40.070438>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.027542, 31.617914, 40.180531> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305097, 0.058201, -0.950541,
		-0.598745, -0.787900, 0.143937,
		-0.740554, 0.613046, 0.275234,
		44.805374, 31.801828, 40.263100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.780178, 31.096645, 39.678787>,  <45.323765, 31.372696, 40.070438>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.780178, 31.096645, 39.678787> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.631069, 31.450851, 39.789719>,  <44.541603, 31.663374, 39.856277>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.631069, 31.450851, 39.789719>,  <44.780178, 31.096645, 39.678787>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.631069, 31.450851, 39.789719> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296718, 0.169424, -0.939816,
		-0.879206, -0.432620, 0.199592,
		-0.372768, 0.885514, 0.277325,
		44.519238, 31.716505, 39.872917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.053608, 31.178703, 39.334370>,  <44.780178, 31.096645, 39.678787>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.053608, 31.178703, 39.334370> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.169384, 31.547915, 39.435757>,  <44.238850, 31.769442, 39.496590>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.169384, 31.547915, 39.435757>,  <44.053608, 31.178703, 39.334370>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.169384, 31.547915, 39.435757> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207834, 0.319089, -0.924655,
		-0.934360, 0.214953, 0.284194,
		0.289441, 0.923026, 0.253469,
		44.256218, 31.824821, 39.511799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.549358, 31.627605, 39.273346>,  <44.053608, 31.178703, 39.334370>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.549358, 31.627605, 39.273346> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.829113, 31.912708, 39.294670>,  <43.996964, 32.083771, 39.307465>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.829113, 31.912708, 39.294670>,  <43.549358, 31.627605, 39.273346>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.829113, 31.912708, 39.294670> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485650, 0.528611, -0.696214,
		-0.524410, 0.461032, 0.715852,
		0.699384, 0.712755, 0.053309,
		44.038929, 32.126534, 39.310661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.166374, 32.252396, 39.360100>,  <43.549358, 31.627605, 39.273346>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.166374, 32.252396, 39.360100> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.523106, 32.303261, 39.186447>,  <43.737144, 32.333778, 39.082256>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.523106, 32.303261, 39.186447>,  <43.166374, 32.252396, 39.360100>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.523106, 32.303261, 39.186447> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420630, 0.586248, -0.692376,
		0.166468, 0.800090, 0.576320,
		0.891829, 0.127159, -0.434133,
		43.790653, 32.341408, 39.056206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.179146, 32.999374, 39.213829>,  <43.166374, 32.252396, 39.360100>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.179146, 32.999374, 39.213829> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.450020, 32.815674, 38.983871>,  <43.612545, 32.705452, 38.845898>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.450020, 32.815674, 38.983871>,  <43.179146, 32.999374, 39.213829>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.450020, 32.815674, 38.983871> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290823, 0.550641, -0.782443,
		0.675902, 0.697051, 0.239324,
		0.677185, -0.459254, -0.574897,
		43.653175, 32.677898, 38.811401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.368202, 33.503010, 38.772102>,  <43.179146, 32.999374, 39.213829>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.368202, 33.503010, 38.772102> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.473022, 33.170086, 38.576721>,  <43.535915, 32.970333, 38.459492>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.473022, 33.170086, 38.576721>,  <43.368202, 33.503010, 38.772102>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.473022, 33.170086, 38.576721> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363146, 0.383897, -0.848969,
		0.894122, 0.399856, -0.201648,
		0.262053, -0.832309, -0.488457,
		43.551640, 32.920395, 38.430183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.234638, 33.718735, 38.077362>,  <43.368202, 33.503010, 38.772102>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.234638, 33.718735, 38.077362> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.317879, 33.332127, 38.017334>,  <43.367825, 33.100163, 37.981316>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.317879, 33.332127, 38.017334>,  <43.234638, 33.718735, 38.077362>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.317879, 33.332127, 38.017334> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333112, 0.074227, -0.939961,
		0.919635, 0.245602, -0.306514,
		0.208105, -0.966525, -0.150075,
		43.380310, 33.042168, 37.972313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.603168, 33.731773, 37.423210>,  <43.234638, 33.718735, 38.077362>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.603168, 33.731773, 37.423210> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.466602, 33.360363, 37.481548>,  <43.384663, 33.137516, 37.516552>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.466602, 33.360363, 37.481548>,  <43.603168, 33.731773, 37.423210>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.466602, 33.360363, 37.481548> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347874, -0.019316, -0.937342,
		0.873167, -0.370756, -0.316417,
		-0.341413, -0.928529, 0.145843,
		43.364178, 33.081802, 37.525303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.739723, 33.417210, 36.737320>,  <43.603168, 33.731773, 37.423210>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.739723, 33.417210, 36.737320> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.466026, 33.189674, 36.919857>,  <43.301807, 33.053154, 37.029377>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.466026, 33.189674, 36.919857>,  <43.739723, 33.417210, 36.737320>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.466026, 33.189674, 36.919857> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459003, -0.150334, -0.875623,
		0.566688, -0.808596, -0.158232,
		-0.684238, -0.568834, 0.456340,
		43.260754, 33.019024, 37.056759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.278004, 33.252537, 36.275810>,  <43.739723, 33.417210, 36.737320>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.278004, 33.252537, 36.275810> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.494339, 33.393013, 35.970089>,  <44.624138, 33.477299, 35.786655>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.494339, 33.393013, 35.970089>,  <44.278004, 33.252537, 36.275810>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.494339, 33.393013, 35.970089> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.809343, 0.030163, 0.586561,
		0.229046, -0.935819, -0.267918,
		0.540833, 0.351187, -0.764308,
		44.656590, 33.498371, 35.740795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.949646, 32.920280, 36.248394>,  <44.278004, 33.252537, 36.275810>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.949646, 32.920280, 36.248394> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.021839, 33.257118, 36.045097>,  <45.065155, 33.459221, 35.923119>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.021839, 33.257118, 36.045097>,  <44.949646, 32.920280, 36.248394>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.021839, 33.257118, 36.045097> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.798572, 0.176199, 0.575531,
		0.574201, -0.509740, -0.640670,
		0.180486, 0.842092, -0.508238,
		45.075985, 33.509747, 35.892628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.704319, 32.989941, 36.066357>,  <44.949646, 32.920280, 36.248394>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.704319, 32.989941, 36.066357> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.553276, 33.360313, 36.063232>,  <45.462650, 33.582539, 36.061356>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.553276, 33.360313, 36.063232>,  <45.704319, 32.989941, 36.066357>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.553276, 33.360313, 36.063232> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.648288, 0.270384, 0.711769,
		0.661164, 0.263701, -0.702370,
		-0.377603, 0.925934, -0.007814,
		45.439995, 33.638092, 36.060886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.266567, 33.389507, 36.325474>,  <45.704319, 32.989941, 36.066357>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.266567, 33.389507, 36.325474> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.964767, 33.648911, 36.365810>,  <45.783688, 33.804554, 36.390011>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.964767, 33.648911, 36.365810>,  <46.266567, 33.389507, 36.325474>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.964767, 33.648911, 36.365810> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370550, 0.294115, 0.881016,
		0.541686, 0.702093, -0.462214,
		-0.754499, 0.648508, 0.100842,
		45.738419, 33.843464, 36.396065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.590012, 33.807926, 36.649632>,  <46.266567, 33.389507, 36.325474>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.590012, 33.807926, 36.649632> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.209702, 33.907944, 36.722847>,  <45.981514, 33.967953, 36.766777>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.209702, 33.907944, 36.722847>,  <46.590012, 33.807926, 36.649632>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.209702, 33.907944, 36.722847> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255404, 0.297840, 0.919815,
		0.175478, 0.921287, -0.347041,
		-0.950777, 0.250043, 0.183036,
		45.924469, 33.982956, 36.777760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.633526, 34.429680, 36.998322>,  <46.590012, 33.807926, 36.649632>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.633526, 34.429680, 36.998322> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.260906, 34.302162, 37.068275>,  <46.037334, 34.225651, 37.110249>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.260906, 34.302162, 37.068275>,  <46.633526, 34.429680, 36.998322>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.260906, 34.302162, 37.068275> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066536, 0.323389, 0.943924,
		-0.357471, 0.890949, -0.280042,
		-0.931551, -0.318793, 0.174882,
		45.981441, 34.206524, 37.120739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.248230, 35.025036, 37.354847>,  <46.633526, 34.429680, 36.998322>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.248230, 35.025036, 37.354847> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.087917, 34.677452, 37.470978>,  <45.991730, 34.468903, 37.540657>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.087917, 34.677452, 37.470978>,  <46.248230, 35.025036, 37.354847>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.087917, 34.677452, 37.470978> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027977, 0.328348, 0.944143,
		-0.915747, 0.370271, -0.155906,
		-0.400780, -0.868958, 0.290324,
		45.967682, 34.416763, 37.558075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.783386, 35.293739, 37.780235>,  <46.248230, 35.025036, 37.354847>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.783386, 35.293739, 37.780235> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.833454, 34.908188, 37.874275>,  <45.863495, 34.676857, 37.930698>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.833454, 34.908188, 37.874275>,  <45.783386, 35.293739, 37.780235>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.833454, 34.908188, 37.874275> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221911, 0.203762, 0.953539,
		-0.966999, -0.171527, -0.188390,
		0.125171, -0.963877, 0.235101,
		45.871006, 34.619026, 37.944805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.235909, 35.064297, 38.189766>,  <45.783386, 35.293739, 37.780235>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.235909, 35.064297, 38.189766> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.522465, 34.791965, 38.250771>,  <45.694397, 34.628567, 38.287373>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.522465, 34.791965, 38.250771>,  <45.235909, 35.064297, 38.189766>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.522465, 34.791965, 38.250771> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079730, 0.137277, 0.987319,
		-0.693132, -0.719463, 0.044061,
		0.716388, -0.680829, 0.152514,
		45.737381, 34.587715, 38.296524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.999512, 34.652191, 38.688484>,  <45.235909, 35.064297, 38.189766>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.999512, 34.652191, 38.688484> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.393898, 34.588943, 38.709877>,  <45.630531, 34.550995, 38.722713>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.393898, 34.588943, 38.709877>,  <44.999512, 34.652191, 38.688484>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.393898, 34.588943, 38.709877> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041355, 0.079009, 0.996016,
		-0.161719, -0.984253, 0.071361,
		0.985970, -0.158124, 0.053481,
		45.689690, 34.541508, 38.725922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.023106, 34.150444, 39.167492>,  <44.999512, 34.652191, 38.688484>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.023106, 34.150444, 39.167492> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.401867, 34.278595, 39.156597>,  <45.629124, 34.355484, 39.150059>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.401867, 34.278595, 39.156597>,  <45.023106, 34.150444, 39.167492>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.401867, 34.278595, 39.156597> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029856, -0.003270, 0.999549,
		0.320144, -0.947284, -0.012661,
		0.946898, 0.320378, -0.027235,
		45.685936, 34.374706, 39.148426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.299660, 33.930576, 39.838219>,  <45.023106, 34.150444, 39.167492>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.299660, 33.930576, 39.838219> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.580643, 34.199520, 39.744850>,  <45.749233, 34.360886, 39.688828>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.580643, 34.199520, 39.744850>,  <45.299660, 33.930576, 39.838219>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.580643, 34.199520, 39.744850> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297728, 0.020292, 0.954435,
		0.646457, -0.739949, -0.185925,
		0.702461, 0.672356, -0.233422,
		45.791382, 34.401226, 39.674824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.958420, 33.770607, 40.190014>,  <45.299660, 33.930576, 39.838219>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.958420, 33.770607, 40.190014> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.040813, 34.155815, 40.120548>,  <46.090248, 34.386940, 40.078869>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.040813, 34.155815, 40.120548>,  <45.958420, 33.770607, 40.190014>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.040813, 34.155815, 40.120548> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340136, 0.095944, 0.935469,
		0.917539, -0.251762, -0.307795,
		0.205985, 0.963022, -0.173665,
		46.102608, 34.444721, 40.068447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.552673, 33.877373, 40.586975>,  <45.958420, 33.770607, 40.190014>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.552673, 33.877373, 40.586975> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.442184, 34.251152, 40.497070>,  <46.375893, 34.475418, 40.443127>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.442184, 34.251152, 40.497070>,  <46.552673, 33.877373, 40.586975>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.442184, 34.251152, 40.497070> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352362, 0.316034, 0.880888,
		0.894171, 0.164125, -0.416558,
		-0.276222, 0.934444, -0.224757,
		46.359318, 34.531487, 40.429642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.142365, 34.245468, 40.750175>,  <46.552673, 33.877373, 40.586975>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.142365, 34.245468, 40.750175> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.834946, 34.501339, 40.745338>,  <46.650494, 34.654861, 40.742435>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.834946, 34.501339, 40.745338>,  <47.142365, 34.245468, 40.750175>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.834946, 34.501339, 40.745338> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404847, 0.500876, 0.764998,
		0.495408, 0.583043, -0.643919,
		-0.768551, 0.639675, -0.012095,
		46.604382, 34.693241, 40.741711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.456417, 34.903870, 40.805275>,  <47.142365, 34.245468, 40.750175>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.456417, 34.903870, 40.805275> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.071243, 34.926819, 40.910698>,  <46.840137, 34.940586, 40.973953>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.071243, 34.926819, 40.910698>,  <47.456417, 34.903870, 40.805275>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.071243, 34.926819, 40.910698> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254525, 0.516717, 0.817448,
		-0.089289, 0.854232, -0.512167,
		-0.962935, 0.057370, 0.263561,
		46.782364, 34.944031, 40.989765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.416908, 35.518837, 41.194252>,  <47.456417, 34.903870, 40.805275>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.416908, 35.518837, 41.194252> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.073555, 35.336300, 41.287998>,  <46.867542, 35.226776, 41.344246>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.073555, 35.336300, 41.287998>,  <47.416908, 35.518837, 41.194252>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.073555, 35.336300, 41.287998> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172933, 0.172703, 0.969674,
		-0.482981, 0.872882, -0.069328,
		-0.858384, -0.456345, 0.234362,
		46.816040, 35.199398, 41.358307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.235889, 35.965752, 41.760334>,  <47.416908, 35.518837, 41.194252>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.235889, 35.965752, 41.760334> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.014385, 35.635433, 41.803066>,  <46.881481, 35.437244, 41.828705>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.014385, 35.635433, 41.803066>,  <47.235889, 35.965752, 41.760334>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.014385, 35.635433, 41.803066> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147334, 0.223446, 0.963517,
		-0.819537, 0.517819, -0.245403,
		-0.553761, -0.825794, 0.106830,
		46.848255, 35.387695, 41.835114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.631577, 36.194267, 42.082130>,  <47.235889, 35.965752, 41.760334>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.631577, 36.194267, 42.082130> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.694168, 35.807266, 42.161575>,  <46.731724, 35.575066, 42.209244>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.694168, 35.807266, 42.161575>,  <46.631577, 36.194267, 42.082130>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.694168, 35.807266, 42.161575> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047766, 0.193446, 0.979948,
		-0.986525, -0.162830, -0.015943,
		0.156481, -0.967505, 0.198617,
		46.741112, 35.517014, 42.221161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.240402, 36.019093, 42.684570>,  <46.631577, 36.194267, 42.082130>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.240402, 36.019093, 42.684570> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.496952, 35.712334, 42.675549>,  <46.650883, 35.528278, 42.670135>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.496952, 35.712334, 42.675549>,  <46.240402, 36.019093, 42.684570>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.496952, 35.712334, 42.675549> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001745, -0.030855, 0.999522,
		-0.767224, -0.641032, -0.021128,
		0.641377, -0.766894, -0.022554,
		46.689365, 35.482265, 42.668781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.991993, 35.589657, 43.208008>,  <46.240402, 36.019093, 42.684570>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.991993, 35.589657, 43.208008> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.370567, 35.477119, 43.144634>,  <46.597713, 35.409595, 43.106609>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.370567, 35.477119, 43.144634>,  <45.991993, 35.589657, 43.208008>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.370567, 35.477119, 43.144634> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154488, -0.036288, 0.987328,
		-0.283532, -0.958919, 0.009121,
		0.946437, -0.281348, -0.158430,
		46.654499, 35.392715, 43.097107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<39.701073, 36.377365, 41.481190> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.325977, 36.238712, 41.472340>,  <39.100918, 36.155521, 41.467030>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.325977, 36.238712, 41.472340>,  <39.701073, 36.377365, 41.481190>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.325977, 36.238712, 41.472340> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214587, -0.528086, -0.821631,
		0.273121, -0.775224, 0.569590,
		-0.937740, -0.346631, -0.022121,
		39.044655, 36.134724, 41.465702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.777004, 35.679764, 41.325600>,  <39.701073, 36.377365, 41.481190>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.777004, 35.679764, 41.325600> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.391914, 35.753757, 41.246666>,  <39.160862, 35.798153, 41.199306>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.391914, 35.753757, 41.246666>,  <39.777004, 35.679764, 41.325600>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.391914, 35.753757, 41.246666> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072207, -0.527301, -0.846605,
		-0.260663, -0.829297, 0.494289,
		-0.962726, 0.184987, -0.197329,
		39.103096, 35.809254, 41.187466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.473991, 35.070206, 41.109726>,  <39.777004, 35.679764, 41.325600>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.473991, 35.070206, 41.109726> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.227108, 35.346672, 40.959347>,  <39.078979, 35.512554, 40.869118>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.227108, 35.346672, 40.959347>,  <39.473991, 35.070206, 41.109726>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.227108, 35.346672, 40.959347> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086995, -0.534840, -0.840463,
		-0.781976, -0.486034, 0.390236,
		-0.617207, 0.691170, -0.375950,
		39.041946, 35.554024, 40.846561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.887005, 34.678173, 40.695442>,  <39.473991, 35.070206, 41.109726>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.887005, 34.678173, 40.695442> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.874504, 35.054398, 40.560165>,  <38.867004, 35.280132, 40.479000>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.874504, 35.054398, 40.560165>,  <38.887005, 34.678173, 40.695442>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.874504, 35.054398, 40.560165> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223679, -0.336359, -0.914784,
		-0.974162, 0.047059, 0.220894,
		-0.031251, 0.940557, -0.338195,
		38.865128, 35.336563, 40.458706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.355358, 34.695080, 40.230587>,  <38.887005, 34.678173, 40.695442>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.355358, 34.695080, 40.230587> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.593086, 34.998940, 40.124973>,  <38.735722, 35.181255, 40.061607>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.593086, 34.998940, 40.124973>,  <38.355358, 34.695080, 40.230587>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.593086, 34.998940, 40.124973> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031501, -0.306062, -0.951490,
		-0.803610, 0.573808, -0.157969,
		0.594321, 0.759651, -0.264030,
		38.771381, 35.226833, 40.045765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.990231, 35.067417, 39.669350>,  <38.355358, 34.695080, 40.230587>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.990231, 35.067417, 39.669350> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.364494, 35.208324, 39.660824>,  <38.589050, 35.292870, 39.655708>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.364494, 35.208324, 39.660824>,  <37.990231, 35.067417, 39.669350>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.364494, 35.208324, 39.660824> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057519, 0.092630, -0.994038,
		-0.348190, 0.931305, 0.106932,
		0.935658, 0.352265, -0.021315,
		38.645191, 35.314003, 39.654430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.043972, 35.575596, 39.232002>,  <37.990231, 35.067417, 39.669350>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.043972, 35.575596, 39.232002> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.429226, 35.469215, 39.248238>,  <38.660378, 35.405388, 39.257977>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.429226, 35.469215, 39.248238>,  <38.043972, 35.575596, 39.232002>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.429226, 35.469215, 39.248238> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078814, 0.134684, -0.987749,
		0.257223, 0.954533, 0.150679,
		0.963133, -0.265947, 0.040587,
		38.718166, 35.389431, 39.260414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.397991, 36.122597, 38.871643>,  <38.043972, 35.575596, 39.232002>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.397991, 36.122597, 38.871643> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.627674, 35.795219, 38.880054>,  <38.765484, 35.598793, 38.885101>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.627674, 35.795219, 38.880054>,  <38.397991, 36.122597, 38.871643>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.627674, 35.795219, 38.880054> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126568, 0.063362, -0.989932,
		0.808867, 0.571088, 0.139971,
		0.574208, -0.818439, 0.021030,
		38.799938, 35.549686, 38.886364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.977924, 36.287785, 38.503971>,  <38.397991, 36.122597, 38.871643>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.977924, 36.287785, 38.503971> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.983086, 35.887905, 38.512379>,  <38.986183, 35.647980, 38.517422>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.983086, 35.887905, 38.512379>,  <38.977924, 36.287785, 38.503971>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.983086, 35.887905, 38.512379> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028629, -0.021380, -0.999361,
		0.999507, 0.012289, -0.028896,
		0.012899, -0.999696, 0.021018,
		38.986954, 35.587997, 38.518684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.443264, 36.061531, 38.006676>,  <38.977924, 36.287785, 38.503971>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.443264, 36.061531, 38.006676> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.246140, 35.719196, 38.069511>,  <39.127865, 35.513794, 38.107212>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.246140, 35.719196, 38.069511>,  <39.443264, 36.061531, 38.006676>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.246140, 35.719196, 38.069511> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086985, -0.228084, -0.969748,
		0.865777, -0.464239, 0.186848,
		-0.492812, -0.855839, 0.157088,
		39.098297, 35.462444, 38.116638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.881268, 35.499828, 37.634983>,  <39.443264, 36.061531, 38.006676>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.881268, 35.499828, 37.634983> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.507351, 35.365765, 37.682045>,  <39.283001, 35.285328, 37.710281>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.507351, 35.365765, 37.682045>,  <39.881268, 35.499828, 37.634983>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.507351, 35.365765, 37.682045> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013431, -0.364336, -0.931171,
		0.354954, -0.868866, 0.345078,
		-0.934787, -0.335157, 0.117653,
		39.226913, 35.265217, 37.717342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.943565, 34.833443, 37.304546>,  <39.881268, 35.499828, 37.634983>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.943565, 34.833443, 37.304546> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.558758, 34.939808, 37.329224>,  <39.327873, 35.003628, 37.344028>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.558758, 34.939808, 37.329224>,  <39.943565, 34.833443, 37.304546>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.558758, 34.939808, 37.329224> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142754, -0.297432, -0.944010,
		-0.232673, -0.916965, 0.324095,
		-0.962021, 0.265911, 0.061696,
		39.270153, 35.019581, 37.347733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.353523, 34.280140, 37.279552>,  <39.943565, 34.833443, 37.304546>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.353523, 34.280140, 37.279552> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.224907, 34.610359, 37.094048>,  <39.147736, 34.808491, 36.982742>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.224907, 34.610359, 37.094048>,  <39.353523, 34.280140, 37.279552>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.224907, 34.610359, 37.094048> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100324, -0.457315, -0.883628,
		-0.941566, -0.330649, 0.064223,
		-0.321541, 0.825551, -0.463764,
		39.128445, 34.858025, 36.954918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.846668, 34.109070, 36.715275>,  <39.353523, 34.280140, 37.279552>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.846668, 34.109070, 36.715275> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.059448, 34.436378, 36.628132>,  <39.187119, 34.632763, 36.575844>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.059448, 34.436378, 36.628132>,  <38.846668, 34.109070, 36.715275>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.059448, 34.436378, 36.628132> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060684, -0.293461, -0.954043,
		-0.844596, 0.494286, -0.205763,
		0.531954, 0.818268, -0.217861,
		39.219036, 34.681858, 36.562775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.980457, 33.331921, 36.863846>,  <38.846668, 34.109070, 36.715275>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.980457, 33.331921, 36.863846> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.104736, 32.952579, 36.889427>,  <39.179306, 32.724976, 36.904778>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.104736, 32.952579, 36.889427>,  <38.980457, 33.331921, 36.863846>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.104736, 32.952579, 36.889427> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.798094, -0.223744, 0.559451,
		-0.516248, -0.224862, -0.826393,
		0.310700, -0.948354, 0.063954,
		39.197945, 32.668072, 36.908615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.384270, 32.992897, 36.805431>,  <38.980457, 33.331921, 36.863846>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.384270, 32.992897, 36.805431> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.633602, 32.746311, 36.997860>,  <38.783199, 32.598358, 37.113316>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.633602, 32.746311, 36.997860>,  <38.384270, 32.992897, 36.805431>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.633602, 32.746311, 36.997860> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.724561, -0.223980, 0.651801,
		-0.294067, -0.754849, -0.586283,
		0.623327, -0.616471, 0.481068,
		38.820602, 32.561371, 37.142181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.966156, 32.486538, 36.930187>,  <38.384270, 32.992897, 36.805431>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.966156, 32.486538, 36.930187> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.270447, 32.415825, 37.180000>,  <38.453022, 32.373398, 37.329887>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.270447, 32.415825, 37.180000>,  <37.966156, 32.486538, 36.930187>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.270447, 32.415825, 37.180000> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.648813, -0.234283, 0.723985,
		0.018329, -0.955960, -0.292925,
		0.760728, -0.176784, 0.624533,
		38.498665, 32.362789, 37.367359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.803181, 31.754356, 37.304131>,  <37.966156, 32.486538, 36.930187>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.803181, 31.754356, 37.304131> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.054611, 31.984482, 37.513477>,  <38.205467, 32.122559, 37.639084>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.054611, 31.984482, 37.513477>,  <37.803181, 31.754356, 37.304131>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.054611, 31.984482, 37.513477> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.600041, -0.069400, 0.796953,
		0.494821, -0.814982, 0.301590,
		0.628572, 0.575315, 0.523363,
		38.243183, 32.157078, 37.670486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.781151, 31.460495, 37.911373>,  <37.803181, 31.754356, 37.304131>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.781151, 31.460495, 37.911373> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.914471, 31.831339, 37.979939>,  <37.994461, 32.053844, 38.021076>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.914471, 31.831339, 37.979939>,  <37.781151, 31.460495, 37.911373>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.914471, 31.831339, 37.979939> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.614902, 0.075933, 0.784939,
		0.714709, -0.367019, 0.595390,
		0.333297, 0.927109, 0.171411,
		38.014462, 32.109470, 38.031361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.955776, 31.489044, 38.649593>,  <37.781151, 31.460495, 37.911373>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.955776, 31.489044, 38.649593> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.919296, 31.871819, 38.539349>,  <37.897408, 32.101482, 38.473202>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.919296, 31.871819, 38.539349>,  <37.955776, 31.489044, 38.649593>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.919296, 31.871819, 38.539349> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508875, 0.193116, 0.838900,
		0.855996, 0.216759, 0.469347,
		-0.091200, 0.956934, -0.275610,
		37.891937, 32.158897, 38.456665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.089333, 31.765436, 39.248112>,  <37.955776, 31.489044, 38.649593>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.089333, 31.765436, 39.248112> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.906948, 32.053284, 39.038639>,  <37.797516, 32.225994, 38.912956>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.906948, 32.053284, 39.038639>,  <38.089333, 31.765436, 39.248112>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.906948, 32.053284, 39.038639> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439356, 0.329709, 0.835618,
		0.773990, 0.611096, 0.165834,
		-0.455966, 0.719621, -0.523680,
		37.770157, 32.269169, 38.881535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.256386, 32.398426, 39.581738>,  <38.089333, 31.765436, 39.248112>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.256386, 32.398426, 39.581738> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.917233, 32.464108, 39.380093>,  <37.713741, 32.503517, 39.259106>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.917233, 32.464108, 39.380093>,  <38.256386, 32.398426, 39.581738>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.917233, 32.464108, 39.380093> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435809, 0.325627, 0.839070,
		0.301935, 0.931130, -0.204531,
		-0.847883, 0.164208, -0.504113,
		37.662868, 32.513371, 39.228859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.969135, 32.954708, 39.799992>,  <38.256386, 32.398426, 39.581738>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.969135, 32.954708, 39.799992> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.654533, 32.789936, 39.615936>,  <37.465771, 32.691074, 39.505505>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.654533, 32.789936, 39.615936>,  <37.969135, 32.954708, 39.799992>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.654533, 32.789936, 39.615936> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554098, 0.141645, 0.820313,
		-0.272735, 0.900140, -0.339653,
		-0.786506, -0.411929, -0.460134,
		37.418583, 32.666359, 39.477898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.477524, 33.426056, 39.975376>,  <37.969135, 32.954708, 39.799992>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.477524, 33.426056, 39.975376> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.285599, 33.087036, 39.884663>,  <37.170444, 32.883625, 39.830235>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.285599, 33.087036, 39.884663>,  <37.477524, 33.426056, 39.975376>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.285599, 33.087036, 39.884663> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485647, 0.041295, 0.873179,
		-0.730701, 0.529102, -0.431426,
		-0.479816, -0.847553, -0.226783,
		37.141655, 32.832771, 39.816628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.764969, 33.567173, 40.013321>,  <37.477524, 33.426056, 39.975376>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.764969, 33.567173, 40.013321> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.815811, 33.172249, 40.051395>,  <36.846317, 32.935295, 40.074242>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.815811, 33.172249, 40.051395>,  <36.764969, 33.567173, 40.013321>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.815811, 33.172249, 40.051395> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422347, 0.032957, 0.905835,
		-0.897478, -0.155340, -0.412799,
		0.127108, -0.987311, 0.095186,
		36.853943, 32.876057, 40.079952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.175964, 33.370594, 40.301666>,  <36.764969, 33.567173, 40.013321>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.175964, 33.370594, 40.301666> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.418789, 33.061470, 40.375687>,  <36.564484, 32.875996, 40.420097>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.418789, 33.061470, 40.375687>,  <36.175964, 33.370594, 40.301666>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.418789, 33.061470, 40.375687> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254618, 0.031426, 0.966531,
		-0.752759, -0.633860, -0.177694,
		0.607061, -0.772809, 0.185048,
		36.600906, 32.829628, 40.431202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.841854, 32.872028, 40.746460>,  <36.175964, 33.370594, 40.301666>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.841854, 32.872028, 40.746460> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.233326, 32.816631, 40.807121>,  <36.468208, 32.783394, 40.843517>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.233326, 32.816631, 40.807121>,  <35.841854, 32.872028, 40.746460>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.233326, 32.816631, 40.807121> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140048, 0.090068, 0.986040,
		-0.150221, -0.986259, 0.068752,
		0.978683, -0.138495, 0.151653,
		36.526932, 32.775082, 40.852619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.747604, 32.404327, 41.254745>,  <35.841854, 32.872028, 40.746460>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.747604, 32.404327, 41.254745> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.120350, 32.549450, 41.254978>,  <36.343998, 32.636524, 41.255119>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.120350, 32.549450, 41.254978>,  <35.747604, 32.404327, 41.254745>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.120350, 32.549450, 41.254978> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036038, 0.090968, 0.995202,
		0.361012, -0.927414, 0.097844,
		0.931864, 0.362806, 0.000581,
		36.399910, 32.658291, 41.255154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.506775, 31.716980, 41.519676>,  <35.747604, 32.404327, 41.254745>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.506775, 31.716980, 41.519676> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.107693, 31.721106, 41.492912>,  <34.868244, 31.723581, 41.476852>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.107693, 31.721106, 41.492912>,  <35.506775, 31.716980, 41.519676>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.107693, 31.721106, 41.492912> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064629, -0.149149, -0.986700,
		-0.020156, -0.988761, 0.148141,
		-0.997706, 0.010314, -0.066909,
		34.808380, 31.724199, 41.472839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.238747, 31.020430, 41.119297>,  <35.506775, 31.716980, 41.519676>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.238747, 31.020430, 41.119297> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.959621, 31.306246, 41.099339>,  <34.792145, 31.477736, 41.087364>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.959621, 31.306246, 41.099339>,  <35.238747, 31.020430, 41.119297>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.959621, 31.306246, 41.099339> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218814, -0.278988, -0.935032,
		-0.682039, -0.641560, 0.351033,
		-0.697814, 0.714539, -0.049898,
		34.750278, 31.520607, 41.084370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.652424, 30.624874, 40.858162>,  <35.238747, 31.020430, 41.119297>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.652424, 30.624874, 40.858162> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.590595, 31.014093, 40.789707>,  <34.553497, 31.247625, 40.748634>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.590595, 31.014093, 40.789707>,  <34.652424, 30.624874, 40.858162>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.590595, 31.014093, 40.789707> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296851, -0.210957, -0.931331,
		-0.942331, -0.093155, 0.321458,
		-0.154572, 0.973046, -0.171138,
		34.544224, 31.306007, 40.738365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.943707, 30.654152, 40.538498>,  <34.652424, 30.624874, 40.858162>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.943707, 30.654152, 40.538498> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.070015, 31.019087, 40.434246>,  <34.145802, 31.238049, 40.371696>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.070015, 31.019087, 40.434246>,  <33.943707, 30.654152, 40.538498>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.070015, 31.019087, 40.434246> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367493, -0.135646, -0.920081,
		-0.874779, 0.386314, 0.292445,
		0.315771, 0.912339, -0.260628,
		34.164745, 31.292788, 40.356056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.344620, 30.942225, 40.186535>,  <33.943707, 30.654152, 40.538498>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.344620, 30.942225, 40.186535> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.676514, 31.142193, 40.087234>,  <33.875648, 31.262175, 40.027657>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.676514, 31.142193, 40.087234>,  <33.344620, 30.942225, 40.186535>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.676514, 31.142193, 40.087234> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273667, -0.023264, -0.961543,
		-0.486470, 0.865759, 0.117509,
		0.829731, 0.499921, -0.248247,
		33.925434, 31.292170, 40.012760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.159500, 31.468647, 39.589996>,  <33.344620, 30.942225, 40.186535>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.159500, 31.468647, 39.589996> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.548862, 31.378473, 39.573689>,  <33.782478, 31.324369, 39.563904>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.548862, 31.378473, 39.573689>,  <33.159500, 31.468647, 39.589996>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.548862, 31.378473, 39.573689> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093841, -0.230025, -0.968650,
		0.208988, 0.946715, -0.245062,
		0.973405, -0.225433, -0.040768,
		33.840885, 31.310843, 39.561459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.311401, 31.876019, 39.023907>,  <33.159500, 31.468647, 39.589996>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.311401, 31.876019, 39.023907> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.599930, 31.600716, 39.054882>,  <33.773048, 31.435534, 39.073467>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.599930, 31.600716, 39.054882>,  <33.311401, 31.876019, 39.023907>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.599930, 31.600716, 39.054882> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062950, -0.176501, -0.982285,
		0.689735, 0.703667, -0.170639,
		0.721320, -0.688258, 0.077443,
		33.816326, 31.394238, 39.078114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.736843, 32.055843, 38.549301>,  <33.311401, 31.876019, 39.023907>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.736843, 32.055843, 38.549301> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.824467, 31.674574, 38.632706>,  <33.877041, 31.445812, 38.682747>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.824467, 31.674574, 38.632706>,  <33.736843, 32.055843, 38.549301>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.824467, 31.674574, 38.632706> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000382, -0.213786, -0.976880,
		0.975712, 0.213913, -0.047196,
		0.219057, -0.953172, 0.208512,
		33.890182, 31.388622, 38.695259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.393902, 31.883528, 38.206970>,  <33.736843, 32.055843, 38.549301>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.393902, 31.883528, 38.206970> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.176792, 31.553535, 38.269962>,  <34.046524, 31.355541, 38.307758>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.176792, 31.553535, 38.269962>,  <34.393902, 31.883528, 38.206970>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.176792, 31.553535, 38.269962> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096632, -0.247603, -0.964031,
		0.834299, -0.508036, 0.214113,
		-0.542778, -0.824980, 0.157483,
		34.013958, 31.306042, 38.317207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.533916, 31.509186, 37.726509>,  <34.393902, 31.883528, 38.206970>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.533916, 31.509186, 37.726509> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.210625, 31.297794, 37.830418>,  <34.016651, 31.170959, 37.892761>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.210625, 31.297794, 37.830418>,  <34.533916, 31.509186, 37.726509>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.210625, 31.297794, 37.830418> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033810, -0.398759, -0.916432,
		0.587902, -0.749466, 0.304419,
		-0.808225, -0.528480, 0.259771,
		33.968159, 31.139250, 37.908348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.697945, 30.815866, 37.452518>,  <34.533916, 31.509186, 37.726509>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.697945, 30.815866, 37.452518> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.304176, 30.815155, 37.522854>,  <34.067917, 30.814728, 37.565056>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.304176, 30.815155, 37.522854>,  <34.697945, 30.815866, 37.452518>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.304176, 30.815155, 37.522854> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158751, -0.421062, -0.893031,
		0.075627, -0.907030, 0.414219,
		-0.984418, -0.001780, 0.175836,
		34.008850, 30.814621, 37.575603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.394016, 30.052532, 37.312122>,  <34.697945, 30.815866, 37.452518>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.394016, 30.052532, 37.312122> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.092262, 30.315105, 37.311909>,  <33.911209, 30.472649, 37.311779>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.092262, 30.315105, 37.311909>,  <34.394016, 30.052532, 37.312122>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.092262, 30.315105, 37.311909> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317504, -0.365597, -0.874946,
		-0.574540, -0.659874, 0.484220,
		-0.754384, 0.656434, -0.000537,
		33.865948, 30.512035, 37.311749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<34.854904, 31.981138, 45.230148> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.565289, 32.208500, 45.073853>,  <34.391518, 32.344917, 44.980076>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.565289, 32.208500, 45.073853>,  <34.854904, 31.981138, 45.230148>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.565289, 32.208500, 45.073853> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117878, -0.660126, -0.741848,
		-0.679609, -0.491068, 0.544961,
		-0.724041, 0.568406, -0.390742,
		34.348076, 32.379021, 44.956631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.402882, 31.475163, 45.030029>,  <34.854904, 31.981138, 45.230148>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.402882, 31.475163, 45.030029> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.291584, 31.807600, 44.837421>,  <34.224804, 32.007061, 44.721855>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.291584, 31.807600, 44.837421>,  <34.402882, 31.475163, 45.030029>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.291584, 31.807600, 44.837421> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059466, -0.515262, -0.854967,
		-0.958667, -0.209259, 0.192793,
		-0.278248, 0.831093, -0.481521,
		34.208111, 32.056927, 44.692966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.972023, 31.236931, 44.479149>,  <34.402882, 31.475163, 45.030029>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.972023, 31.236931, 44.479149> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.033524, 31.615755, 44.366413>,  <34.070423, 31.843050, 44.298771>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.033524, 31.615755, 44.366413>,  <33.972023, 31.236931, 44.479149>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.033524, 31.615755, 44.366413> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000708, -0.285339, -0.958426,
		-0.988109, 0.147160, -0.044542,
		0.153752, 0.947062, -0.281842,
		34.079651, 31.899874, 44.281860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.401295, 31.438608, 43.922958>,  <33.972023, 31.236931, 44.479149>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.401295, 31.438608, 43.922958> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.730614, 31.662045, 43.882641>,  <33.928204, 31.796106, 43.858452>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.730614, 31.662045, 43.882641>,  <33.401295, 31.438608, 43.922958>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.730614, 31.662045, 43.882641> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028849, -0.136160, -0.990267,
		-0.566877, 0.818191, -0.095985,
		0.823297, 0.558591, -0.100790,
		33.977604, 31.829622, 43.852406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.253487, 31.912983, 43.271450>,  <33.401295, 31.438608, 43.922958>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.253487, 31.912983, 43.271450> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.644245, 31.892672, 43.354488>,  <33.878700, 31.880486, 43.404312>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.644245, 31.892672, 43.354488>,  <33.253487, 31.912983, 43.271450>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.644245, 31.892672, 43.354488> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203295, -0.078784, -0.975943,
		0.065911, 0.995598, -0.066641,
		0.976897, -0.050778, 0.207592,
		33.937313, 31.877438, 43.416767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.483292, 32.351063, 42.699951>,  <33.253487, 31.912983, 43.271450>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.483292, 32.351063, 42.699951> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.804562, 32.153141, 42.832668>,  <33.997322, 32.034389, 42.912300>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.804562, 32.153141, 42.832668>,  <33.483292, 32.351063, 42.699951>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.804562, 32.153141, 42.832668> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379184, -0.004975, -0.925308,
		0.459495, 0.868991, 0.183625,
		0.803171, -0.494802, 0.331794,
		34.045513, 32.004700, 42.932205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.106762, 32.782898, 42.563648>,  <33.483292, 32.351063, 42.699951>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.106762, 32.782898, 42.563648> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.209927, 32.397842, 42.596664>,  <34.271824, 32.166809, 42.616474>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.209927, 32.397842, 42.596664>,  <34.106762, 32.782898, 42.563648>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.209927, 32.397842, 42.596664> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458195, 0.046650, -0.887627,
		0.850611, 0.266751, 0.453106,
		0.257912, -0.962636, 0.082543,
		34.287300, 32.109051, 42.621426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.736168, 32.697182, 42.313351>,  <34.106762, 32.782898, 42.563648>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.736168, 32.697182, 42.313351> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.619408, 32.314667, 42.306370>,  <34.549351, 32.085155, 42.302181>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.619408, 32.314667, 42.306370>,  <34.736168, 32.697182, 42.313351>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.619408, 32.314667, 42.306370> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316539, -0.079374, -0.945253,
		0.902551, -0.281442, 0.325873,
		-0.291899, -0.956290, -0.017448,
		34.531837, 32.027779, 42.301136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.265427, 32.330399, 42.002590>,  <34.736168, 32.697182, 42.313351>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.265427, 32.330399, 42.002590> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.931568, 32.115299, 41.954922>,  <34.731255, 31.986240, 41.926323>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.931568, 32.115299, 41.954922>,  <35.265427, 32.330399, 42.002590>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.931568, 32.115299, 41.954922> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220381, -0.127761, -0.967010,
		0.504781, -0.833370, 0.225143,
		-0.834642, -0.537746, -0.119167,
		34.681175, 31.953976, 41.919170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.924850, 32.183041, 41.956593>,  <35.265427, 32.330399, 42.002590>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.924850, 32.183041, 41.956593> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.185204, 32.459099, 41.830070>,  <36.341415, 32.624733, 41.754158>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.185204, 32.459099, 41.830070>,  <35.924850, 32.183041, 41.956593>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.185204, 32.459099, 41.830070> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164835, 0.278227, 0.946266,
		0.741067, -0.668047, 0.067333,
		0.650884, 0.690147, -0.316303,
		36.380470, 32.666142, 41.735180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.487240, 32.059067, 42.342934>,  <35.924850, 32.183041, 41.956593>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.487240, 32.059067, 42.342934> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.481503, 32.442181, 42.228077>,  <36.478058, 32.672047, 42.159164>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.481503, 32.442181, 42.228077>,  <36.487240, 32.059067, 42.342934>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.481503, 32.442181, 42.228077> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132741, 0.286451, 0.948855,
		0.991047, -0.024504, -0.131246,
		-0.014345, 0.957781, -0.287139,
		36.477200, 32.729515, 42.141933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.039543, 32.331955, 42.644684>,  <36.487240, 32.059067, 42.342934>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.039543, 32.331955, 42.644684> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.809872, 32.646591, 42.553822>,  <36.672070, 32.835373, 42.499306>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.809872, 32.646591, 42.553822>,  <37.039543, 32.331955, 42.644684>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.809872, 32.646591, 42.553822> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208692, 0.408894, 0.888400,
		0.791689, 0.462690, -0.398931,
		-0.574174, 0.786590, -0.227157,
		36.637619, 32.882568, 42.485676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.485245, 32.798210, 42.861038>,  <37.039543, 32.331955, 42.644684>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.485245, 32.798210, 42.861038> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.136955, 32.993824, 42.840332>,  <36.927982, 33.111195, 42.827908>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.136955, 32.993824, 42.840332>,  <37.485245, 32.798210, 42.861038>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.136955, 32.993824, 42.840332> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244071, 0.521138, 0.817829,
		0.426929, 0.699469, -0.573128,
		-0.870725, 0.489039, -0.051769,
		36.875736, 33.140537, 42.824802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.699814, 33.490963, 43.087479>,  <37.485245, 32.798210, 42.861038>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.699814, 33.490963, 43.087479> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.300564, 33.485630, 43.111366>,  <37.061012, 33.482430, 43.125698>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.300564, 33.485630, 43.111366>,  <37.699814, 33.490963, 43.087479>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.300564, 33.485630, 43.111366> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042051, 0.559612, 0.827688,
		-0.044454, 0.828648, -0.558002,
		-0.998126, -0.013330, 0.059722,
		37.001125, 33.481632, 43.129284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.480904, 34.155590, 43.096123>,  <37.699814, 33.490963, 43.087479>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.480904, 34.155590, 43.096123> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.178017, 33.953461, 43.261665>,  <36.996284, 33.832184, 43.360992>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.178017, 33.953461, 43.261665>,  <37.480904, 34.155590, 43.096123>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.178017, 33.953461, 43.261665> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211233, 0.410112, 0.887237,
		-0.618068, 0.759247, -0.203802,
		-0.757214, -0.505323, 0.413855,
		36.950851, 33.801865, 43.385822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.198956, 34.537075, 43.491657>,  <37.480904, 34.155590, 43.096123>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.198956, 34.537075, 43.491657> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.053440, 34.203972, 43.658592>,  <36.966133, 34.004108, 43.758755>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.053440, 34.203972, 43.658592>,  <37.198956, 34.537075, 43.491657>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.053440, 34.203972, 43.658592> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112417, 0.405509, 0.907152,
		-0.924674, 0.376925, -0.053902,
		-0.363786, -0.832761, 0.417336,
		36.944305, 33.954144, 43.783794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.672085, 34.711472, 43.928448>,  <37.198956, 34.537075, 43.491657>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.672085, 34.711472, 43.928448> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.818226, 34.364243, 44.062893>,  <36.905910, 34.155907, 44.143559>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.818226, 34.364243, 44.062893>,  <36.672085, 34.711472, 43.928448>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.818226, 34.364243, 44.062893> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173756, 0.418321, 0.891525,
		-0.914510, -0.267317, 0.303666,
		0.365349, -0.868072, 0.336111,
		36.927830, 34.103821, 44.163727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.284138, 34.476261, 44.547836>,  <36.672085, 34.711472, 43.928448>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.284138, 34.476261, 44.547836> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.635185, 34.284985, 44.561192>,  <36.845814, 34.170219, 44.569206>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.635185, 34.284985, 44.561192>,  <36.284138, 34.476261, 44.547836>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.635185, 34.284985, 44.561192> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174840, 0.384180, 0.906552,
		-0.446329, -0.789773, 0.420772,
		0.877623, -0.478188, 0.033387,
		36.898472, 34.141529, 44.571209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.470097, 34.467907, 45.176277>,  <36.284138, 34.476261, 44.547836>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.470097, 34.467907, 45.176277> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.839039, 34.384964, 45.045883>,  <37.060406, 34.335197, 44.967648>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.839039, 34.384964, 45.045883>,  <36.470097, 34.467907, 45.176277>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.839039, 34.384964, 45.045883> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385719, 0.542204, 0.746482,
		0.021959, -0.814258, 0.580087,
		0.922355, -0.207359, -0.325982,
		37.115746, 34.322758, 44.948090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.845638, 34.310078, 45.757133>,  <36.470097, 34.467907, 45.176277>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.845638, 34.310078, 45.757133> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.156403, 34.354561, 45.509247>,  <37.342861, 34.381252, 45.360516>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.156403, 34.354561, 45.509247>,  <36.845638, 34.310078, 45.757133>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.156403, 34.354561, 45.509247> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459559, 0.572635, 0.678892,
		0.430370, -0.812232, 0.393777,
		0.776909, 0.111210, -0.619714,
		37.389477, 34.387924, 45.323334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.456726, 33.919743, 46.014061>,  <36.845638, 34.310078, 45.757133>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.456726, 33.919743, 46.014061> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.575619, 34.235580, 45.799324>,  <37.646954, 34.425083, 45.670483>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.575619, 34.235580, 45.799324>,  <37.456726, 33.919743, 46.014061>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.575619, 34.235580, 45.799324> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406974, 0.403855, 0.819313,
		0.863729, -0.462004, -0.201306,
		0.297228, 0.789590, -0.536845,
		37.664787, 34.472458, 45.638271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.192451, 33.961308, 46.174995>,  <37.456726, 33.919743, 46.014061>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.192451, 33.961308, 46.174995> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.051289, 34.306385, 46.030098>,  <37.966591, 34.513432, 45.943157>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.051289, 34.306385, 46.030098>,  <38.192451, 33.961308, 46.174995>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.051289, 34.306385, 46.030098> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311979, 0.473495, 0.823694,
		0.882114, 0.177675, -0.436241,
		-0.352908, 0.862690, -0.362245,
		37.945415, 34.565193, 45.921425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.754143, 34.496944, 46.349472>,  <38.192451, 33.961308, 46.174995>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.754143, 34.496944, 46.349472> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.429428, 34.709114, 46.251774>,  <38.234600, 34.836414, 46.193153>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.429428, 34.709114, 46.251774>,  <38.754143, 34.496944, 46.349472>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.429428, 34.709114, 46.251774> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198582, 0.644088, 0.738726,
		0.549154, 0.551183, -0.628194,
		-0.811785, 0.530422, -0.244248,
		38.185894, 34.868240, 46.178501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<32.374126, 40.473118, 45.548725> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.620808, 40.158268, 45.553028>,  <32.768814, 39.969357, 45.555611>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.620808, 40.158268, 45.553028>,  <32.374126, 40.473118, 45.548725>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.620808, 40.158268, 45.553028> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165296, 0.116120, -0.979384,
		0.769648, 0.605765, 0.201719,
		0.616700, -0.787125, 0.010759,
		32.805817, 39.922131, 45.556255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.827675, 40.655731, 45.141689>,  <32.374126, 40.473118, 45.548725>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.827675, 40.655731, 45.141689> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.898178, 40.262539, 45.162376>,  <32.940479, 40.026623, 45.174789>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.898178, 40.262539, 45.162376>,  <32.827675, 40.655731, 45.141689>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.898178, 40.262539, 45.162376> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200504, -0.015590, -0.979569,
		0.963707, 0.183030, 0.194344,
		0.176261, -0.982984, 0.051722,
		32.951057, 39.967644, 45.177895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.421364, 40.433945, 44.738617>,  <32.827675, 40.655731, 45.141689>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.421364, 40.433945, 44.738617> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.199467, 40.101685, 44.757698>,  <33.066326, 39.902328, 44.769146>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.199467, 40.101685, 44.757698>,  <33.421364, 40.433945, 44.738617>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.199467, 40.101685, 44.757698> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156286, -0.160350, -0.974609,
		0.817210, -0.533205, 0.218773,
		-0.554746, -0.830651, 0.047706,
		33.033043, 39.852489, 44.772011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.773262, 39.946335, 44.291477>,  <33.421364, 40.433945, 44.738617>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.773262, 39.946335, 44.291477> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.401012, 39.810814, 44.346832>,  <33.177662, 39.729500, 44.380047>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.401012, 39.810814, 44.346832>,  <33.773262, 39.946335, 44.291477>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.401012, 39.810814, 44.346832> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071742, -0.201910, -0.976773,
		0.358876, -0.918936, 0.163596,
		-0.930624, -0.338804, 0.138387,
		33.121826, 39.709171, 44.388348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.786526, 39.340546, 44.031811>,  <33.773262, 39.946335, 44.291477>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.786526, 39.340546, 44.031811> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.390877, 39.399227, 44.036091>,  <33.153488, 39.434437, 44.038658>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.390877, 39.399227, 44.036091>,  <33.786526, 39.340546, 44.031811>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.390877, 39.399227, 44.036091> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064045, -0.364060, -0.929171,
		-0.132415, -0.919750, 0.369495,
		-0.989123, 0.146700, 0.010699,
		33.094139, 39.443237, 44.039299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.538757, 38.662460, 43.953247>,  <33.786526, 39.340546, 44.031811>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.538757, 38.662460, 43.953247> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.239834, 38.913021, 43.864567>,  <33.060478, 39.063358, 43.811359>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.239834, 38.913021, 43.864567>,  <33.538757, 38.662460, 43.953247>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.239834, 38.913021, 43.864567> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178361, -0.510502, -0.841175,
		-0.640088, -0.589077, 0.493229,
		-0.747311, 0.626399, -0.221698,
		33.015640, 39.100941, 43.798058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.031879, 38.235947, 43.708122>,  <33.538757, 38.662460, 43.953247>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.031879, 38.235947, 43.708122> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.916634, 38.595852, 43.577026>,  <32.847488, 38.811794, 43.498367>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.916634, 38.595852, 43.577026>,  <33.031879, 38.235947, 43.708122>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.916634, 38.595852, 43.577026> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236131, -0.398439, -0.886278,
		-0.928027, -0.177957, 0.327257,
		-0.288111, 0.899765, -0.327741,
		32.830200, 38.865780, 43.478703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.362572, 38.177658, 43.355133>,  <33.031879, 38.235947, 43.708122>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.362572, 38.177658, 43.355133> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.541164, 38.499371, 43.198265>,  <32.648319, 38.692398, 43.104145>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.541164, 38.499371, 43.198265>,  <32.362572, 38.177658, 43.355133>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.541164, 38.499371, 43.198265> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214272, -0.329424, -0.919547,
		-0.868760, 0.494589, 0.025254,
		0.446479, 0.804277, -0.392167,
		32.675110, 38.740654, 43.080616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.825647, 38.564148, 42.978851>,  <32.362572, 38.177658, 43.355133>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.825647, 38.564148, 42.978851> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.188511, 38.675053, 42.852242>,  <32.406231, 38.741596, 42.776276>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.188511, 38.675053, 42.852242>,  <31.825647, 38.564148, 42.978851>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.188511, 38.675053, 42.852242> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208219, -0.357886, -0.910254,
		-0.365655, 0.891653, -0.266929,
		0.907161, 0.277259, -0.316522,
		32.460659, 38.758232, 42.757286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.695383, 38.605713, 42.282196>,  <31.825647, 38.564148, 42.978851>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.695383, 38.605713, 42.282196> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.091846, 38.658356, 42.288990>,  <32.329723, 38.689941, 42.293064>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.091846, 38.658356, 42.288990>,  <31.695383, 38.605713, 42.282196>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.091846, 38.658356, 42.288990> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064001, -0.362015, -0.929973,
		-0.116242, 0.922836, -0.367236,
		0.991157, 0.131605, 0.016981,
		32.389194, 38.697838, 42.294083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.845802, 38.817013, 41.681213>,  <31.695383, 38.605713, 42.282196>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.845802, 38.817013, 41.681213> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.201809, 38.691677, 41.813690>,  <32.415413, 38.616474, 41.893177>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.201809, 38.691677, 41.813690>,  <31.845802, 38.817013, 41.681213>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.201809, 38.691677, 41.813690> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208138, -0.367070, -0.906608,
		0.405649, 0.875829, -0.261480,
		0.890015, -0.313341, 0.331195,
		32.468815, 38.597675, 41.913048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.378742, 39.221481, 41.265263>,  <31.845802, 38.817013, 41.681213>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.378742, 39.221481, 41.265263> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.542427, 38.884060, 41.404381>,  <32.640640, 38.681606, 41.487850>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.542427, 38.884060, 41.404381>,  <32.378742, 39.221481, 41.265263>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.542427, 38.884060, 41.404381> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049673, -0.360011, -0.931625,
		0.911085, 0.398510, -0.105419,
		0.409214, -0.843553, 0.347796,
		32.665192, 38.630993, 41.508720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.082127, 39.127193, 40.933369>,  <32.378742, 39.221481, 41.265263>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.082127, 39.127193, 40.933369> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.963615, 38.766308, 41.058739>,  <32.892509, 38.549778, 41.133961>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.963615, 38.766308, 41.058739>,  <33.082127, 39.127193, 40.933369>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.963615, 38.766308, 41.058739> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000111, -0.328191, -0.944611,
		0.955101, -0.279835, 0.097337,
		-0.296280, -0.902210, 0.313425,
		32.874733, 38.495644, 41.152767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.427769, 38.740410, 40.476665>,  <33.082127, 39.127193, 40.933369>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.427769, 38.740410, 40.476665> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.159298, 38.498787, 40.648548>,  <32.998215, 38.353813, 40.751678>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.159298, 38.498787, 40.648548>,  <33.427769, 38.740410, 40.476665>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.159298, 38.498787, 40.648548> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194229, -0.416113, -0.888327,
		0.715403, -0.679682, 0.161959,
		-0.671173, -0.604055, 0.429703,
		32.957947, 38.317570, 40.777458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.058601, 38.443558, 40.907818>,  <33.427769, 38.740410, 40.476665>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.058601, 38.443558, 40.907818> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.453144, 38.399342, 40.859013>,  <34.689869, 38.372814, 40.829731>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.453144, 38.399342, 40.859013>,  <34.058601, 38.443558, 40.907818>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.453144, 38.399342, 40.859013> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156996, 0.408397, 0.899202,
		-0.049568, -0.906087, 0.420178,
		0.986354, -0.110538, -0.122009,
		34.749050, 38.366180, 40.822411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.306355, 38.212513, 41.527084>,  <34.058601, 38.443558, 40.907818>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.306355, 38.212513, 41.527084> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.652752, 38.346668, 41.378723>,  <34.860592, 38.427162, 41.289707>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.652752, 38.346668, 41.378723>,  <34.306355, 38.212513, 41.527084>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.652752, 38.346668, 41.378723> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286520, 0.275093, 0.917731,
		0.409826, -0.901022, 0.142135,
		0.865996, 0.335385, -0.370901,
		34.912552, 38.447285, 41.267452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.921375, 37.838810, 41.873524>,  <34.306355, 38.212513, 41.527084>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.921375, 37.838810, 41.873524> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.045303, 38.192402, 41.733475>,  <35.119659, 38.404556, 41.649445>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.045303, 38.192402, 41.733475>,  <34.921375, 37.838810, 41.873524>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.045303, 38.192402, 41.733475> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336122, 0.242633, 0.910028,
		0.889401, -0.399629, -0.221953,
		0.309820, 0.883983, -0.350122,
		35.138248, 38.457596, 41.628437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.615608, 37.856956, 42.116798>,  <34.921375, 37.838810, 41.873524>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.615608, 37.856956, 42.116798> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.484810, 38.229965, 42.055515>,  <35.406330, 38.453770, 42.018745>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.484810, 38.229965, 42.055515>,  <35.615608, 37.856956, 42.116798>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.484810, 38.229965, 42.055515> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338792, 0.267027, 0.902173,
		0.882208, 0.243104, -0.403249,
		-0.327000, 0.932522, -0.153212,
		35.386711, 38.509720, 42.009552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.183720, 38.265205, 42.206333>,  <35.615608, 37.856956, 42.116798>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.183720, 38.265205, 42.206333> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.865078, 38.499138, 42.267517>,  <35.673893, 38.639496, 42.304230>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.865078, 38.499138, 42.267517>,  <36.183720, 38.265205, 42.206333>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.865078, 38.499138, 42.267517> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348871, 0.238129, 0.906412,
		0.493673, 0.775415, -0.393725,
		-0.796603, 0.584830, 0.152962,
		35.626099, 38.674587, 42.313404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.423298, 38.830929, 42.589069>,  <36.183720, 38.265205, 42.206333>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.423298, 38.830929, 42.589069> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.027843, 38.844490, 42.647648>,  <35.790569, 38.852627, 42.682796>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.027843, 38.844490, 42.647648>,  <36.423298, 38.830929, 42.589069>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.027843, 38.844490, 42.647648> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147765, 0.398048, 0.905386,
		-0.027596, 0.916738, -0.398535,
		-0.988637, 0.033905, 0.146446,
		35.731251, 38.854660, 42.691582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.303062, 39.456383, 42.882339>,  <36.423298, 38.830929, 42.589069>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.303062, 39.456383, 42.882339> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.980118, 39.242115, 42.981308>,  <35.786350, 39.113552, 43.040688>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.980118, 39.242115, 42.981308>,  <36.303062, 39.456383, 42.882339>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.980118, 39.242115, 42.981308> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012509, 0.403684, 0.914813,
		-0.589919, 0.741683, -0.319220,
		-0.807365, -0.535673, 0.247418,
		35.737907, 39.081413, 43.055534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.967846, 39.862900, 43.304897>,  <36.303062, 39.456383, 42.882339>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.967846, 39.862900, 43.304897> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.781738, 39.515308, 43.372318>,  <35.670074, 39.306755, 43.412769>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.781738, 39.515308, 43.372318>,  <35.967846, 39.862900, 43.304897>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.781738, 39.515308, 43.372318> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123068, 0.252073, 0.959851,
		-0.876573, 0.425844, -0.224224,
		-0.465267, -0.868974, 0.168553,
		35.642159, 39.254616, 43.422886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.411842, 39.980190, 43.752747>,  <35.967846, 39.862900, 43.304897>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.411842, 39.980190, 43.752747> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.475731, 39.591415, 43.821835>,  <35.514065, 39.358150, 43.863289>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.475731, 39.591415, 43.821835>,  <35.411842, 39.980190, 43.752747>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.475731, 39.591415, 43.821835> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120459, 0.154473, 0.980626,
		-0.979786, -0.177429, -0.092407,
		0.159717, -0.971935, 0.172723,
		35.523647, 39.299835, 43.873653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.796207, 39.772263, 44.126633>,  <35.411842, 39.980190, 43.752747>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.796207, 39.772263, 44.126633> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.091381, 39.505428, 44.167538>,  <35.268486, 39.345329, 44.192081>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.091381, 39.505428, 44.167538>,  <34.796207, 39.772263, 44.126633>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.091381, 39.505428, 44.167538> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101358, 0.040266, 0.994035,
		-0.667221, -0.743895, -0.037900,
		0.737932, -0.667082, 0.102266,
		35.312759, 39.305305, 44.198219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.610634, 39.176876, 44.600048>,  <34.796207, 39.772263, 44.126633>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.610634, 39.176876, 44.600048> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.008850, 39.211727, 44.614506>,  <35.247780, 39.232639, 44.623180>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.008850, 39.211727, 44.614506>,  <34.610634, 39.176876, 44.600048>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.008850, 39.211727, 44.614506> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050360, 0.166886, 0.984689,
		0.079762, -0.982119, 0.170529,
		0.995541, 0.087129, 0.036148,
		35.307514, 39.237865, 44.625351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.881367, 38.688805, 45.125557>,  <34.610634, 39.176876, 44.600048>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.881367, 38.688805, 45.125557> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.155334, 38.975834, 45.074997>,  <35.319714, 39.148052, 45.044659>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.155334, 38.975834, 45.074997>,  <34.881367, 38.688805, 45.125557>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.155334, 38.975834, 45.074997> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080636, 0.097766, 0.991937,
		0.724146, -0.689586, 0.009099,
		0.684916, 0.717574, -0.126402,
		35.360809, 39.191105, 45.037075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.442806, 38.488300, 45.598404>,  <34.881367, 38.688805, 45.125557>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.442806, 38.488300, 45.598404> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.479889, 38.881664, 45.536041>,  <35.502140, 39.117683, 45.498623>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.479889, 38.881664, 45.536041>,  <35.442806, 38.488300, 45.598404>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.479889, 38.881664, 45.536041> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127201, 0.143605, 0.981426,
		0.987535, -0.110816, -0.111778,
		0.092705, 0.983411, -0.155911,
		35.507702, 39.176689, 45.489269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.058796, 38.779846, 45.940296>,  <35.442806, 38.488300, 45.598404>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.058796, 38.779846, 45.940296> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.811249, 39.093330, 45.919155>,  <35.662720, 39.281422, 45.906471>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.811249, 39.093330, 45.919155>,  <36.058796, 38.779846, 45.940296>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.811249, 39.093330, 45.919155> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016276, 0.080065, 0.996657,
		0.785326, 0.615938, -0.062305,
		-0.618868, 0.783715, -0.052852,
		35.625587, 39.328445, 45.903301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.753719, 39.046062, 45.869892>,  <36.058796, 38.779846, 45.940296>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.753719, 39.046062, 45.869892> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.151630, 39.042980, 45.910606>,  <37.390377, 39.041130, 45.935036>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.151630, 39.042980, 45.910606>,  <36.753719, 39.046062, 45.869892>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.151630, 39.042980, 45.910606> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091349, -0.377734, -0.921397,
		0.045545, 0.925882, -0.375057,
		0.994777, -0.007704, 0.101782,
		37.450062, 39.040668, 45.941139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.082680, 39.218098, 45.190029>,  <36.753719, 39.046062, 45.869892>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.082680, 39.218098, 45.190029> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.370201, 39.031830, 45.396511>,  <37.542713, 38.920067, 45.520401>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.370201, 39.031830, 45.396511>,  <37.082680, 39.218098, 45.190029>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.370201, 39.031830, 45.396511> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198455, -0.574177, -0.794315,
		0.666284, 0.673401, -0.320307,
		0.718805, -0.465673, 0.516205,
		37.585842, 38.892128, 45.551373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.732552, 39.279724, 44.825573>,  <37.082680, 39.218098, 45.190029>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.732552, 39.279724, 44.825573> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.739697, 38.941540, 45.039070>,  <37.743984, 38.738628, 45.167168>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.739697, 38.941540, 45.039070>,  <37.732552, 39.279724, 44.825573>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.739697, 38.941540, 45.039070> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176249, -0.522806, -0.834033,
		0.984183, 0.108970, 0.139673,
		0.017863, -0.845458, 0.533742,
		37.745056, 38.687901, 45.199192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.216545, 38.919960, 44.458092>,  <37.732552, 39.279724, 44.825573>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.216545, 38.919960, 44.458092> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.068085, 38.638885, 44.700901>,  <37.979008, 38.470242, 44.846584>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.068085, 38.638885, 44.700901>,  <38.216545, 38.919960, 44.458092>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.068085, 38.638885, 44.700901> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244897, -0.704642, -0.665962,
		0.895696, -0.098516, 0.433617,
		-0.371153, -0.702690, 0.607019,
		37.956738, 38.428078, 44.883007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.760014, 38.428997, 44.550339>,  <38.216545, 38.919960, 44.458092>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.760014, 38.428997, 44.550339> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.396515, 38.270908, 44.603985>,  <38.178417, 38.176056, 44.636173>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.396515, 38.270908, 44.603985>,  <38.760014, 38.428997, 44.550339>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.396515, 38.270908, 44.603985> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223393, -0.732054, -0.643578,
		0.352536, -0.554886, 0.753538,
		-0.908743, -0.395220, 0.134117,
		38.123894, 38.152344, 44.644218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.956120, 37.642857, 44.562233>,  <38.760014, 38.428997, 44.550339>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.956120, 37.642857, 44.562233> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.565594, 37.702343, 44.499371>,  <38.331280, 37.738037, 44.461655>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.565594, 37.702343, 44.499371>,  <38.956120, 37.642857, 44.562233>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.565594, 37.702343, 44.499371> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058523, -0.517761, -0.853522,
		-0.208304, -0.842500, 0.496792,
		-0.976312, 0.148718, -0.157157,
		38.272701, 37.746960, 44.452225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.655285, 36.961094, 44.498611>,  <38.956120, 37.642857, 44.562233>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.655285, 36.961094, 44.498611> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.398102, 37.216808, 44.329887>,  <38.243793, 37.370235, 44.228653>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.398102, 37.216808, 44.329887>,  <38.655285, 36.961094, 44.498611>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.398102, 37.216808, 44.329887> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139285, -0.639146, -0.756368,
		-0.753130, -0.427561, 0.499986,
		-0.642958, 0.639284, -0.421807,
		38.205215, 37.408592, 44.203346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.074512, 36.648010, 44.265793>,  <38.655285, 36.961094, 44.498611>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.074512, 36.648010, 44.265793> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.057686, 36.955898, 44.010998>,  <38.047592, 37.140633, 43.858120>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.057686, 36.955898, 44.010998>,  <38.074512, 36.648010, 44.265793>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.057686, 36.955898, 44.010998> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146253, -0.635429, -0.758182,
		-0.988352, 0.061269, 0.139304,
		-0.042064, 0.769724, -0.636989,
		38.045067, 37.186817, 43.819901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.626686, 36.483658, 43.714207>,  <38.074512, 36.648010, 44.265793>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.626686, 36.483658, 43.714207> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.850578, 36.778465, 43.562675>,  <37.984913, 36.955349, 43.471756>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.850578, 36.778465, 43.562675>,  <37.626686, 36.483658, 43.714207>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.850578, 36.778465, 43.562675> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025141, -0.441831, -0.896746,
		-0.828292, 0.511461, -0.228778,
		0.559732, 0.737016, -0.378824,
		38.018497, 36.999569, 43.449028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.355068, 36.572266, 43.012489>,  <37.626686, 36.483658, 43.714207>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.355068, 36.572266, 43.012489> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.726181, 36.719135, 43.039055>,  <37.948849, 36.807259, 43.054993>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.726181, 36.719135, 43.039055>,  <37.355068, 36.572266, 43.012489>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.726181, 36.719135, 43.039055> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208152, -0.361576, -0.908810,
		-0.309680, 0.856997, -0.411891,
		0.927777, 0.367176, 0.066413,
		38.004513, 36.829288, 43.058979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.465977, 36.783611, 42.291981>,  <37.355068, 36.572266, 43.012489>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.465977, 36.783611, 42.291981> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.814030, 36.720970, 42.478889>,  <38.022861, 36.683384, 42.591034>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.814030, 36.720970, 42.478889>,  <37.465977, 36.783611, 42.291981>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.814030, 36.720970, 42.478889> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356466, -0.454717, -0.816189,
		0.340294, 0.876760, -0.339841,
		0.870133, -0.156602, 0.467273,
		38.075069, 36.673988, 42.619072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.959103, 37.118042, 41.924854>,  <37.465977, 36.783611, 42.291981>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.959103, 37.118042, 41.924854> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.158497, 36.860489, 42.157032>,  <38.278133, 36.705956, 42.296337>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.158497, 36.860489, 42.157032>,  <37.959103, 37.118042, 41.924854>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.158497, 36.860489, 42.157032> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341771, -0.469365, -0.814180,
		0.796681, 0.604240, -0.013912,
		0.498490, -0.643887, 0.580446,
		38.308044, 36.667324, 42.331165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.432400, 37.060097, 41.376472>,  <37.959103, 37.118042, 41.924854>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.432400, 37.060097, 41.376472> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.522518, 36.827862, 41.689434>,  <38.576588, 36.688522, 41.877213>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.522518, 36.827862, 41.689434>,  <38.432400, 37.060097, 41.376472>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.522518, 36.827862, 41.689434> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385637, -0.684329, -0.618852,
		0.894722, 0.441147, 0.069723,
		0.225291, -0.580589, 0.782407,
		38.590107, 36.653687, 41.924156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.230537, 36.906704, 41.500149>,  <38.432400, 37.060097, 41.376472>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.230537, 36.906704, 41.500149> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.995785, 36.608566, 41.626656>,  <38.854931, 36.429684, 41.702560>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.995785, 36.608566, 41.626656>,  <39.230537, 36.906704, 41.500149>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.995785, 36.608566, 41.626656> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341882, -0.582208, -0.737665,
		0.733949, -0.324800, 0.596510,
		-0.586887, -0.745345, 0.316268,
		38.819717, 36.384964, 41.721535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<29.918125, 32.699501, 27.351635> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.563301, 32.518593, 27.314589>,  <29.350407, 32.410049, 27.292360>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.563301, 32.518593, 27.314589>,  <29.918125, 32.699501, 27.351635>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.563301, 32.518593, 27.314589> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272094, 0.350129, 0.896312,
		-0.372944, 0.820284, -0.433645,
		-0.887061, -0.452266, -0.092616,
		29.297182, 32.382912, 27.286804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.447521, 33.223957, 27.397682>,  <29.918125, 32.699501, 27.351635>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.447521, 33.223957, 27.397682> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.289370, 32.867279, 27.485825>,  <29.194479, 32.653271, 27.538710>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.289370, 32.867279, 27.485825>,  <29.447521, 33.223957, 27.397682>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.289370, 32.867279, 27.485825> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290524, 0.348993, 0.890955,
		-0.871363, 0.288244, -0.397042,
		-0.395377, -0.891695, 0.220357,
		29.170757, 32.599770, 27.551931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.934381, 33.421185, 27.784311>,  <29.447521, 33.223957, 27.397682>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.934381, 33.421185, 27.784311> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.967127, 33.034245, 27.880255>,  <28.986774, 32.802082, 27.937820>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.967127, 33.034245, 27.880255>,  <28.934381, 33.421185, 27.784311>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.967127, 33.034245, 27.880255> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342627, 0.198683, 0.918222,
		-0.935898, -0.157351, -0.315175,
		0.081863, -0.967350, 0.239860,
		28.991686, 32.744041, 27.952213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.315527, 33.248802, 28.130482>,  <28.934381, 33.421185, 27.784311>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.315527, 33.248802, 28.130482> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.565359, 32.957897, 28.244310>,  <28.715258, 32.783352, 28.312609>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.565359, 32.957897, 28.244310>,  <28.315527, 33.248802, 28.130482>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.565359, 32.957897, 28.244310> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413326, 0.001335, 0.910582,
		-0.662617, -0.686353, -0.299765,
		0.624580, -0.727268, 0.284572,
		28.752733, 32.739716, 28.329681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.934408, 32.842754, 28.509380>,  <28.315527, 33.248802, 28.130482>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.934408, 32.842754, 28.509380> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.308863, 32.759132, 28.622480>,  <28.533535, 32.708961, 28.690340>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.308863, 32.759132, 28.622480>,  <27.934408, 32.842754, 28.509380>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.308863, 32.759132, 28.622480> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289421, -0.001376, 0.957201,
		-0.199716, -0.977903, -0.061793,
		0.936135, -0.209052, 0.282751,
		28.589703, 32.696419, 28.707306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.888214, 32.338268, 28.969088>,  <27.934408, 32.842754, 28.509380>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.888214, 32.338268, 28.969088> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.245781, 32.510651, 29.018385>,  <28.460321, 32.614082, 29.047964>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.245781, 32.510651, 29.018385>,  <27.888214, 32.338268, 28.969088>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.245781, 32.510651, 29.018385> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128894, -0.016194, 0.991526,
		0.429303, -0.902226, 0.041072,
		0.893916, 0.430959, 0.123243,
		28.513956, 32.639938, 29.055359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.288309, 32.050999, 29.632484>,  <27.888214, 32.338268, 28.969088>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.288309, 32.050999, 29.632484> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.485933, 32.387653, 29.545263>,  <28.604507, 32.589645, 29.492931>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.485933, 32.387653, 29.545263>,  <28.288309, 32.050999, 29.632484>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.485933, 32.387653, 29.545263> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132203, 0.175158, 0.975624,
		0.859316, -0.510846, -0.024729,
		0.494062, 0.841638, -0.218052,
		28.634151, 32.640144, 29.479847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.856747, 32.070965, 30.125767>,  <28.288309, 32.050999, 29.632484>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.856747, 32.070965, 30.125767> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.828482, 32.437031, 29.967028>,  <28.811523, 32.656670, 29.871784>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.828482, 32.437031, 29.967028>,  <28.856747, 32.070965, 30.125767>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.828482, 32.437031, 29.967028> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288172, 0.399606, 0.870214,
		0.954968, -0.052871, -0.291960,
		-0.070660, 0.915161, -0.396847,
		28.807283, 32.711578, 29.847973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.432251, 32.510136, 30.350330>,  <28.856747, 32.070965, 30.125767>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.432251, 32.510136, 30.350330> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.154018, 32.773479, 30.235277>,  <28.987080, 32.931484, 30.166245>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.154018, 32.773479, 30.235277>,  <29.432251, 32.510136, 30.350330>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.154018, 32.773479, 30.235277> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252676, 0.598950, 0.759877,
		0.672549, 0.455878, -0.582969,
		-0.695581, 0.658357, -0.287634,
		28.945345, 32.970985, 30.148987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.649794, 33.230843, 30.406065>,  <29.432251, 32.510136, 30.350330>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.649794, 33.230843, 30.406065> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.251537, 33.267746, 30.411482>,  <29.012583, 33.289890, 30.414732>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.251537, 33.267746, 30.411482>,  <29.649794, 33.230843, 30.406065>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.251537, 33.267746, 30.411482> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060998, 0.534556, 0.842929,
		0.070532, 0.840082, -0.537855,
		-0.995643, 0.092261, 0.013540,
		28.952845, 33.295425, 30.415545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.512581, 33.910694, 30.737873>,  <29.649794, 33.230843, 30.406065>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.512581, 33.910694, 30.737873> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.141209, 33.762165, 30.742449>,  <28.918385, 33.673046, 30.745193>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.141209, 33.762165, 30.742449>,  <29.512581, 33.910694, 30.737873>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.141209, 33.762165, 30.742449> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210900, 0.552168, 0.806617,
		-0.305834, 0.746477, -0.590963,
		-0.928433, -0.371325, 0.011440,
		28.862679, 33.650768, 30.745880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.031433, 34.487286, 30.911024>,  <29.512581, 33.910694, 30.737873>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.031433, 34.487286, 30.911024> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.820807, 34.158302, 30.997080>,  <28.694431, 33.960911, 31.048714>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.820807, 34.158302, 30.997080>,  <29.031433, 34.487286, 30.911024>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.820807, 34.158302, 30.997080> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422456, 0.472757, 0.773325,
		-0.737740, 0.316318, -0.596391,
		-0.526565, -0.822462, 0.215141,
		28.662836, 33.911564, 31.061623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.441681, 34.718140, 31.253927>,  <29.031433, 34.487286, 30.911024>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.441681, 34.718140, 31.253927> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.422297, 34.329281, 31.345652>,  <28.410666, 34.095966, 31.400686>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.422297, 34.329281, 31.345652>,  <28.441681, 34.718140, 31.253927>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.422297, 34.329281, 31.345652> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519561, 0.220614, 0.825461,
		-0.853058, -0.079138, -0.515780,
		-0.048463, -0.972146, 0.229313,
		28.407757, 34.037636, 31.414446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.694723, 34.592709, 31.416677>,  <28.441681, 34.718140, 31.253927>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.694723, 34.592709, 31.416677> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.912420, 34.307369, 31.593279>,  <28.043039, 34.136166, 31.699240>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.912420, 34.307369, 31.593279>,  <27.694723, 34.592709, 31.416677>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.912420, 34.307369, 31.593279> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451067, 0.194905, 0.870948,
		-0.707345, -0.673157, -0.215694,
		0.544245, -0.713353, 0.441503,
		28.075693, 34.093365, 31.725729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.227713, 34.223827, 31.702902>,  <27.694723, 34.592709, 31.416677>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.227713, 34.223827, 31.702902> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.556435, 34.144958, 31.916727>,  <27.753668, 34.097637, 32.045021>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.556435, 34.144958, 31.916727>,  <27.227713, 34.223827, 31.702902>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.556435, 34.144958, 31.916727> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484277, 0.252581, 0.837662,
		-0.300185, -0.947273, 0.112086,
		0.821806, -0.197173, 0.534564,
		27.802977, 34.085808, 32.077095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.945944, 33.860661, 32.175842>,  <27.227713, 34.223827, 31.702902>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.945944, 33.860661, 32.175842> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.294769, 33.991726, 32.321247>,  <27.504065, 34.070366, 32.408489>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.294769, 33.991726, 32.321247>,  <26.945944, 33.860661, 32.175842>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.294769, 33.991726, 32.321247> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460086, 0.295741, 0.837173,
		0.166805, -0.897315, 0.408658,
		0.872065, 0.327662, 0.363511,
		27.556389, 34.090027, 32.430302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.884447, 33.718517, 32.818260>,  <26.945944, 33.860661, 32.175842>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.884447, 33.718517, 32.818260> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.195501, 33.968327, 32.847271>,  <27.382133, 34.118210, 32.864677>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.195501, 33.968327, 32.847271>,  <26.884447, 33.718517, 32.818260>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.195501, 33.968327, 32.847271> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308682, 0.278753, 0.909402,
		0.547724, -0.729568, 0.409546,
		0.777633, 0.624521, 0.072525,
		27.428791, 34.155682, 32.869030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.083363, 33.626595, 33.456692>,  <26.884447, 33.718517, 32.818260>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.083363, 33.626595, 33.456692> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.247511, 33.970501, 33.335106>,  <27.346001, 34.176846, 33.262154>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.247511, 33.970501, 33.335106>,  <27.083363, 33.626595, 33.456692>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.247511, 33.970501, 33.335106> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243683, 0.424591, 0.871975,
		0.878757, -0.283763, 0.383751,
		0.410371, 0.859768, -0.303964,
		27.370623, 34.228432, 33.243916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.723429, 33.714725, 33.770355>,  <27.083363, 33.626595, 33.456692>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.723429, 33.714725, 33.770355> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.545704, 34.062706, 33.684772>,  <27.439068, 34.271492, 33.633423>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.545704, 34.062706, 33.684772>,  <27.723429, 33.714725, 33.770355>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.545704, 34.062706, 33.684772> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069181, 0.204793, 0.976358,
		0.893196, 0.448611, -0.030808,
		-0.444313, 0.869947, -0.213956,
		27.412411, 34.323689, 33.620586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.324572, 34.155197, 33.828613>,  <27.723429, 33.714725, 33.770355>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.324572, 34.155197, 33.828613> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.619242, 34.074463, 34.086784>,  <28.796043, 34.026020, 34.241688>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.619242, 34.074463, 34.086784>,  <28.324572, 34.155197, 33.828613>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.619242, 34.074463, 34.086784> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.675051, 0.162708, -0.719606,
		0.040228, 0.965809, 0.256113,
		0.736674, -0.201838, 0.645425,
		28.840244, 34.013912, 34.280411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.949686, 34.639740, 33.685780>,  <28.324572, 34.155197, 33.828613>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.949686, 34.639740, 33.685780> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.132818, 34.353668, 33.897026>,  <29.242697, 34.182026, 34.023773>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.132818, 34.353668, 33.897026>,  <28.949686, 34.639740, 33.685780>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.132818, 34.353668, 33.897026> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.729214, -0.037724, -0.683244,
		0.508565, 0.697923, 0.504248,
		0.457830, -0.715179, 0.528120,
		29.270166, 34.139114, 34.055462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.622831, 34.872589, 33.705292>,  <28.949686, 34.639740, 33.685780>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.622831, 34.872589, 33.705292> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.642124, 34.479687, 33.777790>,  <29.653700, 34.243946, 33.821289>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.642124, 34.479687, 33.777790>,  <29.622831, 34.872589, 33.705292>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.642124, 34.479687, 33.777790> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.827614, -0.062291, -0.557831,
		0.559222, 0.176903, 0.809923,
		0.048231, -0.982255, 0.181242,
		29.656593, 34.185009, 33.832161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.258625, 34.804104, 34.080360>,  <29.622831, 34.872589, 33.705292>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.258625, 34.804104, 34.080360> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.146891, 34.458496, 33.912819>,  <30.079849, 34.251129, 33.812294>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.146891, 34.458496, 33.912819>,  <30.258625, 34.804104, 34.080360>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.146891, 34.458496, 33.912819> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.840662, -0.009290, -0.541480,
		0.463959, -0.503369, 0.728945,
		-0.279336, -0.864022, -0.418853,
		30.063089, 34.199291, 33.787163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.745174, 34.220455, 34.206463>,  <30.258625, 34.804104, 34.080360>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.745174, 34.220455, 34.206463> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.532534, 34.165405, 33.872166>,  <30.404949, 34.132378, 33.671589>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.532534, 34.165405, 33.872166>,  <30.745174, 34.220455, 34.206463>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.532534, 34.165405, 33.872166> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.846402, -0.123203, -0.518097,
		-0.031664, -0.982792, 0.181979,
		-0.531602, -0.137623, -0.835739,
		30.373053, 34.124119, 33.621445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.270151, 33.814140, 33.895027>,  <30.745174, 34.220455, 34.206463>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.270151, 33.814140, 33.895027> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.012964, 33.900883, 33.601204>,  <30.858652, 33.952930, 33.424911>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.012964, 33.900883, 33.601204>,  <31.270151, 33.814140, 33.895027>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.012964, 33.900883, 33.601204> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.764452, 0.122859, -0.632865,
		-0.046996, -0.968441, -0.244771,
		-0.642965, 0.216858, -0.734553,
		30.820074, 33.965939, 33.380836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.480667, 33.436211, 33.363949>,  <31.270151, 33.814140, 33.895027>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.480667, 33.436211, 33.363949> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.230293, 33.678276, 33.167183>,  <31.080069, 33.823517, 33.049122>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.230293, 33.678276, 33.167183>,  <31.480667, 33.436211, 33.363949>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.230293, 33.678276, 33.167183> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594964, -0.037257, -0.802888,
		-0.504209, -0.795227, -0.336732,
		-0.625932, 0.605167, -0.491917,
		31.042513, 33.859825, 33.019608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.491049, 33.138321, 32.809288>,  <31.480667, 33.436211, 33.363949>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.491049, 33.138321, 32.809288> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.358889, 33.508301, 32.734138>,  <31.279593, 33.730289, 32.689049>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.358889, 33.508301, 32.734138>,  <31.491049, 33.138321, 32.809288>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.358889, 33.508301, 32.734138> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539664, 0.021826, -0.841597,
		-0.774338, -0.379454, -0.506376,
		-0.330399, 0.924953, -0.187877,
		31.259769, 33.785786, 32.677776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.340818, 33.085636, 32.077724>,  <31.491049, 33.138321, 32.809288>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.340818, 33.085636, 32.077724> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.385637, 33.475082, 32.157249>,  <31.412529, 33.708748, 32.204964>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.385637, 33.475082, 32.157249>,  <31.340818, 33.085636, 32.077724>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.385637, 33.475082, 32.157249> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375771, 0.143704, -0.915503,
		-0.919914, 0.177287, -0.349753,
		0.112046, 0.973611, 0.198815,
		31.419250, 33.767166, 32.216892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.941471, 33.565933, 31.515974>,  <31.340818, 33.085636, 32.077724>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.941471, 33.565933, 31.515974> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.240860, 33.762894, 31.693663>,  <31.420492, 33.881069, 31.800276>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.240860, 33.762894, 31.693663>,  <30.941471, 33.565933, 31.515974>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.240860, 33.762894, 31.693663> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377063, 0.235051, -0.895865,
		-0.545541, 0.838027, -0.009738,
		0.748470, 0.492403, 0.444219,
		31.465401, 33.910614, 31.826929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.973885, 34.101536, 31.084618>,  <30.941471, 33.565933, 31.515974>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.973885, 34.101536, 31.084618> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.336456, 34.099308, 31.253544>,  <31.553999, 34.097969, 31.354900>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.336456, 34.099308, 31.253544>,  <30.973885, 34.101536, 31.084618>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.336456, 34.099308, 31.253544> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419992, 0.117487, -0.899891,
		-0.044603, 0.993059, 0.108833,
		0.906431, -0.005571, 0.422317,
		31.608385, 34.097637, 31.380239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.421957, 34.697227, 30.745371>,  <30.973885, 34.101536, 31.084618>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.421957, 34.697227, 30.745371> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.690899, 34.455830, 30.916830>,  <31.852264, 34.310993, 31.019707>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.690899, 34.455830, 30.916830>,  <31.421957, 34.697227, 30.745371>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.690899, 34.455830, 30.916830> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578137, 0.066485, -0.813226,
		0.462276, 0.794593, 0.393602,
		0.672353, -0.603491, 0.428649,
		31.892605, 34.274780, 31.045425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.983629, 34.956112, 30.523594>,  <31.421957, 34.697227, 30.745371>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.983629, 34.956112, 30.523594> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.108418, 34.602840, 30.663687>,  <32.183292, 34.390877, 30.747742>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.108418, 34.602840, 30.663687>,  <31.983629, 34.956112, 30.523594>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.108418, 34.602840, 30.663687> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584721, -0.112070, -0.803456,
		0.748849, 0.455443, 0.481453,
		0.311972, -0.883183, 0.350230,
		32.202007, 34.337887, 30.768755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.627876, 35.041576, 30.711332>,  <31.983629, 34.956112, 30.523594>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.627876, 35.041576, 30.711332> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.581329, 34.661461, 30.595816>,  <32.553402, 34.433392, 30.526505>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.581329, 34.661461, 30.595816>,  <32.627876, 35.041576, 30.711332>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.581329, 34.661461, 30.595816> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.763050, 0.100587, -0.638465,
		0.635777, -0.294663, 0.713415,
		-0.116372, -0.950293, -0.288793,
		32.546417, 34.376373, 30.509178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.217861, 34.942238, 30.288979>,  <32.627876, 35.041576, 30.711332>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.217861, 34.942238, 30.288979> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.027706, 34.601089, 30.202618>,  <32.913612, 34.396400, 30.150801>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.027706, 34.601089, 30.202618>,  <33.217861, 34.942238, 30.288979>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.027706, 34.601089, 30.202618> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504752, -0.063400, -0.860933,
		0.720580, -0.518252, 0.460629,
		-0.475384, -0.852875, -0.215904,
		32.885090, 34.345226, 30.137846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.686653, 34.474003, 29.978617>,  <33.217861, 34.942238, 30.288979>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.686653, 34.474003, 29.978617> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.342754, 34.299717, 29.872040>,  <33.136414, 34.195145, 29.808094>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.342754, 34.299717, 29.872040>,  <33.686653, 34.474003, 29.978617>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.342754, 34.299717, 29.872040> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352812, -0.129485, -0.926691,
		0.369271, -0.890723, 0.265049,
		-0.859745, -0.435713, -0.266443,
		33.084831, 34.169003, 29.792107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.866222, 33.827682, 29.601019>,  <33.686653, 34.474003, 29.978617>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.866222, 33.827682, 29.601019> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.481274, 33.878723, 29.505051>,  <33.250305, 33.909348, 29.447470>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.481274, 33.878723, 29.505051>,  <33.866222, 33.827682, 29.601019>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.481274, 33.878723, 29.505051> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204121, -0.243362, -0.948214,
		-0.179384, -0.961505, 0.208157,
		-0.962370, 0.127605, -0.239919,
		33.192562, 33.917004, 29.433075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.488499, 33.134464, 29.341812>,  <33.866222, 33.827682, 29.601019>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.488499, 33.134464, 29.341812> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.319542, 33.468391, 29.200583>,  <33.218166, 33.668747, 29.115845>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.319542, 33.468391, 29.200583>,  <33.488499, 33.134464, 29.341812>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.319542, 33.468391, 29.200583> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205222, -0.291332, -0.934350,
		-0.882876, -0.467119, -0.048268,
		-0.422390, 0.834821, -0.353073,
		33.192825, 33.718838, 29.094660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.131836, 32.875160, 28.953737>,  <33.488499, 33.134464, 29.341812>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.131836, 32.875160, 28.953737> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.119389, 33.252331, 28.821115>,  <33.111919, 33.478634, 28.741543>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.119389, 33.252331, 28.821115>,  <33.131836, 32.875160, 28.953737>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.119389, 33.252331, 28.821115> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102515, -0.332977, -0.937346,
		-0.994245, 0.004825, 0.107024,
		-0.031114, 0.942923, -0.331555,
		33.110054, 33.535206, 28.721649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.644974, 32.742336, 28.442039>,  <33.131836, 32.875160, 28.953737>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.644974, 32.742336, 28.442039> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.773617, 33.111279, 28.356409>,  <32.850803, 33.332645, 28.305031>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.773617, 33.111279, 28.356409>,  <32.644974, 32.742336, 28.442039>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.773617, 33.111279, 28.356409> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221277, -0.146616, -0.964127,
		-0.920654, 0.357444, 0.156943,
		0.321611, 0.922355, -0.214076,
		32.870098, 33.387985, 28.292187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.130119, 33.087086, 28.034863>,  <32.644974, 32.742336, 28.442039>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.130119, 33.087086, 28.034863> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.484509, 33.257366, 27.961287>,  <32.697144, 33.359535, 27.917141>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.484509, 33.257366, 27.961287>,  <32.130119, 33.087086, 28.034863>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.484509, 33.257366, 27.961287> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123948, -0.164841, -0.978501,
		-0.446866, 0.889725, -0.093280,
		0.885973, 0.425696, -0.183942,
		32.750301, 33.385075, 27.906103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.993708, 33.550732, 27.507174>,  <32.130119, 33.087086, 28.034863>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.993708, 33.550732, 27.507174> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.391117, 33.507805, 27.492235>,  <32.629562, 33.482048, 27.483273>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.391117, 33.507805, 27.492235>,  <31.993708, 33.550732, 27.507174>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.391117, 33.507805, 27.492235> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047386, -0.092597, -0.994575,
		0.103276, 0.989904, -0.097083,
		0.993523, -0.107317, -0.037344,
		32.689175, 33.475609, 27.481031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.307289, 33.999844, 26.999502>,  <31.993708, 33.550732, 27.507174>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.307289, 33.999844, 26.999502> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.507645, 33.656837, 27.046474>,  <32.627857, 33.451035, 27.074657>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.507645, 33.656837, 27.046474>,  <32.307289, 33.999844, 26.999502>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.507645, 33.656837, 27.046474> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293718, -0.296035, -0.908897,
		0.814153, 0.420760, -0.400146,
		0.500884, -0.857510, 0.117433,
		32.657909, 33.399586, 27.081705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<39.076469, 35.215099, 46.433323> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.678314, 35.247528, 46.412788>,  <38.439423, 35.266987, 46.400467>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.678314, 35.247528, 46.412788>,  <39.076469, 35.215099, 46.433323>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.678314, 35.247528, 46.412788> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008125, 0.604219, 0.796777,
		0.095616, 0.792683, -0.602090,
		-0.995385, 0.081076, -0.051332,
		38.379700, 35.271851, 46.397388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.917446, 35.850975, 46.388573>,  <39.076469, 35.215099, 46.433323>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.917446, 35.850975, 46.388573> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.559803, 35.718765, 46.509449>,  <38.345215, 35.639439, 46.581974>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.559803, 35.718765, 46.509449>,  <38.917446, 35.850975, 46.388573>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.559803, 35.718765, 46.509449> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014918, 0.652410, 0.757719,
		-0.447596, 0.681994, -0.578397,
		-0.894112, -0.330523, 0.302190,
		38.291569, 35.619610, 46.600105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.547783, 36.460785, 46.618198>,  <38.917446, 35.850975, 46.388573>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.547783, 36.460785, 46.618198> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.386169, 36.139248, 46.792824>,  <38.289200, 35.946323, 46.897598>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.386169, 36.139248, 46.792824>,  <38.547783, 36.460785, 46.618198>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.386169, 36.139248, 46.792824> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090904, 0.510171, 0.855255,
		-0.910215, 0.305870, -0.279201,
		-0.404037, -0.803846, 0.436561,
		38.264957, 35.898094, 46.923794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.963520, 36.676178, 46.716152>,  <38.547783, 36.460785, 46.618198>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.963520, 36.676178, 46.716152> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.034832, 36.382835, 46.978573>,  <38.077621, 36.206829, 47.136024>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.034832, 36.382835, 46.978573>,  <37.963520, 36.676178, 46.716152>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.034832, 36.382835, 46.978573> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125534, 0.644329, 0.754375,
		-0.975939, -0.216849, 0.022811,
		0.178283, -0.733360, 0.656048,
		38.088318, 36.162827, 47.175388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.384880, 36.632332, 47.105888>,  <37.963520, 36.676178, 46.716152>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.384880, 36.632332, 47.105888> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.665928, 36.446514, 47.321487>,  <37.834557, 36.335022, 47.450848>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.665928, 36.446514, 47.321487>,  <37.384880, 36.632332, 47.105888>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.665928, 36.446514, 47.321487> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182793, 0.614228, 0.767665,
		-0.687683, -0.637904, 0.346655,
		0.702623, -0.464544, 0.538999,
		37.876717, 36.307152, 47.483189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.062565, 36.522682, 47.645744>,  <37.384880, 36.632332, 47.105888>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.062565, 36.522682, 47.645744> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.446903, 36.512691, 47.756130>,  <37.677505, 36.506695, 47.822361>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.446903, 36.512691, 47.756130>,  <37.062565, 36.522682, 47.645744>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.446903, 36.512691, 47.756130> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176030, 0.714122, 0.677527,
		-0.213999, -0.699575, 0.681762,
		0.960842, -0.024980, 0.275967,
		37.735157, 36.505199, 47.838921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.099152, 36.508442, 48.418884>,  <37.062565, 36.522682, 47.645744>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.099152, 36.508442, 48.418884> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.465839, 36.643341, 48.333206>,  <37.685852, 36.724281, 48.281799>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.465839, 36.643341, 48.333206>,  <37.099152, 36.508442, 48.418884>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.465839, 36.643341, 48.333206> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083595, 0.686178, 0.722614,
		0.390677, -0.644532, 0.657229,
		0.916724, 0.337249, -0.214194,
		37.740856, 36.744514, 48.268948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.381630, 36.579639, 49.091923>,  <37.099152, 36.508442, 48.418884>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.381630, 36.579639, 49.091923> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.613029, 36.763542, 48.822418>,  <37.751869, 36.873882, 48.660713>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.613029, 36.763542, 48.822418>,  <37.381630, 36.579639, 49.091923>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.613029, 36.763542, 48.822418> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190976, 0.726713, 0.659861,
		0.793010, -0.510403, 0.332602,
		0.578501, 0.459757, -0.673766,
		37.786579, 36.901470, 48.620289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.080402, 36.694309, 49.373074>,  <37.381630, 36.579639, 49.091923>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.080402, 36.694309, 49.373074> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.993809, 36.984032, 49.111229>,  <37.941853, 37.157864, 48.954124>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.993809, 36.984032, 49.111229>,  <38.080402, 36.694309, 49.373074>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.993809, 36.984032, 49.111229> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252930, 0.689227, 0.678964,
		0.942952, -0.018583, -0.332409,
		-0.216488, 0.724307, -0.654609,
		37.928864, 37.201324, 48.914845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.636364, 37.162354, 49.518017>,  <38.080402, 36.694309, 49.373074>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.636364, 37.162354, 49.518017> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.353203, 37.353737, 49.310188>,  <38.183308, 37.468567, 49.185490>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.353203, 37.353737, 49.310188>,  <38.636364, 37.162354, 49.518017>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.353203, 37.353737, 49.310188> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103825, 0.798113, 0.593494,
		0.698640, 0.366190, -0.614660,
		-0.707900, 0.478456, -0.519574,
		38.140835, 37.497272, 49.154316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.829708, 37.797970, 49.290405>,  <38.636364, 37.162354, 49.518017>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.829708, 37.797970, 49.290405> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.431702, 37.798553, 49.330284>,  <38.192898, 37.798904, 49.354214>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.431702, 37.798553, 49.330284>,  <38.829708, 37.797970, 49.290405>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.431702, 37.798553, 49.330284> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075638, 0.662561, 0.745179,
		-0.064971, 0.749007, -0.659369,
		-0.995016, 0.001459, 0.099700,
		38.133198, 37.798992, 49.360195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.717915, 38.311268, 49.678837>,  <38.829708, 37.797970, 49.290405>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.717915, 38.311268, 49.678837> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.333408, 38.201408, 49.669525>,  <38.102707, 38.135494, 49.663937>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.333408, 38.201408, 49.669525>,  <38.717915, 38.311268, 49.678837>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.333408, 38.201408, 49.669525> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171431, 0.529592, 0.830749,
		-0.215836, 0.802559, -0.556160,
		-0.961263, -0.274649, -0.023278,
		38.045029, 38.119015, 49.662540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.415215, 38.847958, 49.908085>,  <38.717915, 38.311268, 49.678837>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.415215, 38.847958, 49.908085> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.132454, 38.571003, 49.965900>,  <37.962795, 38.404831, 50.000591>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.132454, 38.571003, 49.965900>,  <38.415215, 38.847958, 49.908085>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.132454, 38.571003, 49.965900> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118243, 0.317160, 0.940972,
		-0.697356, 0.648086, -0.306072,
		-0.706904, -0.692383, 0.144542,
		37.920383, 38.363289, 50.009262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.946362, 39.014172, 50.532867>,  <38.415215, 38.847958, 49.908085>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.946362, 39.014172, 50.532867> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.744003, 38.735287, 50.736031>,  <38.622589, 38.567955, 50.857929>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.744003, 38.735287, 50.736031>,  <38.946362, 39.014172, 50.532867>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.744003, 38.735287, 50.736031> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114360, -0.637830, -0.761639,
		0.854983, -0.327222, 0.402406,
		-0.505892, -0.697208, 0.507913,
		38.592236, 38.526123, 50.888405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.256477, 39.018002, 50.931332>,  <38.946362, 39.014172, 50.532867>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.256477, 39.018002, 50.931332> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.959335, 39.190731, 51.135952>,  <37.781048, 39.294369, 51.258724>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.959335, 39.190731, 51.135952>,  <38.256477, 39.018002, 50.931332>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.959335, 39.190731, 51.135952> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138369, -0.846683, 0.513792,
		0.654994, 0.310891, 0.688716,
		-0.742857, 0.431828, 0.511555,
		37.736477, 39.320278, 51.289417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.418026, 39.685005, 50.493748>,  <38.256477, 39.018002, 50.931332>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.418026, 39.685005, 50.493748> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.443211, 40.081593, 50.539394>,  <38.458321, 40.319546, 50.566784>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.443211, 40.081593, 50.539394>,  <38.418026, 39.685005, 50.493748>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.443211, 40.081593, 50.539394> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007698, 0.114825, -0.993356,
		-0.997986, 0.061665, 0.014862,
		0.062962, 0.991470, 0.114119,
		38.462097, 40.379032, 50.573631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.814095, 40.008537, 50.183147>,  <38.418026, 39.685005, 50.493748>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.814095, 40.008537, 50.183147> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.103573, 40.284584, 50.182892>,  <38.277260, 40.450211, 50.182739>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.103573, 40.284584, 50.182892>,  <37.814095, 40.008537, 50.183147>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.103573, 40.284584, 50.182892> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179268, 0.187102, -0.965845,
		-0.666425, 0.699095, 0.259121,
		0.723699, 0.690115, -0.000636,
		38.320683, 40.491619, 50.182701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.567524, 40.453495, 49.775402>,  <37.814095, 40.008537, 50.183147>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.567524, 40.453495, 49.775402> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.960102, 40.529484, 49.785839>,  <38.195648, 40.575077, 49.792099>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.960102, 40.529484, 49.785839>,  <37.567524, 40.453495, 49.775402>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.960102, 40.529484, 49.785839> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018472, 0.229091, -0.973230,
		-0.190860, 0.954688, 0.228349,
		0.981443, 0.189969, 0.026090,
		38.254536, 40.586475, 49.793667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.749397, 41.211891, 49.506359>,  <37.567524, 40.453495, 49.775402>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.749397, 41.211891, 49.506359> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.070919, 40.975269, 49.481178>,  <38.263832, 40.833298, 49.466068>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.070919, 40.975269, 49.481178>,  <37.749397, 41.211891, 49.506359>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.070919, 40.975269, 49.481178> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009990, 0.119227, -0.992817,
		0.594812, 0.797400, 0.101745,
		0.803803, -0.591556, -0.062952,
		38.312061, 40.797802, 49.462292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.014439, 41.350681, 48.891735>,  <37.749397, 41.211891, 49.506359>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.014439, 41.350681, 48.891735> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.224693, 41.025379, 48.991585>,  <38.350845, 40.830196, 49.051495>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.224693, 41.025379, 48.991585>,  <38.014439, 41.350681, 48.891735>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.224693, 41.025379, 48.991585> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089301, -0.239063, -0.966889,
		0.846006, 0.530528, -0.053036,
		0.525641, -0.813258, 0.249626,
		38.382385, 40.781403, 49.066471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.646389, 41.345032, 48.403198>,  <38.014439, 41.350681, 48.891735>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.646389, 41.345032, 48.403198> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.529842, 40.986004, 48.535545>,  <38.459915, 40.770588, 48.614956>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.529842, 40.986004, 48.535545>,  <38.646389, 41.345032, 48.403198>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.529842, 40.986004, 48.535545> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011131, -0.349035, -0.937044,
		0.956546, -0.269343, 0.111689,
		-0.291369, -0.897569, 0.330870,
		38.442432, 40.716732, 48.634808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.051281, 40.842545, 48.036602>,  <38.646389, 41.345032, 48.403198>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.051281, 40.842545, 48.036602> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.737907, 40.620319, 48.148014>,  <38.549881, 40.486984, 48.214863>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.737907, 40.620319, 48.148014>,  <39.051281, 40.842545, 48.036602>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.737907, 40.620319, 48.148014> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067327, -0.521412, -0.850645,
		0.617815, -0.647673, 0.445897,
		-0.783436, -0.555562, 0.278530,
		38.502876, 40.453651, 48.231571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.143990, 40.178967, 47.803017>,  <39.051281, 40.842545, 48.036602>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.143990, 40.178967, 47.803017> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.758633, 40.139294, 47.902653>,  <38.527420, 40.115490, 47.962433>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.758633, 40.139294, 47.902653>,  <39.143990, 40.178967, 47.803017>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.758633, 40.139294, 47.902653> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143171, -0.595185, -0.790732,
		0.226681, -0.797445, 0.559194,
		-0.963389, -0.099184, 0.249088,
		38.469616, 40.109539, 47.977379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.035011, 39.486908, 47.779892>,  <39.143990, 40.178967, 47.803017>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.035011, 39.486908, 47.779892> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.681545, 39.665161, 47.722553>,  <38.469467, 39.772114, 47.688152>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.681545, 39.665161, 47.722553>,  <39.035011, 39.486908, 47.779892>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.681545, 39.665161, 47.722553> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204457, -0.642877, -0.738178,
		-0.421108, -0.622995, 0.659201,
		-0.883666, 0.445631, -0.143345,
		38.416447, 39.798851, 47.679550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.457584, 38.899628, 47.776897>,  <39.035011, 39.486908, 47.779892>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.457584, 38.899628, 47.776897> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.249733, 39.216179, 47.648083>,  <38.125023, 39.406109, 47.570793>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.249733, 39.216179, 47.648083>,  <38.457584, 38.899628, 47.776897>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.249733, 39.216179, 47.648083> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312648, -0.526901, -0.790333,
		-0.795133, -0.309996, 0.521216,
		-0.519629, 0.791377, -0.322037,
		38.093845, 39.453590, 47.551472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.918850, 38.695972, 47.511749>,  <38.457584, 38.899628, 47.776897>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.918850, 38.695972, 47.511749> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.941040, 39.052410, 47.331581>,  <37.954353, 39.266273, 47.223480>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.941040, 39.052410, 47.331581>,  <37.918850, 38.695972, 47.511749>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.941040, 39.052410, 47.331581> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424333, -0.387310, -0.818494,
		-0.903805, 0.236533, 0.356635,
		0.055473, 0.891091, -0.450421,
		37.957684, 39.319736, 47.196453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.393852, 38.669491, 47.217812>,  <37.918850, 38.695972, 47.511749>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.393852, 38.669491, 47.217812> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.582905, 38.955391, 47.011608>,  <37.696335, 39.126930, 46.887886>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.582905, 38.955391, 47.011608>,  <37.393852, 38.669491, 47.217812>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.582905, 38.955391, 47.011608> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211287, -0.476001, -0.853686,
		-0.855557, 0.512399, -0.073955,
		0.472631, 0.714752, -0.515509,
		37.724693, 39.169815, 46.856956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.904404, 38.824818, 46.684624>,  <37.393852, 38.669491, 47.217812>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.904404, 38.824818, 46.684624> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.260796, 38.962555, 46.566250>,  <37.474632, 39.045197, 46.495224>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.260796, 38.962555, 46.566250>,  <36.904404, 38.824818, 46.684624>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.260796, 38.962555, 46.566250> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098015, -0.490551, -0.865883,
		-0.443331, 0.800493, -0.403322,
		0.890983, 0.344341, -0.295937,
		37.528091, 39.065857, 46.477470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.363277, 39.163189, 46.456051>,  <36.904404, 38.824818, 46.684624>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.363277, 39.163189, 46.456051> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.029709, 39.369316, 46.377033>,  <35.829567, 39.492992, 46.329624>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.029709, 39.369316, 46.377033>,  <36.363277, 39.163189, 46.456051>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.029709, 39.369316, 46.377033> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022514, 0.325881, 0.945143,
		0.551423, 0.792623, -0.260157,
		-0.833922, 0.515316, -0.197544,
		35.779533, 39.523911, 46.317772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.404644, 39.842621, 46.735542>,  <36.363277, 39.163189, 46.456051>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.404644, 39.842621, 46.735542> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.009850, 39.782532, 46.712605>,  <35.772972, 39.746479, 46.698841>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.009850, 39.782532, 46.712605>,  <36.404644, 39.842621, 46.735542>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.009850, 39.782532, 46.712605> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111124, 0.379504, 0.918492,
		-0.116216, 0.912912, -0.391259,
		-0.986988, -0.150222, -0.057342,
		35.713753, 39.737465, 46.695400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.238483, 40.430202, 47.177654>,  <36.404644, 39.842621, 46.735542>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.238483, 40.430202, 47.177654> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.945339, 40.160976, 47.137863>,  <35.769451, 39.999439, 47.113987>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.945339, 40.160976, 47.137863>,  <36.238483, 40.430202, 47.177654>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.945339, 40.160976, 47.137863> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316635, 0.207984, 0.925465,
		-0.602212, 0.709733, -0.365540,
		-0.732860, -0.673069, -0.099476,
		35.725483, 39.959057, 47.108021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.686535, 40.794510, 47.383652>,  <36.238483, 40.430202, 47.177654>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.686535, 40.794510, 47.383652> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.560459, 40.415562, 47.406063>,  <35.484814, 40.188190, 47.419510>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.560459, 40.415562, 47.406063>,  <35.686535, 40.794510, 47.383652>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.560459, 40.415562, 47.406063> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475706, 0.208801, 0.854462,
		-0.821196, 0.242658, -0.516483,
		-0.315185, -0.947375, 0.056033,
		35.465904, 40.131348, 47.422874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.979774, 40.763878, 47.510075>,  <35.686535, 40.794510, 47.383652>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.979774, 40.763878, 47.510075> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.122959, 40.419788, 47.655334>,  <35.208870, 40.213333, 47.742489>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.122959, 40.419788, 47.655334>,  <34.979774, 40.763878, 47.510075>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.122959, 40.419788, 47.655334> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447426, 0.183339, 0.875327,
		-0.819558, -0.475814, -0.319259,
		0.357960, -0.860226, 0.363148,
		35.230347, 40.161720, 47.764278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.406326, 40.486809, 47.872246>,  <34.979774, 40.763878, 47.510075>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.406326, 40.486809, 47.872246> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.705700, 40.298191, 48.058792>,  <34.885323, 40.185020, 48.170719>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.705700, 40.298191, 48.058792>,  <34.406326, 40.486809, 47.872246>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.705700, 40.298191, 48.058792> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370356, 0.286170, 0.883710,
		-0.550164, -0.834120, 0.039541,
		0.748436, -0.471541, 0.466362,
		34.930229, 40.156727, 48.198700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.141876, 40.027103, 48.424469>,  <34.406326, 40.486809, 47.872246>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.141876, 40.027103, 48.424469> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.521301, 40.103493, 48.525467>,  <34.748959, 40.149326, 48.586067>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.521301, 40.103493, 48.525467>,  <34.141876, 40.027103, 48.424469>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.521301, 40.103493, 48.525467> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289947, 0.203861, 0.935078,
		0.127093, -0.960194, 0.248745,
		0.948567, 0.190965, 0.252496,
		34.805870, 40.160782, 48.601215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.689339, 39.402214, 48.317043>,  <34.141876, 40.027103, 48.424469>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.689339, 39.402214, 48.317043> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.299114, 39.314651, 48.324646>,  <33.064980, 39.262112, 48.329208>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.299114, 39.314651, 48.324646>,  <33.689339, 39.402214, 48.317043>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.299114, 39.314651, 48.324646> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017283, -0.009804, -0.999803,
		0.219055, -0.975695, 0.005781,
		-0.975559, -0.218912, 0.019011,
		33.006447, 39.248978, 48.330349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.678894, 38.839214, 47.943600>,  <33.689339, 39.402214, 48.317043>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.678894, 38.839214, 47.943600> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.321800, 39.019405, 47.939526>,  <33.107544, 39.127522, 47.937080>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.321800, 39.019405, 47.939526>,  <33.678894, 38.839214, 47.943600>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.321800, 39.019405, 47.939526> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012363, 0.001884, -0.999922,
		-0.450423, -0.892786, -0.007251,
		-0.892730, 0.450477, -0.010188,
		33.053982, 39.154549, 47.936470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.300865, 38.535835, 47.410740>,  <33.678894, 38.839214, 47.943600>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.300865, 38.535835, 47.410740> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.108368, 38.882710, 47.461956>,  <32.992870, 39.090836, 47.492683>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.108368, 38.882710, 47.461956>,  <33.300865, 38.535835, 47.410740>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.108368, 38.882710, 47.461956> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152333, 0.061107, -0.986438,
		-0.863250, -0.494220, 0.102693,
		-0.481242, 0.867187, 0.128037,
		32.963997, 39.142864, 47.500366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.830570, 38.470364, 46.831062>,  <33.300865, 38.535835, 47.410740>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.830570, 38.470364, 46.831062> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.818745, 38.854618, 46.941551>,  <32.811649, 39.085171, 47.007843>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.818745, 38.854618, 46.941551>,  <32.830570, 38.470364, 46.831062>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.818745, 38.854618, 46.941551> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347218, 0.249262, -0.904051,
		-0.937318, -0.122637, 0.326181,
		-0.029565, 0.960640, 0.276220,
		32.809875, 39.142811, 47.024418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.289711, 38.689987, 46.506786>,  <32.830570, 38.470364, 46.831062>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.289711, 38.689987, 46.506786> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.498714, 39.013817, 46.613804>,  <32.624119, 39.208115, 46.678013>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.498714, 39.013817, 46.613804>,  <32.289711, 38.689987, 46.506786>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.498714, 39.013817, 46.613804> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175249, 0.409057, -0.895522,
		-0.834428, 0.421034, 0.355613,
		0.522511, 0.809570, 0.267543,
		32.655468, 39.256687, 46.694065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.921144, 39.355824, 46.303558>,  <32.289711, 38.689987, 46.506786>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.921144, 39.355824, 46.303558> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.314949, 39.418350, 46.335316>,  <32.551231, 39.455864, 46.354370>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.314949, 39.418350, 46.335316>,  <31.921144, 39.355824, 46.303558>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.314949, 39.418350, 46.335316> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022228, 0.337930, -0.940908,
		-0.173907, 0.928100, 0.329222,
		0.984511, 0.156313, 0.079398,
		32.610302, 39.465244, 46.359135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.015396, 39.913570, 45.961357>,  <31.921144, 39.355824, 46.303558>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.015396, 39.913570, 45.961357> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.404533, 39.820995, 45.959629>,  <32.638016, 39.765450, 45.958591>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.404533, 39.820995, 45.959629>,  <32.015396, 39.913570, 45.961357>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.404533, 39.820995, 45.959629> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039895, 0.186035, -0.981733,
		0.228014, 0.954897, 0.190215,
		0.972840, -0.231437, -0.004323,
		32.696384, 39.751564, 45.958332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<35.194763, 36.522846, 50.265350> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.478016, 36.691994, 50.039173>,  <35.647968, 36.793480, 49.903465>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.478016, 36.691994, 50.039173>,  <35.194763, 36.522846, 50.265350>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.478016, 36.691994, 50.039173> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461300, -0.329213, -0.823906,
		-0.534553, 0.844278, -0.038061,
		0.708136, 0.422864, -0.565447,
		35.690456, 36.818851, 49.869537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.755505, 36.804813, 49.792259>,  <35.194763, 36.522846, 50.265350>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.755505, 36.804813, 49.792259> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.125095, 36.802197, 49.639301>,  <35.346851, 36.800629, 49.547527>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.125095, 36.802197, 49.639301>,  <34.755505, 36.804813, 49.792259>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.125095, 36.802197, 49.639301> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378384, -0.160997, -0.911540,
		-0.055603, 0.986933, -0.151232,
		0.923977, -0.006540, -0.382392,
		35.402290, 36.800236, 49.524582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.807133, 37.051510, 48.950413>,  <34.755505, 36.804813, 49.792259>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.807133, 37.051510, 48.950413> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.148178, 36.858822, 49.031414>,  <35.352806, 36.743210, 49.080013>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.148178, 36.858822, 49.031414>,  <34.807133, 37.051510, 48.950413>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.148178, 36.858822, 49.031414> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065996, -0.483690, -0.872748,
		0.518365, 0.730748, -0.444189,
		0.852609, -0.481717, 0.202502,
		35.403961, 36.714306, 49.092163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.275066, 37.138000, 48.344151>,  <34.807133, 37.051510, 48.950413>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.275066, 37.138000, 48.344151> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.336262, 36.798607, 48.546803>,  <35.372978, 36.594971, 48.668392>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.336262, 36.798607, 48.546803>,  <35.275066, 37.138000, 48.344151>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.336262, 36.798607, 48.546803> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265035, -0.529110, -0.806101,
		0.952025, -0.010954, -0.305823,
		0.152984, -0.848482, 0.506630,
		35.382156, 36.544064, 48.698792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.715427, 36.686905, 47.875961>,  <35.275066, 37.138000, 48.344151>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.715427, 36.686905, 47.875961> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.576752, 36.423706, 48.143345>,  <35.493546, 36.265785, 48.303776>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.576752, 36.423706, 48.143345>,  <35.715427, 36.686905, 47.875961>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.576752, 36.423706, 48.143345> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181275, -0.652225, -0.736031,
		0.920296, -0.376352, 0.106843,
		-0.346692, -0.657998, 0.668463,
		35.472744, 36.226307, 48.343884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.071976, 36.055031, 47.752205>,  <35.715427, 36.686905, 47.875961>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.071976, 36.055031, 47.752205> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.752361, 35.939770, 47.963299>,  <35.560593, 35.870613, 48.089954>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.752361, 35.939770, 47.963299>,  <36.071976, 36.055031, 47.752205>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.752361, 35.939770, 47.963299> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067318, -0.829297, -0.554738,
		0.597502, -0.478782, 0.643241,
		-0.799037, -0.288155, 0.527737,
		35.512650, 35.853325, 48.121620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.180973, 35.297329, 47.802471>,  <36.071976, 36.055031, 47.752205>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.180973, 35.297329, 47.802471> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.796474, 35.348202, 47.900311>,  <35.565777, 35.378727, 47.959015>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.796474, 35.348202, 47.900311>,  <36.180973, 35.297329, 47.802471>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.796474, 35.348202, 47.900311> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251885, -0.765800, -0.591696,
		0.112063, -0.630377, 0.768158,
		-0.961247, 0.127180, 0.244600,
		35.508099, 35.386356, 47.973690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.924492, 34.680119, 48.053288>,  <36.180973, 35.297329, 47.802471>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.924492, 34.680119, 48.053288> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.593735, 34.858315, 47.916008>,  <35.395279, 34.965233, 47.833641>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.593735, 34.858315, 47.916008>,  <35.924492, 34.680119, 48.053288>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.593735, 34.858315, 47.916008> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116350, -0.732612, -0.670628,
		-0.550190, -0.514607, 0.657625,
		-0.826894, 0.445488, -0.343201,
		35.345665, 34.991962, 47.813049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.360950, 34.125996, 47.850220>,  <35.924492, 34.680119, 48.053288>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.360950, 34.125996, 47.850220> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.208675, 34.450497, 47.672710>,  <35.117310, 34.645199, 47.566204>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.208675, 34.450497, 47.672710>,  <35.360950, 34.125996, 47.850220>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.208675, 34.450497, 47.672710> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343573, -0.569649, -0.746631,
		-0.858505, -0.131768, 0.495586,
		-0.380692, 0.811257, -0.443775,
		35.094467, 34.693874, 47.539577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.699230, 33.879314, 47.672428>,  <35.360950, 34.125996, 47.850220>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.699230, 33.879314, 47.672428> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.794476, 34.182510, 47.429527>,  <34.851624, 34.364429, 47.283787>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.794476, 34.182510, 47.429527>,  <34.699230, 33.879314, 47.672428>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.794476, 34.182510, 47.429527> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555508, -0.406578, -0.725331,
		-0.796687, 0.510047, 0.324255,
		0.238118, 0.757988, -0.607251,
		34.865910, 34.409908, 47.247353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.053883, 34.118378, 47.303631>,  <34.699230, 33.879314, 47.672428>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.053883, 34.118378, 47.303631> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.362705, 34.236153, 47.078339>,  <34.548000, 34.306820, 46.943161>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.362705, 34.236153, 47.078339>,  <34.053883, 34.118378, 47.303631>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.362705, 34.236153, 47.078339> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463136, -0.346246, -0.815854,
		-0.435238, 0.890740, -0.130956,
		0.772058, 0.294440, -0.563233,
		34.594322, 34.324486, 46.909370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.772694, 34.381844, 46.768112>,  <34.053883, 34.118378, 47.303631>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.772694, 34.381844, 46.768112> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.140453, 34.308670, 46.628830>,  <34.361107, 34.264767, 46.545261>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.140453, 34.308670, 46.628830>,  <33.772694, 34.381844, 46.768112>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.140453, 34.308670, 46.628830> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393330, -0.424321, -0.815624,
		0.001456, 0.886841, -0.462073,
		0.919396, -0.182935, -0.348204,
		34.416271, 34.253788, 46.524368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.418022, 34.939533, 46.939816>,  <33.772694, 34.381844, 46.768112>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.418022, 34.939533, 46.939816> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.024837, 35.008503, 46.965279>,  <32.788925, 35.049885, 46.980556>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.024837, 35.008503, 46.965279>,  <33.418022, 34.939533, 46.939816>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.024837, 35.008503, 46.965279> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117375, 0.322346, 0.939317,
		0.141439, 0.930787, -0.337092,
		-0.982964, 0.172422, 0.063658,
		32.729950, 35.060230, 46.984375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.445431, 35.488411, 47.236290>,  <33.418022, 34.939533, 46.939816>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.445431, 35.488411, 47.236290> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.061489, 35.386604, 47.283440>,  <32.831123, 35.325520, 47.311729>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.061489, 35.386604, 47.283440>,  <33.445431, 35.488411, 47.236290>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.061489, 35.386604, 47.283440> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039065, 0.537466, 0.842380,
		-0.277756, 0.803960, -0.525833,
		-0.959857, -0.254518, 0.117878,
		32.773533, 35.310249, 47.318802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.069252, 36.138931, 47.277512>,  <33.445431, 35.488411, 47.236290>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.069252, 36.138931, 47.277512> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.874210, 35.840847, 47.459461>,  <32.757183, 35.661999, 47.568630>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.874210, 35.840847, 47.459461>,  <33.069252, 36.138931, 47.277512>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.874210, 35.840847, 47.459461> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103264, 0.566574, 0.817514,
		-0.866934, 0.351655, -0.353220,
		-0.487608, -0.745206, 0.454869,
		32.727928, 35.617287, 47.595921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.429939, 36.329559, 47.461037>,  <33.069252, 36.138931, 47.277512>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.429939, 36.329559, 47.461037> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.493099, 36.019974, 47.706326>,  <32.530994, 35.834221, 47.853500>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.493099, 36.019974, 47.706326>,  <32.429939, 36.329559, 47.461037>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.493099, 36.019974, 47.706326> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260520, 0.566361, 0.781898,
		-0.952469, -0.283219, -0.112204,
		0.157901, -0.773965, 0.613226,
		32.540470, 35.787785, 47.890293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.966988, 36.518463, 47.887115>,  <32.429939, 36.329559, 47.461037>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.966988, 36.518463, 47.887115> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.213215, 36.270702, 48.082016>,  <32.360950, 36.122044, 48.198956>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.213215, 36.270702, 48.082016>,  <31.966988, 36.518463, 47.887115>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.213215, 36.270702, 48.082016> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308137, 0.379883, 0.872204,
		-0.725345, -0.687042, 0.042983,
		0.615570, -0.619404, 0.487250,
		32.397884, 36.084881, 48.228191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.613983, 36.403934, 48.609951>,  <31.966988, 36.518463, 47.887115>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.613983, 36.403934, 48.609951> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.987503, 36.275471, 48.673035>,  <32.211617, 36.198395, 48.710884>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.987503, 36.275471, 48.673035>,  <31.613983, 36.403934, 48.609951>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.987503, 36.275471, 48.673035> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068705, 0.271643, 0.959943,
		-0.351133, -0.907232, 0.231596,
		0.933802, -0.321156, 0.157714,
		32.267643, 36.179123, 48.720348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.573494, 36.026634, 49.211300>,  <31.613983, 36.403934, 48.609951>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.573494, 36.026634, 49.211300> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.955292, 36.137901, 49.168293>,  <32.184372, 36.204662, 49.142490>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.955292, 36.137901, 49.168293>,  <31.573494, 36.026634, 49.211300>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.955292, 36.137901, 49.168293> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008113, 0.384602, 0.923047,
		0.298114, -0.880172, 0.369358,
		0.954495, 0.278170, -0.107515,
		32.241642, 36.221352, 49.136040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.847530, 35.727695, 49.895058>,  <31.573494, 36.026634, 49.211300>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.847530, 35.727695, 49.895058> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.086960, 35.998798, 49.724247>,  <32.230618, 36.161461, 49.621761>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.086960, 35.998798, 49.724247>,  <31.847530, 35.727695, 49.895058>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.086960, 35.998798, 49.724247> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398984, 0.210015, 0.892584,
		0.694637, -0.704657, -0.144704,
		0.598575, 0.677756, -0.427030,
		32.266533, 36.202126, 49.596138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.569096, 35.570145, 50.224194>,  <31.847530, 35.727695, 49.895058>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.569096, 35.570145, 50.224194> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.573483, 35.948681, 50.094994>,  <32.576115, 36.175800, 50.017475>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.573483, 35.948681, 50.094994>,  <32.569096, 35.570145, 50.224194>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.573483, 35.948681, 50.094994> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500875, 0.274371, 0.820880,
		0.865450, -0.170787, -0.470986,
		0.010971, 0.946336, -0.322998,
		32.576775, 36.232582, 49.998093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.245296, 35.718311, 50.356831>,  <32.569096, 35.570145, 50.224194>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.245296, 35.718311, 50.356831> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.048985, 36.063892, 50.311703>,  <32.931198, 36.271240, 50.284626>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.048985, 36.063892, 50.311703>,  <33.245296, 35.718311, 50.356831>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.048985, 36.063892, 50.311703> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429309, 0.352461, 0.831544,
		0.758177, 0.359667, -0.543881,
		-0.490776, 0.863950, -0.112820,
		32.901752, 36.323078, 50.277855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.716377, 36.285305, 50.604881>,  <33.245296, 35.718311, 50.356831>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.716377, 36.285305, 50.604881> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.347980, 36.438519, 50.633343>,  <33.126942, 36.530445, 50.650421>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.347980, 36.438519, 50.633343>,  <33.716377, 36.285305, 50.604881>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.347980, 36.438519, 50.633343> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198876, 0.305193, 0.931292,
		0.334998, 0.871863, -0.357256,
		-0.920991, 0.383030, 0.071154,
		33.071682, 36.553429, 50.654690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.778923, 36.942020, 51.026360>,  <33.716377, 36.285305, 50.604881>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.778923, 36.942020, 51.026360> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.389286, 36.852592, 51.039986>,  <33.155502, 36.798935, 51.048161>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.389286, 36.852592, 51.039986>,  <33.778923, 36.942020, 51.026360>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.389286, 36.852592, 51.039986> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047129, 0.348006, 0.936307,
		-0.221187, 0.910444, -0.349526,
		-0.974092, -0.223572, 0.034066,
		33.097057, 36.785522, 51.050205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.426395, 37.594673, 51.318626>,  <33.778923, 36.942020, 51.026360>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.426395, 37.594673, 51.318626> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.186119, 37.281361, 51.382675>,  <33.041954, 37.093372, 51.421104>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.186119, 37.281361, 51.382675>,  <33.426395, 37.594673, 51.318626>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.186119, 37.281361, 51.382675> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058934, 0.156352, 0.985942,
		-0.797308, 0.601680, -0.047756,
		-0.600688, -0.783285, 0.160120,
		33.005913, 37.046375, 51.430710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.994400, 38.149746, 51.343491>,  <33.426395, 37.594673, 51.318626>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.994400, 38.149746, 51.343491> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.876633, 38.506275, 51.481392>,  <32.805973, 38.720192, 51.564133>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.876633, 38.506275, 51.481392>,  <32.994400, 38.149746, 51.343491>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.876633, 38.506275, 51.481392> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254653, 0.274530, -0.927246,
		-0.921125, -0.360789, 0.146153,
		-0.294417, 0.891328, 0.344752,
		32.788307, 38.773674, 51.584816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.373390, 38.148655, 51.177498>,  <32.994400, 38.149746, 51.343491>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.373390, 38.148655, 51.177498> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.517094, 38.521843, 51.186363>,  <32.603317, 38.745758, 51.191685>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.517094, 38.521843, 51.186363>,  <32.373390, 38.148655, 51.177498>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.517094, 38.521843, 51.186363> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282863, 0.131495, -0.950104,
		-0.889338, 0.335063, 0.311145,
		0.359259, 0.932975, 0.022167,
		32.624870, 38.801735, 51.193012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.831806, 38.558155, 50.787037>,  <32.373390, 38.148655, 51.177498>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.831806, 38.558155, 50.787037> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.162724, 38.782848, 50.789658>,  <32.361275, 38.917664, 50.791229>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.162724, 38.782848, 50.789658>,  <31.831806, 38.558155, 50.787037>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.162724, 38.782848, 50.789658> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189378, 0.289856, -0.938147,
		-0.528884, 0.774883, 0.346176,
		0.827295, 0.561729, 0.006554,
		32.410912, 38.951366, 50.791622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.626431, 38.942154, 50.262657>,  <31.831806, 38.558155, 50.787037>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.626431, 38.942154, 50.262657> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.011829, 39.026432, 50.328720>,  <32.243069, 39.077000, 50.368359>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.011829, 39.026432, 50.328720>,  <31.626431, 38.942154, 50.262657>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.011829, 39.026432, 50.328720> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084625, 0.345587, -0.934563,
		-0.253984, 0.914427, 0.315143,
		0.963499, 0.210694, 0.165157,
		32.300880, 39.089642, 50.378269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.823307, 39.634850, 49.926266>,  <31.626431, 38.942154, 50.262657>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.823307, 39.634850, 49.926266> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.151741, 39.407463, 49.946938>,  <32.348801, 39.271030, 49.959339>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.151741, 39.407463, 49.946938>,  <31.823307, 39.634850, 49.926266>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.151741, 39.407463, 49.946938> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231674, 0.249141, -0.940349,
		0.521679, 0.784078, 0.336263,
		0.821084, -0.568464, 0.051679,
		32.398067, 39.236923, 49.962440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.365665, 40.115280, 49.702667>,  <31.823307, 39.634850, 49.926266>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.365665, 40.115280, 49.702667> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.479618, 39.736588, 49.642601>,  <32.547989, 39.509373, 49.606560>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.479618, 39.736588, 49.642601>,  <32.365665, 40.115280, 49.702667>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.479618, 39.736588, 49.642601> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205757, 0.213399, -0.955052,
		0.936220, 0.241178, 0.255589,
		0.284880, -0.946728, -0.150164,
		32.565083, 39.452568, 49.597553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.958378, 40.153835, 49.333294>,  <32.365665, 40.115280, 49.702667>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.958378, 40.153835, 49.333294> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.854092, 39.776031, 49.253365>,  <32.791519, 39.549351, 49.205406>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.854092, 39.776031, 49.253365>,  <32.958378, 40.153835, 49.333294>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.854092, 39.776031, 49.253365> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268225, 0.127969, -0.954819,
		0.927407, -0.302531, 0.219978,
		-0.260713, -0.944510, -0.199826,
		32.775879, 39.492680, 49.193417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.430492, 39.955654, 48.742020>,  <32.958378, 40.153835, 49.333294>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.430492, 39.955654, 48.742020> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.150612, 39.670292, 48.757305>,  <32.982681, 39.499073, 48.766476>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.150612, 39.670292, 48.757305>,  <33.430492, 39.955654, 48.742020>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.150612, 39.670292, 48.757305> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115326, 0.060003, -0.991514,
		0.705062, -0.698174, -0.124259,
		-0.699704, -0.713409, 0.038212,
		32.940701, 39.456268, 48.768768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.193455, 39.803463, 49.102943>,  <33.430492, 39.955654, 48.742020>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.193455, 39.803463, 49.102943> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.510876, 40.042362, 49.056355>,  <34.701328, 40.185699, 49.028400>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.510876, 40.042362, 49.056355>,  <34.193455, 39.803463, 49.102943>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.510876, 40.042362, 49.056355> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076610, 0.287952, 0.954576,
		0.603656, -0.748586, 0.274261,
		0.793556, 0.597246, -0.116474,
		34.748943, 40.221535, 49.021412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.704144, 39.558502, 49.532242>,  <34.193455, 39.803463, 49.102943>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.704144, 39.558502, 49.532242> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.819435, 39.936600, 49.470997>,  <34.888611, 40.163456, 49.434250>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.819435, 39.936600, 49.470997>,  <34.704144, 39.558502, 49.532242>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.819435, 39.936600, 49.470997> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268364, 0.073750, 0.960491,
		0.919187, -0.317932, -0.232411,
		0.288230, 0.945241, -0.153111,
		34.905903, 40.220173, 49.425064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.240200, 39.580986, 49.881306>,  <34.704144, 39.558502, 49.532242>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.240200, 39.580986, 49.881306> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.139713, 39.967457, 49.857983>,  <35.079422, 40.199337, 49.843990>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.139713, 39.967457, 49.857983>,  <35.240200, 39.580986, 49.881306>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.139713, 39.967457, 49.857983> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339919, 0.144461, 0.929293,
		0.906280, 0.213637, -0.364712,
		-0.251219, 0.966173, -0.058303,
		35.064346, 40.257309, 49.840492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.742435, 39.924366, 50.214272>,  <35.240200, 39.580986, 49.881306>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.742435, 39.924366, 50.214272> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.474251, 40.220673, 50.197552>,  <35.313339, 40.398457, 50.187519>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.474251, 40.220673, 50.197552>,  <35.742435, 39.924366, 50.214272>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.474251, 40.220673, 50.197552> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375537, 0.387403, 0.841956,
		0.639884, 0.548803, -0.537924,
		-0.670462, 0.740765, -0.041797,
		35.273113, 40.442902, 50.185013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.101803, 40.588112, 50.182789>,  <35.742435, 39.924366, 50.214272>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.101803, 40.588112, 50.182789> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.741524, 40.681301, 50.329464>,  <35.525356, 40.737213, 50.417469>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.741524, 40.681301, 50.329464>,  <36.101803, 40.588112, 50.182789>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.741524, 40.681301, 50.329464> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434378, 0.496953, 0.751235,
		-0.007209, 0.835919, -0.548805,
		-0.900702, 0.232973, 0.366687,
		35.471313, 40.751194, 50.439468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.090961, 41.372337, 50.387909>,  <36.101803, 40.588112, 50.182789>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.090961, 41.372337, 50.387909> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.764202, 41.231190, 50.570404>,  <35.568146, 41.146500, 50.679901>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.764202, 41.231190, 50.570404>,  <36.090961, 41.372337, 50.387909>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.764202, 41.231190, 50.570404> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319196, 0.382257, 0.867176,
		-0.480401, 0.854027, -0.199631,
		-0.816902, -0.352870, 0.456238,
		35.519131, 41.125328, 50.707275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.688862, 41.961182, 50.710148>,  <36.090961, 41.372337, 50.387909>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.688862, 41.961182, 50.710148> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.632500, 41.612701, 50.898258>,  <35.598682, 41.403614, 51.011124>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.632500, 41.612701, 50.898258>,  <35.688862, 41.961182, 50.710148>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.632500, 41.612701, 50.898258> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325455, 0.407857, 0.853072,
		-0.935000, 0.273258, 0.226065,
		-0.140906, -0.871196, 0.470279,
		35.590229, 41.351341, 51.039341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.458492, 42.069717, 51.454727>,  <35.688862, 41.961182, 50.710148>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.458492, 42.069717, 51.454727> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.592819, 41.694221, 51.485676>,  <35.673416, 41.468922, 51.504246>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.592819, 41.694221, 51.485676>,  <35.458492, 42.069717, 51.454727>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.592819, 41.694221, 51.485676> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335192, 0.195868, 0.921565,
		-0.880269, -0.283541, 0.380435,
		0.335816, -0.938744, 0.077376,
		35.693565, 41.412598, 51.508888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.370647, 42.016659, 52.092964>,  <35.458492, 42.069717, 51.454727>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.370647, 42.016659, 52.092964> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.630070, 41.720318, 52.023090>,  <35.785721, 41.542511, 51.981167>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.630070, 41.720318, 52.023090>,  <35.370647, 42.016659, 52.092964>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.630070, 41.720318, 52.023090> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465039, 0.203979, 0.861470,
		-0.602593, -0.639943, 0.476818,
		0.648553, -0.740855, -0.174682,
		35.824635, 41.498062, 51.970684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<35.557545, 35.983627, 36.648029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.885235, 35.898720, 36.861122>,  <36.081848, 35.847775, 36.988979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.885235, 35.898720, 36.861122>,  <35.557545, 35.983627, 36.648029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.885235, 35.898720, 36.861122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448745, 0.341121, 0.825993,
		-0.357059, -0.915739, 0.184202,
		0.819229, -0.212269, 0.532733,
		36.131004, 35.835041, 37.020943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.371784, 35.601910, 37.265965>,  <35.557545, 35.983627, 36.648029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.371784, 35.601910, 37.265965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.750683, 35.693703, 37.355469>,  <35.978020, 35.748779, 37.409172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.750683, 35.693703, 37.355469>,  <35.371784, 35.601910, 37.265965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.750683, 35.693703, 37.355469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284472, 0.280288, 0.916796,
		0.147666, -0.932083, 0.330780,
		0.947244, 0.229477, 0.223762,
		36.034855, 35.762547, 37.422596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.484222, 35.271820, 37.915310>,  <35.371784, 35.601910, 37.265965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.484222, 35.271820, 37.915310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.739040, 35.577023, 37.871502>,  <35.891930, 35.760143, 37.845219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.739040, 35.577023, 37.871502>,  <35.484222, 35.271820, 37.915310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.739040, 35.577023, 37.871502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416758, 0.460452, 0.783771,
		0.648453, -0.453651, 0.611317,
		0.637041, 0.763010, -0.109519,
		35.930153, 35.805927, 37.838646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.676624, 35.397350, 38.555813>,  <35.484222, 35.271820, 37.915310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.676624, 35.397350, 38.555813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.793827, 35.734726, 38.375698>,  <35.864147, 35.937153, 38.267632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.793827, 35.734726, 38.375698>,  <35.676624, 35.397350, 38.555813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.793827, 35.734726, 38.375698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210504, 0.516304, 0.830131,
		0.932650, -0.148445, 0.328827,
		0.293003, 0.843441, -0.450283,
		35.881729, 35.987759, 38.240612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.152401, 35.781860, 39.048733>,  <35.676624, 35.397350, 38.555813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.152401, 35.781860, 39.048733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.968899, 36.023933, 38.788486>,  <35.858799, 36.169178, 38.632339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.968899, 36.023933, 38.788486>,  <36.152401, 35.781860, 39.048733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.968899, 36.023933, 38.788486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380376, 0.527977, 0.759312,
		0.803033, 0.595814, -0.012014,
		-0.458751, 0.605182, -0.650616,
		35.831272, 36.205486, 38.593300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.990002, 36.367210, 39.406250>,  <36.152401, 35.781860, 39.048733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.990002, 36.367210, 39.406250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.771736, 36.485077, 39.092453>,  <35.640778, 36.555798, 38.904175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.771736, 36.485077, 39.092453>,  <35.990002, 36.367210, 39.406250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.771736, 36.485077, 39.092453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389773, 0.739471, 0.548871,
		0.741843, 0.605270, -0.288647,
		-0.545661, 0.294670, -0.784489,
		35.608036, 36.573479, 38.857105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.160412, 37.018574, 39.127655>,  <35.990002, 36.367210, 39.406250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.160412, 37.018574, 39.127655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.776218, 36.957722, 39.034424>,  <35.545704, 36.921211, 38.978485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.776218, 36.957722, 39.034424>,  <36.160412, 37.018574, 39.127655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.776218, 36.957722, 39.034424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251436, 0.833389, 0.492182,
		0.119374, 0.531339, -0.838707,
		-0.960484, -0.152127, -0.233082,
		35.488071, 36.912083, 38.964500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.952385, 37.615257, 38.822994>,  <36.160412, 37.018574, 39.127655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.952385, 37.615257, 38.822994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.622894, 37.425446, 38.947121>,  <35.425201, 37.311558, 39.021595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.622894, 37.425446, 38.947121>,  <35.952385, 37.615257, 38.822994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.622894, 37.425446, 38.947121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225252, 0.776145, 0.588949,
		-0.520327, 0.415233, -0.746219,
		-0.823725, -0.474533, 0.310317,
		35.375778, 37.283085, 39.040215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.597260, 38.190090, 38.940140>,  <35.952385, 37.615257, 38.822994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.597260, 38.190090, 38.940140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.407093, 37.885208, 39.115875>,  <35.292992, 37.702278, 39.221317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.407093, 37.885208, 39.115875>,  <35.597260, 38.190090, 38.940140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.407093, 37.885208, 39.115875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231209, 0.590083, 0.773527,
		-0.848835, 0.266168, -0.456764,
		-0.475417, -0.762206, 0.439342,
		35.264469, 37.656548, 39.247677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.066856, 38.500275, 39.197922>,  <35.597260, 38.190090, 38.940140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.066856, 38.500275, 39.197922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.064747, 38.165504, 39.416836>,  <35.063480, 37.964642, 39.548183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.064747, 38.165504, 39.416836>,  <35.066856, 38.500275, 39.197922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.064747, 38.165504, 39.416836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222905, 0.534510, 0.815238,
		-0.974826, -0.117695, -0.189374,
		-0.005273, -0.836927, 0.547289,
		35.063164, 37.914425, 39.581024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.451336, 38.672134, 39.669884>,  <35.066856, 38.500275, 39.197922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.451336, 38.672134, 39.669884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.638290, 38.369823, 39.853340>,  <34.750462, 38.188438, 39.963413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.638290, 38.369823, 39.853340>,  <34.451336, 38.672134, 39.669884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.638290, 38.369823, 39.853340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095251, 0.472724, 0.876047,
		-0.878908, -0.453136, 0.148955,
		0.467383, -0.755777, 0.458643,
		34.778507, 38.143089, 39.990932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.115612, 38.566746, 40.221958>,  <34.451336, 38.672134, 39.669884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.115612, 38.566746, 40.221958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.439640, 38.366840, 40.344612>,  <34.634056, 38.246895, 40.418205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.439640, 38.366840, 40.344612>,  <34.115612, 38.566746, 40.221958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.439640, 38.366840, 40.344612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082647, 0.420423, 0.903556,
		-0.580486, -0.757282, 0.299266,
		0.810065, -0.499768, 0.306637,
		34.682659, 38.216911, 40.436604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.584869, 38.112213, 40.159687>,  <34.115612, 38.566746, 40.221958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.584869, 38.112213, 40.159687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.221268, 38.069401, 40.320816>,  <33.003109, 38.043713, 40.417492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.221268, 38.069401, 40.320816>,  <33.584869, 38.112213, 40.159687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.221268, 38.069401, 40.320816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230849, -0.675397, -0.700392,
		0.347028, -0.729646, 0.589227,
		-0.909000, -0.107033, 0.402820,
		32.948566, 38.037292, 40.441662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.504902, 37.395828, 39.980694>,  <33.584869, 38.112213, 40.159687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.504902, 37.395828, 39.980694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.133877, 37.527531, 40.051365>,  <32.911263, 37.606552, 40.093769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.133877, 37.527531, 40.051365>,  <33.504902, 37.395828, 39.980694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.133877, 37.527531, 40.051365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339070, -0.542982, -0.768246,
		-0.157015, -0.772504, 0.615291,
		-0.927565, 0.329253, 0.176677,
		32.855606, 37.626308, 40.104366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.091690, 36.802605, 39.936867>,  <33.504902, 37.395828, 39.980694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.091690, 36.802605, 39.936867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.876652, 37.131054, 39.860195>,  <32.747627, 37.328125, 39.814190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.876652, 37.131054, 39.860195>,  <33.091690, 36.802605, 39.936867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.876652, 37.131054, 39.860195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510945, -0.498069, -0.700616,
		-0.670766, -0.278707, 0.687310,
		-0.537595, 0.821127, -0.191684,
		32.715374, 37.377392, 39.802689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.556103, 36.503296, 39.622612>,  <33.091690, 36.802605, 39.936867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.556103, 36.503296, 39.622612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.485565, 36.887634, 39.537121>,  <32.443245, 37.118237, 39.485828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.485565, 36.887634, 39.537121>,  <32.556103, 36.503296, 39.622612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.485565, 36.887634, 39.537121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.578145, -0.276831, -0.767537,
		-0.796651, -0.011784, 0.604325,
		-0.176341, 0.960846, -0.213725,
		32.432663, 37.175888, 39.473003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.794544, 36.661221, 39.542599>,  <32.556103, 36.503296, 39.622612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.794544, 36.661221, 39.542599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.996649, 36.923935, 39.318691>,  <32.117912, 37.081566, 39.184349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.996649, 36.923935, 39.318691>,  <31.794544, 36.661221, 39.542599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.996649, 36.923935, 39.318691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.603028, -0.195288, -0.773447,
		-0.617308, 0.728348, 0.297391,
		0.505262, 0.656789, -0.559767,
		32.148228, 37.120972, 39.150761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.226326, 37.022484, 39.172710>,  <31.794544, 36.661221, 39.542599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.226326, 37.022484, 39.172710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.570690, 37.101048, 38.984982>,  <31.777308, 37.148186, 38.872345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.570690, 37.101048, 38.984982>,  <31.226326, 37.022484, 39.172710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.570690, 37.101048, 38.984982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331718, -0.482728, -0.810517,
		-0.385744, 0.853463, -0.350433,
		0.860909, 0.196407, -0.469318,
		31.828962, 37.159969, 38.844185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.059895, 37.290012, 38.376938>,  <31.226326, 37.022484, 39.172710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.059895, 37.290012, 38.376938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.436678, 37.155895, 38.370014>,  <31.662748, 37.075424, 38.365860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.436678, 37.155895, 38.370014>,  <31.059895, 37.290012, 38.376938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.436678, 37.155895, 38.370014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181909, -0.466360, -0.865689,
		0.282183, 0.818590, -0.500283,
		0.941956, -0.335289, -0.017310,
		31.719265, 37.055309, 38.364822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.286566, 37.307648, 37.699528>,  <31.059895, 37.290012, 38.376938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.286566, 37.307648, 37.699528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.543842, 37.049915, 37.865005>,  <31.698208, 36.895275, 37.964291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.543842, 37.049915, 37.865005>,  <31.286566, 37.307648, 37.699528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.543842, 37.049915, 37.865005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026385, -0.558609, -0.829011,
		0.765250, 0.522299, -0.376294,
		0.643193, -0.644329, 0.413694,
		31.736799, 36.856617, 37.989113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.729939, 37.154423, 37.175892>,  <31.286566, 37.307648, 37.699528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.729939, 37.154423, 37.175892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.767609, 36.857704, 37.441483>,  <31.790211, 36.679672, 37.600838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.767609, 36.857704, 37.441483>,  <31.729939, 37.154423, 37.175892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.767609, 36.857704, 37.441483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107449, -0.655472, -0.747537,
		0.989740, 0.141744, 0.017976,
		0.094176, -0.741799, 0.663977,
		31.795862, 36.635166, 37.640675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.105293, 36.664219, 36.854198>,  <31.729939, 37.154423, 37.175892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.105293, 36.664219, 36.854198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.954628, 36.435772, 37.145939>,  <31.864229, 36.298702, 37.320984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.954628, 36.435772, 37.145939>,  <32.105293, 36.664219, 36.854198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.954628, 36.435772, 37.145939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183644, -0.725672, -0.663080,
		0.907965, -0.383697, 0.168449,
		-0.376661, -0.571119, 0.729348,
		31.841629, 36.264435, 37.364742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.396435, 35.983780, 36.796879>,  <32.105293, 36.664219, 36.854198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.396435, 35.983780, 36.796879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.057644, 35.949772, 37.006798>,  <31.854370, 35.929367, 37.132748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.057644, 35.949772, 37.006798>,  <32.396435, 35.983780, 36.796879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.057644, 35.949772, 37.006798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234813, -0.825801, -0.512753,
		0.476968, -0.557517, 0.679467,
		-0.846973, -0.085020, 0.524793,
		31.803553, 35.924267, 37.164234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.403046, 35.153828, 36.891018>,  <32.396435, 35.983780, 36.796879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.403046, 35.153828, 36.891018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.050533, 35.304398, 37.005318>,  <31.839027, 35.394741, 37.073898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.050533, 35.304398, 37.005318>,  <32.403046, 35.153828, 36.891018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.050533, 35.304398, 37.005318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469750, -0.764003, -0.442305,
		0.051815, -0.524023, 0.850127,
		-0.881277, 0.376429, 0.285746,
		31.786150, 35.417328, 37.091042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.116619, 34.617031, 37.136162>,  <32.403046, 35.153828, 36.891018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.116619, 34.617031, 37.136162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.825989, 34.866379, 37.020576>,  <31.651611, 35.015987, 36.951225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.825989, 34.866379, 37.020576>,  <32.116619, 34.617031, 37.136162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.825989, 34.866379, 37.020576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435155, -0.742952, -0.508588,
		-0.531722, -0.243784, 0.811074,
		-0.726575, 0.623371, -0.288960,
		31.608017, 35.053391, 36.933887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.507299, 34.247459, 37.117119>,  <32.116619, 34.617031, 37.136162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.507299, 34.247459, 37.117119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.414793, 34.562260, 36.888332>,  <31.359289, 34.751141, 36.751060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.414793, 34.562260, 36.888332>,  <31.507299, 34.247459, 37.117119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.414793, 34.562260, 36.888332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444133, -0.608475, -0.657651,
		-0.865599, 0.101939, 0.490251,
		-0.231265, 0.786999, -0.571970,
		31.345413, 34.798359, 36.716740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.813866, 34.229073, 36.987282>,  <31.507299, 34.247459, 37.117119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.813866, 34.229073, 36.987282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.968800, 34.437515, 36.683067>,  <31.061760, 34.562580, 36.500538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.968800, 34.437515, 36.683067>,  <30.813866, 34.229073, 36.987282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.968800, 34.437515, 36.683067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370521, -0.667395, -0.645986,
		-0.844208, 0.532008, -0.065423,
		0.387333, 0.521106, -0.760540,
		31.084999, 34.593845, 36.454906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.174397, 33.442593, 37.103008>,  <30.813866, 34.229073, 36.987282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.174397, 33.442593, 37.103008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.345676, 33.587570, 36.771881>,  <31.448444, 33.674557, 36.573204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.345676, 33.587570, 36.771881>,  <31.174397, 33.442593, 37.103008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.345676, 33.587570, 36.771881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507992, 0.854153, 0.111204,
		0.747388, 0.372907, 0.549865,
		0.428201, 0.362439, -0.827817,
		31.474136, 33.696301, 36.523537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.418102, 32.713085, 37.090382>,  <31.174397, 33.442593, 37.103008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.418102, 32.713085, 37.090382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.752880, 32.495895, 37.062962>,  <31.953747, 32.365582, 37.046509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.752880, 32.495895, 37.062962>,  <31.418102, 32.713085, 37.090382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.752880, 32.495895, 37.062962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032640, -0.075506, 0.996611,
		-0.546313, -0.836346, -0.045472,
		0.836945, -0.542977, -0.068549,
		32.003963, 32.333004, 37.042397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.282406, 32.062763, 37.481003>,  <31.418102, 32.713085, 37.090382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.282406, 32.062763, 37.481003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.664940, 32.179554, 37.475700>,  <31.894461, 32.249630, 37.472519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.664940, 32.179554, 37.475700>,  <31.282406, 32.062763, 37.481003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.664940, 32.179554, 37.475700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031848, 0.149192, 0.988295,
		0.290538, -0.944718, 0.151977,
		0.956333, 0.291978, -0.013259,
		31.951839, 32.267147, 37.471722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.599569, 31.591970, 37.940632>,  <31.282406, 32.062763, 37.481003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.599569, 31.591970, 37.940632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.750908, 31.961399, 37.915749>,  <31.841711, 32.183056, 37.900818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.750908, 31.961399, 37.915749>,  <31.599569, 31.591970, 37.940632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.750908, 31.961399, 37.915749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041544, 0.084083, 0.995592,
		0.924732, -0.374093, 0.070181,
		0.378345, 0.923571, -0.062213,
		31.864412, 32.238472, 37.897083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.132450, 31.508804, 38.319752>,  <31.599569, 31.591970, 37.940632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.132450, 31.508804, 38.319752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.023571, 31.892744, 38.292625>,  <31.958244, 32.123108, 38.276352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.023571, 31.892744, 38.292625>,  <32.132450, 31.508804, 38.319752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.023571, 31.892744, 38.292625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059250, 0.053622, 0.996802,
		0.960415, 0.275346, 0.042275,
		-0.272198, 0.959849, -0.067814,
		31.941912, 32.180698, 38.272282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.477936, 31.706167, 38.888474>,  <32.132450, 31.508804, 38.319752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.477936, 31.706167, 38.888474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.256851, 32.028175, 38.802269>,  <32.124199, 32.221382, 38.750546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.256851, 32.028175, 38.802269>,  <32.477936, 31.706167, 38.888474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.256851, 32.028175, 38.802269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087645, 0.201013, 0.975660,
		0.828748, 0.558151, -0.040547,
		-0.552716, 0.805022, -0.215509,
		32.091038, 32.269684, 38.737617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.767738, 32.310047, 39.131073>,  <32.477936, 31.706167, 38.888474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.767738, 32.310047, 39.131073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.377335, 32.389648, 39.095734>,  <32.143093, 32.437408, 39.074532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.377335, 32.389648, 39.095734>,  <32.767738, 32.310047, 39.131073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.377335, 32.389648, 39.095734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005530, 0.382972, 0.923743,
		0.217667, 0.902069, -0.372683,
		-0.976007, 0.199008, -0.088349,
		32.084534, 32.449352, 39.069229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.721504, 32.967445, 39.359112>,  <32.767738, 32.310047, 39.131073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.721504, 32.967445, 39.359112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.339367, 32.849285, 39.356030>,  <32.110085, 32.778389, 39.354179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.339367, 32.849285, 39.356030>,  <32.721504, 32.967445, 39.359112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.339367, 32.849285, 39.356030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148713, 0.458083, 0.876382,
		-0.255350, 0.838392, -0.481556,
		-0.955344, -0.295397, -0.007708,
		32.052765, 32.760666, 39.353718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.337753, 33.591591, 39.491962>,  <32.721504, 32.967445, 39.359112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.337753, 33.591591, 39.491962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.103027, 33.283989, 39.593372>,  <31.962191, 33.099426, 39.654221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.103027, 33.283989, 39.593372>,  <32.337753, 33.591591, 39.491962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.103027, 33.283989, 39.593372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260458, 0.475733, 0.840143,
		-0.766686, 0.426977, -0.479462,
		-0.586817, -0.769005, 0.253529,
		31.926983, 33.053288, 39.669430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.831463, 33.915611, 39.850555>,  <32.337753, 33.591591, 39.491962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.831463, 33.915611, 39.850555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.766720, 33.542961, 39.980705>,  <31.727875, 33.319370, 40.058796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.766720, 33.542961, 39.980705>,  <31.831463, 33.915611, 39.850555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.766720, 33.542961, 39.980705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332216, 0.361919, 0.871004,
		-0.929212, 0.032884, -0.368081,
		-0.161857, -0.931630, 0.325374,
		31.718163, 33.263474, 40.078316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.069979, 33.891109, 39.890419>,  <31.831463, 33.915611, 39.850555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.069979, 33.891109, 39.890419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.266325, 33.648434, 40.140530>,  <31.384132, 33.502827, 40.290596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.266325, 33.648434, 40.140530>,  <31.069979, 33.891109, 39.890419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.266325, 33.648434, 40.140530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389439, 0.489211, 0.780391,
		-0.779350, -0.626577, 0.003869,
		0.490867, -0.606691, 0.625280,
		31.413586, 33.466427, 40.328114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.613750, 33.785095, 40.397903>,  <31.069979, 33.891109, 39.890419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.613750, 33.785095, 40.397903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.957531, 33.667713, 40.565342>,  <31.163799, 33.597286, 40.665806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.957531, 33.667713, 40.565342>,  <30.613750, 33.785095, 40.397903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.957531, 33.667713, 40.565342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253288, 0.466827, 0.847300,
		-0.444055, -0.834242, 0.326888,
		0.859453, -0.293451, 0.418600,
		31.215366, 33.579678, 40.690922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.476368, 33.729881, 41.082165>,  <30.613750, 33.785095, 40.397903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.476368, 33.729881, 41.082165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.874428, 33.716099, 41.119011>,  <31.113264, 33.707829, 41.141117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.874428, 33.716099, 41.119011>,  <30.476368, 33.729881, 41.082165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.874428, 33.716099, 41.119011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077312, 0.304832, 0.949263,
		-0.060790, -0.951783, 0.300690,
		0.995152, -0.034459, 0.092115,
		31.172974, 33.705761, 41.146645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.580830, 33.204338, 41.662239>,  <30.476368, 33.729881, 41.082165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.580830, 33.204338, 41.662239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.892826, 33.451416, 41.622116>,  <31.080025, 33.599663, 41.598042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.892826, 33.451416, 41.622116>,  <30.580830, 33.204338, 41.662239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.892826, 33.451416, 41.622116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049241, 0.220376, 0.974171,
		0.623851, -0.754905, 0.202307,
		0.779991, 0.617699, -0.100310,
		31.126823, 33.636726, 41.592022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.863695, 33.095490, 42.354149>,  <30.580830, 33.204338, 41.662239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.863695, 33.095490, 42.354149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.074371, 33.396996, 42.196957>,  <31.200777, 33.577900, 42.102642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.074371, 33.396996, 42.196957>,  <30.863695, 33.095490, 42.354149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.074371, 33.396996, 42.196957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271595, 0.288851, 0.918042,
		0.805502, -0.590255, -0.052584,
		0.526690, 0.753767, -0.392980,
		31.232378, 33.623127, 42.079063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.528780, 32.991852, 42.634357>,  <30.863695, 33.095490, 42.354149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.528780, 32.991852, 42.634357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.462217, 33.372562, 42.531265>,  <31.422279, 33.600990, 42.469410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.462217, 33.372562, 42.531265>,  <31.528780, 32.991852, 42.634357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.462217, 33.372562, 42.531265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304076, 0.298163, 0.904785,
		0.938002, 0.072192, -0.339029,
		-0.166404, 0.951781, -0.257726,
		31.412296, 33.658096, 42.453949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.130875, 33.425240, 42.821457>,  <31.528780, 32.991852, 42.634357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.130875, 33.425240, 42.821457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.817547, 33.673828, 42.827023>,  <31.629551, 33.822979, 42.830360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.817547, 33.673828, 42.827023>,  <32.130875, 33.425240, 42.821457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.817547, 33.673828, 42.827023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270505, 0.320625, 0.907759,
		0.559682, 0.714826, -0.419261,
		-0.783316, 0.621469, 0.013915,
		31.582552, 33.860268, 42.831196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.375832, 34.024300, 43.076412>,  <32.130875, 33.425240, 42.821457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.375832, 34.024300, 43.076412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.997503, 34.148109, 43.115643>,  <31.770506, 34.222393, 43.139183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.997503, 34.148109, 43.115643>,  <32.375832, 34.024300, 43.076412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.997503, 34.148109, 43.115643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191072, 0.286367, 0.938874,
		0.262516, 0.906747, -0.329993,
		-0.945821, 0.309522, 0.098078,
		31.713757, 34.240967, 43.145065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.482597, 34.506973, 43.442089>,  <32.375832, 34.024300, 43.076412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.482597, 34.506973, 43.442089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.092934, 34.425758, 43.481678>,  <31.859137, 34.377029, 43.505432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.092934, 34.425758, 43.481678>,  <32.482597, 34.506973, 43.442089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.092934, 34.425758, 43.481678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027360, 0.328874, 0.943977,
		-0.224209, 0.922290, -0.314820,
		-0.974157, -0.203035, 0.098970,
		31.800686, 34.364849, 43.511368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.056438, 35.122883, 43.509018>,  <32.482597, 34.506973, 43.442089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.056438, 35.122883, 43.509018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.874666, 34.817173, 43.692051>,  <31.765602, 34.633747, 43.801872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.874666, 34.817173, 43.692051>,  <32.056438, 35.122883, 43.509018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.874666, 34.817173, 43.692051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048279, 0.534062, 0.844066,
		-0.889471, 0.361481, -0.279595,
		-0.454435, -0.764270, 0.457581,
		31.738337, 34.587891, 43.829327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.778637, 35.462048, 44.019283>,  <32.056438, 35.122883, 43.509018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.778637, 35.462048, 44.019283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.732309, 35.082443, 44.136566>,  <31.704514, 34.854683, 44.206936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.732309, 35.082443, 44.136566>,  <31.778637, 35.462048, 44.019283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.732309, 35.082443, 44.136566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331225, 0.315195, 0.889350,
		-0.936417, 0.005885, -0.350840,
		-0.115817, -0.949009, 0.293205,
		31.697565, 34.797741, 44.224529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.245846, 35.474606, 44.674473>,  <31.778637, 35.462048, 44.019283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.245846, 35.474606, 44.674473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.470226, 35.143604, 44.683975>,  <31.604855, 34.945004, 44.689678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.470226, 35.143604, 44.683975>,  <31.245846, 35.474606, 44.674473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.470226, 35.143604, 44.683975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015371, 0.039103, 0.999117,
		-0.827706, -0.560091, 0.034654,
		0.560951, -0.827508, 0.023757,
		31.638512, 34.895351, 44.691101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.943407, 35.018703, 45.200039>,  <31.245846, 35.474606, 44.674473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.943407, 35.018703, 45.200039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.331476, 34.945232, 45.136757>,  <31.564318, 34.901150, 45.098789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.331476, 34.945232, 45.136757>,  <30.943407, 35.018703, 45.200039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.331476, 34.945232, 45.136757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189051, 0.164759, 0.968046,
		-0.151740, -0.969081, 0.194569,
		0.970172, -0.183675, -0.158205,
		31.622528, 34.890129, 45.089294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.159655, 34.628986, 45.778271>,  <30.943407, 35.018703, 45.200039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.159655, 34.628986, 45.778271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.509405, 34.756222, 45.631691>,  <31.719255, 34.832561, 45.543743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.509405, 34.756222, 45.631691>,  <31.159655, 34.628986, 45.778271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.509405, 34.756222, 45.631691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328946, 0.166632, 0.929531,
		0.356736, -0.933302, 0.041065,
		0.874377, 0.318089, -0.366449,
		31.771719, 34.851646, 45.521755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.624001, 34.253990, 46.207161>,  <31.159655, 34.628986, 45.778271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.624001, 34.253990, 46.207161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.845425, 34.545780, 46.046444>,  <31.978279, 34.720852, 45.950012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.845425, 34.545780, 46.046444>,  <31.624001, 34.253990, 46.207161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.845425, 34.545780, 46.046444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419111, 0.172899, 0.891320,
		0.719663, -0.661798, -0.210019,
		0.553562, 0.729472, -0.401796,
		32.011494, 34.764622, 45.925903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.378181, 34.115864, 46.392773>,  <31.624001, 34.253990, 46.207161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.378181, 34.115864, 46.392773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.307384, 34.499443, 46.304142>,  <32.264908, 34.729591, 46.250965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.307384, 34.499443, 46.304142>,  <32.378181, 34.115864, 46.392773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.307384, 34.499443, 46.304142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517840, 0.282182, 0.807599,
		0.836969, 0.028197, -0.546524,
		-0.176991, 0.958947, -0.221576,
		32.254288, 34.787128, 46.237671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.077019, 34.373131, 46.575676>,  <32.378181, 34.115864, 46.392773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.077019, 34.373131, 46.575676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.782555, 34.643154, 46.595112>,  <32.605877, 34.805168, 46.606773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.782555, 34.643154, 46.595112>,  <33.077019, 34.373131, 46.575676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.782555, 34.643154, 46.595112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319172, 0.282954, 0.904470,
		0.596821, 0.681345, -0.423760,
		-0.736161, 0.675060, 0.048594,
		32.561707, 34.845673, 46.609692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.646877, 34.430939, 45.886547>,  <33.077019, 34.373131, 46.575676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.646877, 34.430939, 45.886547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.014103, 34.300682, 45.976982>,  <34.234440, 34.222530, 46.031242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.014103, 34.300682, 45.976982>,  <33.646877, 34.430939, 45.886547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.014103, 34.300682, 45.976982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062474, -0.682030, -0.728650,
		0.391477, 0.654823, -0.646492,
		0.918065, -0.325639, 0.226090,
		34.289524, 34.202991, 46.044807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.016235, 34.487495, 45.262741>,  <33.646877, 34.430939, 45.886547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.016235, 34.487495, 45.262741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.177155, 34.214699, 45.507050>,  <34.273708, 34.051022, 45.653633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.177155, 34.214699, 45.507050>,  <34.016235, 34.487495, 45.262741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.177155, 34.214699, 45.507050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182059, -0.713411, -0.676683,
		0.897223, 0.161033, -0.411168,
		0.402300, -0.681992, 0.610771,
		34.297844, 34.010101, 45.690281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.423489, 34.158363, 44.883324>,  <34.016235, 34.487495, 45.262741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.423489, 34.158363, 44.883324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.363731, 33.886551, 45.170631>,  <34.327877, 33.723461, 45.343018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.363731, 33.886551, 45.170631>,  <34.423489, 34.158363, 44.883324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.363731, 33.886551, 45.170631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015007, -0.724781, -0.688816,
		0.988664, -0.113684, 0.098080,
		-0.149394, -0.679535, 0.718271,
		34.318913, 33.682690, 45.386112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.947956, 33.633633, 44.800594>,  <34.423489, 34.158363, 44.883324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.947956, 33.633633, 44.800594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.655922, 33.448315, 45.001530>,  <34.480701, 33.337124, 45.122089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.655922, 33.448315, 45.001530>,  <34.947956, 33.633633, 44.800594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.655922, 33.448315, 45.001530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014131, -0.724703, -0.688916,
		0.683213, -0.510064, 0.522546,
		-0.730082, -0.463293, 0.502334,
		34.436897, 33.309326, 45.152229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.110260, 32.922478, 44.796974>,  <34.947956, 33.633633, 44.800594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.110260, 32.922478, 44.796974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.723000, 32.905228, 44.895626>,  <34.490643, 32.894878, 44.954819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.723000, 32.905228, 44.895626>,  <35.110260, 32.922478, 44.796974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.723000, 32.905228, 44.895626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156403, -0.665054, -0.730233,
		0.195516, -0.745549, 0.637127,
		-0.968149, -0.043124, 0.246635,
		34.432556, 32.892292, 44.969616>
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
