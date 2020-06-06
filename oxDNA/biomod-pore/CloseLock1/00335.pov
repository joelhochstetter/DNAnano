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
	<24.245907, 35.298843, 35.455845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.236542, 35.090492, 35.114521>,  <24.230923, 34.965481, 34.909725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.236542, 35.090492, 35.114521>,  <24.245907, 35.298843, 35.455845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.236542, 35.090492, 35.114521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.912253, -0.360291, 0.194897,
		-0.408958, -0.773872, 0.483607,
		-0.023414, -0.520877, -0.853311,
		24.229517, 34.934231, 34.858528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.379482, 34.589993, 35.753273>,  <24.245907, 35.298843, 35.455845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.379482, 34.589993, 35.753273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.499451, 34.723370, 35.395756>,  <24.571432, 34.803398, 35.181248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.499451, 34.723370, 35.395756>,  <24.379482, 34.589993, 35.753273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.499451, 34.723370, 35.395756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.953590, -0.131001, 0.271118,
		-0.026685, -0.933623, -0.357262,
		0.299923, 0.333447, -0.893789,
		24.589428, 34.823402, 35.127621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.967920, 34.195419, 35.593437>,  <24.379482, 34.589993, 35.753273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.967920, 34.195419, 35.593437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.982941, 34.497116, 35.331226>,  <24.991953, 34.678135, 35.173901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.982941, 34.497116, 35.331226>,  <24.967920, 34.195419, 35.593437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.982941, 34.497116, 35.331226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.974117, 0.118695, 0.192371,
		0.222901, -0.645781, -0.730261,
		0.037552, 0.754240, -0.655524,
		24.994205, 34.723389, 35.134567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.699141, 34.219116, 35.849010>,  <24.967920, 34.195419, 35.593437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.699141, 34.219116, 35.849010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.066566, 34.080971, 35.772110>,  <26.287022, 33.998081, 35.725971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.066566, 34.080971, 35.772110>,  <25.699141, 34.219116, 35.849010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.066566, 34.080971, 35.772110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378093, -0.909541, -0.172573,
		-0.115256, 0.231206, -0.966054,
		0.918565, -0.345368, -0.192247,
		26.342136, 33.977360, 35.714436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.624678, 33.864311, 35.185196>,  <25.699141, 34.219116, 35.849010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.624678, 33.864311, 35.185196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.943184, 33.715668, 35.376137>,  <26.134287, 33.626480, 35.490700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.943184, 33.715668, 35.376137>,  <25.624678, 33.864311, 35.185196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.943184, 33.715668, 35.376137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299719, -0.927768, -0.222295,
		0.525480, 0.033934, -0.850129,
		0.796266, -0.371611, 0.477353,
		26.182064, 33.604183, 35.519344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.113054, 33.495441, 34.680653>,  <25.624678, 33.864311, 35.185196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.113054, 33.495441, 34.680653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.201962, 33.335651, 35.036407>,  <26.255306, 33.239777, 35.249863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.201962, 33.335651, 35.036407>,  <26.113054, 33.495441, 34.680653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.201962, 33.335651, 35.036407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145593, -0.915580, -0.374854,
		0.964054, -0.046171, -0.261664,
		0.222266, -0.399476, 0.889391,
		26.268642, 33.215809, 35.303226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.659658, 33.001720, 34.571926>,  <26.113054, 33.495441, 34.680653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.659658, 33.001720, 34.571926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.472433, 32.889397, 34.907082>,  <26.360098, 32.822002, 35.108177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.472433, 32.889397, 34.907082>,  <26.659658, 33.001720, 34.571926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.472433, 32.889397, 34.907082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036409, -0.941234, -0.335786,
		0.882946, -0.187675, 0.430331,
		-0.468061, -0.280813, 0.837892,
		26.332014, 32.805153, 35.158451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.857668, 32.354561, 34.649117>,  <26.659658, 33.001720, 34.571926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.857668, 32.354561, 34.649117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.561785, 32.376732, 34.917374>,  <26.384254, 32.390034, 35.078327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.561785, 32.376732, 34.917374>,  <26.857668, 32.354561, 34.649117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.561785, 32.376732, 34.917374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212971, -0.964658, -0.155171,
		0.638337, -0.257608, 0.725372,
		-0.739709, 0.055431, 0.670640,
		26.339872, 32.393360, 35.118565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.002886, 31.832340, 35.098881>,  <26.857668, 32.354561, 34.649117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.002886, 31.832340, 35.098881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.617907, 31.914974, 35.169331>,  <26.386919, 31.964554, 35.211601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.617907, 31.914974, 35.169331>,  <27.002886, 31.832340, 35.098881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.617907, 31.914974, 35.169331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211374, -0.977367, -0.008678,
		0.170343, -0.045580, 0.984330,
		-0.962447, 0.206583, 0.176122,
		26.329172, 31.976950, 35.222168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.744101, 31.513144, 35.711811>,  <27.002886, 31.832340, 35.098881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.744101, 31.513144, 35.711811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.415161, 31.558220, 35.488724>,  <26.217798, 31.585266, 35.354874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.415161, 31.558220, 35.488724>,  <26.744101, 31.513144, 35.711811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.415161, 31.558220, 35.488724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099126, -0.993576, -0.054598,
		-0.560283, 0.010385, 0.828236,
		-0.822348, 0.112690, -0.557714,
		26.168457, 31.592028, 35.321411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.158018, 30.992144, 35.950562>,  <26.744101, 31.513144, 35.711811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.158018, 30.992144, 35.950562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.050459, 31.113760, 35.584991>,  <25.985924, 31.186729, 35.365650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.050459, 31.113760, 35.584991>,  <26.158018, 30.992144, 35.950562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.050459, 31.113760, 35.584991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175024, -0.948496, -0.264049,
		-0.947126, 0.088948, 0.308287,
		-0.268922, 0.304045, -0.913914,
		25.969790, 31.204973, 35.310814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.528227, 30.493753, 35.748329>,  <26.158018, 30.992144, 35.950562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.528227, 30.493753, 35.748329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.656103, 30.648705, 35.402443>,  <25.732830, 30.741676, 35.194912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.656103, 30.648705, 35.402443>,  <25.528227, 30.493753, 35.748329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.656103, 30.648705, 35.402443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210106, -0.860907, -0.463351,
		-0.923933, 0.329812, -0.193835,
		0.319693, 0.387380, -0.864716,
		25.752010, 30.764919, 35.143028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.038969, 30.334185, 35.297089>,  <25.528227, 30.493753, 35.748329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.038969, 30.334185, 35.297089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.372009, 30.392155, 35.083256>,  <25.571833, 30.426937, 34.954956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.372009, 30.392155, 35.083256>,  <25.038969, 30.334185, 35.297089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.372009, 30.392155, 35.083256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161391, -0.859798, -0.484458,
		-0.529840, 0.489636, -0.692478,
		0.832600, 0.144925, -0.534579,
		25.621790, 30.435633, 34.922882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.858101, 30.206650, 34.646664>,  <25.038969, 30.334185, 35.297089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.858101, 30.206650, 34.646664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.254179, 30.160124, 34.615730>,  <25.491827, 30.132208, 34.597172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.254179, 30.160124, 34.615730>,  <24.858101, 30.206650, 34.646664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.254179, 30.160124, 34.615730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138604, -0.886777, -0.440925,
		-0.017291, 0.447321, -0.894206,
		0.990197, -0.116317, -0.077334,
		25.551239, 30.125229, 34.592529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.937283, 29.808943, 34.003361>,  <24.858101, 30.206650, 34.646664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.937283, 29.808943, 34.003361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.309099, 29.792292, 34.149906>,  <25.532188, 29.782301, 34.237831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.309099, 29.792292, 34.149906>,  <24.937283, 29.808943, 34.003361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.309099, 29.792292, 34.149906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167135, -0.838099, -0.519284,
		0.328662, 0.543928, -0.772091,
		0.929541, -0.041626, 0.366360,
		25.587961, 29.779804, 34.259815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.346529, 29.505899, 33.439686>,  <24.937283, 29.808943, 34.003361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.346529, 29.505899, 33.439686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.544783, 29.425186, 33.777592>,  <25.663734, 29.376759, 33.980335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.544783, 29.425186, 33.777592>,  <25.346529, 29.505899, 33.439686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.544783, 29.425186, 33.777592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292451, -0.877067, -0.381084,
		0.817814, 0.435931, -0.375692,
		0.495634, -0.201784, 0.844766,
		25.693474, 29.364651, 34.031021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.821274, 29.058018, 33.153172>,  <25.346529, 29.505899, 33.439686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.821274, 29.058018, 33.153172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.848162, 28.979267, 33.544418>,  <25.864294, 28.932016, 33.779167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.848162, 28.979267, 33.544418>,  <25.821274, 29.058018, 33.153172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.848162, 28.979267, 33.544418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435016, -0.876469, -0.206311,
		0.897910, 0.439366, 0.026727,
		0.067220, -0.196875, 0.978122,
		25.868328, 28.920204, 33.837856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.508293, 28.685381, 33.244499>,  <25.821274, 29.058018, 33.153172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.508293, 28.685381, 33.244499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.272141, 28.586945, 33.551975>,  <26.130449, 28.527882, 33.736462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.272141, 28.586945, 33.551975>,  <26.508293, 28.685381, 33.244499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.272141, 28.586945, 33.551975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170784, -0.968909, -0.179023,
		0.788847, 0.025588, 0.614056,
		-0.590384, -0.246093, 0.768691,
		26.095026, 28.513117, 33.782581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.801247, 28.125702, 33.687569>,  <26.508293, 28.685381, 33.244499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.801247, 28.125702, 33.687569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.413380, 28.099192, 33.781677>,  <26.180660, 28.083286, 33.838142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.413380, 28.099192, 33.781677>,  <26.801247, 28.125702, 33.687569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.413380, 28.099192, 33.781677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032526, -0.988966, -0.144532,
		0.242253, -0.132495, 0.961124,
		-0.969668, -0.066274, 0.235270,
		26.122478, 28.079309, 33.852257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.678419, 27.693848, 34.286743>,  <26.801247, 28.125702, 33.687569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.678419, 27.693848, 34.286743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.341026, 27.689556, 34.071922>,  <26.138590, 27.686981, 33.943031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.341026, 27.689556, 34.071922>,  <26.678419, 27.693848, 34.286743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.341026, 27.689556, 34.071922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096877, -0.986445, -0.132445,
		-0.528347, -0.163743, 0.833089,
		-0.843483, -0.010731, -0.537048,
		26.087982, 27.686337, 33.910809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.413065, 27.087900, 34.429813>,  <26.678419, 27.693848, 34.286743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.413065, 27.087900, 34.429813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.217146, 27.196268, 34.098343>,  <26.099594, 27.261288, 33.899460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.217146, 27.196268, 34.098343>,  <26.413065, 27.087900, 34.429813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.217146, 27.196268, 34.098343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092189, -0.929071, -0.358230,
		-0.866949, -0.251855, 0.430081,
		-0.489797, 0.270918, -0.828675,
		26.070208, 27.277544, 33.849739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.819408, 26.619646, 34.388645>,  <26.413065, 27.087900, 34.429813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.819408, 26.619646, 34.388645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.919500, 26.761930, 34.028458>,  <25.979557, 26.847301, 33.812344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.919500, 26.761930, 34.028458>,  <25.819408, 26.619646, 34.388645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.919500, 26.761930, 34.028458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105343, -0.934544, -0.339898,
		-0.962438, -0.009805, -0.271325,
		0.250232, 0.355713, -0.900473,
		25.994570, 26.868645, 33.758316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.361654, 26.263062, 33.944073>,  <25.819408, 26.619646, 34.388645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.361654, 26.263062, 33.944073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.649391, 26.379158, 33.691628>,  <25.822033, 26.448816, 33.540161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.649391, 26.379158, 33.691628>,  <25.361654, 26.263062, 33.944073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.649391, 26.379158, 33.691628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097233, -0.941655, -0.322229,
		-0.687818, 0.170427, -0.705592,
		0.719341, 0.290242, -0.631116,
		25.865194, 26.466230, 33.502293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.163021, 26.000521, 33.180744>,  <25.361654, 26.263062, 33.944073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.163021, 26.000521, 33.180744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.558620, 26.055597, 33.202377>,  <25.795980, 26.088642, 33.215359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.558620, 26.055597, 33.202377>,  <25.163021, 26.000521, 33.180744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.558620, 26.055597, 33.202377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147555, -0.944252, -0.294304,
		0.010546, 0.299046, -0.954180,
		0.988998, 0.137690, 0.054084,
		25.855320, 26.096905, 33.218601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.530624, 26.041861, 32.508339>,  <25.163021, 26.000521, 33.180744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.530624, 26.041861, 32.508339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.767384, 25.905859, 32.800655>,  <25.909439, 25.824259, 32.976044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.767384, 25.905859, 32.800655>,  <25.530624, 26.041861, 32.508339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.767384, 25.905859, 32.800655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090113, -0.873075, -0.479187,
		0.800960, 0.349483, -0.486132,
		0.591898, -0.340003, 0.730791,
		25.944952, 25.803858, 33.019894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.028660, 25.942171, 31.911055>,  <25.530624, 26.041861, 32.508339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.028660, 25.942171, 31.911055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.236853, 25.634928, 31.761868>,  <26.361769, 25.450583, 31.672356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.236853, 25.634928, 31.761868>,  <26.028660, 25.942171, 31.911055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.236853, 25.634928, 31.761868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.799127, 0.592073, -0.104147,
		0.300821, -0.243842, 0.921980,
		0.520484, -0.768108, -0.372969,
		26.392998, 25.404495, 31.649977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.713608, 25.766689, 32.326275>,  <26.028660, 25.942171, 31.911055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.713608, 25.766689, 32.326275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.713051, 25.661119, 31.940456>,  <26.712717, 25.597778, 31.708965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.713051, 25.661119, 31.940456>,  <26.713608, 25.766689, 32.326275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.713051, 25.661119, 31.940456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.800962, 0.577191, -0.159090,
		0.598713, -0.772784, 0.210590,
		-0.001392, -0.263924, -0.964543,
		26.712633, 25.581942, 31.651094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.341961, 25.670927, 32.221455>,  <26.713608, 25.766689, 32.326275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.341961, 25.670927, 32.221455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.148485, 25.748985, 31.880171>,  <27.032400, 25.795820, 31.675402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.148485, 25.748985, 31.880171>,  <27.341961, 25.670927, 32.221455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.148485, 25.748985, 31.880171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.681201, 0.696021, -0.226981,
		0.549555, -0.690994, -0.469592,
		-0.483688, 0.195148, -0.853208,
		27.003380, 25.807529, 31.624208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.504387, 25.768780, 31.493177>,  <27.341961, 25.670927, 32.221455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.504387, 25.768780, 31.493177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.368671, 25.538404, 31.195673>,  <27.287241, 25.400179, 31.017170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.368671, 25.538404, 31.195673>,  <27.504387, 25.768780, 31.493177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.368671, 25.538404, 31.195673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501243, 0.558374, -0.661040,
		0.796014, -0.597089, 0.099234,
		-0.339290, -0.575937, -0.743760,
		27.266884, 25.365623, 30.972546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.097975, 25.228437, 31.279442>,  <27.504387, 25.768780, 31.493177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.097975, 25.228437, 31.279442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.812223, 25.289345, 31.006245>,  <27.640772, 25.325890, 30.842327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.812223, 25.289345, 31.006245>,  <28.097975, 25.228437, 31.279442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.812223, 25.289345, 31.006245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.681816, 0.371079, -0.630418,
		0.157450, -0.916032, -0.368911,
		-0.714379, 0.152270, -0.682992,
		27.597910, 25.335026, 30.801348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.336294, 24.918550, 30.546642>,  <28.097975, 25.228437, 31.279442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.336294, 24.918550, 30.546642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.091999, 25.233871, 30.516773>,  <27.945421, 25.423065, 30.498852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.091999, 25.233871, 30.516773>,  <28.336294, 24.918550, 30.546642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.091999, 25.233871, 30.516773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.681107, 0.474899, -0.557283,
		-0.403846, -0.391213, -0.826958,
		-0.610738, 0.788304, -0.074672,
		27.908777, 25.470364, 30.494371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.224892, 25.140984, 29.855789>,  <28.336294, 24.918550, 30.546642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.224892, 25.140984, 29.855789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.157125, 25.464552, 30.080982>,  <28.116465, 25.658693, 30.216097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.157125, 25.464552, 30.080982>,  <28.224892, 25.140984, 29.855789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.157125, 25.464552, 30.080982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536861, 0.554794, -0.635598,
		-0.826486, 0.194561, -0.528268,
		-0.169417, 0.808919, 0.562981,
		28.106300, 25.707228, 30.249876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.845917, 25.846348, 29.579245>,  <28.224892, 25.140984, 29.855789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.845917, 25.846348, 29.579245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.093258, 25.965080, 29.870319>,  <28.241663, 26.036320, 30.044964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.093258, 25.965080, 29.870319>,  <27.845917, 25.846348, 29.579245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.093258, 25.965080, 29.870319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450410, 0.624927, -0.637649,
		-0.644027, 0.722051, 0.252729,
		0.618352, 0.296831, 0.727689,
		28.278763, 26.054131, 30.088627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.673382, 26.573053, 29.768993>,  <27.845917, 25.846348, 29.579245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.673382, 26.573053, 29.768993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.049206, 26.438879, 29.796440>,  <28.274700, 26.358374, 29.812908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.049206, 26.438879, 29.796440>,  <27.673382, 26.573053, 29.768993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.049206, 26.438879, 29.796440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298151, 0.703049, -0.645622,
		0.168324, 0.627060, 0.760568,
		0.939560, -0.335438, 0.068619,
		28.331074, 26.338247, 29.817026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.162317, 27.106844, 30.029947>,  <27.673382, 26.573053, 29.768993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.162317, 27.106844, 30.029947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.340830, 26.825338, 29.808842>,  <28.447937, 26.656435, 29.676178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.340830, 26.825338, 29.808842>,  <28.162317, 27.106844, 30.029947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.340830, 26.825338, 29.808842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154174, 0.668915, -0.727174,
		0.881512, 0.239302, 0.407026,
		0.446281, -0.703766, -0.552763,
		28.474714, 26.614208, 29.643013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.800129, 27.225815, 30.339197>,  <28.162317, 27.106844, 30.029947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.800129, 27.225815, 30.339197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.576305, 27.136169, 30.658363>,  <28.442011, 27.082382, 30.849863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.576305, 27.136169, 30.658363>,  <28.800129, 27.225815, 30.339197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.576305, 27.136169, 30.658363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235148, 0.880253, 0.412141,
		-0.794733, 0.418245, -0.439854,
		-0.559558, -0.224111, 0.797915,
		28.408438, 27.068935, 30.897738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.365314, 27.813719, 30.446537>,  <28.800129, 27.225815, 30.339197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.365314, 27.813719, 30.446537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.382187, 27.615284, 30.793436>,  <28.392309, 27.496223, 31.001575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.382187, 27.615284, 30.793436>,  <28.365314, 27.813719, 30.446537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.382187, 27.615284, 30.793436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003244, 0.868084, 0.496406,
		-0.999105, -0.018125, 0.038224,
		0.042179, -0.496086, 0.867248,
		28.394840, 27.466457, 31.053610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.942398, 28.185080, 30.883490>,  <28.365314, 27.813719, 30.446537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.942398, 28.185080, 30.883490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.160160, 27.960587, 31.132854>,  <28.290817, 27.825891, 31.282473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.160160, 27.960587, 31.132854>,  <27.942398, 28.185080, 30.883490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.160160, 27.960587, 31.132854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020300, 0.751796, 0.659083,
		-0.838577, -0.346153, 0.420674,
		0.544404, -0.561232, 0.623412,
		28.323481, 27.792217, 31.319878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.647001, 28.350542, 31.533581>,  <27.942398, 28.185080, 30.883490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.647001, 28.350542, 31.533581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.007357, 28.200104, 31.620256>,  <28.223570, 28.109840, 31.672262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.007357, 28.200104, 31.620256>,  <27.647001, 28.350542, 31.533581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.007357, 28.200104, 31.620256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126471, 0.705000, 0.697839,
		-0.415221, -0.601269, 0.682691,
		0.900887, -0.376098, 0.216688,
		28.277622, 28.087275, 31.685263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.693663, 28.246496, 32.248158>,  <27.647001, 28.350542, 31.533581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.693663, 28.246496, 32.248158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.074385, 28.264116, 32.126751>,  <28.302818, 28.274689, 32.053905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.074385, 28.264116, 32.126751>,  <27.693663, 28.246496, 32.248158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.074385, 28.264116, 32.126751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197947, 0.667680, 0.717649,
		0.234267, -0.743144, 0.626782,
		0.951807, 0.044051, -0.303518,
		28.359926, 28.277332, 32.035694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.998411, 28.281740, 32.902435>,  <27.693663, 28.246496, 32.248158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.998411, 28.281740, 32.902435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.257895, 28.402523, 32.623009>,  <28.413584, 28.474993, 32.455353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.257895, 28.402523, 32.623009>,  <27.998411, 28.281740, 32.902435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.257895, 28.402523, 32.623009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363939, 0.683067, 0.633220,
		0.668367, -0.665016, 0.333227,
		0.648718, 0.301949, -0.698564,
		28.452507, 28.493111, 32.413437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.670174, 28.190498, 33.158710>,  <27.998411, 28.281740, 32.902435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.670174, 28.190498, 33.158710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.677494, 28.483425, 32.886425>,  <28.681887, 28.659182, 32.723053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.677494, 28.483425, 32.886425>,  <28.670174, 28.190498, 33.158710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.677494, 28.483425, 32.886425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410169, 0.615406, 0.673080,
		0.911826, -0.291526, -0.289113,
		0.018299, 0.732317, -0.680718,
		28.682983, 28.703119, 32.682209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.455463, 28.524412, 33.234283>,  <28.670174, 28.190498, 33.158710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.455463, 28.524412, 33.234283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.221874, 28.780815, 33.035053>,  <29.081720, 28.934656, 32.915516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.221874, 28.780815, 33.035053>,  <29.455463, 28.524412, 33.234283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.221874, 28.780815, 33.035053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369381, 0.756198, 0.540114,
		0.722863, 0.131432, -0.678376,
		-0.583975, 0.641007, -0.498079,
		29.046682, 28.973118, 32.885628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.817051, 29.157852, 33.136192>,  <29.455463, 28.524412, 33.234283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.817051, 29.157852, 33.136192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.451565, 29.295715, 33.050091>,  <29.232273, 29.378433, 32.998432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.451565, 29.295715, 33.050091>,  <29.817051, 29.157852, 33.136192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.451565, 29.295715, 33.050091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209701, 0.853667, 0.476737,
		0.348065, 0.390463, -0.852285,
		-0.913716, 0.344660, -0.215251,
		29.177450, 29.399113, 32.985516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.942886, 29.833443, 32.933014>,  <29.817051, 29.157852, 33.136192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.942886, 29.833443, 32.933014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.550518, 29.831722, 33.010757>,  <29.315098, 29.830690, 33.057404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.550518, 29.831722, 33.010757>,  <29.942886, 29.833443, 32.933014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.550518, 29.831722, 33.010757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050440, 0.959889, 0.275806,
		-0.187746, 0.280347, -0.941359,
		-0.980922, -0.004300, 0.194356,
		29.256241, 29.830433, 33.069065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.531294, 30.384857, 32.514217>,  <29.942886, 29.833443, 32.933014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.531294, 30.384857, 32.514217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.318920, 30.312607, 32.845394>,  <29.191496, 30.269257, 33.044098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.318920, 30.312607, 32.845394>,  <29.531294, 30.384857, 32.514217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.318920, 30.312607, 32.845394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029575, 0.972475, 0.231121,
		-0.846897, 0.147197, -0.510978,
		-0.530934, -0.180624, 0.827940,
		29.159639, 30.258419, 33.093777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.944576, 30.957293, 32.557117>,  <29.531294, 30.384857, 32.514217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.944576, 30.957293, 32.557117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.988960, 30.814825, 32.928242>,  <29.015591, 30.729343, 33.150917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.988960, 30.814825, 32.928242>,  <28.944576, 30.957293, 32.557117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.988960, 30.814825, 32.928242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110402, 0.923379, 0.367673,
		-0.987674, -0.143228, 0.063136,
		0.110959, -0.356171, 0.927810,
		29.022247, 30.707973, 33.206585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.382824, 31.225386, 32.958858>,  <28.944576, 30.957293, 32.557117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.382824, 31.225386, 32.958858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.620625, 31.138857, 33.268639>,  <28.763306, 31.086939, 33.454506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.620625, 31.138857, 33.268639>,  <28.382824, 31.225386, 32.958858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.620625, 31.138857, 33.268639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293494, 0.838307, 0.459460,
		-0.748617, -0.500446, 0.434886,
		0.594503, -0.216323, 0.774449,
		28.798975, 31.073959, 33.500973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.054808, 31.387127, 33.507984>,  <28.382824, 31.225386, 32.958858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.054808, 31.387127, 33.507984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.423906, 31.383804, 33.662109>,  <28.645365, 31.381811, 33.754585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.423906, 31.383804, 33.662109>,  <28.054808, 31.387127, 33.507984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.423906, 31.383804, 33.662109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251353, 0.744920, 0.617994,
		-0.292165, -0.667102, 0.685284,
		0.922746, -0.008308, 0.385318,
		28.700729, 31.381311, 33.777706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.920473, 31.546623, 34.170219>,  <28.054808, 31.387127, 33.507984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.920473, 31.546623, 34.170219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.307487, 31.628807, 34.111343>,  <28.539696, 31.678118, 34.076019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.307487, 31.628807, 34.111343>,  <27.920473, 31.546623, 34.170219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.307487, 31.628807, 34.111343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099362, 0.844692, 0.525949,
		0.232389, -0.494249, 0.837683,
		0.967534, 0.205459, -0.147187,
		28.597748, 31.690445, 34.067188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.135366, 31.712437, 34.752289>,  <27.920473, 31.546623, 34.170219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.135366, 31.712437, 34.752289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.428421, 31.873384, 34.532711>,  <28.604254, 31.969954, 34.400963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.428421, 31.873384, 34.532711>,  <28.135366, 31.712437, 34.752289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.428421, 31.873384, 34.532711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098338, 0.735497, 0.670354,
		0.673478, -0.545109, 0.499284,
		0.732637, 0.402370, -0.548945,
		28.648212, 31.994097, 34.368027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.756721, 31.856174, 35.315273>,  <28.135366, 31.712437, 34.752289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.756721, 31.856174, 35.315273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.809553, 32.066845, 34.979374>,  <28.841251, 32.193245, 34.777836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.809553, 32.066845, 34.979374>,  <28.756721, 31.856174, 35.315273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.809553, 32.066845, 34.979374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284120, 0.791504, 0.541106,
		0.949648, -0.310057, -0.045098,
		0.132078, 0.526674, -0.839744,
		28.849176, 32.224846, 34.727451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.234409, 32.356499, 35.623241>,  <28.756721, 31.856174, 35.315273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.234409, 32.356499, 35.623241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.065651, 32.506794, 35.293194>,  <28.964396, 32.596970, 35.095165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.065651, 32.506794, 35.293194>,  <29.234409, 32.356499, 35.623241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.065651, 32.506794, 35.293194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066020, 0.894935, 0.441286,
		0.904237, 0.240652, -0.352764,
		-0.421897, 0.375738, -0.825121,
		28.939081, 32.619514, 35.045658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.573195, 32.983887, 35.532246>,  <29.234409, 32.356499, 35.623241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.573195, 32.983887, 35.532246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.224991, 33.023148, 35.339336>,  <29.016069, 33.046703, 35.223591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.224991, 33.023148, 35.339336>,  <29.573195, 32.983887, 35.532246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.224991, 33.023148, 35.339336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055050, 0.954342, 0.293600,
		0.489067, 0.282130, -0.825358,
		-0.870507, 0.098155, -0.482268,
		28.963839, 33.052593, 35.194656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.548777, 33.716785, 35.221966>,  <29.573195, 32.983887, 35.532246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.548777, 33.716785, 35.221966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.172474, 33.584896, 35.190315>,  <28.946692, 33.505764, 35.171326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.172474, 33.584896, 35.190315>,  <29.548777, 33.716785, 35.221966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.172474, 33.584896, 35.190315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338085, 0.894223, 0.293366,
		-0.025974, 0.302737, -0.952720,
		-0.940757, -0.329720, -0.079124,
		28.890247, 33.485981, 35.166576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.061701, 34.369038, 34.950768>,  <29.548777, 33.716785, 35.221966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.061701, 34.369038, 34.950768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.831785, 34.091953, 35.125019>,  <28.693836, 33.925701, 35.229568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.831785, 34.091953, 35.125019>,  <29.061701, 34.369038, 34.950768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.831785, 34.091953, 35.125019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487318, 0.717424, 0.497819,
		-0.657373, 0.073852, -0.749938,
		-0.574788, -0.692711, 0.435626,
		28.659349, 33.884140, 35.255707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.445433, 34.914951, 35.340332>,  <29.061701, 34.369038, 34.950768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.445433, 34.914951, 35.340332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.106268, 35.078968, 35.474743>,  <28.902769, 35.177376, 35.555389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.106268, 35.078968, 35.474743>,  <29.445433, 34.914951, 35.340332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.106268, 35.078968, 35.474743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333667, -0.079784, 0.939309,
		0.411961, 0.908573, -0.069166,
		-0.847912, 0.410037, 0.336029,
		28.851894, 35.201981, 35.575550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.763115, 34.836891, 35.955112>,  <29.445433, 34.914951, 35.340332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.763115, 34.836891, 35.955112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.712742, 34.494648, 35.754288>,  <29.682518, 34.289303, 35.633793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.712742, 34.494648, 35.754288>,  <29.763115, 34.836891, 35.955112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.712742, 34.494648, 35.754288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.992036, -0.109746, -0.061802,
		-0.002221, -0.505851, 0.862618,
		-0.125932, -0.855611, -0.502066,
		29.674963, 34.237965, 35.603668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.247597, 34.146519, 36.187386>,  <29.763115, 34.836891, 35.955112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.247597, 34.146519, 36.187386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.174681, 34.168522, 35.794704>,  <30.130930, 34.181725, 35.559093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.174681, 34.168522, 35.794704>,  <30.247597, 34.146519, 36.187386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.174681, 34.168522, 35.794704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.976897, -0.103132, -0.187177,
		-0.111541, -0.993145, -0.034935,
		-0.182291, 0.055006, -0.981705,
		30.119993, 34.185024, 35.500195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.586107, 33.566624, 35.821938>,  <30.247597, 34.146519, 36.187386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.586107, 33.566624, 35.821938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.538549, 33.906803, 35.616959>,  <30.510015, 34.110912, 35.493973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.538549, 33.906803, 35.616959>,  <30.586107, 33.566624, 35.821938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.538549, 33.906803, 35.616959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.989456, 0.144478, 0.010208,
		0.082719, -0.505828, -0.858659,
		-0.118894, 0.850450, -0.512445,
		30.502882, 34.161938, 35.463226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.041214, 33.605206, 35.268131>,  <30.586107, 33.566624, 35.821938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.041214, 33.605206, 35.268131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.940975, 33.971008, 35.395180>,  <30.880833, 34.190491, 35.471409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.940975, 33.971008, 35.395180>,  <31.041214, 33.605206, 35.268131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.940975, 33.971008, 35.395180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.967593, 0.247127, 0.051872,
		-0.031055, 0.320323, -0.946799,
		-0.250596, 0.914506, 0.317617,
		30.865797, 34.245361, 35.490463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.440062, 34.190659, 34.829811>,  <31.041214, 33.605206, 35.268131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.440062, 34.190659, 34.829811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.343121, 34.346798, 35.185089>,  <31.284956, 34.440479, 35.398258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.343121, 34.346798, 35.185089>,  <31.440062, 34.190659, 34.829811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.343121, 34.346798, 35.185089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.911119, 0.406134, 0.070119,
		-0.333357, 0.826248, -0.454079,
		-0.242352, 0.390346, 0.888198,
		31.270414, 34.463902, 35.451550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.538559, 34.925392, 34.803822>,  <31.440062, 34.190659, 34.829811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.538559, 34.925392, 34.803822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.552771, 34.797588, 35.182587>,  <31.561298, 34.720905, 35.409847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.552771, 34.797588, 35.182587>,  <31.538559, 34.925392, 34.803822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.552771, 34.797588, 35.182587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.848498, 0.510252, 0.140335,
		-0.528004, 0.798470, 0.289235,
		0.035529, -0.319513, 0.946916,
		31.563429, 34.701733, 35.466660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.748388, 35.512352, 35.326527>,  <31.538559, 34.925392, 34.803822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.748388, 35.512352, 35.326527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.757801, 35.187199, 35.559307>,  <31.763449, 34.992107, 35.698975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.757801, 35.187199, 35.559307>,  <31.748388, 35.512352, 35.326527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.757801, 35.187199, 35.559307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.643482, 0.457813, 0.613464,
		-0.765100, 0.360038, 0.533849,
		0.023533, -0.812883, 0.581951,
		31.764860, 34.943333, 35.733891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.588263, 35.673428, 36.094772>,  <31.748388, 35.512352, 35.326527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.588263, 35.673428, 36.094772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.812521, 35.342285, 36.087414>,  <31.947075, 35.143600, 36.083000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.812521, 35.342285, 36.087414>,  <31.588263, 35.673428, 36.094772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.812521, 35.342285, 36.087414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594064, 0.386641, 0.705405,
		-0.576858, -0.406411, 0.708566,
		0.560645, -0.827852, -0.018397,
		31.980715, 35.093929, 36.081894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.666403, 35.610451, 36.819599>,  <31.588263, 35.673428, 36.094772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.666403, 35.610451, 36.819599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.936983, 35.398090, 36.615421>,  <32.099331, 35.270672, 36.492916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.936983, 35.398090, 36.615421>,  <31.666403, 35.610451, 36.819599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.936983, 35.398090, 36.615421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.671741, 0.160602, 0.723168,
		-0.301955, -0.832074, 0.465270,
		0.676452, -0.530905, -0.510443,
		32.139919, 35.238819, 36.462288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.976601, 35.070869, 37.274471>,  <31.666403, 35.610451, 36.819599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.976601, 35.070869, 37.274471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.254364, 35.126328, 36.992031>,  <32.421021, 35.159603, 36.822567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.254364, 35.126328, 36.992031>,  <31.976601, 35.070869, 37.274471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.254364, 35.126328, 36.992031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.701211, 0.089917, 0.707260,
		0.161550, -0.986251, -0.034782,
		0.694409, 0.138647, -0.706097,
		32.462688, 35.167923, 36.780201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.620853, 34.793602, 37.553841>,  <31.976601, 35.070869, 37.274471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.620853, 34.793602, 37.553841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.744915, 35.026386, 37.253139>,  <32.819351, 35.166058, 37.072720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.744915, 35.026386, 37.253139>,  <32.620853, 34.793602, 37.553841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.744915, 35.026386, 37.253139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.806306, 0.257906, 0.532311,
		0.503665, -0.771238, -0.389248,
		0.310149, 0.581959, -0.751752,
		32.837959, 35.200974, 37.027615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.292362, 34.780441, 37.599506>,  <32.620853, 34.793602, 37.553841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.292362, 34.780441, 37.599506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.242645, 35.113365, 37.383427>,  <33.212814, 35.313118, 37.253780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.242645, 35.113365, 37.383427>,  <33.292362, 34.780441, 37.599506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.242645, 35.113365, 37.383427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.737922, 0.441495, 0.510445,
		0.663342, -0.335181, -0.669052,
		-0.124291, 0.832308, -0.540200,
		33.205357, 35.363056, 37.221367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.009968, 35.171631, 37.467052>,  <33.292362, 34.780441, 37.599506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.009968, 35.171631, 37.467052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.711979, 35.436840, 37.437595>,  <33.533188, 35.595966, 37.419922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.711979, 35.436840, 37.437595>,  <34.009968, 35.171631, 37.467052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.711979, 35.436840, 37.437595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433364, 0.564922, 0.702181,
		0.507165, 0.491188, -0.708180,
		-0.744969, 0.663021, -0.073645,
		33.488487, 35.635746, 37.415501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.338860, 35.813320, 37.653572>,  <34.009968, 35.171631, 37.467052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.338860, 35.813320, 37.653572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.953724, 35.919125, 37.675385>,  <33.722641, 35.982609, 37.688473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.953724, 35.919125, 37.675385>,  <34.338860, 35.813320, 37.653572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.953724, 35.919125, 37.675385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226123, 0.679118, 0.698332,
		0.147685, 0.684712, -0.713693,
		-0.962838, 0.264516, 0.054534,
		33.664871, 35.998478, 37.691746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.270092, 36.606907, 37.594379>,  <34.338860, 35.813320, 37.653572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.270092, 36.606907, 37.594379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.942783, 36.459915, 37.771194>,  <33.746399, 36.371719, 37.877281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.942783, 36.459915, 37.771194>,  <34.270092, 36.606907, 37.594379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.942783, 36.459915, 37.771194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107944, 0.657069, 0.746062,
		-0.564608, 0.658195, -0.497993,
		-0.818270, -0.367477, 0.442034,
		33.697304, 36.349670, 37.903805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.923935, 37.230354, 37.688484>,  <34.270092, 36.606907, 37.594379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.923935, 37.230354, 37.688484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.801514, 36.953045, 37.949467>,  <33.728062, 36.786659, 38.106056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.801514, 36.953045, 37.949467>,  <33.923935, 37.230354, 37.688484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.801514, 36.953045, 37.949467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203540, 0.621845, 0.756227,
		-0.930000, 0.364250, -0.049211,
		-0.306058, -0.693275, 0.652456,
		33.709698, 36.745064, 38.145203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.501553, 37.618656, 38.233143>,  <33.923935, 37.230354, 37.688484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.501553, 37.618656, 38.233143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.612122, 37.258480, 38.367485>,  <33.678463, 37.042374, 38.448090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.612122, 37.258480, 38.367485>,  <33.501553, 37.618656, 38.233143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.612122, 37.258480, 38.367485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370196, 0.422265, 0.827434,
		-0.886874, -0.104390, 0.450064,
		0.276422, -0.900442, 0.335851,
		33.695049, 36.988346, 38.468239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.291985, 37.615604, 38.887035>,  <33.501553, 37.618656, 38.233143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.291985, 37.615604, 38.887035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.525307, 37.290771, 38.893795>,  <33.665298, 37.095871, 38.897850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.525307, 37.290771, 38.893795>,  <33.291985, 37.615604, 38.887035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.525307, 37.290771, 38.893795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177733, 0.147904, 0.972900,
		-0.792571, -0.564493, 0.230606,
		0.583303, -0.812078, 0.016895,
		33.700298, 37.047150, 38.898865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.135494, 37.366631, 39.526539>,  <33.291985, 37.615604, 38.887035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.135494, 37.366631, 39.526539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.493340, 37.221104, 39.422771>,  <33.708046, 37.133789, 39.360512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.493340, 37.221104, 39.422771>,  <33.135494, 37.366631, 39.526539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.493340, 37.221104, 39.422771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287852, 0.025192, 0.957344,
		-0.341763, -0.931129, 0.127263,
		0.894617, -0.363818, -0.259418,
		33.761726, 37.111958, 39.344948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.150463, 36.622562, 39.755104>,  <33.135494, 37.366631, 39.526539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.150463, 36.622562, 39.755104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.524975, 36.757019, 39.714325>,  <33.749683, 36.837692, 39.689857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.524975, 36.757019, 39.714325>,  <33.150463, 36.622562, 39.755104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.524975, 36.757019, 39.714325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128657, -0.058116, 0.989985,
		0.326847, -0.940018, -0.097659,
		0.936279, 0.336138, -0.101945,
		33.805859, 36.857861, 39.683743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.608242, 36.122837, 40.042774>,  <33.150463, 36.622562, 39.755104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.608242, 36.122837, 40.042774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.830528, 36.455013, 40.027065>,  <33.963902, 36.654320, 40.017639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.830528, 36.455013, 40.027065>,  <33.608242, 36.122837, 40.042774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.830528, 36.455013, 40.027065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057708, 0.008590, 0.998296,
		0.829368, -0.557035, -0.043149,
		0.555715, 0.830445, -0.039270,
		33.997242, 36.704147, 40.015285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.229202, 36.015644, 40.435310>,  <33.608242, 36.122837, 40.042774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.229202, 36.015644, 40.435310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.237854, 36.415478, 40.427650>,  <34.243046, 36.655376, 40.423054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.237854, 36.415478, 40.427650>,  <34.229202, 36.015644, 40.435310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.237854, 36.415478, 40.427650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331056, 0.010911, 0.943548,
		0.943363, -0.026748, -0.330681,
		0.021630, 0.999583, -0.019148,
		34.244343, 36.715351, 40.421906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.709785, 36.189102, 40.974705>,  <34.229202, 36.015644, 40.435310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.709785, 36.189102, 40.974705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.525925, 36.538166, 40.908760>,  <34.415607, 36.747604, 40.869194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.525925, 36.538166, 40.908760>,  <34.709785, 36.189102, 40.974705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.525925, 36.538166, 40.908760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191157, 0.278505, 0.941219,
		0.867281, 0.401120, -0.294832,
		-0.459655, 0.872661, -0.164865,
		34.388027, 36.799965, 40.859299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.166153, 36.740150, 41.310051>,  <34.709785, 36.189102, 40.974705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.166153, 36.740150, 41.310051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.800400, 36.895092, 41.262966>,  <34.580948, 36.988056, 41.234715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.800400, 36.895092, 41.262966>,  <35.166153, 36.740150, 41.310051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.800400, 36.895092, 41.262966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062583, 0.422501, 0.904199,
		0.399975, 0.819421, -0.410571,
		-0.914387, 0.387352, -0.117709,
		34.526085, 37.011299, 41.227654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.091553, 37.515358, 41.413334>,  <35.166153, 36.740150, 41.310051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.091553, 37.515358, 41.413334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.746998, 37.334373, 41.505676>,  <34.540264, 37.225784, 41.561081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.746998, 37.334373, 41.505676>,  <35.091553, 37.515358, 41.413334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.746998, 37.334373, 41.505676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182950, 0.147620, 0.971976,
		-0.473860, 0.879481, -0.044380,
		-0.861386, -0.452461, 0.230852,
		34.488583, 37.198635, 41.574932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.973255, 37.758095, 42.048641>,  <35.091553, 37.515358, 41.413334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.973255, 37.758095, 42.048641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.674450, 37.492619, 42.033230>,  <34.495167, 37.333332, 42.023983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.674450, 37.492619, 42.033230>,  <34.973255, 37.758095, 42.048641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.674450, 37.492619, 42.033230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160174, 0.123432, 0.979341,
		-0.645222, 0.737755, -0.198511,
		-0.747016, -0.663689, -0.038529,
		34.450344, 37.293510, 42.021671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.356060, 38.133816, 42.397343>,  <34.973255, 37.758095, 42.048641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.356060, 38.133816, 42.397343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.265095, 37.744999, 42.420712>,  <34.210514, 37.511707, 42.434734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.265095, 37.744999, 42.420712>,  <34.356060, 38.133816, 42.397343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.265095, 37.744999, 42.420712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292987, 0.125514, 0.947842,
		-0.928677, 0.198435, -0.313340,
		-0.227414, -0.972044, 0.058423,
		34.196869, 37.453384, 42.438240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.788624, 38.198521, 42.789768>,  <34.356060, 38.133816, 42.397343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.788624, 38.198521, 42.789768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.887604, 37.813606, 42.834969>,  <33.946991, 37.582657, 42.862087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.887604, 37.813606, 42.834969>,  <33.788624, 38.198521, 42.789768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.887604, 37.813606, 42.834969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391191, 0.007472, 0.920279,
		-0.886417, -0.271932, -0.374589,
		0.247454, -0.962287, 0.113001,
		33.961842, 37.524921, 42.868870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.286221, 37.996571, 43.168140>,  <33.788624, 38.198521, 42.789768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.286221, 37.996571, 43.168140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.585503, 37.734283, 43.208591>,  <33.765072, 37.576912, 43.232864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.585503, 37.734283, 43.208591>,  <33.286221, 37.996571, 43.168140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.585503, 37.734283, 43.208591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061077, 0.083710, 0.994617,
		-0.660650, -0.750355, 0.022584,
		0.748205, -0.655714, 0.101132,
		33.809963, 37.537571, 43.238930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.869102, 37.392067, 43.405426>,  <33.286221, 37.996571, 43.168140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.869102, 37.392067, 43.405426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.245937, 37.345467, 43.531219>,  <33.472038, 37.317505, 43.606697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.245937, 37.345467, 43.531219>,  <32.869102, 37.392067, 43.405426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.245937, 37.345467, 43.531219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313870, 0.024061, 0.949161,
		-0.118147, -0.992899, -0.013899,
		0.942086, -0.116503, 0.314484,
		33.528564, 37.310516, 43.625565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.827328, 37.013081, 44.108078>,  <32.869102, 37.392067, 43.405426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.827328, 37.013081, 44.108078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.195641, 37.169106, 44.106804>,  <33.416630, 37.262718, 44.106037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.195641, 37.169106, 44.106804>,  <32.827328, 37.013081, 44.108078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.195641, 37.169106, 44.106804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070779, 0.175114, 0.982001,
		0.383598, -0.903985, 0.188850,
		0.920784, 0.390060, -0.003190,
		33.471874, 37.286125, 44.105846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.136051, 36.745167, 44.695477>,  <32.827328, 37.013081, 44.108078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.136051, 36.745167, 44.695477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.363766, 37.063877, 44.614422>,  <33.500393, 37.255104, 44.565788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.363766, 37.063877, 44.614422>,  <33.136051, 36.745167, 44.695477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.363766, 37.063877, 44.614422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124691, 0.327302, 0.936657,
		0.812630, -0.507957, 0.285679,
		0.569284, 0.796777, -0.202638,
		33.534550, 37.302910, 44.553631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.722401, 36.707058, 45.283390>,  <33.136051, 36.745167, 44.695477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.722401, 36.707058, 45.283390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.651478, 37.070297, 45.131638>,  <33.608925, 37.288239, 45.040588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.651478, 37.070297, 45.131638>,  <33.722401, 36.707058, 45.283390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.651478, 37.070297, 45.131638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151729, 0.355654, 0.922219,
		0.972389, 0.221078, 0.074724,
		-0.177307, 0.908094, -0.379378,
		33.598286, 37.342724, 45.017822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.958138, 37.109249, 45.757755>,  <33.722401, 36.707058, 45.283390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.958138, 37.109249, 45.757755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.694080, 37.330849, 45.554859>,  <33.535645, 37.463810, 45.433121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.694080, 37.330849, 45.554859>,  <33.958138, 37.109249, 45.757755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.694080, 37.330849, 45.554859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330908, 0.391740, 0.858510,
		0.674322, 0.734590, -0.075281,
		-0.660144, 0.554002, -0.507240,
		33.496037, 37.497047, 45.402687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.882317, 37.748253, 46.112724>,  <33.958138, 37.109249, 45.757755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.882317, 37.748253, 46.112724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.556419, 37.713013, 45.883492>,  <33.360882, 37.691868, 45.745953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.556419, 37.713013, 45.883492>,  <33.882317, 37.748253, 46.112724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.556419, 37.713013, 45.883492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544990, 0.453754, 0.705049,
		0.197927, 0.886762, -0.417707,
		-0.814746, -0.088098, -0.573086,
		33.311996, 37.686584, 45.711567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.623413, 38.390800, 46.023346>,  <33.882317, 37.748253, 46.112724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.623413, 38.390800, 46.023346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.302330, 38.154633, 45.989742>,  <33.109680, 38.012932, 45.969578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.302330, 38.154633, 45.989742>,  <33.623413, 38.390800, 46.023346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.302330, 38.154633, 45.989742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495756, 0.582330, 0.644297,
		-0.331482, 0.558835, -0.760147,
		-0.802711, -0.590420, -0.084014,
		33.061516, 37.977505, 45.964539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.063427, 38.853603, 46.037197>,  <33.623413, 38.390800, 46.023346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.063427, 38.853603, 46.037197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.855289, 38.513577, 46.069740>,  <32.730408, 38.309559, 46.089268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.855289, 38.513577, 46.069740>,  <33.063427, 38.853603, 46.037197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.855289, 38.513577, 46.069740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.707418, 0.482459, 0.516519,
		-0.478331, 0.211213, -0.852402,
		-0.520345, -0.850072, 0.081359,
		32.699184, 38.258556, 46.094147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.398304, 39.034859, 45.910271>,  <33.063427, 38.853603, 46.037197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.398304, 39.034859, 45.910271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.358360, 38.720108, 46.153862>,  <32.334396, 38.531258, 46.300018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.358360, 38.720108, 46.153862>,  <32.398304, 39.034859, 45.910271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.358360, 38.720108, 46.153862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507553, 0.566705, 0.649027,
		-0.855815, -0.244280, -0.455969,
		-0.099855, -0.786875, 0.608980,
		32.328403, 38.484047, 46.336555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.781162, 39.159508, 46.306789>,  <32.398304, 39.034859, 45.910271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.781162, 39.159508, 46.306789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.959568, 38.864338, 46.509388>,  <32.066612, 38.687237, 46.630947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.959568, 38.864338, 46.509388>,  <31.781162, 39.159508, 46.306789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.959568, 38.864338, 46.509388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456123, 0.299495, 0.838006,
		-0.770079, -0.604786, -0.203007,
		0.446015, -0.737927, 0.506492,
		32.093372, 38.642960, 46.661335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.190304, 38.844074, 46.693016>,  <31.781162, 39.159508, 46.306789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.190304, 38.844074, 46.693016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.537546, 38.776009, 46.879536>,  <31.745892, 38.735168, 46.991447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.537546, 38.776009, 46.879536>,  <31.190304, 38.844074, 46.693016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.537546, 38.776009, 46.879536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351831, 0.451739, 0.819846,
		-0.350159, -0.875771, 0.332286,
		0.868104, -0.170168, 0.466304,
		31.797977, 38.724957, 47.019428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.965498, 38.528915, 47.405758>,  <31.190304, 38.844074, 46.693016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.965498, 38.528915, 47.405758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.339767, 38.667965, 47.429996>,  <31.564329, 38.751396, 47.444538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.339767, 38.667965, 47.429996>,  <30.965498, 38.528915, 47.405758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.339767, 38.667965, 47.429996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169427, 0.291946, 0.941309,
		0.309538, -0.891022, 0.332063,
		0.935671, 0.347631, 0.060595,
		31.620470, 38.772255, 47.448177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.210598, 38.292732, 47.979507>,  <30.965498, 38.528915, 47.405758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.210598, 38.292732, 47.979507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.423298, 38.623962, 47.908478>,  <31.550919, 38.822701, 47.865860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.423298, 38.623962, 47.908478>,  <31.210598, 38.292732, 47.979507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.423298, 38.623962, 47.908478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098451, 0.268692, 0.958182,
		0.841160, -0.492031, 0.224402,
		0.531750, 0.828076, -0.177572,
		31.582823, 38.872387, 47.855206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.681660, 38.329823, 48.435608>,  <31.210598, 38.292732, 47.979507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.681660, 38.329823, 48.435608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.718168, 38.716442, 48.339733>,  <31.740074, 38.948414, 48.282207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.718168, 38.716442, 48.339733>,  <31.681660, 38.329823, 48.435608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.718168, 38.716442, 48.339733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118306, 0.249513, 0.961118,
		0.988774, -0.059367, 0.137122,
		0.091273, 0.966550, -0.239688,
		31.745550, 39.006409, 48.267826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.889477, 38.671471, 49.093369>,  <31.681660, 38.329823, 48.435608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.889477, 38.671471, 49.093369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.780167, 38.973969, 48.855576>,  <31.714581, 39.155468, 48.712902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.780167, 38.973969, 48.855576>,  <31.889477, 38.671471, 49.093369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.780167, 38.973969, 48.855576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331192, 0.506251, 0.796255,
		0.903124, 0.414485, 0.112117,
		-0.273276, 0.756249, -0.594481,
		31.698183, 39.200844, 48.677231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.075710, 39.241543, 49.480343>,  <31.889477, 38.671471, 49.093369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.075710, 39.241543, 49.480343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.791639, 39.349434, 49.220222>,  <31.621197, 39.414169, 49.064152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.791639, 39.349434, 49.220222>,  <32.075710, 39.241543, 49.480343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.791639, 39.349434, 49.220222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521114, 0.419687, 0.743171,
		0.473377, 0.866666, -0.157494,
		-0.710179, 0.269728, -0.650302,
		31.578587, 39.430351, 49.025131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.942865, 39.894421, 49.630966>,  <32.075710, 39.241543, 49.480343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.942865, 39.894421, 49.630966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.603205, 39.790539, 49.447014>,  <31.399408, 39.728210, 49.336643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.603205, 39.790539, 49.447014>,  <31.942865, 39.894421, 49.630966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.603205, 39.790539, 49.447014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526842, 0.477676, 0.703039,
		0.037094, 0.839273, -0.542443,
		-0.849154, -0.259703, -0.459883,
		31.348459, 39.712627, 49.309048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.499537, 40.477238, 49.709202>,  <31.942865, 39.894421, 49.630966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.499537, 40.477238, 49.709202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.244923, 40.180515, 49.624779>,  <31.092154, 40.002483, 49.574123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.244923, 40.180515, 49.624779>,  <31.499537, 40.477238, 49.709202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.244923, 40.180515, 49.624779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520452, 0.211190, 0.827363,
		-0.569169, 0.636492, -0.520504,
		-0.636535, -0.741807, -0.211061,
		31.053963, 39.957973, 49.561462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.828501, 40.694962, 49.974102>,  <31.499537, 40.477238, 49.709202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.828501, 40.694962, 49.974102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.775368, 40.299934, 49.940472>,  <30.743488, 40.062920, 49.920292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.775368, 40.299934, 49.940472>,  <30.828501, 40.694962, 49.974102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.775368, 40.299934, 49.940472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582554, 0.009166, 0.812741,
		-0.801864, 0.156937, -0.576528,
		-0.132834, -0.987566, -0.084075,
		30.735518, 40.003666, 49.915249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.012014, 40.451675, 49.958935>,  <30.828501, 40.694962, 49.974102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.012014, 40.451675, 49.958935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.278765, 40.199795, 50.118313>,  <30.438814, 40.048668, 50.213940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.278765, 40.199795, 50.118313>,  <30.012014, 40.451675, 49.958935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.278765, 40.199795, 50.118313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569124, -0.085248, 0.817821,
		-0.481015, -0.772147, -0.415227,
		0.666875, -0.629700, 0.398442,
		30.478827, 40.010883, 50.237846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.747190, 39.760246, 50.078060>,  <30.012014, 40.451675, 49.958935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.747190, 39.760246, 50.078060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.032766, 39.832733, 50.348602>,  <30.204111, 39.876225, 50.510929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.032766, 39.832733, 50.348602>,  <29.747190, 39.760246, 50.078060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.032766, 39.832733, 50.348602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550966, -0.450722, 0.702343,
		0.432123, -0.874077, -0.221944,
		0.713937, 0.181215, 0.676354,
		30.246948, 39.887096, 50.551510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.924467, 39.179111, 50.469345>,  <29.747190, 39.760246, 50.078060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.924467, 39.179111, 50.469345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.940250, 39.531761, 50.657463>,  <29.949720, 39.743351, 50.770332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.940250, 39.531761, 50.657463>,  <29.924467, 39.179111, 50.469345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.940250, 39.531761, 50.657463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.588901, -0.359713, 0.723742,
		0.807241, -0.305515, 0.504997,
		0.039460, 0.881628, 0.470293,
		29.952089, 39.796249, 50.798550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.087616, 39.016556, 51.123474>,  <29.924467, 39.179111, 50.469345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.087616, 39.016556, 51.123474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.910284, 39.374809, 51.137901>,  <29.803885, 39.589760, 51.146557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.910284, 39.374809, 51.137901>,  <30.087616, 39.016556, 51.123474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.910284, 39.374809, 51.137901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.688918, -0.366204, 0.625529,
		0.573453, 0.252466, 0.779367,
		-0.443332, 0.895631, 0.036072,
		29.777285, 39.643497, 51.148724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.050434, 39.151913, 51.822556>,  <30.087616, 39.016556, 51.123474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.050434, 39.151913, 51.822556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.747553, 39.355915, 51.659321>,  <29.565825, 39.478317, 51.561382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.747553, 39.355915, 51.659321>,  <30.050434, 39.151913, 51.822556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.747553, 39.355915, 51.659321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576728, -0.228737, 0.784260,
		0.306635, 0.829199, 0.467337,
		-0.757205, 0.510008, -0.408083,
		29.520391, 39.508919, 51.536896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.104713, 38.613892, 52.334515>,  <30.050434, 39.151913, 51.822556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.104713, 38.613892, 52.334515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.898884, 38.694683, 52.001186>,  <29.775385, 38.743156, 51.801189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.898884, 38.694683, 52.001186>,  <30.104713, 38.613892, 52.334515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.898884, 38.694683, 52.001186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419339, -0.906987, 0.039110,
		-0.747909, 0.369567, 0.551410,
		-0.514575, 0.201976, -0.833318,
		29.744511, 38.755276, 51.751190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.494463, 38.524704, 52.564259>,  <30.104713, 38.613892, 52.334515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.494463, 38.524704, 52.564259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.460022, 38.497025, 52.166706>,  <29.439358, 38.480419, 51.928173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.460022, 38.497025, 52.166706>,  <29.494463, 38.524704, 52.564259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.460022, 38.497025, 52.166706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.679078, -0.725873, 0.109367,
		-0.728999, 0.684339, 0.015510,
		-0.086103, -0.069196, -0.993880,
		29.434191, 38.476265, 51.868542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.992947, 38.135960, 52.151524>,  <29.494463, 38.524704, 52.564259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.992947, 38.135960, 52.151524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.943909, 37.822090, 51.908455>,  <28.914486, 37.633770, 51.762615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.943909, 37.822090, 51.908455>,  <28.992947, 38.135960, 52.151524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.943909, 37.822090, 51.908455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189799, 0.582449, -0.790398,
		0.974139, -0.212234, 0.077524,
		-0.122596, -0.784672, -0.607668,
		28.907129, 37.586689, 51.726154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.700968, 37.983948, 51.793537>,  <28.992947, 38.135960, 52.151524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.700968, 37.983948, 51.793537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.361462, 37.907104, 51.596481>,  <29.157759, 37.861000, 51.478249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.361462, 37.907104, 51.596481>,  <29.700968, 37.983948, 51.793537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.361462, 37.907104, 51.596481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325320, 0.544751, -0.772925,
		0.416848, -0.816297, -0.399870,
		-0.848766, -0.192107, -0.492636,
		29.106833, 37.849472, 51.448689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.957912, 37.931210, 51.042023>,  <29.700968, 37.983948, 51.793537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.957912, 37.931210, 51.042023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.562679, 37.983524, 51.074482>,  <29.325539, 38.014915, 51.093960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.562679, 37.983524, 51.074482>,  <29.957912, 37.931210, 51.042023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.562679, 37.983524, 51.074482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026985, 0.371863, -0.927895,
		-0.151537, -0.919028, -0.363902,
		-0.988083, 0.130791, 0.081151,
		29.266254, 38.022762, 51.098827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.049692, 37.161198, 51.152969>,  <29.957912, 37.931210, 51.042023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.049692, 37.161198, 51.152969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.372169, 37.157707, 50.916332>,  <30.565657, 37.155613, 50.774349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.372169, 37.157707, 50.916332>,  <30.049692, 37.161198, 51.152969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.372169, 37.157707, 50.916332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468563, -0.619931, -0.629392,
		-0.361250, 0.784608, -0.503874,
		0.806193, -0.008729, -0.591588,
		30.614027, 37.155090, 50.738857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.998877, 36.524490, 50.731358>,  <30.049692, 37.161198, 51.152969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.998877, 36.524490, 50.731358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.206106, 36.821049, 50.560745>,  <30.330444, 36.998985, 50.458378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.206106, 36.821049, 50.560745>,  <29.998877, 36.524490, 50.731358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.206106, 36.821049, 50.560745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218103, -0.367680, -0.904015,
		-0.827061, 0.561375, -0.028784,
		0.518075, 0.741397, -0.426531,
		30.361528, 37.043468, 50.432785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.545246, 36.738789, 50.191635>,  <29.998877, 36.524490, 50.731358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.545246, 36.738789, 50.191635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.899141, 36.894447, 50.089024>,  <30.111479, 36.987843, 50.027458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.899141, 36.894447, 50.089024>,  <29.545246, 36.738789, 50.191635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.899141, 36.894447, 50.089024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152566, -0.278266, -0.948310,
		-0.440410, 0.878143, -0.186823,
		0.884739, 0.389143, -0.256526,
		30.164562, 37.011189, 50.012066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.432802, 36.907001, 49.503777>,  <29.545246, 36.738789, 50.191635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.432802, 36.907001, 49.503777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.828693, 36.946392, 49.545223>,  <30.066229, 36.970028, 49.570091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.828693, 36.946392, 49.545223>,  <29.432802, 36.907001, 49.503777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.828693, 36.946392, 49.545223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135612, -0.417566, -0.898470,
		-0.045212, 0.903294, -0.426632,
		0.989730, 0.098478, 0.103618,
		30.125612, 36.975937, 49.576309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.732422, 37.224045, 48.854111>,  <29.432802, 36.907001, 49.503777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.732422, 37.224045, 48.854111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.990150, 36.986187, 49.046467>,  <30.144787, 36.843472, 49.161880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.990150, 36.986187, 49.046467>,  <29.732422, 37.224045, 48.854111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.990150, 36.986187, 49.046467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229877, -0.449140, -0.863383,
		0.729388, 0.666841, -0.152696,
		0.644321, -0.594640, 0.480889,
		30.183447, 36.807796, 49.190735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.300278, 37.386395, 48.546810>,  <29.732422, 37.224045, 48.854111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.300278, 37.386395, 48.546810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.334194, 37.027065, 48.719238>,  <30.354544, 36.811466, 48.822697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.334194, 37.027065, 48.719238>,  <30.300278, 37.386395, 48.546810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.334194, 37.027065, 48.719238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296977, -0.390186, -0.871527,
		0.951113, 0.201915, 0.233698,
		0.084789, -0.898323, 0.431075,
		30.359631, 36.757568, 48.848560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.996037, 37.179836, 48.354725>,  <30.300278, 37.386395, 48.546810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.996037, 37.179836, 48.354725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.819807, 36.836899, 48.461205>,  <30.714069, 36.631138, 48.525093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.819807, 36.836899, 48.461205>,  <30.996037, 37.179836, 48.354725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.819807, 36.836899, 48.461205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370453, -0.443736, -0.816004,
		0.817717, -0.260893, 0.513102,
		-0.440572, -0.857341, 0.266202,
		30.687635, 36.579697, 48.541065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.522572, 36.691586, 48.238358>,  <30.996037, 37.179836, 48.354725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.522572, 36.691586, 48.238358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.204988, 36.448826, 48.252811>,  <31.014439, 36.303169, 48.261482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.204988, 36.448826, 48.252811>,  <31.522572, 36.691586, 48.238358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.204988, 36.448826, 48.252811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331924, -0.482488, -0.810575,
		0.509369, -0.631569, 0.584520,
		-0.793958, -0.606898, 0.036131,
		30.966801, 36.266758, 48.263649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.752537, 36.008213, 48.345097>,  <31.522572, 36.691586, 48.238358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.752537, 36.008213, 48.345097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.392515, 36.009258, 48.170788>,  <31.176502, 36.009884, 48.066204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.392515, 36.009258, 48.170788>,  <31.752537, 36.008213, 48.345097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.392515, 36.009258, 48.170788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378312, -0.491648, -0.784323,
		-0.216293, -0.870790, 0.441523,
		-0.900055, 0.002610, -0.435770,
		31.122499, 36.010040, 48.040058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.686260, 35.421173, 48.050446>,  <31.752537, 36.008213, 48.345097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.686260, 35.421173, 48.050446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.397963, 35.599735, 47.838314>,  <31.224983, 35.706875, 47.711037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.397963, 35.599735, 47.838314>,  <31.686260, 35.421173, 48.050446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.397963, 35.599735, 47.838314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362281, -0.409677, -0.837208,
		-0.591000, -0.795540, 0.133547,
		-0.720743, 0.446409, -0.530328,
		31.181740, 35.733658, 47.679214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.478775, 34.937569, 47.533657>,  <31.686260, 35.421173, 48.050446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.478775, 34.937569, 47.533657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.339809, 35.287109, 47.397610>,  <31.256430, 35.496834, 47.315983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.339809, 35.287109, 47.397610>,  <31.478775, 34.937569, 47.533657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.339809, 35.287109, 47.397610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409093, -0.185131, -0.893515,
		-0.843769, -0.449560, -0.293171,
		-0.347414, 0.873854, -0.340120,
		31.235584, 35.549267, 47.295574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.182970, 34.734314, 46.887474>,  <31.478775, 34.937569, 47.533657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.182970, 34.734314, 46.887474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.267878, 35.124340, 46.861568>,  <31.318823, 35.358356, 46.846027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.267878, 35.124340, 46.861568>,  <31.182970, 34.734314, 46.887474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.267878, 35.124340, 46.861568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366687, -0.140907, -0.919612,
		-0.905804, 0.171459, -0.387454,
		0.212271, 0.975062, -0.064762,
		31.331558, 35.416859, 46.842140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.963573, 34.941647, 46.238281>,  <31.182970, 34.734314, 46.887474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.963573, 34.941647, 46.238281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.241673, 35.205891, 46.351582>,  <31.408531, 35.364437, 46.419563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.241673, 35.205891, 46.351582>,  <30.963573, 34.941647, 46.238281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.241673, 35.205891, 46.351582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445579, -0.086897, -0.891015,
		-0.563996, 0.745687, -0.354767,
		0.695246, 0.660606, 0.283253,
		31.450247, 35.404072, 46.436558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.036652, 35.358593, 45.690369>,  <30.963573, 34.941647, 46.238281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.036652, 35.358593, 45.690369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.378368, 35.389244, 45.896015>,  <31.583399, 35.407635, 46.019402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.378368, 35.389244, 45.896015>,  <31.036652, 35.358593, 45.690369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.378368, 35.389244, 45.896015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508619, 0.080765, -0.857195,
		-0.107207, 0.993783, 0.030024,
		0.854291, 0.076626, 0.514116,
		31.634655, 35.412231, 46.050251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.358959, 35.756119, 45.240707>,  <31.036652, 35.358593, 45.690369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.358959, 35.756119, 45.240707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.618069, 35.636368, 45.520927>,  <31.773535, 35.564518, 45.689060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.618069, 35.636368, 45.520927>,  <31.358959, 35.756119, 45.240707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.618069, 35.636368, 45.520927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.713852, -0.082660, -0.695401,
		0.266092, 0.950548, 0.160164,
		0.647773, -0.299374, 0.700546,
		31.812401, 35.546555, 45.731091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.848553, 36.185802, 45.132061>,  <31.358959, 35.756119, 45.240707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.848553, 36.185802, 45.132061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.009285, 35.870171, 45.317913>,  <32.105724, 35.680790, 45.429424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.009285, 35.870171, 45.317913>,  <31.848553, 36.185802, 45.132061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.009285, 35.870171, 45.317913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614587, -0.143750, -0.775641,
		0.678834, 0.597235, 0.427195,
		0.401831, -0.789080, 0.464635,
		32.129833, 35.633446, 45.457302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.454777, 36.345779, 44.997471>,  <31.848553, 36.185802, 45.132061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.454777, 36.345779, 44.997471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.426758, 35.952545, 45.065163>,  <32.409946, 35.716606, 45.105778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.426758, 35.952545, 45.065163>,  <32.454777, 36.345779, 44.997471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.426758, 35.952545, 45.065163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517433, -0.180845, -0.836396,
		0.852852, 0.028981, 0.521348,
		-0.070044, -0.983084, 0.169229,
		32.405746, 35.657619, 45.115932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.028049, 36.053047, 44.895199>,  <32.454777, 36.345779, 44.997471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.028049, 36.053047, 44.895199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.787708, 35.735226, 44.860188>,  <32.643505, 35.544533, 44.839180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.787708, 35.735226, 44.860188>,  <33.028049, 36.053047, 44.895199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.787708, 35.735226, 44.860188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483448, -0.274005, -0.831384,
		0.636599, -0.541850, 0.548763,
		-0.600849, -0.794556, -0.087525,
		32.607452, 35.496861, 44.833931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.333145, 35.768211, 44.276848>,  <33.028049, 36.053047, 44.895199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.333145, 35.768211, 44.276848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.989735, 35.572510, 44.338249>,  <32.783688, 35.455090, 44.375092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.989735, 35.572510, 44.338249>,  <33.333145, 35.768211, 44.276848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.989735, 35.572510, 44.338249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099822, -0.453106, -0.885850,
		0.502955, -0.745204, 0.437842,
		-0.858529, -0.489250, 0.153504,
		32.732178, 35.425735, 44.384300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.483856, 35.000881, 44.212543>,  <33.333145, 35.768211, 44.276848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.483856, 35.000881, 44.212543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.098488, 35.070454, 44.130993>,  <32.867268, 35.112198, 44.082062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.098488, 35.070454, 44.130993>,  <33.483856, 35.000881, 44.212543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.098488, 35.070454, 44.130993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105583, -0.452880, -0.885298,
		-0.246311, -0.874441, 0.417951,
		-0.963423, 0.173930, -0.203875,
		32.809460, 35.122631, 44.069832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.243481, 34.405811, 43.889523>,  <33.483856, 35.000881, 44.212543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.243481, 34.405811, 43.889523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.970158, 34.683113, 43.797874>,  <32.806164, 34.849495, 43.742886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.970158, 34.683113, 43.797874>,  <33.243481, 34.405811, 43.889523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.970158, 34.683113, 43.797874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078345, -0.242376, -0.967014,
		-0.725920, -0.678713, 0.111303,
		-0.683303, 0.693255, -0.229119,
		32.765167, 34.891090, 43.729137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.782368, 34.112041, 43.414837>,  <33.243481, 34.405811, 43.889523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.782368, 34.112041, 43.414837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.727367, 34.505154, 43.365467>,  <32.694366, 34.741020, 43.335846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.727367, 34.505154, 43.365467>,  <32.782368, 34.112041, 43.414837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.727367, 34.505154, 43.365467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109912, -0.108696, -0.987980,
		-0.984384, -0.149414, -0.093074,
		-0.137501, 0.982782, -0.123421,
		32.686115, 34.799988, 43.328442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.384289, 34.086758, 42.872139>,  <32.782368, 34.112041, 43.414837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.384289, 34.086758, 42.872139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.515606, 34.464115, 42.891045>,  <32.594395, 34.690529, 42.902390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.515606, 34.464115, 42.891045>,  <32.384289, 34.086758, 42.872139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.515606, 34.464115, 42.891045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124253, 0.006471, -0.992229,
		-0.936370, 0.331610, -0.115095,
		0.328288, 0.943394, 0.047263,
		32.614094, 34.747135, 42.905224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.001720, 34.450836, 42.375080>,  <32.384289, 34.086758, 42.872139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.001720, 34.450836, 42.375080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.332394, 34.665504, 42.442711>,  <32.530796, 34.794304, 42.483288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.332394, 34.665504, 42.442711>,  <32.001720, 34.450836, 42.375080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.332394, 34.665504, 42.442711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219393, -0.030741, -0.975152,
		-0.518134, 0.843234, -0.143154,
		0.826682, 0.536666, 0.169072,
		32.580399, 34.826504, 42.493431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.948763, 34.898270, 41.795780>,  <32.001720, 34.450836, 42.375080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.948763, 34.898270, 41.795780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.325569, 34.949734, 41.919750>,  <32.551651, 34.980610, 41.994133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.325569, 34.949734, 41.919750>,  <31.948763, 34.898270, 41.795780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.325569, 34.949734, 41.919750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320775, -0.074015, -0.944259,
		-0.098546, 0.988923, -0.110994,
		0.942015, 0.128657, 0.309928,
		32.608173, 34.988331, 42.012730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.236691, 35.446754, 41.364677>,  <31.948763, 34.898270, 41.795780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.236691, 35.446754, 41.364677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.537354, 35.211605, 41.484291>,  <32.717751, 35.070515, 41.556057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.537354, 35.211605, 41.484291>,  <32.236691, 35.446754, 41.364677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.537354, 35.211605, 41.484291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257529, -0.155803, -0.953627,
		0.607202, 0.793808, 0.034284,
		0.751655, -0.587873, 0.299032,
		32.762852, 35.035244, 41.574001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.764072, 35.653954, 41.005886>,  <32.236691, 35.446754, 41.364677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.764072, 35.653954, 41.005886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.887714, 35.301907, 41.150021>,  <32.961899, 35.090679, 41.236504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.887714, 35.301907, 41.150021>,  <32.764072, 35.653954, 41.005886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.887714, 35.301907, 41.150021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272375, -0.281094, -0.920216,
		0.911189, 0.382593, 0.152834,
		0.309107, -0.880119, 0.360339,
		32.980446, 35.037872, 41.258121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.362370, 35.461037, 40.604042>,  <32.764072, 35.653954, 41.005886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.362370, 35.461037, 40.604042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.249222, 35.105778, 40.748920>,  <33.181332, 34.892624, 40.835846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.249222, 35.105778, 40.748920>,  <33.362370, 35.461037, 40.604042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.249222, 35.105778, 40.748920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328088, -0.444431, -0.833570,
		0.901301, -0.116962, 0.417106,
		-0.282870, -0.888145, 0.362192,
		33.164360, 34.839333, 40.857578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.988895, 34.997372, 40.444023>,  <33.362370, 35.461037, 40.604042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.988895, 34.997372, 40.444023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.651947, 34.788876, 40.498745>,  <33.449776, 34.663780, 40.531578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.651947, 34.788876, 40.498745>,  <33.988895, 34.997372, 40.444023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.651947, 34.788876, 40.498745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183723, -0.516435, -0.836385,
		0.506607, -0.679416, 0.530795,
		-0.842375, -0.521238, 0.136806,
		33.399235, 34.632504, 40.539787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.103333, 34.289665, 40.371071>,  <33.988895, 34.997372, 40.444023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.103333, 34.289665, 40.371071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.706203, 34.266689, 40.329102>,  <33.467926, 34.252903, 40.303921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.706203, 34.266689, 40.329102>,  <34.103333, 34.289665, 40.371071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.706203, 34.266689, 40.329102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117522, -0.631767, -0.766198,
		-0.022280, -0.773027, 0.633981,
		-0.992820, -0.057436, -0.104924,
		33.408356, 34.249458, 40.297623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.865364, 33.502499, 40.302273>,  <34.103333, 34.289665, 40.371071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.865364, 33.502499, 40.302273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.602722, 33.751362, 40.131721>,  <33.445137, 33.900681, 40.029392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.602722, 33.751362, 40.131721>,  <33.865364, 33.502499, 40.302273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.602722, 33.751362, 40.131721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107146, -0.636519, -0.763783,
		-0.746588, -0.455816, 0.484601,
		-0.656601, 0.622154, -0.426378,
		33.405743, 33.938007, 40.003807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.425842, 33.003311, 40.065750>,  <33.865364, 33.502499, 40.302273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.425842, 33.003311, 40.065750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.342915, 33.340706, 39.867542>,  <33.293159, 33.543144, 39.748615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.342915, 33.340706, 39.867542>,  <33.425842, 33.003311, 40.065750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.342915, 33.340706, 39.867542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137436, -0.526617, -0.838919,
		-0.968572, -0.105818, 0.225102,
		-0.207315, 0.843491, -0.495524,
		33.280720, 33.593754, 39.718884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.774632, 32.869293, 39.659149>,  <33.425842, 33.003311, 40.065750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.774632, 32.869293, 39.659149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.966553, 33.181198, 39.498268>,  <33.081703, 33.368340, 39.401741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.966553, 33.181198, 39.498268>,  <32.774632, 32.869293, 39.659149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.966553, 33.181198, 39.498268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058967, -0.486036, -0.871948,
		-0.875394, 0.394645, -0.279180,
		0.479801, 0.779759, -0.402201,
		33.110493, 33.415127, 39.377609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.525429, 32.999737, 38.950104>,  <32.774632, 32.869293, 39.659149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.525429, 32.999737, 38.950104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.888264, 33.167343, 38.966148>,  <33.105965, 33.267906, 38.975777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.888264, 33.167343, 38.966148>,  <32.525429, 32.999737, 38.950104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.888264, 33.167343, 38.966148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228924, -0.411108, -0.882374,
		-0.353241, 0.809576, -0.468836,
		0.907091, 0.419019, 0.040111,
		33.160393, 33.293049, 38.978180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.629250, 33.423000, 38.288078>,  <32.525429, 32.999737, 38.950104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.629250, 33.423000, 38.288078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.999233, 33.373611, 38.431862>,  <33.221222, 33.343979, 38.518131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.999233, 33.373611, 38.431862>,  <32.629250, 33.423000, 38.288078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.999233, 33.373611, 38.431862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280817, -0.415308, -0.865252,
		0.256116, 0.901263, -0.349471,
		0.924957, -0.123468, 0.359457,
		33.276722, 33.336571, 38.539700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.235878, 33.768917, 37.819157>,  <32.629250, 33.423000, 38.288078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.235878, 33.768917, 37.819157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.432686, 33.494389, 38.033398>,  <33.550770, 33.329670, 38.161942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.432686, 33.494389, 38.033398>,  <33.235878, 33.768917, 37.819157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.432686, 33.494389, 38.033398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367516, -0.393975, -0.842446,
		0.789207, 0.611345, 0.058391,
		0.492021, -0.686324, 0.535606,
		33.580292, 33.288490, 38.194080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.779903, 33.721359, 37.354950>,  <33.235878, 33.768917, 37.819157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.779903, 33.721359, 37.354950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.878979, 33.445305, 37.626942>,  <33.938423, 33.279675, 37.790134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.878979, 33.445305, 37.626942>,  <33.779903, 33.721359, 37.354950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.878979, 33.445305, 37.626942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495295, -0.513002, -0.701079,
		0.832667, 0.510436, 0.214757,
		0.247685, -0.690134, 0.679976,
		33.953285, 33.238266, 37.830933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.458794, 33.777321, 37.373611>,  <33.779903, 33.721359, 37.354950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.458794, 33.777321, 37.373611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.365726, 33.406528, 37.491302>,  <34.309887, 33.184052, 37.561916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.365726, 33.406528, 37.491302>,  <34.458794, 33.777321, 37.373611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.365726, 33.406528, 37.491302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563969, -0.375069, -0.735706,
		0.792343, -0.005236, 0.610054,
		-0.232665, -0.926982, 0.294230,
		34.295929, 33.128433, 37.579571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.075909, 33.331692, 37.391174>,  <34.458794, 33.777321, 37.373611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.075909, 33.331692, 37.391174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.772808, 33.071621, 37.368942>,  <34.590950, 32.915577, 37.355602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.772808, 33.071621, 37.368942>,  <35.075909, 33.331692, 37.391174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.772808, 33.071621, 37.368942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462500, -0.475028, -0.748627,
		0.460340, -0.592974, 0.660658,
		-0.757747, -0.650177, -0.055576,
		34.545483, 32.876568, 37.352268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.289032, 32.621334, 37.424892>,  <35.075909, 33.331692, 37.391174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.289032, 32.621334, 37.424892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.935261, 32.600109, 37.239433>,  <34.723000, 32.587376, 37.128159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.935261, 32.600109, 37.239433>,  <35.289032, 32.621334, 37.424892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.935261, 32.600109, 37.239433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449077, -0.367017, -0.814633,
		-0.126943, -0.928699, 0.348428,
		-0.884429, -0.053060, -0.463648,
		34.669933, 32.584190, 37.100338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.695530, 32.345867, 38.017769>,  <35.289032, 32.621334, 37.424892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.695530, 32.345867, 38.017769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.933304, 32.042229, 38.123917>,  <36.075970, 31.860046, 38.187607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.933304, 32.042229, 38.123917>,  <35.695530, 32.345867, 38.017769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.933304, 32.042229, 38.123917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502797, -0.093313, 0.859353,
		-0.627570, -0.644255, -0.437140,
		0.594433, -0.759097, 0.265369,
		36.111633, 31.814499, 38.203529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.311195, 31.730333, 38.159752>,  <35.695530, 32.345867, 38.017769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.311195, 31.730333, 38.159752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.641491, 31.691681, 38.382038>,  <35.839668, 31.668489, 38.515411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.641491, 31.691681, 38.382038>,  <35.311195, 31.730333, 38.159752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.641491, 31.691681, 38.382038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548868, -0.364730, 0.752141,
		0.130008, -0.926086, -0.354208,
		0.825737, -0.096629, 0.555716,
		35.889214, 31.662691, 38.548752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.232906, 31.067196, 38.649040>,  <35.311195, 31.730333, 38.159752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.232906, 31.067196, 38.649040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.504433, 31.314266, 38.807880>,  <35.667347, 31.462507, 38.903183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.504433, 31.314266, 38.807880>,  <35.232906, 31.067196, 38.649040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.504433, 31.314266, 38.807880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438669, -0.092570, 0.893868,
		0.588878, -0.780967, 0.208116,
		0.678817, 0.617674, 0.397099,
		35.708076, 31.499569, 38.927010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.410042, 30.809082, 39.299374>,  <35.232906, 31.067196, 38.649040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.410042, 30.809082, 39.299374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.570515, 31.171961, 39.350044>,  <35.666798, 31.389688, 39.380447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.570515, 31.171961, 39.350044>,  <35.410042, 30.809082, 39.299374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.570515, 31.171961, 39.350044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332683, 0.015457, 0.942912,
		0.853448, -0.420423, 0.308010,
		0.401183, 0.907196, 0.126676,
		35.690868, 31.444120, 39.388046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.655674, 30.921740, 40.028908>,  <35.410042, 30.809082, 39.299374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.655674, 30.921740, 40.028908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.619877, 31.296448, 39.893581>,  <35.598400, 31.521273, 39.812386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.619877, 31.296448, 39.893581>,  <35.655674, 30.921740, 40.028908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.619877, 31.296448, 39.893581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412731, 0.274260, 0.868582,
		0.906447, 0.217361, 0.362090,
		-0.089489, 0.936769, -0.338313,
		35.593029, 31.577478, 39.792088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.157101, 31.403299, 40.387325>,  <35.655674, 30.921740, 40.028908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.157101, 31.403299, 40.387325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.868298, 31.636240, 40.237888>,  <35.695015, 31.776005, 40.148224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.868298, 31.636240, 40.237888>,  <36.157101, 31.403299, 40.387325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.868298, 31.636240, 40.237888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163269, 0.381313, 0.909914,
		0.672346, 0.717961, -0.180230,
		-0.722007, 0.582351, -0.373595,
		35.651695, 31.810946, 40.125809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.381939, 31.993036, 40.583843>,  <36.157101, 31.403299, 40.387325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.381939, 31.993036, 40.583843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.990273, 32.028259, 40.510658>,  <35.755272, 32.049393, 40.466747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.990273, 32.028259, 40.510658>,  <36.381939, 31.993036, 40.583843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.990273, 32.028259, 40.510658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120438, 0.473584, 0.872475,
		0.163478, 0.876336, -0.453112,
		-0.979168, 0.088058, -0.182965,
		35.696522, 32.054676, 40.455769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.118500, 32.658813, 40.754051>,  <36.381939, 31.993036, 40.583843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.118500, 32.658813, 40.754051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.762920, 32.475708, 40.759895>,  <35.549572, 32.365845, 40.763401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.762920, 32.475708, 40.759895>,  <36.118500, 32.658813, 40.754051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.762920, 32.475708, 40.759895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200262, 0.417184, 0.886483,
		-0.411897, 0.785116, -0.462530,
		-0.888952, -0.457767, 0.014608,
		35.496235, 32.338379, 40.764278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.614582, 33.177124, 41.119339>,  <36.118500, 32.658813, 40.754051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.614582, 33.177124, 41.119339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.410404, 32.833649, 41.101032>,  <35.287895, 32.627563, 41.090050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.410404, 32.833649, 41.101032>,  <35.614582, 33.177124, 41.119339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.410404, 32.833649, 41.101032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369869, 0.171201, 0.913174,
		-0.776299, 0.483054, -0.404992,
		-0.510447, -0.858691, -0.045763,
		35.257271, 32.576042, 41.087303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.980297, 33.344109, 41.347649>,  <35.614582, 33.177124, 41.119339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.980297, 33.344109, 41.347649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.035271, 32.953197, 41.412186>,  <35.068256, 32.718651, 41.450909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.035271, 32.953197, 41.412186>,  <34.980297, 33.344109, 41.347649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.035271, 32.953197, 41.412186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413321, 0.091443, 0.905982,
		-0.900154, -0.191199, -0.391364,
		0.137436, -0.977282, 0.161340,
		35.076500, 32.660011, 41.460587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.490177, 33.211689, 41.705795>,  <34.980297, 33.344109, 41.347649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.490177, 33.211689, 41.705795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.707001, 32.888023, 41.796513>,  <34.837093, 32.693825, 41.850941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.707001, 32.888023, 41.796513>,  <34.490177, 33.211689, 41.705795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.707001, 32.888023, 41.796513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209577, 0.131179, 0.968953,
		-0.813790, -0.572756, -0.098475,
		0.542055, -0.809162, 0.226789,
		34.869617, 32.645275, 41.864548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.081715, 32.767693, 42.047386>,  <34.490177, 33.211689, 41.705795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.081715, 32.767693, 42.047386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.454098, 32.665375, 42.151604>,  <34.677528, 32.603985, 42.214134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.454098, 32.665375, 42.151604>,  <34.081715, 32.767693, 42.047386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.454098, 32.665375, 42.151604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295037, -0.106629, 0.949517,
		-0.215106, -0.960831, -0.174738,
		0.930958, -0.255801, 0.260545,
		34.733387, 32.588634, 42.229767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.075897, 32.113579, 42.423176>,  <34.081715, 32.767693, 42.047386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.075897, 32.113579, 42.423176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.390186, 32.337875, 42.527649>,  <34.578758, 32.472454, 42.590332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.390186, 32.337875, 42.527649>,  <34.075897, 32.113579, 42.423176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.390186, 32.337875, 42.527649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315758, 0.000502, 0.948840,
		0.531920, -0.827993, 0.177452,
		0.785722, 0.560739, 0.261178,
		34.625904, 32.506096, 42.606003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.186131, 31.873766, 43.045258>,  <34.075897, 32.113579, 42.423176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.186131, 31.873766, 43.045258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.411064, 32.203232, 43.015976>,  <34.546024, 32.400913, 42.998409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.411064, 32.203232, 43.015976>,  <34.186131, 31.873766, 43.045258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.411064, 32.203232, 43.015976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357826, 0.322186, 0.876446,
		0.745484, -0.466658, 0.475904,
		0.562330, 0.823667, -0.073202,
		34.579762, 32.450333, 42.994015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.522667, 31.853218, 43.641537>,  <34.186131, 31.873766, 43.045258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.522667, 31.853218, 43.641537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.553631, 32.234478, 43.524563>,  <34.572208, 32.463234, 43.454380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.553631, 32.234478, 43.524563>,  <34.522667, 31.853218, 43.641537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.553631, 32.234478, 43.524563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344283, 0.300826, 0.889366,
		0.935669, 0.031835, 0.351440,
		0.077409, 0.953147, -0.292434,
		34.576855, 32.520424, 43.436832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.015556, 32.171741, 44.115265>,  <34.522667, 31.853218, 43.641537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.015556, 32.171741, 44.115265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.794529, 32.468285, 43.962921>,  <34.661911, 32.646210, 43.871513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.794529, 32.468285, 43.962921>,  <35.015556, 32.171741, 44.115265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.794529, 32.468285, 43.962921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309089, 0.242101, 0.919702,
		0.774036, 0.625918, 0.095368,
		-0.552569, 0.741359, -0.380859,
		34.628757, 32.690693, 43.848663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.260799, 32.810795, 44.385193>,  <35.015556, 32.171741, 44.115265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.260799, 32.810795, 44.385193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.881420, 32.857815, 44.267464>,  <34.653793, 32.886028, 44.196827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.881420, 32.857815, 44.267464>,  <35.260799, 32.810795, 44.385193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.881420, 32.857815, 44.267464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214919, 0.443969, 0.869886,
		0.232928, 0.888298, -0.395817,
		-0.948448, 0.117552, -0.294325,
		34.596886, 32.893082, 44.179165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.108383, 33.461533, 44.695030>,  <35.260799, 32.810795, 44.385193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.108383, 33.461533, 44.695030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.739952, 33.347843, 44.588566>,  <34.518894, 33.279629, 44.524689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.739952, 33.347843, 44.588566>,  <35.108383, 33.461533, 44.695030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.739952, 33.347843, 44.588566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371361, 0.435615, 0.819958,
		-0.117110, 0.854082, -0.506784,
		-0.921074, -0.284225, -0.266158,
		34.463631, 33.262577, 44.508720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.701637, 34.094429, 44.632652>,  <35.108383, 33.461533, 44.695030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.701637, 34.094429, 44.632652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.489937, 33.765514, 44.716305>,  <34.362919, 33.568165, 44.766495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.489937, 33.765514, 44.716305>,  <34.701637, 34.094429, 44.632652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.489937, 33.765514, 44.716305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413518, 0.465206, 0.782679,
		-0.740878, 0.327752, -0.586241,
		-0.529247, -0.822291, 0.209130,
		34.331161, 33.518826, 44.779045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.046322, 34.267910, 44.749645>,  <34.701637, 34.094429, 44.632652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.046322, 34.267910, 44.749645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.077873, 33.911942, 44.929344>,  <34.096806, 33.698360, 45.037163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.077873, 33.911942, 44.929344>,  <34.046322, 34.267910, 44.749645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.077873, 33.911942, 44.929344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468124, 0.364805, 0.804846,
		-0.880135, -0.273790, -0.387816,
		0.078882, -0.889919, 0.449246,
		34.101540, 33.644966, 45.064117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.495804, 34.262375, 45.266766>,  <34.046322, 34.267910, 44.749645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.495804, 34.262375, 45.266766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.695541, 33.936749, 45.385391>,  <33.815384, 33.741371, 45.456566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.695541, 33.936749, 45.385391>,  <33.495804, 34.262375, 45.266766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.695541, 33.936749, 45.385391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373072, 0.106901, 0.921623,
		-0.781966, -0.570847, -0.250325,
		0.499346, -0.814067, 0.296560,
		33.845345, 33.692528, 45.474358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.027626, 33.877762, 45.658268>,  <33.495804, 34.262375, 45.266766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.027626, 33.877762, 45.658268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.403534, 33.802216, 45.772228>,  <33.629078, 33.756889, 45.840603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.403534, 33.802216, 45.772228>,  <33.027626, 33.877762, 45.658268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.403534, 33.802216, 45.772228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242173, 0.220330, 0.944885,
		-0.241230, -0.956966, 0.161320,
		0.939766, -0.188867, 0.284902,
		33.685463, 33.745556, 45.857700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.946522, 33.698231, 46.346638>,  <33.027626, 33.877762, 45.658268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.946522, 33.698231, 46.346638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.330879, 33.805210, 46.317902>,  <33.561493, 33.869396, 46.300659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.330879, 33.805210, 46.317902>,  <32.946522, 33.698231, 46.346638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.330879, 33.805210, 46.317902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041427, 0.395321, 0.917608,
		0.273809, -0.878746, 0.390940,
		0.960891, 0.267445, -0.071839,
		33.619148, 33.885445, 46.296349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.125561, 33.698101, 47.069164>,  <32.946522, 33.698231, 46.346638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.125561, 33.698101, 47.069164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.433735, 33.880829, 46.891289>,  <33.618641, 33.990463, 46.784565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.433735, 33.880829, 46.891289>,  <33.125561, 33.698101, 47.069164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.433735, 33.880829, 46.891289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137197, 0.562380, 0.815418,
		0.622581, -0.689236, 0.370603,
		0.770435, 0.456818, -0.444688,
		33.664867, 34.017876, 46.757881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.681641, 33.644390, 47.576492>,  <33.125561, 33.698101, 47.069164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.681641, 33.644390, 47.576492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.760887, 33.957760, 47.340866>,  <33.808434, 34.145782, 47.199493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.760887, 33.957760, 47.340866>,  <33.681641, 33.644390, 47.576492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.760887, 33.957760, 47.340866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113703, 0.578547, 0.807685,
		0.973562, -0.226991, 0.025539,
		0.198113, 0.783427, -0.589061,
		33.820320, 34.192787, 47.164146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.284035, 34.041401, 47.885540>,  <33.681641, 33.644390, 47.576492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.284035, 34.041401, 47.885540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.084217, 34.305332, 47.661011>,  <33.964325, 34.463692, 47.526295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.084217, 34.305332, 47.661011>,  <34.284035, 34.041401, 47.885540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.084217, 34.305332, 47.661011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034553, 0.662622, 0.748156,
		0.865598, 0.354343, -0.353810,
		-0.499546, 0.659828, -0.561321,
		33.934353, 34.503281, 47.492615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.621307, 34.676121, 48.058144>,  <34.284035, 34.041401, 47.885540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.621307, 34.676121, 48.058144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.270294, 34.763981, 47.887642>,  <34.059685, 34.816696, 47.785339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.270294, 34.763981, 47.887642>,  <34.621307, 34.676121, 48.058144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.270294, 34.763981, 47.887642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099308, 0.786403, 0.609680,
		0.469122, 0.577344, -0.668281,
		-0.877532, 0.219648, -0.426253,
		34.007034, 34.829876, 47.759766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.672653, 35.388317, 47.783428>,  <34.621307, 34.676121, 48.058144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.672653, 35.388317, 47.783428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.298313, 35.271801, 47.862770>,  <34.073711, 35.201893, 47.910374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.298313, 35.271801, 47.862770>,  <34.672653, 35.388317, 47.783428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.298313, 35.271801, 47.862770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128795, 0.806616, 0.576873,
		-0.328032, 0.514317, -0.792385,
		-0.935846, -0.291288, 0.198355,
		34.017559, 35.184414, 47.922276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.234634, 35.937374, 47.505585>,  <34.672653, 35.388317, 47.783428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.234634, 35.937374, 47.505585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.994621, 35.773506, 47.780434>,  <33.850613, 35.675186, 47.945343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.994621, 35.773506, 47.780434>,  <34.234634, 35.937374, 47.505585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.994621, 35.773506, 47.780434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145707, 0.900526, 0.409661,
		-0.786594, 0.145692, -0.600037,
		-0.600033, -0.409667, 0.687120,
		33.814610, 35.650608, 47.986568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.667625, 36.438416, 47.622005>,  <34.234634, 35.937374, 47.505585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.667625, 36.438416, 47.622005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.681988, 36.208836, 47.949245>,  <33.690605, 36.071087, 48.145592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.681988, 36.208836, 47.949245>,  <33.667625, 36.438416, 47.622005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.681988, 36.208836, 47.949245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188098, 0.800119, 0.569586,
		-0.981494, -0.174337, -0.079227,
		0.035909, -0.573947, 0.818105,
		33.692760, 36.036652, 48.194675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.221119, 36.743053, 47.952686>,  <33.667625, 36.438416, 47.622005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.221119, 36.743053, 47.952686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.415527, 36.530861, 48.230499>,  <33.532173, 36.403545, 48.397186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.415527, 36.530861, 48.230499>,  <33.221119, 36.743053, 47.952686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.415527, 36.530861, 48.230499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165545, 0.724438, 0.669167,
		-0.858128, -0.440202, 0.264271,
		0.486017, -0.530482, 0.694534,
		33.561333, 36.371716, 48.438858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.727375, 36.654846, 48.559219>,  <33.221119, 36.743053, 47.952686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.727375, 36.654846, 48.559219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.101460, 36.570427, 48.672947>,  <33.325909, 36.519775, 48.741184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.101460, 36.570427, 48.672947>,  <32.727375, 36.654846, 48.559219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.101460, 36.570427, 48.672947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070113, 0.676681, 0.732930,
		-0.347077, -0.705379, 0.618043,
		0.935212, -0.211050, 0.284317,
		33.382023, 36.507111, 48.758244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.676960, 36.602642, 49.382500>,  <32.727375, 36.654846, 48.559219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.676960, 36.602642, 49.382500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.067314, 36.627274, 49.298733>,  <33.301525, 36.642052, 49.248470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.067314, 36.627274, 49.298733>,  <32.676960, 36.602642, 49.382500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.067314, 36.627274, 49.298733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147575, 0.520796, 0.840829,
		0.160842, -0.851458, 0.499149,
		0.975885, 0.061579, -0.209420,
		33.360081, 36.645748, 49.235909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.031898, 36.430092, 50.017700>,  <32.676960, 36.602642, 49.382500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.031898, 36.430092, 50.017700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.265205, 36.677868, 49.807522>,  <33.405190, 36.826534, 49.681416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.265205, 36.677868, 49.807522>,  <33.031898, 36.430092, 50.017700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.265205, 36.677868, 49.807522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238534, 0.487742, 0.839767,
		0.776466, -0.615147, 0.136728,
		0.583268, 0.619436, -0.525449,
		33.440186, 36.863697, 49.649887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.709705, 36.433224, 50.367809>,  <33.031898, 36.430092, 50.017700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.709705, 36.433224, 50.367809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.697887, 36.749275, 50.122917>,  <33.690796, 36.938908, 49.975983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.697887, 36.749275, 50.122917>,  <33.709705, 36.433224, 50.367809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.697887, 36.749275, 50.122917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619662, 0.495079, 0.609028,
		0.784312, -0.361380, -0.504241,
		-0.029549, 0.790127, -0.612230,
		33.689022, 36.986313, 49.939247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.426697, 36.672405, 50.401218>,  <33.709705, 36.433224, 50.367809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.426697, 36.672405, 50.401218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.187550, 36.954536, 50.248863>,  <34.044064, 37.123814, 50.157452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.187550, 36.954536, 50.248863>,  <34.426697, 36.672405, 50.401218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.187550, 36.954536, 50.248863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492304, 0.698070, 0.519937,
		0.632609, 0.123341, -0.764586,
		-0.597865, 0.705326, -0.380884,
		34.008190, 37.166134, 50.134598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.921368, 37.131104, 50.336361>,  <34.426697, 36.672405, 50.401218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.921368, 37.131104, 50.336361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.584259, 37.346012, 50.323288>,  <34.381992, 37.474957, 50.315445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.584259, 37.346012, 50.323288>,  <34.921368, 37.131104, 50.336361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.584259, 37.346012, 50.323288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421692, 0.696767, 0.580251,
		0.334528, 0.475237, -0.813781,
		-0.842773, 0.537276, -0.032685,
		34.331429, 37.507195, 50.313484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.101616, 37.737949, 50.605961>,  <34.921368, 37.131104, 50.336361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.101616, 37.737949, 50.605961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.717323, 37.842922, 50.569920>,  <34.486748, 37.905907, 50.548294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.717323, 37.842922, 50.569920>,  <35.101616, 37.737949, 50.605961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.717323, 37.842922, 50.569920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199217, 0.878452, 0.434321,
		0.193133, 0.399317, -0.896240,
		-0.960735, 0.262428, -0.090107,
		34.429104, 37.921650, 50.542889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.129185, 38.414051, 51.003109>,  <35.101616, 37.737949, 50.605961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.129185, 38.414051, 51.003109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.330948, 38.719383, 50.841663>,  <35.452007, 38.902580, 50.744797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.330948, 38.719383, 50.841663>,  <35.129185, 38.414051, 51.003109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.330948, 38.719383, 50.841663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101021, -0.516394, -0.850372,
		-0.857535, 0.388161, -0.337586,
		0.504409, 0.763327, -0.403613,
		35.482269, 38.948380, 50.720581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.802105, 38.472141, 50.307526>,  <35.129185, 38.414051, 51.003109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.802105, 38.472141, 50.307526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.155773, 38.658867, 50.300293>,  <35.367973, 38.770901, 50.295952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.155773, 38.658867, 50.300293>,  <34.802105, 38.472141, 50.307526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.155773, 38.658867, 50.300293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166127, -0.350361, -0.921764,
		-0.436627, 0.811993, -0.387329,
		0.884171, 0.466813, -0.018082,
		35.421024, 38.798912, 50.294868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.878853, 38.689594, 49.631710>,  <34.802105, 38.472141, 50.307526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.878853, 38.689594, 49.631710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.248951, 38.673996, 49.782654>,  <35.471012, 38.664639, 49.873219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.248951, 38.673996, 49.782654>,  <34.878853, 38.689594, 49.631710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.248951, 38.673996, 49.782654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335383, -0.380822, -0.861681,
		0.177303, 0.923826, -0.339277,
		0.925247, -0.038991, 0.377356,
		35.526524, 38.662300, 49.895859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.204922, 38.627552, 49.040489>,  <34.878853, 38.689594, 49.631710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.204922, 38.627552, 49.040489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.490780, 38.530685, 49.302979>,  <35.662296, 38.472565, 49.460472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.490780, 38.530685, 49.302979>,  <35.204922, 38.627552, 49.040489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.490780, 38.530685, 49.302979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352608, -0.685517, -0.636972,
		0.604108, 0.686602, -0.404514,
		0.714648, -0.242166, 0.656228,
		35.705173, 38.458035, 49.499847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.815201, 38.665833, 48.648930>,  <35.204922, 38.627552, 49.040489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.815201, 38.665833, 48.648930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.877766, 38.427380, 48.963932>,  <35.915302, 38.284306, 49.152931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.877766, 38.427380, 48.963932>,  <35.815201, 38.665833, 48.648930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.877766, 38.427380, 48.963932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352656, -0.711053, -0.608307,
		0.922589, 0.372862, 0.099015,
		0.156409, -0.596135, 0.787502,
		35.924690, 38.248539, 49.200184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.494511, 38.499149, 48.645290>,  <35.815201, 38.665833, 48.648930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.494511, 38.499149, 48.645290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.320335, 38.209557, 48.859299>,  <36.215832, 38.035801, 48.987705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.320335, 38.209557, 48.859299>,  <36.494511, 38.499149, 48.645290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.320335, 38.209557, 48.859299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355494, -0.684306, -0.636670,
		0.827055, -0.087033, 0.555343,
		-0.435435, -0.723982, 0.535019,
		36.189705, 37.992363, 49.019806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.002785, 37.973705, 48.742985>,  <36.494511, 38.499149, 48.645290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.002785, 37.973705, 48.742985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.653877, 37.793976, 48.820198>,  <36.444534, 37.686138, 48.866528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.653877, 37.793976, 48.820198>,  <37.002785, 37.973705, 48.742985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.653877, 37.793976, 48.820198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316024, -0.819141, -0.478682,
		0.373207, -0.356533, 0.856505,
		-0.872265, -0.449323, 0.193036,
		36.392197, 37.659180, 48.878109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.157669, 37.242764, 48.661442>,  <37.002785, 37.973705, 48.742985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.157669, 37.242764, 48.661442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.758335, 37.225105, 48.676338>,  <36.518734, 37.214508, 48.685276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.758335, 37.225105, 48.676338>,  <37.157669, 37.242764, 48.661442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.758335, 37.225105, 48.676338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000357, -0.649508, -0.760355,
		0.057760, -0.759072, 0.648439,
		-0.998330, -0.044150, 0.037245,
		36.458836, 37.211861, 48.687511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.019730, 36.529793, 48.747494>,  <37.157669, 37.242764, 48.661442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.019730, 36.529793, 48.747494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.706211, 36.719204, 48.586773>,  <36.518101, 36.832851, 48.490341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.706211, 36.719204, 48.586773>,  <37.019730, 36.529793, 48.747494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.706211, 36.719204, 48.586773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092245, -0.728590, -0.678710,
		-0.614133, -0.494904, 0.614744,
		-0.783793, 0.473525, -0.401799,
		36.471073, 36.861263, 48.466232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.566387, 35.992153, 48.628227>,  <37.019730, 36.529793, 48.747494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.566387, 35.992153, 48.628227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.437206, 36.289112, 48.393433>,  <36.359695, 36.467285, 48.252556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.437206, 36.289112, 48.393433>,  <36.566387, 35.992153, 48.628227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.437206, 36.289112, 48.393433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082646, -0.639972, -0.763941,
		-0.942798, -0.198208, 0.268039,
		-0.322957, 0.742394, -0.586983,
		36.340321, 36.511829, 48.217339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.036022, 35.679771, 48.144516>,  <36.566387, 35.992153, 48.628227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.036022, 35.679771, 48.144516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.087856, 36.031513, 47.961235>,  <36.118958, 36.242558, 47.851269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.087856, 36.031513, 47.961235>,  <36.036022, 35.679771, 48.144516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.087856, 36.031513, 47.961235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142050, -0.440866, -0.886261,
		-0.981341, 0.179930, 0.067784,
		0.129582, 0.879353, -0.458199,
		36.126732, 36.295319, 47.823776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.469799, 35.870827, 47.665627>,  <36.036022, 35.679771, 48.144516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.469799, 35.870827, 47.665627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.800625, 36.061493, 47.546459>,  <35.999119, 36.175892, 47.474960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.800625, 36.061493, 47.546459>,  <35.469799, 35.870827, 47.665627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.800625, 36.061493, 47.546459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166657, -0.298234, -0.939831,
		-0.536835, 0.826950, -0.167219,
		0.827063, 0.476666, -0.297919,
		36.048744, 36.204494, 47.457085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.301216, 36.233315, 46.932365>,  <35.469799, 35.870827, 47.665627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.301216, 36.233315, 46.932365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.699520, 36.208904, 46.959904>,  <35.938503, 36.194260, 46.976425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.699520, 36.208904, 46.959904>,  <35.301216, 36.233315, 46.932365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.699520, 36.208904, 46.959904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047987, -0.293931, -0.954621,
		0.078492, 0.953876, -0.289756,
		0.995759, -0.061026, 0.068845,
		35.998249, 36.190598, 46.980556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.708523, 36.618580, 46.363010>,  <35.301216, 36.233315, 46.932365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.708523, 36.618580, 46.363010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.971279, 36.348343, 46.496918>,  <36.128933, 36.186203, 46.577263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.971279, 36.348343, 46.496918>,  <35.708523, 36.618580, 46.363010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.971279, 36.348343, 46.496918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101475, -0.360746, -0.927127,
		0.747124, 0.642994, -0.168416,
		0.656893, -0.675589, 0.334770,
		36.168346, 36.145668, 46.597347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.325546, 36.611980, 45.902054>,  <35.708523, 36.618580, 46.363010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.325546, 36.611980, 45.902054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.353168, 36.263363, 46.096226>,  <36.369743, 36.054192, 46.212727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.353168, 36.263363, 46.096226>,  <36.325546, 36.611980, 45.902054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.353168, 36.263363, 46.096226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076576, -0.489783, -0.868475,
		0.994670, 0.022802, -0.100562,
		0.069056, -0.871546, 0.485426,
		36.373886, 36.001900, 46.241852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.921780, 36.238674, 45.571697>,  <36.325546, 36.611980, 45.902054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.921780, 36.238674, 45.571697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.690170, 35.953480, 45.729877>,  <36.551205, 35.782364, 45.824783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.690170, 35.953480, 45.729877>,  <36.921780, 36.238674, 45.571697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.690170, 35.953480, 45.729877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122799, -0.555759, -0.822224,
		0.806010, -0.427527, 0.409352,
		-0.579024, -0.712989, 0.395448,
		36.516464, 35.739582, 45.848511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.322720, 35.696369, 45.328869>,  <36.921780, 36.238674, 45.571697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.322720, 35.696369, 45.328869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.977657, 35.547848, 45.466251>,  <36.770618, 35.458736, 45.548679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.977657, 35.547848, 45.466251>,  <37.322720, 35.696369, 45.328869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.977657, 35.547848, 45.466251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107695, -0.528636, -0.841989,
		0.494193, -0.763335, 0.416044,
		-0.862656, -0.371299, 0.343455,
		36.718861, 35.436459, 45.569286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.375851, 34.929138, 45.376560>,  <37.322720, 35.696369, 45.328869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.375851, 34.929138, 45.376560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.988804, 35.024681, 45.343899>,  <36.756577, 35.082008, 45.324303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.988804, 35.024681, 45.343899>,  <37.375851, 34.929138, 45.376560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.988804, 35.024681, 45.343899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095380, -0.645460, -0.757815,
		-0.233716, -0.725485, 0.647339,
		-0.967616, 0.238857, -0.081657,
		36.698521, 35.096336, 45.319401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.052746, 34.286037, 45.317730>,  <37.375851, 34.929138, 45.376560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.052746, 34.286037, 45.317730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.786972, 34.553219, 45.183643>,  <36.627510, 34.713528, 45.103191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.786972, 34.553219, 45.183643>,  <37.052746, 34.286037, 45.317730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.786972, 34.553219, 45.183643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164925, -0.568531, -0.805960,
		-0.728924, -0.480220, 0.487912,
		-0.664432, 0.667953, -0.335216,
		36.587643, 34.753605, 45.083080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.386105, 33.864090, 45.257553>,  <37.052746, 34.286037, 45.317730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.386105, 33.864090, 45.257553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.393383, 34.191780, 45.028278>,  <36.397751, 34.388393, 44.890713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.393383, 34.191780, 45.028278>,  <36.386105, 33.864090, 45.257553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.393383, 34.191780, 45.028278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182605, -0.560916, -0.807483,
		-0.983018, 0.119361, 0.139386,
		0.018198, 0.819223, -0.573187,
		36.398842, 34.437546, 44.856323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.832912, 33.802704, 44.848194>,  <36.386105, 33.864090, 45.257553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.832912, 33.802704, 44.848194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.042786, 34.086487, 44.659992>,  <36.168709, 34.256756, 44.547070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.042786, 34.086487, 44.659992>,  <35.832912, 33.802704, 44.848194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.042786, 34.086487, 44.659992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114835, -0.488656, -0.864886,
		-0.843518, 0.507820, -0.174918,
		0.524682, 0.709460, -0.470506,
		36.200191, 34.299324, 44.518841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.487442, 34.086452, 44.161671>,  <35.832912, 33.802704, 44.848194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.487442, 34.086452, 44.161671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.882347, 34.149353, 44.151962>,  <36.119289, 34.187092, 44.146137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.882347, 34.149353, 44.151962>,  <35.487442, 34.086452, 44.161671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.882347, 34.149353, 44.151962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040041, -0.393166, -0.918595,
		-0.153992, 0.905921, -0.394454,
		0.987261, 0.157251, -0.024270,
		36.178524, 34.196529, 44.144680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.567745, 34.142406, 43.495403>,  <35.487442, 34.086452, 44.161671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.567745, 34.142406, 43.495403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.956268, 34.118164, 43.587399>,  <36.189381, 34.103619, 43.642597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.956268, 34.118164, 43.587399>,  <35.567745, 34.142406, 43.495403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.956268, 34.118164, 43.587399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194675, -0.352953, -0.915165,
		0.136643, 0.933676, -0.331025,
		0.971304, -0.060608, 0.229992,
		36.247658, 34.099983, 43.656395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.915737, 34.496365, 42.950333>,  <35.567745, 34.142406, 43.495403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.915737, 34.496365, 42.950333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.182011, 34.232937, 43.090702>,  <36.341774, 34.074879, 43.174923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.182011, 34.232937, 43.090702>,  <35.915737, 34.496365, 42.950333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.182011, 34.232937, 43.090702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272280, -0.223485, -0.935905,
		0.694784, 0.718569, 0.030544,
		0.665686, -0.658569, 0.350926,
		36.381718, 34.035366, 43.195980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.462776, 34.503044, 42.436615>,  <35.915737, 34.496365, 42.950333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.462776, 34.503044, 42.436615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.568058, 34.196419, 42.670914>,  <36.631226, 34.012444, 42.811493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.568058, 34.196419, 42.670914>,  <36.462776, 34.503044, 42.436615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.568058, 34.196419, 42.670914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414082, -0.458619, -0.786260,
		0.871355, 0.449493, 0.196712,
		0.263203, -0.766567, 0.585747,
		36.647018, 33.966450, 42.846638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.266735, 34.477287, 42.411709>,  <36.462776, 34.503044, 42.436615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.266735, 34.477287, 42.411709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.092789, 34.129486, 42.505402>,  <36.988422, 33.920807, 42.561619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.092789, 34.129486, 42.505402>,  <37.266735, 34.477287, 42.411709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.092789, 34.129486, 42.505402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597743, -0.473268, -0.647086,
		0.673497, -0.141381, 0.725543,
		-0.434862, -0.869499, 0.234236,
		36.962330, 33.868637, 42.575672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.842846, 34.059677, 42.682964>,  <37.266735, 34.477287, 42.411709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.842846, 34.059677, 42.682964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.552399, 33.816620, 42.554264>,  <37.378128, 33.670788, 42.477043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.552399, 33.816620, 42.554264>,  <37.842846, 34.059677, 42.682964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.552399, 33.816620, 42.554264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644221, -0.437730, -0.627194,
		0.240268, -0.662696, 0.709299,
		-0.726121, -0.607639, -0.321750,
		37.334564, 33.634327, 42.457741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.118191, 33.411678, 42.592854>,  <37.842846, 34.059677, 42.682964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.118191, 33.411678, 42.592854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.775951, 33.364151, 42.391327>,  <37.570606, 33.335632, 42.270412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.775951, 33.364151, 42.391327>,  <38.118191, 33.411678, 42.592854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.775951, 33.364151, 42.391327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515494, -0.284100, -0.808426,
		-0.047075, -0.951403, 0.304329,
		-0.855599, -0.118823, -0.503817,
		37.519272, 33.328503, 42.240181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.153805, 32.763592, 42.233475>,  <38.118191, 33.411678, 42.592854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.153805, 32.763592, 42.233475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.863903, 32.938465, 42.020458>,  <37.689960, 33.043388, 41.892647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.863903, 32.938465, 42.020458>,  <38.153805, 32.763592, 42.233475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.863903, 32.938465, 42.020458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502703, -0.193047, -0.842628,
		-0.471191, -0.878408, -0.079864,
		-0.724754, 0.437187, -0.532540,
		37.646477, 33.069622, 41.860695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.980007, 32.250233, 41.785599>,  <38.153805, 32.763592, 42.233475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.980007, 32.250233, 41.785599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.825382, 32.576584, 41.613590>,  <37.732609, 32.772392, 41.510387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.825382, 32.576584, 41.613590>,  <37.980007, 32.250233, 41.785599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.825382, 32.576584, 41.613590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501138, -0.205604, -0.840588,
		-0.774229, -0.540438, -0.329387,
		-0.386562, 0.815876, -0.430018,
		37.709412, 32.821346, 41.484585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.562675, 32.086571, 41.143375>,  <37.980007, 32.250233, 41.785599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.562675, 32.086571, 41.143375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.691265, 32.465057, 41.128761>,  <37.768417, 32.692150, 41.119995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.691265, 32.465057, 41.128761>,  <37.562675, 32.086571, 41.143375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.691265, 32.465057, 41.128761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414046, -0.175160, -0.893244,
		-0.851598, 0.272029, -0.448085,
		0.321474, 0.946213, -0.036533,
		37.787708, 32.748920, 41.117802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.430534, 32.253403, 40.438034>,  <37.562675, 32.086571, 41.143375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.430534, 32.253403, 40.438034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.696636, 32.513405, 40.584969>,  <37.856297, 32.669407, 40.673130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.696636, 32.513405, 40.584969>,  <37.430534, 32.253403, 40.438034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.696636, 32.513405, 40.584969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433404, 0.064427, -0.898894,
		-0.607950, 0.757196, -0.238854,
		0.665251, 0.650002, 0.367340,
		37.896210, 32.708405, 40.695171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.452389, 32.923660, 39.964100>,  <37.430534, 32.253403, 40.438034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.452389, 32.923660, 39.964100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.806412, 32.919674, 40.150249>,  <38.018826, 32.917282, 40.261940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.806412, 32.919674, 40.150249>,  <37.452389, 32.923660, 39.964100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.806412, 32.919674, 40.150249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457919, 0.198149, -0.866630,
		-0.083574, 0.980121, 0.179939,
		0.885057, -0.009970, 0.465376,
		38.071930, 32.916683, 40.289864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.932945, 33.337547, 39.486191>,  <37.452389, 32.923660, 39.964100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.932945, 33.337547, 39.486191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.202507, 33.205593, 39.750626>,  <38.364243, 33.126419, 39.909286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.202507, 33.205593, 39.750626>,  <37.932945, 33.337547, 39.486191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.202507, 33.205593, 39.750626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.728758, 0.149607, -0.668229,
		0.121535, 0.932091, 0.341226,
		0.673900, -0.329884, 0.661086,
		38.404678, 33.106628, 39.948952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.359211, 33.823204, 39.603493>,  <37.932945, 33.337547, 39.486191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.359211, 33.823204, 39.603493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.558514, 33.488750, 39.695244>,  <38.678097, 33.288078, 39.750294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.558514, 33.488750, 39.695244>,  <38.359211, 33.823204, 39.603493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.558514, 33.488750, 39.695244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.684771, 0.217227, -0.695630,
		0.531813, 0.503677, 0.680797,
		0.498260, -0.836135, 0.229379,
		38.707993, 33.237911, 39.764057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.072884, 34.011002, 39.767899>,  <38.359211, 33.823204, 39.603493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.072884, 34.011002, 39.767899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.093624, 33.619656, 39.687786>,  <39.106068, 33.384850, 39.639721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.093624, 33.619656, 39.687786>,  <39.072884, 34.011002, 39.767899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.093624, 33.619656, 39.687786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.726435, 0.174565, -0.664696,
		0.685277, -0.111025, 0.719770,
		0.051849, -0.978366, -0.200278,
		39.109180, 33.326145, 39.627701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.801094, 33.895367, 39.830231>,  <39.072884, 34.011002, 39.767899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.801094, 33.895367, 39.830231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.654438, 33.596592, 39.608364>,  <39.566444, 33.417328, 39.475243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.654438, 33.596592, 39.608364>,  <39.801094, 33.895367, 39.830231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.654438, 33.596592, 39.608364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.781477, 0.076257, -0.619256,
		0.504845, -0.660504, 0.555757,
		-0.366641, -0.746940, -0.554667,
		39.544445, 33.372509, 39.441963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.385780, 33.306873, 39.720722>,  <39.801094, 33.895367, 39.830231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.385780, 33.306873, 39.720722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.115223, 33.269997, 39.428421>,  <39.952888, 33.247871, 39.253040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.115223, 33.269997, 39.428421>,  <40.385780, 33.306873, 39.720722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.115223, 33.269997, 39.428421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.736115, -0.050824, -0.674945,
		0.025083, -0.994444, 0.102239,
		-0.676392, -0.092189, -0.730750,
		39.912304, 33.242340, 39.209194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.614899, 32.674412, 39.421062>,  <40.385780, 33.306873, 39.720722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.614899, 32.674412, 39.421062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.358337, 32.820385, 39.151123>,  <40.204399, 32.907970, 38.989159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.358337, 32.820385, 39.151123>,  <40.614899, 32.674412, 39.421062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.358337, 32.820385, 39.151123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.705133, -0.066181, -0.705980,
		-0.302299, -0.928677, -0.214879,
		-0.641407, 0.364936, -0.674847,
		40.165916, 32.929867, 38.948669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.870083, 32.395535, 38.847603>,  <40.614899, 32.674412, 39.421062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.870083, 32.395535, 38.847603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.627758, 32.675842, 38.696918>,  <40.482365, 32.844028, 38.606506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.627758, 32.675842, 38.696918>,  <40.870083, 32.395535, 38.847603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.627758, 32.675842, 38.696918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618565, 0.117073, -0.776962,
		-0.500367, -0.703717, -0.504395,
		-0.605813, 0.700768, -0.376715,
		40.446014, 32.886074, 38.583904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.735821, 32.221130, 38.082939>,  <40.870083, 32.395535, 38.847603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.735821, 32.221130, 38.082939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.753815, 32.616970, 38.137604>,  <40.764610, 32.854473, 38.170403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.753815, 32.616970, 38.137604>,  <40.735821, 32.221130, 38.082939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.753815, 32.616970, 38.137604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.828871, 0.039390, -0.558052,
		-0.557629, 0.138375, -0.818475,
		0.044980, 0.989596, 0.136660,
		40.767307, 32.913849, 38.178600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.836098, 32.591343, 37.473206>,  <40.735821, 32.221130, 38.082939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.836098, 32.591343, 37.473206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.992683, 32.782013, 37.788048>,  <41.086636, 32.896416, 37.976955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.992683, 32.782013, 37.788048>,  <40.836098, 32.591343, 37.473206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.992683, 32.782013, 37.788048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.885783, 0.036527, -0.462660,
		-0.249287, 0.878322, -0.407929,
		0.391464, 0.476672, 0.787109,
		41.110123, 32.925014, 38.024181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.046928, 33.258373, 37.278362>,  <40.836098, 32.591343, 37.473206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.046928, 33.258373, 37.278362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.287914, 33.137791, 37.573971>,  <41.432507, 33.065441, 37.751335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.287914, 33.137791, 37.573971>,  <41.046928, 33.258373, 37.278362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.287914, 33.137791, 37.573971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.796642, 0.283881, -0.533642,
		-0.048927, 0.910240, 0.411180,
		0.602468, -0.301453, 0.739025,
		41.468655, 33.047356, 37.795677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.568546, 33.649521, 37.073368>,  <41.046928, 33.258373, 37.278362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.568546, 33.649521, 37.073368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.737400, 33.399086, 37.335609>,  <41.838711, 33.248825, 37.492954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.737400, 33.399086, 37.335609>,  <41.568546, 33.649521, 37.073368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.737400, 33.399086, 37.335609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.882902, 0.119896, -0.453992,
		0.205634, 0.770480, 0.603386,
		0.422135, -0.626087, 0.655604,
		41.864040, 33.211258, 37.532291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.181812, 33.985134, 37.157574>,  <41.568546, 33.649521, 37.073368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.181812, 33.985134, 37.157574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.197037, 33.594234, 37.241028>,  <42.206173, 33.359695, 37.291100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.197037, 33.594234, 37.241028>,  <42.181812, 33.985134, 37.157574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.197037, 33.594234, 37.241028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.845095, -0.079937, -0.528607,
		0.533260, 0.196441, 0.822828,
		0.038066, -0.977252, 0.208638,
		42.208458, 33.301060, 37.303619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.765854, 33.749847, 37.326664>,  <42.181812, 33.985134, 37.157574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.765854, 33.749847, 37.326664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.641785, 33.393009, 37.195244>,  <42.567341, 33.178905, 37.116390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.641785, 33.393009, 37.195244>,  <42.765854, 33.749847, 37.326664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.641785, 33.393009, 37.195244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.893266, -0.155205, -0.421884,
		0.325370, -0.424345, 0.845024,
		-0.310176, -0.892100, -0.328554,
		42.548733, 33.125378, 37.096676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.912418, 33.778759, 36.582756>,  <42.765854, 33.749847, 37.326664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.912418, 33.778759, 36.582756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.172775, 33.481155, 36.522369>,  <43.328991, 33.302593, 36.486137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.172775, 33.481155, 36.522369>,  <42.912418, 33.778759, 36.582756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.172775, 33.481155, 36.522369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353847, -0.121380, -0.927394,
		0.671663, 0.657054, -0.342270,
		0.650892, -0.744008, -0.150970,
		43.368042, 33.257954, 36.477077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.047054, 33.665672, 35.865707>,  <42.912418, 33.778759, 36.582756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.047054, 33.665672, 35.865707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.130219, 33.307705, 36.023640>,  <43.180119, 33.092926, 36.118401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.130219, 33.307705, 36.023640>,  <43.047054, 33.665672, 35.865707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.130219, 33.307705, 36.023640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446433, -0.445978, -0.775758,
		0.870328, -0.014979, -0.492245,
		0.207910, -0.894919, 0.394834,
		43.192593, 33.039230, 36.142090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.043736, 33.186840, 35.360340>,  <43.047054, 33.665672, 35.865707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.043736, 33.186840, 35.360340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.038052, 32.915264, 35.653961>,  <43.034641, 32.752319, 35.830135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.038052, 32.915264, 35.653961>,  <43.043736, 33.186840, 35.360340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.038052, 32.915264, 35.653961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474159, -0.641763, -0.602755,
		0.880325, -0.356622, -0.312809,
		-0.014207, -0.678941, 0.734055,
		43.033791, 32.711582, 35.874176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.335976, 32.599758, 35.046913>,  <43.043736, 33.186840, 35.360340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.335976, 32.599758, 35.046913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.139465, 32.460754, 35.366383>,  <43.021561, 32.377354, 35.558064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.139465, 32.460754, 35.366383>,  <43.335976, 32.599758, 35.046913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.139465, 32.460754, 35.366383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366891, -0.749081, -0.551606,
		0.789961, -0.564018, 0.240509,
		-0.491276, -0.347507, 0.798678,
		42.992081, 32.356503, 35.605988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.523823, 31.915764, 35.075035>,  <43.335976, 32.599758, 35.046913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.523823, 31.915764, 35.075035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.195343, 31.975861, 35.295235>,  <42.998253, 32.011917, 35.427357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.195343, 31.975861, 35.295235>,  <43.523823, 31.915764, 35.075035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.195343, 31.975861, 35.295235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502240, -0.648264, -0.572284,
		0.270891, -0.746446, 0.607813,
		-0.821202, 0.150242, 0.550503,
		42.948982, 32.020931, 35.460384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.164917, 31.246851, 35.248569>,  <43.523823, 31.915764, 35.075035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.164917, 31.246851, 35.248569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.879913, 31.526386, 35.273724>,  <42.708912, 31.694107, 35.288818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.879913, 31.526386, 35.273724>,  <43.164917, 31.246851, 35.248569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.879913, 31.526386, 35.273724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.604795, -0.566235, -0.560001,
		-0.355741, -0.437041, 0.826102,
		-0.712511, 0.698837, 0.062887,
		42.666161, 31.736038, 35.292591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.596626, 30.901926, 35.283314>,  <43.164917, 31.246851, 35.248569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.596626, 30.901926, 35.283314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.460342, 31.257061, 35.159595>,  <42.378571, 31.470142, 35.085365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.460342, 31.257061, 35.159595>,  <42.596626, 30.901926, 35.283314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.460342, 31.257061, 35.159595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442407, -0.441682, -0.780508,
		-0.829574, -0.129093, 0.543270,
		-0.340711, 0.887836, -0.309296,
		42.358128, 31.523411, 35.066807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.877613, 30.779329, 35.255165>,  <42.596626, 30.901926, 35.283314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.877613, 30.779329, 35.255165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.919922, 31.103632, 35.024864>,  <41.945309, 31.298214, 34.886684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.919922, 31.103632, 35.024864>,  <41.877613, 30.779329, 35.255165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.919922, 31.103632, 35.024864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.595534, -0.412028, -0.689617,
		-0.796336, 0.415820, 0.439253,
		0.105772, 0.810757, -0.575748,
		41.951653, 31.346859, 34.852139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.173458, 30.975010, 35.068626>,  <41.877613, 30.779329, 35.255165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.173458, 30.975010, 35.068626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.368332, 31.191271, 34.794300>,  <41.485256, 31.321028, 34.629704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.368332, 31.191271, 34.794300>,  <41.173458, 30.975010, 35.068626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.368332, 31.191271, 34.794300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.693046, -0.238461, -0.680311,
		-0.531352, 0.806742, 0.258521,
		0.487188, 0.540652, -0.685816,
		41.514488, 31.353466, 34.588554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.662910, 31.382587, 34.801792>,  <41.173458, 30.975010, 35.068626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.662910, 31.382587, 34.801792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.958733, 31.349333, 34.534615>,  <41.136227, 31.329380, 34.374306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.958733, 31.349333, 34.534615>,  <40.662910, 31.382587, 34.801792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.958733, 31.349333, 34.534615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.665182, -0.242035, -0.706366,
		-0.102942, 0.966699, -0.234298,
		0.739552, -0.083136, -0.667946,
		41.180599, 31.324392, 34.334232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.530449, 31.713173, 34.228413>,  <40.662910, 31.382587, 34.801792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.530449, 31.713173, 34.228413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.797977, 31.458017, 34.075691>,  <40.958496, 31.304924, 33.984058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.797977, 31.458017, 34.075691>,  <40.530449, 31.713173, 34.228413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.797977, 31.458017, 34.075691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.596235, -0.153496, -0.787999,
		0.444049, 0.754677, -0.482993,
		0.668823, -0.637888, -0.381805,
		40.998623, 31.266651, 33.961151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.553112, 31.876932, 33.414646>,  <40.530449, 31.713173, 34.228413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.553112, 31.876932, 33.414646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.709251, 31.509956, 33.445446>,  <40.802937, 31.289770, 33.463924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.709251, 31.509956, 33.445446>,  <40.553112, 31.876932, 33.414646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.709251, 31.509956, 33.445446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509910, -0.285071, -0.811620,
		0.766564, 0.277553, -0.579090,
		0.390349, -0.917441, 0.076998,
		40.826355, 31.234724, 33.468544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.909775, 31.678698, 32.747986>,  <40.553112, 31.876932, 33.414646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.909775, 31.678698, 32.747986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.811230, 31.335957, 32.929142>,  <40.752102, 31.130312, 33.037834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.811230, 31.335957, 32.929142>,  <40.909775, 31.678698, 32.747986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.811230, 31.335957, 32.929142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503066, -0.286353, -0.815430,
		0.828390, -0.428725, -0.360506,
		-0.246364, -0.856853, 0.452889,
		40.737320, 31.078901, 33.065010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.017586, 31.122801, 32.205837>,  <40.909775, 31.678698, 32.747986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.017586, 31.122801, 32.205837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.811527, 30.917006, 32.480042>,  <40.687893, 30.793528, 32.644566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.811527, 30.917006, 32.480042>,  <41.017586, 31.122801, 32.205837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.811527, 30.917006, 32.480042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326019, -0.622061, -0.711865,
		0.792677, -0.590204, 0.152719,
		-0.515146, -0.514490, 0.685511,
		40.656982, 30.762659, 32.685696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.072578, 30.274763, 32.113979>,  <41.017586, 31.122801, 32.205837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.072578, 30.274763, 32.113979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.738148, 30.359243, 32.316509>,  <40.537487, 30.409931, 32.438026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.738148, 30.359243, 32.316509>,  <41.072578, 30.274763, 32.113979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.738148, 30.359243, 32.316509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537680, -0.498762, -0.679807,
		0.108961, -0.840614, 0.530562,
		-0.836079, 0.211200, 0.506327,
		40.487324, 30.422604, 32.468407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.645042, 29.688131, 32.100197>,  <41.072578, 30.274763, 32.113979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.645042, 29.688131, 32.100197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.373264, 29.952898, 32.226830>,  <40.210197, 30.111759, 32.302811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.373264, 29.952898, 32.226830>,  <40.645042, 29.688131, 32.100197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.373264, 29.952898, 32.226830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.716933, -0.507116, -0.478372,
		-0.156098, -0.551995, 0.819106,
		-0.679441, 0.661917, 0.316583,
		40.169434, 30.151474, 32.321804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.052101, 29.374254, 32.156353>,  <40.645042, 29.688131, 32.100197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.052101, 29.374254, 32.156353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.926792, 29.749107, 32.094841>,  <39.851608, 29.974018, 32.057934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.926792, 29.749107, 32.094841>,  <40.052101, 29.374254, 32.156353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.926792, 29.749107, 32.094841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.634815, -0.327081, -0.700020,
		-0.706310, -0.121670, 0.697369,
		-0.313268, 0.937131, -0.153782,
		39.832813, 30.030247, 32.048706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.361095, 29.279642, 32.211761>,  <40.052101, 29.374254, 32.156353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.361095, 29.279642, 32.211761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.425663, 29.617289, 32.007248>,  <39.464405, 29.819876, 31.884539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.425663, 29.617289, 32.007248>,  <39.361095, 29.279642, 32.211761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.425663, 29.617289, 32.007248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.703015, -0.265246, -0.659860,
		-0.692614, 0.465957, 0.550609,
		0.161420, 0.844114, -0.511287,
		39.474091, 29.870523, 31.853861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.733654, 29.424339, 31.956354>,  <39.361095, 29.279642, 32.211761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.733654, 29.424339, 31.956354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.958874, 29.658062, 31.722582>,  <39.094006, 29.798296, 31.582317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.958874, 29.658062, 31.722582>,  <38.733654, 29.424339, 31.956354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.958874, 29.658062, 31.722582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.580803, -0.223311, -0.782815,
		-0.587914, 0.780204, 0.213632,
		0.563050, 0.584306, -0.584433,
		39.127789, 29.833353, 31.547253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.197674, 29.849360, 31.625813>,  <38.733654, 29.424339, 31.956354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.197674, 29.849360, 31.625813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.529087, 29.875647, 31.403383>,  <38.727936, 29.891418, 31.269926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.529087, 29.875647, 31.403383>,  <38.197674, 29.849360, 31.625813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.529087, 29.875647, 31.403383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550158, -0.089295, -0.830273,
		-0.104218, 0.993835, -0.037829,
		0.828532, 0.065718, -0.556072,
		38.777645, 29.895361, 31.236561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.210571, 30.477215, 31.115576>,  <38.197674, 29.849360, 31.625813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.210571, 30.477215, 31.115576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.444603, 30.187239, 30.970167>,  <38.585022, 30.013252, 30.882921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.444603, 30.187239, 30.970167>,  <38.210571, 30.477215, 31.115576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.444603, 30.187239, 30.970167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553508, -0.029346, -0.832327,
		0.592719, 0.688186, -0.418430,
		0.585075, -0.724940, -0.363522,
		38.620125, 29.969757, 30.861111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.356361, 30.708166, 30.338472>,  <38.210571, 30.477215, 31.115576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.356361, 30.708166, 30.338472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.443306, 30.319439, 30.374971>,  <38.495472, 30.086203, 30.396872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.443306, 30.319439, 30.374971>,  <38.356361, 30.708166, 30.338472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.443306, 30.319439, 30.374971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.591601, -0.205519, -0.779596,
		0.776378, 0.115472, -0.619599,
		0.217361, -0.971817, 0.091248,
		38.508514, 30.027893, 30.402346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.003960, 31.358875, 30.464918>,  <38.356361, 30.708166, 30.338472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.003960, 31.358875, 30.464918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.240116, 31.612013, 30.264542>,  <38.381809, 31.763895, 30.144316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.240116, 31.612013, 30.264542>,  <38.003960, 31.358875, 30.464918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.240116, 31.612013, 30.264542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.753013, 0.655297, -0.059639,
		0.290524, 0.412426, 0.863424,
		0.590396, 0.632843, -0.500942,
		38.417236, 31.801867, 30.114260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.087452, 32.054775, 30.780430>,  <38.003960, 31.358875, 30.464918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.087452, 32.054775, 30.780430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.127556, 32.077862, 30.383116>,  <38.151619, 32.091713, 30.144728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.127556, 32.077862, 30.383116>,  <38.087452, 32.054775, 30.780430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.127556, 32.077862, 30.383116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.793131, 0.607404, -0.044760,
		0.600743, 0.792293, 0.106677,
		0.100259, 0.057720, -0.993285,
		38.157635, 32.095177, 30.085131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.977089, 32.741489, 30.583986>,  <38.087452, 32.054775, 30.780430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.977089, 32.741489, 30.583986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.913914, 32.496185, 30.274412>,  <37.876011, 32.349003, 30.088669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.913914, 32.496185, 30.274412>,  <37.977089, 32.741489, 30.583986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.913914, 32.496185, 30.274412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.907887, 0.398409, -0.130425,
		0.388326, 0.682044, -0.619692,
		-0.157936, -0.613258, -0.773932,
		37.866535, 32.312210, 30.042233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.550266, 33.361111, 30.528378>,  <37.977089, 32.741489, 30.583986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.550266, 33.361111, 30.528378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.671993, 33.665981, 30.756929>,  <37.745029, 33.848904, 30.894060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.671993, 33.665981, 30.756929>,  <37.550266, 33.361111, 30.528378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.671993, 33.665981, 30.756929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445372, 0.416386, -0.792633,
		-0.842041, 0.495691, -0.212737,
		0.304320, 0.762177, 0.571381,
		37.763290, 33.894634, 30.928343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.328354, 34.097649, 30.398472>,  <37.550266, 33.361111, 30.528378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.328354, 34.097649, 30.398472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.711437, 34.083584, 30.512703>,  <37.941288, 34.075146, 30.581242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.711437, 34.083584, 30.512703>,  <37.328354, 34.097649, 30.398472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.711437, 34.083584, 30.512703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276470, 0.387421, -0.879471,
		-0.079718, 0.921232, 0.380757,
		0.957710, -0.035158, 0.285577,
		37.998749, 34.073036, 30.598375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.770378, 34.820415, 30.355345>,  <37.328354, 34.097649, 30.398472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.770378, 34.820415, 30.355345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.979393, 34.487309, 30.282183>,  <38.104801, 34.287445, 30.238285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.979393, 34.487309, 30.282183>,  <37.770378, 34.820415, 30.355345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.979393, 34.487309, 30.282183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439127, 0.446743, -0.779480,
		0.730837, 0.326988, 0.599130,
		0.522537, -0.832766, -0.182907,
		38.136154, 34.237480, 30.227310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.243706, 34.907871, 30.912971>,  <37.770378, 34.820415, 30.355345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.243706, 34.907871, 30.912971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.114544, 35.262417, 30.780251>,  <38.037045, 35.475143, 30.700617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.114544, 35.262417, 30.780251>,  <38.243706, 34.907871, 30.912971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.114544, 35.262417, 30.780251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.758523, 0.452039, 0.469364,
		0.566015, -0.100120, -0.818293,
		-0.322907, 0.886361, -0.331804,
		38.017673, 35.528324, 30.680710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.721489, 35.321060, 30.495707>,  <38.243706, 34.907871, 30.912971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.721489, 35.321060, 30.495707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.501171, 35.568027, 30.720356>,  <38.368980, 35.716209, 30.855146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.501171, 35.568027, 30.720356>,  <38.721489, 35.321060, 30.495707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.501171, 35.568027, 30.720356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.833273, 0.368233, 0.412384,
		0.047805, 0.695124, -0.717298,
		-0.550791, 0.617419, 0.561625,
		38.335934, 35.753254, 30.888844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.025505, 35.990116, 30.579586>,  <38.721489, 35.321060, 30.495707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.025505, 35.990116, 30.579586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.805927, 35.930183, 30.908516>,  <38.674183, 35.894222, 31.105873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.805927, 35.930183, 30.908516>,  <39.025505, 35.990116, 30.579586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.805927, 35.930183, 30.908516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.818567, 0.102730, 0.565151,
		-0.169155, 0.983360, 0.066254,
		-0.548940, -0.149831, 0.822323,
		38.641247, 35.885235, 31.155212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.275154, 36.473988, 31.087706>,  <39.025505, 35.990116, 30.579586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.275154, 36.473988, 31.087706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.114147, 36.179619, 31.305477>,  <39.017544, 36.002998, 31.436140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.114147, 36.179619, 31.305477>,  <39.275154, 36.473988, 31.087706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.114147, 36.179619, 31.305477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.720254, 0.112460, 0.684534,
		-0.564987, 0.667666, 0.484780,
		-0.402521, -0.735918, 0.544428,
		38.993389, 35.958843, 31.468805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.109333, 36.770065, 31.619165>,  <39.275154, 36.473988, 31.087706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.109333, 36.770065, 31.619165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.189873, 36.385258, 31.692898>,  <39.238197, 36.154373, 31.737137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.189873, 36.385258, 31.692898>,  <39.109333, 36.770065, 31.619165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.189873, 36.385258, 31.692898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583665, 0.268962, 0.766156,
		-0.786635, -0.046679, 0.615652,
		0.201350, -0.962019, 0.184330,
		39.250278, 36.096653, 31.748198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.988056, 36.673153, 32.341644>,  <39.109333, 36.770065, 31.619165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.988056, 36.673153, 32.341644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.233665, 36.388088, 32.205948>,  <39.381031, 36.217049, 32.124531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.233665, 36.388088, 32.205948>,  <38.988056, 36.673153, 32.341644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.233665, 36.388088, 32.205948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.674079, 0.249898, 0.695103,
		-0.410598, -0.655487, 0.633835,
		0.614025, -0.712662, -0.339242,
		39.417873, 36.174290, 32.104176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.127411, 36.272499, 32.921204>,  <38.988056, 36.673153, 32.341644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.127411, 36.272499, 32.921204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.413269, 36.144119, 32.672600>,  <39.584782, 36.067089, 32.523438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.413269, 36.144119, 32.672600>,  <39.127411, 36.272499, 32.921204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.413269, 36.144119, 32.672600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.654832, -0.005425, 0.755755,
		-0.245933, -0.947080, 0.206294,
		0.714641, -0.320953, -0.621513,
		39.627663, 36.047832, 32.486145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.415882, 35.744968, 33.236164>,  <39.127411, 36.272499, 32.921204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.415882, 35.744968, 33.236164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.696136, 35.818798, 32.960472>,  <39.864288, 35.863094, 32.795055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.696136, 35.818798, 32.960472>,  <39.415882, 35.744968, 33.236164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.696136, 35.818798, 32.960472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.707415, -0.053599, 0.704764,
		0.093138, -0.981356, -0.168123,
		0.700636, 0.184573, -0.689234,
		39.906326, 35.874168, 32.753700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.925282, 35.240341, 33.305817>,  <39.415882, 35.744968, 33.236164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.925282, 35.240341, 33.305817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.109810, 35.538754, 33.113724>,  <40.220528, 35.717800, 32.998470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.109810, 35.538754, 33.113724>,  <39.925282, 35.240341, 33.305817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.109810, 35.538754, 33.113724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.776597, -0.077785, 0.625177,
		0.429048, -0.661349, -0.615252,
		0.461318, 0.746034, -0.480228,
		40.248207, 35.762566, 32.969654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.734467, 35.014721, 33.235306>,  <39.925282, 35.240341, 33.305817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.734467, 35.014721, 33.235306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.705311, 35.411533, 33.194210>,  <40.687817, 35.649620, 33.169552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.705311, 35.411533, 33.194210>,  <40.734467, 35.014721, 33.235306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.705311, 35.411533, 33.194210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.881802, 0.112227, 0.458072,
		0.465953, -0.057206, -0.882958,
		-0.072888, 0.992035, -0.102737,
		40.683445, 35.709145, 33.163387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.312359, 35.218552, 32.806400>,  <40.734467, 35.014721, 33.235306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.312359, 35.218552, 32.806400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.195694, 35.524693, 33.035896>,  <41.125694, 35.708378, 33.173592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.195694, 35.524693, 33.035896>,  <41.312359, 35.218552, 32.806400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.195694, 35.524693, 33.035896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.899449, 0.015350, 0.436756,
		0.325465, 0.643431, -0.692870,
		-0.291658, 0.765350, 0.573738,
		41.108196, 35.754299, 33.208019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.020401, 35.525227, 32.889591>,  <41.312359, 35.218552, 32.806400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.020401, 35.525227, 32.889591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.756897, 35.696732, 33.136883>,  <41.598797, 35.799633, 33.285259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.756897, 35.696732, 33.136883>,  <42.020401, 35.525227, 32.889591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.756897, 35.696732, 33.136883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.710517, 0.084335, 0.698608,
		0.247396, 0.899474, -0.360196,
		-0.658757, 0.428758, 0.618228,
		41.559269, 35.825359, 33.322350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.416035, 36.150913, 32.983147>,  <42.020401, 35.525227, 32.889591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.416035, 36.150913, 32.983147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.146786, 36.050602, 33.261433>,  <41.985237, 35.990417, 33.428402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.146786, 36.050602, 33.261433>,  <42.416035, 36.150913, 32.983147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.146786, 36.050602, 33.261433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.724094, -0.032293, 0.688945,
		-0.150304, 0.967506, 0.203323,
		-0.673124, -0.250776, 0.695712,
		41.944847, 35.975368, 33.470146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.729538, 36.322025, 33.638210>,  <42.416035, 36.150913, 32.983147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.729538, 36.322025, 33.638210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.445091, 36.080494, 33.782269>,  <42.274426, 35.935574, 33.868702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.445091, 36.080494, 33.782269>,  <42.729538, 36.322025, 33.638210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.445091, 36.080494, 33.782269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585871, -0.225742, 0.778329,
		-0.388681, 0.764478, 0.514296,
		-0.711114, -0.603833, 0.360144,
		42.231758, 35.899345, 33.890312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.650040, 36.382481, 34.377060>,  <42.729538, 36.322025, 33.638210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.650040, 36.382481, 34.377060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.490780, 36.019173, 34.325634>,  <42.395226, 35.801189, 34.294781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.490780, 36.019173, 34.325634>,  <42.650040, 36.382481, 34.377060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.490780, 36.019173, 34.325634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432552, -0.309477, 0.846831,
		-0.808937, 0.281553, 0.516091,
		-0.398146, -0.908269, -0.128561,
		42.371338, 35.746693, 34.287067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.573944, 36.165249, 35.003044>,  <42.650040, 36.382481, 34.377060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.573944, 36.165249, 35.003044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.518349, 35.830322, 34.791546>,  <42.484993, 35.629364, 34.664646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.518349, 35.830322, 34.791546>,  <42.573944, 36.165249, 35.003044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.518349, 35.830322, 34.791546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483360, -0.523369, 0.701746,
		-0.864318, -0.158044, 0.477468,
		-0.138985, -0.837321, -0.528750,
		42.476654, 35.579124, 34.632919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.416492, 35.609657, 35.489056>,  <42.573944, 36.165249, 35.003044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.416492, 35.609657, 35.489056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.549614, 35.444683, 35.149845>,  <42.629486, 35.345699, 34.946320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.549614, 35.444683, 35.149845>,  <42.416492, 35.609657, 35.489056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.549614, 35.444683, 35.149845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606194, -0.595286, 0.527412,
		-0.722338, -0.689590, 0.051902,
		0.332801, -0.412433, -0.848023,
		42.649456, 35.320953, 34.895439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.547443, 34.964745, 35.691113>,  <42.416492, 35.609657, 35.489056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.547443, 34.964745, 35.691113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.770245, 35.013126, 35.362450>,  <42.903923, 35.042156, 35.165253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.770245, 35.013126, 35.362450>,  <42.547443, 34.964745, 35.691113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.770245, 35.013126, 35.362450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.756184, -0.482953, 0.441523,
		-0.343420, -0.867253, -0.360465,
		0.557000, 0.120950, -0.821658,
		42.937344, 35.049412, 35.115952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.843906, 34.233006, 35.478092>,  <42.547443, 34.964745, 35.691113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.843906, 34.233006, 35.478092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.068863, 34.500969, 35.284210>,  <43.203838, 34.661747, 35.167881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.068863, 34.500969, 35.284210>,  <42.843906, 34.233006, 35.478092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.068863, 34.500969, 35.284210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.757208, -0.652748, -0.023596,
		-0.332195, -0.353749, -0.874362,
		0.562391, 0.669912, -0.484701,
		43.237579, 34.701942, 35.138802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.071644, 33.958527, 34.917568>,  <42.843906, 34.233006, 35.478092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.071644, 33.958527, 34.917568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.332302, 34.247208, 35.010956>,  <43.488697, 34.420414, 35.066986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.332302, 34.247208, 35.010956>,  <43.071644, 33.958527, 34.917568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.332302, 34.247208, 35.010956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.734475, -0.677242, 0.043463,
		0.189480, 0.143151, -0.971393,
		0.651647, 0.721700, 0.233465,
		43.527798, 34.463718, 35.080994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.679615, 33.889606, 34.502945>,  <43.071644, 33.958527, 34.917568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.679615, 33.889606, 34.502945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.822140, 34.101852, 34.810577>,  <43.907654, 34.229198, 34.995159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.822140, 34.101852, 34.810577>,  <43.679615, 33.889606, 34.502945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.822140, 34.101852, 34.810577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.779709, -0.622418, 0.068185,
		0.514871, 0.575366, -0.635501,
		0.356316, 0.530613, 0.769083,
		43.929035, 34.261036, 35.041302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.390911, 33.714996, 34.502182>,  <43.679615, 33.889606, 34.502945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.390911, 33.714996, 34.502182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.387695, 33.938759, 34.833725>,  <44.385765, 34.073017, 35.032650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.387695, 33.938759, 34.833725>,  <44.390911, 33.714996, 34.502182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.387695, 33.938759, 34.833725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.969638, -0.198234, 0.143199,
		0.244414, 0.804839, -0.540829,
		-0.008041, 0.559408, 0.828853,
		44.385284, 34.106583, 35.082382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.083439, 33.994305, 34.611397>,  <44.390911, 33.714996, 34.502182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.083439, 33.994305, 34.611397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.899979, 33.987888, 34.966785>,  <44.789902, 33.984039, 35.180019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.899979, 33.987888, 34.966785>,  <45.083439, 33.994305, 34.611397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.899979, 33.987888, 34.966785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.835571, -0.348059, 0.425060,
		0.302423, 0.937336, 0.173039,
		-0.458651, -0.016039, 0.888472,
		44.762383, 33.983078, 35.233326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.622833, 34.078465, 34.996883>,  <45.083439, 33.994305, 34.611397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.622833, 34.078465, 34.996883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.361439, 33.937622, 35.264904>,  <45.204601, 33.853115, 35.425716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.361439, 33.937622, 35.264904>,  <45.622833, 34.078465, 34.996883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.361439, 33.937622, 35.264904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.755970, -0.348267, 0.554273,
		0.038194, 0.868752, 0.493772,
		-0.653490, -0.352107, 0.670053,
		45.165390, 33.831989, 35.465919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.784378, 34.277561, 35.646584>,  <45.622833, 34.078465, 34.996883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.784378, 34.277561, 35.646584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.600422, 33.922848, 35.664974>,  <45.490047, 33.710018, 35.676010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.600422, 33.922848, 35.664974>,  <45.784378, 34.277561, 35.646584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.600422, 33.922848, 35.664974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.775418, -0.375827, 0.507426,
		-0.432699, 0.269010, 0.860468,
		-0.459889, -0.886785, 0.045976,
		45.462456, 33.656811, 35.678768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.498089, 34.526955, 35.782852>,  <45.784378, 34.277561, 35.646584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.498089, 34.526955, 35.782852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.890778, 34.543518, 35.708546>,  <47.126392, 34.553455, 35.663960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.890778, 34.543518, 35.708546>,  <46.498089, 34.526955, 35.782852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.890778, 34.543518, 35.708546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188917, 0.330629, -0.924659,
		0.023137, 0.942852, 0.332407,
		0.981720, 0.041404, -0.185771,
		47.185295, 34.555939, 35.652813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.549107, 35.080864, 35.284286>,  <46.498089, 34.526955, 35.782852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.549107, 35.080864, 35.284286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.894604, 34.879314, 35.281300>,  <47.101902, 34.758385, 35.279507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.894604, 34.879314, 35.281300>,  <46.549107, 35.080864, 35.284286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.894604, 34.879314, 35.281300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137123, 0.249261, -0.958680,
		0.484912, 0.827032, 0.284390,
		0.863746, -0.503872, -0.007464,
		47.153728, 34.728153, 35.279060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.992336, 35.475323, 35.020256>,  <46.549107, 35.080864, 35.284286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.992336, 35.475323, 35.020256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.085049, 35.093639, 34.944607>,  <47.140675, 34.864628, 34.899216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.085049, 35.093639, 34.944607>,  <46.992336, 35.475323, 35.020256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.085049, 35.093639, 34.944607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089328, 0.214474, -0.972636,
		0.968658, 0.208543, 0.134948,
		0.231780, -0.954207, -0.189123,
		47.154583, 34.807377, 34.887871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.795910, 35.384548, 35.119820>,  <46.992336, 35.475323, 35.020256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.795910, 35.384548, 35.119820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.794956, 35.084522, 34.855274>,  <47.794384, 34.904507, 34.696548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.794956, 35.084522, 34.855274>,  <47.795910, 35.384548, 35.119820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.794956, 35.084522, 34.855274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.567920, -0.543341, 0.618262,
		-0.823080, 0.377074, -0.424682,
		-0.002384, -0.750064, -0.661361,
		47.794243, 34.859505, 34.656868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<36.095188, 40.184525, 43.420368> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.710785, 40.140907, 43.318726>,  <35.480145, 40.114738, 43.257740>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.710785, 40.140907, 43.318726>,  <36.095188, 40.184525, 43.420368>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.710785, 40.140907, 43.318726> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276441, -0.357209, -0.892178,
		0.006515, -0.927638, 0.373425,
		-0.961009, -0.109043, -0.254109,
		35.422482, 40.108196, 43.242493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.021442, 39.523453, 43.236225>,  <36.095188, 40.184525, 43.420368>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.021442, 39.523453, 43.236225> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.708359, 39.709732, 43.071060>,  <35.520508, 39.821499, 42.971962>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.708359, 39.709732, 43.071060>,  <36.021442, 39.523453, 43.236225>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.708359, 39.709732, 43.071060> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161636, -0.488566, -0.857425,
		-0.601034, -0.737855, 0.307131,
		-0.782709, 0.465697, -0.412908,
		35.473545, 39.849442, 42.947189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.611931, 39.033695, 42.950077>,  <36.021442, 39.523453, 43.236225>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.611931, 39.033695, 42.950077> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.512482, 39.375233, 42.767151>,  <35.452812, 39.580154, 42.657394>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.512482, 39.375233, 42.767151>,  <35.611931, 39.033695, 42.950077>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.512482, 39.375233, 42.767151> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041319, -0.462364, -0.885727,
		-0.967720, -0.239104, 0.079672,
		-0.248618, 0.853844, -0.457318,
		35.437897, 39.631386, 42.629955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.114208, 38.801559, 42.396801>,  <35.611931, 39.033695, 42.950077>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.114208, 38.801559, 42.396801> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.237125, 39.163418, 42.278694>,  <35.310875, 39.380535, 42.207829>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.237125, 39.163418, 42.278694>,  <35.114208, 38.801559, 42.396801>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.237125, 39.163418, 42.278694> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136840, -0.349062, -0.927055,
		-0.941725, 0.244474, -0.231056,
		0.307294, 0.904648, -0.295266,
		35.329315, 39.434811, 42.190113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.737747, 39.004623, 41.740143>,  <35.114208, 38.801559, 42.396801>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.737747, 39.004623, 41.740143> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.059525, 39.242043, 41.730652>,  <35.252590, 39.384495, 41.724957>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.059525, 39.242043, 41.730652>,  <34.737747, 39.004623, 41.740143>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.059525, 39.242043, 41.730652> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086033, -0.155937, -0.984013,
		-0.587760, 0.789546, -0.176509,
		0.804448, 0.593550, -0.023727,
		35.300858, 39.420109, 41.723534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.711006, 39.396797, 41.057400>,  <34.737747, 39.004623, 41.740143>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.711006, 39.396797, 41.057400> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.095966, 39.384159, 41.165321>,  <35.326942, 39.376575, 41.230076>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.095966, 39.384159, 41.165321>,  <34.711006, 39.396797, 41.057400>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.095966, 39.384159, 41.165321> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241356, -0.356319, -0.902654,
		0.124659, 0.933830, -0.335294,
		0.962397, -0.031599, 0.269804,
		35.384686, 39.374680, 41.246262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.978600, 39.506397, 40.432041>,  <34.711006, 39.396797, 41.057400>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.978600, 39.506397, 40.432041> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.292870, 39.410027, 40.659958>,  <35.481434, 39.352203, 40.796707>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.292870, 39.410027, 40.659958>,  <34.978600, 39.506397, 40.432041>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.292870, 39.410027, 40.659958> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413161, -0.481169, -0.773159,
		0.460442, 0.842870, -0.278502,
		0.785679, -0.240929, 0.569791,
		35.528572, 39.337749, 40.830894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.553909, 39.597488, 39.926746>,  <34.978600, 39.506397, 40.432041>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.553909, 39.597488, 39.926746> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.668171, 39.369652, 40.235023>,  <35.736729, 39.232948, 40.419991>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.668171, 39.369652, 40.235023>,  <35.553909, 39.597488, 39.926746>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.668171, 39.369652, 40.235023> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504736, -0.594199, -0.626234,
		0.814643, 0.567881, 0.117760,
		0.285653, -0.569595, 0.770691,
		35.753868, 39.198772, 40.466232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.166534, 39.386005, 39.686970>,  <35.553909, 39.597488, 39.926746>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.166534, 39.386005, 39.686970> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.069077, 39.137161, 39.984592>,  <36.010601, 38.987854, 40.163166>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.069077, 39.137161, 39.984592>,  <36.166534, 39.386005, 39.686970>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.069077, 39.137161, 39.984592> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476312, -0.745034, -0.466959,
		0.844846, 0.240632, 0.477840,
		-0.243642, -0.622110, 0.744055,
		35.995983, 38.950527, 40.207809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.775478, 39.106125, 39.854023>,  <36.166534, 39.386005, 39.686970>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.775478, 39.106125, 39.854023> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.494350, 38.853802, 39.985550>,  <36.325672, 38.702408, 40.064465>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.494350, 38.853802, 39.985550>,  <36.775478, 39.106125, 39.854023>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.494350, 38.853802, 39.985550> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555737, -0.775432, -0.299768,
		0.444073, -0.027947, 0.895555,
		-0.702819, -0.630812, 0.328818,
		36.283504, 38.664558, 40.084194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.167484, 38.740200, 40.293133>,  <36.775478, 39.106125, 39.854023>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.167484, 38.740200, 40.293133> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.842369, 38.530270, 40.192001>,  <36.647301, 38.404312, 40.131321>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.842369, 38.530270, 40.192001>,  <37.167484, 38.740200, 40.293133>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.842369, 38.530270, 40.192001> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582140, -0.748107, -0.318509,
		-0.021983, -0.406066, 0.913580,
		-0.812791, -0.524830, -0.252833,
		36.598530, 38.372822, 40.116150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.263706, 38.040329, 40.499142>,  <37.167484, 38.740200, 40.293133>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.263706, 38.040329, 40.499142> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.977161, 38.017731, 40.220966>,  <36.805237, 38.004173, 40.054062>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.977161, 38.017731, 40.220966>,  <37.263706, 38.040329, 40.499142>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.977161, 38.017731, 40.220966> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398875, -0.850944, -0.341751,
		-0.572473, -0.522210, 0.632116,
		-0.716361, -0.056492, -0.695439,
		36.762253, 38.000782, 40.012333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.002205, 37.249783, 40.441807>,  <37.263706, 38.040329, 40.499142>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.002205, 37.249783, 40.441807> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.897152, 37.417629, 40.094257>,  <36.834118, 37.518337, 39.885727>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.897152, 37.417629, 40.094257>,  <37.002205, 37.249783, 40.441807>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.897152, 37.417629, 40.094257> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119244, -0.879468, -0.460778,
		-0.957498, -0.224625, 0.180944,
		-0.262636, 0.419617, -0.868875,
		36.818359, 37.543514, 39.833595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.694828, 36.738262, 40.108368>,  <37.002205, 37.249783, 40.441807>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.694828, 36.738262, 40.108368> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.744606, 36.987526, 39.799515>,  <36.774471, 37.137085, 39.614204>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.744606, 36.987526, 39.799515>,  <36.694828, 36.738262, 40.108368>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.744606, 36.987526, 39.799515> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028972, -0.780131, -0.624945,
		-0.991804, 0.055399, -0.115134,
		0.124441, 0.623159, -0.772132,
		36.781937, 37.174473, 39.567875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.155674, 36.525833, 39.544079>,  <36.694828, 36.738262, 40.108368>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.155674, 36.525833, 39.544079> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.482132, 36.709450, 39.403687>,  <36.678009, 36.819618, 39.319450>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.482132, 36.709450, 39.403687>,  <36.155674, 36.525833, 39.544079>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.482132, 36.709450, 39.403687> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126025, -0.734174, -0.667163,
		-0.563932, 0.500272, -0.657045,
		0.816149, 0.459038, -0.350978,
		36.726978, 36.847160, 39.298393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.072033, 36.452312, 38.863350>,  <36.155674, 36.525833, 39.544079>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.072033, 36.452312, 38.863350> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.450485, 36.572308, 38.912083>,  <36.677555, 36.644306, 38.941322>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.450485, 36.572308, 38.912083>,  <36.072033, 36.452312, 38.863350>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.450485, 36.572308, 38.912083> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288932, -0.612415, -0.735844,
		-0.146137, 0.731405, -0.666101,
		0.946130, 0.299992, 0.121830,
		36.734325, 36.662304, 38.948631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.311218, 36.594810, 38.176987>,  <36.072033, 36.452312, 38.863350>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.311218, 36.594810, 38.176987> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.630852, 36.519508, 38.405380>,  <36.822632, 36.474327, 38.542416>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.630852, 36.519508, 38.405380>,  <36.311218, 36.594810, 38.176987>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.630852, 36.519508, 38.405380> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297156, -0.701930, -0.647297,
		0.522648, 0.686916, -0.504960,
		0.799085, -0.188256, 0.570984,
		36.870579, 36.463032, 38.576675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.809963, 36.719749, 37.734898>,  <36.311218, 36.594810, 38.176987>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.809963, 36.719749, 37.734898> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.953899, 36.470757, 38.012901>,  <37.040260, 36.321362, 38.179703>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.953899, 36.470757, 38.012901>,  <36.809963, 36.719749, 37.734898>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.953899, 36.470757, 38.012901> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153074, -0.695426, -0.702104,
		0.920372, 0.359032, -0.154956,
		0.359838, -0.622478, 0.695009,
		37.061852, 36.284012, 38.221405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.437702, 36.588051, 37.470032>,  <36.809963, 36.719749, 37.734898>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.437702, 36.588051, 37.470032> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.345707, 36.280453, 37.708611>,  <37.290508, 36.095894, 37.851757>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.345707, 36.280453, 37.708611>,  <37.437702, 36.588051, 37.470032>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.345707, 36.280453, 37.708611> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487588, -0.621454, -0.613232,
		0.842237, 0.149783, 0.517882,
		-0.229989, -0.768999, 0.596444,
		37.276711, 36.049751, 37.887543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.026703, 36.228954, 37.669453>,  <37.437702, 36.588051, 37.470032>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.026703, 36.228954, 37.669453> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.751240, 35.941353, 37.706947>,  <37.585960, 35.768791, 37.729443>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.751240, 35.941353, 37.706947>,  <38.026703, 36.228954, 37.669453>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.751240, 35.941353, 37.706947> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549642, -0.601961, -0.579256,
		0.472910, -0.347389, 0.809739,
		-0.688658, -0.719002, 0.093734,
		37.544643, 35.725651, 37.735069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.336346, 35.605453, 37.831680>,  <38.026703, 36.228954, 37.669453>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.336346, 35.605453, 37.831680> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.990242, 35.429424, 37.735622>,  <37.782581, 35.323807, 37.677990>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.990242, 35.429424, 37.735622>,  <38.336346, 35.605453, 37.831680>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.990242, 35.429424, 37.735622> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497899, -0.698372, -0.514172,
		0.058565, -0.564457, 0.823382,
		-0.865255, -0.440074, -0.240143,
		37.730667, 35.297401, 37.663578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.550728, 34.909088, 37.971924>,  <38.336346, 35.605453, 37.831680>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.550728, 34.909088, 37.971924> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.236965, 34.920727, 37.724098>,  <38.048706, 34.927711, 37.575401>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.236965, 34.920727, 37.724098>,  <38.550728, 34.909088, 37.971924>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.236965, 34.920727, 37.724098> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446557, -0.666755, -0.596678,
		-0.430459, -0.744708, 0.510014,
		-0.784406, 0.029095, -0.619566,
		38.001644, 34.929455, 37.538227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.069233, 34.459492, 37.919239>,  <38.550728, 34.909088, 37.971924>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.069233, 34.459492, 37.919239> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.425716, 34.635834, 37.961937>,  <39.639606, 34.741638, 37.987556>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.425716, 34.635834, 37.961937>,  <39.069233, 34.459492, 37.919239>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.425716, 34.635834, 37.961937> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133654, 0.030330, 0.990564,
		0.433458, -0.897065, 0.085953,
		0.891208, 0.440856, 0.106749,
		39.693077, 34.768089, 37.993961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.326214, 34.122715, 38.476387>,  <39.069233, 34.459492, 37.919239>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.326214, 34.122715, 38.476387> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.522045, 34.470524, 38.450325>,  <39.639542, 34.679211, 38.434689>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.522045, 34.470524, 38.450325>,  <39.326214, 34.122715, 38.476387>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.522045, 34.470524, 38.450325> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014766, 0.066440, 0.997681,
		0.871836, -0.489402, 0.019688,
		0.489575, 0.869524, -0.065151,
		39.668919, 34.731380, 38.430779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.688934, 34.178711, 39.091702>,  <39.326214, 34.122715, 38.476387>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.688934, 34.178711, 39.091702> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.731888, 34.562077, 38.985943>,  <39.757660, 34.792095, 38.922489>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.731888, 34.562077, 38.985943>,  <39.688934, 34.178711, 39.091702>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.731888, 34.562077, 38.985943> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178579, 0.280204, 0.943183,
		0.978048, -0.054066, 0.201243,
		0.107384, 0.958417, -0.264398,
		39.764103, 34.849602, 38.906624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.234718, 34.459572, 39.534870>,  <39.688934, 34.178711, 39.091702>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.234718, 34.459572, 39.534870> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.007305, 34.764683, 39.411617>,  <39.870857, 34.947750, 39.337666>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.007305, 34.764683, 39.411617>,  <40.234718, 34.459572, 39.534870>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.007305, 34.764683, 39.411617> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063438, 0.332785, 0.940866,
		0.820210, 0.554461, -0.140811,
		-0.568534, 0.762775, -0.308128,
		39.836746, 34.993515, 39.319180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.585136, 35.108540, 39.808624>,  <40.234718, 34.459572, 39.534870>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.585136, 35.108540, 39.808624> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.222382, 35.225315, 39.687077>,  <40.004730, 35.295380, 39.614147>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.222382, 35.225315, 39.687077>,  <40.585136, 35.108540, 39.808624>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.222382, 35.225315, 39.687077> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076760, 0.594602, 0.800348,
		0.414328, 0.749148, -0.516826,
		-0.906885, 0.291935, -0.303865,
		39.950317, 35.312897, 39.595917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.503578, 35.813198, 39.865757>,  <40.585136, 35.108540, 39.808624>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.503578, 35.813198, 39.865757> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.122730, 35.691708, 39.851814>,  <39.894222, 35.618813, 39.843449>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.122730, 35.691708, 39.851814>,  <40.503578, 35.813198, 39.865757>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.122730, 35.691708, 39.851814> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249713, 0.706841, 0.661830,
		-0.176379, 0.638846, -0.748843,
		-0.952121, -0.303729, -0.034856,
		39.837093, 35.600590, 39.841358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.121441, 36.459358, 39.770493>,  <40.503578, 35.813198, 39.865757>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.121441, 36.459358, 39.770493> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.841702, 36.202114, 39.895275>,  <39.673859, 36.047768, 39.970146>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.841702, 36.202114, 39.895275>,  <40.121441, 36.459358, 39.770493>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.841702, 36.202114, 39.895275> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374952, 0.701642, 0.605896,
		-0.608541, 0.306764, -0.731829,
		-0.699349, -0.643113, 0.311955,
		39.631897, 36.009182, 39.988861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.490574, 36.820072, 39.799026>,  <40.121441, 36.459358, 39.770493>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.490574, 36.820072, 39.799026> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.444481, 36.501316, 40.036240>,  <39.416824, 36.310062, 40.178566>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.444481, 36.501316, 40.036240>,  <39.490574, 36.820072, 39.799026>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.444481, 36.501316, 40.036240> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463717, 0.571121, 0.677339,
		-0.878457, -0.196945, -0.435346,
		-0.115237, -0.796890, 0.593032,
		39.409908, 36.262249, 40.214149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.757854, 36.951691, 39.981998>,  <39.490574, 36.820072, 39.799026>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.757854, 36.951691, 39.981998> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.915020, 36.690891, 40.241386>,  <39.009319, 36.534412, 40.397018>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.915020, 36.690891, 40.241386>,  <38.757854, 36.951691, 39.981998>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.915020, 36.690891, 40.241386> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445368, 0.482038, 0.754511,
		-0.804528, -0.585268, -0.100979,
		0.392915, -0.651998, 0.648472,
		39.032894, 36.495293, 40.435928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.229019, 36.872860, 40.535519>,  <38.757854, 36.951691, 39.981998>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.229019, 36.872860, 40.535519> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.562851, 36.739002, 40.710556>,  <38.763149, 36.658688, 40.815578>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.562851, 36.739002, 40.710556>,  <38.229019, 36.872860, 40.535519>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.562851, 36.739002, 40.710556> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200198, 0.555797, 0.806852,
		-0.513220, -0.760990, 0.396863,
		0.834581, -0.334641, 0.437595,
		38.813225, 36.638611, 40.841835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.060543, 36.640396, 41.288902>,  <38.229019, 36.872860, 40.535519>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.060543, 36.640396, 41.288902> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.455875, 36.700294, 41.277786>,  <38.693077, 36.736233, 41.271118>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.455875, 36.700294, 41.277786>,  <38.060543, 36.640396, 41.288902>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.455875, 36.700294, 41.277786> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061072, 0.556810, 0.828392,
		0.139519, -0.817031, 0.559459,
		0.988334, 0.149744, -0.027788,
		38.752377, 36.745216, 41.269451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.304718, 36.450504, 41.928268>,  <38.060543, 36.640396, 41.288902>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.304718, 36.450504, 41.928268> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.559742, 36.711452, 41.764351>,  <38.712757, 36.868023, 41.666000>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.559742, 36.711452, 41.764351>,  <38.304718, 36.450504, 41.928268>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.559742, 36.711452, 41.764351> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149020, 0.626304, 0.765203,
		0.755855, -0.426792, 0.496520,
		0.637555, 0.652374, -0.409794,
		38.751007, 36.907166, 41.641415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.821575, 36.641407, 42.452354>,  <38.304718, 36.450504, 41.928268>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.821575, 36.641407, 42.452354> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.794247, 36.929993, 42.176723>,  <38.777851, 37.103142, 42.011345>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.794247, 36.929993, 42.176723>,  <38.821575, 36.641407, 42.452354>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.794247, 36.929993, 42.176723> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064076, 0.686092, 0.724688,
		0.995604, 0.093662, -0.000643,
		-0.068317, 0.721461, -0.689077,
		38.773750, 37.146431, 41.970001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.323532, 37.190865, 42.764637>,  <38.821575, 36.641407, 42.452354>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.323532, 37.190865, 42.764637> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.100048, 37.388969, 42.498535>,  <38.965958, 37.507832, 42.338875>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.100048, 37.388969, 42.498535>,  <39.323532, 37.190865, 42.764637>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.100048, 37.388969, 42.498535> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014016, 0.807650, 0.589496,
		0.829247, 0.320031, -0.458181,
		-0.558706, 0.495260, -0.665255,
		38.932438, 37.537548, 42.298958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.482525, 37.873508, 42.891033>,  <39.323532, 37.190865, 42.764637>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.482525, 37.873508, 42.891033> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.168262, 37.940117, 42.652699>,  <38.979706, 37.980080, 42.509697>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.168262, 37.940117, 42.652699>,  <39.482525, 37.873508, 42.891033>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.168262, 37.940117, 42.652699> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277590, 0.765823, 0.580051,
		0.552891, 0.621118, -0.555449,
		-0.785656, 0.166518, -0.595833,
		38.932568, 37.990070, 42.473949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.483025, 38.673126, 42.625008>,  <39.482525, 37.873508, 42.891033>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.483025, 38.673126, 42.625008> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.115192, 38.516514, 42.611858>,  <38.894493, 38.422546, 42.603970>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.115192, 38.516514, 42.611858>,  <39.483025, 38.673126, 42.625008>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.115192, 38.516514, 42.611858> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359300, 0.804102, 0.473628,
		-0.159010, 0.447347, -0.880111,
		-0.919576, -0.391535, -0.032871,
		38.839321, 38.399052, 42.601997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.129086, 39.264507, 42.457260>,  <39.483025, 38.673126, 42.625008>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.129086, 39.264507, 42.457260> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.870064, 39.006065, 42.618862>,  <38.714653, 38.851002, 42.715824>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.870064, 39.006065, 42.618862>,  <39.129086, 39.264507, 42.457260>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.870064, 39.006065, 42.618862> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341895, 0.720162, 0.603717,
		-0.681017, 0.252810, -0.687243,
		-0.647553, -0.646106, 0.404008,
		38.675797, 38.812233, 42.740063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.600933, 39.690903, 42.614902>,  <39.129086, 39.264507, 42.457260>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.600933, 39.690903, 42.614902> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.527752, 39.361336, 42.829453>,  <38.483845, 39.163597, 42.958183>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.527752, 39.361336, 42.829453>,  <38.600933, 39.690903, 42.614902>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.527752, 39.361336, 42.829453> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458727, 0.554088, 0.694663,
		-0.869539, -0.118958, -0.479323,
		-0.182951, -0.823915, 0.536370,
		38.472866, 39.114162, 42.990364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<37.820301, 39.738575, 42.815586> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.977257, 39.477024, 43.074345>,  <38.071430, 39.320091, 43.229599>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.977257, 39.477024, 43.074345>,  <37.820301, 39.738575, 42.815586>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.977257, 39.477024, 43.074345> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335098, 0.553338, 0.762579,
		-0.856586, -0.516000, -0.001990,
		0.392389, -0.653881, 0.646893,
		38.094975, 39.280861, 43.268414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.300194, 39.534451, 43.351170>,  <37.820301, 39.738575, 42.815586>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.300194, 39.534451, 43.351170> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.653160, 39.458488, 43.523342>,  <37.864941, 39.412910, 43.626648>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.653160, 39.458488, 43.523342>,  <37.300194, 39.534451, 43.351170>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.653160, 39.458488, 43.523342> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300020, 0.477592, 0.825769,
		-0.362386, -0.857813, 0.364463,
		0.882420, -0.189901, 0.430434,
		37.917885, 39.401520, 43.652473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.135250, 38.986702, 43.829247>,  <37.300194, 39.534451, 43.351170>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.135250, 38.986702, 43.829247> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.463730, 39.196621, 43.918896>,  <37.660816, 39.322571, 43.972683>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.463730, 39.196621, 43.918896>,  <37.135250, 38.986702, 43.829247>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.463730, 39.196621, 43.918896> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465036, 0.387818, 0.795826,
		0.330727, -0.757753, 0.562522,
		0.821195, 0.524794, 0.224121,
		37.710087, 39.354057, 43.986134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.155582, 38.805557, 44.539814>,  <37.135250, 38.986702, 43.829247>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.155582, 38.805557, 44.539814> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.401451, 39.114910, 44.477760>,  <37.548973, 39.300522, 44.440529>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.401451, 39.114910, 44.477760>,  <37.155582, 38.805557, 44.539814>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.401451, 39.114910, 44.477760> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406653, 0.479220, 0.777805,
		0.675881, -0.415008, 0.609059,
		0.614669, 0.773380, -0.155131,
		37.585854, 39.346924, 44.431221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.424610, 38.932465, 45.145046>,  <37.155582, 38.805557, 44.539814>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.424610, 38.932465, 45.145046> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.469437, 39.272850, 44.939796>,  <37.496334, 39.477081, 44.816647>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.469437, 39.272850, 44.939796>,  <37.424610, 38.932465, 45.145046>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.469437, 39.272850, 44.939796> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476296, 0.499197, 0.723840,
		0.872114, 0.163279, 0.461257,
		0.112070, 0.850966, -0.513125,
		37.503059, 39.528141, 44.785858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.777023, 39.216095, 45.594906>,  <37.424610, 38.932465, 45.145046>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.777023, 39.216095, 45.594906> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.643902, 39.505352, 45.352810>,  <37.564030, 39.678905, 45.207554>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.643902, 39.505352, 45.352810>,  <37.777023, 39.216095, 45.594906>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.643902, 39.505352, 45.352810> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252944, 0.549845, 0.796047,
		0.908437, 0.418022, -0.000079,
		-0.332808, 0.723138, -0.605235,
		37.544060, 39.722294, 45.171238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.943928, 39.775391, 45.940491>,  <37.777023, 39.216095, 45.594906>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.943928, 39.775391, 45.940491> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.658199, 39.883575, 45.682312>,  <37.486763, 39.948486, 45.527405>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.658199, 39.883575, 45.682312>,  <37.943928, 39.775391, 45.940491>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.658199, 39.883575, 45.682312> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397089, 0.602808, 0.692057,
		0.576256, 0.750648, -0.323198,
		-0.714318, 0.270463, -0.645446,
		37.443905, 39.964714, 45.488678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.968876, 40.466030, 45.881500>,  <37.943928, 39.775391, 45.940491>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.968876, 40.466030, 45.881500> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.598763, 40.374443, 45.760551>,  <37.376694, 40.319492, 45.687981>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.598763, 40.374443, 45.760551>,  <37.968876, 40.466030, 45.881500>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.598763, 40.374443, 45.760551> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379207, 0.574408, 0.725436,
		0.007586, 0.785894, -0.618315,
		-0.925281, -0.228966, -0.302374,
		37.321178, 40.305752, 45.669838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.629074, 41.105965, 46.002823>,  <37.968876, 40.466030, 45.881500>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.629074, 41.105965, 46.002823> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.351921, 40.817585, 45.998074>,  <37.185627, 40.644558, 45.995224>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.351921, 40.817585, 45.998074>,  <37.629074, 41.105965, 46.002823>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.351921, 40.817585, 45.998074> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518861, 0.487092, 0.702513,
		-0.500694, 0.492921, -0.711572,
		-0.692884, -0.720951, -0.011874,
		37.144054, 40.601299, 45.994511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.939098, 41.439980, 45.997555>,  <37.629074, 41.105965, 46.002823>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.939098, 41.439980, 45.997555> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.894501, 41.056915, 46.103733>,  <36.867741, 40.827076, 46.167442>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.894501, 41.056915, 46.103733>,  <36.939098, 41.439980, 45.997555>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.894501, 41.056915, 46.103733> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479765, 0.285796, 0.829546,
		-0.870284, -0.034859, -0.491316,
		-0.111498, -0.957657, 0.265448,
		36.861050, 40.769619, 46.183369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.427113, 41.467228, 46.435863>,  <36.939098, 41.439980, 45.997555>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.427113, 41.467228, 46.435863> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.530293, 41.090599, 46.522488>,  <36.592201, 40.864620, 46.574463>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.530293, 41.090599, 46.522488>,  <36.427113, 41.467228, 46.435863>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.530293, 41.090599, 46.522488> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414263, 0.094711, 0.905216,
		-0.872838, -0.323218, -0.365628,
		0.257953, -0.941573, 0.216565,
		36.607677, 40.808128, 46.587456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.844128, 41.179535, 46.675884>,  <36.427113, 41.467228, 46.435863>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.844128, 41.179535, 46.675884> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.130302, 40.941593, 46.822472>,  <36.302006, 40.798828, 46.910423>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.130302, 40.941593, 46.822472>,  <35.844128, 41.179535, 46.675884>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.130302, 40.941593, 46.822472> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359187, 0.136750, 0.923192,
		-0.599280, -0.792116, -0.115829,
		0.715436, -0.594854, 0.366469,
		36.344933, 40.763138, 46.932411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.550030, 40.910313, 47.312119>,  <35.844128, 41.179535, 46.675884>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.550030, 40.910313, 47.312119> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.928890, 40.786438, 47.345604>,  <36.156204, 40.712112, 47.365696>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.928890, 40.786438, 47.345604>,  <35.550030, 40.910313, 47.312119>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.928890, 40.786438, 47.345604> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100788, -0.039519, 0.994123,
		-0.304558, -0.950017, -0.068643,
		0.947146, -0.309686, 0.083714,
		36.213036, 40.693531, 47.370720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.552418, 40.338394, 47.757084>,  <35.550030, 40.910313, 47.312119>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.552418, 40.338394, 47.757084> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.918415, 40.498520, 47.777241>,  <36.138012, 40.594593, 47.789333>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.918415, 40.498520, 47.777241>,  <35.552418, 40.338394, 47.757084>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.918415, 40.498520, 47.777241> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018515, -0.083102, 0.996369,
		0.403045, -0.912603, -0.068626,
		0.914993, 0.400311, 0.050391,
		36.192913, 40.618614, 47.792358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.012249, 39.848812, 48.060635>,  <35.552418, 40.338394, 47.757084>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.012249, 39.848812, 48.060635> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.157936, 40.215256, 48.127678>,  <36.245346, 40.435123, 48.167904>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.157936, 40.215256, 48.127678>,  <36.012249, 39.848812, 48.060635>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.157936, 40.215256, 48.127678> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013155, -0.185010, 0.982649,
		0.931222, -0.355690, -0.079435,
		0.364214, 0.916109, 0.167607,
		36.267200, 40.490089, 48.177959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.458061, 39.808697, 48.664673>,  <36.012249, 39.848812, 48.060635>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.458061, 39.808697, 48.664673> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.386063, 40.198803, 48.613361>,  <36.342865, 40.432869, 48.582577>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.386063, 40.198803, 48.613361>,  <36.458061, 39.808697, 48.664673>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.386063, 40.198803, 48.613361> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160203, 0.099601, 0.982046,
		0.970534, 0.197313, 0.138313,
		-0.179994, 0.975268, -0.128276,
		36.332066, 40.491383, 48.574879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.796547, 40.023907, 49.235188>,  <36.458061, 39.808697, 48.664673>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.796547, 40.023907, 49.235188> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.533607, 40.305485, 49.127598>,  <36.375843, 40.474430, 49.063042>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.533607, 40.305485, 49.127598>,  <36.796547, 40.023907, 49.235188>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.533607, 40.305485, 49.127598> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060728, 0.306288, 0.950000,
		0.751132, 0.640819, -0.158590,
		-0.657352, 0.703945, -0.268978,
		36.336403, 40.516666, 49.046906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.948864, 40.589394, 49.696564>,  <36.796547, 40.023907, 49.235188>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.948864, 40.589394, 49.696564> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.573528, 40.651459, 49.572983>,  <36.348328, 40.688698, 49.498833>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.573528, 40.651459, 49.572983>,  <36.948864, 40.589394, 49.696564>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.573528, 40.651459, 49.572983> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256446, 0.286971, 0.922975,
		0.231870, 0.945290, -0.229485,
		-0.938335, 0.155160, -0.308956,
		36.292027, 40.698006, 49.480297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.766666, 41.292389, 50.017349>,  <36.948864, 40.589394, 49.696564>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.766666, 41.292389, 50.017349> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.430664, 41.114452, 49.893089>,  <36.229061, 41.007690, 49.818531>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.430664, 41.114452, 49.893089>,  <36.766666, 41.292389, 50.017349>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.430664, 41.114452, 49.893089> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500047, 0.412497, 0.761446,
		-0.210580, 0.794960, -0.568942,
		-0.840006, -0.444842, -0.310654,
		36.178661, 40.980999, 49.799892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.245701, 41.836472, 49.925888>,  <36.766666, 41.292389, 50.017349>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.245701, 41.836472, 49.925888> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.042351, 41.492531, 49.944706>,  <35.920341, 41.286167, 49.955997>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.042351, 41.492531, 49.944706>,  <36.245701, 41.836472, 49.925888>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.042351, 41.492531, 49.944706> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.615595, 0.401078, 0.678366,
		-0.602159, 0.315907, -0.733217,
		-0.508377, -0.859849, 0.047042,
		35.889839, 41.234577, 49.958820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.561035, 41.990749, 49.920296>,  <36.245701, 41.836472, 49.925888>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.561035, 41.990749, 49.920296> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.568989, 41.628090, 50.088863>,  <35.573761, 41.410496, 50.190006>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.568989, 41.628090, 50.088863>,  <35.561035, 41.990749, 49.920296>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.568989, 41.628090, 50.088863> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515279, 0.351922, 0.781434,
		-0.856792, -0.232686, -0.460179,
		0.019881, -0.906647, 0.421421,
		35.574955, 41.356094, 50.215290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.897308, 41.861790, 50.123333>,  <35.561035, 41.990749, 49.920296>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.897308, 41.861790, 50.123333> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.094761, 41.610390, 50.363773>,  <35.213230, 41.459549, 50.508038>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.094761, 41.610390, 50.363773>,  <34.897308, 41.861790, 50.123333>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.094761, 41.610390, 50.363773> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520561, 0.340154, 0.783142,
		-0.696669, -0.699491, -0.159261,
		0.493628, -0.628496, 0.601102,
		35.242847, 41.421841, 50.544106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.432686, 41.508259, 50.638031>,  <34.897308, 41.861790, 50.123333>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.432686, 41.508259, 50.638031> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.801113, 41.516216, 50.793587>,  <35.022171, 41.520992, 50.886921>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.801113, 41.516216, 50.793587>,  <34.432686, 41.508259, 50.638031>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.801113, 41.516216, 50.793587> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355135, 0.452556, 0.817968,
		-0.159720, -0.891514, 0.423901,
		0.921069, 0.019896, 0.388891,
		35.077435, 41.522186, 50.910255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.167400, 42.070438, 50.293491>,  <34.432686, 41.508259, 50.638031>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.167400, 42.070438, 50.293491> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.235855, 42.416378, 50.104706>,  <34.276928, 42.623940, 49.991432>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.235855, 42.416378, 50.104706>,  <34.167400, 42.070438, 50.293491>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.235855, 42.416378, 50.104706> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.980848, 0.194768, 0.001235,
		0.092992, 0.462718, 0.881615,
		0.171139, 0.864845, -0.471968,
		34.287197, 42.675831, 49.963116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.787994, 42.700535, 50.194599>,  <34.167400, 42.070438, 50.293491>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.787994, 42.700535, 50.194599> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.425114, 42.821083, 50.077187>,  <33.207386, 42.893410, 50.006737>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.425114, 42.821083, 50.077187>,  <33.787994, 42.700535, 50.194599>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.425114, 42.821083, 50.077187> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019678, -0.666575, -0.745179,
		-0.420236, -0.681803, 0.598787,
		-0.907202, 0.301368, -0.293535,
		33.152954, 42.911495, 49.989124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.367584, 42.117683, 50.187275>,  <33.787994, 42.700535, 50.194599>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.367584, 42.117683, 50.187275> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.204594, 42.385998, 49.939400>,  <33.106800, 42.546986, 49.790676>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.204594, 42.385998, 49.939400>,  <33.367584, 42.117683, 50.187275>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.204594, 42.385998, 49.939400> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007845, -0.681118, -0.732131,
		-0.913183, -0.293464, 0.282801,
		-0.407475, 0.670788, -0.619683,
		33.082352, 42.587234, 49.753494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.735218, 41.848560, 49.920326>,  <33.367584, 42.117683, 50.187275>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.735218, 41.848560, 49.920326> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.827995, 42.130676, 49.652367>,  <32.883663, 42.299946, 49.491589>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.827995, 42.130676, 49.652367>,  <32.735218, 41.848560, 49.920326>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.827995, 42.130676, 49.652367> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031986, -0.682781, -0.729922,
		-0.972203, 0.190730, -0.135809,
		0.231946, 0.705288, -0.669903,
		32.897579, 42.342262, 49.451397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.314426, 41.577656, 49.405151>,  <32.735218, 41.848560, 49.920326>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.314426, 41.577656, 49.405151> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.592457, 41.830544, 49.268230>,  <32.759274, 41.982277, 49.186077>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.592457, 41.830544, 49.268230>,  <32.314426, 41.577656, 49.405151>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.592457, 41.830544, 49.268230> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207941, -0.632563, -0.746073,
		-0.688209, 0.447397, -0.571142,
		0.695074, 0.632218, -0.342303,
		32.800980, 42.020210, 49.165539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.133293, 41.623898, 48.755672>,  <32.314426, 41.577656, 49.405151>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.133293, 41.623898, 48.755672> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.514656, 41.744289, 48.763901>,  <32.743473, 41.816525, 48.768837>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.514656, 41.744289, 48.763901>,  <32.133293, 41.623898, 48.755672>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.514656, 41.744289, 48.763901> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174224, -0.493645, -0.852033,
		-0.246290, 0.815919, -0.523084,
		0.953408, 0.300981, 0.020573,
		32.800678, 41.834583, 48.770073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.346634, 41.847733, 48.043308>,  <32.133293, 41.623898, 48.755672>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.346634, 41.847733, 48.043308> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.699997, 41.788177, 48.221035>,  <32.912014, 41.752445, 48.327671>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.699997, 41.788177, 48.221035>,  <32.346634, 41.847733, 48.043308>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.699997, 41.788177, 48.221035> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332953, -0.467772, -0.818738,
		0.329736, 0.871219, -0.363664,
		0.883412, -0.148884, 0.444317,
		32.965019, 41.743511, 48.354328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.874405, 42.054394, 47.604141>,  <32.346634, 41.847733, 48.043308>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.874405, 42.054394, 47.604141> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.068443, 41.821617, 47.865227>,  <33.184868, 41.681953, 48.021877>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.068443, 41.821617, 47.865227>,  <32.874405, 42.054394, 47.604141>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.068443, 41.821617, 47.865227> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444540, -0.478661, -0.757145,
		0.753039, 0.657442, 0.026500,
		0.485094, -0.581940, 0.652709,
		33.213970, 41.647034, 48.061039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.491367, 41.932568, 47.274792>,  <32.874405, 42.054394, 47.604141>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.491367, 41.932568, 47.274792> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.464020, 41.652351, 47.558922>,  <33.447609, 41.484222, 47.729401>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.464020, 41.652351, 47.558922>,  <33.491367, 41.932568, 47.274792>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.464020, 41.652351, 47.558922> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555682, -0.618068, -0.556066,
		0.828579, 0.356698, 0.431536,
		-0.068371, -0.700541, 0.710329,
		33.443508, 41.442188, 47.772022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.216782, 41.673222, 47.563255>,  <33.491367, 41.932568, 47.274792>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.216782, 41.673222, 47.563255> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.968597, 41.369194, 47.640541>,  <33.819687, 41.186779, 47.686913>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.968597, 41.369194, 47.640541>,  <34.216782, 41.673222, 47.563255>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.968597, 41.369194, 47.640541> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553083, -0.598757, -0.579301,
		0.555996, -0.252567, 0.791883,
		-0.620457, -0.760066, 0.193216,
		33.782459, 41.141174, 47.698505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.668449, 41.184628, 47.608734>,  <34.216782, 41.673222, 47.563255>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.668449, 41.184628, 47.608734> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.323597, 40.989433, 47.554169>,  <34.116688, 40.872318, 47.521427>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.323597, 40.989433, 47.554169>,  <34.668449, 41.184628, 47.608734>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.323597, 40.989433, 47.554169> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402839, -0.496815, -0.768697,
		0.307337, -0.717669, 0.624896,
		-0.862128, -0.487982, -0.136415,
		34.064957, 40.843040, 47.513245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.885040, 40.500587, 47.524311>,  <34.668449, 41.184628, 47.608734>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.885040, 40.500587, 47.524311> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.517525, 40.514309, 47.367008>,  <34.297016, 40.522541, 47.272625>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.517525, 40.514309, 47.367008>,  <34.885040, 40.500587, 47.524311>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.517525, 40.514309, 47.367008> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321542, -0.512870, -0.795974,
		-0.228995, -0.857781, 0.460189,
		-0.918789, 0.034304, -0.393257,
		34.241890, 40.524601, 47.249031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.772427, 39.856422, 47.081730>,  <34.885040, 40.500587, 47.524311>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.772427, 39.856422, 47.081730> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.497189, 40.110859, 46.942066>,  <34.332047, 40.263519, 46.858269>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.497189, 40.110859, 46.942066>,  <34.772427, 39.856422, 47.081730>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.497189, 40.110859, 46.942066> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314639, -0.172040, -0.933490,
		-0.653851, -0.752193, -0.081758,
		-0.688100, 0.636088, -0.349158,
		34.290760, 40.301685, 46.837318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.363743, 39.527149, 46.499744>,  <34.772427, 39.856422, 47.081730>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.363743, 39.527149, 46.499744> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.336514, 39.923729, 46.455227>,  <34.320175, 40.161678, 46.428516>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.336514, 39.923729, 46.455227>,  <34.363743, 39.527149, 46.499744>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.336514, 39.923729, 46.455227> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086102, -0.105297, -0.990706,
		-0.993958, -0.077025, -0.078198,
		-0.068075, 0.991454, -0.111292,
		34.316090, 40.221165, 46.421841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.974598, 39.535923, 45.867428>,  <34.363743, 39.527149, 46.499744>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.974598, 39.535923, 45.867428> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.160023, 39.883194, 45.938282>,  <34.271278, 40.091557, 45.980793>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.160023, 39.883194, 45.938282>,  <33.974598, 39.535923, 45.867428>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.160023, 39.883194, 45.938282> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225612, 0.077673, -0.971116,
		-0.856858, 0.490141, -0.159864,
		0.463567, 0.868176, 0.177137,
		34.299091, 40.143646, 45.991425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.663654, 39.953979, 45.356625>,  <33.974598, 39.535923, 45.867428>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.663654, 39.953979, 45.356625> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.998367, 40.141651, 45.469524>,  <34.199196, 40.254253, 45.537266>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.998367, 40.141651, 45.469524>,  <33.663654, 39.953979, 45.356625>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.998367, 40.141651, 45.469524> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234958, 0.157926, -0.959090,
		-0.494557, 0.868869, 0.021913,
		0.836784, 0.469176, 0.282252,
		34.249401, 40.282402, 45.554199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.707809, 40.435188, 44.848671>,  <33.663654, 39.953979, 45.356625>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.707809, 40.435188, 44.848671> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.072498, 40.410213, 45.011082>,  <34.291313, 40.395229, 45.108528>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.072498, 40.410213, 45.011082>,  <33.707809, 40.435188, 44.848671>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.072498, 40.410213, 45.011082> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408576, 0.240597, -0.880442,
		-0.042714, 0.968615, 0.244870,
		0.911724, -0.062441, 0.406030,
		34.346016, 40.391479, 45.132889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.052624, 41.003010, 44.519203>,  <33.707809, 40.435188, 44.848671>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.052624, 41.003010, 44.519203> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.318966, 40.728821, 44.637032>,  <34.478771, 40.564308, 44.707729>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.318966, 40.728821, 44.637032>,  <34.052624, 41.003010, 44.519203>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.318966, 40.728821, 44.637032> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344774, -0.067437, -0.936260,
		0.661644, 0.724970, 0.191430,
		0.665851, -0.685471, 0.294570,
		34.518723, 40.523178, 44.725403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.707355, 41.305393, 44.241947>,  <34.052624, 41.003010, 44.519203>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.707355, 41.305393, 44.241947> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.810242, 40.928288, 44.326832>,  <34.871975, 40.702023, 44.377762>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.810242, 40.928288, 44.326832>,  <34.707355, 41.305393, 44.241947>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.810242, 40.928288, 44.326832> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301167, -0.130460, -0.944605,
		0.918226, 0.306879, 0.250373,
		0.257216, -0.942765, 0.212213,
		34.887405, 40.645458, 44.390495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.299450, 41.289925, 43.915367>,  <34.707355, 41.305393, 44.241947>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.299450, 41.289925, 43.915367> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.175827, 40.910576, 43.943867>,  <35.101654, 40.682968, 43.960964>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.175827, 40.910576, 43.943867>,  <35.299450, 41.289925, 43.915367>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.175827, 40.910576, 43.943867> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194887, -0.136478, -0.971284,
		0.930862, -0.286295, 0.227005,
		-0.309054, -0.948372, 0.071247,
		35.083111, 40.626064, 43.965240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.797607, 40.912045, 43.589981>,  <35.299450, 41.289925, 43.915367>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.797607, 40.912045, 43.589981> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.500378, 40.644485, 43.581776>,  <35.322041, 40.483952, 43.576851>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.500378, 40.644485, 43.581776>,  <35.797607, 40.912045, 43.589981>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.500378, 40.644485, 43.581776> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266770, -0.267962, -0.925759,
		0.613741, -0.693378, 0.377556,
		-0.743072, -0.668898, -0.020513,
		35.277454, 40.443817, 43.575623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<39.027782, 28.820004, 30.454767> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.876995, 29.189850, 30.432926>,  <38.786522, 29.411757, 30.419821>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.876995, 29.189850, 30.432926>,  <39.027782, 28.820004, 30.454767>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.876995, 29.189850, 30.432926> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581533, 0.282154, 0.763026,
		0.720911, 0.255886, -0.644057,
		-0.376971, 0.924614, -0.054602,
		38.763905, 29.467234, 30.416546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.589794, 29.229248, 30.470209>,  <39.027782, 28.820004, 30.454767>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.589794, 29.229248, 30.470209> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.282825, 29.461645, 30.578665>,  <39.098644, 29.601084, 30.643738>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.282825, 29.461645, 30.578665>,  <39.589794, 29.229248, 30.470209>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.282825, 29.461645, 30.578665> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494588, 0.267349, 0.826987,
		0.407985, 0.768746, -0.492521,
		-0.767418, 0.580993, 0.271138,
		39.052601, 29.635942, 30.660006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.865810, 29.923061, 30.488468>,  <39.589794, 29.229248, 30.470209>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.865810, 29.923061, 30.488468> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.531132, 29.918743, 30.707491>,  <39.330322, 29.916153, 30.838905>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.531132, 29.918743, 30.707491>,  <39.865810, 29.923061, 30.488468>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.531132, 29.918743, 30.707491> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526217, 0.261208, 0.809238,
		-0.151761, 0.965222, -0.212872,
		-0.836699, -0.010794, 0.547557,
		39.280121, 29.915504, 30.871758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.830177, 30.621027, 30.823954>,  <39.865810, 29.923061, 30.488468>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.830177, 30.621027, 30.823954> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.593399, 30.384403, 31.042919>,  <39.451332, 30.242430, 31.174299>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.593399, 30.384403, 31.042919>,  <39.830177, 30.621027, 30.823954>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.593399, 30.384403, 31.042919> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442006, 0.329685, 0.834230,
		-0.673970, 0.735776, 0.066318,
		-0.591942, -0.591559, 0.547415,
		39.415817, 30.206936, 31.207144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.620922, 31.066856, 31.355669>,  <39.830177, 30.621027, 30.823954>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.620922, 31.066856, 31.355669> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.544910, 30.702541, 31.502289>,  <39.499302, 30.483953, 31.590260>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.544910, 30.702541, 31.502289>,  <39.620922, 31.066856, 31.355669>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.544910, 30.702541, 31.502289> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393900, 0.271255, 0.878216,
		-0.899295, 0.311273, 0.307210,
		-0.190033, -0.910785, 0.366548,
		39.487900, 30.429306, 31.612253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.647278, 31.330263, 31.953224>,  <39.620922, 31.066856, 31.355669>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.647278, 31.330263, 31.953224> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.647213, 30.931643, 31.986418>,  <39.647175, 30.692471, 32.006332>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.647213, 30.931643, 31.986418>,  <39.647278, 31.330263, 31.953224>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.647213, 30.931643, 31.986418> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403989, 0.075844, 0.911614,
		-0.914764, 0.033670, 0.402583,
		-0.000160, -0.996551, 0.082982,
		39.647163, 30.632677, 32.011311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.299648, 31.111998, 32.602890>,  <39.647278, 31.330263, 31.953224>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.299648, 31.111998, 32.602890> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.557861, 30.824100, 32.500713>,  <39.712791, 30.651361, 32.439407>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.557861, 30.824100, 32.500713>,  <39.299648, 31.111998, 32.602890>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.557861, 30.824100, 32.500713> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558788, 0.217114, 0.800386,
		-0.520613, -0.659416, 0.542340,
		0.645537, -0.719744, -0.255441,
		39.751522, 30.608177, 32.424080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.341824, 30.660810, 33.142757>,  <39.299648, 31.111998, 32.602890>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.341824, 30.660810, 33.142757> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.675453, 30.601267, 32.930283>,  <39.875629, 30.565540, 32.802795>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.675453, 30.601267, 32.930283>,  <39.341824, 30.660810, 33.142757>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.675453, 30.601267, 32.930283> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540200, 0.025193, 0.841160,
		-0.111835, -0.988537, 0.101428,
		0.834073, -0.148862, -0.531190,
		39.925674, 30.556608, 32.770924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.822071, 30.281643, 33.544060>,  <39.341824, 30.660810, 33.142757>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.822071, 30.281643, 33.544060> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.084572, 30.434536, 33.283833>,  <40.242073, 30.526272, 33.127697>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.084572, 30.434536, 33.283833>,  <39.822071, 30.281643, 33.544060>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.084572, 30.434536, 33.283833> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.675746, 0.085887, 0.732114,
		0.335711, -0.920067, -0.201927,
		0.656251, 0.382230, -0.650565,
		40.281448, 30.549206, 33.088665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.547836, 29.889376, 33.603992>,  <39.822071, 30.281643, 33.544060>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.547836, 29.889376, 33.603992> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.590038, 30.257675, 33.453747>,  <40.615360, 30.478655, 33.363598>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.590038, 30.257675, 33.453747>,  <40.547836, 29.889376, 33.603992>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.590038, 30.257675, 33.453747> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.695125, 0.201822, 0.689978,
		0.711105, -0.333898, -0.618742,
		0.105507, 0.920750, -0.375617,
		40.621689, 30.533899, 33.341061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.260990, 29.988588, 33.585392>,  <40.547836, 29.889376, 33.603992>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.260990, 29.988588, 33.585392> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.153969, 30.369993, 33.529926>,  <41.089756, 30.598837, 33.496647>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.153969, 30.369993, 33.529926>,  <41.260990, 29.988588, 33.585392>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.153969, 30.369993, 33.529926> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.744313, 0.295913, 0.598694,
		0.611895, 0.056974, -0.788885,
		-0.267551, 0.953514, -0.138661,
		41.073704, 30.656048, 33.488327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.795494, 30.497253, 33.361809>,  <41.260990, 29.988588, 33.585392>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.795494, 30.497253, 33.361809> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.546452, 30.739302, 33.560280>,  <41.397026, 30.884531, 33.679363>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.546452, 30.739302, 33.560280>,  <41.795494, 30.497253, 33.361809>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.546452, 30.739302, 33.560280> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.761601, 0.322879, 0.561883,
		0.179801, 0.727721, -0.661886,
		-0.622604, 0.605120, 0.496179,
		41.359669, 30.920837, 33.709133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.221802, 31.029282, 33.541832>,  <41.795494, 30.497253, 33.361809>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.221802, 31.029282, 33.541832> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.911331, 31.139858, 33.768501>,  <41.725048, 31.206205, 33.904503>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.911331, 31.139858, 33.768501>,  <42.221802, 31.029282, 33.541832>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.911331, 31.139858, 33.768501> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.604987, 0.579665, 0.545874,
		-0.177580, 0.766530, -0.617169,
		-0.776180, 0.276443, 0.566678,
		41.678478, 31.222792, 33.938503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.373936, 31.798719, 33.697899>,  <42.221802, 31.029282, 33.541832>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.373936, 31.798719, 33.697899> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.101696, 31.677788, 33.964844>,  <41.938351, 31.605228, 34.125011>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.101696, 31.677788, 33.964844>,  <42.373936, 31.798719, 33.697899>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.101696, 31.677788, 33.964844> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404411, 0.604525, 0.686295,
		-0.610926, 0.736984, -0.289176,
		-0.680603, -0.302330, 0.667365,
		41.897514, 31.587090, 34.165054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.026634, 32.377792, 34.095741>,  <42.373936, 31.798719, 33.697899>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.026634, 32.377792, 34.095741> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.011391, 32.056450, 34.333454>,  <42.002243, 31.863646, 34.476082>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.011391, 32.056450, 34.333454>,  <42.026634, 32.377792, 34.095741>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.011391, 32.056450, 34.333454> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448986, 0.517537, 0.728400,
		-0.892726, 0.294585, 0.340970,
		-0.038111, -0.803352, 0.594283,
		41.999958, 31.815445, 34.511738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.730206, 32.655449, 34.823532>,  <42.026634, 32.377792, 34.095741>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.730206, 32.655449, 34.823532> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.912357, 32.307644, 34.900028>,  <42.021648, 32.098961, 34.945927>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.912357, 32.307644, 34.900028>,  <41.730206, 32.655449, 34.823532>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.912357, 32.307644, 34.900028> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214915, 0.315815, 0.924160,
		-0.863970, -0.379739, 0.330687,
		0.455375, -0.869517, 0.191243,
		42.048969, 32.046787, 34.957401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.683826, 32.467525, 35.524593>,  <41.730206, 32.655449, 34.823532>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.683826, 32.467525, 35.524593> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.996323, 32.232716, 35.439686>,  <42.183823, 32.091827, 35.388741>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.996323, 32.232716, 35.439686>,  <41.683826, 32.467525, 35.524593>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.996323, 32.232716, 35.439686> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461277, 0.313791, 0.829915,
		-0.420574, -0.746280, 0.515929,
		0.781243, -0.587027, -0.212270,
		42.230694, 32.056606, 35.376003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.820053, 32.153255, 36.195923>,  <41.683826, 32.467525, 35.524593>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.820053, 32.153255, 36.195923> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.152115, 32.088078, 35.982643>,  <42.351353, 32.048969, 35.854675>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.152115, 32.088078, 35.982643>,  <41.820053, 32.153255, 36.195923>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.152115, 32.088078, 35.982643> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547315, 0.420469, 0.723638,
		0.106280, -0.892555, 0.438234,
		0.830151, -0.162944, -0.533197,
		42.401161, 32.039196, 35.822685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.337353, 31.946341, 36.685337>,  <41.820053, 32.153255, 36.195923>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.337353, 31.946341, 36.685337> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.539204, 32.070320, 36.363026>,  <42.660316, 32.144707, 36.169640>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.539204, 32.070320, 36.363026>,  <42.337353, 31.946341, 36.685337>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.539204, 32.070320, 36.363026> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.708751, 0.384207, 0.591655,
		0.492970, -0.869664, -0.025795,
		0.504631, 0.309950, -0.805778,
		42.690594, 32.163307, 36.121292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.083225, 31.893175, 36.848423>,  <42.337353, 31.946341, 36.685337>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.083225, 31.893175, 36.848423> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.082104, 32.131897, 36.527470>,  <43.081429, 32.275131, 36.334900>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.082104, 32.131897, 36.527470>,  <43.083225, 31.893175, 36.848423>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.082104, 32.131897, 36.527470> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.687185, 0.584067, 0.432021,
		0.726477, -0.550171, -0.411756,
		-0.002807, 0.596806, -0.802381,
		43.081261, 32.310940, 36.286755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.757896, 31.918589, 36.537430>,  <43.083225, 31.893175, 36.848423>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.757896, 31.918589, 36.537430> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.560352, 32.257057, 36.457336>,  <43.441826, 32.460136, 36.409279>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.560352, 32.257057, 36.457336>,  <43.757896, 31.918589, 36.537430>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.560352, 32.257057, 36.457336> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.643234, 0.510465, 0.570679,
		0.585106, 0.153037, -0.796386,
		-0.493862, 0.846171, -0.200238,
		43.412193, 32.510910, 36.397266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.221577, 32.485592, 36.469944>,  <43.757896, 31.918589, 36.537430>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.221577, 32.485592, 36.469944> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.873566, 32.638786, 36.594124>,  <43.664761, 32.730701, 36.668633>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.873566, 32.638786, 36.594124>,  <44.221577, 32.485592, 36.469944>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.873566, 32.638786, 36.594124> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491993, 0.634167, 0.596469,
		0.031562, 0.671682, -0.740167,
		-0.870027, 0.382983, 0.310447,
		43.612556, 32.753681, 36.687260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.376556, 33.311100, 36.349289>,  <44.221577, 32.485592, 36.469944>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.376556, 33.311100, 36.349289> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.621273, 33.503922, 36.098423>,  <44.768101, 33.619614, 35.947903>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.621273, 33.503922, 36.098423>,  <44.376556, 33.311100, 36.349289>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.621273, 33.503922, 36.098423> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.752450, 0.599209, -0.273437,
		0.243992, 0.639197, 0.729311,
		0.611790, 0.482053, -0.627166,
		44.804810, 33.648537, 35.910275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.305462, 34.059906, 36.479374>,  <44.376556, 33.311100, 36.349289>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.305462, 34.059906, 36.479374> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.442249, 34.044811, 36.103794>,  <44.524323, 34.035755, 35.878445>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.442249, 34.044811, 36.103794>,  <44.305462, 34.059906, 36.479374>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.442249, 34.044811, 36.103794> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.769658, 0.562030, -0.302900,
		0.539150, 0.826256, 0.163154,
		0.341970, -0.037736, -0.938953,
		44.544842, 34.033489, 35.822109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.345287, 34.683147, 36.270138>,  <44.305462, 34.059906, 36.479374>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.345287, 34.683147, 36.270138> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.377285, 34.533836, 35.900433>,  <44.396484, 34.444248, 35.678608>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.377285, 34.533836, 35.900433>,  <44.345287, 34.683147, 36.270138>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.377285, 34.533836, 35.900433> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.655362, 0.678957, -0.330933,
		0.751066, 0.632201, -0.190320,
		0.079997, -0.373281, -0.924263,
		44.401283, 34.421852, 35.623154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.580807, 35.137463, 35.733795>,  <44.345287, 34.683147, 36.270138>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.580807, 35.137463, 35.733795> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.374466, 34.865086, 35.525864>,  <44.250664, 34.701660, 35.401104>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.374466, 34.865086, 35.525864>,  <44.580807, 35.137463, 35.733795>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.374466, 34.865086, 35.525864> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.574995, 0.725013, -0.379126,
		0.635044, 0.103327, -0.765534,
		-0.515848, -0.680940, -0.519828,
		44.219711, 34.660805, 35.369915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.345375, 35.477085, 35.155567>,  <44.580807, 35.137463, 35.733795>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.345375, 35.477085, 35.155567> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.103291, 35.159981, 35.126595>,  <43.958038, 34.969719, 35.109211>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.103291, 35.159981, 35.126595>,  <44.345375, 35.477085, 35.155567>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.103291, 35.159981, 35.126595> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.715058, 0.581357, -0.388220,
		0.349874, -0.183164, -0.918716,
		-0.605210, -0.792764, -0.072429,
		43.921726, 34.922153, 35.104866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.931850, 35.557354, 34.498287>,  <44.345375, 35.477085, 35.155567>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.931850, 35.557354, 34.498287> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.726162, 35.284279, 34.705948>,  <43.602749, 35.120434, 34.830544>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.726162, 35.284279, 34.705948>,  <43.931850, 35.557354, 34.498287>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.726162, 35.284279, 34.705948> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.848990, 0.319336, -0.421000,
		0.121626, -0.657242, -0.743801,
		-0.514221, -0.682684, 0.519152,
		43.571896, 35.079472, 34.861694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.636623, 35.195065, 34.011002>,  <43.931850, 35.557354, 34.498287>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.636623, 35.195065, 34.011002> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.417122, 35.131138, 34.339230>,  <43.285423, 35.092781, 34.536167>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.417122, 35.131138, 34.339230>,  <43.636623, 35.195065, 34.011002>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.417122, 35.131138, 34.339230> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.828536, 0.234726, -0.508361,
		-0.111362, -0.958833, -0.261223,
		-0.548750, -0.159820, 0.820568,
		43.252499, 35.083191, 34.585400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.178951, 34.652885, 33.918449>,  <43.636623, 35.195065, 34.011002>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.178951, 34.652885, 33.918449> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.018223, 34.868782, 34.214344>,  <42.921787, 34.998322, 34.391880>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.018223, 34.868782, 34.214344>,  <43.178951, 34.652885, 33.918449>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.018223, 34.868782, 34.214344> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.814385, 0.158744, -0.558191,
		-0.418710, -0.826726, 0.375774,
		-0.401819, 0.539745, 0.739741,
		42.897678, 35.030704, 34.436268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.479031, 34.424156, 33.929684>,  <43.178951, 34.652885, 33.918449>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.479031, 34.424156, 33.929684> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.489197, 34.776932, 34.117954>,  <42.495296, 34.988598, 34.230915>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.489197, 34.776932, 34.117954>,  <42.479031, 34.424156, 33.929684>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.489197, 34.776932, 34.117954> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.790408, 0.305992, -0.530683,
		-0.612054, -0.358536, 0.704871,
		0.025416, 0.881942, 0.470673,
		42.496822, 35.041515, 34.259155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.791134, 34.640266, 34.063530>,  <42.479031, 34.424156, 33.929684>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.791134, 34.640266, 34.063530> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.002079, 34.976906, 34.110168>,  <42.128647, 35.178890, 34.138149>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.002079, 34.976906, 34.110168>,  <41.791134, 34.640266, 34.063530>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.002079, 34.976906, 34.110168> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.642229, 0.484700, -0.593807,
		-0.556261, 0.238275, 0.796115,
		0.527367, 0.841600, 0.116593,
		42.160290, 35.229385, 34.145145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.318241, 35.129559, 34.333458>,  <41.791134, 34.640266, 34.063530>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.318241, 35.129559, 34.333458> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.601871, 35.368362, 34.183369>,  <41.772049, 35.511642, 34.093315>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.601871, 35.368362, 34.183369>,  <41.318241, 35.129559, 34.333458>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.601871, 35.368362, 34.183369> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.704066, 0.570194, -0.423284,
		-0.038752, 0.564324, 0.824644,
		0.709076, 0.597007, -0.375225,
		41.814594, 35.547466, 34.070801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.092751, 35.742367, 34.494137>,  <41.318241, 35.129559, 34.333458>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.092751, 35.742367, 34.494137> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.343174, 35.804012, 34.188377>,  <41.493427, 35.841000, 34.004921>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.343174, 35.804012, 34.188377>,  <41.092751, 35.742367, 34.494137>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.343174, 35.804012, 34.188377> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.675043, 0.597828, -0.432341,
		0.390346, 0.786670, 0.478311,
		0.626057, 0.154118, -0.764395,
		41.530991, 35.850246, 33.959061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.712914, 36.321373, 34.190487>,  <41.092751, 35.742367, 34.494137>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.712914, 36.321373, 34.190487> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.977978, 36.194801, 33.918972>,  <41.137016, 36.118858, 33.756062>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.977978, 36.194801, 33.918972>,  <40.712914, 36.321373, 34.190487>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.977978, 36.194801, 33.918972> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.603968, 0.310142, -0.734190,
		0.442839, 0.896486, 0.014407,
		0.662659, -0.316426, -0.678791,
		41.176777, 36.099873, 33.715336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.891479, 36.928585, 33.695599>,  <40.712914, 36.321373, 34.190487>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.891479, 36.928585, 33.695599> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.920410, 36.555916, 33.553192>,  <40.937771, 36.332314, 33.467747>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.920410, 36.555916, 33.553192>,  <40.891479, 36.928585, 33.695599>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.920410, 36.555916, 33.553192> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.764421, 0.177498, -0.619802,
		0.640647, 0.316981, -0.699353,
		0.072331, -0.931675, -0.356021,
		40.942108, 36.276413, 33.446384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.629593, 37.005356, 33.040630>,  <40.891479, 36.928585, 33.695599>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.629593, 37.005356, 33.040630> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.675133, 36.608040, 33.032406>,  <40.702457, 36.369652, 33.027470>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.675133, 36.608040, 33.032406>,  <40.629593, 37.005356, 33.040630>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.675133, 36.608040, 33.032406> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.652881, -0.059198, -0.755143,
		0.748856, 0.099394, -0.655237,
		0.113845, -0.993286, -0.020562,
		40.709286, 36.310055, 33.026237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.713852, 36.820389, 32.368092>,  <40.629593, 37.005356, 33.040630>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.713852, 36.820389, 32.368092> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.582314, 36.490005, 32.551247>,  <40.503391, 36.291775, 32.661140>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.582314, 36.490005, 32.551247>,  <40.713852, 36.820389, 32.368092>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.582314, 36.490005, 32.551247> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526349, -0.242262, -0.815025,
		0.784101, -0.509026, -0.355073,
		-0.328848, -0.825955, 0.457884,
		40.483658, 36.242218, 32.688610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.787380, 36.308449, 31.914459>,  <40.713852, 36.820389, 32.368092>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.787380, 36.308449, 31.914459> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.530437, 36.147694, 32.175491>,  <40.376270, 36.051239, 32.332111>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.530437, 36.147694, 32.175491>,  <40.787380, 36.308449, 31.914459>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.530437, 36.147694, 32.175491> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.591772, -0.280989, -0.755547,
		0.487014, -0.871511, -0.057330,
		-0.642358, -0.401888, 0.652581,
		40.337730, 36.027126, 32.371265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.512318, 35.717960, 31.637663>,  <40.787380, 36.308449, 31.914459>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.512318, 35.717960, 31.637663> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.239300, 35.816738, 31.912804>,  <40.075489, 35.876007, 32.077888>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.239300, 35.816738, 31.912804>,  <40.512318, 35.717960, 31.637663>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.239300, 35.816738, 31.912804> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.728380, -0.307008, -0.612543,
		0.059912, -0.919110, 0.389419,
		-0.682549, 0.246946, 0.687855,
		40.034534, 35.890823, 32.119160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.068699, 35.110481, 31.786985>,  <40.512318, 35.717960, 31.637663>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.068699, 35.110481, 31.786985> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.860626, 35.435570, 31.891979>,  <39.735783, 35.630623, 31.954975>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.860626, 35.435570, 31.891979>,  <40.068699, 35.110481, 31.786985>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.860626, 35.435570, 31.891979> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.840139, -0.431686, -0.328349,
		-0.153545, -0.391324, 0.907353,
		-0.520182, 0.812719, 0.262484,
		39.704571, 35.679386, 31.970724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.402145, 34.881966, 32.087280>,  <40.068699, 35.110481, 31.786985>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.402145, 34.881966, 32.087280> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.353016, 35.258415, 31.961292>,  <39.323536, 35.484283, 31.885700>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.353016, 35.258415, 31.961292>,  <39.402145, 34.881966, 32.087280>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.353016, 35.258415, 31.961292> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.856929, -0.260658, -0.444669,
		-0.500586, 0.215287, 0.838490,
		-0.122828, 0.941121, -0.314968,
		39.316166, 35.540752, 31.866802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<39.588001, 37.727692, 41.137005> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.356617, 37.446987, 41.303341>,  <39.217789, 37.278564, 41.403141>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.356617, 37.446987, 41.303341>,  <39.588001, 37.727692, 41.137005>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.356617, 37.446987, 41.303341> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415171, -0.692102, -0.590447,
		0.702155, -0.168904, 0.691701,
		-0.578457, -0.701759, 0.415839,
		39.183079, 37.236458, 41.428093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.979847, 37.054283, 41.168411>,  <39.588001, 37.727692, 41.137005>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.979847, 37.054283, 41.168411> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.596607, 36.944305, 41.200539>,  <39.366665, 36.878319, 41.219814>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.596607, 36.944305, 41.200539>,  <39.979847, 37.054283, 41.168411>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.596607, 36.944305, 41.200539> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139183, -0.691956, -0.708396,
		0.250348, -0.667535, 0.701230,
		-0.958099, -0.274944, 0.080321,
		39.309177, 36.861824, 41.224636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.973576, 36.275635, 41.300335>,  <39.979847, 37.054283, 41.168411>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.973576, 36.275635, 41.300335> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.624516, 36.396843, 41.147148>,  <39.415081, 36.469566, 41.055237>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.624516, 36.396843, 41.147148>,  <39.973576, 36.275635, 41.300335>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.624516, 36.396843, 41.147148> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019034, -0.762505, -0.646703,
		-0.487979, -0.571634, 0.659630,
		-0.872648, 0.303021, -0.382967,
		39.362720, 36.487751, 41.032257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.674370, 35.673779, 41.167023>,  <39.973576, 36.275635, 41.300335>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.674370, 35.673779, 41.167023> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.454823, 35.932468, 40.955177>,  <39.323093, 36.087685, 40.828072>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.454823, 35.932468, 40.955177>,  <39.674370, 35.673779, 41.167023>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.454823, 35.932468, 40.955177> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062816, -0.663695, -0.745362,
		-0.833546, -0.375836, 0.404904,
		-0.548867, 0.646728, -0.529612,
		39.290161, 36.126488, 40.796295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.150284, 35.290833, 40.968159>,  <39.674370, 35.673779, 41.167023>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.150284, 35.290833, 40.968159> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.233215, 35.587433, 40.712914>,  <39.282974, 35.765392, 40.559765>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.233215, 35.587433, 40.712914>,  <39.150284, 35.290833, 40.968159>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.233215, 35.587433, 40.712914> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012465, -0.654238, -0.756186,
		-0.978193, 0.148822, -0.144883,
		0.207325, 0.741502, -0.638116,
		39.295414, 35.809883, 40.521481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.781002, 35.155048, 40.437351>,  <39.150284, 35.290833, 40.968159>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.781002, 35.155048, 40.437351> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.054180, 35.411663, 40.297623>,  <39.218086, 35.565632, 40.213787>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.054180, 35.411663, 40.297623>,  <38.781002, 35.155048, 40.437351>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.054180, 35.411663, 40.297623> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083690, -0.543779, -0.835045,
		-0.725663, 0.541053, -0.425060,
		0.682942, 0.641534, -0.349320,
		39.259064, 35.604122, 40.192825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.496155, 35.380032, 39.756603>,  <38.781002, 35.155048, 40.437351>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.496155, 35.380032, 39.756603> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.893147, 35.428310, 39.764809>,  <39.131340, 35.457279, 39.769730>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.893147, 35.428310, 39.764809>,  <38.496155, 35.380032, 39.756603>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.893147, 35.428310, 39.764809> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050778, -0.253398, -0.966028,
		-0.111399, 0.959803, -0.257621,
		0.992478, 0.120696, 0.020509,
		39.190891, 35.464520, 39.770962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.749245, 35.714306, 39.188419>,  <38.496155, 35.380032, 39.756603>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.749245, 35.714306, 39.188419> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.107147, 35.590031, 39.316719>,  <39.321888, 35.515465, 39.393700>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.107147, 35.590031, 39.316719>,  <38.749245, 35.714306, 39.188419>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.107147, 35.590031, 39.316719> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324309, -0.041655, -0.945034,
		0.306975, 0.949598, 0.063489,
		0.894757, -0.310691, 0.320750,
		39.375576, 35.496822, 39.412945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.133369, 36.030396, 38.809917>,  <38.749245, 35.714306, 39.188419>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.133369, 36.030396, 38.809917> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.357533, 35.730789, 38.951290>,  <39.492031, 35.551025, 39.036114>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.357533, 35.730789, 38.951290>,  <39.133369, 36.030396, 38.809917>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.357533, 35.730789, 38.951290> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289688, -0.222517, -0.930896,
		0.775903, 0.624066, 0.092281,
		0.560407, -0.749018, 0.353436,
		39.525654, 35.506084, 39.057320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.790741, 36.104435, 38.606167>,  <39.133369, 36.030396, 38.809917>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.790741, 36.104435, 38.606167> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.760544, 35.711193, 38.672867>,  <39.742424, 35.475246, 38.712887>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.760544, 35.711193, 38.672867>,  <39.790741, 36.104435, 38.606167>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.760544, 35.711193, 38.672867> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303632, -0.181951, -0.935255,
		0.949794, -0.019977, 0.312239,
		-0.075496, -0.983105, 0.166750,
		39.737896, 35.416264, 38.722893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.413078, 35.880589, 38.337784>,  <39.790741, 36.104435, 38.606167>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.413078, 35.880589, 38.337784> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.176472, 35.558327, 38.350586>,  <40.034508, 35.364967, 38.358269>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.176472, 35.558327, 38.350586>,  <40.413078, 35.880589, 38.337784>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.176472, 35.558327, 38.350586> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421008, -0.342475, -0.839919,
		0.687649, -0.483349, 0.541768,
		-0.591516, -0.805658, 0.032008,
		39.999016, 35.316628, 38.360188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.847301, 35.329151, 38.188854>,  <40.413078, 35.880589, 38.337784>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.847301, 35.329151, 38.188854> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.480728, 35.182194, 38.125401>,  <40.260784, 35.094021, 38.087330>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.480728, 35.182194, 38.125401>,  <40.847301, 35.329151, 38.188854>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.480728, 35.182194, 38.125401> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249060, -0.213363, -0.944693,
		0.313229, -0.905261, 0.287037,
		-0.916437, -0.367395, -0.158633,
		40.205795, 35.071976, 38.077812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.860115, 34.540600, 37.847240>,  <40.847301, 35.329151, 38.188854>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.860115, 34.540600, 37.847240> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.538685, 34.763218, 37.762836>,  <40.345825, 34.896790, 37.712193>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.538685, 34.763218, 37.762836>,  <40.860115, 34.540600, 37.847240>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.538685, 34.763218, 37.762836> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145692, -0.159815, -0.976337,
		-0.577096, -0.815303, 0.047339,
		-0.803576, 0.556543, -0.211012,
		40.297611, 34.930180, 37.699532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.753273, 33.871223, 38.156635>,  <40.860115, 34.540600, 37.847240>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.753273, 33.871223, 38.156635> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.571091, 33.523228, 38.081093>,  <40.461781, 33.314430, 38.035767>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.571091, 33.523228, 38.081093>,  <40.753273, 33.871223, 38.156635>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.571091, 33.523228, 38.081093> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465771, 0.052077, 0.883372,
		-0.758692, 0.490307, -0.428936,
		-0.455460, -0.869993, -0.188860,
		40.434452, 33.262230, 38.024433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.954937, 33.961224, 38.159271>,  <40.753273, 33.871223, 38.156635>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.954937, 33.961224, 38.159271> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.071404, 33.593925, 38.266640>,  <40.141285, 33.373547, 38.331059>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.071404, 33.593925, 38.266640>,  <39.954937, 33.961224, 38.159271>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.071404, 33.593925, 38.266640> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.795072, -0.076221, 0.601706,
		-0.532055, -0.388607, -0.752264,
		0.291166, -0.918245, 0.268417,
		40.158752, 33.318451, 38.347164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.392559, 33.511173, 38.049683>,  <39.954937, 33.961224, 38.159271>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.392559, 33.511173, 38.049683> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.628296, 33.342617, 38.325394>,  <39.769737, 33.241482, 38.490822>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.628296, 33.342617, 38.325394>,  <39.392559, 33.511173, 38.049683>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.628296, 33.342617, 38.325394> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.773457, -0.047887, 0.632037,
		-0.233327, -0.905613, -0.354151,
		0.589340, -0.421392, 0.689280,
		39.805099, 33.216198, 38.532177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.074661, 32.884602, 38.256058>,  <39.392559, 33.511173, 38.049683>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.074661, 32.884602, 38.256058> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.318584, 32.988205, 38.555672>,  <39.464939, 33.050369, 38.735439>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.318584, 32.988205, 38.555672>,  <39.074661, 32.884602, 38.256058>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.318584, 32.988205, 38.555672> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.729065, -0.187308, 0.658316,
		0.310812, -0.947538, 0.074616,
		0.609803, 0.259013, 0.749034,
		39.501526, 33.065910, 38.780380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.984612, 32.324104, 38.777210>,  <39.074661, 32.884602, 38.256058>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.984612, 32.324104, 38.777210> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.151615, 32.625637, 38.980156>,  <39.251820, 32.806557, 39.101921>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.151615, 32.625637, 38.980156>,  <38.984612, 32.324104, 38.777210>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.151615, 32.625637, 38.980156> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.686273, -0.104372, 0.719817,
		0.595578, -0.648720, 0.473760,
		0.417512, 0.753836, 0.507361,
		39.276867, 32.851788, 39.132362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.040668, 32.112152, 39.419472>,  <38.984612, 32.324104, 38.777210>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.040668, 32.112152, 39.419472> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.096863, 32.504848, 39.470764>,  <39.130581, 32.740467, 39.501541>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.096863, 32.504848, 39.470764>,  <39.040668, 32.112152, 39.419472>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.096863, 32.504848, 39.470764> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492000, -0.043171, 0.869524,
		0.859186, -0.185245, 0.476953,
		0.140485, 0.981744, 0.128233,
		39.139008, 32.799370, 39.509235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.310127, 32.215260, 40.147560>,  <39.040668, 32.112152, 39.419472>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.310127, 32.215260, 40.147560> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.130508, 32.552364, 40.028831>,  <39.022736, 32.754627, 39.957596>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.130508, 32.552364, 40.028831>,  <39.310127, 32.215260, 40.147560>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.130508, 32.552364, 40.028831> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.580852, -0.022915, 0.813687,
		0.678945, 0.537793, 0.499812,
		-0.449048, 0.842765, -0.296820,
		38.995792, 32.805195, 39.939785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.271259, 32.492054, 40.770638>,  <39.310127, 32.215260, 40.147560>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.271259, 32.492054, 40.770638> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.007217, 32.666649, 40.526100>,  <38.848793, 32.771404, 40.379379>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.007217, 32.666649, 40.526100>,  <39.271259, 32.492054, 40.770638>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.007217, 32.666649, 40.526100> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.606805, 0.169863, 0.776489,
		0.442769, 0.883532, 0.152733,
		-0.660109, 0.436484, -0.611341,
		38.809185, 32.797596, 40.342697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.096294, 33.089336, 41.068539>,  <39.271259, 32.492054, 40.770638>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.096294, 33.089336, 41.068539> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.792912, 33.014553, 40.818806>,  <38.610882, 32.969685, 40.668968>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.792912, 33.014553, 40.818806>,  <39.096294, 33.089336, 41.068539>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.792912, 33.014553, 40.818806> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.635973, 0.003001, 0.771705,
		-0.142402, 0.982364, -0.121176,
		-0.758459, -0.186957, -0.624330,
		38.565372, 32.958466, 40.631508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.712162, 33.743443, 40.842567>,  <39.096294, 33.089336, 41.068539>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.712162, 33.743443, 40.842567> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.496269, 33.407288, 40.862339>,  <38.366734, 33.205597, 40.874203>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.496269, 33.407288, 40.862339>,  <38.712162, 33.743443, 40.842567>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.496269, 33.407288, 40.862339> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524209, 0.381451, 0.761381,
		-0.658706, 0.385033, -0.646419,
		-0.539733, -0.840384, 0.049426,
		38.334351, 33.155174, 40.877167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.106960, 34.015991, 41.000923>,  <38.712162, 33.743443, 40.842567>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.106960, 34.015991, 41.000923> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.013355, 33.629360, 41.042828>,  <37.957191, 33.397381, 41.067970>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.013355, 33.629360, 41.042828>,  <38.106960, 34.015991, 41.000923>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.013355, 33.629360, 41.042828> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.758664, 0.248927, 0.602050,
		-0.608003, 0.061409, -0.791556,
		-0.234011, -0.966574, 0.104759,
		37.943153, 33.339390, 41.074257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.420864, 33.966972, 40.937126>,  <38.106960, 34.015991, 41.000923>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.420864, 33.966972, 40.937126> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.489681, 33.616692, 41.117592>,  <37.530972, 33.406525, 41.225872>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.489681, 33.616692, 41.117592>,  <37.420864, 33.966972, 40.937126>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.489681, 33.616692, 41.117592> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.737271, 0.189283, 0.648540,
		-0.653325, -0.444205, -0.613065,
		0.172042, -0.875702, 0.451162,
		37.541294, 33.353981, 41.252941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.753132, 33.784046, 41.225082>,  <37.420864, 33.966972, 40.937126>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.753132, 33.784046, 41.225082> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.020267, 33.570835, 41.432877>,  <37.180550, 33.442909, 41.557552>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.020267, 33.570835, 41.432877>,  <36.753132, 33.784046, 41.225082>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.020267, 33.570835, 41.432877> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.584678, 0.056204, 0.809316,
		-0.460582, -0.844231, -0.274112,
		0.667844, -0.533024, 0.519490,
		37.220619, 33.410927, 41.588722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.391853, 33.527081, 41.660969>,  <36.753132, 33.784046, 41.225082>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.391853, 33.527081, 41.660969> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.746555, 33.450714, 41.829361>,  <36.959377, 33.404896, 41.930397>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.746555, 33.450714, 41.829361>,  <36.391853, 33.527081, 41.660969>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.746555, 33.450714, 41.829361> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395131, 0.159549, 0.904664,
		-0.239881, -0.968553, 0.066044,
		0.886752, -0.190915, 0.420978,
		37.012581, 33.393440, 41.955654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.270714, 32.895969, 42.191483>,  <36.391853, 33.527081, 41.660969>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.270714, 32.895969, 42.191483> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.588909, 33.131687, 42.247959>,  <36.779827, 33.273117, 42.281845>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.588909, 33.131687, 42.247959>,  <36.270714, 32.895969, 42.191483>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.588909, 33.131687, 42.247959> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355959, 0.265854, 0.895888,
		0.490407, -0.762923, 0.421248,
		0.795484, 0.589296, 0.141193,
		36.827553, 33.308475, 42.290318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.932945, 32.302292, 42.598366>,  <36.270714, 32.895969, 42.191483>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.932945, 32.302292, 42.598366> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.567707, 32.407330, 42.473587>,  <35.348564, 32.470352, 42.398720>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.567707, 32.407330, 42.473587>,  <35.932945, 32.302292, 42.598366>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.567707, 32.407330, 42.473587> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139691, -0.517286, -0.844335,
		-0.383080, -0.814532, 0.435647,
		-0.913092, 0.262592, -0.311944,
		35.293781, 32.486107, 42.380005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.831821, 31.833046, 42.104179>,  <35.932945, 32.302292, 42.598366>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.831821, 31.833046, 42.104179> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.524944, 32.071308, 42.009010>,  <35.340816, 32.214268, 41.951908>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.524944, 32.071308, 42.009010>,  <35.831821, 31.833046, 42.104179>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.524944, 32.071308, 42.009010> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043410, -0.418301, -0.907271,
		-0.639946, -0.685723, 0.346775,
		-0.767192, 0.595658, -0.237922,
		35.294785, 32.250004, 41.937634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.246521, 31.408209, 41.758915>,  <35.831821, 31.833046, 42.104179>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.246521, 31.408209, 41.758915> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.189339, 31.791389, 41.659397>,  <35.155029, 32.021297, 41.599686>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.189339, 31.791389, 41.659397>,  <35.246521, 31.408209, 41.758915>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.189339, 31.791389, 41.659397> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035216, -0.246290, -0.968556,
		-0.989103, -0.147220, 0.001473,
		-0.142954, 0.957950, -0.248790,
		35.146454, 32.078773, 41.584759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.679699, 31.421217, 41.374275>,  <35.246521, 31.408209, 41.758915>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.679699, 31.421217, 41.374275> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.872566, 31.759434, 41.282555>,  <34.988285, 31.962364, 41.227524>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.872566, 31.759434, 41.282555>,  <34.679699, 31.421217, 41.374275>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.872566, 31.759434, 41.282555> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026899, -0.275895, -0.960811,
		-0.875666, 0.457104, -0.155772,
		0.482167, 0.845540, -0.229297,
		35.017216, 32.013096, 41.213764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.430622, 31.556402, 40.724129>,  <34.679699, 31.421217, 41.374275>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.430622, 31.556402, 40.724129> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.746109, 31.802212, 40.730808>,  <34.935402, 31.949697, 40.734818>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.746109, 31.802212, 40.730808>,  <34.430622, 31.556402, 40.724129>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.746109, 31.802212, 40.730808> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109379, -0.113548, -0.987493,
		-0.604943, 0.780683, -0.156774,
		0.788720, 0.614525, 0.016700,
		34.982723, 31.986568, 40.735817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.390324, 32.119370, 40.176090>,  <34.430622, 31.556402, 40.724129>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.390324, 32.119370, 40.176090> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.781666, 32.117100, 40.258839>,  <35.016472, 32.115738, 40.308487>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.781666, 32.117100, 40.258839>,  <34.390324, 32.119370, 40.176090>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.781666, 32.117100, 40.258839> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206317, -0.051454, -0.977131,
		0.016186, 0.998659, -0.049170,
		0.978351, -0.005671, 0.206873,
		35.075172, 32.115398, 40.320900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.689919, 32.558426, 39.670185>,  <34.390324, 32.119370, 40.176090>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.689919, 32.558426, 39.670185> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.990532, 32.333088, 39.807503>,  <35.170898, 32.197887, 39.889893>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.990532, 32.333088, 39.807503>,  <34.689919, 32.558426, 39.670185>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.990532, 32.333088, 39.807503> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266826, -0.216340, -0.939149,
		0.603330, 0.797397, -0.012271,
		0.751529, -0.563343, 0.343291,
		35.215992, 32.164085, 39.910492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.326183, 32.704422, 39.235683>,  <34.689919, 32.558426, 39.670185>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.326183, 32.704422, 39.235683> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.440826, 32.369450, 39.421833>,  <35.509613, 32.168468, 39.533524>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.440826, 32.369450, 39.421833>,  <35.326183, 32.704422, 39.235683>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.440826, 32.369450, 39.421833> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496435, -0.285639, -0.819733,
		0.819395, 0.465969, 0.333862,
		0.286607, -0.837426, 0.465375,
		35.526810, 32.118221, 39.561447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.063900, 32.662327, 39.351994>,  <35.326183, 32.704422, 39.235683>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.063900, 32.662327, 39.351994> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.974571, 32.273617, 39.382408>,  <35.920975, 32.040390, 39.400658>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.974571, 32.273617, 39.382408>,  <36.063900, 32.662327, 39.351994>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.974571, 32.273617, 39.382408> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611816, -0.200475, -0.765174,
		0.758820, -0.124359, 0.639317,
		-0.223324, -0.971774, 0.076040,
		35.907574, 31.982084, 39.405220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.716099, 32.182201, 39.481731>,  <36.063900, 32.662327, 39.351994>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.716099, 32.182201, 39.481731> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.427990, 31.972591, 39.299915>,  <36.255127, 31.846825, 39.190826>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.427990, 31.972591, 39.299915>,  <36.716099, 32.182201, 39.481731>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.427990, 31.972591, 39.299915> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.630048, -0.220003, -0.744740,
		0.290262, -0.822798, 0.488623,
		-0.720268, -0.524025, -0.454544,
		36.211910, 31.815384, 39.163551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.074829, 31.638937, 39.125687>,  <36.716099, 32.182201, 39.481731>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.074829, 31.638937, 39.125687> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.713932, 31.639061, 38.953194>,  <36.497395, 31.639135, 38.849697>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.713932, 31.639061, 38.953194>,  <37.074829, 31.638937, 39.125687>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.713932, 31.639061, 38.953194> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417519, -0.249586, -0.873719,
		-0.107901, -0.968353, 0.225056,
		-0.902239, 0.000310, -0.431237,
		36.443260, 31.639154, 38.823822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.975872, 30.952269, 38.563007>,  <37.074829, 31.638937, 39.125687>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.975872, 30.952269, 38.563007> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.772781, 31.292847, 38.510456>,  <36.650928, 31.497192, 38.478924>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.772781, 31.292847, 38.510456>,  <36.975872, 30.952269, 38.563007>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.772781, 31.292847, 38.510456> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309281, 0.037805, -0.950219,
		-0.804091, -0.523081, -0.282530,
		-0.507722, 0.851444, -0.131381,
		36.620464, 31.548281, 38.471043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<34.534546, 32.781593, 46.053280> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.336716, 33.066174, 45.853584>,  <34.218018, 33.236919, 45.733768>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.336716, 33.066174, 45.853584>,  <34.534546, 32.781593, 46.053280>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.336716, 33.066174, 45.853584> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089574, -0.529624, -0.843490,
		-0.864506, -0.461888, 0.198212,
		-0.494576, 0.711448, -0.499236,
		34.188343, 33.279610, 45.703812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.225128, 32.427647, 45.466225>,  <34.534546, 32.781593, 46.053280>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.225128, 32.427647, 45.466225> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.137329, 32.804497, 45.364857>,  <34.084652, 33.030605, 45.304035>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.137329, 32.804497, 45.364857>,  <34.225128, 32.427647, 45.466225>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.137329, 32.804497, 45.364857> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063165, -0.272936, -0.959956,
		-0.973567, -0.194697, 0.119417,
		-0.219494, 0.942125, -0.253424,
		34.071480, 33.087135, 45.288830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.557869, 32.544819, 45.047001>,  <34.225128, 32.427647, 45.466225>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.557869, 32.544819, 45.047001> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.790287, 32.858627, 44.960369>,  <33.929737, 33.046913, 44.908390>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.790287, 32.858627, 44.960369>,  <33.557869, 32.544819, 45.047001>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.790287, 32.858627, 44.960369> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140467, -0.165448, -0.976164,
		-0.801656, 0.597620, 0.014066,
		0.581048, 0.784524, -0.216578,
		33.964600, 33.093983, 44.895397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.319824, 32.747940, 44.346661>,  <33.557869, 32.544819, 45.047001>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.319824, 32.747940, 44.346661> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.674534, 32.931499, 44.368710>,  <33.887360, 33.041637, 44.381939>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.674534, 32.931499, 44.368710>,  <33.319824, 32.747940, 44.346661>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.674534, 32.931499, 44.368710> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117124, -0.107733, -0.987257,
		-0.447115, 0.881931, -0.149283,
		0.886775, 0.458902, 0.055126,
		33.940567, 33.069172, 44.385246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.418892, 33.135101, 43.758839>,  <33.319824, 32.747940, 44.346661>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.418892, 33.135101, 43.758839> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.792221, 33.091503, 43.895679>,  <34.016220, 33.065346, 43.977783>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.792221, 33.091503, 43.895679>,  <33.418892, 33.135101, 43.758839>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.792221, 33.091503, 43.895679> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324798, -0.149791, -0.933846,
		0.153027, 0.982692, -0.104402,
		0.933322, -0.108994, 0.342098,
		34.072216, 33.058804, 43.998310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.929695, 33.699505, 43.401165>,  <33.418892, 33.135101, 43.758839>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.929695, 33.699505, 43.401165> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.134586, 33.379555, 43.526268>,  <34.257523, 33.187584, 43.601330>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.134586, 33.379555, 43.526268>,  <33.929695, 33.699505, 43.401165>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.134586, 33.379555, 43.526268> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472609, -0.041548, -0.880292,
		0.717122, 0.598721, 0.356748,
		0.512227, -0.799879, 0.312756,
		34.288254, 33.139591, 43.620094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.661114, 33.755413, 43.044067>,  <33.929695, 33.699505, 43.401165>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.661114, 33.755413, 43.044067> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.637955, 33.379082, 43.177628>,  <34.624058, 33.153282, 43.257763>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.637955, 33.379082, 43.177628>,  <34.661114, 33.755413, 43.044067>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.637955, 33.379082, 43.177628> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411951, -0.327172, -0.850443,
		0.909364, 0.088310, 0.406519,
		-0.057899, -0.940829, 0.333898,
		34.620586, 33.096832, 43.277798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.338314, 33.558365, 43.082310>,  <34.661114, 33.755413, 43.044067>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.338314, 33.558365, 43.082310> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.105274, 33.235699, 43.042572>,  <34.965450, 33.042099, 43.018730>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.105274, 33.235699, 43.042572>,  <35.338314, 33.558365, 43.082310>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.105274, 33.235699, 43.042572> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590215, -0.335868, -0.734056,
		0.558769, -0.486298, 0.671782,
		-0.582600, -0.806664, -0.099348,
		34.930492, 32.993698, 43.012768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.763542, 32.929390, 42.985115>,  <35.338314, 33.558365, 43.082310>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.763542, 32.929390, 42.985115> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.397854, 32.828796, 42.858017>,  <35.178440, 32.768440, 42.781757>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.397854, 32.828796, 42.858017>,  <35.763542, 32.929390, 42.985115>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.397854, 32.828796, 42.858017> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400700, -0.444249, -0.801300,
		0.060359, -0.859882, 0.506911,
		-0.914219, -0.251486, -0.317740,
		35.123589, 32.753349, 42.762695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.444183, 32.734364, 42.945530>,  <35.763542, 32.929390, 42.985115>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.444183, 32.734364, 42.945530> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.606384, 33.081856, 42.831772>,  <36.703705, 33.290352, 42.763519>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.606384, 33.081856, 42.831772>,  <36.444183, 32.734364, 42.945530>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.606384, 33.081856, 42.831772> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239200, 0.401126, 0.884240,
		0.882241, -0.290536, 0.370458,
		0.405504, 0.868727, -0.284394,
		36.728035, 33.342472, 42.746452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.719845, 32.860542, 43.516129>,  <36.444183, 32.734364, 42.945530>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.719845, 32.860542, 43.516129> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.712639, 33.197109, 43.300098>,  <36.708317, 33.399052, 43.170479>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.712639, 33.197109, 43.300098>,  <36.719845, 32.860542, 43.516129>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.712639, 33.197109, 43.300098> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108586, 0.535325, 0.837637,
		0.993924, 0.073732, 0.081725,
		-0.018011, 0.841422, -0.540079,
		36.707237, 33.449535, 43.138073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.282986, 33.264217, 43.728630>,  <36.719845, 32.860542, 43.516129>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.282986, 33.264217, 43.728630> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.996727, 33.496731, 43.573734>,  <36.824974, 33.636238, 43.480797>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.996727, 33.496731, 43.573734>,  <37.282986, 33.264217, 43.728630>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.996727, 33.496731, 43.573734> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046208, 0.592608, 0.804164,
		0.696935, 0.557602, -0.450956,
		-0.715644, 0.581288, -0.387244,
		36.782032, 33.671116, 43.457561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.502087, 33.958370, 43.885010>,  <37.282986, 33.264217, 43.728630>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.502087, 33.958370, 43.885010> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.109005, 33.997108, 43.821884>,  <36.873154, 34.020351, 43.784008>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.109005, 33.997108, 43.821884>,  <37.502087, 33.958370, 43.885010>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.109005, 33.997108, 43.821884> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041933, 0.713764, 0.699130,
		0.180352, 0.693658, -0.697361,
		-0.982708, 0.096847, -0.157816,
		36.814194, 34.026161, 43.774540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.345917, 34.661385, 43.924721>,  <37.502087, 33.958370, 43.885010>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.345917, 34.661385, 43.924721> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.982189, 34.506176, 43.984833>,  <36.763954, 34.413052, 44.020901>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.982189, 34.506176, 43.984833>,  <37.345917, 34.661385, 43.924721>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.982189, 34.506176, 43.984833> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208324, 0.737159, 0.642804,
		-0.360198, 0.553207, -0.751145,
		-0.909318, -0.388019, 0.150277,
		36.709393, 34.389771, 44.029915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.937401, 35.273918, 43.888870>,  <37.345917, 34.661385, 43.924721>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.937401, 35.273918, 43.888870> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.728691, 34.984001, 44.068836>,  <36.603466, 34.810051, 44.176815>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.728691, 34.984001, 44.068836>,  <36.937401, 35.273918, 43.888870>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.728691, 34.984001, 44.068836> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322966, 0.655972, 0.682198,
		-0.789583, 0.210649, -0.576355,
		-0.521777, -0.724795, 0.449912,
		36.572159, 34.766563, 44.203812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.435490, 35.656200, 44.231358>,  <36.937401, 35.273918, 43.888870>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.435490, 35.656200, 44.231358> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.428486, 35.293228, 44.399292>,  <36.424286, 35.075443, 44.500053>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.428486, 35.293228, 44.399292>,  <36.435490, 35.656200, 44.231358>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.428486, 35.293228, 44.399292> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197990, 0.414735, 0.888141,
		-0.980048, -0.067576, -0.186923,
		-0.017507, -0.907430, 0.419840,
		36.423233, 35.021000, 44.525246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.708836, 35.519478, 44.573154>,  <36.435490, 35.656200, 44.231358>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.708836, 35.519478, 44.573154> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.002167, 35.303268, 44.738106>,  <36.178165, 35.173542, 44.837078>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.002167, 35.303268, 44.738106>,  <35.708836, 35.519478, 44.573154>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.002167, 35.303268, 44.738106> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245242, 0.355409, 0.901965,
		-0.634100, -0.762571, 0.128072,
		0.733330, -0.540528, 0.412379,
		36.222164, 35.141109, 44.861820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.436775, 35.380230, 45.284492>,  <35.708836, 35.519478, 44.573154>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.436775, 35.380230, 45.284492> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.826611, 35.290634, 45.285126>,  <36.060513, 35.236877, 45.285503>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.826611, 35.290634, 45.285126>,  <35.436775, 35.380230, 45.284492>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.826611, 35.290634, 45.285126> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044233, 0.199367, 0.978926,
		-0.219588, -0.953981, 0.204209,
		0.974590, -0.223993, 0.001581,
		36.118988, 35.223438, 45.285599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.527988, 34.986683, 45.950806>,  <35.436775, 35.380230, 45.284492>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.527988, 34.986683, 45.950806> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.889580, 35.123211, 45.847790>,  <36.106533, 35.205128, 45.785980>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.889580, 35.123211, 45.847790>,  <35.527988, 34.986683, 45.950806>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.889580, 35.123211, 45.847790> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095486, 0.425970, 0.899684,
		0.416752, -0.837898, 0.352485,
		0.903991, 0.341287, -0.257532,
		36.160774, 35.225605, 45.770527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.716354, 34.928642, 46.603592>,  <35.527988, 34.986683, 45.950806>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.716354, 34.928642, 46.603592> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.979691, 35.122002, 46.372799>,  <36.137691, 35.238018, 46.234322>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.979691, 35.122002, 46.372799>,  <35.716354, 34.928642, 46.603592>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.979691, 35.122002, 46.372799> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281664, 0.552636, 0.784384,
		0.698035, -0.678908, 0.227666,
		0.658341, 0.483403, -0.576983,
		36.177193, 35.267021, 46.199703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.438828, 34.911987, 46.920822>,  <35.716354, 34.928642, 46.603592>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.438828, 34.911987, 46.920822> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.399956, 35.236774, 46.690601>,  <36.376633, 35.431648, 46.552467>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.399956, 35.236774, 46.690601>,  <36.438828, 34.911987, 46.920822>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.399956, 35.236774, 46.690601> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098305, 0.583295, 0.806289,
		0.990400, 0.021779, -0.136507,
		-0.097184, 0.811968, -0.575555,
		36.370800, 35.480366, 46.517937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.070496, 35.322796, 47.001633>,  <36.438828, 34.911987, 46.920822>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.070496, 35.322796, 47.001633> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.762749, 35.555565, 46.896236>,  <36.578098, 35.695229, 46.832996>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.762749, 35.555565, 46.896236>,  <37.070496, 35.322796, 47.001633>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.762749, 35.555565, 46.896236> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083660, 0.500716, 0.861559,
		0.633300, 0.640815, -0.433921,
		-0.769372, 0.581927, -0.263492,
		36.531937, 35.730145, 46.817188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.244461, 36.023426, 47.015461>,  <37.070496, 35.322796, 47.001633>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.244461, 36.023426, 47.015461> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.845684, 36.048294, 47.034370>,  <36.606419, 36.063213, 47.045715>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.845684, 36.048294, 47.034370>,  <37.244461, 36.023426, 47.015461>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.845684, 36.048294, 47.034370> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076833, 0.671955, 0.736596,
		0.014027, 0.737978, -0.674679,
		-0.996945, 0.062170, 0.047275,
		36.546600, 36.066944, 47.048553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<32.714436, 38.160465, 44.509560> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.978928, 38.032917, 44.781174>,  <33.137623, 37.956387, 44.944141>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.978928, 38.032917, 44.781174>,  <32.714436, 38.160465, 44.509560>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.978928, 38.032917, 44.781174> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514954, -0.465288, -0.719951,
		0.545522, 0.825727, -0.143457,
		0.661232, -0.318875, 0.679037,
		33.177296, 37.937256, 44.984886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.420124, 38.488953, 44.392731>,  <32.714436, 38.160465, 44.509560>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.420124, 38.488953, 44.392731> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.468815, 38.151150, 44.601341>,  <33.498028, 37.948467, 44.726509>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.468815, 38.151150, 44.601341>,  <33.420124, 38.488953, 44.392731>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.468815, 38.151150, 44.601341> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489460, -0.406035, -0.771728,
		0.863488, 0.349208, 0.363926,
		0.121727, -0.844505, 0.521529,
		33.505333, 37.897797, 44.757801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.123344, 38.416946, 44.265762>,  <33.420124, 38.488953, 44.392731>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.123344, 38.416946, 44.265762> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.948757, 38.069363, 44.359070>,  <33.844006, 37.860813, 44.415054>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.948757, 38.069363, 44.359070>,  <34.123344, 38.416946, 44.265762>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.948757, 38.069363, 44.359070> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398957, -0.419305, -0.815485,
		0.806431, -0.262867, 0.529688,
		-0.436466, -0.868955, 0.233268,
		33.817818, 37.808678, 44.429050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.671669, 37.797272, 44.119148>,  <34.123344, 38.416946, 44.265762>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.671669, 37.797272, 44.119148> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.300846, 37.647327, 44.121796>,  <34.078354, 37.557362, 44.123386>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.300846, 37.647327, 44.121796>,  <34.671669, 37.797272, 44.119148>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.300846, 37.647327, 44.121796> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167296, -0.429405, -0.887482,
		0.335528, -0.821638, 0.460796,
		-0.927056, -0.374864, 0.006621,
		34.022728, 37.534870, 44.123783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.761360, 37.150570, 43.991280>,  <34.671669, 37.797272, 44.119148>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.761360, 37.150570, 43.991280> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.389381, 37.244480, 43.878090>,  <34.166195, 37.300827, 43.810177>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.389381, 37.244480, 43.878090>,  <34.761360, 37.150570, 43.991280>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.389381, 37.244480, 43.878090> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149099, -0.462701, -0.873886,
		-0.336101, -0.854861, 0.395284,
		-0.929950, 0.234777, -0.282973,
		34.110397, 37.314915, 43.793198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.611038, 36.575310, 43.508358>,  <34.761360, 37.150570, 43.991280>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.611038, 36.575310, 43.508358> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.329964, 36.843716, 43.413719>,  <34.161320, 37.004757, 43.356937>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.329964, 36.843716, 43.413719>,  <34.611038, 36.575310, 43.508358>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.329964, 36.843716, 43.413719> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015869, -0.347231, -0.937645,
		-0.711325, -0.655114, 0.254642,
		-0.702684, 0.671011, -0.236598,
		34.119160, 37.045017, 43.342739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.286686, 36.275558, 43.037258>,  <34.611038, 36.575310, 43.508358>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.286686, 36.275558, 43.037258> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.205807, 36.664852, 42.993561>,  <34.157280, 36.898426, 42.967342>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.205807, 36.664852, 42.993561>,  <34.286686, 36.275558, 43.037258>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.205807, 36.664852, 42.993561> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069165, -0.097078, -0.992871,
		-0.976898, -0.208316, -0.047684,
		-0.202202, 0.973232, -0.109244,
		34.145145, 36.956821, 42.960789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.964157, 36.162968, 42.408249>,  <34.286686, 36.275558, 43.037258>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.964157, 36.162968, 42.408249> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.021294, 36.557941, 42.435310>,  <34.055576, 36.794926, 42.451550>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.021294, 36.557941, 42.435310>,  <33.964157, 36.162968, 42.408249>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.021294, 36.557941, 42.435310> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005437, 0.067572, -0.997700,
		-0.989731, 0.142877, 0.004283,
		0.142837, 0.987431, 0.067655,
		34.064144, 36.854172, 42.455608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.462296, 36.412231, 42.000309>,  <33.964157, 36.162968, 42.408249>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.462296, 36.412231, 42.000309> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.748882, 36.691040, 42.011906>,  <33.920834, 36.858326, 42.018864>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.748882, 36.691040, 42.011906>,  <33.462296, 36.412231, 42.000309>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.748882, 36.691040, 42.011906> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130612, 0.174846, -0.975894,
		-0.685286, 0.695408, 0.216310,
		0.716466, 0.697019, 0.028991,
		33.963821, 36.900146, 42.020603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.258354, 37.064480, 41.818714>,  <33.462296, 36.412231, 42.000309>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.258354, 37.064480, 41.818714> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.643463, 37.025787, 41.717754>,  <33.874531, 37.002571, 41.657177>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.643463, 37.025787, 41.717754>,  <33.258354, 37.064480, 41.818714>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.643463, 37.025787, 41.717754> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207583, 0.333464, -0.919626,
		0.173124, 0.937787, 0.300971,
		0.962776, -0.096733, -0.252399,
		33.932297, 36.996769, 41.642036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.327263, 37.532265, 41.315094>,  <33.258354, 37.064480, 41.818714>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.327263, 37.532265, 41.315094> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.677105, 37.341454, 41.280415>,  <33.887009, 37.226967, 41.259605>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.677105, 37.341454, 41.280415>,  <33.327263, 37.532265, 41.315094>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.677105, 37.341454, 41.280415> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062138, 0.287632, -0.955723,
		0.480842, 0.830490, 0.281206,
		0.874602, -0.477026, -0.086700,
		33.939487, 37.198345, 41.254406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.781189, 37.969856, 41.029716>,  <33.327263, 37.532265, 41.315094>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.781189, 37.969856, 41.029716> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.902828, 37.602032, 40.930180>,  <33.975811, 37.381336, 40.870457>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.902828, 37.602032, 40.930180>,  <33.781189, 37.969856, 41.029716>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.902828, 37.602032, 40.930180> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127406, 0.298128, -0.945985,
		0.944082, 0.255971, 0.207819,
		0.304102, -0.919564, -0.248845,
		33.994061, 37.326164, 40.855526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.113152, 38.020294, 40.422600>,  <33.781189, 37.969856, 41.029716>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.113152, 38.020294, 40.422600> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.129971, 37.620770, 40.412720>,  <34.140060, 37.381054, 40.406792>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.129971, 37.620770, 40.412720>,  <34.113152, 38.020294, 40.422600>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.129971, 37.620770, 40.412720> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214020, 0.033151, -0.976266,
		0.975924, 0.035764, 0.215160,
		0.042048, -0.998810, -0.024698,
		34.142586, 37.321125, 40.405312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.695549, 37.796120, 39.996529>,  <34.113152, 38.020294, 40.422600>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.695549, 37.796120, 39.996529> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.498638, 37.448063, 40.005653>,  <34.380493, 37.239227, 40.011127>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.498638, 37.448063, 40.005653>,  <34.695549, 37.796120, 39.996529>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.498638, 37.448063, 40.005653> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205886, -0.141862, -0.968239,
		0.845740, -0.471942, 0.248985,
		-0.492274, -0.870141, 0.022812,
		34.350956, 37.187019, 40.012497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.390881, 37.858677, 40.467323>,  <34.695549, 37.796120, 39.996529>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.390881, 37.858677, 40.467323> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.665493, 38.120190, 40.340050>,  <35.830261, 38.277096, 40.263683>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.665493, 38.120190, 40.340050>,  <35.390881, 37.858677, 40.467323>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.665493, 38.120190, 40.340050> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358704, 0.685189, 0.633914,
		0.632458, -0.321070, 0.704919,
		0.686534, 0.653782, -0.318185,
		35.871452, 38.316326, 40.244595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.444668, 38.247849, 41.077652>,  <35.390881, 37.858677, 40.467323>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.444668, 38.247849, 41.077652> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.663624, 38.435780, 40.800632>,  <35.794998, 38.548538, 40.634422>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.663624, 38.435780, 40.800632>,  <35.444668, 38.247849, 41.077652>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.663624, 38.435780, 40.800632> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005050, 0.829379, 0.558663,
		0.836861, -0.302310, 0.456368,
		0.547392, 0.469828, -0.692549,
		35.827843, 38.576729, 40.592869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.055298, 38.423897, 41.503498>,  <35.444668, 38.247849, 41.077652>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.055298, 38.423897, 41.503498> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.961224, 38.663361, 41.197220>,  <35.904778, 38.807041, 41.013454>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.961224, 38.663361, 41.197220>,  <36.055298, 38.423897, 41.503498>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.961224, 38.663361, 41.197220> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043141, 0.780586, 0.623558,
		0.970992, 0.179686, -0.157757,
		-0.235188, 0.598664, -0.765694,
		35.890667, 38.842960, 40.967510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.465374, 38.895428, 41.690804>,  <36.055298, 38.423897, 41.503498>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.465374, 38.895428, 41.690804> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.210560, 39.026588, 41.411758>,  <36.057671, 39.105286, 41.244331>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.210560, 39.026588, 41.411758>,  <36.465374, 38.895428, 41.690804>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.210560, 39.026588, 41.411758> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250770, 0.767622, 0.589805,
		0.728901, 0.550669, -0.406777,
		-0.637038, 0.327902, -0.697612,
		36.019447, 39.124958, 41.202477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.621223, 39.628540, 41.443012>,  <36.465374, 38.895428, 41.690804>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.621223, 39.628540, 41.443012> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.235161, 39.532104, 41.402340>,  <36.003521, 39.474243, 41.377937>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.235161, 39.532104, 41.402340>,  <36.621223, 39.628540, 41.443012>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.235161, 39.532104, 41.402340> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237588, 0.644690, 0.726586,
		-0.109617, 0.725431, -0.679510,
		-0.965161, -0.241089, -0.101685,
		35.945614, 39.459778, 41.371834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.308468, 40.220234, 41.699669>,  <36.621223, 39.628540, 41.443012>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.308468, 40.220234, 41.699669> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.995918, 39.970612, 41.700844>,  <35.808388, 39.820839, 41.701550>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.995918, 39.970612, 41.700844>,  <36.308468, 40.220234, 41.699669>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.995918, 39.970612, 41.700844> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394767, 0.497920, 0.772162,
		-0.483333, 0.602190, -0.635419,
		-0.781376, -0.624054, 0.002936,
		35.761505, 39.783394, 41.701725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.694206, 40.622456, 41.780376>,  <36.308468, 40.220234, 41.699669>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.694206, 40.622456, 41.780376> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.604115, 40.257072, 41.915947>,  <35.550060, 40.037842, 41.997288>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.604115, 40.257072, 41.915947>,  <35.694206, 40.622456, 41.780376>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.604115, 40.257072, 41.915947> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506407, 0.406938, 0.760233,
		-0.832359, -0.000403, -0.554236,
		-0.225233, -0.913456, 0.338923,
		35.536545, 39.983036, 42.017624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.011574, 40.663719, 41.936073>,  <35.694206, 40.622456, 41.780376>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.011574, 40.663719, 41.936073> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.155598, 40.363068, 42.157127>,  <35.242012, 40.182678, 42.289761>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.155598, 40.363068, 42.157127>,  <35.011574, 40.663719, 41.936073>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.155598, 40.363068, 42.157127> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337261, 0.447438, 0.828284,
		-0.869835, -0.484615, -0.092391,
		0.360059, -0.751630, 0.552639,
		35.263615, 40.137577, 42.322918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.479855, 40.468204, 42.468468>,  <35.011574, 40.663719, 41.936073>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.479855, 40.468204, 42.468468> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.802933, 40.283661, 42.615314>,  <34.996780, 40.172935, 42.703423>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.802933, 40.283661, 42.615314>,  <34.479855, 40.468204, 42.468468>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.802933, 40.283661, 42.615314> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396486, 0.035836, 0.917341,
		-0.436380, -0.886489, -0.153978,
		0.807695, -0.461359, 0.367118,
		35.045242, 40.145252, 42.725449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.178085, 40.110298, 42.983700>,  <34.479855, 40.468204, 42.468468>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.178085, 40.110298, 42.983700> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.569798, 40.117176, 43.064419>,  <34.804825, 40.121304, 43.112850>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.569798, 40.117176, 43.064419>,  <34.178085, 40.110298, 42.983700>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.569798, 40.117176, 43.064419> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198733, -0.110452, 0.973810,
		0.039034, -0.993733, -0.104746,
		0.979276, 0.017195, 0.201799,
		34.863579, 40.122334, 43.124958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.268738, 39.700069, 43.528454>,  <34.178085, 40.110298, 42.983700>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.268738, 39.700069, 43.528454> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.596928, 39.928234, 43.543724>,  <34.793842, 40.065132, 43.552887>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.596928, 39.928234, 43.543724>,  <34.268738, 39.700069, 43.528454>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.596928, 39.928234, 43.543724> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102110, 0.080521, 0.991509,
		0.562493, -0.817403, 0.124310,
		0.820472, 0.570410, 0.038173,
		34.843071, 40.099358, 43.555176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.530910, 39.457687, 44.074509>,  <34.268738, 39.700069, 43.528454>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.530910, 39.457687, 44.074509> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.721329, 39.807800, 44.040424>,  <34.835579, 40.017868, 44.019974>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.721329, 39.807800, 44.040424>,  <34.530910, 39.457687, 44.074509>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.721329, 39.807800, 44.040424> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016355, 0.105686, 0.994265,
		0.879269, -0.471922, 0.064626,
		0.476045, 0.875283, -0.085208,
		34.864143, 40.070385, 44.014862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.163128, 39.355774, 44.437290>,  <34.530910, 39.457687, 44.074509>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.163128, 39.355774, 44.437290> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.049168, 39.739155, 44.431526>,  <34.980793, 39.969181, 44.428070>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.049168, 39.739155, 44.431526>,  <35.163128, 39.355774, 44.437290>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.049168, 39.739155, 44.431526> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119041, 0.050290, 0.991615,
		0.951138, 0.280793, -0.128422,
		-0.284897, 0.958450, -0.014407,
		34.963699, 40.026691, 44.427204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.572865, 39.735142, 44.911427>,  <35.163128, 39.355774, 44.437290>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.572865, 39.735142, 44.911427> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.256958, 39.976288, 44.866131>,  <35.067413, 40.120975, 44.838955>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.256958, 39.976288, 44.866131>,  <35.572865, 39.735142, 44.911427>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.256958, 39.976288, 44.866131> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079660, 0.283839, 0.955557,
		0.608209, 0.745650, -0.272191,
		-0.789770, 0.602861, -0.113236,
		35.020027, 40.157146, 44.832161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.194870, 40.068222, 45.141678>,  <35.572865, 39.735142, 44.911427>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.194870, 40.068222, 45.141678> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.537964, 40.161865, 45.324757>,  <36.743820, 40.218052, 45.434605>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.537964, 40.161865, 45.324757>,  <36.194870, 40.068222, 45.141678>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.537964, 40.161865, 45.324757> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503049, -0.198616, -0.841126,
		-0.106009, 0.951706, -0.288128,
		0.857732, 0.234109, 0.457700,
		36.795284, 40.232098, 45.462067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.545055, 40.453987, 44.674389>,  <36.194870, 40.068222, 45.141678>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.545055, 40.453987, 44.674389> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.818218, 40.315720, 44.931808>,  <36.982117, 40.232758, 45.086258>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.818218, 40.315720, 44.931808>,  <36.545055, 40.453987, 44.674389>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.818218, 40.315720, 44.931808> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581061, -0.276873, -0.765316,
		0.442729, 0.896578, 0.011778,
		0.682905, -0.345672, 0.643547,
		37.023090, 40.212017, 45.124874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.128040, 40.784180, 44.432667>,  <36.545055, 40.453987, 44.674389>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.128040, 40.784180, 44.432667> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.217453, 40.445663, 44.626091>,  <37.271099, 40.242554, 44.742146>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.217453, 40.445663, 44.626091>,  <37.128040, 40.784180, 44.432667>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.217453, 40.445663, 44.626091> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605479, -0.268217, -0.749303,
		0.763825, 0.460279, 0.452454,
		0.223533, -0.846288, 0.483560,
		37.284512, 40.191776, 44.771160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.791946, 40.631142, 44.231640>,  <37.128040, 40.784180, 44.432667>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.791946, 40.631142, 44.231640> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.697739, 40.289181, 44.416534>,  <37.641212, 40.084003, 44.527473>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.697739, 40.289181, 44.416534>,  <37.791946, 40.631142, 44.231640>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.697739, 40.289181, 44.416534> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.640097, -0.494342, -0.588134,
		0.731303, 0.157359, 0.663652,
		-0.235522, -0.854906, 0.462239,
		37.627083, 40.032707, 44.555206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.377823, 40.374512, 44.281300>,  <37.791946, 40.631142, 44.231640>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.377823, 40.374512, 44.281300> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.121948, 40.070480, 44.327057>,  <37.968426, 39.888062, 44.354511>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.121948, 40.070480, 44.327057>,  <38.377823, 40.374512, 44.281300>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.121948, 40.070480, 44.327057> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583322, -0.576966, -0.571704,
		0.500538, -0.298984, 0.812447,
		-0.639685, -0.760078, 0.114389,
		37.930042, 39.842457, 44.361374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.820347, 39.794205, 44.360352>,  <38.377823, 40.374512, 44.281300>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.820347, 39.794205, 44.360352> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.465195, 39.651756, 44.243835>,  <38.252102, 39.566288, 44.173927>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.465195, 39.651756, 44.243835>,  <38.820347, 39.794205, 44.360352>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.465195, 39.651756, 44.243835> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460065, -0.683273, -0.566991,
		0.002887, -0.637431, 0.770502,
		-0.887881, -0.356118, -0.291287,
		38.198830, 39.544922, 44.156448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.139896, 39.163250, 44.115402>,  <38.820347, 39.794205, 44.360352>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.139896, 39.163250, 44.115402> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.763985, 39.225349, 43.993607>,  <38.538437, 39.262611, 43.920528>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.763985, 39.225349, 43.993607>,  <39.139896, 39.163250, 44.115402>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.763985, 39.225349, 43.993607> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179372, -0.534292, -0.826049,
		-0.290928, -0.830921, 0.474270,
		-0.939780, 0.155250, -0.304485,
		38.482052, 39.271923, 43.902260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.834976, 38.555721, 44.024342>,  <39.139896, 39.163250, 44.115402>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.834976, 38.555721, 44.024342> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.594414, 38.782177, 43.798847>,  <38.450077, 38.918049, 43.663551>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.594414, 38.782177, 43.798847>,  <38.834976, 38.555721, 44.024342>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.594414, 38.782177, 43.798847> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036065, -0.685642, -0.727045,
		-0.798129, -0.457580, 0.391931,
		-0.601406, 0.566141, -0.563733,
		38.413990, 38.952019, 43.629726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.290493, 38.096355, 43.748222>,  <38.834976, 38.555721, 44.024342>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.290493, 38.096355, 43.748222> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.327053, 38.414619, 43.508701>,  <38.348991, 38.605579, 43.364986>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.327053, 38.414619, 43.508701>,  <38.290493, 38.096355, 43.748222>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.327053, 38.414619, 43.508701> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048409, -0.604163, -0.795389,
		-0.994637, 0.043714, -0.093740,
		0.091404, 0.795661, -0.598807,
		38.354473, 38.653316, 43.329060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.789162, 37.915916, 43.098816>,  <38.290493, 38.096355, 43.748222>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.789162, 37.915916, 43.098816> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.047886, 38.204872, 43.001011>,  <38.203121, 38.378246, 42.942329>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.047886, 38.204872, 43.001011>,  <37.789162, 37.915916, 43.098816>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.047886, 38.204872, 43.001011> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165594, -0.445989, -0.879586,
		-0.744455, 0.528436, -0.408095,
		0.646811, 0.722391, -0.244513,
		38.241928, 38.421589, 42.927658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.667839, 37.945026, 42.400612>,  <37.789162, 37.915916, 43.098816>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.667839, 37.945026, 42.400612> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.028442, 38.102173, 42.473213>,  <38.244804, 38.196461, 42.516773>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.028442, 38.102173, 42.473213>,  <37.667839, 37.945026, 42.400612>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.028442, 38.102173, 42.473213> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398140, -0.588513, -0.703660,
		-0.169628, 0.706616, -0.686964,
		0.901505, 0.392868, 0.181503,
		38.298893, 38.220032, 42.527664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.904118, 38.374031, 41.829956>,  <37.667839, 37.945026, 42.400612>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.904118, 38.374031, 41.829956> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.211761, 38.218193, 42.032612>,  <38.396347, 38.124691, 42.154205>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.211761, 38.218193, 42.032612>,  <37.904118, 38.374031, 41.829956>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.211761, 38.218193, 42.032612> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267162, -0.524148, -0.808637,
		0.580595, 0.757286, -0.299043,
		0.769112, -0.389598, 0.506636,
		38.442493, 38.101315, 42.184601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.259853, 38.131935, 41.380459>,  <37.904118, 38.374031, 41.829956>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.259853, 38.131935, 41.380459> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.476906, 37.946594, 41.660702>,  <38.607140, 37.835392, 41.828850>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.476906, 37.946594, 41.660702>,  <38.259853, 38.131935, 41.380459>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.476906, 37.946594, 41.660702> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343983, -0.638362, -0.688600,
		0.766306, 0.614655, -0.187012,
		0.542633, -0.463350, 0.700611,
		38.639694, 37.807590, 41.870884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.927364, 38.073116, 41.060036>,  <38.259853, 38.131935, 41.380459>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.927364, 38.073116, 41.060036> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.886169, 37.782967, 41.332279>,  <38.861454, 37.608875, 41.495625>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.886169, 37.782967, 41.332279>,  <38.927364, 38.073116, 41.060036>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.886169, 37.782967, 41.332279> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359654, -0.665108, -0.654432,
		0.927385, 0.177387, 0.329380,
		-0.102985, -0.725373, 0.680609,
		38.855274, 37.565353, 41.536461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<26.910625, 25.879816, 33.611073> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.714989, 25.865532, 33.262470>,  <26.597607, 25.856962, 33.053310>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.714989, 25.865532, 33.262470>,  <26.910625, 25.879816, 33.611073>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.714989, 25.865532, 33.262470> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281856, 0.952027, 0.119171,
		0.825437, 0.303924, -0.475692,
		-0.489091, -0.035708, -0.871502,
		26.568262, 25.854820, 33.001019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.086748, 26.359133, 33.077961>,  <26.910625, 25.879816, 33.611073>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.086748, 26.359133, 33.077961> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.694729, 26.279734, 33.082100>,  <26.459518, 26.232094, 33.084583>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.694729, 26.279734, 33.082100>,  <27.086748, 26.359133, 33.077961>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.694729, 26.279734, 33.082100> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195182, 0.970900, 0.138773,
		-0.037596, 0.133984, -0.990270,
		-0.980046, -0.198500, 0.010351,
		26.400715, 26.220184, 33.085205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.721140, 26.861872, 32.636292>,  <27.086748, 26.359133, 33.077961>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.721140, 26.861872, 32.636292> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.472523, 26.730974, 32.920994>,  <26.323353, 26.652435, 33.091816>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.472523, 26.730974, 32.920994>,  <26.721140, 26.861872, 32.636292>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.472523, 26.730974, 32.920994> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211291, 0.944927, 0.249938,
		-0.754349, 0.004960, -0.656455,
		-0.621542, -0.327244, 0.711756,
		26.286060, 26.632801, 33.134521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.105932, 27.282598, 32.551624>,  <26.721140, 26.861872, 32.636292>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.105932, 27.282598, 32.551624> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.073828, 27.137974, 32.923180>,  <26.054565, 27.051199, 33.146111>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.073828, 27.137974, 32.923180>,  <26.105932, 27.282598, 32.551624>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.073828, 27.137974, 32.923180> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366902, 0.877182, 0.309734,
		-0.926791, -0.315951, -0.203062,
		-0.080262, -0.361563, 0.928887,
		26.049749, 27.029505, 33.201847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.393091, 27.415373, 32.780121>,  <26.105932, 27.282598, 32.551624>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.393091, 27.415373, 32.780121> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.632338, 27.395863, 33.100090>,  <25.775885, 27.384155, 33.292072>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.632338, 27.395863, 33.100090>,  <25.393091, 27.415373, 32.780121>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.632338, 27.395863, 33.100090> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501185, 0.756108, 0.420850,
		-0.625357, -0.652627, 0.427793,
		0.598115, -0.048778, 0.799924,
		25.811771, 27.381229, 33.340069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.974386, 27.709993, 33.346996>,  <25.393091, 27.415373, 32.780121>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.974386, 27.709993, 33.346996> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.324438, 27.693571, 33.539852>,  <25.534470, 27.683718, 33.655567>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.324438, 27.693571, 33.539852>,  <24.974386, 27.709993, 33.346996>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.324438, 27.693571, 33.539852> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185839, 0.891463, 0.413227,
		-0.446778, -0.451229, 0.772516,
		0.875130, -0.041058, 0.482142,
		25.586977, 27.681253, 33.684494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.855816, 28.109818, 34.068542>,  <24.974386, 27.709993, 33.346996>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.855816, 28.109818, 34.068542> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.249445, 28.097710, 33.998474>,  <25.485622, 28.090445, 33.956432>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.249445, 28.097710, 33.998474>,  <24.855816, 28.109818, 34.068542>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.249445, 28.097710, 33.998474> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103930, 0.897413, 0.428775,
		0.144221, -0.440151, 0.886266,
		0.984072, -0.030271, -0.175171,
		25.544666, 28.088629, 33.945923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.166771, 28.301821, 34.701344>,  <24.855816, 28.109818, 34.068542>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.166771, 28.301821, 34.701344> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.463623, 28.348452, 34.437328>,  <25.641735, 28.376431, 34.278919>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.463623, 28.348452, 34.437328>,  <25.166771, 28.301821, 34.701344>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.463623, 28.348452, 34.437328> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123891, 0.943931, 0.306016,
		0.658704, -0.308877, 0.686079,
		0.742132, 0.116575, -0.660038,
		25.686262, 28.383425, 34.239315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.859243, 28.483185, 35.078117>,  <25.166771, 28.301821, 34.701344>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.859243, 28.483185, 35.078117> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.846876, 28.645033, 34.712532>,  <25.839457, 28.742142, 34.493183>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.846876, 28.645033, 34.712532>,  <25.859243, 28.483185, 35.078117>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.846876, 28.645033, 34.712532> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156686, 0.905055, 0.395378,
		0.987164, -0.130981, -0.091380,
		-0.030917, 0.404622, -0.913961,
		25.837601, 28.766418, 34.438343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.331606, 29.038439, 35.146770>,  <25.859243, 28.483185, 35.078117>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.331606, 29.038439, 35.146770> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.136030, 29.158365, 34.819099>,  <26.018684, 29.230320, 34.622498>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.136030, 29.158365, 34.819099>,  <26.331606, 29.038439, 35.146770>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.136030, 29.158365, 34.819099> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134007, 0.953749, 0.269083,
		0.861962, 0.021791, -0.506504,
		-0.488941, 0.299814, -0.819175,
		25.989347, 29.248310, 34.573345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.750427, 29.426311, 34.743118>,  <26.331606, 29.038439, 35.146770>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.750427, 29.426311, 34.743118> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.385937, 29.534430, 34.618793>,  <26.167242, 29.599300, 34.544197>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.385937, 29.534430, 34.618793>,  <26.750427, 29.426311, 34.743118>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.385937, 29.534430, 34.618793> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178894, 0.939393, 0.292468,
		0.371027, 0.210903, -0.904355,
		-0.911228, 0.270297, -0.310812,
		26.112568, 29.615519, 34.525551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.858423, 30.057772, 34.402660>,  <26.750427, 29.426311, 34.743118>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.858423, 30.057772, 34.402660> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.463406, 30.074089, 34.463451>,  <26.226395, 30.083879, 34.499924>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.463406, 30.074089, 34.463451>,  <26.858423, 30.057772, 34.402660>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.463406, 30.074089, 34.463451> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092302, 0.932378, 0.349502,
		-0.127439, 0.359176, -0.924528,
		-0.987542, 0.040795, 0.151974,
		26.167143, 30.086327, 34.509045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.722727, 30.733559, 34.295738>,  <26.858423, 30.057772, 34.402660>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.722727, 30.733559, 34.295738> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.383648, 30.626139, 34.478729>,  <26.180201, 30.561687, 34.588524>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.383648, 30.626139, 34.478729>,  <26.722727, 30.733559, 34.295738>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.383648, 30.626139, 34.478729> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190314, 0.958941, 0.210267,
		-0.495164, 0.091178, -0.864002,
		-0.847699, -0.268548, 0.457481,
		26.129339, 30.545574, 34.615974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.278795, 31.116714, 34.013500>,  <26.722727, 30.733559, 34.295738>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.278795, 31.116714, 34.013500> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.133610, 31.013174, 34.371552>,  <26.046499, 30.951050, 34.586384>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.133610, 31.013174, 34.371552>,  <26.278795, 31.116714, 34.013500>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.133610, 31.013174, 34.371552> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071846, 0.965554, 0.250085,
		-0.929030, 0.026461, -0.369058,
		-0.362963, -0.258852, 0.895128,
		26.024721, 30.935518, 34.640091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.657375, 31.626884, 34.127361>,  <26.278795, 31.116714, 34.013500>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.657375, 31.626884, 34.127361> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.745604, 31.504311, 34.497753>,  <25.798540, 31.430765, 34.719990>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.745604, 31.504311, 34.497753>,  <25.657375, 31.626884, 34.127361>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.745604, 31.504311, 34.497753> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072709, 0.941558, 0.328910,
		-0.972657, -0.139875, 0.185399,
		0.220570, -0.306437, 0.925983,
		25.811775, 31.412380, 34.775547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.190767, 31.998594, 34.530563>,  <25.657375, 31.626884, 34.127361>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.190767, 31.998594, 34.530563> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.489819, 31.859955, 34.757164>,  <25.669249, 31.776772, 34.893124>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.489819, 31.859955, 34.757164>,  <25.190767, 31.998594, 34.530563>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.489819, 31.859955, 34.757164> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157335, 0.921165, 0.355949,
		-0.645211, -0.176988, 0.743221,
		0.747628, -0.346597, 0.566500,
		25.714108, 31.755976, 34.927113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.046011, 32.290859, 35.202488>,  <25.190767, 31.998594, 34.530563>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.046011, 32.290859, 35.202488> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.432224, 32.187317, 35.213367>,  <25.663952, 32.125191, 35.219894>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.432224, 32.187317, 35.213367>,  <25.046011, 32.290859, 35.202488>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.432224, 32.187317, 35.213367> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228882, 0.894173, 0.384796,
		-0.123926, -0.365308, 0.922601,
		0.965534, -0.258853, 0.027199,
		25.721884, 32.109661, 35.221527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.306648, 32.469795, 35.872398>,  <25.046011, 32.290859, 35.202488>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.306648, 32.469795, 35.872398> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.619061, 32.456707, 35.622944>,  <25.806507, 32.448853, 35.473270>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.619061, 32.456707, 35.622944>,  <25.306648, 32.469795, 35.872398>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.619061, 32.456707, 35.622944> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375442, 0.822611, 0.427030,
		0.499036, -0.567662, 0.654769,
		0.781029, -0.032725, -0.623637,
		25.853369, 32.446888, 35.435852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.926958, 32.440895, 36.362694>,  <25.306648, 32.469795, 35.872398>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.926958, 32.440895, 36.362694> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.034758, 32.562908, 35.997330>,  <26.099438, 32.636116, 35.778111>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.034758, 32.562908, 35.997330>,  <25.926958, 32.440895, 36.362694>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.034758, 32.562908, 35.997330> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421363, 0.815539, 0.396674,
		0.865923, -0.491782, 0.091257,
		0.269500, 0.305037, -0.913412,
		26.115608, 32.654419, 35.723305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.574415, 32.757671, 36.462463>,  <25.926958, 32.440895, 36.362694>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.574415, 32.757671, 36.462463> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.464020, 32.889721, 36.101387>,  <26.397783, 32.968952, 35.884743>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.464020, 32.889721, 36.101387>,  <26.574415, 32.757671, 36.462463>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.464020, 32.889721, 36.101387> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316122, 0.918093, 0.239107,
		0.907688, -0.219370, -0.357741,
		-0.275987, 0.330124, -0.902690,
		26.381224, 32.988758, 35.830582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.164803, 33.085148, 36.164886>,  <26.574415, 32.757671, 36.462463>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.164803, 33.085148, 36.164886> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.861403, 33.247814, 35.961201>,  <26.679363, 33.345413, 35.838989>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.861403, 33.247814, 35.961201>,  <27.164803, 33.085148, 36.164886>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.861403, 33.247814, 35.961201> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290589, 0.910474, 0.294269,
		0.583299, 0.075229, -0.808767,
		-0.758499, 0.406666, -0.509218,
		26.633852, 33.369812, 35.808434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.945063, 33.101585, 35.838184>,  <27.164803, 33.085148, 36.164886>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.945063, 33.101585, 35.838184> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.112558, 33.383907, 35.609623>,  <28.213057, 33.553299, 35.472488>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.112558, 33.383907, 35.609623>,  <27.945063, 33.101585, 35.838184>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.112558, 33.383907, 35.609623> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420380, -0.708402, -0.566963,
		-0.804946, -0.002795, -0.593342,
		0.418740, 0.705803, -0.571401,
		28.238180, 33.595650, 35.438202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.647860, 33.083298, 35.138229>,  <27.945063, 33.101585, 35.838184>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.647860, 33.083298, 35.138229> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.028095, 33.203472, 35.169521>,  <28.256237, 33.275578, 35.188297>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.028095, 33.203472, 35.169521>,  <27.647860, 33.083298, 35.138229>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.028095, 33.203472, 35.169521> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296247, -0.802441, -0.518002,
		-0.092852, 0.515582, -0.851794,
		0.950587, 0.300439, 0.078231,
		28.313271, 33.293602, 35.192989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.920048, 33.179863, 34.434574>,  <27.647860, 33.083298, 35.138229>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.920048, 33.179863, 34.434574> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.225533, 33.112873, 34.683956>,  <28.408823, 33.072681, 34.833584>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.225533, 33.112873, 34.683956>,  <27.920048, 33.179863, 34.434574>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.225533, 33.112873, 34.683956> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420651, -0.603485, -0.677391,
		0.489690, 0.779589, -0.390442,
		0.763713, -0.167472, 0.623455,
		28.454647, 33.062630, 34.870995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.369806, 33.113873, 33.985283>,  <27.920048, 33.179863, 34.434574>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.369806, 33.113873, 33.985283> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.573460, 32.985527, 34.304741>,  <28.695652, 32.908520, 34.496414>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.573460, 32.985527, 34.304741>,  <28.369806, 33.113873, 33.985283>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.573460, 32.985527, 34.304741> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427532, -0.711056, -0.558225,
		0.746992, 0.625657, -0.224845,
		0.509135, -0.320861, 0.798642,
		28.726200, 32.889267, 34.544334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.042179, 33.089310, 33.828918>,  <28.369806, 33.113873, 33.985283>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.042179, 33.089310, 33.828918> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.961155, 32.797462, 34.090187>,  <28.912540, 32.622353, 34.246948>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.961155, 32.797462, 34.090187>,  <29.042179, 33.089310, 33.828918>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.961155, 32.797462, 34.090187> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308864, -0.680550, -0.664420,
		0.929286, 0.067154, 0.363205,
		-0.202561, -0.729617, 0.653167,
		28.900387, 32.578579, 34.286137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.485876, 32.585373, 33.602848>,  <29.042179, 33.089310, 33.828918>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.485876, 32.585373, 33.602848> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.253727, 32.391930, 33.864929>,  <29.114437, 32.275864, 34.022179>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.253727, 32.391930, 33.864929>,  <29.485876, 32.585373, 33.602848>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.253727, 32.391930, 33.864929> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212994, -0.866711, -0.451049,
		0.786003, -0.122222, 0.606021,
		-0.580373, -0.483605, 0.655205,
		29.079615, 32.246849, 34.061489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.865416, 31.984886, 33.975685>,  <29.485876, 32.585373, 33.602848>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.865416, 31.984886, 33.975685> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.475569, 31.895336, 33.974911>,  <29.241661, 31.841606, 33.974445>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.475569, 31.895336, 33.974911>,  <29.865416, 31.984886, 33.975685>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.475569, 31.895336, 33.974911> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203606, -0.882727, -0.423484,
		0.093102, -0.413127, 0.905902,
		-0.974616, -0.223874, -0.001931,
		29.183184, 31.828175, 33.974331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.887842, 31.346685, 34.230476>,  <29.865416, 31.984886, 33.975685>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.887842, 31.346685, 34.230476> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.520611, 31.359215, 34.072414>,  <29.300272, 31.366734, 33.977577>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.520611, 31.359215, 34.072414>,  <29.887842, 31.346685, 34.230476>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.520611, 31.359215, 34.072414> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064572, -0.971739, -0.227055,
		-0.391103, -0.233971, 0.890110,
		-0.918079, 0.031326, -0.395158,
		29.245188, 31.368612, 33.953865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.517761, 30.756752, 34.529743>,  <29.887842, 31.346685, 34.230476>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.517761, 30.756752, 34.529743> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.278137, 30.851233, 34.223713>,  <29.134363, 30.907921, 34.040096>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.278137, 30.851233, 34.223713>,  <29.517761, 30.756752, 34.529743>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.278137, 30.851233, 34.223713> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086985, -0.930647, -0.355429,
		-0.795963, -0.279474, 0.536970,
		-0.599062, 0.236201, -0.765071,
		29.098419, 30.922092, 33.994190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.125727, 30.168259, 34.423279>,  <29.517761, 30.756752, 34.529743>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.125727, 30.168259, 34.423279> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.072910, 30.341223, 34.066498>,  <29.041222, 30.445002, 33.852428>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.072910, 30.341223, 34.066498>,  <29.125727, 30.168259, 34.423279>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.072910, 30.341223, 34.066498> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126973, -0.899801, -0.417417,
		-0.983079, 0.058139, 0.173713,
		-0.132039, 0.432410, -0.891957,
		29.033298, 30.470945, 33.798912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.485239, 29.980558, 34.143246>,  <29.125727, 30.168259, 34.423279>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.485239, 29.980558, 34.143246> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.683922, 30.075531, 33.809322>,  <28.803131, 30.132515, 33.608967>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.683922, 30.075531, 33.809322>,  <28.485239, 29.980558, 34.143246>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.683922, 30.075531, 33.809322> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210799, -0.900050, -0.381410,
		-0.841931, 0.365426, -0.397009,
		0.496705, 0.237431, -0.834811,
		28.832933, 30.146761, 33.558880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.045755, 29.804325, 33.487450>,  <28.485239, 29.980558, 34.143246>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.045755, 29.804325, 33.487450> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.423685, 29.808399, 33.356480>,  <28.650442, 29.810844, 33.277897>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.423685, 29.808399, 33.356480>,  <28.045755, 29.804325, 33.487450>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.423685, 29.808399, 33.356480> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208655, -0.751818, -0.625486,
		-0.252537, 0.659292, -0.708209,
		0.944822, 0.010187, -0.327426,
		28.707132, 29.811455, 33.258251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.969414, 29.750719, 32.807957>,  <28.045755, 29.804325, 33.487450>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.969414, 29.750719, 32.807957> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.342035, 29.626598, 32.883766>,  <28.565609, 29.552126, 32.929253>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.342035, 29.626598, 32.883766>,  <27.969414, 29.750719, 32.807957>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.342035, 29.626598, 32.883766> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096219, -0.713034, -0.694495,
		0.350642, 0.628723, -0.694087,
		0.931553, -0.310304, 0.189525,
		28.621502, 29.533506, 32.940624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.306072, 29.806545, 32.184441>,  <27.969414, 29.750719, 32.807957>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.306072, 29.806545, 32.184441> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.486111, 29.535297, 32.416843>,  <28.594133, 29.372549, 32.556286>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.486111, 29.535297, 32.416843>,  <28.306072, 29.806545, 32.184441>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.486111, 29.535297, 32.416843> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076160, -0.677416, -0.731647,
		0.889727, 0.285061, -0.356547,
		0.450095, -0.678121, 0.581005,
		28.621140, 29.331861, 32.591145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.788036, 29.469765, 31.706268>,  <28.306072, 29.806545, 32.184441>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.788036, 29.469765, 31.706268> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.764862, 29.227606, 32.023792>,  <28.750957, 29.082310, 32.214306>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.764862, 29.227606, 32.023792>,  <28.788036, 29.469765, 31.706268>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.764862, 29.227606, 32.023792> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082553, -0.795328, -0.600531,
		0.994901, 0.030739, 0.096056,
		-0.057936, -0.605399, 0.793811,
		28.747480, 29.045986, 32.261936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.311153, 28.950588, 31.527359>,  <28.788036, 29.469765, 31.706268>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.311153, 28.950588, 31.527359> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.060617, 28.804926, 31.803064>,  <28.910295, 28.717529, 31.968489>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.060617, 28.804926, 31.803064>,  <29.311153, 28.950588, 31.527359>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.060617, 28.804926, 31.803064> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077566, -0.850684, -0.519923,
		0.775680, -0.379113, 0.504573,
		-0.626342, -0.364156, 0.689265,
		28.872715, 28.695679, 32.009846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.578497, 28.413168, 31.827852>,  <29.311153, 28.950588, 31.527359>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.578497, 28.413168, 31.827852> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.180975, 28.375792, 31.851913>,  <28.942461, 28.353367, 31.866350>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.180975, 28.375792, 31.851913>,  <29.578497, 28.413168, 31.827852>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.180975, 28.375792, 31.851913> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059123, -0.902915, -0.425733,
		0.094095, -0.419539, 0.902847,
		-0.993806, -0.093439, 0.060155,
		28.882833, 28.347759, 31.869961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.432575, 27.711344, 31.955759>,  <29.578497, 28.413168, 31.827852>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.432575, 27.711344, 31.955759> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.081688, 27.846897, 31.819731>,  <28.871157, 27.928230, 31.738113>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.081688, 27.846897, 31.819731>,  <29.432575, 27.711344, 31.955759>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.081688, 27.846897, 31.819731> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143258, -0.860836, -0.488302,
		-0.458222, -0.379629, 0.803688,
		-0.877217, 0.338885, -0.340069,
		28.818523, 27.948563, 31.717710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.030968, 27.114079, 32.106220>,  <29.432575, 27.711344, 31.955759>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.030968, 27.114079, 32.106220> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.824049, 27.333473, 31.843445>,  <28.699898, 27.465109, 31.685780>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.824049, 27.333473, 31.843445>,  <29.030968, 27.114079, 32.106220>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.824049, 27.333473, 31.843445> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219978, -0.827051, -0.517296,
		-0.827051, -0.123083, 0.548486,
		0.517296, -0.548486, 0.656938,
		28.668859, 27.498018, 31.646364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.339222, 26.887167, 32.219349>,  <29.030968, 27.114079, 32.106220>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.339222, 26.887167, 32.219349> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.371866, 27.063185, 31.861645>,  <28.391453, 27.168795, 31.647022>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.371866, 27.063185, 31.861645>,  <28.339222, 26.887167, 32.219349>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.371866, 27.063185, 31.861645> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313145, -0.840494, -0.442165,
		-0.946193, 0.316117, 0.069206,
		0.081609, 0.440045, -0.894260,
		28.396349, 27.195198, 31.593367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.760674, 26.700325, 31.946898>,  <28.339222, 26.887167, 32.219349>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.760674, 26.700325, 31.946898> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.953671, 26.831123, 31.621868>,  <28.069469, 26.909603, 31.426851>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.953671, 26.831123, 31.621868>,  <27.760674, 26.700325, 31.946898>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.953671, 26.831123, 31.621868> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444580, -0.707889, -0.548855,
		-0.754684, 0.626072, -0.196176,
		0.482494, 0.326996, -0.812572,
		28.098419, 26.929222, 31.378096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<37.169209, 36.781307, 47.093678> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.827827, 36.600643, 47.197697>,  <36.622997, 36.492245, 47.260109>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.827827, 36.600643, 47.197697>,  <37.169209, 36.781307, 47.093678>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.827827, 36.600643, 47.197697> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103792, 0.636267, 0.764455,
		-0.510731, 0.625435, -0.589902,
		-0.853452, -0.451658, 0.260046,
		36.571793, 36.465145, 47.275711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.711166, 37.399250, 47.281471>,  <37.169209, 36.781307, 47.093678>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.711166, 37.399250, 47.281471> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.538918, 37.063000, 47.412865>,  <36.435566, 36.861248, 47.491703>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.538918, 37.063000, 47.412865>,  <36.711166, 37.399250, 47.281471>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.538918, 37.063000, 47.412865> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317022, 0.481657, 0.817009,
		-0.845020, 0.247687, -0.473911,
		-0.430625, -0.840629, 0.328487,
		36.409729, 36.810810, 47.511410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.009018, 37.499146, 47.449188>,  <36.711166, 37.399250, 47.281471>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.009018, 37.499146, 47.449188> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.083435, 37.180557, 47.679325>,  <36.128086, 36.989403, 47.817410>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.083435, 37.180557, 47.679325>,  <36.009018, 37.499146, 47.449188>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.083435, 37.180557, 47.679325> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277110, 0.519263, 0.808440,
		-0.942655, -0.309836, -0.124107,
		0.186040, -0.796472, 0.575345,
		36.139248, 36.941616, 47.851929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.426483, 37.448700, 47.886257>,  <36.009018, 37.499146, 47.449188>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.426483, 37.448700, 47.886257> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.745918, 37.276157, 48.054157>,  <35.937580, 37.172630, 48.154896>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.745918, 37.276157, 48.054157>,  <35.426483, 37.448700, 47.886257>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.745918, 37.276157, 48.054157> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195618, 0.473518, 0.858786,
		-0.569205, -0.767925, 0.293763,
		0.798586, -0.431360, 0.419749,
		35.985493, 37.146748, 48.180080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.170475, 37.278324, 48.549248>,  <35.426483, 37.448700, 47.886257>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.170475, 37.278324, 48.549248> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.570118, 37.276218, 48.566010>,  <35.809902, 37.274956, 48.576069>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.570118, 37.276218, 48.566010>,  <35.170475, 37.278324, 48.549248>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.570118, 37.276218, 48.566010> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034178, 0.482164, 0.875414,
		-0.024818, -0.876065, 0.481554,
		0.999108, -0.005267, 0.041909,
		35.869850, 37.274639, 48.578583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.318378, 37.007313, 49.253407>,  <35.170475, 37.278324, 48.549248>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.318378, 37.007313, 49.253407> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.637272, 37.217468, 49.134483>,  <35.828606, 37.343559, 49.063129>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.637272, 37.217468, 49.134483>,  <35.318378, 37.007313, 49.253407>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.637272, 37.217468, 49.134483> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057955, 0.556835, 0.828598,
		0.600887, -0.643353, 0.474375,
		0.797230, 0.525387, -0.297310,
		35.876442, 37.375084, 49.045292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.570675, 37.195091, 49.865307>,  <35.318378, 37.007313, 49.253407>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.570675, 37.195091, 49.865307> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.795135, 37.421352, 49.623600>,  <35.929813, 37.557110, 49.478577>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.795135, 37.421352, 49.623600>,  <35.570675, 37.195091, 49.865307>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.795135, 37.421352, 49.623600> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002396, 0.728935, 0.684579,
		0.827708, -0.385602, 0.407689,
		0.561154, 0.565655, -0.604269,
		35.963482, 37.591049, 49.442318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.200603, 37.455685, 50.268963>,  <35.570675, 37.195091, 49.865307>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.200603, 37.455685, 50.268963> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.116970, 37.706802, 49.969055>,  <36.066792, 37.857471, 49.789108>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.116970, 37.706802, 49.969055>,  <36.200603, 37.455685, 50.268963>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.116970, 37.706802, 49.969055> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063338, 0.756416, 0.651017,
		0.975845, 0.183605, -0.118390,
		-0.209082, 0.627793, -0.749774,
		36.054245, 37.895142, 49.744122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.711414, 38.064316, 50.167522>,  <36.200603, 37.455685, 50.268963>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.711414, 38.064316, 50.167522> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.364861, 38.180305, 50.004902>,  <36.156929, 38.249901, 49.907330>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.364861, 38.180305, 50.004902>,  <36.711414, 38.064316, 50.167522>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.364861, 38.180305, 50.004902> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019071, 0.794322, 0.607198,
		0.499009, 0.533821, -0.682660,
		-0.866387, 0.289978, -0.406555,
		36.104946, 38.267300, 49.882935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.673084, 38.707306, 50.437641>,  <36.711414, 38.064316, 50.167522>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.673084, 38.707306, 50.437641> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.317211, 38.690838, 50.255753>,  <36.103687, 38.680958, 50.146622>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.317211, 38.690838, 50.255753>,  <36.673084, 38.707306, 50.437641>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.317211, 38.690838, 50.255753> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305400, 0.793992, 0.525649,
		0.339402, 0.606532, -0.718975,
		-0.889683, -0.041169, -0.454718,
		36.050304, 38.678486, 50.119339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.573135, 39.313637, 50.156605>,  <36.673084, 38.707306, 50.437641>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.573135, 39.313637, 50.156605> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.211784, 39.151478, 50.212543>,  <35.994972, 39.054180, 50.246105>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.211784, 39.151478, 50.212543>,  <36.573135, 39.313637, 50.156605>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.211784, 39.151478, 50.212543> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245647, 0.756480, 0.606132,
		-0.351518, 0.513213, -0.782973,
		-0.903378, -0.405401, 0.139847,
		35.940769, 39.029858, 50.254498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.285793, 39.870529, 50.187416>,  <36.573135, 39.313637, 50.156605>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.285793, 39.870529, 50.187416> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.046124, 39.589180, 50.340389>,  <35.902321, 39.420372, 50.432175>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.046124, 39.589180, 50.340389>,  <36.285793, 39.870529, 50.187416>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.046124, 39.589180, 50.340389> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232133, 0.609780, 0.757814,
		-0.766230, 0.365284, -0.528639,
		-0.599171, -0.703374, 0.382437,
		35.866371, 39.378166, 50.455120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.863224, 40.104038, 50.564491>,  <36.285793, 39.870529, 50.187416>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.863224, 40.104038, 50.564491> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.071148, 40.020195, 50.895756>,  <37.195904, 39.969891, 51.094517>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.071148, 40.020195, 50.895756>,  <36.863224, 40.104038, 50.564491>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.071148, 40.020195, 50.895756> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.598727, 0.602109, 0.528196,
		-0.609361, -0.770408, 0.187485,
		0.519813, -0.209610, 0.828166,
		37.227093, 39.957314, 51.144207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.392380, 39.868584, 51.063953>,  <36.863224, 40.104038, 50.564491>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.392380, 39.868584, 51.063953> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.707863, 40.067551, 51.208458>,  <36.897152, 40.186932, 51.295158>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.707863, 40.067551, 51.208458>,  <36.392380, 39.868584, 51.063953>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.707863, 40.067551, 51.208458> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.614637, 0.650001, 0.446900,
		-0.012520, -0.574517, 0.818397,
		0.788710, 0.497422, 0.361258,
		36.944477, 40.216778, 51.316833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.017597, 40.571552, 51.198105>,  <36.392380, 39.868584, 51.063953>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.017597, 40.571552, 51.198105> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.735535, 40.777405, 51.002998>,  <35.566296, 40.900917, 50.885937>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.735535, 40.777405, 51.002998>,  <36.017597, 40.571552, 51.198105>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.735535, 40.777405, 51.002998> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155584, -0.558843, -0.814547,
		-0.691773, -0.650271, 0.314004,
		-0.705155, 0.514628, -0.487764,
		35.523987, 40.931793, 50.856670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.598629, 40.156727, 50.750050>,  <36.017597, 40.571552, 51.198105>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.598629, 40.156727, 50.750050> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.569107, 40.516262, 50.577244>,  <35.551392, 40.731983, 50.473560>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.569107, 40.516262, 50.577244>,  <35.598629, 40.156727, 50.750050>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.569107, 40.516262, 50.577244> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290457, -0.395042, -0.871537,
		-0.954037, -0.189808, -0.231918,
		-0.073807, 0.898841, -0.432016,
		35.546967, 40.785915, 50.447639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.222973, 40.025318, 50.075493>,  <35.598629, 40.156727, 50.750050>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.222973, 40.025318, 50.075493> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.399452, 40.382912, 50.044163>,  <35.505341, 40.597469, 50.025364>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.399452, 40.382912, 50.044163>,  <35.222973, 40.025318, 50.075493>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.399452, 40.382912, 50.044163> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306597, -0.232187, -0.923086,
		-0.843409, 0.383253, -0.376534,
		0.441202, 0.893983, -0.078324,
		35.531815, 40.651108, 50.020664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.092415, 40.388557, 49.382347>,  <35.222973, 40.025318, 50.075493>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.092415, 40.388557, 49.382347> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.416714, 40.594231, 49.494278>,  <35.611294, 40.717636, 49.561436>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.416714, 40.594231, 49.494278>,  <35.092415, 40.388557, 49.382347>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.416714, 40.594231, 49.494278> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395212, -0.128120, -0.909611,
		-0.431857, 0.848055, -0.307085,
		0.810745, 0.514186, 0.279832,
		35.659939, 40.748486, 49.578228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.259197, 40.781590, 48.775406>,  <35.092415, 40.388557, 49.382347>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.259197, 40.781590, 48.775406> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.579491, 40.774654, 49.014912>,  <35.771667, 40.770493, 49.158615>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.579491, 40.774654, 49.014912>,  <35.259197, 40.781590, 48.775406>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.579491, 40.774654, 49.014912> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598915, 0.041721, -0.799725,
		-0.011114, 0.998979, 0.043793,
		0.800736, -0.017340, 0.598767,
		35.819710, 40.769451, 49.194542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.605389, 41.452496, 48.668587>,  <35.259197, 40.781590, 48.775406>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.605389, 41.452496, 48.668587> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.870636, 41.182732, 48.798477>,  <36.029785, 41.020874, 48.876411>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.870636, 41.182732, 48.798477>,  <35.605389, 41.452496, 48.668587>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.870636, 41.182732, 48.798477> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622151, 0.255399, -0.740067,
		0.416172, 0.692782, 0.588943,
		0.663121, -0.674407, 0.324725,
		36.069572, 40.980408, 48.895893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.243031, 41.764122, 48.535694>,  <35.605389, 41.452496, 48.668587>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.243031, 41.764122, 48.535694> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.263290, 41.364758, 48.545563>,  <36.275448, 41.125137, 48.551483>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.263290, 41.364758, 48.545563>,  <36.243031, 41.764122, 48.535694>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.263290, 41.364758, 48.545563> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407745, -0.001875, -0.913094,
		0.911690, 0.056307, 0.407003,
		0.050651, -0.998412, 0.024668,
		36.278484, 41.065235, 48.552963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.851250, 41.635441, 48.196918>,  <36.243031, 41.764122, 48.535694>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.851250, 41.635441, 48.196918> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.662811, 41.282608, 48.196945>,  <36.549747, 41.070908, 48.196960>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.662811, 41.282608, 48.196945>,  <36.851250, 41.635441, 48.196918>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.662811, 41.282608, 48.196945> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270506, -0.144545, -0.951805,
		0.839580, -0.448373, 0.306703,
		-0.471096, -0.882082, 0.000069,
		36.521481, 41.017982, 48.196964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.327908, 41.259758, 47.779713>,  <36.851250, 41.635441, 48.196918>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.327908, 41.259758, 47.779713> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.994297, 41.039207, 47.787472>,  <36.794128, 40.906876, 47.792126>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.994297, 41.039207, 47.787472>,  <37.327908, 41.259758, 47.779713>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.994297, 41.039207, 47.787472> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203999, -0.340854, -0.917716,
		0.512619, -0.761446, 0.396763,
		-0.834030, -0.551378, 0.019394,
		36.744087, 40.873795, 47.793289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.482975, 40.544384, 47.402569>,  <37.327908, 41.259758, 47.779713>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.482975, 40.544384, 47.402569> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.089359, 40.614902, 47.392960>,  <36.853188, 40.657215, 47.387192>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.089359, 40.614902, 47.392960>,  <37.482975, 40.544384, 47.402569>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.089359, 40.614902, 47.392960> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054754, -0.428522, -0.901871,
		-0.169291, -0.886165, 0.431337,
		-0.984044, 0.176296, -0.024024,
		36.794147, 40.667793, 47.385754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.182384, 39.894234, 47.401653>,  <37.482975, 40.544384, 47.402569>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.182384, 39.894234, 47.401653> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.955730, 40.187393, 47.251034>,  <36.819740, 40.363289, 47.160660>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.955730, 40.187393, 47.251034>,  <37.182384, 39.894234, 47.401653>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.955730, 40.187393, 47.251034> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044692, -0.428987, -0.902204,
		-0.822759, -0.528045, 0.210323,
		-0.566630, 0.732897, -0.376553,
		36.785740, 40.407261, 47.138069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.873459, 39.547047, 46.936253>,  <37.182384, 39.894234, 47.401653>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.873459, 39.547047, 46.936253> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.795776, 39.922157, 46.821117>,  <36.749168, 40.147224, 46.752037>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.795776, 39.922157, 46.821117>,  <36.873459, 39.547047, 46.936253>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.795776, 39.922157, 46.821117> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176534, -0.255222, -0.950630,
		-0.964945, -0.235433, -0.115984,
		-0.194207, 0.937781, -0.287837,
		36.737514, 40.203491, 46.734768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.348171, 39.633602, 46.406868>,  <36.873459, 39.547047, 46.936253>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.348171, 39.633602, 46.406868> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.556053, 39.970409, 46.349026>,  <36.680782, 40.172493, 46.314320>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.556053, 39.970409, 46.349026>,  <36.348171, 39.633602, 46.406868>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.556053, 39.970409, 46.349026> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020386, -0.181434, -0.983192,
		-0.854104, 0.508020, -0.111457,
		0.519703, 0.842020, -0.144607,
		36.711964, 40.223015, 46.305645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.092285, 39.854641, 45.836372>,  <36.348171, 39.633602, 46.406868>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.092285, 39.854641, 45.836372> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.437401, 40.053375, 45.873779>,  <36.644470, 40.172615, 45.896221>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.437401, 40.053375, 45.873779>,  <36.092285, 39.854641, 45.836372>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.437401, 40.053375, 45.873779> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223656, -0.209222, -0.951948,
		-0.453395, 0.842248, -0.291635,
		0.862793, 0.496834, 0.093513,
		36.696239, 40.202427, 45.901833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.589764, 40.371506, 45.620590>,  <36.092285, 39.854641, 45.836372>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.589764, 40.371506, 45.620590> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.220982, 40.398582, 45.468052>,  <34.999714, 40.414829, 45.376530>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.220982, 40.398582, 45.468052>,  <35.589764, 40.371506, 45.620590>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.220982, 40.398582, 45.468052> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371417, 0.124565, 0.920072,
		0.109783, 0.989900, -0.089702,
		-0.921953, 0.067692, -0.381341,
		34.944397, 40.418888, 45.353649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.289948, 40.921066, 45.882957>,  <35.589764, 40.371506, 45.620590>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.289948, 40.921066, 45.882957> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.956455, 40.731144, 45.770210>,  <34.756359, 40.617191, 45.702564>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.956455, 40.731144, 45.770210>,  <35.289948, 40.921066, 45.882957>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.956455, 40.731144, 45.770210> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426640, 0.229889, 0.874717,
		-0.350524, 0.849535, -0.394238,
		-0.833733, -0.474807, -0.281864,
		34.706337, 40.588703, 45.685650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.748745, 41.342403, 46.056747>,  <35.289948, 40.921066, 45.882957>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.748745, 41.342403, 46.056747> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.583553, 40.978996, 46.031326>,  <34.484440, 40.760952, 46.016075>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.583553, 40.978996, 46.031326>,  <34.748745, 41.342403, 46.056747>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.583553, 40.978996, 46.031326> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406603, 0.121484, 0.905492,
		-0.814938, 0.399787, -0.419578,
		-0.412976, -0.908522, -0.063553,
		34.459660, 40.706440, 46.012260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.133133, 41.505180, 46.286816>,  <34.748745, 41.342403, 46.056747>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.133133, 41.505180, 46.286816> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.190163, 41.112453, 46.336956>,  <34.224380, 40.876820, 46.367043>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.190163, 41.112453, 46.336956>,  <34.133133, 41.505180, 46.286816>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.190163, 41.112453, 46.336956> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375052, 0.063617, 0.924818,
		-0.915975, -0.178866, -0.359161,
		0.142570, -0.981815, 0.125355,
		34.232933, 40.817909, 46.374561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.444153, 41.183826, 46.422016>,  <34.133133, 41.505180, 46.286816>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.444153, 41.183826, 46.422016> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.710606, 40.911224, 46.543224>,  <33.870476, 40.747662, 46.615948>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.710606, 40.911224, 46.543224>,  <33.444153, 41.183826, 46.422016>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.710606, 40.911224, 46.543224> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522445, -0.136417, 0.841690,
		-0.532281, -0.718984, -0.446921,
		0.666130, -0.681508, 0.303017,
		33.910446, 40.706772, 46.634129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.031433, 40.634495, 46.812260>,  <33.444153, 41.183826, 46.422016>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.031433, 40.634495, 46.812260> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.404121, 40.584251, 46.948563>,  <33.627735, 40.554104, 47.030342>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.404121, 40.584251, 46.948563>,  <33.031433, 40.634495, 46.812260>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.404121, 40.584251, 46.948563> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330120, 0.098144, 0.938823,
		-0.151373, -0.987213, 0.049975,
		0.931723, -0.125615, 0.340756,
		33.683640, 40.546566, 47.050789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.005329, 40.116264, 47.345261>,  <33.031433, 40.634495, 46.812260>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.005329, 40.116264, 47.345261> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.335445, 40.334377, 47.403996>,  <33.533516, 40.465244, 47.439236>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.335445, 40.334377, 47.403996>,  <33.005329, 40.116264, 47.345261>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.335445, 40.334377, 47.403996> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373872, 0.332731, 0.865743,
		0.423219, -0.769387, 0.478466,
		0.825291, 0.545284, 0.146834,
		33.583035, 40.497963, 47.448048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.889908, 39.366898, 47.421585>,  <33.005329, 40.116264, 47.345261>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.889908, 39.366898, 47.421585> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.544228, 39.172039, 47.471924>,  <32.336819, 39.055122, 47.502129>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.544228, 39.172039, 47.471924>,  <32.889908, 39.366898, 47.421585>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.544228, 39.172039, 47.471924> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210128, -0.576719, -0.789456,
		0.457160, -0.655807, 0.600767,
		-0.864205, -0.487146, 0.125849,
		32.284966, 39.025894, 47.509678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.029415, 38.626015, 47.401619>,  <32.889908, 39.366898, 47.421585>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.029415, 38.626015, 47.401619> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.644611, 38.641037, 47.293449>,  <32.413731, 38.650051, 47.228546>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.644611, 38.641037, 47.293449>,  <33.029415, 38.626015, 47.401619>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.644611, 38.641037, 47.293449> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207377, -0.543726, -0.813238,
		-0.177581, -0.838422, 0.515280,
		-0.962008, 0.037559, -0.270425,
		32.356010, 38.652306, 47.212322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.815136, 37.897911, 47.392487>,  <33.029415, 38.626015, 47.401619>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.815136, 37.897911, 47.392487> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.576847, 38.119648, 47.159996>,  <32.433872, 38.252689, 47.020500>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.576847, 38.119648, 47.159996>,  <32.815136, 37.897911, 47.392487>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.576847, 38.119648, 47.159996> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265837, -0.546780, -0.793953,
		-0.757924, -0.627485, 0.178364,
		-0.595720, 0.554341, -0.581226,
		32.398132, 38.285950, 46.985630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.295666, 37.468216, 47.039555>,  <32.815136, 37.897911, 47.392487>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.295666, 37.468216, 47.039555> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.279644, 37.792152, 46.805443>,  <32.270031, 37.986515, 46.664974>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.279644, 37.792152, 46.805443>,  <32.295666, 37.468216, 47.039555>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.279644, 37.792152, 46.805443> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323620, -0.543664, -0.774403,
		-0.945339, -0.220423, -0.240307,
		-0.040050, 0.809842, -0.585280,
		32.267628, 38.035107, 46.629860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.035892, 37.177273, 46.471573>,  <32.295666, 37.468216, 47.039555>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.035892, 37.177273, 46.471573> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.251827, 37.502213, 46.383331>,  <32.381386, 37.697178, 46.330387>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.251827, 37.502213, 46.383331>,  <32.035892, 37.177273, 46.471573>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.251827, 37.502213, 46.383331> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349580, -0.454756, -0.819140,
		-0.765750, 0.365081, -0.529474,
		0.539834, 0.812350, -0.220604,
		32.413776, 37.745918, 46.317150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.105747, 37.130920, 45.784027>,  <32.035892, 37.177273, 46.471573>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.105747, 37.130920, 45.784027> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.396439, 37.400032, 45.839516>,  <32.570854, 37.561497, 45.872807>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.396439, 37.400032, 45.839516>,  <32.105747, 37.130920, 45.784027>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.396439, 37.400032, 45.839516> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458856, -0.325158, -0.826875,
		-0.511197, 0.664563, -0.545008,
		0.726725, 0.672776, 0.138719,
		32.614456, 37.601864, 45.881130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.189323, 37.504616, 45.163746>,  <32.105747, 37.130920, 45.784027>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.189323, 37.504616, 45.163746> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.540798, 37.566700, 45.344330>,  <32.751682, 37.603951, 45.452679>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.540798, 37.566700, 45.344330>,  <32.189323, 37.504616, 45.163746>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.540798, 37.566700, 45.344330> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465191, -0.490829, -0.736671,
		0.107251, 0.857320, -0.503488,
		0.878689, 0.155209, 0.451460,
		32.804405, 37.613262, 45.479767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<33.576950, 38.764343, 50.154484> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.838436, 38.685848, 50.446827>,  <33.995327, 38.638752, 50.622234>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.838436, 38.685848, 50.446827>,  <33.576950, 38.764343, 50.154484>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.838436, 38.685848, 50.446827> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552241, -0.536606, -0.638031,
		0.517387, 0.820698, -0.242416,
		0.653712, -0.196237, 0.730856,
		34.034550, 38.626976, 50.666084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.241650, 38.237972, 50.362095>,  <33.576950, 38.764343, 50.154484>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.241650, 38.237972, 50.362095> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.564873, 38.008087, 50.310333>,  <33.758808, 37.870155, 50.279278>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.564873, 38.008087, 50.310333>,  <33.241650, 38.237972, 50.362095>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.564873, 38.008087, 50.310333> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409154, -0.389492, -0.825160,
		0.423828, 0.719724, -0.549879,
		0.808061, -0.574711, -0.129400,
		33.807293, 37.835674, 50.271515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.132259, 38.092285, 49.680321>,  <33.241650, 38.237972, 50.362095>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.132259, 38.092285, 49.680321> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.440701, 37.871220, 49.806793>,  <33.625763, 37.738579, 49.882675>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.440701, 37.871220, 49.806793>,  <33.132259, 38.092285, 49.680321>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.440701, 37.871220, 49.806793> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070251, -0.567395, -0.820444,
		0.632828, 0.610431, -0.476342,
		0.771098, -0.552663, 0.316180,
		33.672031, 37.705421, 49.901646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.692814, 37.992966, 49.134872>,  <33.132259, 38.092285, 49.680321>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.692814, 37.992966, 49.134872> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.710861, 37.682674, 49.386650>,  <33.721691, 37.496498, 49.537716>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.710861, 37.682674, 49.386650>,  <33.692814, 37.992966, 49.134872>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.710861, 37.682674, 49.386650> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171742, -0.626730, -0.760075,
		0.984108, -0.073809, -0.161503,
		0.045119, -0.775733, 0.629446,
		33.724396, 37.449955, 49.575485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.201351, 37.501263, 48.840450>,  <33.692814, 37.992966, 49.134872>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.201351, 37.501263, 48.840450> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.973438, 37.302216, 49.102055>,  <33.836693, 37.182789, 49.259018>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.973438, 37.302216, 49.102055>,  <34.201351, 37.501263, 48.840450>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.973438, 37.302216, 49.102055> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041037, -0.812067, -0.582120,
		0.820773, -0.304841, 0.483119,
		-0.569779, -0.497614, 0.654012,
		33.802505, 37.152931, 49.298260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.588673, 36.835495, 48.995049>,  <34.201351, 37.501263, 48.840450>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.588673, 36.835495, 48.995049> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.197712, 36.783302, 49.061565>,  <33.963135, 36.751987, 49.101475>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.197712, 36.783302, 49.061565>,  <34.588673, 36.835495, 48.995049>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.197712, 36.783302, 49.061565> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025398, -0.853526, -0.520430,
		0.209845, -0.504447, 0.837555,
		-0.977405, -0.130482, 0.166297,
		33.904491, 36.744160, 49.111454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.517685, 36.150764, 49.296825>,  <34.588673, 36.835495, 48.995049>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.517685, 36.150764, 49.296825> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.173473, 36.267590, 49.129879>,  <33.966946, 36.337685, 49.029713>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.173473, 36.267590, 49.129879>,  <34.517685, 36.150764, 49.296825>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.173473, 36.267590, 49.129879> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103900, -0.902722, -0.417491,
		-0.498697, -0.315898, 0.807162,
		-0.860527, 0.292065, -0.417363,
		33.915314, 36.355209, 49.004669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.103672, 35.500168, 49.377853>,  <34.517685, 36.150764, 49.296825>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.103672, 35.500168, 49.377853> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.930965, 35.748775, 49.116386>,  <33.827339, 35.897942, 48.959507>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.930965, 35.748775, 49.116386>,  <34.103672, 35.500168, 49.377853>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.930965, 35.748775, 49.116386> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182042, -0.769837, -0.611729,
		-0.883423, -0.145130, 0.445535,
		-0.431770, 0.621521, -0.653672,
		33.801434, 35.935230, 48.920284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.457603, 35.229065, 49.210270>,  <34.103672, 35.500168, 49.377853>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.457603, 35.229065, 49.210270> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.534351, 35.467381, 48.898315>,  <33.580399, 35.610371, 48.711143>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.534351, 35.467381, 48.898315>,  <33.457603, 35.229065, 49.210270>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.534351, 35.467381, 48.898315> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268041, -0.732629, -0.625627,
		-0.944109, 0.329079, 0.019129,
		0.191866, 0.595787, -0.779888,
		33.591911, 35.646118, 48.664349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.991444, 35.049118, 48.742786>,  <33.457603, 35.229065, 49.210270>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.991444, 35.049118, 48.742786> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.246288, 35.236046, 48.497608>,  <33.399193, 35.348202, 48.350502>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.246288, 35.236046, 48.497608>,  <32.991444, 35.049118, 48.742786>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.246288, 35.236046, 48.497608> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111720, -0.730845, -0.673338,
		-0.762634, 0.497468, -0.413419,
		0.637109, 0.467323, -0.612944,
		33.437420, 35.376244, 48.313725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.706417, 34.943306, 48.010490>,  <32.991444, 35.049118, 48.742786>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.706417, 34.943306, 48.010490> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.097542, 35.021626, 47.980682>,  <33.332214, 35.068619, 47.962799>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.097542, 35.021626, 47.980682>,  <32.706417, 34.943306, 48.010490>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.097542, 35.021626, 47.980682> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075405, -0.660776, -0.746786,
		-0.195460, 0.724595, -0.660877,
		0.977809, 0.195800, -0.074517,
		33.390884, 35.080364, 47.958328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.828838, 35.197964, 47.336975>,  <32.706417, 34.943306, 48.010490>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.828838, 35.197964, 47.336975> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.195118, 35.081982, 47.448269>,  <33.414886, 35.012394, 47.515045>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.195118, 35.081982, 47.448269>,  <32.828838, 35.197964, 47.336975>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.195118, 35.081982, 47.448269> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071062, -0.564635, -0.822276,
		0.395525, 0.772732, -0.496433,
		0.915702, -0.289953, 0.278239,
		33.469830, 34.994995, 47.531742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.661793, 35.689236, 46.821228>,  <32.828838, 35.197964, 47.336975>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.661793, 35.689236, 46.821228> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.359459, 35.637856, 46.564411>,  <32.178059, 35.607029, 46.410320>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.359459, 35.637856, 46.564411>,  <32.661793, 35.689236, 46.821228>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.359459, 35.637856, 46.564411> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.618194, 0.463112, 0.635109,
		0.215757, 0.876942, -0.429443,
		-0.755835, -0.128450, -0.642039,
		32.132710, 35.599319, 46.371799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.292027, 36.299694, 46.747520>,  <32.661793, 35.689236, 46.821228>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.292027, 36.299694, 46.747520> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.025700, 36.013371, 46.663319>,  <31.865904, 35.841576, 46.612797>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.025700, 36.013371, 46.663319>,  <32.292027, 36.299694, 46.747520>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.025700, 36.013371, 46.663319> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563645, 0.297688, 0.770511,
		-0.488870, 0.631669, -0.601665,
		-0.665816, -0.715804, -0.210506,
		31.825954, 35.798630, 46.600166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.659571, 36.652653, 46.783958>,  <32.292027, 36.299694, 46.747520>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.659571, 36.652653, 46.783958> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.561605, 36.265110, 46.798584>,  <31.502827, 36.032585, 46.807362>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.561605, 36.265110, 46.798584>,  <31.659571, 36.652653, 46.783958>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.561605, 36.265110, 46.798584> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.590871, 0.179054, 0.786645,
		-0.768693, 0.171053, -0.616321,
		-0.244912, -0.968855, 0.036567,
		31.488132, 35.974453, 46.809555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.878155, 36.724449, 46.824120>,  <31.659571, 36.652653, 46.783958>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.878155, 36.724449, 46.824120> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.990433, 36.364349, 46.957245>,  <31.057798, 36.148289, 47.037121>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.990433, 36.364349, 46.957245>,  <30.878155, 36.724449, 46.824120>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.990433, 36.364349, 46.957245> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566608, 0.124461, 0.814533,
		-0.774704, -0.417210, -0.475152,
		0.280693, -0.900247, 0.332815,
		31.074640, 36.094276, 47.057091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.283609, 36.313038, 47.004204>,  <30.878155, 36.724449, 46.824120>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.283609, 36.313038, 47.004204> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.586546, 36.156406, 47.213238>,  <30.768309, 36.062428, 47.338657>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.586546, 36.156406, 47.213238>,  <30.283609, 36.313038, 47.004204>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.586546, 36.156406, 47.213238> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539731, 0.075128, 0.838478,
		-0.367592, -0.917072, -0.154450,
		0.757341, -0.391579, 0.522589,
		30.813749, 36.038933, 47.370014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.869371, 36.006409, 47.553833>,  <30.283609, 36.313038, 47.004204>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.869371, 36.006409, 47.553833> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.243084, 35.997852, 47.696190>,  <30.467312, 35.992718, 47.781605>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.243084, 35.997852, 47.696190>,  <29.869371, 36.006409, 47.553833>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.243084, 35.997852, 47.696190> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331112, 0.318137, 0.888343,
		-0.132228, -0.947803, 0.290146,
		0.934281, -0.021393, 0.355895,
		30.523369, 35.991436, 47.802959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.833189, 35.618431, 48.232311>,  <29.869371, 36.006409, 47.553833>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.833189, 35.618431, 48.232311> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.173244, 35.829052, 48.233444>,  <30.377277, 35.955425, 48.234123>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.173244, 35.829052, 48.233444>,  <29.833189, 35.618431, 48.232311>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.173244, 35.829052, 48.233444> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252491, 0.402926, 0.879715,
		0.462077, -0.748593, 0.475493,
		0.850137, 0.526554, 0.002830,
		30.428286, 35.987019, 48.234291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.125425, 35.497723, 48.912880>,  <29.833189, 35.618431, 48.232311>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.125425, 35.497723, 48.912880> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.303284, 35.828884, 48.776142>,  <30.409998, 36.027580, 48.694099>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.303284, 35.828884, 48.776142>,  <30.125425, 35.497723, 48.912880>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.303284, 35.828884, 48.776142> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008334, 0.385457, 0.922688,
		0.895667, -0.407421, 0.178292,
		0.444646, 0.827907, -0.341846,
		30.436678, 36.077255, 48.673588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.581575, 35.627106, 49.458584>,  <30.125425, 35.497723, 48.912880>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.581575, 35.627106, 49.458584> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.525684, 35.973274, 49.266113>,  <30.492149, 36.180973, 49.150631>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.525684, 35.973274, 49.266113>,  <30.581575, 35.627106, 49.458584>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.525684, 35.973274, 49.266113> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154682, 0.460896, 0.873870,
		0.978034, 0.196532, 0.069465,
		-0.139727, 0.865419, -0.481172,
		30.483767, 36.232899, 49.121761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.038143, 36.095490, 49.894146>,  <30.581575, 35.627106, 49.458584>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.038143, 36.095490, 49.894146> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.797829, 36.329266, 49.675976>,  <30.653641, 36.469532, 49.545074>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.797829, 36.329266, 49.675976>,  <31.038143, 36.095490, 49.894146>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.797829, 36.329266, 49.675976> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030581, 0.698585, 0.714874,
		0.798826, 0.412805, -0.437572,
		-0.600784, 0.584441, -0.545423,
		30.617594, 36.504597, 49.512348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.400772, 36.698528, 49.607166>,  <31.038143, 36.095490, 49.894146>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.400772, 36.698528, 49.607166> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.009670, 36.780735, 49.623966>,  <30.775009, 36.830059, 49.634048>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.009670, 36.780735, 49.623966>,  <31.400772, 36.698528, 49.607166>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.009670, 36.780735, 49.623966> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172400, 0.673252, 0.719034,
		0.119495, 0.710278, -0.693705,
		-0.977752, 0.205515, 0.042002,
		30.716345, 36.842388, 49.636566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.426434, 37.331402, 49.783894>,  <31.400772, 36.698528, 49.607166>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.426434, 37.331402, 49.783894> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.038864, 37.243488, 49.829296>,  <30.806322, 37.190742, 49.856537>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.038864, 37.243488, 49.829296>,  <31.426434, 37.331402, 49.783894>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.038864, 37.243488, 49.829296> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037927, 0.585435, 0.809832,
		-0.244434, 0.780361, -0.575578,
		-0.968924, -0.219780, 0.113503,
		30.748186, 37.177555, 49.863346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.028278, 37.953445, 49.769264>,  <31.426434, 37.331402, 49.783894>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.028278, 37.953445, 49.769264> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.848259, 37.673298, 49.990871>,  <30.740248, 37.505207, 50.123837>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.848259, 37.673298, 49.990871>,  <31.028278, 37.953445, 49.769264>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.848259, 37.673298, 49.990871> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099990, 0.576976, 0.810618,
		-0.887388, 0.420214, -0.189638,
		-0.450049, -0.700371, 0.554018,
		30.713243, 37.463188, 50.157078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.389820, 38.150803, 50.219898>,  <31.028278, 37.953445, 49.769264>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.389820, 38.150803, 50.219898> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.597935, 37.857533, 50.395054>,  <30.722803, 37.681568, 50.500149>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.597935, 37.857533, 50.395054>,  <30.389820, 38.150803, 50.219898>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.597935, 37.857533, 50.395054> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052094, 0.539052, 0.840660,
		-0.852401, -0.414574, 0.318656,
		0.520288, -0.733179, 0.437892,
		30.754021, 37.637577, 50.526421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.594227, 38.741894, 49.717789>,  <30.389820, 38.150803, 50.219898>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.594227, 38.741894, 49.717789> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.591919, 39.137402, 49.777523>,  <30.590534, 39.374706, 49.813362>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.591919, 39.137402, 49.777523>,  <30.594227, 38.741894, 49.717789>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.591919, 39.137402, 49.777523> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078540, 0.149324, -0.985664,
		-0.996894, 0.006042, -0.078520,
		-0.005769, 0.988770, 0.149334,
		30.590189, 39.434032, 49.822323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.207745, 39.025372, 49.241207>,  <30.594227, 38.741894, 49.717789>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.207745, 39.025372, 49.241207> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.492651, 39.288914, 49.338024>,  <30.663595, 39.447041, 49.396114>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.492651, 39.288914, 49.338024>,  <30.207745, 39.025372, 49.241207>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.492651, 39.288914, 49.338024> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224627, 0.112739, -0.967901,
		-0.664998, 0.743770, -0.067697,
		0.712264, 0.658859, 0.242042,
		30.706329, 39.486572, 49.410637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.323393, 39.322163, 48.635929>,  <30.207745, 39.025372, 49.241207>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.323393, 39.322163, 48.635929> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.635286, 39.471668, 48.836853>,  <30.822422, 39.561371, 48.957409>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.635286, 39.471668, 48.836853>,  <30.323393, 39.322163, 48.635929>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.635286, 39.471668, 48.836853> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511187, 0.083217, -0.855431,
		-0.361526, 0.923785, -0.126174,
		0.779735, 0.373760, 0.502312,
		30.869207, 39.583797, 48.987545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.682514, 39.891228, 48.207882>,  <30.323393, 39.322163, 48.635929>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.682514, 39.891228, 48.207882> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.954981, 39.753288, 48.466213>,  <31.118462, 39.670525, 48.621212>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.954981, 39.753288, 48.466213>,  <30.682514, 39.891228, 48.207882>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.954981, 39.753288, 48.466213> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.684326, -0.013618, -0.729049,
		0.260205, 0.938560, 0.226711,
		0.681169, -0.344846, 0.645825,
		31.159332, 39.649834, 48.659962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.297853, 40.225521, 47.992722>,  <30.682514, 39.891228, 48.207882>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.297853, 40.225521, 47.992722> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.414181, 39.903656, 48.199776>,  <31.483976, 39.710537, 48.324009>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.414181, 39.903656, 48.199776>,  <31.297853, 40.225521, 47.992722>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.414181, 39.903656, 48.199776> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568942, -0.289539, -0.769722,
		0.769241, 0.518354, 0.373601,
		0.290817, -0.804659, 0.517638,
		31.501427, 39.662258, 48.355068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.961662, 40.241329, 47.950527>,  <31.297853, 40.225521, 47.992722>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.961662, 40.241329, 47.950527> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.862780, 39.860268, 48.021332>,  <31.803450, 39.631630, 48.063816>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.862780, 39.860268, 48.021332>,  <31.961662, 40.241329, 47.950527>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.862780, 39.860268, 48.021332> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501088, -0.282047, -0.818145,
		0.829337, -0.113553, 0.547089,
		-0.247207, -0.952657, 0.177012,
		31.788618, 39.574471, 48.074436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.451946, 39.850262, 47.704475>,  <31.961662, 40.241329, 47.950527>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.451946, 39.850262, 47.704475> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.206230, 39.538609, 47.754425>,  <32.058800, 39.351616, 47.784393>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.206230, 39.538609, 47.754425>,  <32.451946, 39.850262, 47.704475>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.206230, 39.538609, 47.754425> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350610, -0.411276, -0.841383,
		0.706909, -0.473073, 0.525816,
		-0.614291, -0.779137, 0.124871,
		32.021942, 39.304867, 47.791885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.042217, 40.173428, 48.073727>,  <32.451946, 39.850262, 47.704475>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.042217, 40.173428, 48.073727> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.275814, 40.476490, 47.957165>,  <33.415970, 40.658325, 47.887226>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.275814, 40.476490, 47.957165>,  <33.042217, 40.173428, 48.073727>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.275814, 40.476490, 47.957165> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191470, 0.477418, 0.857561,
		0.788858, -0.445009, 0.423874,
		0.583988, 0.757654, -0.291409,
		33.451012, 40.703785, 47.869743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.533646, 40.379349, 48.567909>,  <33.042217, 40.173428, 48.073727>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.533646, 40.379349, 48.567909> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.466553, 40.707371, 48.349045>,  <33.426296, 40.904182, 48.217728>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.466553, 40.707371, 48.349045>,  <33.533646, 40.379349, 48.567909>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.466553, 40.707371, 48.349045> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294418, 0.488021, 0.821677,
		0.940843, 0.298911, 0.159584,
		-0.167728, 0.820053, -0.547156,
		33.416233, 40.953388, 48.184898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.917637, 40.823536, 48.841530>,  <33.533646, 40.379349, 48.567909>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.917637, 40.823536, 48.841530> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.664368, 41.043674, 48.623829>,  <33.512405, 41.175758, 48.493210>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.664368, 41.043674, 48.623829>,  <33.917637, 40.823536, 48.841530>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.664368, 41.043674, 48.623829> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234336, 0.533857, 0.812456,
		0.737684, 0.641963, -0.209058,
		-0.633173, 0.550346, -0.544253,
		33.474415, 41.208778, 48.460552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.134880, 41.448093, 48.930454>,  <33.917637, 40.823536, 48.841530>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.134880, 41.448093, 48.930454> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.786674, 41.542854, 48.757904>,  <33.577751, 41.599712, 48.654373>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.786674, 41.542854, 48.757904>,  <34.134880, 41.448093, 48.930454>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.786674, 41.542854, 48.757904> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150860, 0.705875, 0.692085,
		0.468457, 0.667545, -0.578733,
		-0.870511, 0.236905, -0.431378,
		33.525520, 41.613926, 48.628490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.078548, 42.094883, 48.911568>,  <34.134880, 41.448093, 48.930454>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.078548, 42.094883, 48.911568> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.693150, 42.030437, 48.826038>,  <33.461910, 41.991772, 48.774719>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.693150, 42.030437, 48.826038>,  <34.078548, 42.094883, 48.911568>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.693150, 42.030437, 48.826038> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248500, 0.835386, 0.490285,
		0.099633, 0.525522, -0.844926,
		-0.963494, -0.161115, -0.213824,
		33.404102, 41.982101, 48.761890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.773872, 42.697018, 48.642143>,  <34.078548, 42.094883, 48.911568>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.773872, 42.697018, 48.642143> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.466251, 42.494267, 48.797905>,  <33.281681, 42.372616, 48.891361>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.466251, 42.494267, 48.797905>,  <33.773872, 42.697018, 48.642143>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.466251, 42.494267, 48.797905> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303706, 0.825825, 0.475159,
		-0.562429, 0.247156, -0.789042,
		-0.769049, -0.506881, 0.389405,
		33.235538, 42.342201, 48.914726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.069225, 43.115196, 48.469723>,  <33.773872, 42.697018, 48.642143>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.069225, 43.115196, 48.469723> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.053143, 42.890274, 48.800102>,  <33.043495, 42.755322, 48.998329>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.053143, 42.890274, 48.800102>,  <33.069225, 43.115196, 48.469723>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.053143, 42.890274, 48.800102> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293482, 0.796802, 0.528181,
		-0.955119, -0.221167, -0.197061,
		-0.040203, -0.562309, 0.825949,
		33.041080, 42.721581, 49.047886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.508453, 43.432903, 48.862675>,  <33.069225, 43.115196, 48.469723>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.508453, 43.432903, 48.862675> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.689358, 43.201988, 49.134617>,  <32.797901, 43.063438, 49.297783>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.689358, 43.201988, 49.134617>,  <32.508453, 43.432903, 48.862675>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.689358, 43.201988, 49.134617> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281411, 0.630963, 0.722975,
		-0.846328, -0.518289, 0.122903,
		0.452258, -0.577288, 0.679854,
		32.825035, 43.028801, 49.338573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.190098, 43.598190, 49.484909>,  <32.508453, 43.432903, 48.862675>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.190098, 43.598190, 49.484909> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.514553, 43.407394, 49.620285>,  <32.709225, 43.292915, 49.701511>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.514553, 43.407394, 49.620285>,  <32.190098, 43.598190, 49.484909>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.514553, 43.407394, 49.620285> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043795, 0.527506, 0.848422,
		-0.583219, -0.703005, 0.406988,
		0.811134, -0.476992, 0.338439,
		32.757893, 43.264297, 49.721817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<36.915359, 34.873924, 36.767353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.234417, 34.877491, 37.008575>,  <37.425854, 34.879631, 37.153309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.234417, 34.877491, 37.008575>,  <36.915359, 34.873924, 36.767353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.234417, 34.877491, 37.008575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529391, 0.489417, 0.692977,
		-0.288970, -0.872005, 0.395101,
		0.797648, 0.008913, 0.603058,
		37.473713, 34.880165, 37.189491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.693718, 34.625175, 37.442596>,  <36.915359, 34.873924, 36.767353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.693718, 34.625175, 37.442596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.007267, 34.870117, 37.483692>,  <37.195396, 35.017082, 37.508350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.007267, 34.870117, 37.483692>,  <36.693718, 34.625175, 37.442596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.007267, 34.870117, 37.483692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502268, 0.528069, 0.684741,
		0.365054, -0.588354, 0.721509,
		0.783876, 0.612358, 0.102738,
		37.242432, 35.053825, 37.514515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.721760, 34.868000, 38.171288>,  <36.693718, 34.625175, 37.442596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.721760, 34.868000, 38.171288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.995998, 35.127842, 38.039852>,  <37.160542, 35.283745, 37.960991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.995998, 35.127842, 38.039852>,  <36.721760, 34.868000, 38.171288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.995998, 35.127842, 38.039852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215921, 0.612518, 0.760395,
		0.695220, -0.450378, 0.560205,
		0.685600, 0.649601, -0.328588,
		37.201679, 35.322723, 37.941277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.988323, 35.145401, 38.783485>,  <36.721760, 34.868000, 38.171288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.988323, 35.145401, 38.783485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.089531, 35.411674, 38.502674>,  <37.150257, 35.571438, 38.334187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.089531, 35.411674, 38.502674>,  <36.988323, 35.145401, 38.783485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.089531, 35.411674, 38.502674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026814, 0.730184, 0.682724,
		0.967088, -0.153921, 0.202603,
		0.253024, 0.665687, -0.702025,
		37.165440, 35.611382, 38.292065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.437271, 35.535107, 39.262928>,  <36.988323, 35.145401, 38.783485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.437271, 35.535107, 39.262928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.324574, 35.760784, 38.952496>,  <37.256954, 35.896191, 38.766235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.324574, 35.760784, 38.952496>,  <37.437271, 35.535107, 39.262928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.324574, 35.760784, 38.952496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040637, 0.815138, 0.577840,
		0.958629, 0.131265, -0.252586,
		-0.281742, 0.564198, -0.776081,
		37.240051, 35.930042, 38.719673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.933281, 36.139984, 39.247093>,  <37.437271, 35.535107, 39.262928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.933281, 36.139984, 39.247093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.614609, 36.239281, 39.026665>,  <37.423405, 36.298859, 38.894409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.614609, 36.239281, 39.026665>,  <37.933281, 36.139984, 39.247093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.614609, 36.239281, 39.026665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026610, 0.925283, 0.378343,
		0.603813, 0.286755, -0.743762,
		-0.796682, 0.248240, -0.551067,
		37.375603, 36.313751, 38.861343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.030056, 36.758385, 39.035564>,  <37.933281, 36.139984, 39.247093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.030056, 36.758385, 39.035564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.631535, 36.745586, 39.003658>,  <37.392422, 36.737907, 38.984516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.631535, 36.745586, 39.003658>,  <38.030056, 36.758385, 39.035564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.631535, 36.745586, 39.003658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058618, 0.931714, 0.358430,
		0.062846, 0.361779, -0.930143,
		-0.996300, -0.031998, -0.079761,
		37.332645, 36.735989, 38.979729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.856865, 37.415070, 38.815155>,  <38.030056, 36.758385, 39.035564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.856865, 37.415070, 38.815155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.516651, 37.266083, 38.963673>,  <37.312523, 37.176693, 39.052784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.516651, 37.266083, 38.963673>,  <37.856865, 37.415070, 38.815155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.516651, 37.266083, 38.963673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154754, 0.851986, 0.500172,
		-0.502635, 0.367954, -0.782284,
		-0.850535, -0.372465, 0.371295,
		37.261490, 37.154343, 39.075062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.335518, 37.915150, 38.673939>,  <37.856865, 37.415070, 38.815155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.335518, 37.915150, 38.673939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.135403, 37.683037, 38.930996>,  <37.015335, 37.543770, 39.085232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.135403, 37.683037, 38.930996>,  <37.335518, 37.915150, 38.673939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.135403, 37.683037, 38.930996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431585, 0.810549, 0.395910,
		-0.750633, -0.079288, -0.655945,
		-0.500285, -0.580279, 0.642644,
		36.985317, 37.508953, 39.123791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.565487, 38.162754, 38.717587>,  <37.335518, 37.915150, 38.673939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.565487, 38.162754, 38.717587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.625214, 37.957516, 39.055683>,  <36.661049, 37.834373, 39.258541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.625214, 37.957516, 39.055683>,  <36.565487, 38.162754, 38.717587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.625214, 37.957516, 39.055683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465047, 0.717939, 0.517971,
		-0.872603, -0.470419, -0.131415,
		0.149316, -0.513097, 0.845243,
		36.670010, 37.803585, 39.309258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.969936, 38.099705, 39.023190>,  <36.565487, 38.162754, 38.717587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.969936, 38.099705, 39.023190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.189747, 38.020519, 39.347862>,  <36.321632, 37.973007, 39.542667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.189747, 38.020519, 39.347862>,  <35.969936, 38.099705, 39.023190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.189747, 38.020519, 39.347862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.623745, 0.549143, 0.556222,
		-0.555840, -0.811944, 0.178294,
		0.549530, -0.197961, 0.811683,
		36.354607, 37.961132, 39.591366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.519222, 37.752506, 39.697227>,  <35.969936, 38.099705, 39.023190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.519222, 37.752506, 39.697227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.856930, 37.921452, 39.829182>,  <36.059555, 38.022820, 39.908352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.856930, 37.921452, 39.829182>,  <35.519222, 37.752506, 39.697227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.856930, 37.921452, 39.829182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528977, 0.557969, 0.639416,
		0.086003, -0.714338, 0.694496,
		0.844267, 0.422364, 0.329882,
		36.110210, 38.048161, 39.928146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.981720, 37.308994, 39.401726>,  <35.519222, 37.752506, 39.697227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.981720, 37.308994, 39.401726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.625355, 37.165825, 39.513557>,  <34.411533, 37.079922, 39.580654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.625355, 37.165825, 39.513557>,  <34.981720, 37.308994, 39.401726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.625355, 37.165825, 39.513557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186427, -0.273122, -0.943742,
		0.414145, -0.892914, 0.176602,
		-0.890915, -0.357922, 0.279575,
		34.358082, 37.058449, 39.597431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.931488, 36.647327, 39.058308>,  <34.981720, 37.308994, 39.401726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.931488, 36.647327, 39.058308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.573322, 36.799721, 39.150467>,  <34.358421, 36.891155, 39.205765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.573322, 36.799721, 39.150467>,  <34.931488, 36.647327, 39.058308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.573322, 36.799721, 39.150467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352458, -0.290360, -0.889643,
		-0.272026, -0.877811, 0.394270,
		-0.895419, 0.380970, 0.230406,
		34.304699, 36.914017, 39.219585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.586693, 36.067833, 38.858204>,  <34.931488, 36.647327, 39.058308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.586693, 36.067833, 38.858204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.337444, 36.380169, 38.876102>,  <34.187893, 36.567570, 38.886841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.337444, 36.380169, 38.876102>,  <34.586693, 36.067833, 38.858204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.337444, 36.380169, 38.876102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.570040, -0.414241, -0.709548,
		-0.535512, -0.467640, 0.703235,
		-0.623122, 0.780844, 0.044743,
		34.150509, 36.614422, 38.889526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.986252, 35.816891, 38.924133>,  <34.586693, 36.067833, 38.858204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.986252, 35.816891, 38.924133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.894444, 36.164555, 38.748913>,  <33.839359, 36.373154, 38.643780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.894444, 36.164555, 38.748913>,  <33.986252, 35.816891, 38.924133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.894444, 36.164555, 38.748913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411148, -0.494518, -0.765773,
		-0.882201, 0.004344, 0.470854,
		-0.229519, 0.869157, -0.438050,
		33.825588, 36.425301, 38.617496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.199440, 35.861668, 38.949757>,  <33.986252, 35.816891, 38.924133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.199440, 35.861668, 38.949757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.339512, 36.132671, 38.691032>,  <33.423557, 36.295273, 38.535797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.339512, 36.132671, 38.691032>,  <33.199440, 35.861668, 38.949757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.339512, 36.132671, 38.691032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516325, -0.436528, -0.736785,
		-0.781525, 0.591972, 0.196949,
		0.350182, 0.677505, -0.646807,
		33.444565, 36.335922, 38.496990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.591824, 36.140209, 38.495323>,  <33.199440, 35.861668, 38.949757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.591824, 36.140209, 38.495323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.940620, 36.188499, 38.305561>,  <33.149899, 36.217472, 38.191704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.940620, 36.188499, 38.305561>,  <32.591824, 36.140209, 38.495323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.940620, 36.188499, 38.305561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310292, -0.613252, -0.726389,
		-0.378621, 0.780608, -0.497290,
		0.871989, 0.120722, -0.474406,
		33.202217, 36.224716, 38.163239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.431950, 36.375820, 37.805721>,  <32.591824, 36.140209, 38.495323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.431950, 36.375820, 37.805721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.805725, 36.237671, 37.770969>,  <33.029991, 36.154781, 37.750118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.805725, 36.237671, 37.770969>,  <32.431950, 36.375820, 37.805721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.805725, 36.237671, 37.770969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257389, -0.486337, -0.835001,
		0.246136, 0.802616, -0.543346,
		0.934434, -0.345375, -0.086880,
		33.086056, 36.134060, 37.744907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.752026, 36.635124, 37.182072>,  <32.431950, 36.375820, 37.805721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.752026, 36.635124, 37.182072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.927780, 36.286228, 37.267986>,  <33.033234, 36.076889, 37.319534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.927780, 36.286228, 37.267986>,  <32.752026, 36.635124, 37.182072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.927780, 36.286228, 37.267986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228839, -0.339899, -0.912196,
		0.868660, 0.351657, -0.348951,
		0.439388, -0.872242, 0.214784,
		33.059597, 36.024555, 37.332420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.012215, 36.427132, 36.531044>,  <32.752026, 36.635124, 37.182072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.012215, 36.427132, 36.531044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.067600, 36.098610, 36.752415>,  <33.100830, 35.901497, 36.885239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.067600, 36.098610, 36.752415>,  <33.012215, 36.427132, 36.531044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.067600, 36.098610, 36.752415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261340, -0.569302, -0.779485,
		0.955264, -0.036703, -0.293468,
		0.138462, -0.821309, 0.553426,
		33.109138, 35.852219, 36.918442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.160461, 35.934444, 36.027035>,  <33.012215, 36.427132, 36.531044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.160461, 35.934444, 36.027035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.080593, 35.706230, 36.345688>,  <33.032673, 35.569302, 36.536880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.080593, 35.706230, 36.345688>,  <33.160461, 35.934444, 36.027035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.080593, 35.706230, 36.345688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419910, -0.684747, -0.595649,
		0.885329, -0.453446, -0.102852,
		-0.199667, -0.570534, 0.796633,
		33.020695, 35.535069, 36.584679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.241707, 35.177189, 35.763828>,  <33.160461, 35.934444, 36.027035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.241707, 35.177189, 35.763828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.999672, 35.185471, 36.082184>,  <32.854450, 35.190441, 36.273197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.999672, 35.185471, 36.082184>,  <33.241707, 35.177189, 35.763828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.999672, 35.185471, 36.082184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549565, -0.734168, -0.398717,
		0.576061, -0.678652, 0.455615,
		-0.605088, 0.020705, 0.795889,
		32.818146, 35.191681, 36.320950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.056374, 34.401649, 35.999649>,  <33.241707, 35.177189, 35.763828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.056374, 34.401649, 35.999649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.772816, 34.661743, 36.108944>,  <32.602680, 34.817799, 36.174522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.772816, 34.661743, 36.108944>,  <33.056374, 34.401649, 35.999649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.772816, 34.661743, 36.108944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.701670, -0.610842, -0.366786,
		-0.071592, -0.451736, 0.889274,
		-0.708896, 0.650236, 0.273238,
		32.560146, 34.856815, 36.190914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.522354, 33.996250, 36.388916>,  <33.056374, 34.401649, 35.999649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.522354, 33.996250, 36.388916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.361191, 34.340031, 36.263050>,  <32.264492, 34.546299, 36.187531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.361191, 34.340031, 36.263050>,  <32.522354, 33.996250, 36.388916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.361191, 34.340031, 36.263050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.704016, -0.510715, -0.493489,
		-0.584833, 0.022700, 0.810836,
		-0.402904, 0.859450, -0.314664,
		32.240318, 34.597866, 36.168652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.932140, 33.857929, 36.573212>,  <32.522354, 33.996250, 36.388916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.932140, 33.857929, 36.573212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.896627, 34.158714, 36.311932>,  <31.875320, 34.339188, 36.155163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.896627, 34.158714, 36.311932>,  <31.932140, 33.857929, 36.573212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.896627, 34.158714, 36.311932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.739542, -0.489059, -0.462492,
		-0.667230, 0.442006, 0.599529,
		-0.088781, 0.751966, -0.653197,
		31.869993, 34.384304, 36.115974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.176247, 33.139927, 36.491909>,  <31.932140, 33.857929, 36.573212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.176247, 33.139927, 36.491909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.925789, 33.180523, 36.182678>,  <31.775515, 33.204880, 35.997139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.925789, 33.180523, 36.182678>,  <32.176247, 33.139927, 36.491909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.925789, 33.180523, 36.182678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.657029, -0.465184, -0.593226,
		-0.419826, -0.879377, 0.224594,
		-0.626147, 0.101487, -0.773072,
		31.737946, 33.210968, 35.950756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.792221, 32.574318, 36.613228>,  <32.176247, 33.139927, 36.491909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.792221, 32.574318, 36.613228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.072086, 32.843510, 36.709206>,  <33.240005, 33.005024, 36.766792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.072086, 32.843510, 36.709206>,  <32.792221, 32.574318, 36.613228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.072086, 32.843510, 36.709206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441030, 0.671022, -0.596005,
		-0.562104, 0.311182, 0.766293,
		0.699666, 0.672975, 0.239944,
		33.281986, 33.045403, 36.781189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.510799, 32.581902, 36.701111>,  <32.792221, 32.574318, 36.613228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.510799, 32.581902, 36.701111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.882557, 32.526329, 36.837891>,  <34.105610, 32.492985, 36.919960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.882557, 32.526329, 36.837891>,  <33.510799, 32.581902, 36.701111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.882557, 32.526329, 36.837891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274355, 0.359717, 0.891815,
		-0.246904, -0.922660, 0.296202,
		0.929391, -0.138929, 0.341952,
		34.161373, 32.484650, 36.940475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.509186, 32.090675, 37.336727>,  <33.510799, 32.581902, 36.701111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.509186, 32.090675, 37.336727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.828209, 32.331768, 37.346703>,  <34.019623, 32.476425, 37.352688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.828209, 32.331768, 37.346703>,  <33.509186, 32.090675, 37.336727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.828209, 32.331768, 37.346703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295715, 0.354603, 0.887022,
		0.525795, -0.714822, 0.461053,
		0.797554, 0.602732, 0.024935,
		34.067474, 32.512589, 37.354183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.835392, 31.919771, 37.950161>,  <33.509186, 32.090675, 37.336727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.835392, 31.919771, 37.950161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.946037, 32.289772, 37.845966>,  <34.012424, 32.511772, 37.783447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.946037, 32.289772, 37.845966>,  <33.835392, 31.919771, 37.950161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.946037, 32.289772, 37.845966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324591, 0.345067, 0.880664,
		0.904503, -0.159050, 0.395697,
		0.276612, 0.925003, -0.260489,
		34.029022, 32.567272, 37.767818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.051552, 32.124462, 38.480564>,  <33.835392, 31.919771, 37.950161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.051552, 32.124462, 38.480564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.011890, 32.475094, 38.292191>,  <33.988094, 32.685474, 38.179169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.011890, 32.475094, 38.292191>,  <34.051552, 32.124462, 38.480564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.011890, 32.475094, 38.292191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092518, 0.463091, 0.881469,
		0.990762, 0.130971, 0.035182,
		-0.099154, 0.876580, -0.470930,
		33.982143, 32.738068, 38.150913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.339222, 32.574215, 38.935867>,  <34.051552, 32.124462, 38.480564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.339222, 32.574215, 38.935867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.110462, 32.808582, 38.706215>,  <33.973206, 32.949203, 38.568424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.110462, 32.808582, 38.706215>,  <34.339222, 32.574215, 38.935867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.110462, 32.808582, 38.706215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183647, 0.590677, 0.785732,
		0.799505, 0.554796, -0.230204,
		-0.571897, 0.585921, -0.574135,
		33.938892, 32.984360, 38.533974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.459763, 33.283012, 39.086582>,  <34.339222, 32.574215, 38.935867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.459763, 33.283012, 39.086582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.097572, 33.278893, 38.916870>,  <33.880260, 33.276421, 38.815044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.097572, 33.278893, 38.916870>,  <34.459763, 33.283012, 39.086582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.097572, 33.278893, 38.916870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319698, 0.674043, 0.665928,
		0.279126, 0.738621, -0.613619,
		-0.905473, -0.010295, -0.424279,
		33.825932, 33.275803, 38.789585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.298439, 33.991619, 38.938122>,  <34.459763, 33.283012, 39.086582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.298439, 33.991619, 38.938122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.966694, 33.772861, 38.983856>,  <33.767647, 33.641609, 39.011299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.966694, 33.772861, 38.983856>,  <34.298439, 33.991619, 38.938122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.966694, 33.772861, 38.983856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396282, 0.720055, 0.569632,
		-0.393857, 0.427119, -0.813908,
		-0.829359, -0.546891, 0.114339,
		33.717888, 33.608795, 39.018158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.708595, 34.454010, 38.798008>,  <34.298439, 33.991619, 38.938122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.708595, 34.454010, 38.798008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.557419, 34.137039, 38.989513>,  <33.466713, 33.946857, 39.104416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.557419, 34.137039, 38.989513>,  <33.708595, 34.454010, 38.798008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.557419, 34.137039, 38.989513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546526, 0.608366, 0.575500,
		-0.747308, -0.044154, -0.663009,
		-0.377942, -0.792427, 0.478768,
		33.444035, 33.899311, 39.133144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.997116, 34.668404, 39.045570>,  <33.708595, 34.454010, 38.798008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.997116, 34.668404, 39.045570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.089645, 34.344479, 39.261234>,  <33.145164, 34.150124, 39.390633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.089645, 34.344479, 39.261234>,  <32.997116, 34.668404, 39.045570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.089645, 34.344479, 39.261234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203175, 0.501764, 0.840805,
		-0.951425, -0.304042, -0.048464,
		0.231323, -0.809809, 0.539164,
		33.159042, 34.101536, 39.422985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.381683, 34.467915, 39.498337>,  <32.997116, 34.668404, 39.045570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.381683, 34.467915, 39.498337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.721310, 34.321503, 39.650711>,  <32.925083, 34.233658, 39.742138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.721310, 34.321503, 39.650711>,  <32.381683, 34.467915, 39.498337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.721310, 34.321503, 39.650711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188382, 0.463907, 0.865623,
		-0.493562, -0.806731, 0.324934,
		0.849063, -0.366027, 0.380941,
		32.976028, 34.211693, 39.764992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.161892, 34.196316, 40.153057>,  <32.381683, 34.467915, 39.498337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.161892, 34.196316, 40.153057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.559025, 34.188465, 40.200211>,  <32.797306, 34.183754, 40.228504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.559025, 34.188465, 40.200211>,  <32.161892, 34.196316, 40.153057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.559025, 34.188465, 40.200211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101244, 0.385964, 0.916941,
		-0.063496, -0.922305, 0.381211,
		0.992833, -0.019627, 0.117885,
		32.856876, 34.182579, 40.235577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.318077, 33.843094, 40.760509>,  <32.161892, 34.196316, 40.153057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.318077, 33.843094, 40.760509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.636784, 34.078770, 40.706821>,  <32.828007, 34.220177, 40.674610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.636784, 34.078770, 40.706821>,  <32.318077, 33.843094, 40.760509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.636784, 34.078770, 40.706821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050460, 0.286205, 0.956839,
		0.602174, -0.755606, 0.257769,
		0.796769, 0.589191, -0.134218,
		32.875813, 34.255527, 40.666557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.820084, 33.708576, 41.341934>,  <32.318077, 33.843094, 40.760509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.820084, 33.708576, 41.341934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.910103, 34.074028, 41.206509>,  <32.964115, 34.293301, 41.125252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.910103, 34.074028, 41.206509>,  <32.820084, 33.708576, 41.341934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.910103, 34.074028, 41.206509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169154, 0.305567, 0.937025,
		0.959551, -0.268150, -0.085776,
		0.225053, 0.913633, -0.338565,
		32.977619, 34.348118, 41.104939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.483749, 33.900196, 41.581837>,  <32.820084, 33.708576, 41.341934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.483749, 33.900196, 41.581837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.282150, 34.238171, 41.510212>,  <33.161190, 34.440956, 41.467236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.282150, 34.238171, 41.510212>,  <33.483749, 33.900196, 41.581837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.282150, 34.238171, 41.510212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091758, 0.258525, 0.961637,
		0.858815, 0.468237, -0.207827,
		-0.504002, 0.844938, -0.179060,
		33.130951, 34.491653, 41.456493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.743267, 34.350906, 42.073372>,  <33.483749, 33.900196, 41.581837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.743267, 34.350906, 42.073372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.432995, 34.557476, 41.928246>,  <33.246834, 34.681419, 41.841171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.432995, 34.557476, 41.928246>,  <33.743267, 34.350906, 42.073372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.432995, 34.557476, 41.928246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280152, 0.233386, 0.931153,
		0.565544, 0.823916, -0.036355,
		-0.775677, 0.516423, -0.362812,
		33.200291, 34.712402, 41.819401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.799202, 34.895782, 42.552582>,  <33.743267, 34.350906, 42.073372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.799202, 34.895782, 42.552582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.444294, 34.926685, 42.370689>,  <33.231350, 34.945229, 42.261555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.444294, 34.926685, 42.370689>,  <33.799202, 34.895782, 42.552582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.444294, 34.926685, 42.370689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406744, 0.333859, 0.850351,
		0.217512, 0.939452, -0.264799,
		-0.887270, 0.077256, -0.454735,
		33.178112, 34.949863, 42.234268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.587700, 35.531651, 42.681175>,  <33.799202, 34.895782, 42.552582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.587700, 35.531651, 42.681175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.276375, 35.289894, 42.613132>,  <33.089581, 35.144840, 42.572308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.276375, 35.289894, 42.613132>,  <33.587700, 35.531651, 42.681175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.276375, 35.289894, 42.613132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356066, 0.201725, 0.912427,
		-0.517149, 0.770725, -0.372209,
		-0.778315, -0.604392, -0.170107,
		33.042881, 35.108578, 42.562099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.088123, 35.959068, 42.882744>,  <33.587700, 35.531651, 42.681175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.088123, 35.959068, 42.882744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.939789, 35.587841, 42.896420>,  <32.850788, 35.365105, 42.904625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.939789, 35.587841, 42.896420>,  <33.088123, 35.959068, 42.882744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.939789, 35.587841, 42.896420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416971, 0.199281, 0.886805,
		-0.829830, 0.314602, -0.460878,
		-0.370834, -0.928070, 0.034189,
		32.828537, 35.309422, 42.906677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.434250, 36.063862, 43.223972>,  <33.088123, 35.959068, 42.882744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.434250, 36.063862, 43.223972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.502563, 35.670059, 43.239849>,  <32.543552, 35.433777, 43.249374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.502563, 35.670059, 43.239849>,  <32.434250, 36.063862, 43.223972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.502563, 35.670059, 43.239849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271343, -0.008265, 0.962447,
		-0.947209, -0.175143, -0.268551,
		0.170786, -0.984508, 0.039695,
		32.553799, 35.374706, 43.251759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.862722, 35.750217, 43.475376>,  <32.434250, 36.063862, 43.223972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.862722, 35.750217, 43.475376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.156132, 35.492111, 43.560772>,  <32.332176, 35.337250, 43.612011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.156132, 35.492111, 43.560772>,  <31.862722, 35.750217, 43.475376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.156132, 35.492111, 43.560772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287356, -0.009776, 0.957774,
		-0.615928, -0.763898, -0.192591,
		0.733525, -0.645262, 0.213490,
		32.376190, 35.298534, 43.624821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.512543, 35.359035, 43.957947>,  <31.862722, 35.750217, 43.475376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.512543, 35.359035, 43.957947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.905771, 35.293938, 43.991615>,  <32.141708, 35.254879, 44.011814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.905771, 35.293938, 43.991615>,  <31.512543, 35.359035, 43.957947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.905771, 35.293938, 43.991615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083414, 0.011467, 0.996449,
		-0.163137, -0.986601, -0.002303,
		0.983071, -0.162750, 0.084167,
		32.200691, 35.245113, 44.016865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.576521, 34.841068, 44.438259>,  <31.512543, 35.359035, 43.957947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.576521, 34.841068, 44.438259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.941538, 35.001995, 44.408840>,  <32.160549, 35.098553, 44.391190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.941538, 35.001995, 44.408840>,  <31.576521, 34.841068, 44.438259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.941538, 35.001995, 44.408840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037347, 0.097095, 0.994574,
		0.407276, -0.910337, 0.073578,
		0.912541, 0.402318, -0.073543,
		32.215302, 35.122692, 44.386776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.951889, 34.370594, 44.809353>,  <31.576521, 34.841068, 44.438259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.951889, 34.370594, 44.809353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.144756, 34.720394, 44.830395>,  <32.260475, 34.930275, 44.843018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.144756, 34.720394, 44.830395>,  <31.951889, 34.370594, 44.809353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.144756, 34.720394, 44.830395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165960, -0.150131, 0.974637,
		0.860215, -0.461210, -0.217520,
		0.482169, 0.874497, 0.052603,
		32.289406, 34.982742, 44.846176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.353012, 34.311897, 45.360912>,  <31.951889, 34.370594, 44.809353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.353012, 34.311897, 45.360912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.372944, 34.707546, 45.305557>,  <32.384903, 34.944935, 45.272346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.372944, 34.707546, 45.305557>,  <32.353012, 34.311897, 45.360912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.372944, 34.707546, 45.305557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019628, 0.137561, 0.990299,
		0.998565, -0.052066, -0.012559,
		0.049834, 0.989124, -0.138385,
		32.387894, 35.004284, 45.264042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.712322, 34.546925, 45.927689>,  <32.353012, 34.311897, 45.360912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.712322, 34.546925, 45.927689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.539356, 34.883999, 45.799381>,  <32.435577, 35.086243, 45.722397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.539356, 34.883999, 45.799381>,  <32.712322, 34.546925, 45.927689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.539356, 34.883999, 45.799381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260163, 0.224018, 0.939218,
		0.863326, 0.489585, 0.122368,
		-0.432415, 0.842688, -0.320773,
		32.409634, 35.136806, 45.703148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.786217, 35.043217, 46.447536>,  <32.712322, 34.546925, 45.927689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.786217, 35.043217, 46.447536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.483688, 35.201599, 46.239231>,  <32.302170, 35.296627, 46.114246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.483688, 35.201599, 46.239231>,  <32.786217, 35.043217, 46.447536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.483688, 35.201599, 46.239231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481930, 0.201094, 0.852822,
		0.442399, 0.895982, 0.038728,
		-0.756325, 0.395952, -0.520764,
		32.256790, 35.320385, 46.083000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.367020, 35.357487, 46.670795>,  <32.786217, 35.043217, 46.447536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.367020, 35.357487, 46.670795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.532303, 35.095459, 46.923824>,  <33.631474, 34.938244, 47.075642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.532303, 35.095459, 46.923824>,  <33.367020, 35.357487, 46.670795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.532303, 35.095459, 46.923824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259071, -0.581379, -0.771285,
		0.873009, 0.482579, -0.070519,
		0.413205, -0.655069, 0.632571,
		33.656265, 34.898937, 47.113594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.976318, 35.204838, 46.364094>,  <33.367020, 35.357487, 46.670795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.976318, 35.204838, 46.364094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.928211, 34.883568, 46.597485>,  <33.899345, 34.690807, 46.737518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.928211, 34.883568, 46.597485>,  <33.976318, 35.204838, 46.364094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.928211, 34.883568, 46.597485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287374, -0.590747, -0.753946,
		0.950238, 0.077000, 0.301860,
		-0.120269, -0.803174, 0.583478,
		33.892132, 34.642616, 46.772530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.564251, 34.807560, 46.213310>,  <33.976318, 35.204838, 46.364094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.564251, 34.807560, 46.213310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.298779, 34.560471, 46.382046>,  <34.139496, 34.412216, 46.483288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.298779, 34.560471, 46.382046>,  <34.564251, 34.807560, 46.213310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.298779, 34.560471, 46.382046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117536, -0.643060, -0.756742,
		0.738723, -0.452654, 0.499392,
		-0.663681, -0.617719, 0.421840,
		34.099674, 34.375156, 46.508598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.869556, 34.180950, 46.211216>,  <34.564251, 34.807560, 46.213310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.869556, 34.180950, 46.211216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.486259, 34.070740, 46.241848>,  <34.256283, 34.004616, 46.260227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.486259, 34.070740, 46.241848>,  <34.869556, 34.180950, 46.211216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.486259, 34.070740, 46.241848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130618, -0.659931, -0.739885,
		0.254396, -0.698983, 0.668360,
		-0.958239, -0.275523, 0.076584,
		34.198788, 33.988083, 46.264824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.939610, 33.429886, 46.153770>,  <34.869556, 34.180950, 46.211216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.939610, 33.429886, 46.153770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.555027, 33.512157, 46.080788>,  <34.324276, 33.561520, 46.036999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.555027, 33.512157, 46.080788>,  <34.939610, 33.429886, 46.153770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.555027, 33.512157, 46.080788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023492, -0.722633, -0.690833,
		-0.273938, -0.659922, 0.699615,
		-0.961460, 0.205681, -0.182453,
		34.266590, 33.573860, 46.026051>
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
