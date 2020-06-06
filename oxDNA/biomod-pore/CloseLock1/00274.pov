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
	<23.998768, 34.956821, 34.962608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.397934, 34.982479, 34.965401>,  <24.637434, 34.997875, 34.967075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.397934, 34.982479, 34.965401>,  <23.998768, 34.956821, 34.962608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.397934, 34.982479, 34.965401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033267, -0.418800, -0.907469,
		-0.055287, 0.905810, -0.420061,
		0.997916, 0.064146, 0.006979,
		24.697309, 35.001724, 34.967495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.360064, 35.384964, 34.379330>,  <23.998768, 34.956821, 34.962608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.360064, 35.384964, 34.379330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.572222, 35.074219, 34.515072>,  <24.699516, 34.887772, 34.596516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.572222, 35.074219, 34.515072>,  <24.360064, 35.384964, 34.379330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.572222, 35.074219, 34.515072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062019, -0.363671, -0.929461,
		0.845480, 0.514026, -0.144709,
		0.530394, -0.776866, 0.339356,
		24.731340, 34.841160, 34.616879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.094503, 35.122101, 34.310112>,  <24.360064, 35.384964, 34.379330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.094503, 35.122101, 34.310112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.193245, 35.378670, 34.019554>,  <25.252489, 35.532612, 33.845219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.193245, 35.378670, 34.019554>,  <25.094503, 35.122101, 34.310112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.193245, 35.378670, 34.019554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494500, 0.561268, 0.663662,
		0.833386, -0.523028, -0.178631,
		0.246855, 0.641420, -0.726391,
		25.267302, 35.571095, 33.801636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.882423, 35.287865, 34.218056>,  <25.094503, 35.122101, 34.310112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.882423, 35.287865, 34.218056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.682335, 35.604481, 34.077637>,  <25.562281, 35.794453, 33.993385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.682335, 35.604481, 34.077637>,  <25.882423, 35.287865, 34.218056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.682335, 35.604481, 34.077637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.641074, 0.611069, 0.464347,
		0.582066, 0.007229, -0.813110,
		-0.500223, 0.791544, -0.351048,
		25.532269, 35.841946, 33.972321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.412931, 35.746151, 33.931213>,  <25.882423, 35.287865, 34.218056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.412931, 35.746151, 33.931213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.071880, 35.920769, 34.046074>,  <25.867249, 36.025539, 34.114990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.071880, 35.920769, 34.046074>,  <26.412931, 35.746151, 33.931213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.071880, 35.920769, 34.046074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522509, 0.715412, 0.463864,
		-0.002935, 0.545543, -0.838078,
		-0.852629, 0.436542, 0.287151,
		25.816092, 36.051731, 34.132217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.024652, 36.131958, 33.796009>,  <26.412931, 35.746151, 33.931213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.024652, 36.131958, 33.796009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.380548, 36.123802, 33.978413>,  <27.594086, 36.118908, 34.087856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.380548, 36.123802, 33.978413>,  <27.024652, 36.131958, 33.796009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.380548, 36.123802, 33.978413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453186, 0.158962, -0.877128,
		-0.054607, 0.987074, 0.150674,
		0.889742, -0.020386, 0.456008,
		27.647470, 36.117687, 34.115215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.403814, 36.801273, 33.750763>,  <27.024652, 36.131958, 33.796009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.403814, 36.801273, 33.750763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.650747, 36.488983, 33.789471>,  <27.798906, 36.301609, 33.812695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.650747, 36.488983, 33.789471>,  <27.403814, 36.801273, 33.750763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.650747, 36.488983, 33.789471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450556, 0.250033, -0.857020,
		0.644905, 0.572665, 0.506115,
		0.617331, -0.780729, 0.096770,
		27.835947, 36.254765, 33.818501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.102261, 36.993145, 33.557293>,  <27.403814, 36.801273, 33.750763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.102261, 36.993145, 33.557293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.112360, 36.595757, 33.512794>,  <28.118420, 36.357323, 33.486095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.112360, 36.595757, 33.512794>,  <28.102261, 36.993145, 33.557293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.112360, 36.595757, 33.512794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291173, 0.113763, -0.949882,
		0.956337, -0.008410, 0.292144,
		0.025247, -0.993472, -0.111244,
		28.119934, 36.297714, 33.479420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.615496, 36.973995, 33.039093>,  <28.102261, 36.993145, 33.557293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.615496, 36.973995, 33.039093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.448509, 36.611195, 33.061230>,  <28.348316, 36.393513, 33.074512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.448509, 36.611195, 33.061230>,  <28.615496, 36.973995, 33.039093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.448509, 36.611195, 33.061230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157410, -0.132169, -0.978649,
		0.894954, -0.399842, 0.197948,
		-0.417467, -0.907005, 0.055346,
		28.323269, 36.339092, 33.077835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.993065, 36.533951, 32.624119>,  <28.615496, 36.973995, 33.039093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.993065, 36.533951, 32.624119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.643377, 36.339752, 32.621708>,  <28.433565, 36.223232, 32.620262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.643377, 36.339752, 32.621708>,  <28.993065, 36.533951, 32.624119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.643377, 36.339752, 32.621708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170249, -0.294889, -0.940242,
		0.454703, -0.823005, 0.340453,
		-0.874220, -0.485492, -0.006029,
		28.381111, 36.194103, 32.619900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.068430, 35.922024, 32.389431>,  <28.993065, 36.533951, 32.624119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.068430, 35.922024, 32.389431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.674883, 35.965237, 32.332390>,  <28.438755, 35.991165, 32.298164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.674883, 35.965237, 32.332390>,  <29.068430, 35.922024, 32.389431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.674883, 35.965237, 32.332390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121259, -0.183369, -0.975537,
		-0.131533, -0.977091, 0.167311,
		-0.983868, 0.108027, -0.142600,
		28.379723, 35.997646, 32.289608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.903788, 35.409737, 31.977211>,  <29.068430, 35.922024, 32.389431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.903788, 35.409737, 31.977211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.593067, 35.657471, 31.931595>,  <28.406635, 35.806110, 31.904224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.593067, 35.657471, 31.931595>,  <28.903788, 35.409737, 31.977211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.593067, 35.657471, 31.931595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022334, -0.153882, -0.987837,
		-0.629349, -0.769901, 0.105704,
		-0.776802, 0.619333, -0.114040,
		28.360027, 35.843269, 31.897383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.458357, 35.030365, 31.591024>,  <28.903788, 35.409737, 31.977211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.458357, 35.030365, 31.591024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.354177, 35.412163, 31.532902>,  <28.291670, 35.641239, 31.498028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.354177, 35.412163, 31.532902>,  <28.458357, 35.030365, 31.591024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.354177, 35.412163, 31.532902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026265, -0.157451, -0.987178,
		-0.965131, -0.253292, 0.066078,
		-0.260448, 0.954491, -0.145308,
		28.276043, 35.698509, 31.489309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.194258, 35.046642, 30.927910>,  <28.458357, 35.030365, 31.591024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.194258, 35.046642, 30.927910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.265844, 35.434235, 30.996073>,  <28.308796, 35.666790, 31.036970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.265844, 35.434235, 30.996073>,  <28.194258, 35.046642, 30.927910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.265844, 35.434235, 30.996073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053180, 0.182476, -0.981771,
		-0.982417, 0.166642, 0.084187,
		0.178966, 0.968985, 0.170406,
		28.319534, 35.724930, 31.047195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.698631, 35.399403, 30.430923>,  <28.194258, 35.046642, 30.927910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.698631, 35.399403, 30.430923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.972094, 35.681572, 30.505749>,  <28.136171, 35.850876, 30.550644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.972094, 35.681572, 30.505749>,  <27.698631, 35.399403, 30.430923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.972094, 35.681572, 30.505749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125489, 0.138872, -0.982327,
		-0.718936, 0.695047, 0.006417,
		0.683654, 0.705425, 0.187061,
		28.177191, 35.893200, 30.561867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.556332, 35.902534, 29.983763>,  <27.698631, 35.399403, 30.430923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.556332, 35.902534, 29.983763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.936480, 35.963226, 30.092409>,  <28.164568, 35.999641, 30.157597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.936480, 35.963226, 30.092409>,  <27.556332, 35.902534, 29.983763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.936480, 35.963226, 30.092409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287029, -0.090715, -0.953617,
		-0.120050, 0.984251, -0.129763,
		0.950370, 0.151727, 0.271618,
		28.221590, 36.008743, 30.173895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.844395, 36.223099, 29.417313>,  <27.556332, 35.902534, 29.983763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.844395, 36.223099, 29.417313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.181484, 36.127747, 29.610390>,  <28.383738, 36.070534, 29.726236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.181484, 36.127747, 29.610390>,  <27.844395, 36.223099, 29.417313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.181484, 36.127747, 29.610390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512394, 0.080125, -0.855004,
		0.165139, 0.967861, 0.189667,
		0.842723, -0.238379, 0.482695,
		28.434301, 36.056232, 29.755198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.332479, 36.762371, 29.339094>,  <27.844395, 36.223099, 29.417313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.332479, 36.762371, 29.339094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.532934, 36.423920, 29.411680>,  <28.653208, 36.220848, 29.455231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.532934, 36.423920, 29.411680>,  <28.332479, 36.762371, 29.339094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.532934, 36.423920, 29.411680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547998, 0.148000, -0.823282,
		0.669746, 0.512019, 0.537845,
		0.501137, -0.846128, 0.181463,
		28.683275, 36.170082, 29.466120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.144745, 37.057903, 29.317860>,  <28.332479, 36.762371, 29.339094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.144745, 37.057903, 29.317860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.121344, 36.660934, 29.274628>,  <29.107304, 36.422752, 29.248688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.121344, 36.660934, 29.274628>,  <29.144745, 37.057903, 29.317860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.121344, 36.660934, 29.274628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.620216, 0.048704, -0.782918,
		0.782247, -0.112836, 0.612665,
		-0.058502, -0.992419, -0.108081,
		29.103792, 36.363209, 29.242203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.793428, 36.816753, 29.111929>,  <29.144745, 37.057903, 29.317860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.793428, 36.816753, 29.111929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.572519, 36.503090, 28.998728>,  <29.439974, 36.314892, 28.930807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.572519, 36.503090, 28.998728>,  <29.793428, 36.816753, 29.111929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.572519, 36.503090, 28.998728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570709, -0.108171, -0.813997,
		0.607691, -0.611058, 0.507267,
		-0.552270, -0.784160, -0.283001,
		29.406837, 36.267841, 28.913828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.285465, 36.268246, 29.015369>,  <29.793428, 36.816753, 29.111929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.285465, 36.268246, 29.015369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.960459, 36.185024, 28.797550>,  <29.765455, 36.135090, 28.666859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.960459, 36.185024, 28.797550>,  <30.285465, 36.268246, 29.015369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.960459, 36.185024, 28.797550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582904, -0.300609, -0.754889,
		-0.006638, -0.930778, 0.365525,
		-0.812514, -0.208055, -0.544549,
		29.716705, 36.122608, 28.634186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.428616, 35.571014, 28.729969>,  <30.285465, 36.268246, 29.015369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.428616, 35.571014, 28.729969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.120586, 35.680164, 28.499308>,  <29.935770, 35.745655, 28.360910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.120586, 35.680164, 28.499308>,  <30.428616, 35.571014, 28.729969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.120586, 35.680164, 28.499308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501232, -0.300399, -0.811497,
		-0.394662, -0.913948, 0.094556,
		-0.770070, 0.272872, -0.576656,
		29.889565, 35.762024, 28.326311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.334011, 34.963474, 28.244507>,  <30.428616, 35.571014, 28.729969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.334011, 34.963474, 28.244507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.143311, 35.276081, 28.083542>,  <30.028891, 35.463646, 27.986963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.143311, 35.276081, 28.083542>,  <30.334011, 34.963474, 28.244507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.143311, 35.276081, 28.083542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264463, -0.309057, -0.913534,
		-0.838311, -0.541953, -0.059339,
		-0.476754, 0.781518, -0.402412,
		30.000284, 35.510536, 27.962818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.044409, 34.737225, 27.688116>,  <30.334011, 34.963474, 28.244507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.044409, 34.737225, 27.688116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.058868, 35.131130, 27.620068>,  <30.067543, 35.367474, 27.579239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.058868, 35.131130, 27.620068>,  <30.044409, 34.737225, 27.688116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.058868, 35.131130, 27.620068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151813, -0.173666, -0.973033,
		-0.987748, 0.009347, -0.155777,
		0.036148, 0.984760, -0.170119,
		30.069714, 35.426559, 27.569033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.504911, 35.057735, 27.195276>,  <30.044409, 34.737225, 27.688116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.504911, 35.057735, 27.195276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.859200, 35.243267, 27.187632>,  <30.071772, 35.354588, 27.183044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.859200, 35.243267, 27.187632>,  <29.504911, 35.057735, 27.195276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.859200, 35.243267, 27.187632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138929, -0.304131, -0.942446,
		-0.442946, 0.832086, -0.333813,
		0.885719, 0.463829, -0.019113,
		30.124916, 35.382416, 27.181898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.563341, 35.503544, 26.589764>,  <29.504911, 35.057735, 27.195276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.563341, 35.503544, 26.589764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.897713, 35.323738, 26.715725>,  <30.098335, 35.215855, 26.791302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.897713, 35.323738, 26.715725>,  <29.563341, 35.503544, 26.589764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.897713, 35.323738, 26.715725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116785, -0.414936, -0.902324,
		0.536272, 0.791053, -0.294360,
		0.835927, -0.449515, 0.314902,
		30.148491, 35.188885, 26.810196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.077496, 35.613895, 26.122997>,  <29.563341, 35.503544, 26.589764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.077496, 35.613895, 26.122997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.061962, 35.261299, 26.311235>,  <30.052643, 35.049740, 26.424177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.061962, 35.261299, 26.311235>,  <30.077496, 35.613895, 26.122997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.061962, 35.261299, 26.311235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060324, -0.472158, -0.879448,
		0.997423, -0.005764, 0.071511,
		-0.038834, -0.881495, 0.470593,
		30.050312, 34.996849, 26.452414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.805523, 34.931545, 25.993179>,  <30.077496, 35.613895, 26.122997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.805523, 34.931545, 25.993179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.170885, 35.093410, 26.010782>,  <30.390102, 35.190529, 26.021343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.170885, 35.093410, 26.010782>,  <29.805523, 34.931545, 25.993179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.170885, 35.093410, 26.010782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334974, -0.808695, 0.483533,
		0.231256, -0.426921, -0.874219,
		0.913408, 0.404660, 0.044008,
		30.444908, 35.214809, 26.023985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.351639, 34.496490, 25.686127>,  <29.805523, 34.931545, 25.993179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.351639, 34.496490, 25.686127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.534786, 34.738262, 25.946903>,  <30.644674, 34.883324, 26.103369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.534786, 34.738262, 25.946903>,  <30.351639, 34.496490, 25.686127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.534786, 34.738262, 25.946903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315430, -0.796063, 0.516515,
		0.831181, -0.030854, -0.555146,
		0.457867, 0.604427, 0.651940,
		30.672146, 34.919590, 26.142485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.029217, 34.337543, 25.734823>,  <30.351639, 34.496490, 25.686127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.029217, 34.337543, 25.734823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.941654, 34.510014, 26.084948>,  <30.889116, 34.613495, 26.295023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.941654, 34.510014, 26.084948>,  <31.029217, 34.337543, 25.734823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.941654, 34.510014, 26.084948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474368, -0.736895, 0.481624,
		0.852675, 0.520650, -0.043225,
		-0.218905, 0.431173, 0.875312,
		30.875982, 34.639366, 26.347542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.611618, 34.141796, 26.071711>,  <31.029217, 34.337543, 25.734823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.611618, 34.141796, 26.071711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.339355, 34.252777, 26.342924>,  <31.175999, 34.319366, 26.505651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.339355, 34.252777, 26.342924>,  <31.611618, 34.141796, 26.071711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.339355, 34.252777, 26.342924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342025, -0.698107, 0.629020,
		0.647864, 0.660049, 0.380272,
		-0.680655, 0.277456, 0.678032,
		31.135159, 34.336014, 26.546333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.910835, 34.512772, 26.730616>,  <31.611618, 34.141796, 26.071711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.910835, 34.512772, 26.730616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.578960, 34.290218, 26.748734>,  <31.379835, 34.156685, 26.759604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.578960, 34.290218, 26.748734>,  <31.910835, 34.512772, 26.730616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.578960, 34.290218, 26.748734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437001, -0.596879, 0.672878,
		-0.347346, 0.578072, 0.738365,
		-0.829687, -0.556388, 0.045295,
		31.330053, 34.123302, 26.762321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.556046, 34.178272, 26.841454>,  <31.910835, 34.512772, 26.730616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.556046, 34.178272, 26.841454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.843307, 34.452972, 26.796515>,  <33.015667, 34.617794, 26.769550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.843307, 34.452972, 26.796515>,  <32.556046, 34.178272, 26.841454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.843307, 34.452972, 26.796515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000713, 0.160720, 0.987000,
		0.695881, -0.708901, 0.114933,
		0.718157, 0.686752, -0.112347,
		33.058754, 34.658997, 26.762810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.083504, 33.940590, 27.143738>,  <32.556046, 34.178272, 26.841454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.083504, 33.940590, 27.143738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.082706, 34.340527, 27.150845>,  <33.082230, 34.580490, 27.155109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.082706, 34.340527, 27.150845>,  <33.083504, 33.940590, 27.143738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.082706, 34.340527, 27.150845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003226, -0.017775, 0.999837,
		0.999993, 0.001935, 0.003261,
		-0.001993, 0.999840, 0.017769,
		33.082108, 34.640480, 27.156176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.622849, 34.319283, 27.598118>,  <33.083504, 33.940590, 27.143738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.622849, 34.319283, 27.598118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.274883, 34.516487, 27.603657>,  <33.066105, 34.634808, 27.606981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.274883, 34.516487, 27.603657>,  <33.622849, 34.319283, 27.598118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.274883, 34.516487, 27.603657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127034, -0.251107, 0.959587,
		0.476562, 0.833000, 0.281070,
		-0.869914, 0.493009, 0.013848,
		33.013908, 34.664391, 27.607811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.365601, 34.253662, 28.214266>,  <33.622849, 34.319283, 27.598118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.365601, 34.253662, 28.214266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.070698, 34.491409, 28.085775>,  <32.893757, 34.634056, 28.008680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.070698, 34.491409, 28.085775>,  <33.365601, 34.253662, 28.214266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.070698, 34.491409, 28.085775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424311, -0.037344, 0.904746,
		0.525755, 0.803327, 0.279728,
		-0.737253, 0.594366, -0.321227,
		32.849522, 34.669720, 27.989407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.193665, 34.703568, 28.770718>,  <33.365601, 34.253662, 28.214266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.193665, 34.703568, 28.770718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.851978, 34.731022, 28.564569>,  <32.646965, 34.747494, 28.440880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.851978, 34.731022, 28.564569>,  <33.193665, 34.703568, 28.770718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.851978, 34.731022, 28.564569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505650, 0.120979, 0.854214,
		0.120979, 0.990279, -0.068636,
		-0.854214, 0.068636, -0.515371,
		32.595715, 34.751614, 28.409958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.826866, 35.371696, 29.055248>,  <33.193665, 34.703568, 28.770718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.826866, 35.371696, 29.055248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.543678, 35.151310, 28.878515>,  <32.373768, 35.019077, 28.772476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.543678, 35.151310, 28.878515>,  <32.826866, 35.371696, 29.055248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.543678, 35.151310, 28.878515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589130, 0.115698, 0.799712,
		-0.389497, 0.826468, -0.406502,
		-0.707968, -0.550967, -0.441833,
		32.331287, 34.986019, 28.745966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.190479, 35.713825, 29.063042>,  <32.826866, 35.371696, 29.055248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.190479, 35.713825, 29.063042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.124935, 35.319614, 29.045692>,  <32.085609, 35.083088, 29.035284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.124935, 35.319614, 29.045692>,  <32.190479, 35.713825, 29.063042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.124935, 35.319614, 29.045692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.562941, 0.057313, 0.824507,
		-0.810091, 0.159520, -0.564187,
		-0.163861, -0.985530, -0.043372,
		32.075775, 35.023956, 29.032681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.454386, 35.621513, 29.221235>,  <32.190479, 35.713825, 29.063042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.454386, 35.621513, 29.221235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.618942, 35.257786, 29.246180>,  <31.717676, 35.039547, 29.261147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.618942, 35.257786, 29.246180>,  <31.454386, 35.621513, 29.221235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.618942, 35.257786, 29.246180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534077, -0.185052, 0.824935,
		-0.738592, -0.372677, -0.561778,
		0.411392, -0.909322, 0.062360,
		31.742359, 34.984989, 29.264887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.895473, 35.098030, 29.242125>,  <31.454386, 35.621513, 29.221235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.895473, 35.098030, 29.242125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.224205, 34.939938, 29.406265>,  <31.421444, 34.845081, 29.504749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.224205, 34.939938, 29.406265>,  <30.895473, 35.098030, 29.242125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.224205, 34.939938, 29.406265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404039, 0.103496, 0.908868,
		-0.401682, -0.912733, -0.074632,
		0.821829, -0.395230, 0.410352,
		31.470755, 34.821369, 29.529371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.615170, 34.755131, 29.807907>,  <30.895473, 35.098030, 29.242125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.615170, 34.755131, 29.807907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.998472, 34.734516, 29.920397>,  <31.228455, 34.722145, 29.987890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.998472, 34.734516, 29.920397>,  <30.615170, 34.755131, 29.807907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.998472, 34.734516, 29.920397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285402, -0.113829, 0.951624,
		-0.017034, -0.992163, -0.123787,
		0.958256, -0.051539, 0.281226,
		31.285950, 34.719055, 30.004765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.684217, 34.088867, 30.260633>,  <30.615170, 34.755131, 29.807907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.684217, 34.088867, 30.260633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.990032, 34.336258, 30.333260>,  <31.173521, 34.484692, 30.376835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.990032, 34.336258, 30.333260>,  <30.684217, 34.088867, 30.260633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.990032, 34.336258, 30.333260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164225, -0.085486, 0.982712,
		0.623306, -0.781139, 0.036212,
		0.764539, 0.618477, 0.181567,
		31.219395, 34.521801, 30.387730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.194880, 33.790543, 30.856218>,  <30.684217, 34.088867, 30.260633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.194880, 33.790543, 30.856218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.253193, 34.186111, 30.844976>,  <31.288181, 34.423450, 30.838230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.253193, 34.186111, 30.844976>,  <31.194880, 33.790543, 30.856218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.253193, 34.186111, 30.844976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056029, 0.036617, 0.997758,
		0.987729, -0.143881, 0.060746,
		0.145783, 0.988917, -0.028106,
		31.296928, 34.482788, 30.836544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.602638, 33.871513, 31.425570>,  <31.194880, 33.790543, 30.856218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.602638, 33.871513, 31.425570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.512871, 34.246132, 31.317860>,  <31.459011, 34.470905, 31.253233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.512871, 34.246132, 31.317860>,  <31.602638, 33.871513, 31.425570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.512871, 34.246132, 31.317860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072930, 0.259409, 0.963010,
		0.971760, 0.235755, 0.010087,
		-0.224418, 0.936550, -0.269277,
		31.445545, 34.527096, 31.237076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.143494, 34.384342, 31.802124>,  <31.602638, 33.871513, 31.425570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.143494, 34.384342, 31.802124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.798746, 34.562870, 31.705799>,  <31.591898, 34.669987, 31.648005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.798746, 34.562870, 31.705799>,  <32.143494, 34.384342, 31.802124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.798746, 34.562870, 31.705799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122062, 0.278326, 0.952699,
		0.492230, 0.850492, -0.185401,
		-0.861865, 0.446317, -0.240813,
		31.540186, 34.696766, 31.633554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.251755, 35.121262, 32.075535>,  <32.143494, 34.384342, 31.802124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.251755, 35.121262, 32.075535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.863985, 35.029282, 32.041248>,  <31.631325, 34.974094, 32.020676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.863985, 35.029282, 32.041248>,  <32.251755, 35.121262, 32.075535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.863985, 35.029282, 32.041248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140400, 0.233219, 0.962235,
		-0.201275, 0.944845, -0.258372,
		-0.969421, -0.229949, -0.085715,
		31.573158, 34.960297, 32.015533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.899176, 35.695366, 32.278492>,  <32.251755, 35.121262, 32.075535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.899176, 35.695366, 32.278492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.612036, 35.418941, 32.312252>,  <31.439753, 35.253086, 32.332508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.612036, 35.418941, 32.312252>,  <31.899176, 35.695366, 32.278492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.612036, 35.418941, 32.312252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089311, 0.211634, 0.973260,
		-0.690447, 0.691115, -0.213641,
		-0.717848, -0.691065, 0.084397,
		31.396681, 35.211620, 32.337570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.435560, 36.015278, 32.637146>,  <31.899176, 35.695366, 32.278492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.435560, 36.015278, 32.637146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.303638, 35.638393, 32.660690>,  <31.224485, 35.412262, 32.674816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.303638, 35.638393, 32.660690>,  <31.435560, 36.015278, 32.637146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.303638, 35.638393, 32.660690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369390, 0.186177, 0.910434,
		-0.868781, 0.278520, -0.409445,
		-0.329804, -0.942213, 0.058865,
		31.204697, 35.355728, 32.678349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.669733, 35.968410, 32.740196>,  <31.435560, 36.015278, 32.637146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.669733, 35.968410, 32.740196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.783354, 35.621559, 32.903858>,  <30.851526, 35.413448, 33.002056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.783354, 35.621559, 32.903858>,  <30.669733, 35.968410, 32.740196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.783354, 35.621559, 32.903858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.574374, 0.187796, 0.796760,
		-0.767730, -0.461327, -0.444712,
		0.284052, -0.867127, 0.409151,
		30.868570, 35.361420, 33.026604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.052517, 35.638981, 32.993111>,  <30.669733, 35.968410, 32.740196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.052517, 35.638981, 32.993111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.364834, 35.494987, 33.197372>,  <30.552225, 35.408592, 33.319931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.364834, 35.494987, 33.197372>,  <30.052517, 35.638981, 32.993111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.364834, 35.494987, 33.197372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520897, 0.076257, 0.850206,
		-0.345003, -0.929836, -0.127974,
		0.780794, -0.359985, 0.510658,
		30.599072, 35.386993, 33.350571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.769791, 35.146805, 33.486343>,  <30.052517, 35.638981, 32.993111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.769791, 35.146805, 33.486343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.135918, 35.229671, 33.624485>,  <30.355595, 35.279392, 33.707371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.135918, 35.229671, 33.624485>,  <29.769791, 35.146805, 33.486343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.135918, 35.229671, 33.624485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360150, 0.037305, 0.932148,
		0.180230, -0.977593, 0.108759,
		0.915319, 0.207170, 0.345356,
		30.410513, 35.291824, 33.728092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.817760, 34.764366, 34.096012>,  <29.769791, 35.146805, 33.486343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.817760, 34.764366, 34.096012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.085831, 35.060909, 34.110161>,  <30.246672, 35.238834, 34.118649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.085831, 35.060909, 34.110161>,  <29.817760, 34.764366, 34.096012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.085831, 35.060909, 34.110161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302232, 0.229064, 0.925303,
		0.677881, -0.630804, 0.377576,
		0.670174, 0.741360, 0.035371,
		30.286882, 35.283318, 34.120773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.804165, 34.903206, 34.730179>,  <29.817760, 34.764366, 34.096012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.804165, 34.903206, 34.730179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.996861, 35.221985, 34.584408>,  <30.112478, 35.413250, 34.496944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.996861, 35.221985, 34.584408>,  <29.804165, 34.903206, 34.730179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.996861, 35.221985, 34.584408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079700, 0.453984, 0.887438,
		0.872682, -0.398470, 0.282218,
		0.481740, 0.796944, -0.364426,
		30.141382, 35.461067, 34.475079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.338821, 35.133209, 35.342949>,  <29.804165, 34.903206, 34.730179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.338821, 35.133209, 35.342949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.221443, 35.413040, 35.082340>,  <30.151016, 35.580940, 34.925976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.221443, 35.413040, 35.082340>,  <30.338821, 35.133209, 35.342949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.221443, 35.413040, 35.082340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065181, 0.665295, 0.743730,
		0.953750, 0.260712, -0.149630,
		-0.293447, 0.699580, -0.651519,
		30.133410, 35.622913, 34.886883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.808613, 35.570087, 35.455784>,  <30.338821, 35.133209, 35.342949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.808613, 35.570087, 35.455784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.468803, 35.728355, 35.316212>,  <30.264917, 35.823318, 35.232468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.468803, 35.728355, 35.316212>,  <30.808613, 35.570087, 35.455784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.468803, 35.728355, 35.316212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101713, 0.526165, 0.844277,
		0.517656, 0.752723, -0.406744,
		-0.849521, 0.395674, -0.348934,
		30.213947, 35.847057, 35.211533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.746668, 36.319473, 35.450272>,  <30.808613, 35.570087, 35.455784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.746668, 36.319473, 35.450272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.359987, 36.217583, 35.460083>,  <30.127979, 36.156448, 35.465969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.359987, 36.217583, 35.460083>,  <30.746668, 36.319473, 35.450272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.359987, 36.217583, 35.460083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144777, 0.623422, 0.768365,
		-0.211016, 0.739228, -0.639542,
		-0.966702, -0.254729, 0.024529,
		30.069977, 36.141163, 35.467442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.377296, 36.654762, 35.580261>,  <30.746668, 36.319473, 35.450272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.377296, 36.654762, 35.580261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.071127, 36.656635, 35.837666>,  <30.887424, 36.657761, 35.992107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.071127, 36.656635, 35.837666>,  <31.377296, 36.654762, 35.580261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.071127, 36.656635, 35.837666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064476, -0.994383, 0.083930,
		0.640287, 0.105733, 0.760824,
		-0.765425, 0.004684, 0.643508,
		30.841499, 36.658039, 36.030720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.624243, 36.259750, 36.196274>,  <31.377296, 36.654762, 35.580261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.624243, 36.259750, 36.196274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.226721, 36.254063, 36.152187>,  <30.988207, 36.250648, 36.125736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.226721, 36.254063, 36.152187>,  <31.624243, 36.259750, 36.196274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.226721, 36.254063, 36.152187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008094, -0.979888, 0.199385,
		-0.110836, 0.199042, 0.973703,
		-0.993806, -0.014218, -0.110218,
		30.928579, 36.249798, 36.119122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.391579, 36.247631, 36.107430>,  <31.624243, 36.259750, 36.196274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.391579, 36.247631, 36.107430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.431187, 36.616875, 36.256062>,  <32.454952, 36.838421, 36.345242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.431187, 36.616875, 36.256062>,  <32.391579, 36.247631, 36.107430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.431187, 36.616875, 36.256062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010664, -0.372408, 0.928008,
		0.995028, -0.095853, -0.027031,
		0.099019, 0.923106, 0.371578,
		32.460892, 36.893806, 36.367535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.994423, 36.295315, 36.586517>,  <32.391579, 36.247631, 36.107430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.994423, 36.295315, 36.586517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.674896, 36.524193, 36.660805>,  <32.483181, 36.661518, 36.705376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.674896, 36.524193, 36.660805>,  <32.994423, 36.295315, 36.586517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.674896, 36.524193, 36.660805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072150, -0.215358, 0.973866,
		0.597234, 0.791338, 0.130748,
		-0.798815, 0.572193, 0.185714,
		32.435253, 36.695850, 36.716518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.059582, 36.679794, 37.171467>,  <32.994423, 36.295315, 36.586517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.059582, 36.679794, 37.171467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.661884, 36.698856, 37.133095>,  <32.423264, 36.710293, 37.110069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.661884, 36.698856, 37.133095>,  <33.059582, 36.679794, 37.171467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.661884, 36.698856, 37.133095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105647, -0.288239, 0.951713,
		0.017705, 0.956372, 0.291616,
		-0.994246, 0.047659, -0.095935,
		32.363609, 36.713154, 37.104313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.807106, 37.108662, 37.576893>,  <33.059582, 36.679794, 37.171467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.807106, 37.108662, 37.576893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.545143, 36.808903, 37.537884>,  <32.387966, 36.629047, 37.514477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.545143, 36.808903, 37.537884>,  <32.807106, 37.108662, 37.576893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.545143, 36.808903, 37.537884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090315, -0.050509, 0.994632,
		-0.750296, 0.660196, -0.034603,
		-0.654904, -0.749393, -0.097523,
		32.348671, 36.584084, 37.508629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.229561, 37.224197, 38.042702>,  <32.807106, 37.108662, 37.576893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.229561, 37.224197, 38.042702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.319725, 36.843060, 37.961441>,  <32.373821, 36.614376, 37.912685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.319725, 36.843060, 37.961441>,  <32.229561, 37.224197, 38.042702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.319725, 36.843060, 37.961441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019826, -0.203985, 0.978773,
		-0.974063, -0.224652, -0.027089,
		0.225409, -0.952849, -0.203148,
		32.387348, 36.557205, 37.900497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.034969, 36.857647, 38.638569>,  <32.229561, 37.224197, 38.042702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.034969, 36.857647, 38.638569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.296238, 36.611759, 38.461708>,  <32.452999, 36.464226, 38.355591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.296238, 36.611759, 38.461708>,  <32.034969, 36.857647, 38.638569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.296238, 36.611759, 38.461708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213468, -0.410749, 0.886406,
		-0.726500, -0.673357, -0.137066,
		0.653168, -0.614715, -0.442150,
		32.492188, 36.427345, 38.329063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.868965, 36.232098, 38.968674>,  <32.034969, 36.857647, 38.638569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.868965, 36.232098, 38.968674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.234543, 36.185909, 38.813049>,  <32.453888, 36.158195, 38.719673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.234543, 36.185909, 38.813049>,  <31.868965, 36.232098, 38.968674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.234543, 36.185909, 38.813049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297021, -0.462955, 0.835136,
		-0.276554, -0.878828, -0.388817,
		0.913945, -0.115474, -0.389062,
		32.508728, 36.151268, 38.696331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.050304, 35.551697, 39.022606>,  <31.868965, 36.232098, 38.968674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.050304, 35.551697, 39.022606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.381290, 35.776302, 39.023083>,  <32.579884, 35.911068, 39.023369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.381290, 35.776302, 39.023083>,  <32.050304, 35.551697, 39.022606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.381290, 35.776302, 39.023083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300246, -0.444237, 0.844101,
		0.474505, -0.698106, -0.536184,
		0.827465, 0.561517, 0.001189,
		32.629528, 35.944756, 39.023438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.513840, 35.113632, 39.264904>,  <32.050304, 35.551697, 39.022606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.513840, 35.113632, 39.264904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.643387, 35.489323, 39.310459>,  <32.721115, 35.714737, 39.337791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.643387, 35.489323, 39.310459>,  <32.513840, 35.113632, 39.264904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.643387, 35.489323, 39.310459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132983, -0.164376, 0.977392,
		0.936710, -0.301400, -0.178137,
		0.323868, 0.939222, 0.113891,
		32.740547, 35.771088, 39.344627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.147324, 35.127556, 39.689125>,  <32.513840, 35.113632, 39.264904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.147324, 35.127556, 39.689125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.994640, 35.495804, 39.721989>,  <32.903030, 35.716755, 39.741707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.994640, 35.495804, 39.721989>,  <33.147324, 35.127556, 39.689125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.994640, 35.495804, 39.721989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289992, 0.034886, 0.956393,
		0.877610, 0.388893, -0.280290,
		-0.381713, 0.920622, 0.082159,
		32.880127, 35.771992, 39.746635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.473469, 35.329311, 40.181728>,  <33.147324, 35.127556, 39.689125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.473469, 35.329311, 40.181728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.220066, 35.638145, 40.201931>,  <33.068024, 35.823444, 40.214054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.220066, 35.638145, 40.201931>,  <33.473469, 35.329311, 40.181728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.220066, 35.638145, 40.201931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089463, 0.008256, 0.995956,
		0.768545, 0.635467, -0.074304,
		-0.633510, 0.772084, 0.050506,
		33.030014, 35.869770, 40.217083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.798790, 35.706337, 40.505211>,  <33.473469, 35.329311, 40.181728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.798790, 35.706337, 40.505211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.421288, 35.828060, 40.556946>,  <33.194786, 35.901093, 40.587986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.421288, 35.828060, 40.556946>,  <33.798790, 35.706337, 40.505211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.421288, 35.828060, 40.556946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107485, -0.087581, 0.990342,
		0.312694, 0.948540, 0.049947,
		-0.943753, 0.304306, 0.129340,
		33.138161, 35.919353, 40.595749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.825024, 36.092945, 41.092018>,  <33.798790, 35.706337, 40.505211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.825024, 36.092945, 41.092018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.433941, 36.033516, 41.032677>,  <33.199291, 35.997856, 40.997074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.433941, 36.033516, 41.032677>,  <33.825024, 36.092945, 41.092018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.433941, 36.033516, 41.032677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117256, -0.199731, 0.972810,
		-0.174165, 0.968521, 0.177857,
		-0.977710, -0.148575, -0.148351,
		33.140629, 35.988945, 40.988171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.537811, 36.621933, 41.507801>,  <33.825024, 36.092945, 41.092018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.537811, 36.621933, 41.507801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.318649, 36.291145, 41.457336>,  <33.187153, 36.092674, 41.427055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.318649, 36.291145, 41.457336>,  <33.537811, 36.621933, 41.507801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.318649, 36.291145, 41.457336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085765, -0.205556, 0.974880,
		-0.832130, 0.523325, 0.183551,
		-0.547909, -0.826969, -0.126166,
		33.154278, 36.043056, 41.419487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.109947, 36.628677, 42.056389>,  <33.537811, 36.621933, 41.507801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.109947, 36.628677, 42.056389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.099327, 36.246609, 41.938442>,  <33.092957, 36.017368, 41.867672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.099327, 36.246609, 41.938442>,  <33.109947, 36.628677, 42.056389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.099327, 36.246609, 41.938442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185197, -0.294566, 0.937514,
		-0.982343, -0.029719, 0.184715,
		-0.026548, -0.955169, -0.294869,
		33.091362, 35.960056, 41.849983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.553410, 36.297630, 42.479309>,  <33.109947, 36.628677, 42.056389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.553410, 36.297630, 42.479309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.774166, 35.998459, 42.331783>,  <32.906620, 35.818958, 42.243267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.774166, 35.998459, 42.331783>,  <32.553410, 36.297630, 42.479309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.774166, 35.998459, 42.331783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223035, -0.293774, 0.929490,
		-0.803537, -0.595236, 0.004682,
		0.551891, -0.747924, -0.368817,
		32.939732, 35.774082, 42.221138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.411655, 35.737961, 42.860088>,  <32.553410, 36.297630, 42.479309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.411655, 35.737961, 42.860088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.760704, 35.625378, 42.700428>,  <32.970131, 35.557827, 42.604633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.760704, 35.625378, 42.700428>,  <32.411655, 35.737961, 42.860088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.760704, 35.625378, 42.700428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254628, -0.435224, 0.863565,
		-0.416769, -0.855199, -0.308121,
		0.872621, -0.281451, -0.399146,
		33.022491, 35.540939, 42.580685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.520046, 34.961563, 42.978672>,  <32.411655, 35.737961, 42.860088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.520046, 34.961563, 42.978672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.881256, 35.130901, 42.949482>,  <33.097980, 35.232506, 42.931969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.881256, 35.130901, 42.949482>,  <32.520046, 34.961563, 42.978672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.881256, 35.130901, 42.949482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348588, -0.622816, 0.700419,
		0.251066, -0.657935, -0.709991,
		0.903024, 0.423346, -0.072980,
		33.152164, 35.257904, 42.927589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.967464, 34.451488, 43.021900>,  <32.520046, 34.961563, 42.978672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.967464, 34.451488, 43.021900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.191925, 34.771072, 43.108402>,  <33.326603, 34.962822, 43.160305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.191925, 34.771072, 43.108402>,  <32.967464, 34.451488, 43.021900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.191925, 34.771072, 43.108402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457108, -0.516948, 0.723752,
		0.690043, -0.307284, -0.655299,
		0.561153, 0.798963, 0.216254,
		33.360271, 35.010761, 43.173279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.573162, 34.169067, 43.205101>,  <32.967464, 34.451488, 43.021900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.573162, 34.169067, 43.205101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.595310, 34.540127, 43.352829>,  <33.608601, 34.762764, 43.441467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.595310, 34.540127, 43.352829>,  <33.573162, 34.169067, 43.205101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.595310, 34.540127, 43.352829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514746, -0.343467, 0.785536,
		0.855553, 0.146613, -0.496521,
		0.055369, 0.927650, 0.369323,
		33.611919, 34.818420, 43.463627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.198425, 34.308701, 43.428547>,  <33.573162, 34.169067, 43.205101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.198425, 34.308701, 43.428547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.990955, 34.573414, 43.645069>,  <33.866474, 34.732243, 43.774982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.990955, 34.573414, 43.645069>,  <34.198425, 34.308701, 43.428547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.990955, 34.573414, 43.645069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481702, -0.296880, 0.824515,
		0.706357, 0.688404, -0.164801,
		-0.518674, 0.661787, 0.541309,
		33.835354, 34.771950, 43.807461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.703629, 34.584000, 43.815983>,  <34.198425, 34.308701, 43.428547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.703629, 34.584000, 43.815983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.371861, 34.671604, 44.021542>,  <34.172798, 34.724167, 44.144878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.371861, 34.671604, 44.021542>,  <34.703629, 34.584000, 43.815983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.371861, 34.671604, 44.021542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401266, -0.406440, 0.820849,
		0.388643, 0.887041, 0.249229,
		-0.829423, 0.219010, 0.513899,
		34.123035, 34.737309, 44.175713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.866646, 34.807629, 44.541344>,  <34.703629, 34.584000, 43.815983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.866646, 34.807629, 44.541344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.481602, 34.708744, 44.585636>,  <34.250576, 34.649414, 44.612213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.481602, 34.708744, 44.585636>,  <34.866646, 34.807629, 44.541344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.481602, 34.708744, 44.585636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182259, -0.288668, 0.939922,
		-0.200397, 0.924962, 0.322932,
		-0.962612, -0.247215, 0.110735,
		34.192818, 34.634579, 44.618858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.577812, 35.091747, 45.191254>,  <34.866646, 34.807629, 44.541344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.577812, 35.091747, 45.191254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.314068, 34.800632, 45.115814>,  <34.155823, 34.625965, 45.070549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.314068, 34.800632, 45.115814>,  <34.577812, 35.091747, 45.191254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.314068, 34.800632, 45.115814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054808, -0.296721, 0.953390,
		-0.749828, 0.618289, 0.235534,
		-0.659358, -0.727788, -0.188603,
		34.116261, 34.582294, 45.059235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.219326, 35.163864, 45.708271>,  <34.577812, 35.091747, 45.191254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.219326, 35.163864, 45.708271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.137856, 34.800400, 45.562469>,  <34.088974, 34.582321, 45.474991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.137856, 34.800400, 45.562469>,  <34.219326, 35.163864, 45.708271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.137856, 34.800400, 45.562469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029075, -0.366528, 0.929953,
		-0.978607, 0.200003, 0.048232,
		-0.203672, -0.908656, -0.364502,
		34.076756, 34.527802, 45.453117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.526573, 35.016529, 46.007133>,  <34.219326, 35.163864, 45.708271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.526573, 35.016529, 46.007133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.720276, 34.687977, 45.886589>,  <33.836498, 34.490845, 45.814262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.720276, 34.687977, 45.886589>,  <33.526573, 35.016529, 46.007133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.720276, 34.687977, 45.886589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071355, -0.306218, 0.949284,
		-0.872009, -0.481205, -0.089679,
		0.484261, -0.821385, -0.301361,
		33.865555, 34.441563, 45.796181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.219643, 34.377148, 46.426346>,  <33.526573, 35.016529, 46.007133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.219643, 34.377148, 46.426346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.589554, 34.270901, 46.317364>,  <33.811501, 34.207153, 46.251976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.589554, 34.270901, 46.317364>,  <33.219643, 34.377148, 46.426346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.589554, 34.270901, 46.317364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116213, -0.484657, 0.866950,
		-0.362318, -0.833401, -0.417334,
		0.924781, -0.265612, -0.272452,
		33.866989, 34.191216, 46.235626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.138676, 33.668156, 46.319496>,  <33.219643, 34.377148, 46.426346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.138676, 33.668156, 46.319496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.510204, 33.795128, 46.395943>,  <33.733120, 33.871311, 46.441811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.510204, 33.795128, 46.395943>,  <33.138676, 33.668156, 46.319496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.510204, 33.795128, 46.395943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058127, -0.634242, 0.770947,
		0.365939, -0.704963, -0.607549,
		0.928822, 0.317435, 0.191116,
		33.788853, 33.890358, 46.453278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.431114, 33.095844, 46.456066>,  <33.138676, 33.668156, 46.319496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.431114, 33.095844, 46.456066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.724461, 33.323303, 46.605099>,  <33.900467, 33.459778, 46.694519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.724461, 33.323303, 46.605099>,  <33.431114, 33.095844, 46.456066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.724461, 33.323303, 46.605099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131118, -0.656064, 0.743228,
		0.667070, -0.496207, -0.555695,
		0.733366, 0.568647, 0.372579,
		33.944469, 33.493896, 46.716873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.014557, 32.723373, 46.721317>,  <33.431114, 33.095844, 46.456066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.014557, 32.723373, 46.721317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.062172, 33.070412, 46.914440>,  <34.090740, 33.278637, 47.030315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.062172, 33.070412, 46.914440>,  <34.014557, 32.723373, 46.721317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.062172, 33.070412, 46.914440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384115, -0.488643, 0.783380,
		0.915579, 0.092201, -0.391425,
		0.119038, 0.867598, 0.482808,
		34.097885, 33.330692, 47.059284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.584450, 32.582962, 47.132240>,  <34.014557, 32.723373, 46.721317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.584450, 32.582962, 47.132240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.433773, 32.907146, 47.311687>,  <34.343369, 33.101658, 47.419357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.433773, 32.907146, 47.311687>,  <34.584450, 32.582962, 47.132240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.433773, 32.907146, 47.311687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423613, -0.279980, 0.861489,
		0.823807, 0.514556, -0.237855,
		-0.376690, 0.810459, 0.448621,
		34.320766, 33.150284, 47.446274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.119278, 32.928993, 47.437679>,  <34.584450, 32.582962, 47.132240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.119278, 32.928993, 47.437679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.793537, 33.045429, 47.638515>,  <34.598091, 33.115292, 47.759018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.793537, 33.045429, 47.638515>,  <35.119278, 32.928993, 47.437679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.793537, 33.045429, 47.638515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465046, -0.190295, 0.864593,
		0.347220, 0.937579, 0.019596,
		-0.814353, 0.291091, 0.502091,
		34.549232, 33.132755, 47.789143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.304581, 33.385376, 47.903172>,  <35.119278, 32.928993, 47.437679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.304581, 33.385376, 47.903172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.957039, 33.296188, 48.079975>,  <34.748512, 33.242676, 48.186058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.957039, 33.296188, 48.079975>,  <35.304581, 33.385376, 47.903172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.957039, 33.296188, 48.079975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481359, -0.171861, 0.859510,
		-0.115675, 0.959558, 0.256649,
		-0.868857, -0.222964, 0.442012,
		34.696381, 33.229298, 48.212578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.335609, 33.845253, 48.403313>,  <35.304581, 33.385376, 47.903172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.335609, 33.845253, 48.403313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.112450, 33.525490, 48.492477>,  <34.978554, 33.333633, 48.545979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.112450, 33.525490, 48.492477>,  <35.335609, 33.845253, 48.403313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.112450, 33.525490, 48.492477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432677, -0.050967, 0.900107,
		-0.708192, 0.598622, 0.374321,
		-0.557902, -0.799409, 0.222916,
		34.945080, 33.285667, 48.559353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.352306, 33.807331, 49.126072>,  <35.335609, 33.845253, 48.403313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.352306, 33.807331, 49.126072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.163784, 33.460667, 49.060635>,  <35.050671, 33.252666, 49.021370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.163784, 33.460667, 49.060635>,  <35.352306, 33.807331, 49.126072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.163784, 33.460667, 49.060635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229111, -0.299431, 0.926201,
		-0.851690, 0.399045, 0.339686,
		-0.471309, -0.866662, -0.163597,
		35.022392, 33.200668, 49.011555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.911263, 33.836094, 49.722912>,  <35.352306, 33.807331, 49.126072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.911263, 33.836094, 49.722912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.007687, 33.474392, 49.581932>,  <35.065540, 33.257370, 49.497345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.007687, 33.474392, 49.581932>,  <34.911263, 33.836094, 49.722912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.007687, 33.474392, 49.581932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263718, -0.288464, 0.920457,
		-0.933994, -0.314829, 0.168932,
		0.241056, -0.904252, -0.352450,
		35.080002, 33.203117, 49.476196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.635273, 33.350937, 50.180889>,  <34.911263, 33.836094, 49.722912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.635273, 33.350937, 50.180889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.939133, 33.172581, 49.991528>,  <35.121449, 33.065567, 49.877911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.939133, 33.172581, 49.991528>,  <34.635273, 33.350937, 50.180889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.939133, 33.172581, 49.991528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337695, -0.351658, 0.873097,
		-0.555783, -0.823115, -0.116562,
		0.759650, -0.445890, -0.473408,
		35.167027, 33.038815, 49.849506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.762997, 32.789867, 50.537319>,  <34.635273, 33.350937, 50.180889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.762997, 32.789867, 50.537319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.099236, 32.811279, 50.321720>,  <35.300980, 32.824127, 50.192360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.099236, 32.811279, 50.321720>,  <34.762997, 32.789867, 50.537319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.099236, 32.811279, 50.321720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530761, -0.279979, 0.799940,
		-0.108085, -0.958512, -0.263765,
		0.840601, 0.053535, -0.539002,
		35.351418, 32.827339, 50.160019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.017639, 32.207123, 50.718178>,  <34.762997, 32.789867, 50.537319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.017639, 32.207123, 50.718178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.303547, 32.455372, 50.589218>,  <35.475090, 32.604321, 50.511841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.303547, 32.455372, 50.589218>,  <35.017639, 32.207123, 50.718178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.303547, 32.455372, 50.589218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594956, -0.297286, 0.746758,
		0.367608, -0.725571, -0.581731,
		0.714767, 0.620619, -0.322398,
		35.517979, 32.641556, 50.492500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.595627, 31.749836, 50.536816>,  <35.017639, 32.207123, 50.718178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.595627, 31.749836, 50.536816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.750393, 32.095818, 50.664665>,  <35.843250, 32.303406, 50.741375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.750393, 32.095818, 50.664665>,  <35.595627, 31.749836, 50.536816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.750393, 32.095818, 50.664665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.678518, -0.501768, 0.536510,
		0.624431, 0.009286, -0.781025,
		0.386911, 0.864953, 0.319620,
		35.866467, 32.355305, 50.760551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.295284, 31.667404, 50.376343>,  <35.595627, 31.749836, 50.536816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.295284, 31.667404, 50.376343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.246052, 31.953154, 50.651886>,  <36.216511, 32.124603, 50.817211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.246052, 31.953154, 50.651886>,  <36.295284, 31.667404, 50.376343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.246052, 31.953154, 50.651886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587912, -0.506729, 0.630543,
		0.799506, 0.482596, -0.357619,
		-0.123082, 0.714371, 0.688857,
		36.209126, 32.167465, 50.858543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.852352, 31.632990, 50.843014>,  <36.295284, 31.667404, 50.376343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.852352, 31.632990, 50.843014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.587811, 31.852423, 51.047630>,  <36.429085, 31.984081, 51.170399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.587811, 31.852423, 51.047630>,  <36.852352, 31.632990, 50.843014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.587811, 31.852423, 51.047630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417349, -0.297540, 0.858656,
		0.623246, 0.781364, -0.032171,
		-0.661351, 0.548580, 0.511542,
		36.389404, 32.016998, 51.201092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.207962, 31.951965, 51.429031>,  <36.852352, 31.632990, 50.843014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.207962, 31.951965, 51.429031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.829052, 31.974524, 51.555202>,  <36.601707, 31.988058, 51.630905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.829052, 31.974524, 51.555202>,  <37.207962, 31.951965, 51.429031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.829052, 31.974524, 51.555202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299655, -0.192756, 0.934372,
		0.113493, 0.979625, 0.165694,
		-0.947273, 0.056394, 0.315426,
		36.544868, 31.991442, 51.649830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.211533, 32.380608, 52.082714>,  <37.207962, 31.951965, 51.429031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.211533, 32.380608, 52.082714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.884872, 32.149899, 52.074516>,  <36.688877, 32.011471, 52.069599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.884872, 32.149899, 52.074516>,  <37.211533, 32.380608, 52.082714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.884872, 32.149899, 52.074516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181323, -0.290117, 0.939656,
		-0.547916, 0.763651, 0.341505,
		-0.816646, -0.576775, -0.020493,
		36.639877, 31.976866, 52.068367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.172203, 32.236767, 52.820404>,  <37.211533, 32.380608, 52.082714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.172203, 32.236767, 52.820404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.870514, 32.004143, 52.698463>,  <36.689499, 31.864569, 52.625298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.870514, 32.004143, 52.698463>,  <37.172203, 32.236767, 52.820404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.870514, 32.004143, 52.698463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018672, -0.483083, 0.875376,
		-0.656351, 0.654538, 0.375212,
		-0.754225, -0.581559, -0.304851,
		36.644245, 31.829676, 52.607010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.927719, 32.018707, 53.504326>,  <37.172203, 32.236767, 52.820404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.927719, 32.018707, 53.504326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.787922, 31.777868, 53.217178>,  <36.704044, 31.633364, 53.044891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.787922, 31.777868, 53.217178>,  <36.927719, 32.018707, 53.504326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.787922, 31.777868, 53.217178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205793, -0.796802, 0.568115,
		-0.914059, 0.050820, 0.402384,
		-0.349492, -0.602099, -0.717866,
		36.683075, 31.597239, 53.001820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.304367, 31.521135, 53.721725>,  <36.927719, 32.018707, 53.504326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.304367, 31.521135, 53.721725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.565609, 31.349825, 53.471916>,  <36.722355, 31.247038, 53.322029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.565609, 31.349825, 53.471916>,  <36.304367, 31.521135, 53.721725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.565609, 31.349825, 53.471916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347384, -0.563375, 0.749622,
		-0.672889, -0.706531, -0.219165,
		0.653104, -0.428278, -0.624527,
		36.761539, 31.221342, 53.284557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.339588, 30.829479, 53.957767>,  <36.304367, 31.521135, 53.721725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.339588, 30.829479, 53.957767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.674026, 30.849382, 53.739243>,  <36.874691, 30.861324, 53.608128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.674026, 30.849382, 53.739243>,  <36.339588, 30.829479, 53.957767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.674026, 30.849382, 53.739243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440795, -0.653759, 0.615061,
		-0.326554, -0.755065, -0.568541,
		0.836099, 0.049760, -0.546316,
		36.924858, 30.864311, 53.575348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.936840, 30.355850, 53.815636>,  <36.339588, 30.829479, 53.957767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.936840, 30.355850, 53.815636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.949463, 29.971897, 53.927086>,  <36.957035, 29.741526, 53.993958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.949463, 29.971897, 53.927086>,  <36.936840, 30.355850, 53.815636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.949463, 29.971897, 53.927086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.964044, -0.102820, -0.245045,
		0.263863, -0.260875, -0.928612,
		0.031554, -0.959881, 0.278625,
		36.958931, 29.683933, 54.010674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.637691, 29.901476, 53.311165>,  <36.936840, 30.355850, 53.815636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.637691, 29.901476, 53.311165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.613434, 29.712864, 53.663071>,  <36.598881, 29.599697, 53.874214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.613434, 29.712864, 53.663071>,  <36.637691, 29.901476, 53.311165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.613434, 29.712864, 53.663071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.935551, -0.280391, -0.214769,
		0.347948, -0.836087, -0.424135,
		-0.060642, -0.471528, 0.879763,
		36.595242, 29.571405, 53.926998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.519825, 29.143301, 53.206577>,  <36.637691, 29.901476, 53.311165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.519825, 29.143301, 53.206577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.334820, 29.322983, 53.512337>,  <36.223816, 29.430792, 53.695793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.334820, 29.322983, 53.512337>,  <36.519825, 29.143301, 53.206577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.334820, 29.322983, 53.512337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.859987, -0.017586, -0.510012,
		-0.215656, -0.893257, 0.394443,
		-0.462509, 0.449203, 0.764397,
		36.196068, 29.457745, 53.741657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.129402, 28.833483, 53.587128>,  <36.519825, 29.143301, 53.206577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.129402, 28.833483, 53.587128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.885456, 28.760429, 53.278660>,  <36.739086, 28.716597, 53.093578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.885456, 28.760429, 53.278660>,  <37.129402, 28.833483, 53.587128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.885456, 28.760429, 53.278660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.688637, 0.359470, -0.629730,
		0.392226, -0.915109, -0.093458,
		-0.609867, -0.182638, -0.771171,
		36.702496, 28.705639, 53.047310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.592331, 28.357384, 53.341003>,  <37.129402, 28.833483, 53.587128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.592331, 28.357384, 53.341003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.684460, 28.642365, 53.606140>,  <37.739738, 28.813353, 53.765221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.684460, 28.642365, 53.606140>,  <37.592331, 28.357384, 53.341003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.684460, 28.642365, 53.606140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.732196, 0.321782, -0.600288,
		-0.640968, 0.623592, -0.447541,
		0.230324, 0.712453, 0.662843,
		37.753555, 28.856100, 53.804993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.525047, 28.982733, 52.971188>,  <37.592331, 28.357384, 53.341003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.525047, 28.982733, 52.971188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.797237, 28.966007, 53.263817>,  <37.960552, 28.955973, 53.439396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.797237, 28.966007, 53.263817>,  <37.525047, 28.982733, 52.971188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.797237, 28.966007, 53.263817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.704339, 0.312720, -0.637270,
		-0.202131, 0.948925, 0.242250,
		0.680478, -0.041814, 0.731575,
		38.001381, 28.953463, 53.483288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.418377, 29.274996, 52.292290>,  <37.525047, 28.982733, 52.971188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.418377, 29.274996, 52.292290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.078941, 29.095400, 52.404224>,  <36.875282, 28.987642, 52.471386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.078941, 29.095400, 52.404224>,  <37.418377, 29.274996, 52.292290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.078941, 29.095400, 52.404224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340966, 0.059697, -0.938178,
		0.404527, -0.891540, -0.203749,
		-0.848587, -0.448990, 0.279836,
		36.824364, 28.960703, 52.488174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.316311, 28.644110, 52.031170>,  <37.418377, 29.274996, 52.292290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.316311, 28.644110, 52.031170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.952049, 28.802767, 52.077450>,  <36.733494, 28.897961, 52.105217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.952049, 28.802767, 52.077450>,  <37.316311, 28.644110, 52.031170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.952049, 28.802767, 52.077450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142549, -0.038783, -0.989028,
		-0.387806, -0.917152, 0.091859,
		-0.910652, 0.396645, 0.115699,
		36.678852, 28.921761, 52.112160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.700485, 28.241020, 51.820896>,  <37.316311, 28.644110, 52.031170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.700485, 28.241020, 51.820896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.595379, 28.624483, 51.777199>,  <36.532314, 28.854561, 51.750980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.595379, 28.624483, 51.777199>,  <36.700485, 28.241020, 51.820896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.595379, 28.624483, 51.777199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017630, -0.117972, -0.992861,
		-0.964699, -0.258962, 0.047900,
		-0.262764, 0.958656, -0.109242,
		36.516548, 28.912081, 51.744427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.053528, 28.311817, 51.441826>,  <36.700485, 28.241020, 51.820896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.053528, 28.311817, 51.441826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.206341, 28.680912, 51.421379>,  <36.298027, 28.902369, 51.409111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.206341, 28.680912, 51.421379>,  <36.053528, 28.311817, 51.441826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.206341, 28.680912, 51.421379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206830, 0.031457, -0.977871,
		-0.900709, 0.384147, 0.202866,
		0.382028, 0.922736, -0.051120,
		36.320950, 28.957733, 51.406044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.589668, 28.665609, 51.147488>,  <36.053528, 28.311817, 51.441826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.589668, 28.665609, 51.147488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.892262, 28.916334, 51.072823>,  <36.073818, 29.066769, 51.028023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.892262, 28.916334, 51.072823>,  <35.589668, 28.665609, 51.147488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.892262, 28.916334, 51.072823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308833, 0.090769, -0.946775,
		-0.576506, 0.773866, 0.262245,
		0.756481, 0.626811, -0.186667,
		36.119205, 29.104378, 51.016823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.272919, 29.124567, 50.794861>,  <35.589668, 28.665609, 51.147488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.272919, 29.124567, 50.794861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.665100, 29.166742, 50.728420>,  <35.900410, 29.192047, 50.688557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.665100, 29.166742, 50.728420>,  <35.272919, 29.124567, 50.794861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.665100, 29.166742, 50.728420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192556, 0.341000, -0.920131,
		-0.040378, 0.934131, 0.354638,
		0.980455, 0.105441, -0.166104,
		35.959236, 29.198374, 50.678589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.368637, 29.501968, 50.280083>,  <35.272919, 29.124567, 50.794861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.368637, 29.501968, 50.280083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.744659, 29.373478, 50.234287>,  <35.970272, 29.296385, 50.206810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.744659, 29.373478, 50.234287>,  <35.368637, 29.501968, 50.280083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.744659, 29.373478, 50.234287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112208, 0.025664, -0.993353,
		0.322027, 0.946656, -0.011919,
		0.940057, -0.321224, -0.114487,
		36.026676, 29.277111, 50.199940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.547050, 29.960665, 49.837017>,  <35.368637, 29.501968, 50.280083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.547050, 29.960665, 49.837017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.823105, 29.671320, 49.828438>,  <35.988739, 29.497713, 49.823288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.823105, 29.671320, 49.828438>,  <35.547050, 29.960665, 49.837017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.823105, 29.671320, 49.828438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113823, 0.137772, -0.983902,
		0.714671, 0.676586, 0.177417,
		0.690138, -0.723360, -0.021451,
		36.030148, 29.454311, 49.822002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.080925, 30.346283, 49.543411>,  <35.547050, 29.960665, 49.837017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.080925, 30.346283, 49.543411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.109406, 29.950024, 49.496864>,  <36.126495, 29.712267, 49.468937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.109406, 29.950024, 49.496864>,  <36.080925, 30.346283, 49.543411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.109406, 29.950024, 49.496864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170006, 0.127014, -0.977223,
		0.982867, 0.049799, 0.177461,
		0.071205, -0.990650, -0.116372,
		36.130768, 29.652828, 49.461952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.738548, 30.215368, 49.111118>,  <36.080925, 30.346283, 49.543411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.738548, 30.215368, 49.111118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.477379, 29.913918, 49.080818>,  <36.320679, 29.733047, 49.062637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.477379, 29.913918, 49.080818>,  <36.738548, 30.215368, 49.111118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.477379, 29.913918, 49.080818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225145, -0.097624, -0.969422,
		0.723189, -0.650011, 0.233416,
		-0.652923, -0.753628, -0.075746,
		36.281502, 29.687830, 49.058094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.106689, 29.817482, 48.697269>,  <36.738548, 30.215368, 49.111118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.106689, 29.817482, 48.697269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.729744, 29.688152, 48.662834>,  <36.503578, 29.610554, 48.642174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.729744, 29.688152, 48.662834>,  <37.106689, 29.817482, 48.697269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.729744, 29.688152, 48.662834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074311, 0.048615, -0.996049,
		0.326235, -0.945038, -0.021786,
		-0.942363, -0.323327, -0.086087,
		36.447037, 29.591154, 48.637009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.137348, 29.406261, 48.088554>,  <37.106689, 29.817482, 48.697269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.137348, 29.406261, 48.088554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.745415, 29.456093, 48.151047>,  <36.510254, 29.485991, 48.188541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.745415, 29.456093, 48.151047>,  <37.137348, 29.406261, 48.088554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.745415, 29.456093, 48.151047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159187, -0.014057, -0.987148,
		-0.120782, -0.992110, 0.033605,
		-0.979832, 0.124580, 0.156233,
		36.451466, 29.493465, 48.197918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.760204, 28.947197, 47.635517>,  <37.137348, 29.406261, 48.088554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.760204, 28.947197, 47.635517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.540359, 29.270853, 47.718678>,  <36.408455, 29.465048, 47.768574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.540359, 29.270853, 47.718678>,  <36.760204, 28.947197, 47.635517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.540359, 29.270853, 47.718678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222493, 0.098097, -0.969986,
		-0.805250, -0.579368, 0.126114,
		-0.549608, 0.809141, 0.207898,
		36.375477, 29.513596, 47.781048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.111633, 28.848072, 47.225746>,  <36.760204, 28.947197, 47.635517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.111633, 28.848072, 47.225746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.164169, 29.229162, 47.335335>,  <36.195690, 29.457817, 47.401089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.164169, 29.229162, 47.335335>,  <36.111633, 28.848072, 47.225746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.164169, 29.229162, 47.335335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269374, 0.300269, -0.915028,
		-0.954037, 0.046378, 0.296077,
		0.131340, 0.952726, 0.273975,
		36.203571, 29.514980, 47.417526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.656883, 29.247952, 46.772026>,  <36.111633, 28.848072, 47.225746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.656883, 29.247952, 46.772026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.880783, 29.536402, 46.935326>,  <36.015121, 29.709471, 47.033306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.880783, 29.536402, 46.935326>,  <35.656883, 29.247952, 46.772026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.880783, 29.536402, 46.935326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214951, 0.602143, -0.768908,
		-0.800300, 0.342641, 0.492053,
		0.559746, 0.721125, 0.408244,
		36.048706, 29.752739, 47.057800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.292171, 29.925898, 46.701786>,  <35.656883, 29.247952, 46.772026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.292171, 29.925898, 46.701786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.657986, 30.060415, 46.791698>,  <35.877476, 30.141127, 46.845646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.657986, 30.060415, 46.791698>,  <35.292171, 29.925898, 46.701786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.657986, 30.060415, 46.791698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064627, 0.670040, -0.739507,
		-0.399305, 0.661780, 0.634510,
		0.914538, 0.336295, 0.224781,
		35.932346, 30.161304, 46.859135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.299751, 30.640478, 46.836582>,  <35.292171, 29.925898, 46.701786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.299751, 30.640478, 46.836582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.683025, 30.576109, 46.741928>,  <35.912991, 30.537487, 46.685135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.683025, 30.576109, 46.741928>,  <35.299751, 30.640478, 46.836582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.683025, 30.576109, 46.741928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031730, 0.762062, -0.646726,
		0.284399, 0.627189, 0.725087,
		0.958181, -0.160921, -0.236631,
		35.970478, 30.527832, 46.670940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.686317, 31.206705, 46.965721>,  <35.299751, 30.640478, 46.836582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.686317, 31.206705, 46.965721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.887608, 31.013081, 46.679379>,  <36.008381, 30.896906, 46.507572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.887608, 31.013081, 46.679379>,  <35.686317, 31.206705, 46.965721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.887608, 31.013081, 46.679379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226556, 0.725509, -0.649853,
		0.833927, 0.489205, 0.255428,
		0.503227, -0.484061, -0.715854,
		36.038574, 30.867863, 46.464622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.854149, 31.746523, 46.593990>,  <35.686317, 31.206705, 46.965721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.854149, 31.746523, 46.593990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.897137, 31.418009, 46.369869>,  <35.922932, 31.220901, 46.235397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.897137, 31.418009, 46.369869>,  <35.854149, 31.746523, 46.593990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.897137, 31.418009, 46.369869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214495, 0.531144, -0.819682,
		0.970795, 0.208275, -0.119078,
		0.107472, -0.821284, -0.560305,
		35.929379, 31.171623, 46.201778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.228607, 31.982540, 46.041958>,  <35.854149, 31.746523, 46.593990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.228607, 31.982540, 46.041958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.057354, 31.643015, 45.917881>,  <35.954601, 31.439301, 45.843433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.057354, 31.643015, 45.917881>,  <36.228607, 31.982540, 46.041958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.057354, 31.643015, 45.917881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294950, 0.455688, -0.839853,
		0.854230, -0.268075, -0.445452,
		-0.428130, -0.848813, -0.310193,
		35.928913, 31.388371, 45.824821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.299740, 32.183277, 45.451061>,  <36.228607, 31.982540, 46.041958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.299740, 32.183277, 45.451061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.052555, 31.868935, 45.441620>,  <35.904243, 31.680328, 45.435955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.052555, 31.868935, 45.441620>,  <36.299740, 32.183277, 45.451061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.052555, 31.868935, 45.441620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440470, 0.370916, -0.817562,
		0.651241, -0.494823, -0.575357,
		-0.617957, -0.785857, -0.023601,
		35.867168, 31.633177, 45.434540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.407177, 31.793381, 44.784927>,  <36.299740, 32.183277, 45.451061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.407177, 31.793381, 44.784927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.030540, 31.710743, 44.891300>,  <35.804558, 31.661160, 44.955124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.030540, 31.710743, 44.891300>,  <36.407177, 31.793381, 44.784927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.030540, 31.710743, 44.891300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296927, 0.136834, -0.945045,
		0.158869, -0.968808, -0.190190,
		-0.941592, -0.206611, 0.265927,
		35.748062, 31.648764, 44.971081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.109226, 31.357153, 44.260006>,  <36.407177, 31.793381, 44.784927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.109226, 31.357153, 44.260006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.802513, 31.503815, 44.470760>,  <35.618484, 31.591812, 44.597214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.802513, 31.503815, 44.470760>,  <36.109226, 31.357153, 44.260006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.802513, 31.503815, 44.470760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521117, 0.123716, -0.844471,
		-0.374814, -0.922095, 0.096208,
		-0.766780, 0.366655, 0.526890,
		35.572479, 31.613811, 44.628826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.556782, 31.033787, 43.965939>,  <36.109226, 31.357153, 44.260006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.556782, 31.033787, 43.965939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.418800, 31.362879, 44.146660>,  <35.336014, 31.560333, 44.255093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.418800, 31.362879, 44.146660>,  <35.556782, 31.033787, 43.965939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.418800, 31.362879, 44.146660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520791, 0.232697, -0.821358,
		-0.780889, -0.518622, 0.348201,
		-0.344949, 0.822729, 0.451804,
		35.315315, 31.609697, 44.282200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.864998, 31.046095, 43.783966>,  <35.556782, 31.033787, 43.965939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.864998, 31.046095, 43.783966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.936863, 31.415581, 43.919304>,  <34.979980, 31.637272, 44.000507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.936863, 31.415581, 43.919304>,  <34.864998, 31.046095, 43.783966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.936863, 31.415581, 43.919304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455694, 0.382960, -0.803545,
		-0.871818, -0.009819, 0.489732,
		0.179658, 0.923713, 0.338346,
		34.990761, 31.692694, 44.020809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.163635, 31.505020, 43.656036>,  <34.864998, 31.046095, 43.783966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.163635, 31.505020, 43.656036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.491024, 31.734482, 43.668831>,  <34.687458, 31.872160, 43.676506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.491024, 31.734482, 43.668831>,  <34.163635, 31.505020, 43.656036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.491024, 31.734482, 43.668831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348731, 0.540259, -0.765838,
		-0.456607, 0.615662, 0.642238,
		0.818472, 0.573655, 0.031986,
		34.736565, 31.906578, 43.678425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.856140, 32.209270, 43.504974>,  <34.163635, 31.505020, 43.656036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.856140, 32.209270, 43.504974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.248726, 32.186928, 43.431652>,  <34.484280, 32.173523, 43.387657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.248726, 32.186928, 43.431652>,  <33.856140, 32.209270, 43.504974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.248726, 32.186928, 43.431652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141760, 0.432013, -0.890656,
		0.128936, 0.900136, 0.416089,
		0.981468, -0.055853, -0.183305,
		34.543167, 32.170174, 43.376659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.026417, 32.902115, 43.314243>,  <33.856140, 32.209270, 43.504974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.026417, 32.902115, 43.314243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.340576, 32.693539, 43.180832>,  <34.529072, 32.568394, 43.100784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.340576, 32.693539, 43.180832>,  <34.026417, 32.902115, 43.314243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.340576, 32.693539, 43.180832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087286, 0.440149, -0.893672,
		0.612801, 0.731004, 0.300180,
		0.785402, -0.521442, -0.333530,
		34.576199, 32.537106, 43.080772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.347668, 33.344326, 42.893570>,  <34.026417, 32.902115, 43.314243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.347668, 33.344326, 42.893570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.528656, 32.999405, 42.802612>,  <34.637249, 32.792454, 42.748039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.528656, 32.999405, 42.802612>,  <34.347668, 33.344326, 42.893570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.528656, 32.999405, 42.802612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100325, 0.302587, -0.947827,
		0.886119, 0.406049, 0.223421,
		0.452468, -0.862303, -0.227391,
		34.664398, 32.740715, 42.734394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.875610, 33.575832, 42.433136>,  <34.347668, 33.344326, 42.893570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.875610, 33.575832, 42.433136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.823303, 33.186916, 42.355625>,  <34.791920, 32.953568, 42.309120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.823303, 33.186916, 42.355625>,  <34.875610, 33.575832, 42.433136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.823303, 33.186916, 42.355625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004190, 0.194911, -0.980812,
		0.991404, -0.129073, -0.021415,
		-0.130770, -0.972291, -0.193776,
		34.784073, 32.895229, 42.297493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.416500, 33.386662, 41.973034>,  <34.875610, 33.575832, 42.433136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.416500, 33.386662, 41.973034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.104950, 33.143974, 41.909473>,  <34.918022, 32.998360, 41.871338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.104950, 33.143974, 41.909473>,  <35.416500, 33.386662, 41.973034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.104950, 33.143974, 41.909473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030288, 0.216669, -0.975775,
		0.626453, -0.764815, -0.150381,
		-0.778871, -0.606723, -0.158898,
		34.871288, 32.961956, 41.861805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.468079, 33.213577, 41.295929>,  <35.416500, 33.386662, 41.973034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.468079, 33.213577, 41.295929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.094673, 33.091667, 41.371471>,  <34.870632, 33.018520, 41.416798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.094673, 33.091667, 41.371471>,  <35.468079, 33.213577, 41.295929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.094673, 33.091667, 41.371471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295458, 0.355466, -0.886763,
		0.203131, -0.883603, -0.421880,
		-0.933511, -0.304777, 0.188861,
		34.814621, 33.000233, 41.428131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.344421, 32.721901, 40.790024>,  <35.468079, 33.213577, 41.295929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.344421, 32.721901, 40.790024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.011173, 32.895752, 40.926853>,  <34.811226, 33.000065, 41.008949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.011173, 32.895752, 40.926853>,  <35.344421, 32.721901, 40.790024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.011173, 32.895752, 40.926853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266033, 0.227334, -0.936774,
		-0.484916, -0.871444, -0.073769,
		-0.833116, 0.434632, 0.342071,
		34.761238, 33.026142, 41.029476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.768986, 32.415752, 40.433414>,  <35.344421, 32.721901, 40.790024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.768986, 32.415752, 40.433414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.613327, 32.753117, 40.581585>,  <34.519932, 32.955536, 40.670486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.613327, 32.753117, 40.581585>,  <34.768986, 32.415752, 40.433414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.613327, 32.753117, 40.581585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454972, 0.173674, -0.873406,
		-0.800977, -0.508418, 0.316145,
		-0.389149, 0.843415, 0.370425,
		34.496582, 33.006142, 40.692711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.033405, 32.319897, 40.306328>,  <34.768986, 32.415752, 40.433414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.033405, 32.319897, 40.306328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.091331, 32.711895, 40.360939>,  <34.126087, 32.947094, 40.393707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.091331, 32.711895, 40.360939>,  <34.033405, 32.319897, 40.306328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.091331, 32.711895, 40.360939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.562253, 0.195045, -0.803635,
		-0.814187, 0.039612, 0.579250,
		0.144813, 0.979994, 0.136531,
		34.134777, 33.005894, 40.401897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.515026, 32.621174, 39.865356>,  <34.033405, 32.319897, 40.306328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.515026, 32.621174, 39.865356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.727539, 32.949158, 39.950588>,  <33.855049, 33.145947, 40.001728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.727539, 32.949158, 39.950588>,  <33.515026, 32.621174, 39.865356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.727539, 32.949158, 39.950588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320575, 0.427387, -0.845324,
		-0.784198, 0.380801, 0.489922,
		0.531286, 0.819958, 0.213081,
		33.886925, 33.195145, 40.014511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.012016, 33.174454, 39.807522>,  <33.515026, 32.621174, 39.865356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.012016, 33.174454, 39.807522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.379829, 33.330330, 39.787128>,  <33.600517, 33.423855, 39.774891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.379829, 33.330330, 39.787128>,  <33.012016, 33.174454, 39.807522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.379829, 33.330330, 39.787128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252620, 0.486685, -0.836254,
		-0.301068, 0.781843, 0.545967,
		0.919533, 0.389691, -0.050984,
		33.655689, 33.447239, 39.771832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.921570, 33.868229, 39.597816>,  <33.012016, 33.174454, 39.807522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.921570, 33.868229, 39.597816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.300140, 33.765530, 39.519482>,  <33.527283, 33.703911, 39.472481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.300140, 33.765530, 39.519482>,  <32.921570, 33.868229, 39.597816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.300140, 33.765530, 39.519482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088294, 0.377597, -0.921751,
		0.310600, 0.889665, 0.334700,
		0.946431, -0.256744, -0.195833,
		33.584068, 33.688507, 39.460732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.261555, 34.417145, 39.410503>,  <32.921570, 33.868229, 39.597816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.261555, 34.417145, 39.410503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.470394, 34.126770, 39.231426>,  <33.595699, 33.952545, 39.123981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.470394, 34.126770, 39.231426>,  <33.261555, 34.417145, 39.410503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.470394, 34.126770, 39.231426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204495, 0.403049, -0.892039,
		0.828007, 0.557282, 0.061980,
		0.522099, -0.725939, -0.447689,
		33.627022, 33.908989, 39.097118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.785980, 34.740479, 39.015377>,  <33.261555, 34.417145, 39.410503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.785980, 34.740479, 39.015377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.750767, 34.379803, 38.846043>,  <33.729637, 34.163399, 38.744442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.750767, 34.379803, 38.846043>,  <33.785980, 34.740479, 39.015377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.750767, 34.379803, 38.846043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073492, 0.417944, -0.905495,
		0.993402, -0.110830, 0.029472,
		-0.088038, -0.901687, -0.423332,
		33.724354, 34.109295, 38.719044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.445839, 34.570728, 38.525242>,  <33.785980, 34.740479, 39.015377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.445839, 34.570728, 38.525242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.107327, 34.387131, 38.417068>,  <33.904221, 34.276974, 38.352165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.107327, 34.387131, 38.417068>,  <34.445839, 34.570728, 38.525242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.107327, 34.387131, 38.417068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227826, 0.147045, -0.962535,
		0.481564, -0.876186, -0.019871,
		-0.846281, -0.458995, -0.270429,
		33.853443, 34.249432, 38.335941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.621334, 34.060673, 38.114094>,  <34.445839, 34.570728, 38.525242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.621334, 34.060673, 38.114094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.253193, 34.179565, 38.012421>,  <34.032310, 34.250900, 37.951416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.253193, 34.179565, 38.012421>,  <34.621334, 34.060673, 38.114094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.253193, 34.179565, 38.012421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345262, 0.312193, -0.885059,
		-0.183718, -0.902322, -0.389951,
		-0.920349, 0.297236, -0.254183,
		33.977089, 34.268738, 37.936165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.284657, 34.250057, 38.330853>,  <34.621334, 34.060673, 38.114094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.284657, 34.250057, 38.330853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.619221, 34.400131, 38.171024>,  <35.819958, 34.490177, 38.075127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.619221, 34.400131, 38.171024>,  <35.284657, 34.250057, 38.330853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.619221, 34.400131, 38.171024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547741, -0.598620, 0.584494,
		-0.019896, -0.707737, -0.706196,
		0.836411, 0.375184, -0.399567,
		35.870144, 34.512688, 38.051155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.772053, 33.730087, 38.265308>,  <35.284657, 34.250057, 38.330853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.772053, 33.730087, 38.265308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.994568, 34.062443, 38.270584>,  <36.128075, 34.261856, 38.273750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.994568, 34.062443, 38.270584>,  <35.772053, 33.730087, 38.265308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.994568, 34.062443, 38.270584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.679160, -0.463733, 0.568940,
		0.478842, -0.307533, -0.822274,
		0.556283, 0.830888, 0.013191,
		36.161453, 34.311710, 38.274540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.369694, 33.498650, 38.255886>,  <35.772053, 33.730087, 38.265308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.369694, 33.498650, 38.255886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.458691, 33.873192, 38.364506>,  <36.512089, 34.097916, 38.429676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.458691, 33.873192, 38.364506>,  <36.369694, 33.498650, 38.255886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.458691, 33.873192, 38.364506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556355, -0.350668, 0.753327,
		0.800604, -0.016530, -0.598966,
		0.222491, 0.936354, 0.271550,
		36.525436, 34.154099, 38.445972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.113598, 33.596115, 38.142353>,  <36.369694, 33.498650, 38.255886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.113598, 33.596115, 38.142353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.960400, 33.841747, 38.418388>,  <36.868481, 33.989124, 38.584011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.960400, 33.841747, 38.418388>,  <37.113598, 33.596115, 38.142353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.960400, 33.841747, 38.418388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607268, -0.395568, 0.689022,
		0.696090, 0.682962, -0.221408,
		-0.382994, 0.614076, 0.690092,
		36.845501, 34.025970, 38.625416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.691391, 33.862183, 38.480541>,  <37.113598, 33.596115, 38.142353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.691391, 33.862183, 38.480541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.379902, 33.923725, 38.723824>,  <37.193008, 33.960651, 38.869793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.379902, 33.923725, 38.723824>,  <37.691391, 33.862183, 38.480541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.379902, 33.923725, 38.723824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573635, -0.217938, 0.789586,
		0.254036, 0.963759, 0.081455,
		-0.778722, 0.153858, 0.608210,
		37.146286, 33.969883, 38.906288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.933926, 34.255508, 39.007885>,  <37.691391, 33.862183, 38.480541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.933926, 34.255508, 39.007885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.599682, 34.084171, 39.145447>,  <37.399136, 33.981369, 39.227985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.599682, 34.084171, 39.145447>,  <37.933926, 34.255508, 39.007885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.599682, 34.084171, 39.145447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473398, -0.243954, 0.846393,
		-0.278652, 0.870061, 0.406629,
		-0.835612, -0.428346, 0.343907,
		37.348999, 33.955666, 39.248619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.886776, 34.431946, 39.711964>,  <37.933926, 34.255508, 39.007885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.886776, 34.431946, 39.711964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.642757, 34.115959, 39.687283>,  <37.496346, 33.926369, 39.672474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.642757, 34.115959, 39.687283>,  <37.886776, 34.431946, 39.711964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.642757, 34.115959, 39.687283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418513, -0.387360, 0.821461,
		-0.672826, 0.475301, 0.566916,
		-0.610042, -0.789962, -0.061706,
		37.459743, 33.878971, 39.668770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.596043, 34.419483, 40.350784>,  <37.886776, 34.431946, 39.711964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.596043, 34.419483, 40.350784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.534729, 34.052761, 40.203289>,  <37.497940, 33.832726, 40.114792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.534729, 34.052761, 40.203289>,  <37.596043, 34.419483, 40.350784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.534729, 34.052761, 40.203289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289185, -0.398431, 0.870417,
		-0.944921, 0.026786, 0.326199,
		-0.153282, -0.916807, -0.368740,
		37.488743, 33.777718, 40.092667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.311054, 34.065632, 40.925880>,  <37.596043, 34.419483, 40.350784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.311054, 34.065632, 40.925880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.452412, 33.791767, 40.670895>,  <37.537224, 33.627449, 40.517902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.452412, 33.791767, 40.670895>,  <37.311054, 34.065632, 40.925880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.452412, 33.791767, 40.670895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344277, -0.538418, 0.769142,
		-0.869821, -0.491271, 0.045440,
		0.353391, -0.684660, -0.637461,
		37.558430, 33.586369, 40.479656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.103508, 33.424812, 41.200981>,  <37.311054, 34.065632, 40.925880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.103508, 33.424812, 41.200981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.409733, 33.330334, 40.961609>,  <37.593468, 33.273647, 40.817986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.409733, 33.330334, 40.961609>,  <37.103508, 33.424812, 41.200981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.409733, 33.330334, 40.961609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493868, -0.380377, 0.781925,
		-0.412320, -0.894161, -0.174552,
		0.765563, -0.236198, -0.598435,
		37.639400, 33.259472, 40.782078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.253437, 32.744377, 41.312737>,  <37.103508, 33.424812, 41.200981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.253437, 32.744377, 41.312737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.582478, 32.896873, 41.143986>,  <37.779903, 32.988373, 41.042736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.582478, 32.896873, 41.143986>,  <37.253437, 32.744377, 41.312737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.582478, 32.896873, 41.143986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565308, -0.468416, 0.678979,
		0.061244, -0.797019, -0.600841,
		0.822603, 0.381244, -0.421874,
		37.829258, 33.011246, 41.017422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.639210, 32.217976, 41.257950>,  <37.253437, 32.744377, 41.312737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.639210, 32.217976, 41.257950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.873810, 32.541946, 41.260220>,  <38.014572, 32.736328, 41.261581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.873810, 32.541946, 41.260220>,  <37.639210, 32.217976, 41.257950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.873810, 32.541946, 41.260220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566681, -0.415341, 0.711593,
		0.578695, -0.414136, -0.702569,
		0.586502, 0.809928, 0.005672,
		38.049759, 32.784924, 41.261921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.387562, 31.891678, 41.409954>,  <37.639210, 32.217976, 41.257950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.387562, 31.891678, 41.409954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.386932, 32.282387, 41.495663>,  <38.386555, 32.516811, 41.547089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.386932, 32.282387, 41.495663>,  <38.387562, 31.891678, 41.409954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.386932, 32.282387, 41.495663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602455, -0.170094, 0.779818,
		0.798151, 0.130313, -0.588195,
		-0.001572, 0.976774, 0.214269,
		38.386459, 32.575420, 41.559944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.056744, 32.054916, 41.503777>,  <38.387562, 31.891678, 41.409954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.056744, 32.054916, 41.503777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.863880, 32.339527, 41.708229>,  <38.748161, 32.510292, 41.830902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.863880, 32.339527, 41.708229>,  <39.056744, 32.054916, 41.503777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.863880, 32.339527, 41.708229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482362, -0.271432, 0.832858,
		0.731337, 0.648119, -0.212340,
		-0.482155, 0.711524, 0.511136,
		38.719234, 32.552986, 41.861568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.433876, 32.163311, 42.071556>,  <39.056744, 32.054916, 41.503777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.433876, 32.163311, 42.071556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.122173, 32.379959, 42.197670>,  <38.935150, 32.509949, 42.273338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.122173, 32.379959, 42.197670>,  <39.433876, 32.163311, 42.071556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.122173, 32.379959, 42.197670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123084, -0.361015, 0.924402,
		0.614494, 0.759156, 0.214660,
		-0.779261, 0.541618, 0.315281,
		38.888393, 32.542446, 42.292255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.637630, 32.590054, 42.664425>,  <39.433876, 32.163311, 42.071556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.637630, 32.590054, 42.664425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.243992, 32.520123, 42.676994>,  <39.007809, 32.478165, 42.684536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.243992, 32.520123, 42.676994>,  <39.637630, 32.590054, 42.664425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.243992, 32.520123, 42.676994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107337, -0.444354, 0.889398,
		-0.141530, 0.878627, 0.456053,
		-0.984098, -0.174828, 0.031420,
		38.948761, 32.467674, 42.686420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.449768, 32.790787, 43.359688>,  <39.637630, 32.590054, 42.664425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.449768, 32.790787, 43.359688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.150192, 32.547947, 43.253471>,  <38.970448, 32.402241, 43.189743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.150192, 32.547947, 43.253471>,  <39.449768, 32.790787, 43.359688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.150192, 32.547947, 43.253471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054182, -0.455497, 0.888587,
		-0.660417, 0.651112, 0.374035,
		-0.748942, -0.607104, -0.265539,
		38.925510, 32.365814, 43.173809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.917820, 32.770985, 43.862656>,  <39.449768, 32.790787, 43.359688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.917820, 32.770985, 43.862656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.838917, 32.422676, 43.682499>,  <38.791573, 32.213692, 43.574406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.838917, 32.422676, 43.682499>,  <38.917820, 32.770985, 43.862656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.838917, 32.422676, 43.682499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275256, -0.391740, 0.877937,
		-0.940916, 0.297154, -0.162410,
		-0.197260, -0.870769, -0.450388,
		38.779739, 32.161446, 43.547382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.288033, 32.521412, 44.111622>,  <38.917820, 32.770985, 43.862656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.288033, 32.521412, 44.111622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.436485, 32.183346, 43.957760>,  <38.525558, 31.980507, 43.865444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.436485, 32.183346, 43.957760>,  <38.288033, 32.521412, 44.111622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.436485, 32.183346, 43.957760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227974, -0.484491, 0.844569,
		-0.900159, -0.225759, -0.372487,
		0.371136, -0.845163, -0.384652,
		38.547825, 31.929796, 43.842365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.933266, 32.055653, 44.414738>,  <38.288033, 32.521412, 44.111622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.933266, 32.055653, 44.414738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.242065, 31.839962, 44.280121>,  <38.427345, 31.710548, 44.199352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.242065, 31.839962, 44.280121>,  <37.933266, 32.055653, 44.414738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.242065, 31.839962, 44.280121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089194, -0.616125, 0.782582,
		-0.629342, -0.574130, -0.523740,
		0.771993, -0.539226, -0.336544,
		38.473663, 31.678194, 44.179157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.731480, 31.390715, 44.548218>,  <37.933266, 32.055653, 44.414738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.731480, 31.390715, 44.548218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.129910, 31.387894, 44.512943>,  <38.368969, 31.386202, 44.491779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.129910, 31.387894, 44.512943>,  <37.731480, 31.390715, 44.548218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.129910, 31.387894, 44.512943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066399, -0.599074, 0.797935,
		-0.058455, -0.800662, -0.596257,
		0.996079, -0.007052, -0.088182,
		38.428734, 31.385778, 44.486488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.979099, 30.699394, 44.426109>,  <37.731480, 31.390715, 44.548218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.979099, 30.699394, 44.426109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.267120, 30.914764, 44.601212>,  <38.439934, 31.043987, 44.706272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.267120, 30.914764, 44.601212>,  <37.979099, 30.699394, 44.426109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.267120, 30.914764, 44.601212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040092, -0.597505, 0.800862,
		0.692765, -0.594210, -0.408646,
		0.720048, 0.538426, 0.437753,
		38.483135, 31.076292, 44.732536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.431545, 30.178862, 44.636189>,  <37.979099, 30.699394, 44.426109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.431545, 30.178862, 44.636189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.525990, 30.499708, 44.855591>,  <38.582657, 30.692217, 44.987232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.525990, 30.499708, 44.855591>,  <38.431545, 30.178862, 44.636189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.525990, 30.499708, 44.855591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150889, -0.527355, 0.836140,
		0.959940, -0.280185, -0.003484,
		0.236111, 0.802118, 0.548505,
		38.596825, 30.740343, 45.020142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.875599, 29.983402, 45.128288>,  <38.431545, 30.178862, 44.636189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.875599, 29.983402, 45.128288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.768631, 30.336216, 45.283470>,  <38.704453, 30.547903, 45.376579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.768631, 30.336216, 45.283470>,  <38.875599, 29.983402, 45.128288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.768631, 30.336216, 45.283470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043955, -0.391029, 0.919328,
		0.962578, 0.262895, 0.065797,
		-0.267416, 0.882033, 0.387952,
		38.688408, 30.600826, 45.399857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.245476, 30.084734, 45.831501>,  <38.875599, 29.983402, 45.128288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.245476, 30.084734, 45.831501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.962246, 30.366713, 45.847885>,  <38.792309, 30.535900, 45.857716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.962246, 30.366713, 45.847885>,  <39.245476, 30.084734, 45.831501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.962246, 30.366713, 45.847885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195305, -0.251254, 0.948012,
		0.678588, 0.663267, 0.315587,
		-0.708078, 0.704945, 0.040959,
		38.749821, 30.578196, 45.860172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.240887, 30.442102, 46.503883>,  <39.245476, 30.084734, 45.831501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.240887, 30.442102, 46.503883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.868797, 30.547441, 46.401649>,  <38.645542, 30.610645, 46.340309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.868797, 30.547441, 46.401649>,  <39.240887, 30.442102, 46.503883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.868797, 30.547441, 46.401649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280161, -0.059769, 0.958091,
		0.237036, 0.962847, 0.129379,
		-0.930228, 0.263348, -0.255585,
		38.589729, 30.626446, 46.324974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.042896, 31.112320, 46.784889>,  <39.240887, 30.442102, 46.503883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.042896, 31.112320, 46.784889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.752193, 30.841949, 46.735977>,  <38.577774, 30.679728, 46.706631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.752193, 30.841949, 46.735977>,  <39.042896, 31.112320, 46.784889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.752193, 30.841949, 46.735977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322620, 0.178723, 0.929502,
		-0.606421, 0.714969, -0.347955,
		-0.726753, -0.675927, -0.122282,
		38.534168, 30.639172, 46.699291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.549969, 31.457766, 46.895649>,  <39.042896, 31.112320, 46.784889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.549969, 31.457766, 46.895649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.493660, 31.067797, 46.964592>,  <38.459873, 30.833815, 47.005959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.493660, 31.067797, 46.964592>,  <38.549969, 31.457766, 46.895649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.493660, 31.067797, 46.964592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076968, 0.184341, 0.979844,
		-0.987046, 0.124670, -0.100988,
		-0.140773, -0.974924, 0.172357,
		38.451427, 30.775320, 47.016300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.897270, 31.354958, 47.244263>,  <38.549969, 31.457766, 46.895649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.897270, 31.354958, 47.244263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.128086, 31.035793, 47.313965>,  <38.266575, 30.844296, 47.355785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.128086, 31.035793, 47.313965>,  <37.897270, 31.354958, 47.244263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.128086, 31.035793, 47.313965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097700, 0.144385, 0.984686,
		-0.810850, -0.585229, 0.005360,
		0.577041, -0.797910, 0.174251,
		38.301197, 30.796421, 47.366241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.644222, 31.146114, 47.878639>,  <37.897270, 31.354958, 47.244263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.644222, 31.146114, 47.878639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.982136, 30.933661, 47.852596>,  <38.184883, 30.806189, 47.836971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.982136, 30.933661, 47.852596>,  <37.644222, 31.146114, 47.878639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.982136, 30.933661, 47.852596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122005, 0.072714, 0.989862,
		-0.521017, -0.844161, 0.126229,
		0.844782, -0.531136, -0.065107,
		38.235569, 30.774321, 47.833065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.597580, 30.631842, 48.466450>,  <37.644222, 31.146114, 47.878639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.597580, 30.631842, 48.466450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.979126, 30.622757, 48.346695>,  <38.208054, 30.617306, 48.274841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.979126, 30.622757, 48.346695>,  <37.597580, 30.631842, 48.466450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.979126, 30.622757, 48.346695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298731, 0.171729, 0.938759,
		0.030091, -0.984883, 0.170591,
		0.953863, -0.022713, -0.299382,
		38.265285, 30.615944, 48.256882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.009216, 30.282887, 49.056450>,  <37.597580, 30.631842, 48.466450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.009216, 30.282887, 49.056450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.289413, 30.465960, 48.837421>,  <38.457531, 30.575804, 48.706005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.289413, 30.465960, 48.837421>,  <38.009216, 30.282887, 49.056450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.289413, 30.465960, 48.837421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545487, 0.151352, 0.824340,
		0.460162, -0.876139, -0.143639,
		0.700497, 0.457683, -0.547568,
		38.499561, 30.603264, 48.673149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.625492, 29.974541, 49.278614>,  <38.009216, 30.282887, 49.056450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.625492, 29.974541, 49.278614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.724655, 30.319054, 49.101196>,  <38.784153, 30.525763, 48.994743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.724655, 30.319054, 49.101196>,  <38.625492, 29.974541, 49.278614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.724655, 30.319054, 49.101196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565079, 0.243333, 0.788337,
		0.786911, -0.446072, -0.426369,
		0.247905, 0.861283, -0.443547,
		38.799026, 30.577438, 48.968132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.381779, 30.147255, 49.401283>,  <38.625492, 29.974541, 49.278614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.381779, 30.147255, 49.401283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.200176, 30.495138, 49.323830>,  <39.091217, 30.703867, 49.277359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.200176, 30.495138, 49.323830>,  <39.381779, 30.147255, 49.401283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.200176, 30.495138, 49.323830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496380, 0.427354, 0.755629,
		0.739925, 0.246942, -0.625724,
		-0.454002, 0.869706, -0.193633,
		39.063976, 30.756050, 49.265739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.961666, 30.622616, 49.540974>,  <39.381779, 30.147255, 49.401283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.961666, 30.622616, 49.540974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.637352, 30.856735, 49.543762>,  <39.442764, 30.997208, 49.545437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.637352, 30.856735, 49.543762>,  <39.961666, 30.622616, 49.540974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.637352, 30.856735, 49.543762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394805, 0.538035, 0.744747,
		0.432149, 0.606583, -0.667311,
		-0.810787, 0.585299, 0.006971,
		39.394115, 31.032326, 49.545853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.137260, 31.355570, 49.451710>,  <39.961666, 30.622616, 49.540974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.137260, 31.355570, 49.451710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.771671, 31.377874, 49.612480>,  <39.552319, 31.391256, 49.708942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.771671, 31.377874, 49.612480>,  <40.137260, 31.355570, 49.451710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.771671, 31.377874, 49.612480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338634, 0.650549, 0.679789,
		-0.223568, 0.757415, -0.613466,
		-0.913972, 0.055762, 0.401929,
		39.497478, 31.394604, 49.733059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.135372, 31.933857, 49.815807>,  <40.137260, 31.355570, 49.451710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.135372, 31.933857, 49.815807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.780567, 31.824350, 49.964546>,  <39.567684, 31.758646, 50.053787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.780567, 31.824350, 49.964546>,  <40.135372, 31.933857, 49.815807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.780567, 31.824350, 49.964546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174194, 0.547394, 0.818545,
		-0.427636, 0.790829, -0.437854,
		-0.887008, -0.273768, 0.371844,
		39.514465, 31.742220, 50.076099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.494434, 32.430035, 50.326683>,  <40.135372, 31.933857, 49.815807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.494434, 32.430035, 50.326683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.608204, 32.626202, 50.656189>,  <40.676464, 32.743900, 50.853893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.608204, 32.626202, 50.656189>,  <40.494434, 32.430035, 50.326683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.608204, 32.626202, 50.656189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.698415, 0.482634, -0.528470,
		-0.656749, 0.725643, -0.205241,
		0.284424, 0.490416, 0.823769,
		40.693531, 32.773327, 50.903320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.436909, 33.266888, 50.382019>,  <40.494434, 32.430035, 50.326683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.436909, 33.266888, 50.382019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.726566, 33.044403, 50.545109>,  <40.900360, 32.910912, 50.642963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.726566, 33.044403, 50.545109>,  <40.436909, 33.266888, 50.382019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.726566, 33.044403, 50.545109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.648241, 0.347204, -0.677667,
		0.235366, 0.755032, 0.611988,
		0.724145, -0.556216, 0.407723,
		40.943810, 32.877537, 50.667427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.946907, 33.669373, 50.361717>,  <40.436909, 33.266888, 50.382019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.946907, 33.669373, 50.361717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.138748, 33.326126, 50.435051>,  <41.253853, 33.120178, 50.479053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.138748, 33.326126, 50.435051>,  <40.946907, 33.669373, 50.361717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.138748, 33.326126, 50.435051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612893, 0.178069, -0.769840,
		0.627969, 0.481583, 0.611338,
		0.479602, -0.858120, 0.183337,
		41.282627, 33.068691, 50.490051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.651901, 33.886650, 50.397343>,  <40.946907, 33.669373, 50.361717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.651901, 33.886650, 50.397343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.642826, 33.496113, 50.311337>,  <41.637379, 33.261791, 50.259731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.642826, 33.496113, 50.311337>,  <41.651901, 33.886650, 50.397343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.642826, 33.496113, 50.311337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.683255, 0.141864, -0.716265,
		0.729827, -0.163165, 0.663875,
		-0.022690, -0.976346, -0.215020,
		41.636021, 33.203209, 50.246830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.356819, 33.612011, 50.327049>,  <41.651901, 33.886650, 50.397343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.356819, 33.612011, 50.327049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.117912, 33.373188, 50.112839>,  <41.974567, 33.229893, 49.984314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.117912, 33.373188, 50.112839>,  <42.356819, 33.612011, 50.327049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.117912, 33.373188, 50.112839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573924, 0.148249, -0.805378,
		0.560250, -0.788380, 0.254122,
		-0.597270, -0.597059, -0.535527,
		41.938732, 33.194069, 49.952179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.793037, 33.147369, 50.116802>,  <42.356819, 33.612011, 50.327049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.793037, 33.147369, 50.116802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.472118, 33.117813, 49.879868>,  <42.279568, 33.100079, 49.737709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.472118, 33.117813, 49.879868>,  <42.793037, 33.147369, 50.116802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.472118, 33.117813, 49.879868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574215, 0.175559, -0.799660,
		0.163068, -0.981693, -0.098428,
		-0.802300, -0.073880, -0.592331,
		42.231430, 33.095646, 49.702168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.025211, 32.855854, 49.427143>,  <42.793037, 33.147369, 50.116802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.025211, 32.855854, 49.427143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.662903, 33.006767, 49.349953>,  <42.445518, 33.097313, 49.303638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.662903, 33.006767, 49.349953>,  <43.025211, 32.855854, 49.427143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.662903, 33.006767, 49.349953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298883, 0.245944, -0.922053,
		-0.300412, -0.892845, -0.335532,
		-0.905771, 0.377281, -0.192972,
		42.391171, 33.119953, 49.292061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.808674, 32.680035, 48.774605>,  <43.025211, 32.855854, 49.427143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.808674, 32.680035, 48.774605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.567116, 32.990856, 48.845592>,  <42.422180, 33.177349, 48.888187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.567116, 32.990856, 48.845592>,  <42.808674, 32.680035, 48.774605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.567116, 32.990856, 48.845592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033331, 0.197842, -0.979667,
		-0.796365, -0.597533, -0.093577,
		-0.603897, 0.777054, 0.177471,
		42.385948, 33.223972, 48.898834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.321484, 32.606674, 48.234627>,  <42.808674, 32.680035, 48.774605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.321484, 32.606674, 48.234627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.268883, 32.988396, 48.341969>,  <42.237324, 33.217430, 48.406372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.268883, 32.988396, 48.341969>,  <42.321484, 32.606674, 48.234627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.268883, 32.988396, 48.341969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084189, 0.258976, -0.962208,
		-0.987735, -0.149124, 0.046286,
		-0.131502, 0.954303, 0.268354,
		42.229431, 33.274685, 48.422474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.955029, 32.868065, 47.739929>,  <42.321484, 32.606674, 48.234627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.955029, 32.868065, 47.739929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.098480, 33.193432, 47.923119>,  <42.184551, 33.388653, 48.033031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.098480, 33.193432, 47.923119>,  <41.955029, 32.868065, 47.739929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.098480, 33.193432, 47.923119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090694, 0.518650, -0.850163,
		-0.929062, 0.263361, 0.259777,
		0.358633, 0.813414, 0.457973,
		42.206070, 33.437458, 48.060509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.395638, 33.341312, 47.701046>,  <41.955029, 32.868065, 47.739929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.395638, 33.341312, 47.701046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.731922, 33.548965, 47.762623>,  <41.933693, 33.673557, 47.799568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.731922, 33.548965, 47.762623>,  <41.395638, 33.341312, 47.701046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.731922, 33.548965, 47.762623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147891, 0.493637, -0.857001,
		-0.520888, 0.697728, 0.491783,
		0.840716, 0.519132, 0.153943,
		41.984138, 33.704704, 47.808807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.178989, 34.011917, 47.516243>,  <41.395638, 33.341312, 47.701046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.178989, 34.011917, 47.516243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.578804, 34.018082, 47.505783>,  <41.818695, 34.021778, 47.499508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.578804, 34.018082, 47.505783>,  <41.178989, 34.011917, 47.516243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.578804, 34.018082, 47.505783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030351, 0.497253, -0.867074,
		-0.000356, 0.867468, 0.497492,
		0.999539, 0.015408, -0.026151,
		41.878666, 34.022705, 47.497936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.399342, 34.823391, 47.400307>,  <41.178989, 34.011917, 47.516243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.399342, 34.823391, 47.400307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.669529, 34.557175, 47.273312>,  <41.831642, 34.397446, 47.197117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.669529, 34.557175, 47.273312>,  <41.399342, 34.823391, 47.400307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.669529, 34.557175, 47.273312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063576, 0.481514, -0.874129,
		0.734641, 0.570264, 0.367561,
		0.675471, -0.665540, -0.317485,
		41.872169, 34.357513, 47.178066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.729172, 35.229237, 46.874718>,  <41.399342, 34.823391, 47.400307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.729172, 35.229237, 46.874718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.850250, 34.855766, 46.798164>,  <41.922897, 34.631683, 46.752232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.850250, 34.855766, 46.798164>,  <41.729172, 35.229237, 46.874718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.850250, 34.855766, 46.798164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155142, 0.246398, -0.956671,
		0.940376, 0.259886, 0.219436,
		0.302694, -0.933674, -0.191387,
		41.941059, 34.575665, 46.740749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.323059, 35.268841, 46.451748>,  <41.729172, 35.229237, 46.874718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.323059, 35.268841, 46.451748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.162991, 34.908054, 46.386864>,  <42.066948, 34.691582, 46.347935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.162991, 34.908054, 46.386864>,  <42.323059, 35.268841, 46.451748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.162991, 34.908054, 46.386864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062299, 0.203363, -0.977119,
		0.914319, -0.380912, -0.137573,
		-0.400174, -0.901969, -0.162208,
		42.042938, 34.637463, 46.338200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.452850, 35.191929, 45.806213>,  <42.323059, 35.268841, 46.451748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.452850, 35.191929, 45.806213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.205967, 34.879288, 45.842316>,  <42.057835, 34.691704, 45.863976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.205967, 34.879288, 45.842316>,  <42.452850, 35.191929, 45.806213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.205967, 34.879288, 45.842316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290140, 0.119473, -0.949497,
		0.731348, -0.612227, -0.300515,
		-0.617212, -0.781604, 0.090255,
		42.020802, 34.644806, 45.869392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.575188, 34.699688, 45.269630>,  <42.452850, 35.191929, 45.806213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.575188, 34.699688, 45.269630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.198017, 34.634212, 45.385632>,  <41.971714, 34.594929, 45.455231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.198017, 34.634212, 45.385632>,  <42.575188, 34.699688, 45.269630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.198017, 34.634212, 45.385632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309532, 0.109611, -0.944550,
		0.122863, -0.980397, -0.154034,
		-0.942918, -0.163729, 0.289997,
		41.915138, 34.585106, 45.472633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.318439, 34.155270, 44.844292>,  <42.575188, 34.699688, 45.269630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.318439, 34.155270, 44.844292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.964836, 34.297169, 44.966068>,  <41.752674, 34.382309, 45.039135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.964836, 34.297169, 44.966068>,  <42.318439, 34.155270, 44.844292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.964836, 34.297169, 44.966068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312770, 0.035162, -0.949178,
		-0.347424, -0.934300, 0.079871,
		-0.884009, 0.354749, 0.304437,
		41.699635, 34.403595, 45.057400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.821270, 33.658298, 44.480057>,  <42.318439, 34.155270, 44.844292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.821270, 33.658298, 44.480057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.611801, 33.981956, 44.586681>,  <41.486118, 34.176151, 44.650654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.611801, 33.981956, 44.586681>,  <41.821270, 33.658298, 44.480057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.611801, 33.981956, 44.586681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553473, -0.085270, -0.828490,
		-0.647639, -0.581390, 0.492493,
		-0.523671, 0.809144, 0.266559,
		41.454700, 34.224701, 44.666649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.993690, 33.401920, 44.550850>,  <41.821270, 33.658298, 44.480057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.993690, 33.401920, 44.550850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.022591, 33.799084, 44.513081>,  <41.039928, 34.037380, 44.490417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.022591, 33.799084, 44.513081>,  <40.993690, 33.401920, 44.550850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.022591, 33.799084, 44.513081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469824, -0.049632, -0.881364,
		-0.879799, 0.108038, 0.462905,
		0.072246, 0.992907, -0.094426,
		41.044266, 34.096954, 44.484753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.313072, 33.654881, 44.380009>,  <40.993690, 33.401920, 44.550850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.313072, 33.654881, 44.380009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.566700, 33.945808, 44.274960>,  <40.718876, 34.120365, 44.211929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.566700, 33.945808, 44.274960>,  <40.313072, 33.654881, 44.380009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.566700, 33.945808, 44.274960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464965, 0.087232, -0.881021,
		-0.617871, 0.680737, 0.393487,
		0.634068, 0.727315, -0.262621,
		40.756920, 34.164001, 44.196175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.858490, 34.181610, 44.068714>,  <40.313072, 33.654881, 44.380009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.858490, 34.181610, 44.068714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.209225, 34.287956, 43.908478>,  <40.419666, 34.351765, 43.812336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.209225, 34.287956, 43.908478>,  <39.858490, 34.181610, 44.068714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.209225, 34.287956, 43.908478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437451, 0.095461, -0.894161,
		-0.199482, 0.959273, 0.200005,
		0.876837, 0.265861, -0.400592,
		40.472275, 34.367714, 43.788300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.683151, 34.761063, 43.665638>,  <39.858490, 34.181610, 44.068714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.683151, 34.761063, 43.665638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.024750, 34.588337, 43.549553>,  <40.229710, 34.484703, 43.479900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.024750, 34.588337, 43.549553>,  <39.683151, 34.761063, 43.665638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.024750, 34.588337, 43.549553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238590, 0.170653, -0.956009,
		0.462341, 0.885673, 0.042711,
		0.854000, -0.431811, -0.290213,
		40.280949, 34.458794, 43.462490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.743259, 34.981907, 42.944263>,  <39.683151, 34.761063, 43.665638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.743259, 34.981907, 42.944263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.027817, 34.701691, 42.921783>,  <40.198551, 34.533562, 42.908295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.027817, 34.701691, 42.921783>,  <39.743259, 34.981907, 42.944263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.027817, 34.701691, 42.921783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269694, -0.198285, -0.942310,
		0.648983, 0.685513, -0.329991,
		0.711397, -0.700539, -0.056195,
		40.241238, 34.491528, 42.904926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.167370, 35.125881, 42.397686>,  <39.743259, 34.981907, 42.944263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.167370, 35.125881, 42.397686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.193008, 34.732704, 42.466648>,  <40.208389, 34.496799, 42.508026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.193008, 34.732704, 42.466648>,  <40.167370, 35.125881, 42.397686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.193008, 34.732704, 42.466648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208129, -0.182132, -0.960995,
		0.975999, 0.025709, -0.216251,
		0.064093, -0.982938, 0.172410,
		40.212234, 34.437824, 42.518372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.731415, 34.902180, 41.922253>,  <40.167370, 35.125881, 42.397686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.731415, 34.902180, 41.922253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.491703, 34.593533, 42.007545>,  <40.347878, 34.408344, 42.058720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.491703, 34.593533, 42.007545>,  <40.731415, 34.902180, 41.922253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.491703, 34.593533, 42.007545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219228, -0.097992, -0.970740,
		0.769936, -0.628492, -0.110436,
		-0.599281, -0.771619, 0.213231,
		40.311920, 34.362045, 42.071514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.964500, 34.344486, 41.530891>,  <40.731415, 34.902180, 41.922253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.964500, 34.344486, 41.530891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.606510, 34.182247, 41.605206>,  <40.391716, 34.084904, 41.649792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.606510, 34.182247, 41.605206>,  <40.964500, 34.344486, 41.530891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.606510, 34.182247, 41.605206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174189, -0.065678, -0.982520,
		0.410706, -0.911690, -0.011870,
		-0.894974, -0.405594, 0.185781,
		40.338017, 34.060570, 41.660938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.949570, 33.798141, 41.099041>,  <40.964500, 34.344486, 41.530891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.949570, 33.798141, 41.099041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.569420, 33.870979, 41.199936>,  <40.341328, 33.914684, 41.260475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.569420, 33.870979, 41.199936>,  <40.949570, 33.798141, 41.099041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.569420, 33.870979, 41.199936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248340, 0.044306, -0.967659,
		-0.187386, -0.982281, 0.003115,
		-0.950376, 0.182099, 0.252242,
		40.284306, 33.925610, 41.275608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.517147, 33.639046, 40.499935>,  <40.949570, 33.798141, 41.099041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.517147, 33.639046, 40.499935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.264996, 33.868034, 40.709660>,  <40.113705, 34.005428, 40.835495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.264996, 33.868034, 40.709660>,  <40.517147, 33.639046, 40.499935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.264996, 33.868034, 40.709660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400038, 0.339260, -0.851394,
		-0.665278, -0.746442, 0.015150,
		-0.630376, 0.572475, 0.524308,
		40.075882, 34.039776, 40.866951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.916695, 33.509964, 40.302925>,  <40.517147, 33.639046, 40.499935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.916695, 33.509964, 40.302925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.854767, 33.876160, 40.451466>,  <39.817608, 34.095879, 40.540588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.854767, 33.876160, 40.451466>,  <39.916695, 33.509964, 40.302925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.854767, 33.876160, 40.451466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287178, 0.317949, -0.903569,
		-0.945282, -0.246537, 0.213684,
		-0.154823, 0.915493, 0.371352,
		39.808319, 34.150806, 40.562870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.345970, 33.746502, 39.961277>,  <39.916695, 33.509964, 40.302925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.345970, 33.746502, 39.961277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.515278, 34.081409, 40.099739>,  <39.616863, 34.282356, 40.182816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.515278, 34.081409, 40.099739>,  <39.345970, 33.746502, 39.961277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.515278, 34.081409, 40.099739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246839, 0.474184, -0.845116,
		-0.871732, 0.272265, 0.407377,
		0.423267, 0.837270, 0.346156,
		39.642258, 34.332592, 40.203587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.905357, 34.229626, 39.731518>,  <39.345970, 33.746502, 39.961277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.905357, 34.229626, 39.731518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.248436, 34.427593, 39.787254>,  <39.454281, 34.546375, 39.820694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.248436, 34.427593, 39.787254>,  <38.905357, 34.229626, 39.731518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.248436, 34.427593, 39.787254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187896, 0.553964, -0.811061,
		-0.478601, 0.669459, 0.568124,
		0.857692, 0.494923, 0.139338,
		39.505745, 34.576069, 39.829056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.690178, 34.873245, 39.597107>,  <38.905357, 34.229626, 39.731518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.690178, 34.873245, 39.597107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.085278, 34.873463, 39.534698>,  <39.322338, 34.873592, 39.497253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.085278, 34.873463, 39.534698>,  <38.690178, 34.873245, 39.597107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.085278, 34.873463, 39.534698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133459, 0.520938, -0.843097,
		0.080815, 0.853594, 0.514632,
		0.987754, 0.000547, -0.156019,
		39.381603, 34.873627, 39.487892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.891613, 35.546638, 39.398464>,  <38.690178, 34.873245, 39.597107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.891613, 35.546638, 39.398464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.187214, 35.311035, 39.267658>,  <39.364574, 35.169674, 39.189175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.187214, 35.311035, 39.267658>,  <38.891613, 35.546638, 39.398464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.187214, 35.311035, 39.267658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053877, 0.535511, -0.842808,
		0.671543, 0.605221, 0.427479,
		0.739005, -0.589012, -0.327012,
		39.408916, 35.134331, 39.169556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.433151, 36.041576, 39.075016>,  <38.891613, 35.546638, 39.398464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.433151, 36.041576, 39.075016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.506336, 35.676617, 38.928566>,  <39.550247, 35.457642, 38.840694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.506336, 35.676617, 38.928566>,  <39.433151, 36.041576, 39.075016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.506336, 35.676617, 38.928566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221406, 0.401088, -0.888880,
		0.957864, 0.081571, 0.275396,
		0.182965, -0.912400, -0.366128,
		39.561226, 35.402897, 38.818729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.052197, 36.155903, 38.697945>,  <39.433151, 36.041576, 39.075016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.052197, 36.155903, 38.697945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.908180, 35.808033, 38.562866>,  <39.821770, 35.599312, 38.481819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.908180, 35.808033, 38.562866>,  <40.052197, 36.155903, 38.697945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.908180, 35.808033, 38.562866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387828, 0.189686, -0.902003,
		0.848505, -0.455722, 0.268990,
		-0.360039, -0.869676, -0.337691,
		39.800167, 35.547131, 38.461559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.636448, 35.858097, 38.415791>,  <40.052197, 36.155903, 38.697945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.636448, 35.858097, 38.415791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.310566, 35.690235, 38.255718>,  <40.115036, 35.589520, 38.159676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.310566, 35.690235, 38.255718>,  <40.636448, 35.858097, 38.415791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.310566, 35.690235, 38.255718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391312, 0.111416, -0.913489,
		0.427936, -0.900820, 0.073445,
		-0.814706, -0.419654, -0.400180,
		40.066154, 35.564339, 38.135666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.955963, 35.423306, 37.906094>,  <40.636448, 35.858097, 38.415791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.955963, 35.423306, 37.906094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.573608, 35.456413, 37.793358>,  <40.344196, 35.476276, 37.725716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.573608, 35.456413, 37.793358>,  <40.955963, 35.423306, 37.906094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.573608, 35.456413, 37.793358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285977, 0.043023, -0.957270,
		-0.067106, -0.995640, -0.064795,
		-0.955883, 0.082768, -0.281843,
		40.286842, 35.481243, 37.708805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.835079, 34.862583, 37.536304>,  <40.955963, 35.423306, 37.906094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.835079, 34.862583, 37.536304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.556362, 35.127560, 37.426281>,  <40.389133, 35.286545, 37.360268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.556362, 35.127560, 37.426281>,  <40.835079, 34.862583, 37.536304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.556362, 35.127560, 37.426281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286683, -0.094308, -0.953372,
		-0.657494, -0.743153, -0.124198,
		-0.696789, 0.662442, -0.275057,
		40.347324, 35.326294, 37.343765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.671196, 34.701839, 36.908642>,  <40.835079, 34.862583, 37.536304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.671196, 34.701839, 36.908642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.552307, 35.079491, 36.965618>,  <40.480976, 35.306080, 36.999802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.552307, 35.079491, 36.965618>,  <40.671196, 34.701839, 36.908642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.552307, 35.079491, 36.965618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373867, 0.252346, -0.892494,
		-0.878569, -0.212014, -0.427979,
		-0.297220, 0.944125, 0.142438,
		40.463142, 35.362728, 37.008350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.092861, 35.117294, 36.476364>,  <40.671196, 34.701839, 36.908642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.092861, 35.117294, 36.476364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.380062, 35.358681, 36.615108>,  <40.552383, 35.503513, 36.698353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.380062, 35.358681, 36.615108>,  <40.092861, 35.117294, 36.476364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.380062, 35.358681, 36.615108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349220, 0.118746, -0.929486,
		-0.602099, 0.788499, -0.125483,
		0.717999, 0.603464, 0.346857,
		40.595463, 35.539719, 36.719166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.207516, 35.794849, 35.997673>,  <40.092861, 35.117294, 36.476364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.207516, 35.794849, 35.997673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.528419, 35.653133, 36.189869>,  <40.720963, 35.568104, 36.305187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.528419, 35.653133, 36.189869>,  <40.207516, 35.794849, 35.997673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.528419, 35.653133, 36.189869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500503, -0.039542, -0.864831,
		0.325397, 0.934301, 0.145599,
		0.802255, -0.354286, 0.480487,
		40.769096, 35.546848, 36.334015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.782993, 36.098587, 35.671310>,  <40.207516, 35.794849, 35.997673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.782993, 36.098587, 35.671310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.970608, 35.824459, 35.894142>,  <41.083176, 35.659981, 36.027843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.970608, 35.824459, 35.894142>,  <40.782993, 36.098587, 35.671310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.970608, 35.824459, 35.894142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.727303, -0.058118, -0.683851,
		0.501033, 0.725920, 0.471175,
		0.469038, -0.685319, 0.557083,
		41.111320, 35.618862, 36.061268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.505688, 36.384010, 35.881218>,  <40.782993, 36.098587, 35.671310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.505688, 36.384010, 35.881218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.438148, 35.994965, 35.817326>,  <41.397625, 35.761536, 35.778992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.438148, 35.994965, 35.817326>,  <41.505688, 36.384010, 35.881218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.438148, 35.994965, 35.817326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.658234, 0.009357, -0.752755,
		0.733634, -0.232239, 0.638628,
		-0.168844, -0.972614, -0.159732,
		41.387497, 35.703182, 35.769405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.048954, 36.012638, 35.805164>,  <41.505688, 36.384010, 35.881218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.048954, 36.012638, 35.805164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.757874, 35.853432, 35.581722>,  <41.583225, 35.757908, 35.447659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.757874, 35.853432, 35.581722>,  <42.048954, 36.012638, 35.805164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.757874, 35.853432, 35.581722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451122, 0.335736, -0.826904,
		0.516666, -0.853735, -0.064760,
		-0.727699, -0.398018, -0.558601,
		41.539562, 35.734028, 35.414143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.933826, 36.071537, 36.599113>,  <42.048954, 36.012638, 35.805164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.933826, 36.071537, 36.599113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.797928, 35.834091, 36.307308>,  <41.716389, 35.691624, 36.132225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.797928, 35.834091, 36.307308>,  <41.933826, 36.071537, 36.599113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.797928, 35.834091, 36.307308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.928856, -0.333540, -0.161179,
		-0.147645, -0.732377, 0.664699,
		-0.339748, -0.593612, -0.729518,
		41.696003, 35.656006, 36.088451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.411327, 35.558403, 36.551544>,  <41.933826, 36.071537, 36.599113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.411327, 35.558403, 36.551544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.204082, 35.495518, 36.215248>,  <42.079735, 35.457787, 36.013470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.204082, 35.495518, 36.215248>,  <42.411327, 35.558403, 36.551544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.204082, 35.495518, 36.215248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.799836, -0.437306, -0.411127,
		-0.303025, -0.885464, 0.352320,
		-0.518110, -0.157216, -0.840741,
		42.048649, 35.448353, 35.963024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.092522, 35.629375, 36.325729>,  <42.411327, 35.558403, 36.551544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.092522, 35.629375, 36.325729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.234104, 35.707371, 35.959846>,  <43.319054, 35.754169, 35.740314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.234104, 35.707371, 35.959846>,  <43.092522, 35.629375, 36.325729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.234104, 35.707371, 35.959846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267630, -0.916011, -0.298828,
		-0.896153, 0.350576, -0.272041,
		0.353954, 0.194989, -0.914711,
		43.340290, 35.765869, 35.685432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.629570, 35.411728, 35.876957>,  <43.092522, 35.629375, 36.325729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.629570, 35.411728, 35.876957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.988125, 35.429016, 35.700497>,  <43.203259, 35.439388, 35.594620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.988125, 35.429016, 35.700497>,  <42.629570, 35.411728, 35.876957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.988125, 35.429016, 35.700497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038307, -0.983957, -0.174247,
		-0.441609, 0.173093, -0.880352,
		0.896389, 0.043225, -0.441155,
		43.257042, 35.441982, 35.568150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.580097, 35.029705, 35.274696>,  <42.629570, 35.411728, 35.876957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.580097, 35.029705, 35.274696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.972614, 35.055935, 35.347095>,  <43.208126, 35.071671, 35.390533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.972614, 35.055935, 35.347095>,  <42.580097, 35.029705, 35.274696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.972614, 35.055935, 35.347095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079451, -0.994341, -0.070524,
		0.175350, 0.083585, -0.980952,
		0.981295, 0.065571, 0.180999,
		43.267002, 35.075607, 35.401394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.959095, 34.608734, 34.764427>,  <42.580097, 35.029705, 35.274696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.959095, 34.608734, 34.764427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.232624, 34.636028, 35.055008>,  <43.396740, 34.652405, 35.229355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.232624, 34.636028, 35.055008>,  <42.959095, 34.608734, 34.764427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.232624, 34.636028, 35.055008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199368, -0.975205, -0.096062,
		0.701885, 0.210520, -0.680469,
		0.683820, 0.068240, 0.726453,
		43.437771, 34.656502, 35.272945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.381851, 34.164787, 34.557213>,  <42.959095, 34.608734, 34.764427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.381851, 34.164787, 34.557213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.492912, 34.212215, 34.938549>,  <43.559547, 34.240673, 35.167351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.492912, 34.212215, 34.938549>,  <43.381851, 34.164787, 34.557213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.492912, 34.212215, 34.938549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299290, -0.953644, 0.031445,
		0.912871, 0.276594, -0.300270,
		0.277653, 0.118573, 0.953336,
		43.576210, 34.247787, 35.224548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.970715, 33.848255, 34.594696>,  <43.381851, 34.164787, 34.557213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.970715, 33.848255, 34.594696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.873028, 33.892143, 34.980095>,  <43.814415, 33.918476, 35.211334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.873028, 33.892143, 34.980095>,  <43.970715, 33.848255, 34.594696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.873028, 33.892143, 34.980095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355804, -0.914144, 0.194281,
		0.902089, 0.390261, 0.184208,
		-0.244213, 0.109717, 0.963495,
		43.799763, 33.925056, 35.269142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.546085, 33.558956, 34.980274>,  <43.970715, 33.848255, 34.594696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.546085, 33.558956, 34.980274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.206554, 33.555313, 35.191711>,  <44.002834, 33.553127, 35.318573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.206554, 33.555313, 35.191711>,  <44.546085, 33.558956, 34.980274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.206554, 33.555313, 35.191711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162473, -0.955956, 0.244441,
		0.503085, 0.293370, 0.812920,
		-0.848827, -0.009103, 0.528591,
		43.951904, 33.552582, 35.350288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.688629, 33.214252, 35.596382>,  <44.546085, 33.558956, 34.980274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.688629, 33.214252, 35.596382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.290974, 33.210445, 35.553310>,  <44.052380, 33.208160, 35.527466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.290974, 33.210445, 35.553310>,  <44.688629, 33.214252, 35.596382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.290974, 33.210445, 35.553310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027770, -0.985165, -0.169346,
		-0.104471, -0.171344, 0.979657,
		-0.994140, -0.009513, -0.107680,
		43.992733, 33.207592, 35.521008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.454624, 32.633492, 35.867451>,  <44.688629, 33.214252, 35.596382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.454624, 32.633492, 35.867451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.121212, 32.723076, 35.665432>,  <43.921165, 32.776829, 35.544220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.121212, 32.723076, 35.665432>,  <44.454624, 32.633492, 35.867451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.121212, 32.723076, 35.665432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098159, -0.959638, -0.263553,
		-0.543689, -0.170104, 0.821868,
		-0.833527, 0.223965, -0.505047,
		43.871155, 32.790264, 35.513916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.913994, 32.244381, 36.103130>,  <44.454624, 32.633492, 35.867451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.913994, 32.244381, 36.103130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.774445, 32.320202, 35.736012>,  <43.690716, 32.365696, 35.515739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.774445, 32.320202, 35.736012>,  <43.913994, 32.244381, 36.103130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.774445, 32.320202, 35.736012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011665, -0.980133, -0.197997,
		-0.937097, -0.058370, 0.344154,
		-0.348874, 0.189557, -0.917799,
		43.669781, 32.377068, 35.460670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.147606, 31.807707, 36.016396>,  <43.913994, 32.244381, 36.103130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.147606, 31.807707, 36.016396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.317947, 31.897959, 35.665913>,  <43.420151, 31.952110, 35.455624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.317947, 31.897959, 35.665913>,  <43.147606, 31.807707, 36.016396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.317947, 31.897959, 35.665913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185728, -0.925987, -0.328716,
		-0.885525, 0.302721, -0.352428,
		0.425853, 0.225630, -0.876208,
		43.445702, 31.965649, 35.403049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.840065, 31.388117, 35.485798>,  <43.147606, 31.807707, 36.016396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.840065, 31.388117, 35.485798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.169003, 31.486820, 35.280716>,  <43.366364, 31.546041, 35.157669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.169003, 31.486820, 35.280716>,  <42.840065, 31.388117, 35.485798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.169003, 31.486820, 35.280716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045819, -0.869426, -0.491935,
		-0.567145, 0.428030, -0.703659,
		0.822342, 0.246758, -0.512703,
		43.415707, 31.560848, 35.126904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.732735, 31.162542, 34.860241>,  <42.840065, 31.388117, 35.485798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.732735, 31.162542, 34.860241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.127804, 31.212856, 34.897503>,  <43.364845, 31.243044, 34.919861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.127804, 31.212856, 34.897503>,  <42.732735, 31.162542, 34.860241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.127804, 31.212856, 34.897503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155625, -0.852834, -0.498453,
		0.016751, 0.506806, -0.861897,
		0.987674, 0.125784, 0.093158,
		43.424107, 31.250591, 34.925449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.069237, 31.147146, 34.185661>,  <42.732735, 31.162542, 34.860241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.069237, 31.147146, 34.185661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.376083, 31.090254, 34.435879>,  <43.560192, 31.056118, 34.586010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.376083, 31.090254, 34.435879>,  <43.069237, 31.147146, 34.185661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.376083, 31.090254, 34.435879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193668, -0.878268, -0.437192,
		0.611581, 0.456524, -0.646184,
		0.767112, -0.142233, 0.625547,
		43.606216, 31.047585, 34.623543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.459980, 30.834066, 33.748653>,  <43.069237, 31.147146, 34.185661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.459980, 30.834066, 33.748653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.591106, 30.750008, 34.117081>,  <43.669781, 30.699572, 34.338139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.591106, 30.750008, 34.117081>,  <43.459980, 30.834066, 33.748653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.591106, 30.750008, 34.117081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360905, -0.873147, -0.327662,
		0.873089, 0.439832, -0.210388,
		0.327816, -0.210148, 0.921072,
		43.689453, 30.686964, 34.393402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.261639, 30.761238, 33.697338>,  <43.459980, 30.834066, 33.748653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.261639, 30.761238, 33.697338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.156033, 30.548582, 34.019245>,  <44.092670, 30.420988, 34.212391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.156033, 30.548582, 34.019245>,  <44.261639, 30.761238, 33.697338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.156033, 30.548582, 34.019245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.660507, -0.707687, -0.250819,
		0.702871, 0.465336, 0.537992,
		-0.264015, -0.531641, 0.804770,
		44.076828, 30.389090, 34.260677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.803307, 30.321596, 33.716335>,  <44.261639, 30.761238, 33.697338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.803307, 30.321596, 33.716335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.533249, 30.153530, 33.958870>,  <44.371216, 30.052691, 34.104389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.533249, 30.153530, 33.958870>,  <44.803307, 30.321596, 33.716335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.533249, 30.153530, 33.958870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441469, -0.888636, -0.124222,
		0.591004, 0.183810, 0.785448,
		-0.675144, -0.420167, 0.606334,
		44.330708, 30.027481, 34.140770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.209225, 29.928658, 34.292004>,  <44.803307, 30.321596, 33.716335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.209225, 29.928658, 34.292004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.839527, 29.781881, 34.249809>,  <44.617710, 29.693815, 34.224491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.839527, 29.781881, 34.249809>,  <45.209225, 29.928658, 34.292004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.839527, 29.781881, 34.249809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373347, -0.926420, -0.048557,
		-0.079906, -0.084261, 0.993235,
		-0.924244, -0.366941, -0.105485,
		44.562256, 29.671799, 34.218163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.181114, 29.280693, 34.639259>,  <45.209225, 29.928658, 34.292004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.181114, 29.280693, 34.639259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.856457, 29.266649, 34.406021>,  <44.661663, 29.258223, 34.266079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.856457, 29.266649, 34.406021>,  <45.181114, 29.280693, 34.639259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.856457, 29.266649, 34.406021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110265, -0.989456, -0.093906,
		-0.573648, -0.140513, 0.806960,
		-0.811646, -0.035110, -0.583093,
		44.612965, 29.256117, 34.231094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.708378, 28.673807, 34.868214>,  <45.181114, 29.280693, 34.639259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.708378, 28.673807, 34.868214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.602760, 28.784353, 34.498585>,  <44.539391, 28.850681, 34.276810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.602760, 28.784353, 34.498585>,  <44.708378, 28.673807, 34.868214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.602760, 28.784353, 34.498585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027948, -0.955476, -0.293744,
		-0.964106, -0.103387, 0.244561,
		-0.264041, 0.276365, -0.924069,
		44.523548, 28.867262, 34.221363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.173832, 28.262371, 34.636272>,  <44.708378, 28.673807, 34.868214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.173832, 28.262371, 34.636272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.290005, 28.401525, 34.279705>,  <44.359707, 28.485018, 34.065765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.290005, 28.401525, 34.279705>,  <44.173832, 28.262371, 34.636272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.290005, 28.401525, 34.279705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012450, -0.932866, -0.360007,
		-0.956814, 0.093459, -0.275266,
		0.290432, 0.347887, -0.891416,
		44.377136, 28.505892, 34.012280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.807690, 27.986509, 34.152397>,  <44.173832, 28.262371, 34.636272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.807690, 27.986509, 34.152397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.156013, 28.088430, 33.984222>,  <44.365009, 28.149582, 33.883320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.156013, 28.088430, 33.984222>,  <43.807690, 27.986509, 34.152397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.156013, 28.088430, 33.984222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114741, -0.936924, -0.330164,
		-0.478040, 0.239270, -0.845120,
		0.870811, 0.254802, -0.420433,
		44.417255, 28.164871, 33.858093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.928555, 27.654360, 33.464584>,  <43.807690, 27.986509, 34.152397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.928555, 27.654360, 33.464584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.284893, 27.741940, 33.623806>,  <44.498695, 27.794487, 33.719341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.284893, 27.741940, 33.623806>,  <43.928555, 27.654360, 33.464584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.284893, 27.741940, 33.623806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300588, -0.941060, -0.155092,
		0.340638, 0.257815, -0.904156,
		0.890849, 0.218948, 0.398057,
		44.552147, 27.807625, 33.743221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.002869, 27.593065, 32.674755>,  <43.928555, 27.654360, 33.464584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.002869, 27.593065, 32.674755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.636715, 27.432940, 32.691784>,  <43.417023, 27.336864, 32.702000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.636715, 27.432940, 32.691784>,  <44.002869, 27.593065, 32.674755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.636715, 27.432940, 32.691784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077896, 0.072385, -0.994330,
		0.394964, -0.913514, -0.097443,
		-0.915388, -0.400315, 0.042570,
		43.362099, 27.312845, 32.704556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.133419, 26.866329, 32.355858>,  <44.002869, 27.593065, 32.674755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.133419, 26.866329, 32.355858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.862637, 27.027189, 32.602432>,  <43.700165, 27.123705, 32.750378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.862637, 27.027189, 32.602432>,  <44.133419, 26.866329, 32.355858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.862637, 27.027189, 32.602432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.647006, 0.074110, -0.758875,
		-0.350867, -0.912569, 0.210026,
		-0.676960, 0.402152, 0.616440,
		43.659550, 27.147835, 32.787365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.834351, 27.113073, 32.475479>,  <44.133419, 26.866329, 32.355858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.834351, 27.113073, 32.475479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.970016, 27.465988, 32.344917>,  <45.051418, 27.677736, 32.266582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.970016, 27.465988, 32.344917>,  <44.834351, 27.113073, 32.475479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.970016, 27.465988, 32.344917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.708454, -0.467833, -0.528418,
		-0.618917, -0.052018, -0.783732,
		0.339168, 0.882285, -0.326401,
		45.071766, 27.730673, 32.246998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.983986, 27.095310, 31.694250>,  <44.834351, 27.113073, 32.475479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.983986, 27.095310, 31.694250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.194782, 27.356668, 31.911636>,  <45.321262, 27.513483, 32.042068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.194782, 27.356668, 31.911636>,  <44.983986, 27.095310, 31.694250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.194782, 27.356668, 31.911636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.841907, -0.488698, -0.228840,
		0.116067, 0.578143, -0.807638,
		0.526993, 0.653395, 0.543464,
		45.352879, 27.552687, 32.074677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.417969, 27.522446, 31.281536>,  <44.983986, 27.095310, 31.694250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.417969, 27.522446, 31.281536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.588634, 27.464863, 31.638687>,  <45.691036, 27.430313, 31.852978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.588634, 27.464863, 31.638687>,  <45.417969, 27.522446, 31.281536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.588634, 27.464863, 31.638687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.850699, -0.271269, -0.450249,
		0.307025, 0.951678, 0.006721,
		0.426669, -0.143955, 0.892878,
		45.716637, 27.421677, 31.906551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.980297, 27.900534, 31.447695>,  <45.417969, 27.522446, 31.281536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.980297, 27.900534, 31.447695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.008671, 27.560535, 31.656492>,  <46.025696, 27.356537, 31.781771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.008671, 27.560535, 31.656492>,  <45.980297, 27.900534, 31.447695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.008671, 27.560535, 31.656492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.810276, -0.256097, -0.527131,
		0.581740, 0.460351, 0.670564,
		0.070935, -0.849995, 0.521993,
		46.029953, 27.305536, 31.813089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.649345, 27.696665, 31.717308>,  <45.980297, 27.900534, 31.447695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.649345, 27.696665, 31.717308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.463814, 27.357922, 31.613241>,  <46.352493, 27.154675, 31.550800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.463814, 27.357922, 31.613241>,  <46.649345, 27.696665, 31.717308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.463814, 27.357922, 31.613241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.830984, -0.314079, -0.459152,
		0.307124, -0.429166, 0.849407,
		-0.463833, -0.846860, -0.260169,
		46.324665, 27.103865, 31.535191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.101006, 27.626202, 31.116215>,  <46.649345, 27.696665, 31.717308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.101006, 27.626202, 31.116215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.948696, 27.825703, 30.804764>,  <46.857311, 27.945404, 30.617893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.948696, 27.825703, 30.804764>,  <47.101006, 27.626202, 31.116215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.948696, 27.825703, 30.804764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169448, 0.865437, 0.471494,
		0.909010, 0.047596, -0.414048,
		-0.380773, 0.498752, -0.778626,
		46.834465, 27.975328, 30.571177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.637276, 28.110323, 30.790146>,  <47.101006, 27.626202, 31.116215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.637276, 28.110323, 30.790146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.256699, 28.231527, 30.768450>,  <47.028351, 28.304251, 30.755432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.256699, 28.231527, 30.768450>,  <47.637276, 28.110323, 30.790146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.256699, 28.231527, 30.768450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274456, 0.914815, 0.296289,
		0.139401, 0.267015, -0.953557,
		-0.951442, 0.303012, -0.054242,
		46.971268, 28.322432, 30.752176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.739876, 28.837404, 30.585283>,  <47.637276, 28.110323, 30.790146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.739876, 28.837404, 30.585283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.358597, 28.819620, 30.704912>,  <47.129829, 28.808950, 30.776690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.358597, 28.819620, 30.704912>,  <47.739876, 28.837404, 30.585283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.358597, 28.819620, 30.704912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090171, 0.902324, 0.421523,
		-0.288602, 0.428761, -0.856080,
		-0.953194, -0.044458, 0.299074,
		47.072639, 28.806282, 30.794634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.351662, 29.453934, 30.295906>,  <47.739876, 28.837404, 30.585283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.351662, 29.453934, 30.295906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.173435, 29.332148, 30.632660>,  <47.066498, 29.259075, 30.834713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.173435, 29.332148, 30.632660>,  <47.351662, 29.453934, 30.295906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.173435, 29.332148, 30.632660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006070, 0.941398, 0.337242,
		-0.895227, 0.145155, -0.421305,
		-0.445568, -0.304466, 0.841884,
		47.039764, 29.240808, 30.885225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.718548, 29.877230, 30.303875>,  <47.351662, 29.453934, 30.295906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.718548, 29.877230, 30.303875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.807983, 29.738522, 30.668240>,  <46.861645, 29.655296, 30.886858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.807983, 29.738522, 30.668240>,  <46.718548, 29.877230, 30.303875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.807983, 29.738522, 30.668240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006442, 0.934025, 0.357149,
		-0.974662, -0.085722, 0.206603,
		0.223588, -0.346768, 0.910912,
		46.875061, 29.634491, 30.941513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.222622, 30.254475, 30.732000>,  <46.718548, 29.877230, 30.303875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.222622, 30.254475, 30.732000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.457985, 30.097118, 31.014565>,  <46.599205, 30.002705, 31.184103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.457985, 30.097118, 31.014565>,  <46.222622, 30.254475, 30.732000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.457985, 30.097118, 31.014565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027103, 0.882768, 0.469027,
		-0.808107, -0.256835, 0.530093,
		0.588412, -0.393391, 0.706410,
		46.634510, 29.979101, 31.226488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.888977, 30.472578, 31.347683>,  <46.222622, 30.254475, 30.732000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.888977, 30.472578, 31.347683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.276695, 30.385603, 31.393633>,  <46.509327, 30.333418, 31.421202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.276695, 30.385603, 31.393633>,  <45.888977, 30.472578, 31.347683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.276695, 30.385603, 31.393633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131619, 0.853288, 0.504556,
		-0.207730, -0.473942, 0.855703,
		0.969291, -0.217438, 0.114873,
		46.567482, 30.320372, 31.428095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.976978, 30.719053, 31.914734>,  <45.888977, 30.472578, 31.347683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.976978, 30.719053, 31.914734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.352695, 30.687363, 31.781195>,  <46.578125, 30.668348, 31.701071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.352695, 30.687363, 31.781195>,  <45.976978, 30.719053, 31.914734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.352695, 30.687363, 31.781195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232410, 0.862693, 0.449161,
		0.252423, -0.499483, 0.828733,
		0.939291, -0.079227, -0.333849,
		46.634483, 30.663595, 31.681040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.455147, 30.818258, 32.534420>,  <45.976978, 30.719053, 31.914734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.455147, 30.818258, 32.534420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.659031, 30.904602, 32.201290>,  <46.781361, 30.956409, 32.001411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.659031, 30.904602, 32.201290>,  <46.455147, 30.818258, 32.534420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.659031, 30.904602, 32.201290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177327, 0.920869, 0.347210,
		0.841873, -0.324660, 0.431099,
		0.509711, 0.215861, -0.832826,
		46.811943, 30.969360, 31.951443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.055763, 31.111385, 32.784798>,  <46.455147, 30.818258, 32.534420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.055763, 31.111385, 32.784798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.029327, 31.247396, 32.409561>,  <47.013466, 31.329002, 32.184418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.029327, 31.247396, 32.409561>,  <47.055763, 31.111385, 32.784798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.029327, 31.247396, 32.409561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092072, 0.934057, 0.345052,
		0.993557, 0.109175, -0.030420,
		-0.066085, 0.340028, -0.938091,
		47.009502, 31.349405, 32.128136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.500828, 31.690639, 32.637154>,  <47.055763, 31.111385, 32.784798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.500828, 31.690639, 32.637154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.243412, 31.742773, 32.335461>,  <47.088963, 31.774054, 32.154446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.243412, 31.742773, 32.335461>,  <47.500828, 31.690639, 32.637154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.243412, 31.742773, 32.335461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085360, 0.967028, 0.239937,
		0.760640, 0.218790, -0.611194,
		-0.643537, 0.130334, -0.754236,
		47.050350, 31.781874, 32.109188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.692577, 32.324047, 32.301846>,  <47.500828, 31.690639, 32.637154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.692577, 32.324047, 32.301846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.314709, 32.264938, 32.184704>,  <47.087990, 32.229473, 32.114418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.314709, 32.264938, 32.184704>,  <47.692577, 32.324047, 32.301846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.314709, 32.264938, 32.184704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215186, 0.953004, 0.213258,
		0.247578, 0.264476, -0.932072,
		-0.944669, -0.147771, -0.292855,
		47.031307, 32.220608, 32.096848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.496353, 32.824692, 31.939516>,  <47.692577, 32.324047, 32.301846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.496353, 32.824692, 31.939516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.144360, 32.686001, 32.069382>,  <46.933163, 32.602787, 32.147301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.144360, 32.686001, 32.069382>,  <47.496353, 32.824692, 31.939516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.144360, 32.686001, 32.069382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214823, 0.900112, 0.379010,
		-0.423647, 0.263778, -0.866570,
		-0.879986, -0.346726, 0.324664,
		46.880363, 32.581982, 32.166782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.096684, 33.348427, 31.773006>,  <47.496353, 32.824692, 31.939516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.096684, 33.348427, 31.773006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.888649, 33.135765, 32.040394>,  <46.763828, 33.008167, 32.200829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.888649, 33.135765, 32.040394>,  <47.096684, 33.348427, 31.773006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.888649, 33.135765, 32.040394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394759, 0.843664, 0.363865,
		-0.757416, -0.074644, -0.648652,
		-0.520084, -0.531658, 0.668470,
		46.732624, 32.976269, 32.240936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.511692, 33.768505, 31.829037>,  <47.096684, 33.348427, 31.773006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.511692, 33.768505, 31.829037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.503437, 33.531643, 32.151260>,  <46.498482, 33.389526, 32.344593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.503437, 33.531643, 32.151260>,  <46.511692, 33.768505, 31.829037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.503437, 33.531643, 32.151260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476760, 0.714051, 0.512671,
		-0.878792, -0.373476, -0.297054,
		-0.020641, -0.592154, 0.805561,
		46.497246, 33.353996, 32.392929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.790382, 33.848625, 32.133221>,  <46.511692, 33.768505, 31.829037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.790382, 33.848625, 32.133221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.028801, 33.689041, 32.411949>,  <46.171852, 33.593292, 32.579185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.028801, 33.689041, 32.411949>,  <45.790382, 33.848625, 32.133221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.028801, 33.689041, 32.411949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431499, 0.572715, 0.696998,
		-0.677152, -0.716123, 0.169217,
		0.596049, -0.398956, 0.696821,
		46.207615, 33.569355, 32.620995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.421398, 33.481724, 32.638847>,  <45.790382, 33.848625, 32.133221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.421398, 33.481724, 32.638847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.769608, 33.580708, 32.809006>,  <45.978531, 33.640099, 32.911098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.769608, 33.580708, 32.809006>,  <45.421398, 33.481724, 32.638847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.769608, 33.580708, 32.809006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489874, 0.518413, 0.700908,
		-0.047083, -0.818543, 0.572513,
		0.870521, 0.247458, 0.425391,
		46.030766, 33.654945, 32.936623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.298332, 33.368114, 33.372578>,  <45.421398, 33.481724, 32.638847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.298332, 33.368114, 33.372578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.618793, 33.603886, 33.331146>,  <45.811069, 33.745346, 33.306286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.618793, 33.603886, 33.331146>,  <45.298332, 33.368114, 33.372578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.618793, 33.603886, 33.331146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314992, 0.562478, 0.764459,
		0.508848, -0.579827, 0.636297,
		0.801157, 0.589423, -0.103575,
		45.859138, 33.780712, 33.300072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.408062, 33.512753, 34.001270>,  <45.298332, 33.368114, 33.372578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.408062, 33.512753, 34.001270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.609669, 33.804691, 33.816536>,  <45.730633, 33.979855, 33.705696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.609669, 33.804691, 33.816536>,  <45.408062, 33.512753, 34.001270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.609669, 33.804691, 33.816536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300805, 0.649573, 0.698263,
		0.809622, -0.213012, 0.546936,
		0.504013, 0.729850, -0.461833,
		45.760872, 34.023647, 33.677986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.781609, 33.824230, 34.542030>,  <45.408062, 33.512753, 34.001270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.781609, 33.824230, 34.542030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.770660, 34.080692, 34.235260>,  <45.764091, 34.234570, 34.051197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.770660, 34.080692, 34.235260>,  <45.781609, 33.824230, 34.542030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.770660, 34.080692, 34.235260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250485, 0.738334, 0.626195,
		0.967733, 0.209245, 0.140388,
		-0.027375, 0.641155, -0.766923,
		45.762447, 34.273037, 34.005184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.110878, 34.399155, 34.826252>,  <45.781609, 33.824230, 34.542030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.110878, 34.399155, 34.826252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.903515, 34.547260, 34.517925>,  <45.779099, 34.636124, 34.332928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.903515, 34.547260, 34.517925>,  <46.110878, 34.399155, 34.826252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.903515, 34.547260, 34.517925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306201, 0.761257, 0.571603,
		0.798434, 0.532347, -0.281264,
		-0.518405, 0.370264, -0.770818,
		45.747993, 34.658340, 34.286678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.414387, 35.017593, 34.693253>,  <46.110878, 34.399155, 34.826252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.414387, 35.017593, 34.693253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.037926, 35.015957, 34.558064>,  <45.812050, 35.014977, 34.476952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.037926, 35.015957, 34.558064>,  <46.414387, 35.017593, 34.693253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.037926, 35.015957, 34.558064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214616, 0.779710, 0.588210,
		0.261114, 0.626127, -0.734700,
		-0.941148, -0.004089, -0.337970,
		45.755581, 35.014729, 34.456673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.172455, 35.673111, 34.286251>,  <46.414387, 35.017593, 34.693253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.172455, 35.673111, 34.286251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.892860, 35.505344, 34.517944>,  <45.725105, 35.404686, 34.656960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.892860, 35.505344, 34.517944>,  <46.172455, 35.673111, 34.286251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.892860, 35.505344, 34.517944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092440, 0.856158, 0.508378,
		-0.709135, 0.301805, -0.637214,
		-0.698987, -0.419412, 0.579233,
		45.683163, 35.379520, 34.691715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.660835, 35.255421, 33.798771>,  <46.172455, 35.673111, 34.286251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.660835, 35.255421, 33.798771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.721390, 35.531071, 34.082230>,  <46.757721, 35.696461, 34.252304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.721390, 35.531071, 34.082230>,  <46.660835, 35.255421, 33.798771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.721390, 35.531071, 34.082230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.699124, -0.581460, 0.416088,
		0.698790, 0.432444, -0.569811,
		0.151387, 0.689127, 0.708651,
		46.766808, 35.737808, 34.294827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.360256, 35.423161, 33.865608>,  <46.660835, 35.255421, 33.798771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.360256, 35.423161, 33.865608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.223068, 35.512066, 34.230675>,  <47.140755, 35.565411, 34.449715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.223068, 35.512066, 34.230675>,  <47.360256, 35.423161, 33.865608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.223068, 35.512066, 34.230675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558163, -0.733252, 0.388324,
		0.755528, 0.642604, 0.127426,
		-0.342974, 0.222265, 0.912670,
		47.120174, 35.578747, 34.504475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.864861, 35.505772, 34.373638>,  <47.360256, 35.423161, 33.865608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.864861, 35.505772, 34.373638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.542484, 35.387711, 34.578907>,  <47.349060, 35.316875, 34.702068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.542484, 35.387711, 34.578907>,  <47.864861, 35.505772, 34.373638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.542484, 35.387711, 34.578907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527598, -0.751285, 0.396499,
		0.268512, 0.590303, 0.761212,
		-0.805941, -0.295150, 0.513172,
		47.300701, 35.299164, 34.732857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.026169, 35.413895, 35.044907>,  <47.864861, 35.505772, 34.373638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.026169, 35.413895, 35.044907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.686592, 35.202541, 35.048893>,  <47.482845, 35.075729, 35.051285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.686592, 35.202541, 35.048893>,  <48.026169, 35.413895, 35.044907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.686592, 35.202541, 35.048893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430651, -0.680746, 0.592558,
		-0.306317, 0.507340, 0.805466,
		-0.848946, -0.528385, 0.009963,
		47.431908, 35.044025, 35.051880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<36.536713, 37.143848, 46.338699> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.285049, 36.838634, 46.397949>,  <36.134052, 36.655506, 46.433498>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.285049, 36.838634, 46.397949>,  <36.536713, 37.143848, 46.338699>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.285049, 36.838634, 46.397949> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357108, 0.114494, -0.927020,
		0.690391, -0.636133, -0.344521,
		-0.629154, -0.763037, 0.148122,
		36.096302, 36.609722, 46.442387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.636467, 36.622879, 45.778870>,  <36.536713, 37.143848, 46.338699>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.636467, 36.622879, 45.778870> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.263748, 36.602272, 45.922596>,  <36.040119, 36.589909, 46.008831>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.263748, 36.602272, 45.922596>,  <36.636467, 36.622879, 45.778870>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.263748, 36.602272, 45.922596> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360832, 0.023750, -0.932329,
		0.039517, -0.998389, -0.040727,
		-0.931794, -0.051539, 0.359312,
		35.984211, 36.586815, 46.030388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.285992, 36.041054, 45.493179>,  <36.636467, 36.622879, 45.778870>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.285992, 36.041054, 45.493179> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.998280, 36.290642, 45.615353>,  <35.825653, 36.440395, 45.688656>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.998280, 36.290642, 45.615353>,  <36.285992, 36.041054, 45.493179>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.998280, 36.290642, 45.615353> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479048, -0.127065, -0.868543,
		-0.503138, -0.771046, 0.390309,
		-0.719281, 0.623974, 0.305437,
		35.782494, 36.477833, 45.706985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.595657, 35.738087, 45.221661>,  <36.285992, 36.041054, 45.493179>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.595657, 35.738087, 45.221661> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.502602, 36.113773, 45.322662>,  <35.446770, 36.339184, 45.383263>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.502602, 36.113773, 45.322662>,  <35.595657, 35.738087, 45.221661>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.502602, 36.113773, 45.322662> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508922, 0.103685, -0.854545,
		-0.828782, -0.327302, 0.453866,
		-0.232635, 0.939214, 0.252503,
		35.432812, 36.395538, 45.398415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.963455, 35.828735, 44.838913>,  <35.595657, 35.738087, 45.221661>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.963455, 35.828735, 44.838913> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.078201, 36.198483, 44.939510>,  <35.147049, 36.420330, 44.999870>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.078201, 36.198483, 44.939510>,  <34.963455, 35.828735, 44.838913>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.078201, 36.198483, 44.939510> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319859, 0.339889, -0.884402,
		-0.902993, 0.173264, 0.393171,
		0.286869, 0.924367, 0.251497,
		35.164261, 36.475792, 45.014961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.409855, 36.284012, 44.782967>,  <34.963455, 35.828735, 44.838913>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.409855, 36.284012, 44.782967> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.726307, 36.527721, 44.761440>,  <34.916180, 36.673946, 44.748524>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.726307, 36.527721, 44.761440>,  <34.409855, 36.284012, 44.782967>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.726307, 36.527721, 44.761440> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276992, 0.278433, -0.919647,
		-0.545333, 0.742468, 0.389041,
		0.791131, 0.609275, -0.053819,
		34.963646, 36.710503, 44.745293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.166126, 36.860153, 44.403885>,  <34.409855, 36.284012, 44.782967>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.166126, 36.860153, 44.403885> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.561321, 36.911446, 44.369392>,  <34.798439, 36.942223, 44.348698>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.561321, 36.911446, 44.369392>,  <34.166126, 36.860153, 44.403885>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.561321, 36.911446, 44.369392> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128869, 0.375783, -0.917704,
		-0.085276, 0.917793, 0.387794,
		0.987988, 0.128233, -0.086230,
		34.857719, 36.949917, 44.343525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.195961, 37.446228, 44.128094>,  <34.166126, 36.860153, 44.403885>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.195961, 37.446228, 44.128094> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.562042, 37.299171, 44.062073>,  <34.781693, 37.210938, 44.022461>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.562042, 37.299171, 44.062073>,  <34.195961, 37.446228, 44.128094>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.562042, 37.299171, 44.062073> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016462, 0.375117, -0.926831,
		0.402656, 0.850956, 0.337256,
		0.915203, -0.367642, -0.165052,
		34.836605, 37.188877, 44.012558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.677132, 37.873821, 43.826893>,  <34.195961, 37.446228, 44.128094>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.677132, 37.873821, 43.826893> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.820415, 37.515694, 43.720997>,  <34.906387, 37.300816, 43.657459>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.820415, 37.515694, 43.720997>,  <34.677132, 37.873821, 43.826893>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.820415, 37.515694, 43.720997> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273045, 0.371622, -0.887324,
		0.892822, 0.245562, 0.377581,
		0.358210, -0.895319, -0.264743,
		34.927879, 37.247097, 43.641575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.170364, 38.040318, 43.355865>,  <34.677132, 37.873821, 43.826893>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.170364, 38.040318, 43.355865> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.067513, 37.658066, 43.298378>,  <35.005802, 37.428715, 43.263885>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.067513, 37.658066, 43.298378>,  <35.170364, 38.040318, 43.355865>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.067513, 37.658066, 43.298378> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118840, 0.116320, -0.986077,
		0.959042, -0.270629, 0.083658,
		-0.257130, -0.955631, -0.143718,
		34.990372, 37.371376, 43.255264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.735592, 37.654697, 43.009457>,  <35.170364, 38.040318, 43.355865>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.735592, 37.654697, 43.009457> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.408176, 37.451233, 42.902683>,  <35.211727, 37.329155, 42.838619>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.408176, 37.451233, 42.902683>,  <35.735592, 37.654697, 43.009457>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.408176, 37.451233, 42.902683> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284494, 0.044725, -0.957634,
		0.499053, -0.859802, 0.108103,
		-0.818541, -0.508664, -0.266929,
		35.162613, 37.298634, 42.822605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.023106, 37.112370, 42.689480>,  <35.735592, 37.654697, 43.009457>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.023106, 37.112370, 42.689480> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.637794, 37.098671, 42.582947>,  <35.406609, 37.090450, 42.519028>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.637794, 37.098671, 42.582947>,  <36.023106, 37.112370, 42.689480>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.637794, 37.098671, 42.582947> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267701, -0.044895, -0.962456,
		0.021008, -0.998404, 0.052415,
		-0.963273, -0.034251, -0.266330,
		35.348812, 37.088398, 42.503048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.936798, 36.514473, 42.261688>,  <36.023106, 37.112370, 42.689480>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.936798, 36.514473, 42.261688> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.633713, 36.759525, 42.171749>,  <35.451862, 36.906555, 42.117786>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.633713, 36.759525, 42.171749>,  <35.936798, 36.514473, 42.261688>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.633713, 36.759525, 42.171749> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373110, 0.124008, -0.919463,
		-0.535407, -0.780582, -0.322540,
		-0.757713, 0.612629, -0.224848,
		35.406399, 36.943314, 42.104294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.691673, 36.266720, 41.509380>,  <35.936798, 36.514473, 42.261688>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.691673, 36.266720, 41.509380> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.535877, 36.629768, 41.572018>,  <35.442398, 36.847595, 41.609600>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.535877, 36.629768, 41.572018>,  <35.691673, 36.266720, 41.509380>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.535877, 36.629768, 41.572018> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204074, 0.250840, -0.946273,
		-0.898136, -0.336610, -0.282922,
		-0.389493, 0.907619, 0.156595,
		35.419029, 36.902054, 41.618996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.280689, 36.447010, 40.931755>,  <35.691673, 36.266720, 41.509380>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.280689, 36.447010, 40.931755> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.400249, 36.792690, 41.093647>,  <35.471985, 37.000099, 41.190784>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.400249, 36.792690, 41.093647>,  <35.280689, 36.447010, 40.931755>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.400249, 36.792690, 41.093647> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050704, 0.409141, -0.911061,
		-0.952935, 0.292843, 0.078476,
		0.298905, 0.864203, 0.404733,
		35.489922, 37.051952, 41.215069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.834080, 36.905262, 40.588928>,  <35.280689, 36.447010, 40.931755>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.834080, 36.905262, 40.588928> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.136883, 37.122406, 40.734390>,  <35.318565, 37.252693, 40.821667>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.136883, 37.122406, 40.734390>,  <34.834080, 36.905262, 40.588928>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.136883, 37.122406, 40.734390> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113654, 0.438677, -0.891429,
		-0.643449, 0.716147, 0.270382,
		0.757004, 0.542859, 0.363660,
		35.363983, 37.285263, 40.843487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.625381, 37.644081, 40.347015>,  <34.834080, 36.905262, 40.588928>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.625381, 37.644081, 40.347015> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.010971, 37.621426, 40.450970>,  <35.242325, 37.607834, 40.513344>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.010971, 37.621426, 40.450970>,  <34.625381, 37.644081, 40.347015>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.010971, 37.621426, 40.450970> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256413, 0.457696, -0.851332,
		-0.070731, 0.887303, 0.455731,
		0.963976, -0.056640, 0.259889,
		35.300163, 37.604435, 40.528938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.832806, 38.325657, 40.159683>,  <34.625381, 37.644081, 40.347015>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.832806, 38.325657, 40.159683> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.146206, 38.078362, 40.184677>,  <35.334248, 37.929985, 40.199673>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.146206, 38.078362, 40.184677>,  <34.832806, 38.325657, 40.159683>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.146206, 38.078362, 40.184677> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305879, 0.296195, -0.904824,
		0.540889, 0.728045, 0.421176,
		0.783503, -0.618238, 0.062485,
		35.381256, 37.892891, 40.203423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.518948, 38.756088, 40.084358>,  <34.832806, 38.325657, 40.159683>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.518948, 38.756088, 40.084358> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.581806, 38.374439, 39.982418>,  <35.619522, 38.145451, 39.921253>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.581806, 38.374439, 39.982418>,  <35.518948, 38.756088, 40.084358>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.581806, 38.374439, 39.982418> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135171, 0.276411, -0.951486,
		0.978281, 0.115076, 0.172408,
		0.157149, -0.954125, -0.254853,
		35.628952, 38.088203, 39.905964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.106380, 38.717491, 39.638733>,  <35.518948, 38.756088, 40.084358>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.106380, 38.717491, 39.638733> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.971996, 38.349274, 39.559002>,  <35.891365, 38.128342, 39.511166>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.971996, 38.349274, 39.559002>,  <36.106380, 38.717491, 39.638733>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.971996, 38.349274, 39.559002> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071962, 0.185918, -0.979926,
		0.939125, -0.343556, 0.003784,
		-0.335956, -0.920545, -0.199323,
		35.871208, 38.073109, 39.499207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.563793, 38.417618, 39.050346>,  <36.106380, 38.717491, 39.638733>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.563793, 38.417618, 39.050346> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.231892, 38.194580, 39.040619>,  <36.032749, 38.060757, 39.034782>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.231892, 38.194580, 39.040619>,  <36.563793, 38.417618, 39.050346>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.231892, 38.194580, 39.040619> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005296, 0.051433, -0.998662,
		0.558102, -0.828517, -0.045630,
		-0.829755, -0.557597, -0.024317,
		35.982964, 38.027302, 39.033325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.614510, 37.760990, 38.574596>,  <36.563793, 38.417618, 39.050346>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.614510, 37.760990, 38.574596> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.228973, 37.860172, 38.613663>,  <35.997654, 37.919682, 38.637104>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.228973, 37.860172, 38.613663>,  <36.614510, 37.760990, 38.574596>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.228973, 37.860172, 38.613663> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145214, -0.181366, -0.972635,
		-0.223461, -0.951642, 0.210814,
		-0.963835, 0.247959, 0.097663,
		35.939823, 37.934559, 38.642963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.935997, 38.009003, 37.929256>,  <36.614510, 37.760990, 38.574596>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.935997, 38.009003, 37.929256> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.313484, 38.024155, 37.797825>,  <37.539974, 38.033245, 37.718967>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.313484, 38.024155, 37.797825>,  <36.935997, 38.009003, 37.929256>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.313484, 38.024155, 37.797825> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309728, -0.449770, 0.837720,
		-0.116053, -0.892341, -0.436188,
		0.943716, 0.037880, -0.328580,
		37.596600, 38.035519, 37.699249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.267597, 37.444298, 38.094528>,  <36.935997, 38.009003, 37.929256>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.267597, 37.444298, 38.094528> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.592758, 37.670380, 38.038326>,  <37.787853, 37.806026, 38.004604>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.592758, 37.670380, 38.038326>,  <37.267597, 37.444298, 38.094528>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.592758, 37.670380, 38.038326> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391651, -0.351951, 0.850141,
		0.431051, -0.746108, -0.507462,
		0.812899, 0.565203, -0.140505,
		37.836628, 37.839939, 37.996174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.791981, 36.976562, 38.182159>,  <37.267597, 37.444298, 38.094528>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.791981, 36.976562, 38.182159> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.953346, 37.336510, 38.248486>,  <38.050167, 37.552479, 38.288280>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.953346, 37.336510, 38.248486>,  <37.791981, 36.976562, 38.182159>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.953346, 37.336510, 38.248486> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400705, -0.336653, 0.852115,
		0.822611, -0.277317, -0.496393,
		0.403418, 0.899867, 0.165812,
		38.074371, 37.606468, 38.298229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.476589, 36.776821, 38.358707>,  <37.791981, 36.976562, 38.182159>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.476589, 36.776821, 38.358707> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.409477, 37.142471, 38.506344>,  <38.369209, 37.361862, 38.594925>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.409477, 37.142471, 38.506344>,  <38.476589, 36.776821, 38.358707>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.409477, 37.142471, 38.506344> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420439, -0.272290, 0.865499,
		0.891674, 0.300390, -0.338650,
		-0.167776, 0.914125, 0.369090,
		38.359146, 37.416710, 38.617069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.082623, 36.840271, 38.763142>,  <38.476589, 36.776821, 38.358707>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.082623, 36.840271, 38.763142> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.831543, 37.115501, 38.908772>,  <38.680897, 37.280640, 38.996147>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.831543, 37.115501, 38.908772>,  <39.082623, 36.840271, 38.763142>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.831543, 37.115501, 38.908772> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286506, -0.230660, 0.929898,
		0.723818, 0.688002, -0.052354,
		-0.627696, 0.688076, 0.364073,
		38.643234, 37.321926, 39.017994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.485733, 37.182117, 39.353039>,  <39.082623, 36.840271, 38.763142>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.485733, 37.182117, 39.353039> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.094353, 37.251476, 39.397869>,  <38.859524, 37.293091, 39.424767>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.094353, 37.251476, 39.397869>,  <39.485733, 37.182117, 39.353039>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.094353, 37.251476, 39.397869> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098406, -0.085539, 0.991463,
		0.181504, 0.981130, 0.066633,
		-0.978454, 0.173397, 0.112075,
		38.800816, 37.303493, 39.431492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.408085, 37.545910, 39.960136>,  <39.485733, 37.182117, 39.353039>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.408085, 37.545910, 39.960136> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.025936, 37.432892, 39.925663>,  <38.796646, 37.365082, 39.904980>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.025936, 37.432892, 39.925663>,  <39.408085, 37.545910, 39.960136>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.025936, 37.432892, 39.925663> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060699, -0.097743, 0.993359,
		-0.289095, 0.954260, 0.076231,
		-0.955374, -0.282548, -0.086179,
		38.739323, 37.348129, 39.899811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.068909, 37.874958, 40.536697>,  <39.408085, 37.545910, 39.960136>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.068909, 37.874958, 40.536697> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.817444, 37.585308, 40.423260>,  <38.666565, 37.411518, 40.355198>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.817444, 37.585308, 40.423260>,  <39.068909, 37.874958, 40.536697>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.817444, 37.585308, 40.423260> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281890, -0.127689, 0.950912,
		-0.724795, 0.677741, -0.123851,
		-0.628657, -0.724129, -0.283597,
		38.628845, 37.368069, 40.338181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.306694, 37.933964, 40.948788>,  <39.068909, 37.874958, 40.536697>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.306694, 37.933964, 40.948788> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.386883, 37.555359, 40.847656>,  <38.434994, 37.328194, 40.786976>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.386883, 37.555359, 40.847656>,  <38.306694, 37.933964, 40.948788>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.386883, 37.555359, 40.847656> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182187, -0.289584, 0.939654,
		-0.962611, -0.142308, -0.230495,
		0.200468, -0.946514, -0.252830,
		38.447021, 37.271404, 40.771809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.702446, 37.601902, 41.132389>,  <38.306694, 37.933964, 40.948788>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.702446, 37.601902, 41.132389> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.978512, 37.313961, 41.102737>,  <38.144150, 37.141197, 41.084946>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.978512, 37.313961, 41.102737>,  <37.702446, 37.601902, 41.132389>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.978512, 37.313961, 41.102737> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204511, -0.292274, 0.934212,
		-0.694158, -0.629596, -0.348933,
		0.690160, -0.719851, -0.074125,
		38.185558, 37.098007, 41.080502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.325451, 37.100075, 41.496422>,  <37.702446, 37.601902, 41.132389>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.325451, 37.100075, 41.496422> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.713066, 37.001354, 41.499279>,  <37.945637, 36.942120, 41.500996>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.713066, 37.001354, 41.499279>,  <37.325451, 37.100075, 41.496422>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.713066, 37.001354, 41.499279> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069489, -0.244836, 0.967071,
		-0.236911, -0.937630, -0.254406,
		0.969043, -0.246788, 0.007150,
		38.003777, 36.927311, 41.501423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.344917, 36.367855, 41.818436>,  <37.325451, 37.100075, 41.496422>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.344917, 36.367855, 41.818436> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.698750, 36.552422, 41.845589>,  <37.911049, 36.663162, 41.861881>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.698750, 36.552422, 41.845589>,  <37.344917, 36.367855, 41.818436>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.698750, 36.552422, 41.845589> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042976, -0.225573, 0.973278,
		0.464403, -0.858025, -0.219368,
		0.884581, 0.461421, 0.067882,
		37.964123, 36.690849, 41.865952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.742977, 35.990295, 42.220425>,  <37.344917, 36.367855, 41.818436>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.742977, 35.990295, 42.220425> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.934040, 36.341034, 42.242298>,  <38.048676, 36.551476, 42.255421>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.934040, 36.341034, 42.242298>,  <37.742977, 35.990295, 42.220425>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.934040, 36.341034, 42.242298> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161633, -0.148886, 0.975555,
		0.863552, -0.457139, -0.212844,
		0.477654, 0.876845, 0.054682,
		38.077335, 36.604088, 42.258701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.453892, 35.948261, 42.429123>,  <37.742977, 35.990295, 42.220425>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.453892, 35.948261, 42.429123> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.387699, 36.326714, 42.540443>,  <38.347984, 36.553787, 42.607235>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.387699, 36.326714, 42.540443>,  <38.453892, 35.948261, 42.429123>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.387699, 36.326714, 42.540443> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335658, -0.211311, 0.917977,
		0.927336, 0.245317, -0.282610,
		-0.165477, 0.946133, 0.278298,
		38.338055, 36.610554, 42.623932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.110619, 36.143547, 42.655315>,  <38.453892, 35.948261, 42.429123>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.110619, 36.143547, 42.655315> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.832272, 36.372261, 42.829136>,  <38.665264, 36.509487, 42.933426>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.832272, 36.372261, 42.829136>,  <39.110619, 36.143547, 42.655315>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.832272, 36.372261, 42.829136> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338214, -0.272866, 0.900642,
		0.633543, 0.773699, -0.003505,
		-0.695869, 0.571781, 0.434548,
		38.623512, 36.543797, 42.959499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.333103, 36.266903, 43.318813>,  <39.110619, 36.143547, 42.655315>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.333103, 36.266903, 43.318813> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.953316, 36.386612, 43.356659>,  <38.725445, 36.458439, 43.379364>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.953316, 36.386612, 43.356659>,  <39.333103, 36.266903, 43.318813>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.953316, 36.386612, 43.356659> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049937, -0.153559, 0.986877,
		0.309874, 0.941730, 0.130854,
		-0.949466, 0.299273, 0.094611,
		38.668476, 36.476395, 43.385044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.270142, 36.703957, 43.856834>,  <39.333103, 36.266903, 43.318813>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.270142, 36.703957, 43.856834> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.887352, 36.591068, 43.829830>,  <38.657681, 36.523335, 43.813625>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.887352, 36.591068, 43.829830>,  <39.270142, 36.703957, 43.856834>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.887352, 36.591068, 43.829830> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008090, -0.258517, 0.965973,
		-0.290070, 0.923862, 0.249677,
		-0.956971, -0.282219, -0.067514,
		38.600262, 36.506401, 43.809574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.778259, 37.052345, 44.374702>,  <39.270142, 36.703957, 43.856834>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.778259, 37.052345, 44.374702> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.599144, 36.712612, 44.262897>,  <38.491676, 36.508774, 44.195816>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.599144, 36.712612, 44.262897>,  <38.778259, 37.052345, 44.374702>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.599144, 36.712612, 44.262897> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230009, -0.192667, 0.953926,
		-0.864052, 0.491443, -0.109080,
		-0.447784, -0.849331, -0.279510,
		38.464809, 36.457813, 44.179043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<38.033035, 37.050793, 44.698597> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.094292, 36.662403, 44.625103>,  <38.131046, 36.429371, 44.581005>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.094292, 36.662403, 44.625103>,  <38.033035, 37.050793, 44.698597>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.094292, 36.662403, 44.625103> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129891, -0.204094, 0.970296,
		-0.979631, -0.124725, -0.157375,
		0.153139, -0.970973, -0.183736,
		38.140232, 36.371113, 44.569981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.528988, 36.713268, 45.059284>,  <38.033035, 37.050793, 44.698597>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.528988, 36.713268, 45.059284> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.824310, 36.453754, 44.985554>,  <38.001503, 36.298046, 44.941315>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.824310, 36.453754, 44.985554>,  <37.528988, 36.713268, 45.059284>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.824310, 36.453754, 44.985554> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061802, -0.207069, 0.976372,
		-0.671626, -0.732255, -0.112785,
		0.738308, -0.648787, -0.184328,
		38.045803, 36.259117, 44.930256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.300850, 36.199875, 45.472187>,  <37.528988, 36.713268, 45.059284>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.300850, 36.199875, 45.472187> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.686474, 36.118820, 45.403446>,  <37.917847, 36.070187, 45.362202>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.686474, 36.118820, 45.403446>,  <37.300850, 36.199875, 45.472187>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.686474, 36.118820, 45.403446> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114797, -0.265652, 0.957210,
		-0.239616, -0.942533, -0.232842,
		0.964057, -0.202633, -0.171855,
		37.975689, 36.058029, 45.351891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.443748, 35.451824, 45.669395>,  <37.300850, 36.199875, 45.472187>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.443748, 35.451824, 45.669395> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.793415, 35.645771, 45.680256>,  <38.003216, 35.762138, 45.686771>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.793415, 35.645771, 45.680256>,  <37.443748, 35.451824, 45.669395>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.793415, 35.645771, 45.680256> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097139, -0.229359, 0.968483,
		0.475813, -0.843977, -0.247597,
		0.874166, 0.484868, 0.027149,
		38.055664, 35.791233, 45.688400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.861248, 35.014065, 46.136616>,  <37.443748, 35.451824, 45.669395>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.861248, 35.014065, 46.136616> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.093426, 35.339375, 46.120270>,  <38.232731, 35.534561, 46.110462>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.093426, 35.339375, 46.120270>,  <37.861248, 35.014065, 46.136616>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.093426, 35.339375, 46.120270> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239253, -0.122356, 0.963217,
		0.778360, -0.568869, -0.265599,
		0.580442, 0.813275, -0.040867,
		38.267559, 35.583359, 46.108009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.505348, 34.851719, 46.394138>,  <37.861248, 35.014065, 46.136616>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.505348, 34.851719, 46.394138> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.488945, 35.250656, 46.418190>,  <38.479103, 35.490021, 46.432621>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.488945, 35.250656, 46.418190>,  <38.505348, 34.851719, 46.394138>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.488945, 35.250656, 46.418190> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239321, -0.048627, 0.969722,
		0.970074, 0.054162, -0.236692,
		-0.041013, 0.997348, 0.060134,
		38.476643, 35.549862, 46.436230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.205612, 35.075050, 46.712341>,  <38.505348, 34.851719, 46.394138>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.205612, 35.075050, 46.712341> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.955391, 35.370152, 46.813858>,  <38.805260, 35.547211, 46.874767>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.955391, 35.370152, 46.813858>,  <39.205612, 35.075050, 46.712341>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.955391, 35.370152, 46.813858> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373676, -0.002238, 0.927557,
		0.684875, 0.675068, -0.274280,
		-0.625550, 0.737752, 0.253789,
		38.767727, 35.591476, 46.889996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.634830, 35.484463, 47.108181>,  <39.205612, 35.075050, 46.712341>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.634830, 35.484463, 47.108181> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.274273, 35.628460, 47.204433>,  <39.057938, 35.714859, 47.262184>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.274273, 35.628460, 47.204433>,  <39.634830, 35.484463, 47.108181>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.274273, 35.628460, 47.204433> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246741, -0.029638, 0.968628,
		0.355831, 0.932484, -0.062109,
		-0.901389, 0.359993, 0.240628,
		39.003857, 35.736458, 47.276623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.746212, 36.092575, 47.380028>,  <39.634830, 35.484463, 47.108181>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.746212, 36.092575, 47.380028> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.400108, 35.979309, 47.545509>,  <39.192448, 35.911350, 47.644798>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.400108, 35.979309, 47.545509>,  <39.746212, 36.092575, 47.380028>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.400108, 35.979309, 47.545509> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424397, 0.025562, 0.905115,
		-0.266871, 0.958731, 0.098056,
		-0.865256, -0.283164, 0.413704,
		39.140533, 35.894360, 47.669621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.731594, 36.446888, 48.029778>,  <39.746212, 36.092575, 47.380028>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.731594, 36.446888, 48.029778> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.472790, 36.143559, 48.061577>,  <39.317509, 35.961559, 48.080654>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.472790, 36.143559, 48.061577>,  <39.731594, 36.446888, 48.029778>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.472790, 36.143559, 48.061577> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323229, -0.178357, 0.929361,
		-0.690582, 0.626999, 0.360512,
		-0.647008, -0.758328, 0.079495,
		39.278687, 35.916061, 48.085426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.566914, 36.467583, 48.649765>,  <39.731594, 36.446888, 48.029778>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.566914, 36.467583, 48.649765> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.412624, 36.105450, 48.578671>,  <39.320049, 35.888168, 48.536015>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.412624, 36.105450, 48.578671>,  <39.566914, 36.467583, 48.649765>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.412624, 36.105450, 48.578671> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293262, -0.302961, 0.906759,
		-0.874766, 0.297634, 0.382358,
		-0.385722, -0.905334, -0.177735,
		39.296909, 35.833851, 48.525349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.007820, 36.289169, 49.191772>,  <39.566914, 36.467583, 48.649765>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.007820, 36.289169, 49.191772> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.187481, 35.964443, 49.042522>,  <39.295277, 35.769608, 48.952972>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.187481, 35.964443, 49.042522>,  <39.007820, 36.289169, 49.191772>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.187481, 35.964443, 49.042522> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215751, -0.306711, 0.927028,
		-0.867014, -0.496878, 0.037389,
		0.449152, -0.811813, -0.373125,
		39.322227, 35.720898, 48.930584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.812630, 35.786308, 49.640141>,  <39.007820, 36.289169, 49.191772>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.812630, 35.786308, 49.640141> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.154274, 35.674252, 49.464859>,  <39.359261, 35.607018, 49.359692>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.154274, 35.674252, 49.464859>,  <38.812630, 35.786308, 49.640141>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.154274, 35.674252, 49.464859> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391704, -0.207789, 0.896321,
		-0.342153, -0.937199, -0.067740,
		0.854107, -0.280145, -0.438201,
		39.410507, 35.590210, 49.333401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.010036, 35.215698, 50.027615>,  <38.812630, 35.786308, 49.640141>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.010036, 35.215698, 50.027615> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.331738, 35.291653, 49.802364>,  <39.524757, 35.337223, 49.667213>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.331738, 35.291653, 49.802364>,  <39.010036, 35.215698, 50.027615>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.331738, 35.291653, 49.802364> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591814, -0.342166, 0.729848,
		-0.054097, -0.920254, -0.387565,
		0.804257, 0.189884, -0.563130,
		39.573013, 35.348618, 49.633427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.549324, 34.650398, 50.209759>,  <39.010036, 35.215698, 50.027615>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.549324, 34.650398, 50.209759> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.773388, 34.925529, 50.025105>,  <39.907829, 35.090611, 49.914314>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.773388, 34.925529, 50.025105>,  <39.549324, 34.650398, 50.209759>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.773388, 34.925529, 50.025105> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.756907, -0.198543, 0.622634,
		0.336612, -0.698191, -0.631840,
		0.560165, 0.687830, -0.461634,
		39.941437, 35.131878, 49.886616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.271713, 34.386856, 50.176090>,  <39.549324, 34.650398, 50.209759>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.271713, 34.386856, 50.176090> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.256493, 34.786510, 50.182735>,  <40.247360, 35.026302, 50.186722>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.256493, 34.786510, 50.182735>,  <40.271713, 34.386856, 50.176090>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.256493, 34.786510, 50.182735> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.645184, 0.011867, 0.763935,
		0.763079, 0.039789, -0.645079,
		-0.038051, 0.999138, 0.016616,
		40.245079, 35.086250, 50.187721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.938721, 34.532570, 50.188107>,  <40.271713, 34.386856, 50.176090>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.938721, 34.532570, 50.188107> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.742023, 34.859344, 50.308636>,  <40.624004, 35.055408, 50.380951>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.742023, 34.859344, 50.308636>,  <40.938721, 34.532570, 50.188107>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.742023, 34.859344, 50.308636> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.684113, 0.148399, 0.714120,
		0.538678, 0.557303, -0.631854,
		-0.491747, 0.816940, 0.301319,
		40.594498, 35.104427, 50.399033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.442352, 34.990417, 50.358227>,  <40.938721, 34.532570, 50.188107>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.442352, 34.990417, 50.358227> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.121117, 35.124672, 50.555164>,  <40.928375, 35.205223, 50.673325>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.121117, 35.124672, 50.555164>,  <41.442352, 34.990417, 50.358227>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.121117, 35.124672, 50.555164> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520432, -0.007279, 0.853872,
		0.290170, 0.941965, -0.168828,
		-0.803089, 0.335632, 0.492341,
		40.880192, 35.225361, 50.702866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.724747, 35.285591, 50.957714>,  <41.442352, 34.990417, 50.358227>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.724747, 35.285591, 50.957714> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.348392, 35.330124, 51.085674>,  <41.122581, 35.356846, 51.162449>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.348392, 35.330124, 51.085674>,  <41.724747, 35.285591, 50.957714>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.348392, 35.330124, 51.085674> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314303, -0.065126, 0.947086,
		0.126277, 0.991647, 0.026283,
		-0.940887, 0.111335, 0.319901,
		41.066128, 35.363525, 51.181644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.778057, 35.732773, 51.499172>,  <41.724747, 35.285591, 50.957714>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.778057, 35.732773, 51.499172> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.433365, 35.542210, 51.568981>,  <41.226551, 35.427872, 51.610867>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.433365, 35.542210, 51.568981>,  <41.778057, 35.732773, 51.499172>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.433365, 35.542210, 51.568981> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364572, -0.342190, 0.866021,
		-0.352858, 0.809903, 0.468560,
		-0.861730, -0.476406, 0.174524,
		41.174847, 35.399288, 51.621338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.564205, 35.938122, 52.197727>,  <41.778057, 35.732773, 51.499172>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.564205, 35.938122, 52.197727> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.348831, 35.607273, 52.133289>,  <41.219604, 35.408764, 52.094627>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.348831, 35.607273, 52.133289>,  <41.564205, 35.938122, 52.197727>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.348831, 35.607273, 52.133289> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147815, -0.280913, 0.948282,
		-0.829599, 0.486780, 0.273516,
		-0.538439, -0.827123, -0.161092,
		41.187298, 35.359135, 52.084961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.911961, 35.924515, 52.584595>,  <41.564205, 35.938122, 52.197727>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.911961, 35.924515, 52.584595> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.031933, 35.549953, 52.511719>,  <41.103916, 35.325218, 52.467995>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.031933, 35.549953, 52.511719>,  <40.911961, 35.924515, 52.584595>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.031933, 35.549953, 52.511719> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057226, -0.172976, 0.983262,
		-0.952244, -0.305332, 0.001706,
		0.299927, -0.936403, -0.182188,
		41.121910, 35.269032, 52.457062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.473419, 35.399017, 52.926003>,  <40.911961, 35.924515, 52.584595>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.473419, 35.399017, 52.926003> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.863941, 35.314056, 52.909439>,  <41.098255, 35.263081, 52.899502>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.863941, 35.314056, 52.909439>,  <40.473419, 35.399017, 52.926003>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.863941, 35.314056, 52.909439> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064250, 0.101798, 0.992728,
		-0.206643, -0.971865, 0.113032,
		0.976304, -0.212402, -0.041406,
		41.156834, 35.250336, 52.897018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.205772, 34.889721, 53.450741>,  <40.473419, 35.399017, 52.926003>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.205772, 34.889721, 53.450741> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.896225, 34.637688, 53.476421>,  <39.710495, 34.486469, 53.491829>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.896225, 34.637688, 53.476421>,  <40.205772, 34.889721, 53.450741>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.896225, 34.637688, 53.476421> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347314, 0.337418, -0.874941,
		0.529624, -0.699388, -0.479954,
		-0.773868, -0.630084, 0.064203,
		39.664066, 34.448662, 53.495682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.900330, 34.767796, 52.827976>,  <40.205772, 34.889721, 53.450741>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.900330, 34.767796, 52.827976> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.591812, 34.631569, 53.043060>,  <39.406704, 34.549835, 53.172112>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.591812, 34.631569, 53.043060>,  <39.900330, 34.767796, 52.827976>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.591812, 34.631569, 53.043060> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.615861, 0.186027, -0.765577,
		0.160702, -0.921634, -0.353222,
		-0.771291, -0.340566, 0.537704,
		39.360424, 34.529400, 53.204372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.547874, 34.277344, 52.410774>,  <39.900330, 34.767796, 52.827976>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.547874, 34.277344, 52.410774> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.260384, 34.372280, 52.672184>,  <39.087887, 34.429241, 52.829029>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.260384, 34.372280, 52.672184>,  <39.547874, 34.277344, 52.410774>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.260384, 34.372280, 52.672184> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.655303, 0.082920, -0.750801,
		-0.232388, -0.967880, 0.095935,
		-0.718731, 0.237343, 0.653524,
		39.044765, 34.443481, 52.868240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.976471, 33.958035, 52.189644>,  <39.547874, 34.277344, 52.410774>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.976471, 33.958035, 52.189644> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.821976, 34.244228, 52.422508>,  <38.729279, 34.415943, 52.562225>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.821976, 34.244228, 52.422508>,  <38.976471, 33.958035, 52.189644>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.821976, 34.244228, 52.422508> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.861782, -0.054885, -0.504301,
		-0.328866, -0.696472, 0.637788,
		-0.386236, 0.715482, 0.582157,
		38.706104, 34.458874, 52.597157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.315018, 33.721279, 52.425430>,  <38.976471, 33.958035, 52.189644>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.315018, 33.721279, 52.425430> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.322353, 34.121208, 52.426697>,  <38.326756, 34.361168, 52.427456>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.322353, 34.121208, 52.426697>,  <38.315018, 33.721279, 52.425430>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.322353, 34.121208, 52.426697> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.821490, 0.016875, -0.569974,
		-0.569928, 0.007852, 0.821657,
		0.018341, 0.999827, 0.003168,
		38.327854, 34.421158, 52.427647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.600128, 33.804165, 52.386936>,  <38.315018, 33.721279, 52.425430>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.600128, 33.804165, 52.386936> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.779160, 34.142998, 52.272308>,  <37.886578, 34.346298, 52.203533>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.779160, 34.142998, 52.272308>,  <37.600128, 33.804165, 52.386936>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.779160, 34.142998, 52.272308> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.694651, 0.127542, -0.707950,
		-0.563143, 0.515930, 0.645512,
		0.447582, 0.847083, -0.286567,
		37.913433, 34.397121, 52.186337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.108860, 34.253624, 52.320320>,  <37.600128, 33.804165, 52.386936>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.108860, 34.253624, 52.320320> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.390396, 34.455997, 52.120865>,  <37.559319, 34.577423, 52.001190>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.390396, 34.455997, 52.120865>,  <37.108860, 34.253624, 52.320320>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.390396, 34.455997, 52.120865> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.690027, 0.320190, -0.649108,
		-0.168748, 0.800941, 0.574472,
		0.703837, 0.505937, -0.498639,
		37.601547, 34.607777, 51.971272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.838608, 34.983299, 52.137501>,  <37.108860, 34.253624, 52.320320>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.838608, 34.983299, 52.137501> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.121201, 34.864571, 51.880512>,  <37.290756, 34.793331, 51.726318>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.121201, 34.864571, 51.880512>,  <36.838608, 34.983299, 52.137501>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.121201, 34.864571, 51.880512> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.560986, 0.318585, -0.764067,
		0.431477, 0.900221, 0.058560,
		0.706486, -0.296826, -0.642473,
		37.333145, 34.775524, 51.687771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.768723, 35.483761, 51.539234>,  <36.838608, 34.983299, 52.137501>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.768723, 35.483761, 51.539234> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.007309, 35.195797, 51.397274>,  <37.150463, 35.023018, 51.312099>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.007309, 35.195797, 51.397274>,  <36.768723, 35.483761, 51.539234>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.007309, 35.195797, 51.397274> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296500, 0.213260, -0.930918,
		0.745864, 0.660491, -0.086251,
		0.596469, -0.719911, -0.354898,
		37.186249, 34.979824, 51.290806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.144608, 35.803665, 50.958542>,  <36.768723, 35.483761, 51.539234>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.144608, 35.803665, 50.958542> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.166466, 35.408047, 50.903687>,  <37.179581, 35.170677, 50.870773>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.166466, 35.408047, 50.903687>,  <37.144608, 35.803665, 50.958542>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.166466, 35.408047, 50.903687> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142680, 0.128198, -0.981432,
		0.988259, 0.073195, -0.134111,
		0.054643, -0.989044, -0.137136,
		37.182858, 35.111332, 50.862545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.552975, 35.689884, 50.404877>,  <37.144608, 35.803665, 50.958542>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.552975, 35.689884, 50.404877> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.360607, 35.340271, 50.432529>,  <37.245186, 35.130505, 50.449120>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.360607, 35.340271, 50.432529>,  <37.552975, 35.689884, 50.404877>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.360607, 35.340271, 50.432529> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124976, -0.009706, -0.992112,
		0.867810, -0.485768, -0.104566,
		-0.480922, -0.874033, 0.069132,
		37.216331, 35.078060, 50.453270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.706989, 35.465343, 49.787148>,  <37.552975, 35.689884, 50.404877>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.706989, 35.465343, 49.787148> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.395424, 35.245033, 49.907112>,  <37.208485, 35.112846, 49.979092>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.395424, 35.245033, 49.907112>,  <37.706989, 35.465343, 49.787148>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.395424, 35.245033, 49.907112> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437595, 0.134752, -0.889018,
		0.449231, -0.823707, -0.345974,
		-0.778911, -0.550771, 0.299915,
		37.161751, 35.079803, 49.997086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.656155, 34.941116, 49.285515>,  <37.706989, 35.465343, 49.787148>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.656155, 34.941116, 49.285515> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.300926, 34.979229, 49.465401>,  <37.087788, 35.002094, 49.573334>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.300926, 34.979229, 49.465401>,  <37.656155, 34.941116, 49.285515>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.300926, 34.979229, 49.465401> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449871, 0.021086, -0.892845,
		-0.094552, -0.995227, 0.024137,
		-0.888074, 0.095279, 0.449718,
		37.034504, 35.007812, 49.600315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.303452, 34.345886, 49.130844>,  <37.656155, 34.941116, 49.285515>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.303452, 34.345886, 49.130844> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.048115, 34.633064, 49.241890>,  <36.894913, 34.805370, 49.308517>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.048115, 34.633064, 49.241890>,  <37.303452, 34.345886, 49.130844>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.048115, 34.633064, 49.241890> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317096, 0.083363, -0.944722,
		-0.701405, -0.691086, 0.174445,
		-0.638343, 0.717949, 0.277612,
		36.856613, 34.848450, 49.325172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.753571, 34.288963, 48.646862>,  <37.303452, 34.345886, 49.130844>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.753571, 34.288963, 48.646862> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.669048, 34.643433, 48.811806>,  <36.618336, 34.856113, 48.910770>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.669048, 34.643433, 48.811806>,  <36.753571, 34.288963, 48.646862>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.669048, 34.643433, 48.811806> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456439, 0.283593, -0.843349,
		-0.864299, -0.366423, 0.344561,
		-0.211307, 0.886177, 0.412359,
		36.605656, 34.909286, 48.935513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.134544, 34.520073, 48.343357>,  <36.753571, 34.288963, 48.646862>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.134544, 34.520073, 48.343357> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.302574, 34.850967, 48.492603>,  <36.403393, 35.049503, 48.582150>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.302574, 34.850967, 48.492603>,  <36.134544, 34.520073, 48.343357>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.302574, 34.850967, 48.492603> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171985, 0.476271, -0.862315,
		-0.891045, 0.298063, 0.342340,
		0.420071, 0.827239, 0.373116,
		36.428596, 35.099140, 48.604538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.637268, 35.019421, 48.264755>,  <36.134544, 34.520073, 48.343357>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.637268, 35.019421, 48.264755> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.970116, 35.233814, 48.321732>,  <36.169827, 35.362450, 48.355919>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.970116, 35.233814, 48.321732>,  <35.637268, 35.019421, 48.264755>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.970116, 35.233814, 48.321732> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251378, 0.593459, -0.764602,
		-0.494350, 0.600436, 0.628566,
		0.832122, 0.535989, 0.142441,
		36.219753, 35.394611, 48.364464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.397316, 35.703243, 48.456718>,  <35.637268, 35.019421, 48.264755>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.397316, 35.703243, 48.456718> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.751137, 35.701916, 48.270145>,  <35.963428, 35.701118, 48.158203>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.751137, 35.701916, 48.270145>,  <35.397316, 35.703243, 48.456718>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.751137, 35.701916, 48.270145> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357609, 0.637201, -0.682709,
		0.299477, 0.770691, 0.562450,
		0.884551, -0.003319, -0.466433,
		36.016502, 35.700920, 48.130215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.422424, 36.402702, 48.148712>,  <35.397316, 35.703243, 48.456718>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.422424, 36.402702, 48.148712> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.729855, 36.235973, 47.954578>,  <35.914314, 36.135937, 47.838100>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.729855, 36.235973, 47.954578>,  <35.422424, 36.402702, 48.148712>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.729855, 36.235973, 47.954578> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193148, 0.572039, -0.797161,
		0.609902, 0.706422, 0.359149,
		0.768579, -0.416821, -0.485332,
		35.960430, 36.110928, 47.808979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.549725, 36.968605, 47.670322>,  <35.422424, 36.402702, 48.148712>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.549725, 36.968605, 47.670322> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.758339, 36.654522, 47.536785>,  <35.883507, 36.466072, 47.456661>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.758339, 36.654522, 47.536785>,  <35.549725, 36.968605, 47.670322>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.758339, 36.654522, 47.536785> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020077, 0.402456, -0.915219,
		0.852995, 0.470614, 0.225659,
		0.521532, -0.785208, -0.333844,
		35.914799, 36.418961, 47.436630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.134029, 37.250694, 47.235809>,  <35.549725, 36.968605, 47.670322>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.134029, 37.250694, 47.235809> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.070744, 36.883606, 47.090073>,  <36.032772, 36.663353, 47.002628>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.070744, 36.883606, 47.090073>,  <36.134029, 37.250694, 47.235809>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.070744, 36.883606, 47.090073> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119724, 0.384100, -0.915496,
		0.980119, -0.101228, -0.170646,
		-0.158219, -0.917725, -0.364344,
		36.023277, 36.608288, 46.980770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<45.410908, 28.528358, 33.238514> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.056053, 28.422310, 33.389618>,  <44.843140, 28.358681, 33.480282>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.056053, 28.422310, 33.389618>,  <45.410908, 28.528358, 33.238514>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.056053, 28.422310, 33.389618> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177016, 0.951397, 0.252011,
		-0.426217, 0.156696, -0.890946,
		-0.887133, -0.265123, 0.377764,
		44.789913, 28.342773, 33.502949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.882336, 29.034817, 32.978741>,  <45.410908, 28.528358, 33.238514>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.882336, 29.034817, 32.978741> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.735001, 28.848253, 33.300434>,  <44.646599, 28.736315, 33.493450>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.735001, 28.848253, 33.300434>,  <44.882336, 29.034817, 32.978741>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.735001, 28.848253, 33.300434> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392457, 0.862203, 0.320286,
		-0.842795, -0.197651, -0.500630,
		-0.368340, -0.466411, 0.804230,
		44.624500, 28.708330, 33.541702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.147217, 29.223835, 33.011208>,  <44.882336, 29.034817, 32.978741>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.147217, 29.223835, 33.011208> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.274525, 29.124996, 33.377300>,  <44.350910, 29.065693, 33.596954>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.274525, 29.124996, 33.377300>,  <44.147217, 29.223835, 33.011208>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.274525, 29.124996, 33.377300> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440222, 0.816506, 0.373528,
		-0.839590, -0.521787, 0.151089,
		0.318267, -0.247098, 0.915232,
		44.370007, 29.050867, 33.651871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.500168, 29.311558, 33.416119>,  <44.147217, 29.223835, 33.011208>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.500168, 29.311558, 33.416119> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.809818, 29.299347, 33.669037>,  <43.995609, 29.292021, 33.820789>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.809818, 29.299347, 33.669037>,  <43.500168, 29.311558, 33.416119>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.809818, 29.299347, 33.669037> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408761, 0.738581, 0.536108,
		-0.483367, -0.673473, 0.559277,
		0.774126, -0.030526, 0.632295,
		44.042057, 29.290190, 33.858727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.277000, 29.380804, 34.119873>,  <43.500168, 29.311558, 33.416119>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.277000, 29.380804, 34.119873> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.666637, 29.461203, 34.161331>,  <43.900421, 29.509441, 34.186207>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.666637, 29.461203, 34.161331>,  <43.277000, 29.380804, 34.119873>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.666637, 29.461203, 34.161331> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221904, 0.761165, 0.609415,
		0.043594, -0.616627, 0.786047,
		0.974094, 0.200994, 0.103650,
		43.958866, 29.521502, 34.192425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.330364, 29.433310, 34.811909>,  <43.277000, 29.380804, 34.119873>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.330364, 29.433310, 34.811909> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.654346, 29.615536, 34.664165>,  <43.848736, 29.724871, 34.575520>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.654346, 29.615536, 34.664165>,  <43.330364, 29.433310, 34.811909>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.654346, 29.615536, 34.664165> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295862, 0.861161, 0.413360,
		0.506391, -0.225525, 0.832290,
		0.809959, 0.455565, -0.369360,
		43.897335, 29.752205, 34.553356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.565701, 29.827885, 35.353195>,  <43.330364, 29.433310, 34.811909>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.565701, 29.827885, 35.353195> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.749779, 29.991982, 35.038254>,  <43.860226, 30.090441, 34.849289>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.749779, 29.991982, 35.038254>,  <43.565701, 29.827885, 35.353195>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.749779, 29.991982, 35.038254> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292744, 0.907357, 0.301669,
		0.838167, 0.091666, 0.537656,
		0.460193, 0.410244, -0.787351,
		43.887836, 30.115055, 34.802048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.988968, 30.436159, 35.585133>,  <43.565701, 29.827885, 35.353195>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.988968, 30.436159, 35.585133> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.884808, 30.501942, 35.204575>,  <43.822311, 30.541410, 34.976242>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.884808, 30.501942, 35.204575>,  <43.988968, 30.436159, 35.585133>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.884808, 30.501942, 35.204575> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143360, 0.967878, 0.206542,
		0.954799, 0.190174, -0.228457,
		-0.260398, 0.164454, -0.951393,
		43.806690, 30.551277, 34.919155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.592693, 30.748560, 35.357388>,  <43.988968, 30.436159, 35.585133>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.592693, 30.748560, 35.357388> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.273396, 30.842091, 35.135349>,  <44.081818, 30.898209, 35.002125>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.273396, 30.842091, 35.135349>,  <44.592693, 30.748560, 35.357388>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.273396, 30.842091, 35.135349> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050954, 0.944486, 0.324577,
		0.600176, 0.230807, -0.765844,
		-0.798243, 0.233826, -0.555097,
		44.033924, 30.912239, 34.968819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.659229, 31.422394, 34.917889>,  <44.592693, 30.748560, 35.357388>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.659229, 31.422394, 34.917889> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.264439, 31.359081, 34.929394>,  <44.027565, 31.321093, 34.936295>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.264439, 31.359081, 34.929394>,  <44.659229, 31.422394, 34.917889>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.264439, 31.359081, 34.929394> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151112, 0.973472, 0.171804,
		-0.055192, 0.165220, -0.984711,
		-0.986975, -0.158283, 0.028761,
		43.968346, 31.311596, 34.938023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.413944, 31.865234, 34.413155>,  <44.659229, 31.422394, 34.917889>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.413944, 31.865234, 34.413155> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.110249, 31.776943, 34.658051>,  <43.928032, 31.723969, 34.804989>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.110249, 31.776943, 34.658051>,  <44.413944, 31.865234, 34.413155>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.110249, 31.776943, 34.658051> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264145, 0.964274, 0.020076,
		-0.594799, -0.146478, -0.790417,
		-0.759238, -0.220726, 0.612240,
		43.882477, 31.710726, 34.841724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.877075, 32.261044, 34.237743>,  <44.413944, 31.865234, 34.413155>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.877075, 32.261044, 34.237743> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.734890, 32.167061, 34.599613>,  <43.649578, 32.110672, 34.816734>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.734890, 32.167061, 34.599613>,  <43.877075, 32.261044, 34.237743>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.734890, 32.167061, 34.599613> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190389, 0.965799, 0.176025,
		-0.915096, -0.109671, -0.388035,
		-0.355459, -0.234957, 0.904679,
		43.628254, 32.096573, 34.871017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.247478, 32.664562, 34.249130>,  <43.877075, 32.261044, 34.237743>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.247478, 32.664562, 34.249130> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.383846, 32.586117, 34.616894>,  <43.465668, 32.539047, 34.837551>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.383846, 32.586117, 34.616894>,  <43.247478, 32.664562, 34.249130>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.383846, 32.586117, 34.616894> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175180, 0.947616, 0.267089,
		-0.923628, -0.252117, 0.288702,
		0.340917, -0.196116, 0.919410,
		43.486122, 32.527283, 34.892715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.810413, 33.063156, 34.716038>,  <43.247478, 32.664562, 34.249130>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.810413, 33.063156, 34.716038> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.131306, 32.981018, 34.940273>,  <43.323841, 32.931736, 35.074814>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.131306, 32.981018, 34.940273>,  <42.810413, 33.063156, 34.716038>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.131306, 32.981018, 34.940273> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071871, 0.898940, 0.432136,
		-0.592675, -0.386962, 0.706397,
		0.802229, -0.205347, 0.560591,
		43.371975, 32.919415, 35.108452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.692314, 33.258030, 35.435444>,  <42.810413, 33.063156, 34.716038>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.692314, 33.258030, 35.435444> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.091370, 33.231262, 35.441723>,  <43.330803, 33.215202, 35.445492>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.091370, 33.231262, 35.441723>,  <42.692314, 33.258030, 35.435444>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.091370, 33.231262, 35.441723> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056019, 0.923910, 0.378488,
		-0.039831, -0.376713, 0.925473,
		0.997635, -0.066920, 0.015697,
		43.390659, 33.211185, 35.446430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.896809, 33.485298, 36.130600>,  <42.692314, 33.258030, 35.435444>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.896809, 33.485298, 36.130600> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.207287, 33.526970, 35.881866>,  <43.393574, 33.551975, 35.732628>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.207287, 33.526970, 35.881866>,  <42.896809, 33.485298, 36.130600>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.207287, 33.526970, 35.881866> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080839, 0.961669, 0.262027,
		0.625294, -0.253651, 0.738017,
		0.776191, 0.104183, -0.621831,
		43.440144, 33.558224, 35.695316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.286694, 33.946285, 36.490410>,  <42.896809, 33.485298, 36.130600>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.286694, 33.946285, 36.490410> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.445957, 33.943542, 36.123493>,  <43.541515, 33.941898, 35.903343>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.445957, 33.943542, 36.123493>,  <43.286694, 33.946285, 36.490410>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.445957, 33.943542, 36.123493> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294203, 0.948101, 0.120619,
		0.868856, -0.317896, 0.379514,
		0.398162, -0.006854, -0.917289,
		43.565407, 33.941486, 35.848305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.766979, 34.555801, 36.446762>,  <43.286694, 33.946285, 36.490410>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.766979, 34.555801, 36.446762> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.756481, 34.443863, 36.062889>,  <43.750183, 34.376698, 35.832565>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.756481, 34.443863, 36.062889>,  <43.766979, 34.555801, 36.446762>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.756481, 34.443863, 36.062889> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239653, 0.930258, -0.277824,
		0.970504, -0.237283, 0.042650,
		-0.026247, -0.279851, -0.959685,
		43.748608, 34.359909, 35.774982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.371246, 34.738174, 36.174168>,  <43.766979, 34.555801, 36.446762>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.371246, 34.738174, 36.174168> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.085464, 34.713692, 35.895367>,  <43.913994, 34.699001, 35.728088>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.085464, 34.713692, 35.895367>,  <44.371246, 34.738174, 36.174168>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.085464, 34.713692, 35.895367> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133830, 0.965820, -0.221995,
		0.686762, -0.251884, -0.681844,
		-0.714456, -0.061207, -0.696998,
		43.871128, 34.695332, 35.686268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.561069, 35.114868, 35.496639>,  <44.371246, 34.738174, 36.174168>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.561069, 35.114868, 35.496639> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.162155, 35.098648, 35.472088>,  <43.922806, 35.088917, 35.457355>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.162155, 35.098648, 35.472088>,  <44.561069, 35.114868, 35.496639>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.162155, 35.098648, 35.472088> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028230, 0.981442, -0.189669,
		0.067932, -0.187423, -0.979927,
		-0.997290, -0.040548, -0.061380,
		43.862968, 35.086483, 35.453674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.473297, 35.543762, 34.975090>,  <44.561069, 35.114868, 35.496639>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.473297, 35.543762, 34.975090> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.122639, 35.509537, 35.164474>,  <43.912243, 35.489002, 35.278103>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.122639, 35.509537, 35.164474>,  <44.473297, 35.543762, 34.975090>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.122639, 35.509537, 35.164474> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095646, 0.995411, 0.002793,
		-0.471525, -0.042836, -0.880812,
		-0.876650, -0.085563, 0.473458,
		43.859642, 35.483868, 35.306511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.551014, 34.891403, 34.658520>,  <44.473297, 35.543762, 34.975090>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.551014, 34.891403, 34.658520> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.875454, 35.120384, 34.610477>,  <45.070118, 35.257771, 34.581650>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.875454, 35.120384, 34.610477>,  <44.551014, 34.891403, 34.658520>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.875454, 35.120384, 34.610477> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422910, -0.715806, -0.555670,
		-0.404068, 0.399906, -0.822681,
		0.811096, 0.572449, -0.120110,
		45.118782, 35.292118, 34.574444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.615166, 34.931686, 33.897530>,  <44.551014, 34.891403, 34.658520>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.615166, 34.931686, 33.897530> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.964798, 35.009926, 34.075394>,  <45.174576, 35.056870, 34.182114>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.964798, 35.009926, 34.075394>,  <44.615166, 34.931686, 33.897530>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.964798, 35.009926, 34.075394> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481464, -0.470543, -0.739447,
		0.064600, 0.860425, -0.505466,
		0.874082, 0.195596, 0.444661,
		45.227024, 35.068604, 34.208794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.056202, 35.205307, 33.357147>,  <44.615166, 34.931686, 33.897530>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.056202, 35.205307, 33.357147> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.273537, 35.022388, 33.638760>,  <45.403938, 34.912636, 33.807728>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.273537, 35.022388, 33.638760>,  <45.056202, 35.205307, 33.357147>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.273537, 35.022388, 33.638760> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469401, -0.529794, -0.706386,
		0.696020, 0.714281, -0.073202,
		0.543340, -0.457298, 0.704032,
		45.436539, 34.885201, 33.849968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.680500, 35.213383, 33.108707>,  <45.056202, 35.205307, 33.357147>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.680500, 35.213383, 33.108707> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.698746, 34.925198, 33.385506>,  <45.709694, 34.752285, 33.551582>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.698746, 34.925198, 33.385506>,  <45.680500, 35.213383, 33.108707>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.698746, 34.925198, 33.385506> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517121, -0.575645, -0.633418,
		0.854696, 0.386735, 0.346310,
		0.045613, -0.720464, 0.691991,
		45.712429, 34.709057, 33.593102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.406143, 34.967499, 33.140495>,  <45.680500, 35.213383, 33.108707>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.406143, 34.967499, 33.140495> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.195499, 34.663090, 33.292030>,  <46.069115, 34.480442, 33.382954>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.195499, 34.663090, 33.292030>,  <46.406143, 34.967499, 33.140495>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.195499, 34.663090, 33.292030> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538936, -0.643508, -0.543548,
		0.657442, -0.082067, 0.749023,
		-0.526610, -0.761027, 0.378841,
		46.037518, 34.434780, 33.405682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.890343, 34.584915, 33.273491>,  <46.406143, 34.967499, 33.140495>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.890343, 34.584915, 33.273491> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.572563, 34.342087, 33.280571>,  <46.381893, 34.196392, 33.284821>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.572563, 34.342087, 33.280571>,  <46.890343, 34.584915, 33.273491>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.572563, 34.342087, 33.280571> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539836, -0.719222, -0.437376,
		0.278247, -0.337919, 0.899104,
		-0.794453, -0.607067, 0.017701,
		46.334229, 34.159966, 33.285881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.174923, 33.972012, 33.391754>,  <46.890343, 34.584915, 33.273491>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.174923, 33.972012, 33.391754> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.805641, 33.895275, 33.258556>,  <46.584072, 33.849232, 33.178638>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.805641, 33.895275, 33.258556>,  <47.174923, 33.972012, 33.391754>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.805641, 33.895275, 33.258556> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358604, -0.741569, -0.566990,
		-0.138163, -0.642862, 0.753418,
		-0.923208, -0.191842, -0.332991,
		46.528679, 33.837723, 33.158661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.979610, 33.236183, 33.607555>,  <47.174923, 33.972012, 33.391754>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.979610, 33.236183, 33.607555> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.764347, 33.343201, 33.287853>,  <46.635189, 33.407410, 33.096031>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.764347, 33.343201, 33.287853>,  <46.979610, 33.236183, 33.607555>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.764347, 33.343201, 33.287853> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172373, -0.893304, -0.415085,
		-0.825031, -0.361150, 0.434619,
		-0.538155, 0.267542, -0.799256,
		46.602901, 33.423462, 33.048077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.506973, 32.654484, 33.498016>,  <46.979610, 33.236183, 33.607555>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.506973, 32.654484, 33.498016> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.508801, 32.872311, 33.162533>,  <46.509895, 33.003006, 32.961243>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.508801, 32.872311, 33.162533>,  <46.506973, 32.654484, 33.498016>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.508801, 32.872311, 33.162533> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104690, -0.834366, -0.541178,
		-0.994494, -0.085331, -0.060823,
		0.004569, 0.544566, -0.838705,
		46.510170, 33.035679, 32.910923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.945011, 32.281914, 33.059464>,  <46.506973, 32.654484, 33.498016>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.945011, 32.281914, 33.059464> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.148975, 32.515678, 32.806969>,  <46.271355, 32.655937, 32.655472>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.148975, 32.515678, 32.806969>,  <45.945011, 32.281914, 33.059464>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.148975, 32.515678, 32.806969> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242532, -0.801699, -0.546312,
		-0.825328, 0.125478, -0.550535,
		0.509914, 0.584409, -0.631232,
		46.301949, 32.691002, 32.617599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.715996, 32.117111, 32.411808>,  <45.945011, 32.281914, 33.059464>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.715996, 32.117111, 32.411808> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.081631, 32.263912, 32.342819>,  <46.301014, 32.351994, 32.301426>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.081631, 32.263912, 32.342819>,  <45.715996, 32.117111, 32.411808>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.081631, 32.263912, 32.342819> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222732, -0.809827, -0.542743,
		-0.338863, 0.457700, -0.821999,
		0.914091, 0.367001, -0.172476,
		46.355858, 32.374012, 32.291077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.858025, 32.129238, 31.614597>,  <45.715996, 32.117111, 32.411808>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.858025, 32.129238, 31.614597> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.206520, 32.103016, 31.809179>,  <46.415619, 32.087284, 31.925928>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.206520, 32.103016, 31.809179>,  <45.858025, 32.129238, 31.614597>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.206520, 32.103016, 31.809179> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238466, -0.809701, -0.536207,
		0.429034, 0.583170, -0.689814,
		0.871243, -0.065554, 0.486455,
		46.467892, 32.083351, 31.955116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.216934, 31.999826, 31.135649>,  <45.858025, 32.129238, 31.614597>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.216934, 31.999826, 31.135649> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.456684, 31.917547, 31.445084>,  <46.600536, 31.868179, 31.630745>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.456684, 31.917547, 31.445084>,  <46.216934, 31.999826, 31.135649>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.456684, 31.917547, 31.445084> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301392, -0.837306, -0.456160,
		0.741558, 0.506565, -0.439867,
		0.599378, -0.205697, 0.773586,
		46.636497, 31.855839, 31.677160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.754498, 31.649815, 30.829018>,  <46.216934, 31.999826, 31.135649>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.754498, 31.649815, 30.829018> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.831554, 31.575737, 31.214472>,  <46.877789, 31.531290, 31.445744>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.831554, 31.575737, 31.214472>,  <46.754498, 31.649815, 30.829018>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.831554, 31.575737, 31.214472> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267448, -0.934941, -0.233145,
		0.944118, 0.302637, -0.130584,
		0.192646, -0.185193, 0.963634,
		46.889347, 31.520180, 31.503563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.484131, 31.305363, 30.920063>,  <46.754498, 31.649815, 30.829018>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.484131, 31.305363, 30.920063> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.238346, 31.180958, 31.210087>,  <47.090878, 31.106316, 31.384102>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.238346, 31.180958, 31.210087>,  <47.484131, 31.305363, 30.920063>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.238346, 31.180958, 31.210087> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094660, -0.941444, -0.323608,
		0.783250, -0.130209, 0.607918,
		-0.614458, -0.311012, 0.725061,
		47.054008, 31.087654, 31.427605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.854530, 30.703747, 31.258717>,  <47.484131, 31.305363, 30.920063>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.854530, 30.703747, 31.258717> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.478806, 30.680962, 31.394041>,  <47.253372, 30.667290, 31.475235>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.478806, 30.680962, 31.394041>,  <47.854530, 30.703747, 31.258717>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.478806, 30.680962, 31.394041> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006498, -0.982989, -0.183551,
		0.343011, -0.174609, 0.922960,
		-0.939309, -0.056962, 0.338311,
		47.197014, 30.663874, 31.495535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.879673, 30.023376, 31.567034>,  <47.854530, 30.703747, 31.258717>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.879673, 30.023376, 31.567034> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.490738, 30.115396, 31.550850>,  <47.257378, 30.170609, 31.541140>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.490738, 30.115396, 31.550850>,  <47.879673, 30.023376, 31.567034>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.490738, 30.115396, 31.550850> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221577, -0.963238, -0.151907,
		-0.073920, -0.138739, 0.987566,
		-0.972337, 0.230051, -0.040461,
		47.199036, 30.184412, 31.538712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.517841, 29.603991, 32.065598>,  <47.879673, 30.023376, 31.567034>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.517841, 29.603991, 32.065598> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.252922, 29.712097, 31.786079>,  <47.093971, 29.776960, 31.618368>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.252922, 29.712097, 31.786079>,  <47.517841, 29.603991, 32.065598>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.252922, 29.712097, 31.786079> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303388, -0.949529, -0.079696,
		-0.685066, 0.159224, 0.710867,
		-0.662299, 0.270265, -0.698796,
		47.054234, 29.793177, 31.576441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.911118, 29.167133, 32.157379>,  <47.517841, 29.603991, 32.065598>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.911118, 29.167133, 32.157379> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.912674, 29.301352, 31.780573>,  <46.913609, 29.381882, 31.554489>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.912674, 29.301352, 31.780573>,  <46.911118, 29.167133, 32.157379>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.912674, 29.301352, 31.780573> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366524, -0.875987, -0.313539,
		-0.930400, 0.346491, 0.119577,
		0.003890, 0.335545, -0.942016,
		46.913841, 29.402016, 31.497969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.323425, 29.009140, 31.878265>,  <46.911118, 29.167133, 32.157379>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.323425, 29.009140, 31.878265> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.558208, 29.064459, 31.559177>,  <46.699078, 29.097651, 31.367723>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.558208, 29.064459, 31.559177>,  <46.323425, 29.009140, 31.878265>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.558208, 29.064459, 31.559177> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435287, -0.776875, -0.454963,
		-0.682650, 0.614280, -0.395790,
		0.586954, 0.138298, -0.797721,
		46.734295, 29.105947, 31.319860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.844490, 28.888592, 31.354630>,  <46.323425, 29.009140, 31.878265>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.844490, 28.888592, 31.354630> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.211784, 28.825996, 31.209103>,  <46.432159, 28.788439, 31.121786>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.211784, 28.825996, 31.209103>,  <45.844490, 28.888592, 31.354630>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.211784, 28.825996, 31.209103> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343703, -0.771284, -0.535714,
		-0.196772, 0.616954, -0.762003,
		0.918232, -0.156489, -0.363816,
		46.487255, 28.779049, 31.099958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<39.148113, 37.308681, 41.959248> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.792355, 37.126656, 41.941849>,  <38.578899, 37.017441, 41.931408>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.792355, 37.126656, 41.941849>,  <39.148113, 37.308681, 41.959248>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.792355, 37.126656, 41.941849> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132983, -0.166520, -0.977029,
		0.437367, -0.874750, 0.208618,
		-0.889396, -0.455064, -0.043497,
		38.525536, 36.990135, 41.928799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.315376, 36.727123, 41.495834>,  <39.148113, 37.308681, 41.959248>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.315376, 36.727123, 41.495834> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.919495, 36.782253, 41.480427>,  <38.681965, 36.815331, 41.471184>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.919495, 36.782253, 41.480427>,  <39.315376, 36.727123, 41.495834>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.919495, 36.782253, 41.480427> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024740, -0.100315, -0.994648,
		-0.140961, -0.985362, 0.095872,
		-0.989706, 0.137835, -0.038518,
		38.622581, 36.823601, 41.468872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.106655, 36.253456, 40.901424>,  <39.315376, 36.727123, 41.495834>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.106655, 36.253456, 40.901424> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.815117, 36.513599, 40.987053>,  <38.640194, 36.669685, 41.038429>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.815117, 36.513599, 40.987053>,  <39.106655, 36.253456, 40.901424>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.815117, 36.513599, 40.987053> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079383, 0.230279, -0.969881,
		-0.680062, -0.723885, -0.116210,
		-0.728844, 0.650355, 0.214068,
		38.596462, 36.708706, 41.051273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.655628, 36.101353, 40.309978>,  <39.106655, 36.253456, 40.901424>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.655628, 36.101353, 40.309978> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.585716, 36.458260, 40.476498>,  <38.543770, 36.672405, 40.576408>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.585716, 36.458260, 40.476498>,  <38.655628, 36.101353, 40.309978>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.585716, 36.458260, 40.476498> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043954, 0.415318, -0.908614,
		-0.983625, -0.177108, -0.033371,
		-0.174783, 0.892269, 0.416302,
		38.533283, 36.725941, 40.601387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.932213, 36.292812, 40.028667>,  <38.655628, 36.101353, 40.309978>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.932213, 36.292812, 40.028667> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.168812, 36.598072, 40.132771>,  <38.310772, 36.781227, 40.195232>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.168812, 36.598072, 40.132771>,  <37.932213, 36.292812, 40.028667>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.168812, 36.598072, 40.132771> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130716, 0.409269, -0.903002,
		-0.795641, 0.500103, 0.341837,
		0.591497, 0.763148, 0.260260,
		38.346260, 36.827015, 40.210850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.531223, 36.901112, 39.678108>,  <37.932213, 36.292812, 40.028667>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.531223, 36.901112, 39.678108> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.903458, 37.030247, 39.747139>,  <38.126801, 37.107727, 39.788559>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.903458, 37.030247, 39.747139>,  <37.531223, 36.901112, 39.678108>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.903458, 37.030247, 39.747139> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047068, 0.573043, -0.818173,
		-0.363028, 0.753260, 0.548462,
		0.930589, 0.322834, 0.172576,
		38.182632, 37.127098, 39.798912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.540813, 37.635483, 39.711971>,  <37.531223, 36.901112, 39.678108>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.540813, 37.635483, 39.711971> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.920109, 37.540180, 39.627991>,  <38.147686, 37.482998, 39.577602>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.920109, 37.540180, 39.627991>,  <37.540813, 37.635483, 39.711971>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.920109, 37.540180, 39.627991> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022920, 0.710757, -0.703064,
		0.316736, 0.661859, 0.679427,
		0.948237, -0.238258, -0.209953,
		38.204578, 37.468704, 39.565006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.833141, 38.279579, 39.473484>,  <37.540813, 37.635483, 39.711971>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.833141, 38.279579, 39.473484> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.097164, 38.010204, 39.340332>,  <38.255577, 37.848579, 39.260441>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.097164, 38.010204, 39.340332>,  <37.833141, 38.279579, 39.473484>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.097164, 38.010204, 39.340332> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167994, 0.299576, -0.939166,
		0.732194, 0.675821, 0.084602,
		0.660052, -0.673439, -0.332882,
		38.295181, 37.808174, 39.240467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.299187, 38.626587, 39.073448>,  <37.833141, 38.279579, 39.473484>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.299187, 38.626587, 39.073448> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.303879, 38.250462, 38.937401>,  <38.306694, 38.024788, 38.855770>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.303879, 38.250462, 38.937401>,  <38.299187, 38.626587, 39.073448>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.303879, 38.250462, 38.937401> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188931, 0.331934, -0.924189,
		0.981920, 0.075096, -0.173761,
		0.011726, -0.940309, -0.340120,
		38.307396, 37.968369, 38.835365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.794357, 38.601749, 38.574917>,  <38.299187, 38.626587, 39.073448>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.794357, 38.601749, 38.574917> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.590187, 38.277485, 38.460167>,  <38.467686, 38.082928, 38.391315>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.590187, 38.277485, 38.460167>,  <38.794357, 38.601749, 38.574917>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.590187, 38.277485, 38.460167> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182459, 0.428107, -0.885118,
		0.840343, -0.399442, -0.366429,
		-0.510424, -0.810661, -0.286875,
		38.437061, 38.034286, 38.374104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.885071, 38.528492, 37.822018>,  <38.794357, 38.601749, 38.574917>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.885071, 38.528492, 37.822018> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.556385, 38.308380, 37.881317>,  <38.359173, 38.176311, 37.916897>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.556385, 38.308380, 37.881317>,  <38.885071, 38.528492, 37.822018>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.556385, 38.308380, 37.881317> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376197, 0.328337, -0.866413,
		0.428096, -0.767713, -0.476813,
		-0.821711, -0.550283, 0.148251,
		38.309872, 38.143295, 37.925793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.701077, 38.298241, 37.176952>,  <38.885071, 38.528492, 37.822018>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.701077, 38.298241, 37.176952> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.364101, 38.232838, 37.382309>,  <38.161919, 38.193596, 37.505524>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.364101, 38.232838, 37.382309>,  <38.701077, 38.298241, 37.176952>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.364101, 38.232838, 37.382309> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538797, 0.259212, -0.801566,
		-0.002015, -0.951879, -0.306466,
		-0.842433, -0.163508, 0.513392,
		38.111370, 38.183784, 37.536327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.271374, 37.779408, 36.820339>,  <38.701077, 38.298241, 37.176952>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.271374, 37.779408, 36.820339> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.094166, 38.073177, 37.025997>,  <37.987839, 38.249439, 37.149391>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.094166, 38.073177, 37.025997>,  <38.271374, 37.779408, 36.820339>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.094166, 38.073177, 37.025997> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462090, 0.304382, -0.832961,
		-0.768247, -0.606602, 0.204525,
		-0.443022, 0.734429, 0.514145,
		37.961258, 38.293507, 37.180241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.988853, 37.465134, 36.835831>,  <38.271374, 37.779408, 36.820339>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.988853, 37.465134, 36.835831> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.100525, 37.656860, 37.168652>,  <39.167526, 37.771896, 37.368343>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.100525, 37.656860, 37.168652>,  <38.988853, 37.465134, 36.835831>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.100525, 37.656860, 37.168652> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221685, -0.810926, 0.541531,
		0.934300, -0.335637, -0.120133,
		0.279177, 0.479320, 0.832053,
		39.184277, 37.800655, 37.418266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.371906, 37.058952, 37.136028>,  <38.988853, 37.465134, 36.835831>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.371906, 37.058952, 37.136028> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.209187, 37.294178, 37.415653>,  <39.111553, 37.435314, 37.583427>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.209187, 37.294178, 37.415653>,  <39.371906, 37.058952, 37.136028>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.209187, 37.294178, 37.415653> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373075, -0.805467, 0.460476,
		0.833864, -0.073481, 0.547057,
		-0.406800, 0.588068, 0.699064,
		39.087147, 37.470600, 37.625374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.973709, 36.601940, 37.092953>,  <39.371906, 37.058952, 37.136028>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.973709, 36.601940, 37.092953> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.107948, 36.225250, 37.083698>,  <40.188492, 35.999237, 37.078144>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.107948, 36.225250, 37.083698>,  <39.973709, 36.601940, 37.092953>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.107948, 36.225250, 37.083698> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.618146, -0.238689, 0.748948,
		-0.710824, -0.237042, -0.662224,
		0.335597, -0.941721, -0.023139,
		40.208626, 35.942734, 37.076756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.433189, 36.116821, 37.054615>,  <39.973709, 36.601940, 37.092953>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.433189, 36.116821, 37.054615> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.738724, 35.881641, 37.161102>,  <39.922043, 35.740532, 37.224995>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.738724, 35.881641, 37.161102>,  <39.433189, 36.116821, 37.054615>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.738724, 35.881641, 37.161102> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497311, -0.273232, 0.823424,
		-0.411393, -0.761352, -0.501098,
		0.763831, -0.587952, 0.266223,
		39.967873, 35.705257, 37.240971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.048424, 35.646446, 37.307602>,  <39.433189, 36.116821, 37.054615>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.048424, 35.646446, 37.307602> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.420086, 35.588795, 37.443783>,  <39.643082, 35.554203, 37.525490>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.420086, 35.588795, 37.443783>,  <39.048424, 35.646446, 37.307602>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.420086, 35.588795, 37.443783> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368893, -0.300581, 0.879528,
		-0.024431, -0.942804, -0.332453,
		0.929151, -0.144127, 0.340450,
		39.698830, 35.545555, 37.545918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.009907, 34.918472, 37.638042>,  <39.048424, 35.646446, 37.307602>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.009907, 34.918472, 37.638042> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.310806, 35.134876, 37.788475>,  <39.491344, 35.264717, 37.878735>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.310806, 35.134876, 37.788475>,  <39.009907, 34.918472, 37.638042>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.310806, 35.134876, 37.788475> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170690, -0.391287, 0.904301,
		0.636387, -0.744451, -0.202001,
		0.752248, 0.541005, 0.376080,
		39.536480, 35.297176, 37.901299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.161087, 34.445667, 38.189384>,  <39.009907, 34.918472, 37.638042>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.161087, 34.445667, 38.189384> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.390926, 34.769379, 38.238228>,  <39.528831, 34.963604, 38.267536>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.390926, 34.769379, 38.238228>,  <39.161087, 34.445667, 38.189384>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.390926, 34.769379, 38.238228> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126373, -0.235140, 0.963711,
		0.808621, -0.538314, -0.237381,
		0.574597, 0.809276, 0.122110,
		39.563305, 35.012161, 38.274860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.831432, 34.224033, 38.422817>,  <39.161087, 34.445667, 38.189384>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.831432, 34.224033, 38.422817> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.752823, 34.594814, 38.550659>,  <39.705658, 34.817284, 38.627365>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.752823, 34.594814, 38.550659>,  <39.831432, 34.224033, 38.422817>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.752823, 34.594814, 38.550659> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010503, -0.327929, 0.944644,
		0.980443, 0.182287, 0.074182,
		-0.196523, 0.926949, 0.319601,
		39.693867, 34.872898, 38.646538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.394661, 34.368313, 38.934032>,  <39.831432, 34.224033, 38.422817>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.394661, 34.368313, 38.934032> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.079277, 34.606934, 38.993980>,  <39.890049, 34.750107, 39.029949>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.079277, 34.606934, 38.993980>,  <40.394661, 34.368313, 38.934032>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.079277, 34.606934, 38.993980> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071089, -0.153645, 0.985565,
		0.610967, 0.787731, 0.078735,
		-0.788458, 0.596550, 0.149871,
		39.842739, 34.785900, 39.038940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.691757, 34.927349, 39.344151>,  <40.394661, 34.368313, 38.934032>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.691757, 34.927349, 39.344151> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.296570, 34.875950, 39.378590>,  <40.059460, 34.845108, 39.399254>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.296570, 34.875950, 39.378590>,  <40.691757, 34.927349, 39.344151>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.296570, 34.875950, 39.378590> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110396, -0.195912, 0.974388,
		-0.108343, 0.972165, 0.207740,
		-0.987965, -0.128502, 0.086097,
		40.000179, 34.837399, 39.404419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.601944, 35.110844, 40.057072>,  <40.691757, 34.927349, 39.344151>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.601944, 35.110844, 40.057072> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.235470, 34.965939, 39.988514>,  <40.015587, 34.878994, 39.947380>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.235470, 34.965939, 39.988514>,  <40.601944, 35.110844, 40.057072>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.235470, 34.965939, 39.988514> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154472, -0.075398, 0.985116,
		-0.369793, 0.929022, 0.013119,
		-0.916183, -0.362262, -0.171390,
		39.960613, 34.857262, 39.937096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.259689, 35.415455, 40.572216>,  <40.601944, 35.110844, 40.057072>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.259689, 35.415455, 40.572216> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.066093, 35.081173, 40.468407>,  <39.949936, 34.880604, 40.406120>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.066093, 35.081173, 40.468407>,  <40.259689, 35.415455, 40.572216>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.066093, 35.081173, 40.468407> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029382, -0.311925, 0.949653,
		-0.874581, 0.451996, 0.175523,
		-0.483988, -0.835705, -0.259523,
		39.920898, 34.830460, 40.390549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.807716, 35.315235, 41.088860>,  <40.259689, 35.415455, 40.572216>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.807716, 35.315235, 41.088860> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.786766, 34.957020, 40.912098>,  <39.774197, 34.742092, 40.806042>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.786766, 34.957020, 40.912098>,  <39.807716, 35.315235, 41.088860>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.786766, 34.957020, 40.912098> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016886, -0.441649, 0.897029,
		-0.998485, 0.054443, 0.008009,
		-0.052374, -0.895535, -0.441899,
		39.771053, 34.688358, 40.779530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.293053, 34.962582, 41.395061>,  <39.807716, 35.315235, 41.088860>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.293053, 34.962582, 41.395061> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.544640, 34.688480, 41.248188>,  <39.695591, 34.524021, 41.160065>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.544640, 34.688480, 41.248188>,  <39.293053, 34.962582, 41.395061>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.544640, 34.688480, 41.248188> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044234, -0.440003, 0.896907,
		-0.776169, -0.580371, -0.246438,
		0.628971, -0.685250, -0.367188,
		39.733330, 34.482906, 41.138031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.092690, 34.309029, 41.614330>,  <39.293053, 34.962582, 41.395061>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.092690, 34.309029, 41.614330> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.458954, 34.190826, 41.505333>,  <39.678711, 34.119907, 41.439934>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.458954, 34.190826, 41.505333>,  <39.092690, 34.309029, 41.614330>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.458954, 34.190826, 41.505333> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199630, -0.254079, 0.946357,
		-0.348886, -0.920935, -0.173658,
		0.915657, -0.295503, -0.272491,
		39.733650, 34.102177, 41.423584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.862011, 33.769188, 41.228428>,  <39.092690, 34.309029, 41.614330>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.862011, 33.769188, 41.228428> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.611061, 33.458252, 41.246925>,  <38.460491, 33.271690, 41.258026>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.611061, 33.458252, 41.246925>,  <38.862011, 33.769188, 41.228428>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.611061, 33.458252, 41.246925> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268378, 0.160088, -0.949919,
		0.731006, -0.608371, -0.309057,
		-0.627379, -0.777340, 0.046248,
		38.422848, 33.225052, 41.260799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.891754, 33.485626, 40.502129>,  <38.862011, 33.769188, 41.228428>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.891754, 33.485626, 40.502129> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.547981, 33.347713, 40.653126>,  <38.341717, 33.264965, 40.743725>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.547981, 33.347713, 40.653126>,  <38.891754, 33.485626, 40.502129>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.547981, 33.347713, 40.653126> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456669, 0.185774, -0.870024,
		0.229842, -0.920115, -0.317112,
		-0.859434, -0.344784, 0.377490,
		38.290150, 33.244278, 40.766373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.575005, 32.905506, 40.012634>,  <38.891754, 33.485626, 40.502129>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.575005, 32.905506, 40.012634> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.279953, 33.032314, 40.251099>,  <38.102921, 33.108398, 40.394176>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.279953, 33.032314, 40.251099>,  <38.575005, 32.905506, 40.012634>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.279953, 33.032314, 40.251099> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555109, 0.217920, -0.802723,
		-0.384392, -0.923044, 0.015235,
		-0.737629, 0.317018, 0.596157,
		38.058662, 33.127419, 40.429947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.036797, 32.667561, 39.695244>,  <38.575005, 32.905506, 40.012634>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.036797, 32.667561, 39.695244> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.898556, 32.951694, 39.940517>,  <37.815613, 33.122173, 40.087681>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.898556, 32.951694, 39.940517>,  <38.036797, 32.667561, 39.695244>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.898556, 32.951694, 39.940517> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527727, 0.393194, -0.752929,
		-0.775928, -0.583805, 0.238973,
		-0.345601, 0.710331, 0.613180,
		37.794876, 33.164795, 40.124470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.367165, 32.600716, 39.533806>,  <38.036797, 32.667561, 39.695244>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.367165, 32.600716, 39.533806> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.403446, 32.958496, 39.708954>,  <37.425213, 33.173164, 39.814041>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.403446, 32.958496, 39.708954>,  <37.367165, 32.600716, 39.533806>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.403446, 32.958496, 39.708954> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.651114, 0.385952, -0.653523,
		-0.753541, -0.225827, 0.617396,
		0.090702, 0.894451, 0.437870,
		37.430656, 33.226833, 39.840313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.666191, 32.832317, 39.615498>,  <37.367165, 32.600716, 39.533806>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.666191, 32.832317, 39.615498> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.900326, 33.156288, 39.630398>,  <37.040806, 33.350670, 39.639336>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.900326, 33.156288, 39.630398>,  <36.666191, 32.832317, 39.615498>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.900326, 33.156288, 39.630398> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.609180, 0.469644, -0.639010,
		-0.535048, 0.351348, 0.768296,
		0.585340, 0.809932, 0.037248,
		37.075928, 33.399269, 39.641571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.284706, 33.448223, 39.800060>,  <36.666191, 32.832317, 39.615498>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.284706, 33.448223, 39.800060> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.603840, 33.601761, 39.614105>,  <36.795322, 33.693882, 39.502533>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.603840, 33.601761, 39.614105>,  <36.284706, 33.448223, 39.800060>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.603840, 33.601761, 39.614105> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.602778, 0.494281, -0.626374,
		-0.010645, 0.779968, 0.625728,
		0.797838, 0.383843, -0.464886,
		36.843193, 33.716915, 39.474640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.198181, 34.161541, 39.801701>,  <36.284706, 33.448223, 39.800060>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.198181, 34.161541, 39.801701> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.489513, 34.113453, 39.531864>,  <36.664314, 34.084602, 39.369961>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.489513, 34.113453, 39.531864>,  <36.198181, 34.161541, 39.801701>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.489513, 34.113453, 39.531864> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463199, 0.639110, -0.613991,
		0.504951, 0.759662, 0.409802,
		0.728335, -0.120216, -0.674594,
		36.708015, 34.077389, 39.329487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.411667, 34.923748, 39.519802>,  <36.198181, 34.161541, 39.801701>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.411667, 34.923748, 39.519802> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.554527, 34.652607, 39.262756>,  <36.640244, 34.489922, 39.108528>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.554527, 34.652607, 39.262756>,  <36.411667, 34.923748, 39.519802>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.554527, 34.652607, 39.262756> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240760, 0.597933, -0.764533,
		0.902485, 0.427769, 0.050351,
		0.357150, -0.677857, -0.642615,
		36.661671, 34.449249, 39.069973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.824806, 35.285458, 38.917969>,  <36.411667, 34.923748, 39.519802>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.824806, 35.285458, 38.917969> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.698620, 34.932911, 38.777302>,  <36.622910, 34.721382, 38.692902>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.698620, 34.932911, 38.777302>,  <36.824806, 35.285458, 38.917969>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.698620, 34.932911, 38.777302> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354398, 0.453203, -0.817930,
		0.880274, -0.133400, -0.455326,
		-0.315467, -0.881369, -0.351667,
		36.603981, 34.668499, 38.671803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.747807, 35.395908, 38.245831>,  <36.824806, 35.285458, 38.917969>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.747807, 35.395908, 38.245831> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.577473, 35.034054, 38.252670>,  <36.475273, 34.816940, 38.256775>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.577473, 35.034054, 38.252670>,  <36.747807, 35.395908, 38.245831>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.577473, 35.034054, 38.252670> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483646, 0.211607, -0.849299,
		0.764690, -0.369934, -0.527635,
		-0.425835, -0.904639, 0.017103,
		36.449722, 34.762661, 38.257801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.910233, 35.075974, 37.571480>,  <36.747807, 35.395908, 38.245831>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.910233, 35.075974, 37.571480> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.576832, 34.902996, 37.709042>,  <36.376793, 34.799210, 37.791580>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.576832, 34.902996, 37.709042>,  <36.910233, 35.075974, 37.571480>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.576832, 34.902996, 37.709042> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403004, 0.050028, -0.913830,
		0.377972, -0.900273, -0.215974,
		-0.833502, -0.432441, 0.343904,
		36.326782, 34.773266, 37.812214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<39.724945, 31.184526, 44.390362> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.332951, 31.260523, 44.414127>,  <39.097755, 31.306120, 44.428387>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.332951, 31.260523, 44.414127>,  <39.724945, 31.184526, 44.390362>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.332951, 31.260523, 44.414127> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035042, 0.129165, -0.991004,
		-0.195956, -0.973252, -0.119923,
		-0.979986, 0.189991, 0.059415,
		39.038956, 31.317520, 44.431953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.510319, 31.098780, 43.692654>,  <39.724945, 31.184526, 44.390362>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.510319, 31.098780, 43.692654> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.183842, 31.267647, 43.850437>,  <38.987957, 31.368967, 43.945107>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.183842, 31.267647, 43.850437>,  <39.510319, 31.098780, 43.692654>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.183842, 31.267647, 43.850437> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224313, 0.397638, -0.889701,
		-0.532458, -0.814651, -0.229852,
		-0.816194, 0.422169, 0.394463,
		38.938984, 31.394297, 43.968777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.982754, 30.833702, 43.274727>,  <39.510319, 31.098780, 43.692654>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.982754, 30.833702, 43.274727> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.866798, 31.173182, 43.451668>,  <38.797226, 31.376869, 43.557831>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.866798, 31.173182, 43.451668>,  <38.982754, 30.833702, 43.274727>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.866798, 31.173182, 43.451668> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024113, 0.468525, -0.883121,
		-0.956757, -0.245340, -0.156285,
		-0.289889, 0.848700, 0.442349,
		38.779831, 31.427792, 43.584373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.480198, 31.124136, 42.845680>,  <38.982754, 30.833702, 43.274727>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.480198, 31.124136, 42.845680> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.562332, 31.450144, 43.062412>,  <38.611614, 31.645748, 43.192451>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.562332, 31.450144, 43.062412>,  <38.480198, 31.124136, 42.845680>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.562332, 31.450144, 43.062412> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203456, 0.577080, -0.790939,
		-0.957310, 0.052171, 0.284317,
		0.205338, 0.815020, 0.541829,
		38.623932, 31.694651, 43.224960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.898846, 31.598269, 42.903404>,  <38.480198, 31.124136, 42.845680>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.898846, 31.598269, 42.903404> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.230618, 31.816706, 42.950459>,  <38.429680, 31.947767, 42.978691>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.230618, 31.816706, 42.950459>,  <37.898846, 31.598269, 42.903404>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.230618, 31.816706, 42.950459> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300507, 0.613697, -0.730117,
		-0.470901, 0.570229, 0.673120,
		0.829426, 0.546091, 0.117633,
		38.479446, 31.980534, 42.985748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.690010, 32.238598, 42.762856>,  <37.898846, 31.598269, 42.903404>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.690010, 32.238598, 42.762856> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.082199, 32.302593, 42.717113>,  <38.317513, 32.340992, 42.689667>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.082199, 32.302593, 42.717113>,  <37.690010, 32.238598, 42.762856>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.082199, 32.302593, 42.717113> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180952, 0.506257, -0.843185,
		-0.077010, 0.847412, 0.525322,
		0.980472, 0.159991, -0.114354,
		38.376339, 32.350590, 42.682808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.750084, 32.962566, 42.534229>,  <37.690010, 32.238598, 42.762856>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.750084, 32.962566, 42.534229> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.128624, 32.842567, 42.486176>,  <38.355747, 32.770569, 42.457344>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.128624, 32.842567, 42.486176>,  <37.750084, 32.962566, 42.534229>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.128624, 32.842567, 42.486176> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088647, 0.598484, -0.796215,
		0.310759, 0.742846, 0.592966,
		0.946346, -0.299996, -0.120133,
		38.412529, 32.752567, 42.450134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.220188, 33.603020, 42.477379>,  <37.750084, 32.962566, 42.534229>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.220188, 33.603020, 42.477379> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.314209, 33.263870, 42.287281>,  <38.370621, 33.060379, 42.173222>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.314209, 33.263870, 42.287281>,  <38.220188, 33.603020, 42.477379>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.314209, 33.263870, 42.287281> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017870, 0.492633, -0.870054,
		0.971819, 0.196015, 0.130946,
		0.235052, -0.847874, -0.475247,
		38.384724, 33.009506, 42.144707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.472778, 33.882259, 41.878349>,  <38.220188, 33.603020, 42.477379>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.472778, 33.882259, 41.878349> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.418423, 33.495243, 41.793129>,  <38.385811, 33.263031, 41.741997>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.418423, 33.495243, 41.793129>,  <38.472778, 33.882259, 41.878349>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.418423, 33.495243, 41.793129> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016322, 0.212833, -0.976952,
		0.990589, -0.136236, -0.013130,
		-0.135890, -0.967544, -0.213054,
		38.377655, 33.204979, 41.729214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.211178, 33.846256, 42.154339>,  <38.472778, 33.882259, 41.878349>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.211178, 33.846256, 42.154339> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.562206, 33.918690, 41.976768>,  <39.772823, 33.962151, 41.870224>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.562206, 33.918690, 41.976768>,  <39.211178, 33.846256, 42.154339>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.562206, 33.918690, 41.976768> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477563, -0.248275, 0.842789,
		0.042399, -0.951614, -0.304359,
		0.877574, 0.181084, -0.443929,
		39.825478, 33.973015, 41.843590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.684090, 33.250225, 42.266182>,  <39.211178, 33.846256, 42.154339>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.684090, 33.250225, 42.266182> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.861687, 33.606033, 42.223072>,  <39.968246, 33.819519, 42.197205>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.861687, 33.606033, 42.223072>,  <39.684090, 33.250225, 42.266182>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.861687, 33.606033, 42.223072> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370155, -0.072544, 0.926133,
		0.815999, -0.451091, -0.361471,
		0.443993, 0.889524, -0.107778,
		39.994884, 33.872890, 42.190739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.356594, 33.138195, 42.599255>,  <39.684090, 33.250225, 42.266182>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.356594, 33.138195, 42.599255> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.287502, 33.531944, 42.585587>,  <40.246048, 33.768196, 42.577385>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.287502, 33.531944, 42.585587>,  <40.356594, 33.138195, 42.599255>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.287502, 33.531944, 42.585587> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484922, 0.115183, 0.866939,
		0.857329, 0.133181, -0.497241,
		-0.172733, 0.984376, -0.034167,
		40.235683, 33.827255, 42.575336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.954041, 33.432178, 42.922218>,  <40.356594, 33.138195, 42.599255>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.954041, 33.432178, 42.922218> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.707432, 33.747112, 42.923500>,  <40.559467, 33.936073, 42.924267>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.707432, 33.747112, 42.923500>,  <40.954041, 33.432178, 42.922218>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.707432, 33.747112, 42.923500> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370524, 0.286545, 0.883518,
		0.694707, 0.545891, -0.468387,
		-0.616518, 0.787334, 0.003201,
		40.522476, 33.983311, 42.924461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.416679, 34.035015, 43.042595>,  <40.954041, 33.432178, 42.922218>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.416679, 34.035015, 43.042595> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.056293, 34.156322, 43.166721>,  <40.840061, 34.229107, 43.241196>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.056293, 34.156322, 43.166721>,  <41.416679, 34.035015, 43.042595>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.056293, 34.156322, 43.166721> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380506, 0.208525, 0.900962,
		0.208525, 0.929810, -0.303268,
		-0.900962, 0.303268, 0.310315,
		40.786003, 34.247303, 43.259815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.666359, 34.587368, 43.344040>,  <41.416679, 34.035015, 43.042595>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.666359, 34.587368, 43.344040> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.291702, 34.531647, 43.472603>,  <41.066910, 34.498215, 43.549740>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.291702, 34.531647, 43.472603>,  <41.666359, 34.587368, 43.344040>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.291702, 34.531647, 43.472603> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316808, 0.054633, 0.946915,
		-0.149471, 0.988741, -0.007037,
		-0.936638, -0.139307, 0.321407,
		41.010712, 34.489853, 43.569023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.568958, 35.090874, 43.786545>,  <41.666359, 34.587368, 43.344040>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.568958, 35.090874, 43.786545> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.308899, 34.815353, 43.914825>,  <41.152863, 34.650040, 43.991795>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.308899, 34.815353, 43.914825>,  <41.568958, 35.090874, 43.786545>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.308899, 34.815353, 43.914825> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307889, 0.147039, 0.939991,
		-0.694626, 0.709879, 0.116477,
		-0.650153, -0.688805, 0.320701,
		41.113853, 34.608711, 44.011036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.209629, 35.412766, 44.352924>,  <41.568958, 35.090874, 43.786545>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.209629, 35.412766, 44.352924> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.161682, 35.017376, 44.389915>,  <41.132912, 34.780144, 44.412109>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.161682, 35.017376, 44.389915>,  <41.209629, 35.412766, 44.352924>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.161682, 35.017376, 44.389915> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181982, 0.069698, 0.980829,
		-0.975968, 0.134402, 0.171530,
		-0.119870, -0.988473, 0.092481,
		41.125721, 34.720833, 44.417660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.819344, 35.331356, 44.974205>,  <41.209629, 35.412766, 44.352924>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.819344, 35.331356, 44.974205> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.002853, 34.982094, 44.908325>,  <41.112961, 34.772537, 44.868797>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.002853, 34.982094, 44.908325>,  <40.819344, 35.331356, 44.974205>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.002853, 34.982094, 44.908325> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240834, -0.056229, 0.968936,
		-0.855291, -0.484192, 0.184488,
		0.458777, -0.873154, -0.164702,
		41.140488, 34.720146, 44.858913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.576962, 34.902271, 45.465145>,  <40.819344, 35.331356, 44.974205>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.576962, 34.902271, 45.465145> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.922905, 34.742496, 45.343510>,  <41.130470, 34.646633, 45.270527>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.922905, 34.742496, 45.343510>,  <40.576962, 34.902271, 45.465145>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.922905, 34.742496, 45.343510> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242821, -0.197312, 0.949792,
		-0.439379, -0.895277, -0.073657,
		0.864860, -0.399433, -0.304087,
		41.182362, 34.622665, 45.252285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.714951, 34.291443, 45.831284>,  <40.576962, 34.902271, 45.465145>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.714951, 34.291443, 45.831284> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.093662, 34.378155, 45.736107>,  <41.320889, 34.430180, 45.679001>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.093662, 34.378155, 45.736107>,  <40.714951, 34.291443, 45.831284>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.093662, 34.378155, 45.736107> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302866, -0.349599, 0.886596,
		0.109009, -0.911476, -0.396648,
		0.946778, 0.216778, -0.237946,
		41.377697, 34.443188, 45.664722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.075653, 33.717533, 46.041683>,  <40.714951, 34.291443, 45.831284>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.075653, 33.717533, 46.041683> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.355564, 34.001019, 46.005848>,  <41.523510, 34.171112, 45.984348>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.355564, 34.001019, 46.005848>,  <41.075653, 33.717533, 46.041683>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.355564, 34.001019, 46.005848> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422662, -0.309670, 0.851740,
		0.575902, -0.633896, -0.516249,
		0.699781, 0.708718, -0.089585,
		41.565498, 34.213634, 45.978973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.635063, 33.334187, 46.253468>,  <41.075653, 33.717533, 46.041683>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.635063, 33.334187, 46.253468> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.761593, 33.713226, 46.271339>,  <41.837509, 33.940651, 46.282063>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.761593, 33.713226, 46.271339>,  <41.635063, 33.334187, 46.253468>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.761593, 33.713226, 46.271339> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481528, -0.200960, 0.853080,
		0.817357, -0.248333, -0.519864,
		0.316320, 0.947600, 0.044677,
		41.856487, 33.997505, 46.284744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.309799, 33.289238, 46.575043>,  <41.635063, 33.334187, 46.253468>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.309799, 33.289238, 46.575043> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.183319, 33.666473, 46.616234>,  <42.107433, 33.892815, 46.640949>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.183319, 33.666473, 46.616234>,  <42.309799, 33.289238, 46.575043>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.183319, 33.666473, 46.616234> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385416, 0.028518, 0.922302,
		0.866876, 0.331318, -0.372498,
		-0.316198, 0.943088, 0.102973,
		42.088459, 33.949398, 46.647125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<33.479992, 33.440628, 48.389782> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.820694, 33.343777, 48.203926>,  <34.025116, 33.285667, 48.092415>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.820694, 33.343777, 48.203926>,  <33.479992, 33.440628, 48.389782>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.820694, 33.343777, 48.203926> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330101, 0.440673, -0.834770,
		0.406871, 0.864397, 0.295420,
		0.851756, -0.242125, -0.464636,
		34.076221, 33.271141, 48.064537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.705772, 34.102421, 48.037643>,  <33.479992, 33.440628, 48.389782>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.705772, 34.102421, 48.037643> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.900513, 33.800411, 47.861954>,  <34.017357, 33.619205, 47.756542>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.900513, 33.800411, 47.861954>,  <33.705772, 34.102421, 48.037643>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.900513, 33.800411, 47.861954> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124934, 0.437476, -0.890509,
		0.864503, 0.488420, 0.118658,
		0.486852, -0.755024, -0.439220,
		34.046570, 33.573906, 47.730186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.213554, 34.492012, 47.632603>,  <33.705772, 34.102421, 48.037643>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.213554, 34.492012, 47.632603> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.190529, 34.134106, 47.455479>,  <34.176712, 33.919361, 47.349205>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.190529, 34.134106, 47.455479>,  <34.213554, 34.492012, 47.632603>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.190529, 34.134106, 47.455479> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000290, 0.443565, -0.896242,
		0.998342, -0.051464, -0.025793,
		-0.057565, -0.894764, -0.442814,
		34.173260, 33.865677, 47.322636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.683037, 34.479973, 47.148296>,  <34.213554, 34.492012, 47.632603>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.683037, 34.479973, 47.148296> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.456261, 34.180111, 47.011707>,  <34.320194, 34.000195, 46.929756>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.456261, 34.180111, 47.011707>,  <34.683037, 34.479973, 47.148296>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.456261, 34.180111, 47.011707> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070547, 0.368818, -0.926821,
		0.820732, -0.549542, -0.156213,
		-0.566941, -0.749651, -0.341469,
		34.286179, 33.955215, 46.909267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.025711, 34.186924, 46.583958>,  <34.683037, 34.479973, 47.148296>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.025711, 34.186924, 46.583958> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.641983, 34.083519, 46.538563>,  <34.411747, 34.021477, 46.511326>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.641983, 34.083519, 46.538563>,  <35.025711, 34.186924, 46.583958>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.641983, 34.083519, 46.538563> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050900, 0.237031, -0.970168,
		0.277708, -0.936474, -0.214229,
		-0.959316, -0.258520, -0.113492,
		34.354187, 34.005962, 46.504517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.998646, 33.733791, 45.890427>,  <35.025711, 34.186924, 46.583958>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.998646, 33.733791, 45.890427> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.620567, 33.830765, 45.977909>,  <34.393719, 33.888950, 46.030399>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.620567, 33.830765, 45.977909>,  <34.998646, 33.733791, 45.890427>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.620567, 33.830765, 45.977909> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150662, 0.270412, -0.950883,
		-0.289667, -0.931720, -0.219066,
		-0.945195, 0.242435, 0.218704,
		34.337009, 33.903496, 46.043522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.479656, 33.264927, 45.450726>,  <34.998646, 33.733791, 45.890427>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.479656, 33.264927, 45.450726> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.302921, 33.609695, 45.550220>,  <34.196880, 33.816555, 45.609917>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.302921, 33.609695, 45.550220>,  <34.479656, 33.264927, 45.450726>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.302921, 33.609695, 45.550220> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120025, 0.217978, -0.968545,
		-0.889028, -0.457798, 0.007140,
		-0.441842, 0.861920, 0.248735,
		34.170368, 33.868271, 45.624840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.889187, 33.318031, 45.042011>,  <34.479656, 33.264927, 45.450726>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.889187, 33.318031, 45.042011> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.874664, 33.698799, 45.163689>,  <33.865952, 33.927258, 45.236694>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.874664, 33.698799, 45.163689>,  <33.889187, 33.318031, 45.042011>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.874664, 33.698799, 45.163689> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232990, 0.287946, -0.928872,
		-0.971801, -0.104602, 0.211332,
		-0.036310, 0.951917, 0.304198,
		33.863770, 33.984375, 45.254948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.290691, 33.645870, 44.713444>,  <33.889187, 33.318031, 45.042011>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.290691, 33.645870, 44.713444> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.536694, 33.938667, 44.830715>,  <33.684296, 34.114346, 44.901077>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.536694, 33.938667, 44.830715>,  <33.290691, 33.645870, 44.713444>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.536694, 33.938667, 44.830715> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176677, 0.490268, -0.853477,
		-0.768476, 0.473094, 0.430844,
		0.615004, 0.731997, 0.293174,
		33.721195, 34.158268, 44.918667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.915802, 34.288670, 44.553196>,  <33.290691, 33.645870, 44.713444>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.915802, 34.288670, 44.553196> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.298939, 34.397480, 44.590157>,  <33.528820, 34.462769, 44.612335>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.298939, 34.397480, 44.590157>,  <32.915802, 34.288670, 44.553196>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.298939, 34.397480, 44.590157> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119577, 0.669936, -0.732725,
		-0.261227, 0.690786, 0.674222,
		0.957842, 0.272029, 0.092404,
		33.586292, 34.479088, 44.617878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.902077, 35.042023, 44.641640>,  <32.915802, 34.288670, 44.553196>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.902077, 35.042023, 44.641640> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.281879, 34.955410, 44.550816>,  <33.509762, 34.903442, 44.496319>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.281879, 34.955410, 44.550816>,  <32.902077, 35.042023, 44.641640>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.281879, 34.955410, 44.550816> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014119, 0.693477, -0.720341,
		0.313438, 0.687172, 0.655402,
		0.949504, -0.216528, -0.227064,
		33.566730, 34.890453, 44.482697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.081882, 35.611118, 44.447376>,  <32.902077, 35.042023, 44.641640>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.081882, 35.611118, 44.447376> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.326736, 35.366787, 44.246506>,  <33.473648, 35.220188, 44.125984>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.326736, 35.366787, 44.246506>,  <33.081882, 35.611118, 44.447376>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.326736, 35.366787, 44.246506> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045828, 0.606588, -0.793695,
		0.789425, 0.508861, 0.343320,
		0.612134, -0.610829, -0.502175,
		33.510376, 35.183537, 44.095852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.563091, 35.997776, 44.037331>,  <33.081882, 35.611118, 44.447376>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.563091, 35.997776, 44.037331> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.559944, 35.644943, 43.848919>,  <33.558056, 35.433243, 43.735870>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.559944, 35.644943, 43.848919>,  <33.563091, 35.997776, 44.037331>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.559944, 35.644943, 43.848919> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039071, 0.470958, -0.881290,
		0.999205, 0.011467, -0.038171,
		-0.007871, -0.882081, -0.471032,
		33.557583, 35.380318, 43.707611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.119221, 36.014458, 43.410439>,  <33.563091, 35.997776, 44.037331>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.119221, 36.014458, 43.410439> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.858948, 35.715656, 43.355877>,  <33.702785, 35.536377, 43.323139>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.858948, 35.715656, 43.355877>,  <34.119221, 36.014458, 43.410439>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.858948, 35.715656, 43.355877> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283440, 0.405570, -0.869007,
		0.704469, -0.526785, -0.475627,
		-0.650680, -0.747001, -0.136400,
		33.663742, 35.491554, 43.314957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.769428, 36.166306, 43.046593>,  <34.119221, 36.014458, 43.410439>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.769428, 36.166306, 43.046593> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.847740, 36.553017, 43.112335>,  <34.894730, 36.785042, 43.151779>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.847740, 36.553017, 43.112335>,  <34.769428, 36.166306, 43.046593>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.847740, 36.553017, 43.112335> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112878, -0.188701, 0.975526,
		0.974129, -0.172440, -0.146073,
		0.195784, 0.966776, 0.164354,
		34.906475, 36.843048, 43.161640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.364258, 36.095898, 43.477135>,  <34.769428, 36.166306, 43.046593>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.364258, 36.095898, 43.477135> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.248150, 36.476959, 43.513355>,  <35.178486, 36.705597, 43.535088>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.248150, 36.476959, 43.513355>,  <35.364258, 36.095898, 43.477135>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.248150, 36.476959, 43.513355> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291803, -0.001999, 0.956476,
		0.911370, 0.304057, -0.277406,
		-0.290269, 0.952652, 0.090547,
		35.161068, 36.762756, 43.540520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.928951, 36.560432, 43.730602>,  <35.364258, 36.095898, 43.477135>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.928951, 36.560432, 43.730602> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.599552, 36.774551, 43.805767>,  <35.401913, 36.903023, 43.850864>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.599552, 36.774551, 43.805767>,  <35.928951, 36.560432, 43.730602>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.599552, 36.774551, 43.805767> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198210, -0.038882, 0.979388,
		0.531567, 0.843770, -0.074081,
		-0.823498, 0.535294, 0.187912,
		35.352501, 36.935139, 43.862141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.094097, 37.024048, 44.159389>,  <35.928951, 36.560432, 43.730602>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.094097, 37.024048, 44.159389> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.701443, 37.013256, 44.234928>,  <35.465851, 37.006783, 44.280251>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.701443, 37.013256, 44.234928>,  <36.094097, 37.024048, 44.159389>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.701443, 37.013256, 44.234928> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187876, 0.034848, 0.981574,
		-0.033064, 0.999029, -0.029139,
		-0.981636, -0.026980, 0.188846,
		35.406952, 37.005161, 44.291580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.011650, 37.509914, 44.701984>,  <36.094097, 37.024048, 44.159389>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.011650, 37.509914, 44.701984> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.703369, 37.255066, 44.705833>,  <35.518398, 37.102158, 44.708141>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.703369, 37.255066, 44.705833>,  <36.011650, 37.509914, 44.701984>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.703369, 37.255066, 44.705833> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112880, -0.121652, 0.986133,
		-0.627113, 0.761106, 0.165676,
		-0.770706, -0.637118, 0.009624,
		35.472157, 37.063931, 44.708721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.533051, 37.741940, 45.210148>,  <36.011650, 37.509914, 44.701984>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.533051, 37.741940, 45.210148> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.427742, 37.357006, 45.183022>,  <35.364555, 37.126045, 45.166744>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.427742, 37.357006, 45.183022>,  <35.533051, 37.741940, 45.210148>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.427742, 37.357006, 45.183022> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203829, -0.124197, 0.971097,
		-0.942944, 0.241838, 0.228849,
		-0.263270, -0.962336, -0.067817,
		35.348763, 37.068306, 45.162678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.238525, 37.597721, 45.837368>,  <35.533051, 37.741940, 45.210148>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.238525, 37.597721, 45.837368> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.266472, 37.226227, 45.691730>,  <35.283241, 37.003330, 45.604347>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.266472, 37.226227, 45.691730>,  <35.238525, 37.597721, 45.837368>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.266472, 37.226227, 45.691730> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054545, -0.360883, 0.931014,
		-0.996064, -0.084904, 0.025445,
		0.069865, -0.928738, -0.364094,
		35.287430, 36.947605, 45.582500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.816093, 37.068676, 46.229816>,  <35.238525, 37.597721, 45.837368>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.816093, 37.068676, 46.229816> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.120739, 36.890881, 46.041191>,  <35.303528, 36.784203, 45.928017>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.120739, 36.890881, 46.041191>,  <34.816093, 37.068676, 46.229816>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.120739, 36.890881, 46.041191> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261565, -0.454923, 0.851252,
		-0.592900, -0.771669, -0.230211,
		0.761612, -0.444492, -0.471565,
		35.349224, 36.757534, 45.899723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.817909, 36.267128, 46.371365>,  <34.816093, 37.068676, 46.229816>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.817909, 36.267128, 46.371365> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.183605, 36.413250, 46.301258>,  <35.403023, 36.500923, 46.259193>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.183605, 36.413250, 46.301258>,  <34.817909, 36.267128, 46.371365>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.183605, 36.413250, 46.301258> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350183, -0.494817, 0.795316,
		0.203805, -0.788486, -0.580304,
		0.914240, 0.365302, -0.175268,
		35.457878, 36.522842, 46.248676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.142708, 35.774986, 46.589767>,  <34.817909, 36.267128, 46.371365>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.142708, 35.774986, 46.589767> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.443501, 36.035160, 46.546940>,  <35.623974, 36.191265, 46.521244>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.443501, 36.035160, 46.546940>,  <35.142708, 35.774986, 46.589767>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.443501, 36.035160, 46.546940> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472336, -0.418367, 0.775801,
		0.459812, -0.633959, -0.621827,
		0.751978, 0.650434, -0.107072,
		35.669094, 36.230289, 46.514820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.845619, 35.421417, 46.521816>,  <35.142708, 35.774986, 46.589767>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.845619, 35.421417, 46.521816> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.904545, 35.787182, 46.672623>,  <35.939899, 36.006641, 46.763107>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.904545, 35.787182, 46.672623>,  <35.845619, 35.421417, 46.521816>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.904545, 35.787182, 46.672623> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303542, -0.404580, 0.862657,
		0.941361, -0.012641, -0.337164,
		0.147315, 0.914415, 0.377018,
		35.948738, 36.061508, 46.785728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.396168, 35.379021, 46.904774>,  <35.845619, 35.421417, 46.521816>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.396168, 35.379021, 46.904774> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.246483, 35.716286, 47.059196>,  <36.156670, 35.918644, 47.151852>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.246483, 35.716286, 47.059196>,  <36.396168, 35.379021, 46.904774>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.246483, 35.716286, 47.059196> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317671, -0.274561, 0.907580,
		0.871234, 0.462268, -0.165103,
		-0.374214, 0.843163, 0.386056,
		36.134220, 35.969234, 47.175014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.929474, 35.535145, 47.206390>,  <36.396168, 35.379021, 46.904774>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.929474, 35.535145, 47.206390> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.622246, 35.711349, 47.392300>,  <36.437908, 35.817074, 47.503845>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.622246, 35.711349, 47.392300>,  <36.929474, 35.535145, 47.206390>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.622246, 35.711349, 47.392300> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384258, -0.263549, 0.884810,
		0.512263, 0.858189, 0.033153,
		-0.768071, 0.440516, 0.464772,
		36.391823, 35.843506, 47.531731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.197014, 35.919468, 47.732803>,  <36.929474, 35.535145, 47.206390>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.197014, 35.919468, 47.732803> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.819660, 35.856159, 47.849407>,  <36.593250, 35.818172, 47.919369>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.819660, 35.856159, 47.849407>,  <37.197014, 35.919468, 47.732803>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.819660, 35.856159, 47.849407> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331628, -0.469461, 0.818309,
		0.007336, 0.868651, 0.495369,
		-0.943382, -0.158275, 0.291513,
		36.536644, 35.808678, 47.936863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.849518, 36.206020, 47.693947>,  <37.197014, 35.919468, 47.732803>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.849518, 36.206020, 47.693947> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.202980, 36.078918, 47.556438>,  <38.415058, 36.002659, 47.473934>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.202980, 36.078918, 47.556438>,  <37.849518, 36.206020, 47.693947>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.202980, 36.078918, 47.556438> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230727, 0.343332, -0.910433,
		0.407321, 0.883830, 0.230074,
		0.883660, -0.317754, -0.343769,
		38.468079, 35.983593, 47.453308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.012714, 36.642662, 47.140938>,  <37.849518, 36.206020, 47.693947>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.012714, 36.642662, 47.140938> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.237297, 36.321236, 47.061897>,  <38.372047, 36.128380, 47.014473>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.237297, 36.321236, 47.061897>,  <38.012714, 36.642662, 47.140938>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.237297, 36.321236, 47.061897> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208315, 0.093849, -0.973549,
		0.800859, 0.587765, -0.114703,
		0.561454, -0.803570, -0.197600,
		38.405731, 36.080166, 47.002617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.293583, 36.801643, 46.533745>,  <38.012714, 36.642662, 47.140938>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.293583, 36.801643, 46.533745> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.358299, 36.406933, 46.529667>,  <38.397129, 36.170109, 46.527222>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.358299, 36.406933, 46.529667>,  <38.293583, 36.801643, 46.533745>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.358299, 36.406933, 46.529667> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066124, -0.000533, -0.997811,
		0.984607, 0.162110, -0.065336,
		0.161790, -0.986773, -0.010195,
		38.406837, 36.110901, 46.526608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.872200, 36.698128, 46.097248>,  <38.293583, 36.801643, 46.533745>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.872200, 36.698128, 46.097248> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.693497, 36.340275, 46.099922>,  <38.586273, 36.125565, 46.101528>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.693497, 36.340275, 46.099922>,  <38.872200, 36.698128, 46.097248>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.693497, 36.340275, 46.099922> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188704, 0.086921, -0.978180,
		0.874528, -0.438271, -0.207653,
		-0.446757, -0.894630, 0.006689,
		38.559471, 36.071884, 46.101929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.189442, 36.386307, 45.645798>,  <38.872200, 36.698128, 46.097248>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.189442, 36.386307, 45.645798> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.838676, 36.196774, 45.678062>,  <38.628220, 36.083054, 45.697422>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.838676, 36.196774, 45.678062>,  <39.189442, 36.386307, 45.645798>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.838676, 36.196774, 45.678062> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123346, 0.059648, -0.990569,
		0.464559, -0.878589, -0.110752,
		-0.876910, -0.473838, 0.080660,
		38.575603, 36.054623, 45.702259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.239544, 35.841000, 45.116093>,  <39.189442, 36.386307, 45.645798>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.239544, 35.841000, 45.116093> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.841801, 35.841419, 45.158520>,  <38.603153, 35.841671, 45.183975>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.841801, 35.841419, 45.158520>,  <39.239544, 35.841000, 45.116093>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.841801, 35.841419, 45.158520> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105953, 0.037899, -0.993649,
		-0.005071, -0.999281, -0.037573,
		-0.994358, 0.001058, 0.106069,
		38.543491, 35.841736, 45.190342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.922974, 35.344318, 44.670902>,  <39.239544, 35.841000, 45.116093>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.922974, 35.344318, 44.670902> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.635502, 35.612625, 44.744194>,  <38.463020, 35.773609, 44.788170>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.635502, 35.612625, 44.744194>,  <38.922974, 35.344318, 44.670902>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.635502, 35.612625, 44.744194> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132221, 0.126870, -0.983067,
		-0.682657, -0.730734, -0.002489,
		-0.718677, 0.670769, 0.183227,
		38.419899, 35.813854, 44.799164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.330559, 35.142174, 44.259182>,  <38.922974, 35.344318, 44.670902>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.330559, 35.142174, 44.259182> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.295879, 35.526829, 44.363289>,  <38.275070, 35.757622, 44.425751>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.295879, 35.526829, 44.363289>,  <38.330559, 35.142174, 44.259182>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.295879, 35.526829, 44.363289> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056787, 0.256052, -0.964993,
		-0.994614, -0.098446, 0.032409,
		-0.086702, 0.961637, 0.260264,
		38.269871, 35.815319, 44.441368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.757809, 35.432671, 43.892490>,  <38.330559, 35.142174, 44.259182>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.757809, 35.432671, 43.892490> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.993446, 35.746143, 43.971291>,  <38.134827, 35.934227, 44.018570>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.993446, 35.746143, 43.971291>,  <37.757809, 35.432671, 43.892490>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.993446, 35.746143, 43.971291> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166286, 0.356143, -0.919517,
		-0.790772, 0.508921, 0.340116,
		0.589092, 0.783684, 0.197001,
		38.170174, 35.981247, 44.030392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.408352, 36.110462, 43.638290>,  <37.757809, 35.432671, 43.892490>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.408352, 36.110462, 43.638290> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.796608, 36.202255, 43.667152>,  <38.029560, 36.257332, 43.684467>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.796608, 36.202255, 43.667152>,  <37.408352, 36.110462, 43.638290>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.796608, 36.202255, 43.667152> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050474, 0.487550, -0.871635,
		-0.235199, 0.842398, 0.484816,
		0.970636, 0.229478, 0.072152,
		38.087799, 36.271099, 43.688797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.436214, 36.815907, 43.564751>,  <37.408352, 36.110462, 43.638290>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.436214, 36.815907, 43.564751> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.816994, 36.711544, 43.500587>,  <38.045460, 36.648926, 43.462090>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.816994, 36.711544, 43.500587>,  <37.436214, 36.815907, 43.564751>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.816994, 36.711544, 43.500587> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026513, 0.591974, -0.805521,
		0.305117, 0.762559, 0.570445,
		0.951946, -0.260902, -0.160404,
		38.102577, 36.633274, 43.452465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.748596, 37.455067, 43.445438>,  <37.436214, 36.815907, 43.564751>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.748596, 37.455067, 43.445438> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.010044, 37.188950, 43.301121>,  <38.166912, 37.029282, 43.214531>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.010044, 37.188950, 43.301121>,  <37.748596, 37.455067, 43.445438>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.010044, 37.188950, 43.301121> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061412, 0.521773, -0.850871,
		0.754330, 0.533986, 0.381897,
		0.653617, -0.665290, -0.360796,
		38.206131, 36.989361, 43.192883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.155907, 37.802177, 43.007240>,  <37.748596, 37.455067, 43.445438>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.155907, 37.802177, 43.007240> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.209183, 37.423294, 42.890583>,  <38.241150, 37.195965, 42.820591>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.209183, 37.423294, 42.890583>,  <38.155907, 37.802177, 43.007240>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.209183, 37.423294, 42.890583> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051474, 0.300474, -0.952400,
		0.989753, 0.111837, 0.088776,
		0.133189, -0.947210, -0.291639,
		38.249138, 37.139130, 42.803093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.755852, 37.665024, 42.513977>,  <38.155907, 37.802177, 43.007240>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.755852, 37.665024, 42.513977> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.541580, 37.343361, 42.410923>,  <38.413017, 37.150364, 42.349091>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.541580, 37.343361, 42.410923>,  <38.755852, 37.665024, 42.513977>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.541580, 37.343361, 42.410923> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174144, 0.193334, -0.965555,
		0.826271, -0.562090, 0.036475,
		-0.535677, -0.804162, -0.257631,
		38.380878, 37.102112, 42.333633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<30.814255, 36.185730, 27.419527> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.495440, 36.019016, 27.244707>,  <30.304150, 35.918987, 27.139814>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.495440, 36.019016, 27.244707>,  <30.814255, 36.185730, 27.419527>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.495440, 36.019016, 27.244707> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.560587, 0.241387, 0.792133,
		-0.224653, 0.876367, -0.426042,
		-0.797040, -0.416788, -0.437052,
		30.256327, 35.893978, 27.113592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.230938, 36.655457, 27.316259>,  <30.814255, 36.185730, 27.419527>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.230938, 36.655457, 27.316259> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.151707, 36.271595, 27.396097>,  <30.104168, 36.041279, 27.444000>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.151707, 36.271595, 27.396097>,  <30.230938, 36.655457, 27.316259>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.151707, 36.271595, 27.396097> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487164, 0.273083, 0.829516,
		-0.850550, 0.067075, -0.521599,
		-0.198080, -0.959649, 0.199594,
		30.092283, 35.983700, 27.455975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.653683, 36.664852, 27.638565>,  <30.230938, 36.655457, 27.316259>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.653683, 36.664852, 27.638565> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.708666, 36.272659, 27.694788>,  <29.741655, 36.037342, 27.728521>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.708666, 36.272659, 27.694788>,  <29.653683, 36.664852, 27.638565>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.708666, 36.272659, 27.694788> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550905, 0.042251, 0.833498,
		-0.823170, -0.192004, -0.534346,
		0.137459, -0.980484, 0.140556,
		29.749903, 35.978516, 27.736956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.923038, 36.364796, 27.664539>,  <29.653683, 36.664852, 27.638565>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.923038, 36.364796, 27.664539> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.243954, 36.214481, 27.850063>,  <29.436502, 36.124290, 27.961378>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.243954, 36.214481, 27.850063>,  <28.923038, 36.364796, 27.664539>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.243954, 36.214481, 27.850063> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489775, 0.029791, 0.871339,
		-0.341257, -0.926226, -0.160151,
		0.802286, -0.375788, 0.463809,
		29.484640, 36.101746, 27.989206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.575912, 35.881863, 28.062855>,  <28.923038, 36.364796, 27.664539>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.575912, 35.881863, 28.062855> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.928366, 35.950443, 28.239130>,  <29.139837, 35.991592, 28.344894>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.928366, 35.950443, 28.239130>,  <28.575912, 35.881863, 28.062855>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.928366, 35.950443, 28.239130> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417898, -0.153760, 0.895388,
		0.221278, -0.973119, -0.063833,
		0.881134, 0.171454, 0.440689,
		29.192705, 36.001881, 28.371336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.649084, 35.326725, 28.512280>,  <28.575912, 35.881863, 28.062855>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.649084, 35.326725, 28.512280> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.887260, 35.623257, 28.636137>,  <29.030167, 35.801178, 28.710451>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.887260, 35.623257, 28.636137>,  <28.649084, 35.326725, 28.512280>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.887260, 35.623257, 28.636137> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355861, -0.102174, 0.928937,
		0.720289, -0.663314, 0.202973,
		0.595438, 0.741333, 0.309642,
		29.065891, 35.845657, 28.729031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.965700, 35.068146, 29.119955>,  <28.649084, 35.326725, 28.512280>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.965700, 35.068146, 29.119955> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.035032, 35.461609, 29.139479>,  <29.076632, 35.697685, 29.151194>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.035032, 35.461609, 29.139479>,  <28.965700, 35.068146, 29.119955>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.035032, 35.461609, 29.139479> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114634, -0.029072, 0.992982,
		0.978170, -0.177708, 0.107721,
		0.173329, 0.983654, 0.048808,
		29.087030, 35.756706, 29.154121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.418638, 35.137096, 29.675791>,  <28.965700, 35.068146, 29.119955>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.418638, 35.137096, 29.675791> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.193924, 35.463009, 29.618481>,  <29.059095, 35.658558, 29.584095>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.193924, 35.463009, 29.618481>,  <29.418638, 35.137096, 29.675791>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.193924, 35.463009, 29.618481> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060594, 0.132196, 0.989370,
		0.825061, 0.564495, -0.024895,
		-0.561786, 0.814782, -0.143275,
		29.025389, 35.707443, 29.575499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.544899, 35.615231, 30.233076>,  <29.418638, 35.137096, 29.675791>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.544899, 35.615231, 30.233076> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.200430, 35.769329, 30.100430>,  <28.993750, 35.861790, 30.020842>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.200430, 35.769329, 30.100430>,  <29.544899, 35.615231, 30.233076>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.200430, 35.769329, 30.100430> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194743, 0.352560, 0.915301,
		0.469530, 0.852812, -0.228591,
		-0.861172, 0.385245, -0.331617,
		28.942078, 35.884903, 30.000944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.405449, 36.154751, 30.690277>,  <29.544899, 35.615231, 30.233076>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.405449, 36.154751, 30.690277> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.058109, 36.087994, 30.503464>,  <28.849707, 36.047939, 30.391376>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.058109, 36.087994, 30.503464>,  <29.405449, 36.154751, 30.690277>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.058109, 36.087994, 30.503464> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492079, 0.407436, 0.769321,
		0.061893, 0.897855, -0.435920,
		-0.868348, -0.166891, -0.467033,
		28.797606, 36.037926, 30.363354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.059715, 36.832241, 30.763201>,  <29.405449, 36.154751, 30.690277>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.059715, 36.832241, 30.763201> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.801310, 36.528854, 30.728794>,  <28.646267, 36.346825, 30.708151>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.801310, 36.528854, 30.728794>,  <29.059715, 36.832241, 30.763201>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.801310, 36.528854, 30.728794> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387321, 0.228606, 0.893153,
		-0.657760, 0.610305, -0.441452,
		-0.646014, -0.758464, -0.086016,
		28.607506, 36.301315, 30.702990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.500713, 36.992268, 31.192375>,  <29.059715, 36.832241, 30.763201>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.500713, 36.992268, 31.192375> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.421234, 36.601925, 31.156101>,  <28.373547, 36.367718, 31.134336>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.421234, 36.601925, 31.156101>,  <28.500713, 36.992268, 31.192375>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.421234, 36.601925, 31.156101> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189836, -0.052457, 0.980413,
		-0.961500, 0.212021, -0.174829,
		-0.198697, -0.975856, -0.090686,
		28.361626, 36.309170, 31.128895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.843861, 36.940411, 31.542210>,  <28.500713, 36.992268, 31.192375>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.843861, 36.940411, 31.542210> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.001356, 36.573666, 31.515867>,  <28.095854, 36.353619, 31.500063>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.001356, 36.573666, 31.515867>,  <27.843861, 36.940411, 31.542210>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.001356, 36.573666, 31.515867> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147582, -0.133764, 0.979963,
		-0.907299, -0.376129, -0.187980,
		0.393737, -0.916861, -0.065854,
		28.119478, 36.298607, 31.496111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.260323, 36.462601, 31.677908>,  <27.843861, 36.940411, 31.542210>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.260323, 36.462601, 31.677908> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.610123, 36.285961, 31.758148>,  <27.820004, 36.179977, 31.806292>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.610123, 36.285961, 31.758148>,  <27.260323, 36.462601, 31.677908>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.610123, 36.285961, 31.758148> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275816, -0.112567, 0.954596,
		-0.398968, -0.890123, -0.220240,
		0.874500, -0.441599, 0.200599,
		27.872473, 36.153481, 31.818329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.058794, 36.133099, 32.261703>,  <27.260323, 36.462601, 31.677908>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.058794, 36.133099, 32.261703> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.453260, 36.071468, 32.237244>,  <27.689939, 36.034489, 32.222569>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.453260, 36.071468, 32.237244>,  <27.058794, 36.133099, 32.261703>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.453260, 36.071468, 32.237244> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019023, -0.261265, 0.965079,
		-0.164672, -0.952891, -0.254720,
		0.986165, -0.154076, -0.061150,
		27.749109, 36.025246, 32.218899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.315912, 35.453239, 32.577305>,  <27.058794, 36.133099, 32.261703>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.315912, 35.453239, 32.577305> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.642017, 35.679588, 32.626514>,  <27.837681, 35.815399, 32.656040>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.642017, 35.679588, 32.626514>,  <27.315912, 35.453239, 32.577305>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.642017, 35.679588, 32.626514> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121086, -0.041161, 0.991788,
		0.566293, -0.823462, 0.034963,
		0.815260, 0.565876, 0.123019,
		27.886595, 35.849350, 32.663422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.721531, 35.165764, 33.052937>,  <27.315912, 35.453239, 32.577305>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.721531, 35.165764, 33.052937> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.942072, 35.499084, 33.069061>,  <28.074396, 35.699078, 33.078735>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.942072, 35.499084, 33.069061>,  <27.721531, 35.165764, 33.052937>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.942072, 35.499084, 33.069061> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148680, -0.145695, 0.978094,
		0.820918, -0.533280, -0.204223,
		0.551352, 0.833298, 0.040315,
		28.107477, 35.749073, 33.081158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.250072, 35.041775, 33.559174>,  <27.721531, 35.165764, 33.052937>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.250072, 35.041775, 33.559174> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.210968, 35.438873, 33.531162>,  <28.187506, 35.677132, 33.514355>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.210968, 35.438873, 33.531162>,  <28.250072, 35.041775, 33.559174>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.210968, 35.438873, 33.531162> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084128, 0.078358, 0.993369,
		0.991647, 0.091224, -0.091178,
		-0.097763, 0.992743, -0.070029,
		28.181639, 35.736694, 33.510155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.665915, 35.311329, 34.157402>,  <28.250072, 35.041775, 33.559174>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.665915, 35.311329, 34.157402> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.426466, 35.609848, 34.040993>,  <28.282797, 35.788960, 33.971146>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.426466, 35.609848, 34.040993>,  <28.665915, 35.311329, 34.157402>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.426466, 35.609848, 34.040993> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140229, 0.260067, 0.955354,
		0.788661, 0.612707, -0.051029,
		-0.598623, 0.746295, -0.291024,
		28.246880, 35.833736, 33.953686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.838676, 35.861324, 34.639202>,  <28.665915, 35.311329, 34.157402>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.838676, 35.861324, 34.639202> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.477293, 35.957378, 34.497162>,  <28.260464, 36.015011, 34.411938>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.477293, 35.957378, 34.497162>,  <28.838676, 35.861324, 34.639202>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.477293, 35.957378, 34.497162> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312747, 0.197295, 0.929120,
		0.293175, 0.950478, -0.103146,
		-0.903459, 0.240137, -0.355101,
		28.206255, 36.029419, 34.390633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.037218, 36.235519, 35.218655>,  <28.838676, 35.861324, 34.639202>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.037218, 36.235519, 35.218655> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.431488, 36.296394, 35.247742>,  <29.668049, 36.332920, 35.265194>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.431488, 36.296394, 35.247742>,  <29.037218, 36.235519, 35.218655>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.431488, 36.296394, 35.247742> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107740, -0.236404, -0.965663,
		-0.129775, 0.959662, -0.249414,
		0.985673, 0.152191, 0.072714,
		29.727190, 36.342052, 35.269554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.230833, 36.542953, 34.573063>,  <29.037218, 36.235519, 35.218655>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.230833, 36.542953, 34.573063> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.533262, 36.353828, 34.754086>,  <29.714720, 36.240353, 34.862698>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.533262, 36.353828, 34.754086>,  <29.230833, 36.542953, 34.573063>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.533262, 36.353828, 34.754086> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224450, -0.462219, -0.857890,
		0.614798, 0.750203, -0.243349,
		0.756072, -0.472810, 0.452555,
		29.760084, 36.211987, 34.889851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.859163, 36.643181, 34.146946>,  <29.230833, 36.542953, 34.573063>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.859163, 36.643181, 34.146946> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.946169, 36.339294, 34.392067>,  <29.998373, 36.156963, 34.539139>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.946169, 36.339294, 34.392067>,  <29.859163, 36.643181, 34.146946>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.946169, 36.339294, 34.392067> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451501, -0.478307, -0.753240,
		0.865352, 0.440520, 0.238972,
		0.217515, -0.759714, 0.612799,
		30.011423, 36.111382, 34.575905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.585623, 36.579781, 34.152283>,  <29.859163, 36.643181, 34.146946>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.585623, 36.579781, 34.152283> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.458843, 36.213013, 34.249287>,  <30.382776, 35.992954, 34.307487>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.458843, 36.213013, 34.249287>,  <30.585623, 36.579781, 34.152283>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.458843, 36.213013, 34.249287> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585439, -0.390302, -0.710581,
		0.746194, -0.083245, 0.660504,
		-0.316948, -0.916916, 0.242506,
		30.363758, 35.937939, 34.322037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.198490, 36.251247, 34.243084>,  <30.585623, 36.579781, 34.152283>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.198490, 36.251247, 34.243084> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.931568, 35.955742, 34.205280>,  <30.771416, 35.778439, 34.182598>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.931568, 35.955742, 34.205280>,  <31.198490, 36.251247, 34.243084>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.931568, 35.955742, 34.205280> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516786, -0.367904, -0.773033,
		0.536320, -0.564688, 0.627287,
		-0.667303, -0.738766, -0.094509,
		30.731377, 35.734112, 34.176929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.549822, 35.600323, 34.260170>,  <31.198490, 36.251247, 34.243084>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.549822, 35.600323, 34.260170> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.208019, 35.491955, 34.082893>,  <31.002937, 35.426933, 33.976528>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.208019, 35.491955, 34.082893>,  <31.549822, 35.600323, 34.260170>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.208019, 35.491955, 34.082893> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517819, -0.376875, -0.768003,
		0.041040, -0.885758, 0.462331,
		-0.854505, -0.270922, -0.443195,
		30.951668, 35.410679, 33.949936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.564468, 34.793457, 34.049751>,  <31.549822, 35.600323, 34.260170>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.564468, 34.793457, 34.049751> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.303682, 34.994873, 33.822987>,  <31.147211, 35.115723, 33.686928>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.303682, 34.994873, 33.822987>,  <31.564468, 34.793457, 34.049751>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.303682, 34.994873, 33.822987> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401392, -0.405116, -0.821441,
		-0.643294, -0.763104, 0.062004,
		-0.651964, 0.503540, -0.566913,
		31.108093, 35.145935, 33.652912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.407412, 34.300346, 33.526409>,  <31.564468, 34.793457, 34.049751>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.407412, 34.300346, 33.526409> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.244444, 34.631733, 33.372711>,  <31.146664, 34.830566, 33.280491>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.244444, 34.631733, 33.372711>,  <31.407412, 34.300346, 33.526409>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.244444, 34.631733, 33.372711> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148746, -0.354936, -0.922982,
		-0.901046, -0.433197, 0.021377,
		-0.407420, 0.828469, -0.384250,
		31.122217, 34.880272, 33.257435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.885500, 34.137840, 32.961227>,  <31.407412, 34.300346, 33.526409>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.885500, 34.137840, 32.961227> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.989777, 34.511658, 32.864334>,  <31.052341, 34.735947, 32.806198>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.989777, 34.511658, 32.864334>,  <30.885500, 34.137840, 32.961227>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.989777, 34.511658, 32.864334> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067067, -0.267831, -0.961129,
		-0.963090, 0.234312, -0.132497,
		0.260690, 0.934540, -0.242231,
		31.067984, 34.792019, 32.791664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.467640, 34.300045, 32.391357>,  <30.885500, 34.137840, 32.961227>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.467640, 34.300045, 32.391357> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.738596, 34.593243, 32.366489>,  <30.901169, 34.769161, 32.351570>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.738596, 34.593243, 32.366489>,  <30.467640, 34.300045, 32.391357>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.738596, 34.593243, 32.366489> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076941, -0.154648, -0.984969,
		-0.731589, 0.662425, -0.161155,
		0.677391, 0.732992, -0.062171,
		30.941813, 34.813141, 32.347839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.285795, 34.698563, 31.831884>,  <30.467640, 34.300045, 32.391357>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.285795, 34.698563, 31.831884> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.672945, 34.778500, 31.892921>,  <30.905235, 34.826462, 31.929544>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.672945, 34.778500, 31.892921>,  <30.285795, 34.698563, 31.831884>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.672945, 34.778500, 31.892921> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166919, -0.056813, -0.984333,
		-0.188047, 0.978179, -0.088346,
		0.967872, 0.199847, 0.152593,
		30.963306, 34.838455, 31.938700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.439955, 35.252567, 31.393574>,  <30.285795, 34.698563, 31.831884>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.439955, 35.252567, 31.393574> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.793562, 35.087727, 31.481836>,  <31.005726, 34.988823, 31.534794>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.793562, 35.087727, 31.481836>,  <30.439955, 35.252567, 31.393574>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.793562, 35.087727, 31.481836> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284984, 0.100948, -0.953202,
		0.370540, 0.905529, 0.206682,
		0.884016, -0.412100, 0.220656,
		31.058767, 34.964096, 31.548033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.900110, 35.675430, 31.138556>,  <30.439955, 35.252567, 31.393574>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.900110, 35.675430, 31.138556> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.070238, 35.314041, 31.159883>,  <31.172316, 35.097210, 31.172680>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.070238, 35.314041, 31.159883>,  <30.900110, 35.675430, 31.138556>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.070238, 35.314041, 31.159883> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426871, 0.148306, -0.892069,
		0.798051, 0.402175, 0.448743,
		0.425319, -0.903471, 0.053321,
		31.197834, 35.042999, 31.175880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.593399, 35.729939, 30.944714>,  <30.900110, 35.675430, 31.138556>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.593399, 35.729939, 30.944714> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.502951, 35.344070, 30.890627>,  <31.448681, 35.112549, 30.858175>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.502951, 35.344070, 30.890627>,  <31.593399, 35.729939, 30.944714>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.502951, 35.344070, 30.890627> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507559, 0.001798, -0.861615,
		0.831416, -0.263461, 0.489219,
		-0.226122, -0.964668, -0.135217,
		31.435114, 35.054668, 30.850061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.200817, 35.405811, 30.701727>,  <31.593399, 35.729939, 30.944714>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.200817, 35.405811, 30.701727> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.889170, 35.179943, 30.592825>,  <31.702181, 35.044422, 30.527483>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.889170, 35.179943, 30.592825>,  <32.200817, 35.405811, 30.701727>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.889170, 35.179943, 30.592825> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426789, -0.159694, -0.890140,
		0.459157, -0.809720, 0.365415,
		-0.779119, -0.564669, -0.272255,
		31.655434, 35.010544, 30.511148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.518314, 34.851326, 30.392700>,  <32.200817, 35.405811, 30.701727>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.518314, 34.851326, 30.392700> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.139599, 34.807156, 30.271776>,  <31.912369, 34.780651, 30.199223>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.139599, 34.807156, 30.271776>,  <32.518314, 34.851326, 30.392700>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.139599, 34.807156, 30.271776> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321627, -0.289856, -0.901410,
		0.011914, -0.950678, 0.309950,
		-0.946792, -0.110428, -0.302310,
		31.855562, 34.774029, 30.181084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.516422, 34.203571, 30.039356>,  <32.518314, 34.851326, 30.392700>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.516422, 34.203571, 30.039356> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.207802, 34.416962, 29.900723>,  <32.022629, 34.544994, 29.817541>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.207802, 34.416962, 29.900723>,  <32.516422, 34.203571, 30.039356>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.207802, 34.416962, 29.900723> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302484, -0.171645, -0.937572,
		-0.559659, -0.828217, -0.028935,
		-0.771547, 0.533473, -0.346585,
		31.976337, 34.577003, 29.796747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.229004, 33.820122, 29.456245>,  <32.516422, 34.203571, 30.039356>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.229004, 33.820122, 29.456245> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.076035, 34.180626, 29.374779>,  <31.984255, 34.396931, 29.325899>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.076035, 34.180626, 29.374779>,  <32.229004, 33.820122, 29.456245>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.076035, 34.180626, 29.374779> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313341, -0.080863, -0.946192,
		-0.869237, -0.425658, -0.251480,
		-0.382419, 0.901264, -0.203666,
		31.961309, 34.451004, 29.313679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.866838, 33.729496, 28.843496>,  <32.229004, 33.820122, 29.456245>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.866838, 33.729496, 28.843496> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.920788, 34.123367, 28.887699>,  <31.953157, 34.359692, 28.914221>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.920788, 34.123367, 28.887699>,  <31.866838, 33.729496, 28.843496>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.920788, 34.123367, 28.887699> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278275, 0.069398, -0.957991,
		-0.950985, 0.159958, -0.264653,
		0.134872, 0.984681, 0.110508,
		31.961248, 34.418770, 28.920851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.555405, 34.077507, 28.212429>,  <31.866838, 33.729496, 28.843496>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.555405, 34.077507, 28.212429> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.790686, 34.352097, 28.383434>,  <31.931854, 34.516850, 28.486036>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.790686, 34.352097, 28.383434>,  <31.555405, 34.077507, 28.212429>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.790686, 34.352097, 28.383434> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434167, 0.177937, -0.883084,
		-0.682286, 0.705045, -0.193382,
		0.588204, 0.686476, 0.427512,
		31.967148, 34.558041, 28.511688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.511282, 34.689220, 27.872459>,  <31.555405, 34.077507, 28.212429>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.511282, 34.689220, 27.872459> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.872753, 34.654488, 28.040188>,  <32.089634, 34.633648, 28.140825>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.872753, 34.654488, 28.040188>,  <31.511282, 34.689220, 27.872459>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.872753, 34.654488, 28.040188> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427405, 0.243161, -0.870745,
		-0.026352, 0.966091, 0.256852,
		0.903676, -0.086834, 0.419320,
		32.143856, 34.628437, 28.165983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.964808, 35.310043, 27.696367>,  <31.511282, 34.689220, 27.872459>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.964808, 35.310043, 27.696367> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.191536, 34.990875, 27.778381>,  <32.327572, 34.799374, 27.827589>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.191536, 34.990875, 27.778381>,  <31.964808, 35.310043, 27.696367>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.191536, 34.990875, 27.778381> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307338, -0.026109, -0.951242,
		0.764367, 0.602199, 0.230432,
		0.566821, -0.797919, 0.205035,
		32.361584, 34.751499, 27.839891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<42.907684, 33.644909, 46.873478> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.578941, 33.851494, 46.969658>,  <42.381695, 33.975445, 47.027367>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.578941, 33.851494, 46.969658>,  <42.907684, 33.644909, 46.873478>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.578941, 33.851494, 46.969658> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180641, -0.164043, 0.969773,
		0.540296, 0.840450, 0.041526,
		-0.821857, 0.516463, 0.240451,
		42.332386, 34.006432, 47.041794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.179085, 34.079391, 47.364937>,  <42.907684, 33.644909, 46.873478>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.179085, 34.079391, 47.364937> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.785103, 34.054741, 47.429512>,  <42.548714, 34.039951, 47.468258>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.785103, 34.054741, 47.429512>,  <43.179085, 34.079391, 47.364937>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.785103, 34.054741, 47.429512> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170293, -0.187758, 0.967340,
		-0.029299, 0.980281, 0.195427,
		-0.984958, -0.061622, 0.161433,
		42.489616, 34.036255, 47.477943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.063812, 34.374874, 47.973957>,  <43.179085, 34.079391, 47.364937>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.063812, 34.374874, 47.973957> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.725365, 34.165710, 47.932690>,  <42.522297, 34.040211, 47.907928>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.725365, 34.165710, 47.932690>,  <43.063812, 34.374874, 47.973957>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.725365, 34.165710, 47.932690> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043652, -0.260893, 0.964380,
		-0.531200, 0.811479, 0.243573,
		-0.846121, -0.522911, -0.103164,
		42.471527, 34.008839, 47.901741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.851189, 34.383877, 48.644066>,  <43.063812, 34.374874, 47.973957>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.851189, 34.383877, 48.644066> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.625500, 34.109631, 48.460075>,  <42.490086, 33.945084, 48.349682>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.625500, 34.109631, 48.460075>,  <42.851189, 34.383877, 48.644066>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.625500, 34.109631, 48.460075> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221083, -0.411319, 0.884273,
		-0.795473, 0.600619, 0.080496,
		-0.564220, -0.685619, -0.459980,
		42.456234, 33.903946, 48.322083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.174324, 34.461205, 48.970688>,  <42.851189, 34.383877, 48.644066>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.174324, 34.461205, 48.970688> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.220226, 34.100224, 48.804596>,  <42.247768, 33.883636, 48.704941>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.220226, 34.100224, 48.804596>,  <42.174324, 34.461205, 48.970688>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.220226, 34.100224, 48.804596> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314722, -0.429485, 0.846459,
		-0.942222, 0.033548, -0.333305,
		0.114753, -0.902451, -0.415228,
		42.254654, 33.829487, 48.680027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.539185, 34.123329, 49.058811>,  <42.174324, 34.461205, 48.970688>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.539185, 34.123329, 49.058811> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.830776, 33.854347, 49.007599>,  <42.005730, 33.692959, 48.976871>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.830776, 33.854347, 49.007599>,  <41.539185, 34.123329, 49.058811>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.830776, 33.854347, 49.007599> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320166, -0.500255, 0.804511,
		-0.605048, -0.545479, -0.579973,
		0.728979, -0.672456, -0.128035,
		42.049469, 33.652611, 48.969189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.169971, 33.550552, 48.883862>,  <41.539185, 34.123329, 49.058811>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.169971, 33.550552, 48.883862> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.535538, 33.445446, 49.007614>,  <41.754875, 33.382381, 49.081867>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.535538, 33.445446, 49.007614>,  <41.169971, 33.550552, 48.883862>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.535538, 33.445446, 49.007614> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404065, -0.516316, 0.755083,
		-0.038666, -0.815091, -0.578040,
		0.913913, -0.262762, 0.309386,
		41.809711, 33.366619, 49.100430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.202541, 32.819008, 48.991642>,  <41.169971, 33.550552, 48.883862>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.202541, 32.819008, 48.991642> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.524414, 32.934601, 49.199097>,  <41.717537, 33.003956, 49.323570>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.524414, 32.934601, 49.199097>,  <41.202541, 32.819008, 48.991642>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.524414, 32.934601, 49.199097> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273624, -0.594741, 0.755919,
		0.526897, -0.750183, -0.399505,
		0.804680, 0.288978, 0.518636,
		41.765820, 33.021294, 49.354687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.505829, 32.172321, 49.299801>,  <41.202541, 32.819008, 48.991642>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.505829, 32.172321, 49.299801> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.597054, 32.502136, 49.506924>,  <41.651787, 32.700027, 49.631195>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.597054, 32.502136, 49.506924>,  <41.505829, 32.172321, 49.299801>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.597054, 32.502136, 49.506924> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503149, -0.355497, 0.787695,
		0.833564, -0.440175, 0.333792,
		0.228061, 0.824541, 0.517803,
		41.665470, 32.749500, 49.662266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.518127, 31.877977, 49.965855>,  <41.505829, 32.172321, 49.299801>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.518127, 31.877977, 49.965855> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.590630, 32.261429, 50.053654>,  <41.634132, 32.491501, 50.106331>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.590630, 32.261429, 50.053654>,  <41.518127, 31.877977, 49.965855>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.590630, 32.261429, 50.053654> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248186, -0.171377, 0.953433,
		0.951604, -0.227291, 0.206855,
		0.181257, 0.958628, 0.219494,
		41.645008, 32.549019, 50.119503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.889683, 31.935570, 50.621746>,  <41.518127, 31.877977, 49.965855>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.889683, 31.935570, 50.621746> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.722298, 32.297760, 50.593464>,  <41.621868, 32.515076, 50.576496>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.722298, 32.297760, 50.593464>,  <41.889683, 31.935570, 50.621746>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.722298, 32.297760, 50.593464> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411980, -0.119861, 0.903275,
		0.809420, 0.407117, 0.423196,
		-0.418463, 0.905477, -0.070706,
		41.596760, 32.569405, 50.572250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.865517, 32.150631, 51.266201>,  <41.889683, 31.935570, 50.621746>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.865517, 32.150631, 51.266201> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.591751, 32.376114, 51.081242>,  <41.427490, 32.511402, 50.970264>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.591751, 32.376114, 51.081242>,  <41.865517, 32.150631, 51.266201>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.591751, 32.376114, 51.081242> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563077, -0.005780, 0.826384,
		0.463166, 0.825955, 0.321366,
		-0.684413, 0.563707, -0.462399,
		41.386429, 32.545227, 50.942520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.736267, 32.923248, 51.641403>,  <41.865517, 32.150631, 51.266201>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.736267, 32.923248, 51.641403> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.434322, 32.739033, 51.454605>,  <41.253155, 32.628502, 51.342525>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.434322, 32.739033, 51.454605>,  <41.736267, 32.923248, 51.641403>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.434322, 32.739033, 51.454605> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465436, -0.125532, 0.876134,
		-0.462116, 0.878718, -0.119592,
		-0.754863, -0.460538, -0.466998,
		41.207863, 32.600872, 51.314507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.037830, 33.402359, 51.700207>,  <41.736267, 32.923248, 51.641403>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.037830, 33.402359, 51.700207> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.003609, 33.004639, 51.674767>,  <40.983078, 32.766006, 51.659500>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.003609, 33.004639, 51.674767>,  <41.037830, 33.402359, 51.700207>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.003609, 33.004639, 51.674767> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531767, -0.008417, 0.846848,
		-0.842558, 0.106272, -0.528017,
		-0.085552, -0.994301, -0.063604,
		40.977943, 32.706348, 51.655685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.254421, 33.985191, 52.183331>,  <41.037830, 33.402359, 51.700207>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.254421, 33.985191, 52.183331> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.222904, 34.374184, 52.271042>,  <41.203995, 34.607578, 52.323669>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.222904, 34.374184, 52.271042>,  <41.254421, 33.985191, 52.183331>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.222904, 34.374184, 52.271042> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321867, 0.183361, -0.928860,
		-0.943501, -0.143767, 0.298560,
		-0.078795, 0.972476, 0.219275,
		41.199265, 34.665928, 52.336826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.668442, 34.201973, 51.853874>,  <41.254421, 33.985191, 52.183331>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.668442, 34.201973, 51.853874> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.818939, 34.566612, 51.920128>,  <40.909237, 34.785397, 51.959881>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.818939, 34.566612, 51.920128>,  <40.668442, 34.201973, 51.853874>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.818939, 34.566612, 51.920128> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480535, 0.344837, -0.806333,
		-0.792167, 0.223784, 0.567796,
		0.376242, 0.911597, 0.165633,
		40.931812, 34.840092, 51.969818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.076401, 34.660286, 51.915890>,  <40.668442, 34.201973, 51.853874>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.076401, 34.660286, 51.915890> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.386959, 34.892330, 51.817352>,  <40.573292, 35.031555, 51.758228>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.386959, 34.892330, 51.817352>,  <40.076401, 34.660286, 51.915890>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.386959, 34.892330, 51.817352> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486481, 0.303117, -0.819424,
		-0.400685, 0.756038, 0.517550,
		0.776394, 0.580110, -0.246344,
		40.619877, 35.066364, 51.743450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.846676, 35.249603, 51.614815>,  <40.076401, 34.660286, 51.915890>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.846676, 35.249603, 51.614815> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.220531, 35.272442, 51.474422>,  <40.444843, 35.286144, 51.390186>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.220531, 35.272442, 51.474422>,  <39.846676, 35.249603, 51.614815>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.220531, 35.272442, 51.474422> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338909, 0.441825, -0.830621,
		0.107648, 0.895283, 0.432297,
		0.934640, 0.057095, -0.350981,
		40.500923, 35.289570, 51.369129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.899063, 35.839104, 51.315998>,  <39.846676, 35.249603, 51.614815>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.899063, 35.839104, 51.315998> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.189362, 35.639725, 51.126331>,  <40.363541, 35.520096, 51.012531>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.189362, 35.639725, 51.126331>,  <39.899063, 35.839104, 51.315998>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.189362, 35.639725, 51.126331> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347559, 0.329166, -0.877982,
		0.593710, 0.801996, 0.065652,
		0.725749, -0.498449, -0.474170,
		40.407085, 35.490189, 50.984081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.992405, 36.187389, 50.704071>,  <39.899063, 35.839104, 51.315998>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.992405, 36.187389, 50.704071> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.184071, 35.849083, 50.610195>,  <40.299072, 35.646099, 50.553871>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.184071, 35.849083, 50.610195>,  <39.992405, 36.187389, 50.704071>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.184071, 35.849083, 50.610195> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225330, 0.139890, -0.964188,
		0.848308, 0.514889, -0.123546,
		0.479167, -0.845766, -0.234689,
		40.327820, 35.595352, 50.539787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.340073, 36.334766, 49.990761>,  <39.992405, 36.187389, 50.704071>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.340073, 36.334766, 49.990761> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.333031, 35.939671, 50.052814>,  <40.328808, 35.702614, 50.090046>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.333031, 35.939671, 50.052814>,  <40.340073, 36.334766, 49.990761>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.333031, 35.939671, 50.052814> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358141, -0.138631, -0.923318,
		0.933502, -0.071809, -0.351309,
		-0.017600, -0.987737, 0.155130,
		40.327751, 35.643349, 50.099354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.717869, 36.125206, 49.478401>,  <40.340073, 36.334766, 49.990761>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.717869, 36.125206, 49.478401> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.489563, 35.818039, 49.594700>,  <40.352581, 35.633739, 49.664478>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.489563, 35.818039, 49.594700>,  <40.717869, 36.125206, 49.478401>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.489563, 35.818039, 49.594700> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467078, 0.012420, -0.884129,
		0.675326, -0.640429, -0.365766,
		-0.570765, -0.767917, 0.290744,
		40.318333, 35.587666, 49.681923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.700470, 35.434338, 49.065437>,  <40.717869, 36.125206, 49.478401>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.700470, 35.434338, 49.065437> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.345280, 35.437340, 49.249371>,  <40.132168, 35.439140, 49.359730>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.345280, 35.437340, 49.249371>,  <40.700470, 35.434338, 49.065437>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.345280, 35.437340, 49.249371> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459221, -0.068720, -0.885660,
		0.024958, -0.997608, 0.064466,
		-0.887971, 0.007500, 0.459838,
		40.078888, 35.439590, 49.387321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.337635, 35.014431, 48.672974>,  <40.700470, 35.434338, 49.065437>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.337635, 35.014431, 48.672974> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.041706, 35.171539, 48.891476>,  <39.864147, 35.265804, 49.022575>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.041706, 35.171539, 48.891476>,  <40.337635, 35.014431, 48.672974>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.041706, 35.171539, 48.891476> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.601915, -0.023652, -0.798210,
		-0.300593, -0.919332, 0.253913,
		-0.739826, 0.392770, 0.546250,
		39.819759, 35.289371, 49.055351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.721027, 34.577618, 48.572960>,  <40.337635, 35.014431, 48.672974>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.721027, 34.577618, 48.572960> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.599155, 34.942692, 48.681900>,  <39.526031, 35.161736, 48.747265>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.599155, 34.942692, 48.681900>,  <39.721027, 34.577618, 48.572960>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.599155, 34.942692, 48.681900> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469561, 0.104839, -0.876653,
		-0.828661, -0.394986, 0.396619,
		-0.304684, 0.912686, 0.272346,
		39.507751, 35.216499, 48.763603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.029812, 34.599998, 48.308487>,  <39.721027, 34.577618, 48.572960>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.029812, 34.599998, 48.308487> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.123810, 34.984669, 48.364998>,  <39.180210, 35.215469, 48.398903>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.123810, 34.984669, 48.364998>,  <39.029812, 34.599998, 48.308487>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.123810, 34.984669, 48.364998> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293376, 0.208742, -0.932930,
		-0.926664, 0.177791, 0.331186,
		0.234999, 0.961674, 0.141274,
		39.194309, 35.273170, 48.407379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.439911, 34.947464, 48.163624>,  <39.029812, 34.599998, 48.308487>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.439911, 34.947464, 48.163624> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.734604, 35.215225, 48.125420>,  <38.911419, 35.375881, 48.102497>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.734604, 35.215225, 48.125420>,  <38.439911, 34.947464, 48.163624>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.734604, 35.215225, 48.125420> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417868, 0.339675, -0.842619,
		-0.531611, 0.660696, 0.529973,
		0.736733, 0.669405, -0.095509,
		38.955624, 35.416046, 48.096767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.992611, 35.573456, 48.184731>,  <38.439911, 34.947464, 48.163624>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.992611, 35.573456, 48.184731> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.350521, 35.625908, 48.014000>,  <38.565266, 35.657379, 47.911560>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.350521, 35.625908, 48.014000>,  <37.992611, 35.573456, 48.184731>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.350521, 35.625908, 48.014000> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446269, 0.294455, -0.845068,
		0.014865, 0.946626, 0.321992,
		0.894775, 0.131133, -0.426827,
		38.618954, 35.665249, 47.885952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.381226, 36.058144, 48.432262>,  <37.992611, 35.573456, 48.184731>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.381226, 36.058144, 48.432262> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.027317, 35.871910, 48.424065>,  <36.814972, 35.760170, 48.419147>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.027317, 35.871910, 48.424065>,  <37.381226, 36.058144, 48.432262>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.027317, 35.871910, 48.424065> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156006, -0.337327, 0.928371,
		-0.439146, 0.818196, 0.371089,
		-0.884767, -0.465582, -0.020492,
		36.761887, 35.732235, 48.417915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.065346, 36.167664, 49.040863>,  <37.381226, 36.058144, 48.432262>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.065346, 36.167664, 49.040863> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.889317, 35.833252, 48.909779>,  <36.783699, 35.632607, 48.831127>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.889317, 35.833252, 48.909779>,  <37.065346, 36.167664, 49.040863>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.889317, 35.833252, 48.909779> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076664, -0.398599, 0.913916,
		-0.894686, 0.377062, 0.239504,
		-0.440068, -0.836028, -0.327714,
		36.757298, 35.582443, 48.811466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.561619, 36.114197, 49.459988>,  <37.065346, 36.167664, 49.040863>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.561619, 36.114197, 49.459988> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.574467, 35.747112, 49.301609>,  <36.582176, 35.526859, 49.206581>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.574467, 35.747112, 49.301609>,  <36.561619, 36.114197, 49.459988>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.574467, 35.747112, 49.301609> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154589, -0.395943, 0.905169,
		-0.987456, 0.032132, -0.154588,
		0.032123, -0.917713, -0.395943,
		36.584103, 35.471798, 49.182827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.992645, 35.742176, 49.761833>,  <36.561619, 36.114197, 49.459988>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.992645, 35.742176, 49.761833> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.248501, 35.471325, 49.616310>,  <36.402016, 35.308815, 49.528996>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.248501, 35.471325, 49.616310>,  <35.992645, 35.742176, 49.761833>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.248501, 35.471325, 49.616310> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021887, -0.457060, 0.889166,
		-0.768361, -0.576711, -0.277535,
		0.639642, -0.677126, -0.363810,
		36.440395, 35.268188, 49.507168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.940735, 35.254288, 50.284561>,  <35.992645, 35.742176, 49.761833>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.940735, 35.254288, 50.284561> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.261768, 35.166843, 50.062546>,  <36.454388, 35.114376, 49.929337>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.261768, 35.166843, 50.062546>,  <35.940735, 35.254288, 50.284561>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.261768, 35.166843, 50.062546> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411238, -0.471249, 0.780261,
		-0.432131, -0.854479, -0.288319,
		0.802588, -0.218607, -0.555036,
		36.502544, 35.101261, 49.896034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.029526, 34.641857, 50.327190>,  <35.940735, 35.254288, 50.284561>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.029526, 34.641857, 50.327190> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.401512, 34.740891, 50.218483>,  <36.624706, 34.800312, 50.153259>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.401512, 34.740891, 50.218483>,  <36.029526, 34.641857, 50.327190>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.401512, 34.740891, 50.218483> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341892, -0.310697, 0.886892,
		0.135147, -0.917697, -0.373587,
		0.929970, 0.247588, -0.271764,
		36.680504, 34.815166, 50.136955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.443821, 34.050301, 50.494553>,  <36.029526, 34.641857, 50.327190>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.443821, 34.050301, 50.494553> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.701843, 34.355701, 50.482101>,  <36.856655, 34.538944, 50.474632>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.701843, 34.355701, 50.482101>,  <36.443821, 34.050301, 50.494553>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.701843, 34.355701, 50.482101> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420897, -0.321007, 0.848410,
		0.637773, -0.560370, -0.528423,
		0.645052, 0.763505, -0.031128,
		36.895359, 34.584751, 50.472763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.522942, 33.413307, 50.141380>,  <36.443821, 34.050301, 50.494553>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.522942, 33.413307, 50.141380> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.240448, 33.150940, 50.247971>,  <36.070953, 32.993519, 50.311924>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.240448, 33.150940, 50.247971>,  <36.522942, 33.413307, 50.141380>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.240448, 33.150940, 50.247971> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.558284, 0.284490, -0.779349,
		0.435380, -0.699169, -0.567105,
		-0.706232, -0.655918, 0.266473,
		36.028580, 32.954166, 50.327911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.468063, 32.998913, 49.556583>,  <36.522942, 33.413307, 50.141380>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.468063, 32.998913, 49.556583> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.116894, 32.927925, 49.734463>,  <35.906193, 32.885334, 49.841190>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.116894, 32.927925, 49.734463>,  <36.468063, 32.998913, 49.556583>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.116894, 32.927925, 49.734463> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460761, 0.060624, -0.885451,
		0.130182, -0.982257, -0.134995,
		-0.877924, -0.177470, 0.444694,
		35.853516, 32.874683, 49.867870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.135498, 32.427223, 49.148029>,  <36.468063, 32.998913, 49.556583>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.135498, 32.427223, 49.148029> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.854580, 32.616417, 49.360847>,  <35.686028, 32.729931, 49.488537>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.854580, 32.616417, 49.360847>,  <36.135498, 32.427223, 49.148029>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.854580, 32.616417, 49.360847> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581644, 0.049673, -0.811926,
		-0.410452, -0.879672, 0.240220,
		-0.702296, 0.472980, 0.532044,
		35.643890, 32.758312, 49.520462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.599220, 32.056915, 48.847404>,  <36.135498, 32.427223, 49.148029>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.599220, 32.056915, 48.847404> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.449272, 32.376637, 49.035271>,  <35.359303, 32.568470, 49.147991>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.449272, 32.376637, 49.035271>,  <35.599220, 32.056915, 48.847404>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.449272, 32.376637, 49.035271> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.610610, 0.168333, -0.773834,
		-0.697589, -0.576870, 0.424960,
		-0.374867, 0.799303, 0.469670,
		35.336811, 32.616428, 49.176170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.805454, 31.961870, 48.687073>,  <35.599220, 32.056915, 48.847404>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.805454, 31.961870, 48.687073> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.854294, 32.335896, 48.820190>,  <34.883598, 32.560310, 48.900059>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.854294, 32.335896, 48.820190>,  <34.805454, 31.961870, 48.687073>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.854294, 32.335896, 48.820190> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.713907, 0.315680, -0.625047,
		-0.689513, -0.161263, 0.706092,
		0.122102, 0.935062, 0.332792,
		34.890926, 32.616413, 48.920029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.157230, 32.237469, 48.757015>,  <34.805454, 31.961870, 48.687073>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.157230, 32.237469, 48.757015> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.370548, 32.574635, 48.728489>,  <34.498539, 32.776936, 48.711372>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.370548, 32.574635, 48.728489>,  <34.157230, 32.237469, 48.757015>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.370548, 32.574635, 48.728489> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.607094, 0.322660, -0.726173,
		-0.589092, 0.430561, 0.683804,
		0.533298, 0.842916, -0.071314,
		34.530537, 32.827511, 48.707096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.594563, 32.743237, 48.672348>,  <34.157230, 32.237469, 48.757015>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.594563, 32.743237, 48.672348> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.946861, 32.879238, 48.540482>,  <34.158241, 32.960838, 48.461361>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.946861, 32.879238, 48.540482>,  <33.594563, 32.743237, 48.672348>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.946861, 32.879238, 48.540482> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444903, 0.355438, -0.822025,
		-0.162316, 0.870666, 0.464321,
		0.880746, 0.340006, -0.329669,
		34.211086, 32.981239, 48.441582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<39.132729, 30.899748, 51.022057> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.175961, 31.264862, 50.864502>,  <39.201900, 31.483931, 50.769970>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.175961, 31.264862, 50.864502>,  <39.132729, 30.899748, 51.022057>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.175961, 31.264862, 50.864502> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336052, -0.339335, -0.878590,
		-0.935621, 0.227327, 0.270066,
		0.108084, 0.912784, -0.393882,
		39.208385, 31.538696, 50.746338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.509445, 31.122923, 50.668633>,  <39.132729, 30.899748, 51.022057>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.509445, 31.122923, 50.668633> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.803986, 31.310341, 50.473389>,  <38.980709, 31.422792, 50.356243>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.803986, 31.310341, 50.473389>,  <38.509445, 31.122923, 50.668633>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.803986, 31.310341, 50.473389> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319058, -0.395709, -0.861172,
		-0.596649, 0.789860, -0.141887,
		0.736351, 0.468547, -0.488110,
		39.024891, 31.450905, 50.326954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.305500, 31.379440, 50.095890>,  <38.509445, 31.122923, 50.668633>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.305500, 31.379440, 50.095890> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.690613, 31.393955, 49.988758>,  <38.921680, 31.402664, 49.924477>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.690613, 31.393955, 49.988758>,  <38.305500, 31.379440, 50.095890>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.690613, 31.393955, 49.988758> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234565, -0.380124, -0.894699,
		-0.134276, 0.924224, -0.357464,
		0.962782, 0.036288, -0.267832,
		38.979446, 31.404842, 49.908409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.182156, 31.539209, 49.473644>,  <38.305500, 31.379440, 50.095890>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.182156, 31.539209, 49.473644> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.567001, 31.431461, 49.490532>,  <38.797909, 31.366812, 49.500664>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.567001, 31.431461, 49.490532>,  <38.182156, 31.539209, 49.473644>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.567001, 31.431461, 49.490532> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063302, -0.371293, -0.926356,
		0.265209, 0.888584, -0.374276,
		0.962111, -0.269370, 0.042221,
		38.855633, 31.350651, 49.503197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.515251, 31.888821, 48.910904>,  <38.182156, 31.539209, 49.473644>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.515251, 31.888821, 48.910904> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.706818, 31.556446, 49.024174>,  <38.821758, 31.357021, 49.092136>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.706818, 31.556446, 49.024174>,  <38.515251, 31.888821, 48.910904>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.706818, 31.556446, 49.024174> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198880, -0.416881, -0.886937,
		0.855035, 0.368453, -0.364908,
		0.478918, -0.830935, 0.283170,
		38.850494, 31.307165, 49.109123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.984207, 31.778046, 48.367661>,  <38.515251, 31.888821, 48.910904>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.984207, 31.778046, 48.367661> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.925747, 31.423298, 48.542976>,  <38.890671, 31.210449, 48.648167>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.925747, 31.423298, 48.542976>,  <38.984207, 31.778046, 48.367661>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.925747, 31.423298, 48.542976> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288047, -0.385703, -0.876506,
		0.946397, -0.254354, -0.199088,
		-0.146154, -0.886869, 0.438294,
		38.881901, 31.157238, 48.674465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.313427, 31.309484, 47.984673>,  <38.984207, 31.778046, 48.367661>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.313427, 31.309484, 47.984673> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.065071, 31.071175, 48.188454>,  <38.916058, 30.928188, 48.310722>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.065071, 31.071175, 48.188454>,  <39.313427, 31.309484, 47.984673>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.065071, 31.071175, 48.188454> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112892, -0.575167, -0.810209,
		0.775724, -0.560566, 0.289859,
		-0.620893, -0.595776, 0.509454,
		38.878803, 30.892443, 48.341290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.510666, 30.614277, 47.922729>,  <39.313427, 31.309484, 47.984673>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.510666, 30.614277, 47.922729> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.123707, 30.609114, 48.023907>,  <38.891533, 30.606016, 48.084614>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.123707, 30.609114, 48.023907>,  <39.510666, 30.614277, 47.922729>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.123707, 30.609114, 48.023907> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229374, -0.378813, -0.896598,
		0.107388, -0.925383, 0.363502,
		-0.967396, -0.012906, 0.252939,
		38.833488, 30.605242, 48.099789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.312767, 30.069555, 47.681763>,  <39.510666, 30.614277, 47.922729>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.312767, 30.069555, 47.681763> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.971249, 30.270041, 47.738060>,  <38.766338, 30.390331, 47.771839>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.971249, 30.270041, 47.738060>,  <39.312767, 30.069555, 47.681763>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.971249, 30.270041, 47.738060> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255618, -0.168090, -0.952053,
		-0.453526, -0.848840, 0.271635,
		-0.853800, 0.501216, 0.140746,
		38.715107, 30.420404, 47.780285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.859566, 29.600164, 47.440292>,  <39.312767, 30.069555, 47.681763>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.859566, 29.600164, 47.440292> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.698425, 29.966183, 47.432266>,  <38.601742, 30.185793, 47.427448>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.698425, 29.966183, 47.432266>,  <38.859566, 29.600164, 47.440292>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.698425, 29.966183, 47.432266> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258289, -0.134694, -0.956632,
		-0.878065, -0.380197, 0.290608,
		-0.402852, 0.915045, -0.020069,
		38.577568, 30.240696, 47.426247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.194469, 29.532694, 47.137955>,  <38.859566, 29.600164, 47.440292>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.194469, 29.532694, 47.137955> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.335049, 29.903511, 47.085678>,  <38.419395, 30.126001, 47.054314>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.335049, 29.903511, 47.085678>,  <38.194469, 29.532694, 47.137955>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.335049, 29.903511, 47.085678> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373966, 0.011035, -0.927377,
		-0.858274, 0.374796, 0.350561,
		0.351446, 0.927042, -0.130690,
		38.440483, 30.181623, 47.046471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.583549, 29.926550, 46.898235>,  <38.194469, 29.532694, 47.137955>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.583549, 29.926550, 46.898235> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.935516, 30.082996, 46.790325>,  <38.146698, 30.176865, 46.725578>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.935516, 30.082996, 46.790325>,  <37.583549, 29.926550, 46.898235>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.935516, 30.082996, 46.790325> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304412, 0.028127, -0.952125,
		-0.364803, 0.919911, 0.143810,
		0.879916, 0.391116, -0.269771,
		38.199490, 30.200331, 46.709393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.182384, 30.590893, 47.007881>,  <37.583549, 29.926550, 46.898235>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.182384, 30.590893, 47.007881> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.820766, 30.444960, 46.918793>,  <36.603798, 30.357399, 46.865341>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.820766, 30.444960, 46.918793>,  <37.182384, 30.590893, 47.007881>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.820766, 30.444960, 46.918793> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043524, -0.439774, 0.897053,
		-0.425223, 0.820667, 0.381695,
		-0.904041, -0.364835, -0.222721,
		36.549553, 30.335508, 46.851974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.730331, 30.754480, 47.591175>,  <37.182384, 30.590893, 47.007881>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.730331, 30.754480, 47.591175> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.560322, 30.432037, 47.426468>,  <36.458317, 30.238571, 47.327644>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.560322, 30.432037, 47.426468>,  <36.730331, 30.754480, 47.591175>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.560322, 30.432037, 47.426468> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119933, -0.400738, 0.908309,
		-0.897204, 0.435433, 0.073643,
		-0.425019, -0.806106, -0.411766,
		36.432816, 30.190205, 47.302937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.969135, 30.750412, 47.753223>,  <36.730331, 30.754480, 47.591175>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.969135, 30.750412, 47.753223> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.077274, 30.372816, 47.677544>,  <36.142159, 30.146259, 47.632137>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.077274, 30.372816, 47.677544>,  <35.969135, 30.750412, 47.753223>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.077274, 30.372816, 47.677544> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292917, -0.267848, 0.917854,
		-0.917120, -0.192725, -0.348924,
		0.270352, -0.943989, -0.189197,
		36.158379, 30.089619, 47.620785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.481937, 30.374884, 48.101864>,  <35.969135, 30.750412, 47.753223>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.481937, 30.374884, 48.101864> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.774616, 30.119383, 48.006687>,  <35.950222, 29.966084, 47.949581>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.774616, 30.119383, 48.006687>,  <35.481937, 30.374884, 48.101864>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.774616, 30.119383, 48.006687> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113615, -0.458485, 0.881410,
		-0.672094, -0.617891, -0.408044,
		0.731698, -0.638750, -0.237943,
		35.994125, 29.927757, 47.935303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.155914, 29.788015, 48.415462>,  <35.481937, 30.374884, 48.101864>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.155914, 29.788015, 48.415462> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.543098, 29.716297, 48.345131>,  <35.775410, 29.673267, 48.302933>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.543098, 29.716297, 48.345131>,  <35.155914, 29.788015, 48.415462>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.543098, 29.716297, 48.345131> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089681, -0.407194, 0.908928,
		-0.234559, -0.895571, -0.378067,
		0.967956, -0.179292, -0.175827,
		35.833485, 29.662510, 48.292381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.224876, 29.143744, 48.669979>,  <35.155914, 29.788015, 48.415462>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.224876, 29.143744, 48.669979> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.602127, 29.274202, 48.644234>,  <35.828476, 29.352478, 48.628788>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.602127, 29.274202, 48.644234>,  <35.224876, 29.143744, 48.669979>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.602127, 29.274202, 48.644234> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162160, -0.282324, 0.945514,
		0.290207, -0.902175, -0.319155,
		0.943125, 0.326149, -0.064364,
		35.885063, 29.372047, 48.624924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.761726, 28.537100, 48.753033>,  <35.224876, 29.143744, 48.669979>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.761726, 28.537100, 48.753033> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.877945, 28.905321, 48.857464>,  <35.947674, 29.126255, 48.920124>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.877945, 28.905321, 48.857464>,  <35.761726, 28.537100, 48.753033>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.877945, 28.905321, 48.857464> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029837, -0.281432, 0.959117,
		0.956396, -0.270876, -0.109235,
		0.290544, 0.920555, 0.261079,
		35.965107, 29.181488, 48.935787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.397423, 28.377691, 49.154354>,  <35.761726, 28.537100, 48.753033>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.397423, 28.377691, 49.154354> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.332905, 28.761431, 49.246994>,  <36.294193, 28.991674, 49.302578>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.332905, 28.761431, 49.246994>,  <36.397423, 28.377691, 49.154354>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.332905, 28.761431, 49.246994> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247947, -0.187754, 0.950406,
		0.955253, 0.210715, -0.207584,
		-0.161290, 0.959347, 0.231599,
		36.284519, 29.049234, 49.316475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.840679, 28.368860, 49.651012>,  <36.397423, 28.377691, 49.154354>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.840679, 28.368860, 49.651012> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.619225, 28.696928, 49.708717>,  <36.486351, 28.893768, 49.743340>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.619225, 28.696928, 49.708717>,  <36.840679, 28.368860, 49.651012>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.619225, 28.696928, 49.708717> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204937, -0.033717, 0.978194,
		0.807148, 0.571129, -0.149416,
		-0.553637, 0.820168, 0.144260,
		36.453133, 28.942978, 49.751995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.209385, 28.828503, 50.081669>,  <36.840679, 28.368860, 49.651012>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.209385, 28.828503, 50.081669> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.836281, 28.968674, 50.115505>,  <36.612419, 29.052776, 50.135807>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.836281, 28.968674, 50.115505>,  <37.209385, 28.828503, 50.081669>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.836281, 28.968674, 50.115505> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126170, 0.097530, 0.987203,
		0.337693, 0.931498, -0.135186,
		-0.932762, 0.350427, 0.084591,
		36.556454, 29.073801, 50.140884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.260445, 29.381052, 50.451199>,  <37.209385, 28.828503, 50.081669>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.260445, 29.381052, 50.451199> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.864803, 29.352177, 50.502514>,  <36.627419, 29.334852, 50.533302>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.864803, 29.352177, 50.502514>,  <37.260445, 29.381052, 50.451199>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.864803, 29.352177, 50.502514> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113541, 0.180529, 0.976994,
		-0.093686, 0.980917, -0.170366,
		-0.989106, -0.072187, 0.128287,
		36.568073, 29.330521, 50.541000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.150269, 29.926394, 50.844612>,  <37.260445, 29.381052, 50.451199>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.150269, 29.926394, 50.844612> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.858059, 29.657446, 50.892361>,  <36.682732, 29.496077, 50.921009>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.858059, 29.657446, 50.892361>,  <37.150269, 29.926394, 50.844612>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.858059, 29.657446, 50.892361> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053868, 0.117515, 0.991609,
		-0.680756, 0.730827, -0.049629,
		-0.730527, -0.672371, 0.119368,
		36.638901, 29.455734, 50.928169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.629089, 30.188889, 51.326542>,  <37.150269, 29.926394, 50.844612>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.629089, 30.188889, 51.326542> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.558830, 29.795675, 51.347683>,  <36.516674, 29.559748, 51.360367>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.558830, 29.795675, 51.347683>,  <36.629089, 30.188889, 51.326542>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.558830, 29.795675, 51.347683> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032360, 0.059427, 0.997708,
		-0.983921, 0.173534, -0.042249,
		-0.175647, -0.983033, 0.052856,
		36.506138, 29.500765, 51.363541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.154408, 30.161568, 51.892731>,  <36.629089, 30.188889, 51.326542>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.154408, 30.161568, 51.892731> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.309349, 29.796637, 51.839649>,  <36.402313, 29.577677, 51.807800>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.309349, 29.796637, 51.839649>,  <36.154408, 30.161568, 51.892731>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.309349, 29.796637, 51.839649> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107900, -0.187812, 0.976260,
		-0.915594, -0.363843, -0.171191,
		0.387357, -0.912330, -0.132701,
		36.425556, 29.522938, 51.799839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.628708, 30.770050, 52.070751>,  <36.154408, 30.161568, 51.892731>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.628708, 30.770050, 52.070751> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.597614, 31.021076, 52.380619>,  <36.578960, 31.171692, 52.566540>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.597614, 31.021076, 52.380619>,  <36.628708, 30.770050, 52.070751>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.597614, 31.021076, 52.380619> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388505, 0.696532, -0.603247,
		-0.918162, -0.347856, 0.189671,
		-0.077731, 0.627567, 0.774673,
		36.574295, 31.209347, 52.613022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.956108, 30.911350, 52.132729>,  <36.628708, 30.770050, 52.070751>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.956108, 30.911350, 52.132729> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.173393, 31.206240, 52.293438>,  <36.303764, 31.383173, 52.389862>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.173393, 31.206240, 52.293438>,  <35.956108, 30.911350, 52.132729>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.173393, 31.206240, 52.293438> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350115, 0.633842, -0.689684,
		-0.763110, 0.233981, 0.602425,
		0.543216, 0.737223, 0.401771,
		36.336357, 31.427406, 52.413971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.472271, 31.374453, 52.071289>,  <35.956108, 30.911350, 52.132729>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.472271, 31.374453, 52.071289> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.828136, 31.556509, 52.085938>,  <36.041656, 31.665743, 52.094727>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.828136, 31.556509, 52.085938>,  <35.472271, 31.374453, 52.071289>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.828136, 31.556509, 52.085938> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212685, 0.484038, -0.848806,
		-0.404053, 0.747365, 0.527434,
		0.889666, 0.455140, 0.036623,
		36.095036, 31.693050, 52.096924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.309536, 32.092518, 51.975163>,  <35.472271, 31.374453, 52.071289>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.309536, 32.092518, 51.975163> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.695198, 32.052792, 51.876747>,  <35.926598, 32.028957, 51.817696>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.695198, 32.052792, 51.876747>,  <35.309536, 32.092518, 51.975163>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.695198, 32.052792, 51.876747> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118150, 0.669599, -0.733265,
		0.237571, 0.736053, 0.633866,
		0.964158, -0.099311, -0.246042,
		35.984444, 32.022999, 51.802933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.558090, 32.740765, 51.868111>,  <35.309536, 32.092518, 51.975163>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.558090, 32.740765, 51.868111> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.829098, 32.529385, 51.663479>,  <35.991703, 32.402557, 51.540699>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.829098, 32.529385, 51.663479>,  <35.558090, 32.740765, 51.868111>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.829098, 32.529385, 51.663479> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008477, 0.701109, -0.713004,
		0.735456, 0.478737, 0.479495,
		0.677520, -0.528447, -0.511576,
		36.032352, 32.370850, 51.510006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.168320, 33.222622, 51.614872>,  <35.558090, 32.740765, 51.868111>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.168320, 33.222622, 51.614872> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.188599, 32.904381, 51.373394>,  <36.200768, 32.713436, 51.228508>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.188599, 32.904381, 51.373394>,  <36.168320, 33.222622, 51.614872>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.188599, 32.904381, 51.373394> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170813, 0.602475, -0.779646,
		0.983998, -0.063590, 0.166446,
		0.050702, -0.795601, -0.603696,
		36.203808, 32.665699, 51.192284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.589413, 33.381756, 51.003330>,  <36.168320, 33.222622, 51.614872>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.589413, 33.381756, 51.003330> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.351414, 33.074753, 50.907913>,  <36.208614, 32.890549, 50.850662>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.351414, 33.074753, 50.907913>,  <36.589413, 33.381756, 51.003330>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.351414, 33.074753, 50.907913> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267966, 0.469254, -0.841424,
		0.757739, -0.436726, -0.484873,
		-0.595000, -0.767509, -0.238544,
		36.172913, 32.844501, 50.836349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.154579, 33.843620, 50.644085>,  <36.589413, 33.381756, 51.003330>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.154579, 33.843620, 50.644085> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.165352, 34.237221, 50.714531>,  <37.171818, 34.473381, 50.756798>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.165352, 34.237221, 50.714531>,  <37.154579, 33.843620, 50.644085>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.165352, 34.237221, 50.714531> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599176, -0.156913, 0.785090,
		0.800164, 0.084377, -0.593816,
		0.026934, 0.984001, 0.176113,
		37.173431, 34.532421, 50.767365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.819817, 34.043434, 50.687836>,  <37.154579, 33.843620, 50.644085>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.819817, 34.043434, 50.687836> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.617073, 34.332630, 50.875614>,  <37.495426, 34.506149, 50.988281>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.617073, 34.332630, 50.875614>,  <37.819817, 34.043434, 50.687836>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.617073, 34.332630, 50.875614> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.688283, 0.011548, 0.725350,
		0.519000, 0.690762, -0.503475,
		-0.506858, 0.722990, 0.469447,
		37.465015, 34.549526, 51.016449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.259300, 34.581577, 50.792873>,  <37.819817, 34.043434, 50.687836>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.259300, 34.581577, 50.792873> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.981930, 34.639824, 51.075138>,  <37.815510, 34.674770, 51.244495>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.981930, 34.639824, 51.075138>,  <38.259300, 34.581577, 50.792873>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.981930, 34.639824, 51.075138> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.720113, 0.173337, 0.671856,
		-0.024486, 0.974038, -0.225055,
		-0.693424, 0.145614, 0.705662,
		37.773903, 34.683510, 51.286839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.657562, 35.081062, 51.207909>,  <38.259300, 34.581577, 50.792873>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.657562, 35.081062, 51.207909> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.344406, 34.968773, 51.430000>,  <38.156513, 34.901398, 51.563255>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.344406, 34.968773, 51.430000>,  <38.657562, 35.081062, 51.207909>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.344406, 34.968773, 51.430000> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550632, 0.102818, 0.828392,
		-0.289636, 0.954266, 0.074080,
		-0.782889, -0.280723, 0.555229,
		38.109539, 34.884556, 51.596569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.510513, 35.543739, 51.789661>,  <38.657562, 35.081062, 51.207909>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.510513, 35.543739, 51.789661> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.336876, 35.205296, 51.913372>,  <38.232693, 35.002228, 51.987598>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.336876, 35.205296, 51.913372>,  <38.510513, 35.543739, 51.789661>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.336876, 35.205296, 51.913372> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460329, 0.086769, 0.883498,
		-0.774375, 0.525892, 0.351825,
		-0.434097, -0.846114, 0.309275,
		38.206646, 34.951462, 52.006153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.270679, 35.692753, 52.466164>,  <38.510513, 35.543739, 51.789661>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.270679, 35.692753, 52.466164> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.287251, 35.293098, 52.465649>,  <38.297195, 35.053307, 52.465340>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.287251, 35.293098, 52.465649>,  <38.270679, 35.692753, 52.466164>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.287251, 35.293098, 52.465649> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585021, 0.023216, 0.810686,
		-0.809959, -0.034339, 0.585480,
		0.041431, -0.999141, -0.001286,
		38.299679, 34.993355, 52.465263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.238617, 35.508732, 53.168938>,  <38.270679, 35.692753, 52.466164>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.238617, 35.508732, 53.168938> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.383923, 35.184273, 52.985603>,  <38.471107, 34.989597, 52.875603>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.383923, 35.184273, 52.985603>,  <38.238617, 35.508732, 53.168938>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.383923, 35.184273, 52.985603> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.664994, -0.118816, 0.737337,
		-0.652548, -0.572643, 0.496247,
		0.363269, -0.811149, -0.458337,
		38.492905, 34.940929, 52.848103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.147121, 34.901840, 53.671421>,  <38.238617, 35.508732, 53.168938>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.147121, 34.901840, 53.671421> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.416992, 34.742382, 53.422943>,  <38.578915, 34.646706, 53.273857>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.416992, 34.742382, 53.422943>,  <38.147121, 34.901840, 53.671421>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.416992, 34.742382, 53.422943> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555746, -0.279504, 0.782959,
		-0.485754, -0.873474, 0.032973,
		0.674678, -0.398650, -0.621199,
		38.619396, 34.622787, 53.236584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.298927, 34.131859, 53.798443>,  <38.147121, 34.901840, 53.671421>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.298927, 34.131859, 53.798443> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.624538, 34.300671, 53.638817>,  <38.819904, 34.401958, 53.543041>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.624538, 34.300671, 53.638817>,  <38.298927, 34.131859, 53.798443>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.624538, 34.300671, 53.638817> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531764, -0.265138, 0.804319,
		0.233637, -0.866946, -0.440248,
		0.814028, 0.422026, -0.399064,
		38.868748, 34.427277, 53.519096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<34.757442, 37.934593, 38.645931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.142933, 37.827831, 38.646164>,  <35.374226, 37.763775, 38.646305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.142933, 37.827831, 38.646164>,  <34.757442, 37.934593, 38.645931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.142933, 37.827831, 38.646164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012548, 0.047497, 0.998793,
		-0.266613, -0.962551, 0.049123,
		0.963722, -0.266908, 0.000585,
		35.432049, 37.747761, 38.646339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.888187, 37.320717, 39.091431>,  <34.757442, 37.934593, 38.645931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.888187, 37.320717, 39.091431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.220291, 37.542767, 39.071384>,  <35.419552, 37.675995, 39.059357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.220291, 37.542767, 39.071384>,  <34.888187, 37.320717, 39.091431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.220291, 37.542767, 39.071384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122003, -0.093268, 0.988138,
		0.543866, -0.826521, -0.145163,
		0.830256, 0.555125, -0.050113,
		35.469368, 37.709305, 39.056351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.416145, 36.857986, 39.215927>,  <34.888187, 37.320717, 39.091431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.416145, 36.857986, 39.215927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.531055, 37.231270, 39.302280>,  <35.600002, 37.455238, 39.354092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.531055, 37.231270, 39.302280>,  <35.416145, 36.857986, 39.215927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.531055, 37.231270, 39.302280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088562, -0.250291, 0.964112,
		0.953746, -0.257844, -0.154548,
		0.287273, 0.933204, 0.215879,
		35.617237, 37.511230, 39.367043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.981079, 36.839275, 39.642361>,  <35.416145, 36.857986, 39.215927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.981079, 36.839275, 39.642361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.864899, 37.215691, 39.711731>,  <35.795189, 37.441540, 39.753353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.864899, 37.215691, 39.711731>,  <35.981079, 36.839275, 39.642361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.864899, 37.215691, 39.711731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106550, -0.148310, 0.983184,
		0.950939, 0.304047, -0.057191,
		-0.290452, 0.941042, 0.173430,
		35.777763, 37.498005, 39.763760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.452366, 37.156994, 40.202042>,  <35.981079, 36.839275, 39.642361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.452366, 37.156994, 40.202042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.110367, 37.363758, 40.185181>,  <35.905167, 37.487816, 40.175064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.110367, 37.363758, 40.185181>,  <36.452366, 37.156994, 40.202042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.110367, 37.363758, 40.185181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023089, 0.043266, 0.998797,
		0.518112, 0.854946, -0.025057,
		-0.855001, 0.516910, -0.042157,
		35.853867, 37.518829, 40.172535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.560173, 37.712093, 40.651634>,  <36.452366, 37.156994, 40.202042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.560173, 37.712093, 40.651634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.165817, 37.647587, 40.633686>,  <35.929203, 37.608883, 40.622917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.165817, 37.647587, 40.633686>,  <36.560173, 37.712093, 40.651634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.165817, 37.647587, 40.633686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046805, 0.008203, 0.998870,
		-0.160714, 0.986877, -0.015635,
		-0.985891, -0.161265, -0.044872,
		35.870049, 37.599209, 40.620224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.300480, 38.002823, 41.283863>,  <36.560173, 37.712093, 40.651634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.300480, 38.002823, 41.283863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.004753, 37.763371, 41.160538>,  <35.827316, 37.619698, 41.086544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.004753, 37.763371, 41.160538>,  <36.300480, 38.002823, 41.283863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.004753, 37.763371, 41.160538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320339, -0.090055, 0.943013,
		-0.592283, 0.795946, -0.125186,
		-0.739313, -0.598632, -0.308310,
		35.782959, 37.583782, 41.068043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.770218, 38.139812, 41.774494>,  <36.300480, 38.002823, 41.283863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.770218, 38.139812, 41.774494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.640747, 37.812126, 41.585129>,  <35.563065, 37.615513, 41.471512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.640747, 37.812126, 41.585129>,  <35.770218, 38.139812, 41.774494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.640747, 37.812126, 41.585129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505552, -0.273194, 0.818402,
		-0.799782, 0.504230, -0.325731,
		-0.323675, -0.819218, -0.473410,
		35.543644, 37.566360, 41.443108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.016399, 38.137272, 41.803566>,  <35.770218, 38.139812, 41.774494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.016399, 38.137272, 41.803566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.144382, 37.763489, 41.741074>,  <35.221172, 37.539219, 41.703579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.144382, 37.763489, 41.741074>,  <35.016399, 38.137272, 41.803566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.144382, 37.763489, 41.741074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457847, -0.296874, 0.837999,
		-0.829458, -0.196597, -0.522828,
		0.319962, -0.934461, -0.156233,
		35.240372, 37.483150, 41.694202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.470158, 37.782124, 41.972443>,  <35.016399, 38.137272, 41.803566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.470158, 37.782124, 41.972443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.785736, 37.538223, 42.002819>,  <34.975082, 37.391884, 42.021046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.785736, 37.538223, 42.002819>,  <34.470158, 37.782124, 41.972443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.785736, 37.538223, 42.002819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302672, -0.278076, 0.911627,
		-0.534748, -0.742210, -0.403942,
		0.788945, -0.609753, 0.075945,
		35.022419, 37.355297, 42.025604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.099823, 37.142326, 42.140862>,  <34.470158, 37.782124, 41.972443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.099823, 37.142326, 42.140862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.484901, 37.101955, 42.241287>,  <34.715950, 37.077732, 42.301540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.484901, 37.101955, 42.241287>,  <34.099823, 37.142326, 42.140862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.484901, 37.101955, 42.241287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258420, -0.067837, 0.963648,
		-0.080228, -0.992578, -0.091388,
		0.962695, -0.100928, 0.251060,
		34.773708, 37.071678, 42.316605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.200790, 36.487869, 42.594467>,  <34.099823, 37.142326, 42.140862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.200790, 36.487869, 42.594467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.493061, 36.745502, 42.685032>,  <34.668423, 36.900082, 42.739372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.493061, 36.745502, 42.685032>,  <34.200790, 36.487869, 42.594467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.493061, 36.745502, 42.685032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260703, -0.043273, 0.964449,
		0.630986, -0.763728, 0.136297,
		0.730678, 0.644087, 0.226411,
		34.712265, 36.938728, 42.752956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.264935, 35.713234, 42.478264>,  <34.200790, 36.487869, 42.594467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.264935, 35.713234, 42.478264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.928272, 35.565449, 42.635799>,  <33.726273, 35.476776, 42.730320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.928272, 35.565449, 42.635799>,  <34.264935, 35.713234, 42.478264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.928272, 35.565449, 42.635799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477674, 0.169197, -0.862090,
		0.251877, -0.913710, -0.318890,
		-0.841656, -0.369467, 0.393839,
		33.675774, 35.454609, 42.753952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.079514, 35.127819, 41.980717>,  <34.264935, 35.713234, 42.478264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.079514, 35.127819, 41.980717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.745392, 35.248672, 42.164452>,  <33.544918, 35.321182, 42.274693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.745392, 35.248672, 42.164452>,  <34.079514, 35.127819, 41.980717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.745392, 35.248672, 42.164452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438220, 0.138659, -0.888108,
		-0.332015, -0.943128, 0.016577,
		-0.835302, 0.302130, 0.459335,
		33.494801, 35.339310, 42.302254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.471470, 34.718708, 41.671783>,  <34.079514, 35.127819, 41.980717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.471470, 34.718708, 41.671783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.331203, 35.054123, 41.838581>,  <33.247044, 35.255371, 41.938660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.331203, 35.054123, 41.838581>,  <33.471470, 34.718708, 41.671783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.331203, 35.054123, 41.838581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.562473, 0.167425, -0.809687,
		-0.748769, -0.518481, 0.412945,
		-0.350670, 0.838538, 0.416994,
		33.226002, 35.305683, 41.963680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.697414, 34.747299, 41.616409>,  <33.471470, 34.718708, 41.671783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.697414, 34.747299, 41.616409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.844330, 35.117054, 41.657597>,  <32.932480, 35.338909, 41.682308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.844330, 35.117054, 41.657597>,  <32.697414, 34.747299, 41.616409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.844330, 35.117054, 41.657597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485236, 0.284878, -0.826674,
		-0.793503, 0.253663, 0.553180,
		0.367285, 0.924391, 0.102965,
		32.954517, 35.394371, 41.688488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.213936, 35.184471, 41.406002>,  <32.697414, 34.747299, 41.616409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.213936, 35.184471, 41.406002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.506886, 35.456688, 41.397125>,  <32.682655, 35.620018, 41.391800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.506886, 35.456688, 41.397125>,  <32.213936, 35.184471, 41.406002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.506886, 35.456688, 41.397125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357787, 0.356903, -0.862907,
		-0.579324, 0.639910, 0.504875,
		0.732374, 0.680541, -0.022189,
		32.726597, 35.660851, 41.390469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.880720, 35.610321, 40.961094>,  <32.213936, 35.184471, 41.406002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.880720, 35.610321, 40.961094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.250053, 35.763618, 40.970779>,  <32.471653, 35.855595, 40.976589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.250053, 35.763618, 40.970779>,  <31.880720, 35.610321, 40.961094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.250053, 35.763618, 40.970779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072068, 0.234878, -0.969350,
		-0.377182, 0.893285, 0.244489,
		0.923331, 0.383241, 0.024214,
		32.527054, 35.878590, 40.978043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.851664, 36.266666, 40.601784>,  <31.880720, 35.610321, 40.961094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.851664, 36.266666, 40.601784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.246105, 36.201511, 40.614826>,  <32.482769, 36.162418, 40.622650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.246105, 36.201511, 40.614826>,  <31.851664, 36.266666, 40.601784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.246105, 36.201511, 40.614826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086077, 0.333149, -0.938937,
		0.142079, 0.928698, 0.342541,
		0.986106, -0.162888, 0.032606,
		32.541939, 36.152645, 40.624607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.157192, 36.791000, 40.136269>,  <31.851664, 36.266666, 40.601784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.157192, 36.791000, 40.136269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.446918, 36.516762, 40.165443>,  <32.620754, 36.352219, 40.182949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.446918, 36.516762, 40.165443>,  <32.157192, 36.791000, 40.136269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.446918, 36.516762, 40.165443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155363, 0.059238, -0.986080,
		0.671734, 0.725566, 0.149423,
		0.724318, -0.685598, 0.072934,
		32.664215, 36.311081, 40.187325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.695427, 37.030769, 39.735458>,  <32.157192, 36.791000, 40.136269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.695427, 37.030769, 39.735458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.735344, 36.632828, 39.742569>,  <32.759293, 36.394062, 39.746838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.735344, 36.632828, 39.742569>,  <32.695427, 37.030769, 39.735458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.735344, 36.632828, 39.742569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152211, -0.002395, -0.988345,
		0.983297, 0.101333, 0.151188,
		0.099790, -0.994850, 0.017778,
		32.765282, 36.334373, 39.747902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.234901, 36.981041, 39.298847>,  <32.695427, 37.030769, 39.735458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.234901, 36.981041, 39.298847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.068142, 36.618900, 39.331196>,  <32.968086, 36.401615, 39.350605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.068142, 36.618900, 39.331196>,  <33.234901, 36.981041, 39.298847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.068142, 36.618900, 39.331196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144330, -0.153778, -0.977507,
		0.897421, -0.395849, 0.194779,
		-0.416898, -0.905349, 0.080871,
		32.943073, 36.347294, 39.355457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.782799, 36.532482, 38.950417>,  <33.234901, 36.981041, 39.298847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.782799, 36.532482, 38.950417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.407551, 36.395279, 38.969475>,  <33.182400, 36.312958, 38.980911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.407551, 36.395279, 38.969475>,  <33.782799, 36.532482, 38.950417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.407551, 36.395279, 38.969475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083573, 0.090714, -0.992364,
		0.336071, -0.934940, -0.113767,
		-0.938121, -0.343013, 0.047649,
		33.126114, 36.292374, 38.983768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.790405, 36.024689, 38.322685>,  <33.782799, 36.532482, 38.950417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.790405, 36.024689, 38.322685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.406052, 36.080467, 38.418396>,  <33.175438, 36.113934, 38.475822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.406052, 36.080467, 38.418396>,  <33.790405, 36.024689, 38.322685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.406052, 36.080467, 38.418396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240559, 0.007823, -0.970603,
		-0.137214, -0.990199, 0.026027,
		-0.960887, 0.139442, 0.239275,
		33.117786, 36.122299, 38.490177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.408009, 35.735741, 37.826675>,  <33.790405, 36.024689, 38.322685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.408009, 35.735741, 37.826675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.108521, 35.927292, 38.010014>,  <32.928825, 36.042225, 38.120018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.108521, 35.927292, 38.010014>,  <33.408009, 35.735741, 37.826675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.108521, 35.927292, 38.010014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534795, -0.027827, -0.844524,
		-0.391674, -0.877437, 0.276939,
		-0.748723, 0.478883, 0.458350,
		32.883904, 36.070957, 38.147518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.777481, 35.351608, 37.598064>,  <33.408009, 35.735741, 37.826675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.777481, 35.351608, 37.598064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.702618, 35.735088, 37.683723>,  <32.657700, 35.965176, 37.735119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.702618, 35.735088, 37.683723>,  <32.777481, 35.351608, 37.598064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.702618, 35.735088, 37.683723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426370, 0.117117, -0.896935,
		-0.884975, -0.259177, 0.386843,
		-0.187159, 0.958703, 0.214150,
		32.646469, 36.022697, 37.747967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.605743, 34.633511, 37.256176>,  <32.777481, 35.351608, 37.598064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.605743, 34.633511, 37.256176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.992897, 34.533001, 37.253212>,  <33.225189, 34.472694, 37.251434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.992897, 34.533001, 37.253212>,  <32.605743, 34.633511, 37.256176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.992897, 34.533001, 37.253212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170656, 0.635128, 0.753319,
		-0.184586, -0.730392, 0.657614,
		0.967887, -0.251278, -0.007410,
		33.283264, 34.457619, 37.250988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.767025, 34.543652, 37.984711>,  <32.605743, 34.633511, 37.256176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.767025, 34.543652, 37.984711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.017563, 34.350822, 37.739662>,  <33.167885, 34.235126, 37.592632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.017563, 34.350822, 37.739662>,  <32.767025, 34.543652, 37.984711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.017563, 34.350822, 37.739662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215966, -0.647799, 0.730558,
		-0.749035, -0.589884, -0.301633,
		0.626342, -0.482072, -0.612619,
		33.205467, 34.206200, 37.555878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.639133, 33.872261, 38.249752>,  <32.767025, 34.543652, 37.984711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.639133, 33.872261, 38.249752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.980732, 33.892555, 38.042629>,  <33.185692, 33.904732, 37.918354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.980732, 33.892555, 38.042629>,  <32.639133, 33.872261, 38.249752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.980732, 33.892555, 38.042629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445492, -0.585421, 0.677362,
		-0.268765, -0.809140, -0.522549,
		0.853992, 0.050740, -0.517806,
		33.236931, 33.907776, 37.887287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.989639, 33.165089, 38.077671>,  <32.639133, 33.872261, 38.249752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.989639, 33.165089, 38.077671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.248276, 33.465382, 38.131821>,  <33.403458, 33.645557, 38.164310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.248276, 33.465382, 38.131821>,  <32.989639, 33.165089, 38.077671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.248276, 33.465382, 38.131821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517763, -0.562223, 0.644847,
		0.560219, -0.346857, -0.752227,
		0.646589, 0.750730, 0.135378,
		33.442253, 33.690601, 38.172436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.713882, 32.973827, 38.202492>,  <32.989639, 33.165089, 38.077671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.713882, 32.973827, 38.202492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.727386, 33.335850, 38.372074>,  <33.735489, 33.553062, 38.473824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.727386, 33.335850, 38.372074>,  <33.713882, 32.973827, 38.202492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.727386, 33.335850, 38.372074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373782, -0.404849, 0.834497,
		0.926902, 0.130298, -0.351959,
		0.033757, 0.905052, 0.423958,
		33.737514, 33.607365, 38.499260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.342476, 32.994141, 38.605846>,  <33.713882, 32.973827, 38.202492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.342476, 32.994141, 38.605846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.119808, 33.290676, 38.755802>,  <33.986206, 33.468597, 38.845776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.119808, 33.290676, 38.755802>,  <34.342476, 32.994141, 38.605846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.119808, 33.290676, 38.755802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294465, -0.245894, 0.923486,
		0.776795, 0.624468, -0.081416,
		-0.556668, 0.741334, 0.374893,
		33.952808, 33.513077, 38.868271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.737057, 33.277439, 39.121941>,  <34.342476, 32.994141, 38.605846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.737057, 33.277439, 39.121941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.371304, 33.404305, 39.222591>,  <34.151852, 33.480423, 39.282982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.371304, 33.404305, 39.222591>,  <34.737057, 33.277439, 39.121941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.371304, 33.404305, 39.222591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230311, -0.103651, 0.967581,
		0.332963, 0.942690, 0.021731,
		-0.914381, 0.317164, 0.251624,
		34.096989, 33.499454, 39.298080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.878689, 33.831059, 39.578835>,  <34.737057, 33.277439, 39.121941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.878689, 33.831059, 39.578835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.510536, 33.684196, 39.632637>,  <34.289646, 33.596077, 39.664917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.510536, 33.684196, 39.632637>,  <34.878689, 33.831059, 39.578835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.510536, 33.684196, 39.632637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206329, -0.163819, 0.964672,
		-0.332153, 0.915619, 0.226532,
		-0.920382, -0.367159, 0.134506,
		34.234421, 33.574047, 39.672989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.627728, 34.267498, 40.121994>,  <34.878689, 33.831059, 39.578835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.627728, 34.267498, 40.121994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.395382, 33.943230, 40.092583>,  <34.255974, 33.748669, 40.074936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.395382, 33.943230, 40.092583>,  <34.627728, 34.267498, 40.121994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.395382, 33.943230, 40.092583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125262, -0.178275, 0.975975,
		-0.804304, 0.557700, 0.205100,
		-0.580865, -0.810672, -0.073529,
		34.221123, 33.700027, 40.070522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.254395, 34.282547, 40.734653>,  <34.627728, 34.267498, 40.121994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.254395, 34.282547, 40.734653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.250954, 33.902817, 40.608986>,  <34.248890, 33.674976, 40.533585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.250954, 33.902817, 40.608986>,  <34.254395, 34.282547, 40.734653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.250954, 33.902817, 40.608986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117645, -0.312961, 0.942452,
		-0.993018, -0.028853, 0.114376,
		-0.008603, -0.949328, -0.314170,
		34.248371, 33.618019, 40.514736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.834923, 33.951893, 41.213879>,  <34.254395, 34.282547, 40.734653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.834923, 33.951893, 41.213879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.050941, 33.666027, 41.036068>,  <34.180553, 33.494507, 40.929382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.050941, 33.666027, 41.036068>,  <33.834923, 33.951893, 41.213879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.050941, 33.666027, 41.036068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258503, -0.361791, 0.895703,
		-0.800954, -0.598631, -0.010640,
		0.540045, -0.714666, -0.444526,
		34.212955, 33.451626, 40.902710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.534470, 33.292599, 41.453903>,  <33.834923, 33.951893, 41.213879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.534470, 33.292599, 41.453903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.904816, 33.226833, 41.317814>,  <34.127022, 33.187374, 41.236160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.904816, 33.226833, 41.317814>,  <33.534470, 33.292599, 41.453903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.904816, 33.226833, 41.317814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228371, -0.473868, 0.850468,
		-0.301045, -0.865112, -0.401190,
		0.925861, -0.164409, -0.340222,
		34.182575, 33.177509, 41.215748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.607540, 32.676674, 41.627468>,  <33.534470, 33.292599, 41.453903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.607540, 32.676674, 41.627468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.991142, 32.777374, 41.575424>,  <34.221302, 32.837795, 41.544197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.991142, 32.777374, 41.575424>,  <33.607540, 32.676674, 41.627468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.991142, 32.777374, 41.575424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232295, -0.435399, 0.869751,
		0.162312, -0.864320, -0.476031,
		0.959007, 0.251750, -0.130106,
		34.278843, 32.852898, 41.536392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.995884, 32.051487, 41.674061>,  <33.607540, 32.676674, 41.627468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.995884, 32.051487, 41.674061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.278278, 32.327892, 41.736134>,  <34.447716, 32.493736, 41.773376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.278278, 32.327892, 41.736134>,  <33.995884, 32.051487, 41.674061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.278278, 32.327892, 41.736134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259159, -0.455983, 0.851420,
		0.659103, -0.560875, -0.501001,
		0.705988, 0.691012, 0.155184,
		34.490074, 32.535194, 41.782688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.577404, 31.718777, 41.869766>,  <33.995884, 32.051487, 41.674061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.577404, 31.718777, 41.869766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.626358, 32.091068, 42.007614>,  <34.655731, 32.314442, 42.090324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.626358, 32.091068, 42.007614>,  <34.577404, 31.718777, 41.869766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.626358, 32.091068, 42.007614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303766, -0.365699, 0.879767,
		0.944853, -0.002987, -0.327481,
		0.122388, 0.930728, 0.344625,
		34.663074, 32.370285, 42.111000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.151653, 31.590422, 42.303841>,  <34.577404, 31.718777, 41.869766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.151653, 31.590422, 42.303841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.996517, 31.935799, 42.432869>,  <34.903435, 32.143024, 42.510284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.996517, 31.935799, 42.432869>,  <35.151653, 31.590422, 42.303841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.996517, 31.935799, 42.432869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273732, -0.226277, 0.934810,
		0.880145, 0.450850, -0.148593,
		-0.387836, 0.863442, 0.322569,
		34.880165, 32.194832, 42.529640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.600723, 31.802496, 42.780403>,  <35.151653, 31.590422, 42.303841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.600723, 31.802496, 42.780403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.275002, 32.020439, 42.860447>,  <35.079571, 32.151207, 42.908474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.275002, 32.020439, 42.860447>,  <35.600723, 31.802496, 42.780403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.275002, 32.020439, 42.860447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212529, -0.040933, 0.976297,
		0.540135, 0.837528, -0.082467,
		-0.814300, 0.544859, 0.200108,
		35.030712, 32.183895, 42.920479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.801117, 32.377495, 43.237434>,  <35.600723, 31.802496, 42.780403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.801117, 32.377495, 43.237434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.410095, 32.311230, 43.289505>,  <35.175484, 32.271469, 43.320747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.410095, 32.311230, 43.289505>,  <35.801117, 32.377495, 43.237434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.410095, 32.311230, 43.289505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156611, -0.158029, 0.974936,
		-0.140940, 0.973438, 0.180427,
		-0.977553, -0.165664, 0.130179,
		35.116829, 32.261532, 43.328560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.706482, 32.724426, 43.812286>,  <35.801117, 32.377495, 43.237434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.706482, 32.724426, 43.812286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.401478, 32.469780, 43.766155>,  <35.218475, 32.316994, 43.738476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.401478, 32.469780, 43.766155>,  <35.706482, 32.724426, 43.812286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.401478, 32.469780, 43.766155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029782, -0.212610, 0.976683,
		-0.646290, 0.741297, 0.181077,
		-0.762511, -0.636613, -0.115330,
		35.172726, 32.278797, 43.731556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.184269, 32.929367, 44.284847>,  <35.706482, 32.724426, 43.812286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.184269, 32.929367, 44.284847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.143791, 32.537750, 44.214161>,  <35.119503, 32.302780, 44.171749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.143791, 32.537750, 44.214161>,  <35.184269, 32.929367, 44.284847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.143791, 32.537750, 44.214161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061100, -0.183409, 0.981136,
		-0.992988, 0.088492, 0.078380,
		-0.101199, -0.979045, -0.176716,
		35.113430, 32.244038, 44.161144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.922237, 32.683510, 44.906780>,  <35.184269, 32.929367, 44.284847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.922237, 32.683510, 44.906780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.028835, 32.339615, 44.732502>,  <35.092793, 32.133278, 44.627934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.028835, 32.339615, 44.732502>,  <34.922237, 32.683510, 44.906780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.028835, 32.339615, 44.732502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158097, -0.406931, 0.899674,
		-0.950783, -0.308637, 0.027479,
		0.266490, -0.859739, -0.435697,
		35.108784, 32.081692, 44.601791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.624805, 32.134708, 45.342247>,  <34.922237, 32.683510, 44.906780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.624805, 32.134708, 45.342247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.925377, 31.988131, 45.122765>,  <35.105721, 31.900185, 44.991077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.925377, 31.988131, 45.122765>,  <34.624805, 32.134708, 45.342247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.925377, 31.988131, 45.122765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324447, -0.518909, 0.790865,
		-0.574535, -0.772303, -0.271031,
		0.751428, -0.366444, -0.548703,
		35.150806, 31.878197, 44.958153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.548462, 31.448214, 45.392597>,  <34.624805, 32.134708, 45.342247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.548462, 31.448214, 45.392597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.928432, 31.511145, 45.284611>,  <35.156414, 31.548903, 45.219818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.928432, 31.511145, 45.284611>,  <34.548462, 31.448214, 45.392597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.928432, 31.511145, 45.284611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309240, -0.597153, 0.740120,
		-0.044770, -0.786546, -0.615906,
		0.949929, 0.157328, -0.269966,
		35.213409, 31.558344, 45.203621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.856899, 30.754570, 45.384113>,  <34.548462, 31.448214, 45.392597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.856899, 30.754570, 45.384113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.171749, 31.001167, 45.391758>,  <35.360661, 31.149126, 45.396343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.171749, 31.001167, 45.391758>,  <34.856899, 30.754570, 45.384113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.171749, 31.001167, 45.391758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450969, -0.596375, 0.664051,
		0.420780, -0.514075, -0.747443,
		0.787129, 0.616493, 0.019111,
		35.407887, 31.186115, 45.397491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.404129, 30.308405, 45.367947>,  <34.856899, 30.754570, 45.384113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.404129, 30.308405, 45.367947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.585655, 30.643927, 45.488255>,  <35.694569, 30.845240, 45.560440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.585655, 30.643927, 45.488255>,  <35.404129, 30.308405, 45.367947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.585655, 30.643927, 45.488255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.639071, -0.541587, 0.546144,
		0.621001, -0.055632, -0.781833,
		0.453813, 0.838802, 0.300773,
		35.721798, 30.895567, 45.578487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.064701, 30.239050, 45.267540>,  <35.404129, 30.308405, 45.367947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.064701, 30.239050, 45.267540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.030857, 30.497719, 45.570763>,  <36.010551, 30.652920, 45.752697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.030857, 30.497719, 45.570763>,  <36.064701, 30.239050, 45.267540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.030857, 30.497719, 45.570763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583535, -0.584520, 0.563759,
		0.807669, 0.490052, -0.327902,
		-0.084606, 0.646673, 0.758061,
		36.005474, 30.691721, 45.798180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.726101, 30.243690, 45.568005>,  <36.064701, 30.239050, 45.267540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.726101, 30.243690, 45.568005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.513794, 30.441982, 45.842972>,  <36.386410, 30.560957, 46.007950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.513794, 30.441982, 45.842972>,  <36.726101, 30.243690, 45.568005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.513794, 30.441982, 45.842972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389770, -0.577449, 0.717379,
		0.752573, 0.648694, 0.113269,
		-0.530766, 0.495731, 0.687414,
		36.354565, 30.590702, 46.049194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.143707, 30.395222, 46.147457>,  <36.726101, 30.243690, 45.568005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.143707, 30.395222, 46.147457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.774616, 30.399220, 46.301590>,  <36.553162, 30.401619, 46.394070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.774616, 30.399220, 46.301590>,  <37.143707, 30.395222, 46.147457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.774616, 30.399220, 46.301590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336506, -0.466670, 0.817914,
		0.187997, 0.884375, 0.427245,
		-0.922725, 0.009995, 0.385330,
		36.497799, 30.402218, 46.417191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.467060, 30.927120, 45.928150>,  <37.143707, 30.395222, 46.147457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.467060, 30.927120, 45.928150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.830700, 30.854443, 46.078102>,  <38.048882, 30.810837, 46.168072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.830700, 30.854443, 46.078102>,  <37.467060, 30.927120, 45.928150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.830700, 30.854443, 46.078102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411842, 0.256522, -0.874404,
		0.062710, 0.949307, 0.308032,
		0.909095, -0.181694, 0.374878,
		38.103428, 30.799934, 46.190567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.836933, 31.513660, 45.799332>,  <37.467060, 30.927120, 45.928150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.836933, 31.513660, 45.799332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.108704, 31.221775, 45.830048>,  <38.271767, 31.046644, 45.848476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.108704, 31.221775, 45.830048>,  <37.836933, 31.513660, 45.799332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.108704, 31.221775, 45.830048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460235, 0.342321, -0.819146,
		0.571454, 0.591892, 0.568422,
		0.679429, -0.729712, 0.076788,
		38.312531, 31.002861, 45.853085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.454460, 31.808744, 45.720333>,  <37.836933, 31.513660, 45.799332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.454460, 31.808744, 45.720333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.551590, 31.427591, 45.647617>,  <38.609867, 31.198898, 45.603989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.551590, 31.427591, 45.647617>,  <38.454460, 31.808744, 45.720333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.551590, 31.427591, 45.647617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352329, 0.261232, -0.898678,
		0.903826, 0.154170, 0.399162,
		0.242823, -0.952885, -0.181790,
		38.624435, 31.141726, 45.593079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.090313, 31.844061, 45.508450>,  <38.454460, 31.808744, 45.720333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.090313, 31.844061, 45.508450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.948372, 31.495941, 45.371826>,  <38.863209, 31.287069, 45.289852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.948372, 31.495941, 45.371826>,  <39.090313, 31.844061, 45.508450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.948372, 31.495941, 45.371826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187394, 0.291711, -0.937970,
		0.915949, -0.396847, 0.059574,
		-0.354852, -0.870297, -0.341559,
		38.841915, 31.234852, 45.269360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.599224, 31.606403, 44.983326>,  <39.090313, 31.844061, 45.508450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.599224, 31.606403, 44.983326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.244381, 31.436661, 44.910698>,  <39.031475, 31.334816, 44.867119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.244381, 31.436661, 44.910698>,  <39.599224, 31.606403, 44.983326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.244381, 31.436661, 44.910698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153268, 0.100239, -0.983088,
		0.435379, -0.899931, -0.023882,
		-0.887105, -0.424355, -0.181573,
		38.978249, 31.309355, 44.856228>
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
