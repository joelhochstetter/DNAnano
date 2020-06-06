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
	<24.102810, 34.776634, 35.197941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.422199, 34.858566, 34.971497>,  <24.613832, 34.907726, 34.835629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.422199, 34.858566, 34.971497>,  <24.102810, 34.776634, 35.197941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.422199, 34.858566, 34.971497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583011, -0.028589, 0.811961,
		0.150134, -0.978379, -0.142249,
		0.798473, 0.204835, -0.566113,
		24.661741, 34.920017, 34.801662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.572403, 35.380558, 35.316418>,  <24.102810, 34.776634, 35.197941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.572403, 35.380558, 35.316418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.701670, 35.020245, 35.200375>,  <24.779230, 34.804058, 35.130749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.701670, 35.020245, 35.200375>,  <24.572403, 35.380558, 35.316418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.701670, 35.020245, 35.200375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.902818, 0.385358, -0.190838,
		0.283697, -0.200238, 0.937774,
		0.323166, -0.900780, -0.290103,
		24.798620, 34.750011, 35.113342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.163479, 35.005253, 35.699337>,  <24.572403, 35.380558, 35.316418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.163479, 35.005253, 35.699337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.148203, 34.877544, 35.320580>,  <25.139036, 34.800919, 35.093327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.148203, 34.877544, 35.320580>,  <25.163479, 35.005253, 35.699337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.148203, 34.877544, 35.320580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.992597, 0.097213, -0.072813,
		0.115298, -0.942665, 0.313192,
		-0.038192, -0.319269, -0.946894,
		25.136745, 34.781765, 35.036510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.855324, 34.887291, 35.634346>,  <25.163479, 35.005253, 35.699337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.855324, 34.887291, 35.634346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.701698, 34.813019, 35.272568>,  <25.609524, 34.768456, 35.055500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.701698, 34.813019, 35.272568>,  <25.855324, 34.887291, 35.634346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.701698, 34.813019, 35.272568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.907432, -0.256776, -0.332615,
		-0.170480, -0.948467, 0.267110,
		-0.384062, -0.185680, -0.904444,
		25.586479, 34.757317, 35.001236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.102243, 34.173691, 35.437897>,  <25.855324, 34.887291, 35.634346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.102243, 34.173691, 35.437897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.023836, 34.408455, 35.123669>,  <25.976791, 34.549313, 34.935131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.023836, 34.408455, 35.123669>,  <26.102243, 34.173691, 35.437897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.023836, 34.408455, 35.123669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.950482, -0.083305, -0.299408,
		-0.241167, -0.805356, -0.541517,
		-0.196018, 0.586909, -0.785566,
		25.965031, 34.584526, 34.888000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.322344, 33.953575, 34.738617>,  <26.102243, 34.173691, 35.437897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.322344, 33.953575, 34.738617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.304491, 34.351238, 34.699318>,  <26.293779, 34.589836, 34.675739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.304491, 34.351238, 34.699318>,  <26.322344, 33.953575, 34.738617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.304491, 34.351238, 34.699318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.961234, 0.015949, -0.275274,
		-0.272100, -0.106722, -0.956333,
		-0.044631, 0.994161, -0.098245,
		26.291101, 34.649487, 34.669846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.543514, 34.188412, 34.058907>,  <26.322344, 33.953575, 34.738617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.543514, 34.188412, 34.058907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.597792, 34.449780, 34.356800>,  <26.630358, 34.606602, 34.535538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.597792, 34.449780, 34.356800>,  <26.543514, 34.188412, 34.058907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.597792, 34.449780, 34.356800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.989447, -0.050819, -0.135693,
		-0.050819, 0.755287, -0.653421,
		0.135693, 0.653421, 0.744734,
		26.638500, 34.645805, 34.580219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.974556, 34.706161, 33.862381>,  <26.543514, 34.188412, 34.058907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.974556, 34.706161, 33.862381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.065992, 34.625389, 34.243320>,  <27.120853, 34.576923, 34.471886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.065992, 34.625389, 34.243320>,  <26.974556, 34.706161, 33.862381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.065992, 34.625389, 34.243320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.958171, -0.126375, -0.256785,
		0.172207, 0.971211, 0.164600,
		0.228591, -0.201935, 0.952349,
		27.134569, 34.564808, 34.529026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.453024, 35.214336, 34.152264>,  <26.974556, 34.706161, 33.862381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.453024, 35.214336, 34.152264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.472036, 34.841415, 34.295681>,  <27.483444, 34.617664, 34.381729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.472036, 34.841415, 34.295681>,  <27.453024, 35.214336, 34.152264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.472036, 34.841415, 34.295681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.850361, -0.150551, -0.504202,
		0.524048, 0.328853, 0.785639,
		0.047529, -0.932304, 0.358540,
		27.486296, 34.561726, 34.403244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.016516, 35.519001, 33.709549>,  <27.453024, 35.214336, 34.152264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.016516, 35.519001, 33.709549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.383738, 35.610840, 33.580269>,  <28.604071, 35.665943, 33.502701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.383738, 35.610840, 33.580269>,  <28.016516, 35.519001, 33.709549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.383738, 35.610840, 33.580269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396448, 0.529307, -0.750109,
		-0.001146, 0.816775, 0.576955,
		0.918056, 0.229592, -0.323202,
		28.659155, 35.679718, 33.483307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.026838, 36.242256, 33.588997>,  <28.016516, 35.519001, 33.709549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.026838, 36.242256, 33.588997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.313744, 36.096493, 33.351429>,  <28.485888, 36.009037, 33.208889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.313744, 36.096493, 33.351429>,  <28.026838, 36.242256, 33.588997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.313744, 36.096493, 33.351429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427169, 0.443446, -0.787961,
		0.550508, 0.818881, 0.162406,
		0.717264, -0.364404, -0.593921,
		28.528923, 35.987171, 33.173252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.211937, 36.834934, 33.230869>,  <28.026838, 36.242256, 33.588997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.211937, 36.834934, 33.230869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.378401, 36.538921, 33.019527>,  <28.478279, 36.361313, 32.892723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.378401, 36.538921, 33.019527>,  <28.211937, 36.834934, 33.230869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.378401, 36.538921, 33.019527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140872, 0.521577, -0.841494,
		0.898314, 0.424625, 0.112808,
		0.416158, -0.740034, -0.528357,
		28.503248, 36.316910, 32.861019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.607222, 37.143829, 32.716431>,  <28.211937, 36.834934, 33.230869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.607222, 37.143829, 32.716431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.549608, 36.778217, 32.564739>,  <28.515041, 36.558849, 32.473724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.549608, 36.778217, 32.564739>,  <28.607222, 37.143829, 32.716431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.549608, 36.778217, 32.564739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309629, 0.405605, -0.860009,
		0.939885, -0.006450, -0.341429,
		-0.144032, -0.914026, -0.379225,
		28.506399, 36.504009, 32.450974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.072441, 37.031136, 32.161129>,  <28.607222, 37.143829, 32.716431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.072441, 37.031136, 32.161129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.759964, 36.785442, 32.116493>,  <28.572477, 36.638027, 32.089710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.759964, 36.785442, 32.116493>,  <29.072441, 37.031136, 32.161129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.759964, 36.785442, 32.116493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186385, 0.400067, -0.897333,
		0.595818, -0.680191, -0.427014,
		-0.781192, -0.614236, -0.111589,
		28.525606, 36.601173, 32.083015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.074589, 36.870773, 31.342987>,  <29.072441, 37.031136, 32.161129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.074589, 36.870773, 31.342987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.722448, 36.743832, 31.483995>,  <28.511164, 36.667667, 31.568600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.722448, 36.743832, 31.483995>,  <29.074589, 36.870773, 31.342987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.722448, 36.743832, 31.483995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435865, 0.248098, -0.865141,
		0.187091, -0.915280, -0.356734,
		-0.880351, -0.317348, 0.352522,
		28.458344, 36.648624, 31.589752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.860430, 36.312862, 30.981133>,  <29.074589, 36.870773, 31.342987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.860430, 36.312862, 30.981133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.517443, 36.467255, 31.117228>,  <28.311649, 36.559891, 31.198885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.517443, 36.467255, 31.117228>,  <28.860430, 36.312862, 30.981133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.517443, 36.467255, 31.117228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300871, 0.160291, -0.940098,
		-0.417401, -0.908472, -0.021312,
		-0.857469, 0.385986, 0.340238,
		28.260202, 36.583050, 31.219299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.338066, 36.101963, 30.581352>,  <28.860430, 36.312862, 30.981133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.338066, 36.101963, 30.581352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.162144, 36.426601, 30.735178>,  <28.056589, 36.621384, 30.827473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.162144, 36.426601, 30.735178>,  <28.338066, 36.101963, 30.581352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.162144, 36.426601, 30.735178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234692, 0.309458, -0.921497,
		-0.866884, -0.495535, 0.054372,
		-0.439808, 0.811592, 0.384562,
		28.030201, 36.670078, 30.850546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.736288, 36.245739, 30.136927>,  <28.338066, 36.101963, 30.581352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.736288, 36.245739, 30.136927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.807344, 36.594036, 30.320339>,  <27.849979, 36.803013, 30.430387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.807344, 36.594036, 30.320339>,  <27.736288, 36.245739, 30.136927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.807344, 36.594036, 30.320339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172489, 0.486281, -0.856609,
		-0.968861, 0.073078, 0.236577,
		0.177643, 0.870741, 0.458533,
		27.860638, 36.855259, 30.457899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.233641, 36.600136, 29.784300>,  <27.736288, 36.245739, 30.136927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.233641, 36.600136, 29.784300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.522718, 36.832233, 29.934515>,  <27.696165, 36.971493, 30.024645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.522718, 36.832233, 29.934515>,  <27.233641, 36.600136, 29.784300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.522718, 36.832233, 29.934515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021381, 0.524311, -0.851258,
		-0.690835, 0.623230, 0.366512,
		0.722696, 0.580243, 0.375538,
		27.739527, 37.006306, 30.047176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.143513, 37.252964, 29.390011>,  <27.233641, 36.600136, 29.784300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.143513, 37.252964, 29.390011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.504189, 37.278934, 29.561003>,  <27.720594, 37.294518, 29.663597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.504189, 37.278934, 29.561003>,  <27.143513, 37.252964, 29.390011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.504189, 37.278934, 29.561003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352829, 0.460985, -0.814251,
		-0.249931, 0.885030, 0.392756,
		0.901691, 0.064931, 0.427478,
		27.774696, 37.298412, 29.689245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.316889, 37.901630, 29.206619>,  <27.143513, 37.252964, 29.390011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.316889, 37.901630, 29.206619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.674753, 37.742687, 29.288290>,  <27.889471, 37.647320, 29.337292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.674753, 37.742687, 29.288290>,  <27.316889, 37.901630, 29.206619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.674753, 37.742687, 29.288290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408582, 0.542954, -0.733663,
		0.180669, 0.739802, 0.648114,
		0.894662, -0.397358, 0.204175,
		27.943151, 37.623482, 29.349543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.917507, 38.474857, 29.213261>,  <27.316889, 37.901630, 29.206619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.917507, 38.474857, 29.213261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.106674, 38.129402, 29.143435>,  <28.220175, 37.922127, 29.101538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.106674, 38.129402, 29.143435>,  <27.917507, 38.474857, 29.213261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.106674, 38.129402, 29.143435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443325, 0.404449, -0.799927,
		0.761453, 0.300911, 0.574145,
		0.472919, -0.863640, -0.174567,
		28.248550, 37.870312, 29.091064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.568794, 38.721500, 28.990580>,  <27.917507, 38.474857, 29.213261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.568794, 38.721500, 28.990580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.543344, 38.337502, 28.881502>,  <28.528074, 38.107101, 28.816055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.543344, 38.337502, 28.881502>,  <28.568794, 38.721500, 28.990580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.543344, 38.337502, 28.881502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511118, 0.203346, -0.835110,
		0.857152, -0.192513, 0.477733,
		-0.063624, -0.959994, -0.272696,
		28.524258, 38.049503, 28.799694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.209246, 38.657627, 28.679728>,  <28.568794, 38.721500, 28.990580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.209246, 38.657627, 28.679728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.000536, 38.338112, 28.559935>,  <28.875311, 38.146404, 28.488058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.000536, 38.338112, 28.559935>,  <29.209246, 38.657627, 28.679728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.000536, 38.338112, 28.559935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275334, 0.174588, -0.945362,
		0.807429, -0.575724, 0.128837,
		-0.521774, -0.798786, -0.299484,
		28.844004, 38.098476, 28.470089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.696369, 38.188770, 28.416315>,  <29.209246, 38.657627, 28.679728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.696369, 38.188770, 28.416315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.330286, 38.147709, 28.260439>,  <29.110636, 38.123074, 28.166914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.330286, 38.147709, 28.260439>,  <29.696369, 38.188770, 28.416315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.330286, 38.147709, 28.260439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366395, 0.190649, -0.910718,
		0.167781, -0.976277, -0.136872,
		-0.915207, -0.102652, -0.389690,
		29.055723, 38.116913, 28.143532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.454004, 38.129299, 28.174038>,  <29.696369, 38.188770, 28.416315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.454004, 38.129299, 28.174038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.762070, 37.902004, 28.058144>,  <30.946909, 37.765625, 27.988607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.762070, 37.902004, 28.058144>,  <30.454004, 38.129299, 28.174038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.762070, 37.902004, 28.058144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352677, 0.757862, -0.548875,
		0.531473, 0.320541, 0.784085,
		0.770166, -0.568241, -0.289736,
		30.993120, 37.731533, 27.971222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.202288, 38.354404, 28.268230>,  <30.454004, 38.129299, 28.174038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.202288, 38.354404, 28.268230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.193241, 38.099037, 27.960487>,  <31.187813, 37.945816, 27.775841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.193241, 38.099037, 27.960487>,  <31.202288, 38.354404, 28.268230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.193241, 38.099037, 27.960487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538187, 0.640760, -0.547524,
		0.842522, -0.426440, 0.329097,
		-0.022614, -0.638417, -0.769359,
		31.186457, 37.907513, 27.729679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.766008, 38.614349, 27.919630>,  <31.202288, 38.354404, 28.268230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.766008, 38.614349, 27.919630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.564745, 38.376461, 27.668827>,  <31.443987, 38.233727, 27.518345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.564745, 38.376461, 27.668827>,  <31.766008, 38.614349, 27.919630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.564745, 38.376461, 27.668827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544337, 0.345418, -0.764450,
		0.671215, -0.725942, 0.149930,
		-0.503158, -0.594722, -0.627007,
		31.413797, 38.198044, 27.480724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.231476, 38.624672, 27.435398>,  <31.766008, 38.614349, 27.919630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.231476, 38.624672, 27.435398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.900913, 38.464603, 27.276951>,  <31.702576, 38.368561, 27.181883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.900913, 38.464603, 27.276951>,  <32.231476, 38.624672, 27.435398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.900913, 38.464603, 27.276951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259846, 0.353066, -0.898791,
		0.499530, -0.845697, -0.187793,
		-0.826408, -0.400175, -0.396118,
		31.652990, 38.344551, 27.158115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.345646, 38.049351, 26.986725>,  <32.231476, 38.624672, 27.435398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.345646, 38.049351, 26.986725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.059307, 38.306816, 26.878464>,  <31.887503, 38.461296, 26.813507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.059307, 38.306816, 26.878464>,  <32.345646, 38.049351, 26.986725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.059307, 38.306816, 26.878464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602578, 0.373634, -0.705193,
		-0.352784, -0.667901, -0.655325,
		-0.715851, 0.643666, -0.270650,
		31.844551, 38.499916, 26.797268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.051693, 37.993633, 26.312798>,  <32.345646, 38.049351, 26.986725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.051693, 37.993633, 26.312798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.092678, 38.373623, 26.430809>,  <32.117271, 38.601616, 26.501616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.092678, 38.373623, 26.430809>,  <32.051693, 37.993633, 26.312798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.092678, 38.373623, 26.430809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.620245, 0.170860, -0.765574,
		-0.777687, 0.261437, -0.571711,
		0.102467, 0.949978, 0.295031,
		32.123417, 38.658615, 26.519318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.687840, 37.983379, 25.839788>,  <32.051693, 37.993633, 26.312798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.687840, 37.983379, 25.839788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.624321, 38.378227, 25.847612>,  <32.586212, 38.615135, 25.852306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.624321, 38.378227, 25.847612>,  <32.687840, 37.983379, 25.839788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.624321, 38.378227, 25.847612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313342, 0.069172, -0.947118,
		-0.936270, -0.144267, -0.320290,
		-0.158793, 0.987118, 0.019558,
		32.576683, 38.674362, 25.853479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.244530, 37.638546, 26.020720>,  <32.687840, 37.983379, 25.839788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.244530, 37.638546, 26.020720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.549755, 37.562950, 25.773491>,  <33.732891, 37.517593, 25.625153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.549755, 37.562950, 25.773491>,  <33.244530, 37.638546, 26.020720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.549755, 37.562950, 25.773491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429589, -0.566182, 0.703485,
		-0.482889, -0.802323, -0.350849,
		0.763067, -0.188985, -0.618072,
		33.778675, 37.506252, 25.588070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.291130, 36.962345, 25.912657>,  <33.244530, 37.638546, 26.020720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.291130, 36.962345, 25.912657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.656994, 37.102142, 25.831404>,  <33.876511, 37.186020, 25.782652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.656994, 37.102142, 25.831404>,  <33.291130, 36.962345, 25.912657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.656994, 37.102142, 25.831404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367493, -0.509588, 0.777991,
		0.168387, -0.786243, -0.594532,
		0.914656, 0.349489, -0.203131,
		33.931389, 37.206989, 25.770464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.866245, 36.472195, 25.842812>,  <33.291130, 36.962345, 25.912657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.866245, 36.472195, 25.842812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.244186, 36.389652, 25.944530>,  <34.470951, 36.340126, 26.005562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.244186, 36.389652, 25.944530>,  <33.866245, 36.472195, 25.842812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.244186, 36.389652, 25.944530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259545, 0.001704, 0.965729,
		-0.199714, -0.978476, -0.051948,
		0.944855, -0.206352, 0.254299,
		34.527641, 36.327747, 26.020821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.952030, 35.824444, 26.109657>,  <33.866245, 36.472195, 25.842812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.952030, 35.824444, 26.109657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.192516, 36.105717, 26.261488>,  <34.336807, 36.274479, 26.352587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.192516, 36.105717, 26.261488>,  <33.952030, 35.824444, 26.109657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.192516, 36.105717, 26.261488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381415, -0.164884, 0.909580,
		0.702187, -0.691627, 0.169075,
		0.601212, 0.703183, 0.379576,
		34.372879, 36.316673, 26.375360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.227226, 35.600414, 26.733551>,  <33.952030, 35.824444, 26.109657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.227226, 35.600414, 26.733551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.270409, 35.997963, 26.743116>,  <34.296318, 36.236492, 26.748856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.270409, 35.997963, 26.743116>,  <34.227226, 35.600414, 26.733551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.270409, 35.997963, 26.743116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342925, 0.014652, 0.939249,
		0.933139, -0.109598, 0.342403,
		0.107957, 0.993868, 0.023912,
		34.302795, 36.296124, 26.750290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.594780, 35.692764, 27.303139>,  <34.227226, 35.600414, 26.733551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.594780, 35.692764, 27.303139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.406319, 36.034821, 27.216644>,  <34.293243, 36.240055, 27.164747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.406319, 36.034821, 27.216644>,  <34.594780, 35.692764, 27.303139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.406319, 36.034821, 27.216644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283823, 0.085136, 0.955090,
		0.835141, 0.511365, 0.202596,
		-0.471151, 0.855136, -0.216238,
		34.264973, 36.291363, 27.151773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.636829, 36.057018, 27.905958>,  <34.594780, 35.692764, 27.303139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.636829, 36.057018, 27.905958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.347912, 36.259953, 27.717955>,  <34.174561, 36.381714, 27.605152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.347912, 36.259953, 27.717955>,  <34.636829, 36.057018, 27.905958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.347912, 36.259953, 27.717955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426634, 0.208024, 0.880176,
		0.544315, 0.836266, 0.066192,
		-0.722291, 0.507332, -0.470010,
		34.131226, 36.412151, 27.576952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.505043, 36.697334, 28.339754>,  <34.636829, 36.057018, 27.905958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.505043, 36.697334, 28.339754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.175743, 36.665257, 28.114962>,  <33.978161, 36.646011, 27.980085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.175743, 36.665257, 28.114962>,  <34.505043, 36.697334, 28.339754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.175743, 36.665257, 28.114962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554799, 0.323301, 0.766600,
		0.120213, 0.942892, -0.310649,
		-0.823254, -0.080192, -0.561980,
		33.928768, 36.641197, 27.946367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.076698, 37.345959, 28.465496>,  <34.505043, 36.697334, 28.339754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.076698, 37.345959, 28.465496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.848606, 37.047405, 28.328238>,  <33.711750, 36.868275, 28.245882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.848606, 37.047405, 28.328238>,  <34.076698, 37.345959, 28.465496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.848606, 37.047405, 28.328238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.626447, 0.124880, 0.769395,
		-0.531410, 0.653698, -0.538779,
		-0.570235, -0.746380, -0.343145,
		33.677536, 36.823490, 28.225294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.466461, 37.670647, 28.698803>,  <34.076698, 37.345959, 28.465496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.466461, 37.670647, 28.698803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.389130, 37.292042, 28.595461>,  <33.342731, 37.064880, 28.533455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.389130, 37.292042, 28.595461>,  <33.466461, 37.670647, 28.698803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.389130, 37.292042, 28.595461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.636506, -0.079397, 0.767174,
		-0.746649, 0.312761, -0.587108,
		-0.193328, -0.946507, -0.258356,
		33.331131, 37.008091, 28.517954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.717541, 37.529720, 28.581057>,  <33.466461, 37.670647, 28.698803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.717541, 37.529720, 28.581057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.894253, 37.188385, 28.691795>,  <33.000278, 36.983585, 28.758240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.894253, 37.188385, 28.691795>,  <32.717541, 37.529720, 28.581057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.894253, 37.188385, 28.691795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.574749, -0.032269, 0.817694,
		-0.688835, -0.520359, -0.504711,
		0.441781, -0.853338, 0.276848,
		33.026787, 36.932384, 28.774849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.268211, 37.310471, 29.018515>,  <32.717541, 37.529720, 28.581057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.268211, 37.310471, 29.018515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.548519, 37.031944, 29.080566>,  <32.716705, 36.864830, 29.117798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.548519, 37.031944, 29.080566>,  <32.268211, 37.310471, 29.018515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.548519, 37.031944, 29.080566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297457, -0.087558, 0.950712,
		-0.648410, -0.712378, -0.268482,
		0.700774, -0.696313, 0.155129,
		32.758751, 36.823051, 29.127106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.940985, 36.622791, 29.343214>,  <32.268211, 37.310471, 29.018515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.940985, 36.622791, 29.343214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.328892, 36.569691, 29.425116>,  <32.561638, 36.537830, 29.474257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.328892, 36.569691, 29.425116>,  <31.940985, 36.622791, 29.343214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.328892, 36.569691, 29.425116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231384, -0.233718, 0.944371,
		-0.077508, -0.963200, -0.257368,
		0.969770, -0.132747, 0.204754,
		32.619823, 36.529865, 29.486542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.963156, 35.929134, 29.576670>,  <31.940985, 36.622791, 29.343214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.963156, 35.929134, 29.576670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.257553, 36.160770, 29.716940>,  <32.434193, 36.299751, 29.801102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.257553, 36.160770, 29.716940>,  <31.963156, 35.929134, 29.576670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.257553, 36.160770, 29.716940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325947, -0.150892, 0.933269,
		0.593357, -0.801181, 0.077696,
		0.735993, 0.579087, 0.350675,
		32.478352, 36.334496, 29.822142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.277065, 35.539562, 30.096226>,  <31.963156, 35.929134, 29.576670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.277065, 35.539562, 30.096226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.390644, 35.911022, 30.191715>,  <32.458790, 36.133896, 30.249008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.390644, 35.911022, 30.191715>,  <32.277065, 35.539562, 30.096226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.390644, 35.911022, 30.191715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120535, -0.212425, 0.969715,
		0.951234, -0.304122, 0.051617,
		0.283947, 0.928647, 0.238723,
		32.475826, 36.189617, 30.263332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.591389, 35.435955, 30.771439>,  <32.277065, 35.539562, 30.096226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.591389, 35.435955, 30.771439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.560596, 35.834545, 30.758116>,  <32.542122, 36.073700, 30.750122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.560596, 35.834545, 30.758116>,  <32.591389, 35.435955, 30.771439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.560596, 35.834545, 30.758116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060321, 0.028692, 0.997767,
		0.995207, 0.078814, 0.057899,
		-0.076977, 0.996476, -0.033309,
		32.537502, 36.133488, 30.748123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.131805, 35.799561, 31.250525>,  <32.591389, 35.435955, 30.771439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.131805, 35.799561, 31.250525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.811687, 36.035770, 31.208946>,  <32.619617, 36.177498, 31.184000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.811687, 36.035770, 31.208946>,  <33.131805, 35.799561, 31.250525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.811687, 36.035770, 31.208946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048196, 0.109443, 0.992824,
		0.597663, 0.799564, -0.059126,
		-0.800298, 0.590524, -0.103945,
		32.571598, 36.212929, 31.177763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.200035, 36.294472, 31.779362>,  <33.131805, 35.799561, 31.250525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.200035, 36.294472, 31.779362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.815334, 36.356209, 31.688845>,  <32.584515, 36.393250, 31.634535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.815334, 36.356209, 31.688845>,  <33.200035, 36.294472, 31.779362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.815334, 36.356209, 31.688845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214495, 0.089458, 0.972620,
		0.170360, 0.983959, -0.052931,
		-0.961753, 0.154342, -0.226295,
		32.526810, 36.402512, 31.620956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.049820, 36.936909, 32.150383>,  <33.200035, 36.294472, 31.779362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.049820, 36.936909, 32.150383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.712193, 36.735638, 32.076225>,  <32.509617, 36.614876, 32.031731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.712193, 36.735638, 32.076225>,  <33.049820, 36.936909, 32.150383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.712193, 36.735638, 32.076225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326251, 0.207491, 0.922230,
		-0.425578, 0.838904, -0.339297,
		-0.844064, -0.503177, -0.185390,
		32.458973, 36.584686, 32.020607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.464855, 37.394669, 32.434746>,  <33.049820, 36.936909, 32.150383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.464855, 37.394669, 32.434746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.305954, 37.027870, 32.420246>,  <32.210613, 36.807793, 32.411549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.305954, 37.027870, 32.420246>,  <32.464855, 37.394669, 32.434746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.305954, 37.027870, 32.420246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309577, 0.096725, 0.945942,
		-0.863915, 0.387002, -0.322304,
		-0.397257, -0.916991, -0.036244,
		32.186775, 36.752773, 32.409374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.711590, 37.489239, 32.604034>,  <32.464855, 37.394669, 32.434746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.711590, 37.489239, 32.604034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.835945, 37.113884, 32.664402>,  <31.910559, 36.888672, 32.700623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.835945, 37.113884, 32.664402>,  <31.711590, 37.489239, 32.604034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.835945, 37.113884, 32.664402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497011, -0.025158, 0.867379,
		-0.810142, -0.344666, -0.474211,
		0.310886, -0.938388, 0.150921,
		31.929211, 36.832367, 32.709679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.042253, 37.129253, 32.886425>,  <31.711590, 37.489239, 32.604034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.042253, 37.129253, 32.886425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.358868, 36.893124, 32.949654>,  <31.548836, 36.751446, 32.987591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.358868, 36.893124, 32.949654>,  <31.042253, 37.129253, 32.886425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.358868, 36.893124, 32.949654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493508, -0.464885, 0.735073,
		-0.360448, -0.659846, -0.659303,
		0.791535, -0.590327, 0.158072,
		31.596329, 36.716026, 32.997074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.864513, 36.438641, 32.817909>,  <31.042253, 37.129253, 32.886425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.864513, 36.438641, 32.817909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.186684, 36.460842, 33.053947>,  <31.379986, 36.474163, 33.195572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.186684, 36.460842, 33.053947>,  <30.864513, 36.438641, 32.817909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.186684, 36.460842, 33.053947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556245, -0.272985, 0.784902,
		0.204655, -0.960416, -0.188993,
		0.805424, 0.055508, 0.590094,
		31.428310, 36.477493, 33.230976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.821476, 35.840454, 33.251133>,  <30.864513, 36.438641, 32.817909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.821476, 35.840454, 33.251133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.058790, 36.080036, 33.466267>,  <31.201178, 36.223785, 33.595345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.058790, 36.080036, 33.466267>,  <30.821476, 35.840454, 33.251133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.058790, 36.080036, 33.466267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406155, -0.354121, 0.842399,
		0.695020, -0.718225, 0.033176,
		0.593283, 0.598959, 0.537832,
		31.236774, 36.259724, 33.627617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.992090, 35.471302, 33.795643>,  <30.821476, 35.840454, 33.251133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.992090, 35.471302, 33.795643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.076939, 35.842979, 33.916710>,  <31.127848, 36.065987, 33.989349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.076939, 35.842979, 33.916710>,  <30.992090, 35.471302, 33.795643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.076939, 35.842979, 33.916710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194383, -0.263410, 0.944897,
		0.957716, -0.259266, 0.124745,
		0.212121, 0.929191, 0.302669,
		31.140575, 36.121738, 34.007511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.411020, 35.408588, 34.469593>,  <30.992090, 35.471302, 33.795643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.411020, 35.408588, 34.469593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.225937, 35.762844, 34.453876>,  <31.114887, 35.975399, 34.444447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.225937, 35.762844, 34.453876>,  <31.411020, 35.408588, 34.469593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.225937, 35.762844, 34.453876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399782, -0.168899, 0.900915,
		0.791250, 0.432568, 0.432214,
		-0.462707, 0.885640, -0.039292,
		31.087124, 36.028538, 34.442089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.677326, 35.708336, 35.153934>,  <31.411020, 35.408588, 34.469593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.677326, 35.708336, 35.153934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.354773, 35.877895, 34.988987>,  <31.161240, 35.979633, 34.890018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.354773, 35.877895, 34.988987>,  <31.677326, 35.708336, 35.153934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.354773, 35.877895, 34.988987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553100, -0.293756, 0.779607,
		0.209342, 0.856745, 0.471342,
		-0.806385, 0.423903, -0.412371,
		31.112858, 36.005066, 34.865276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.235462, 36.301044, 35.101902>,  <31.677326, 35.708336, 35.153934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.235462, 36.301044, 35.101902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.899879, 36.512230, 35.049129>,  <31.698530, 36.638943, 35.017467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.899879, 36.512230, 35.049129>,  <32.235462, 36.301044, 35.101902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.899879, 36.512230, 35.049129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275674, 0.621329, 0.733454,
		0.469211, 0.578965, -0.666814,
		-0.838955, 0.527967, -0.131929,
		31.648193, 36.670620, 35.009552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.376621, 36.936874, 35.158718>,  <32.235462, 36.301044, 35.101902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.376621, 36.936874, 35.158718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.986300, 36.930092, 35.245914>,  <31.752108, 36.926022, 35.298233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.986300, 36.930092, 35.245914>,  <32.376621, 36.936874, 35.158718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.986300, 36.930092, 35.245914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171255, 0.560590, 0.810192,
		-0.135940, 0.827920, -0.544122,
		-0.975803, -0.016953, 0.217992,
		31.693558, 36.925007, 35.311314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.345726, 37.465221, 35.635242>,  <32.376621, 36.936874, 35.158718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.345726, 37.465221, 35.635242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.976776, 37.320797, 35.690178>,  <31.755407, 37.234142, 35.723141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.976776, 37.320797, 35.690178>,  <32.345726, 37.465221, 35.635242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.976776, 37.320797, 35.690178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036103, 0.273400, 0.961223,
		-0.384610, 0.891564, -0.239142,
		-0.922373, -0.361063, 0.137340,
		31.700064, 37.212479, 35.731380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.147232, 37.989788, 36.041595>,  <32.345726, 37.465221, 35.635242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.147232, 37.989788, 36.041595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.917393, 37.662415, 36.042282>,  <31.779490, 37.465988, 36.042694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.917393, 37.662415, 36.042282>,  <32.147232, 37.989788, 36.041595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.917393, 37.662415, 36.042282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030860, -0.019575, 0.999332,
		-0.817856, 0.574265, 0.036504,
		-0.574595, -0.818436, 0.001712,
		31.745014, 37.416885, 36.042797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.510706, 38.075890, 36.479050>,  <32.147232, 37.989788, 36.041595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.510706, 38.075890, 36.479050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.572073, 37.681282, 36.456238>,  <31.608892, 37.444519, 36.442551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.572073, 37.681282, 36.456238>,  <31.510706, 38.075890, 36.479050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.572073, 37.681282, 36.456238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111733, -0.074659, 0.990930,
		-0.981824, -0.145653, -0.121680,
		0.153416, -0.986515, -0.057028,
		31.618097, 37.385326, 36.439129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.205639, 37.753567, 37.070881>,  <31.510706, 38.075890, 36.479050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.205639, 37.753567, 37.070881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.445471, 37.450497, 36.967785>,  <31.589371, 37.268654, 36.905926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.445471, 37.450497, 36.967785>,  <31.205639, 37.753567, 37.070881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.445471, 37.450497, 36.967785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165627, -0.197605, 0.966188,
		-0.782987, -0.621998, 0.007011,
		0.599582, -0.757675, -0.257742,
		31.625345, 37.223194, 36.890461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.046055, 37.250656, 37.568661>,  <31.205639, 37.753567, 37.070881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.046055, 37.250656, 37.568661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.377670, 37.074944, 37.430256>,  <31.576639, 36.969517, 37.347214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.377670, 37.074944, 37.430256>,  <31.046055, 37.250656, 37.568661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.377670, 37.074944, 37.430256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211470, -0.326535, 0.921225,
		-0.517661, -0.836904, -0.177816,
		0.829040, -0.439279, -0.346014,
		31.626383, 36.943161, 37.326450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.129969, 36.600937, 37.925896>,  <31.046055, 37.250656, 37.568661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.129969, 36.600937, 37.925896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.488583, 36.703804, 37.781624>,  <31.703751, 36.765526, 37.695061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.488583, 36.703804, 37.781624>,  <31.129969, 36.600937, 37.925896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.488583, 36.703804, 37.781624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395349, -0.097265, 0.913367,
		0.199809, -0.961459, -0.188873,
		0.896535, 0.257170, -0.360678,
		31.757544, 36.780956, 37.673420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.579851, 36.068417, 38.167660>,  <31.129969, 36.600937, 37.925896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.579851, 36.068417, 38.167660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.827662, 36.365837, 38.067005>,  <31.976347, 36.544289, 38.006611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.827662, 36.365837, 38.067005>,  <31.579851, 36.068417, 38.167660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.827662, 36.365837, 38.067005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482644, -0.108002, 0.869132,
		0.619068, -0.659898, -0.425781,
		0.619524, 0.743553, -0.251635,
		32.013519, 36.588902, 37.991516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.254978, 35.783699, 38.333958>,  <31.579851, 36.068417, 38.167660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.254978, 35.783699, 38.333958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.249710, 36.183647, 38.330296>,  <32.246548, 36.423615, 38.328098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.249710, 36.183647, 38.330296>,  <32.254978, 35.783699, 38.333958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.249710, 36.183647, 38.330296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324399, 0.012936, 0.945832,
		0.945829, 0.009491, -0.324527,
		-0.013175, 0.999871, -0.009156,
		32.245758, 36.483608, 38.327549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.813915, 35.916672, 38.635429>,  <32.254978, 35.783699, 38.333958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.813915, 35.916672, 38.635429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.611118, 36.258717, 38.678768>,  <32.489441, 36.463943, 38.704769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.611118, 36.258717, 38.678768>,  <32.813915, 35.916672, 38.635429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.611118, 36.258717, 38.678768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400038, 0.122097, 0.908329,
		0.763495, 0.503861, -0.403980,
		-0.506996, 0.855112, 0.108343,
		32.459019, 36.515251, 38.711269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.360847, 36.385513, 38.953030>,  <32.813915, 35.916672, 38.635429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.360847, 36.385513, 38.953030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.027660, 36.595791, 39.022091>,  <32.827747, 36.721958, 39.063526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.027660, 36.595791, 39.022091>,  <33.360847, 36.385513, 38.953030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.027660, 36.595791, 39.022091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408319, 0.373416, 0.832969,
		0.373416, 0.764334, -0.525694,
		-0.832969, 0.525694, 0.172652,
		32.777771, 36.753498, 39.073887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.550575, 36.983337, 39.309601>,  <33.360847, 36.385513, 38.953030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.550575, 36.983337, 39.309601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.164810, 36.951836, 39.410557>,  <32.933350, 36.932934, 39.471130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.164810, 36.951836, 39.410557>,  <33.550575, 36.983337, 39.309601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.164810, 36.951836, 39.410557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234553, 0.185693, 0.954203,
		-0.122019, 0.979446, -0.160612,
		-0.964415, -0.078759, 0.252390,
		32.875484, 36.928207, 39.486275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.510101, 37.418598, 39.811104>,  <33.550575, 36.983337, 39.309601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.510101, 37.418598, 39.811104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.198242, 37.177345, 39.878494>,  <33.011127, 37.032593, 39.918930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.198242, 37.177345, 39.878494>,  <33.510101, 37.418598, 39.811104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.198242, 37.177345, 39.878494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119303, 0.121051, 0.985451,
		-0.614747, 0.788406, -0.022423,
		-0.779650, -0.603128, 0.168475,
		32.964348, 36.996407, 39.929035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.258465, 37.630211, 40.359398>,  <33.510101, 37.418598, 39.811104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.258465, 37.630211, 40.359398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.062721, 37.281380, 40.358959>,  <32.945274, 37.072079, 40.358696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.062721, 37.281380, 40.358959>,  <33.258465, 37.630211, 40.359398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.062721, 37.281380, 40.358959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090298, 0.049416, 0.994688,
		-0.867395, 0.486859, -0.102930,
		-0.489360, -0.872081, -0.001099,
		32.915913, 37.019756, 40.358631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.629238, 37.665539, 40.875244>,  <33.258465, 37.630211, 40.359398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.629238, 37.665539, 40.875244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.677708, 37.271069, 40.830036>,  <32.706791, 37.034386, 40.802914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.677708, 37.271069, 40.830036>,  <32.629238, 37.665539, 40.875244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.677708, 37.271069, 40.830036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187758, -0.134573, 0.972953,
		-0.974712, -0.096680, -0.201469,
		0.121177, -0.986176, -0.113017,
		32.714062, 36.975216, 40.796131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.034401, 37.380577, 41.228775>,  <32.629238, 37.665539, 40.875244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.034401, 37.380577, 41.228775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.309143, 37.090763, 41.205868>,  <32.473988, 36.916874, 41.192123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.309143, 37.090763, 41.205868>,  <32.034401, 37.380577, 41.228775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.309143, 37.090763, 41.205868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177289, -0.243446, 0.953574,
		-0.704835, -0.644818, -0.295664,
		0.686859, -0.724531, -0.057270,
		32.515202, 36.873405, 41.188686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.649937, 36.771637, 41.452599>,  <32.034401, 37.380577, 41.228775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.649937, 36.771637, 41.452599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.027683, 36.651226, 41.505604>,  <32.254330, 36.578979, 41.537407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.027683, 36.651226, 41.505604>,  <31.649937, 36.771637, 41.452599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.027683, 36.651226, 41.505604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179992, -0.135798, 0.974249,
		-0.275282, -0.943896, -0.182426,
		0.944364, -0.301029, 0.132511,
		32.310993, 36.560917, 41.545357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.639713, 36.122097, 41.776001>,  <31.649937, 36.771637, 41.452599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.639713, 36.122097, 41.776001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.987207, 36.300461, 41.862228>,  <32.195702, 36.407478, 41.913963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.987207, 36.300461, 41.862228>,  <31.639713, 36.122097, 41.776001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.987207, 36.300461, 41.862228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154370, -0.169783, 0.973316,
		0.470609, -0.878829, -0.078662,
		0.868733, 0.445908, 0.215566,
		32.247826, 36.434235, 41.926899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.012043, 35.598843, 42.254898>,  <31.639713, 36.122097, 41.776001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.012043, 35.598843, 42.254898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.157761, 35.959419, 42.348450>,  <32.245193, 36.175766, 42.404579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.157761, 35.959419, 42.348450>,  <32.012043, 35.598843, 42.254898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.157761, 35.959419, 42.348450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060770, -0.227588, 0.971860,
		0.929298, -0.368258, -0.028130,
		0.364297, 0.901438, 0.233876,
		32.267048, 36.229851, 42.418613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.519077, 35.488243, 42.837555>,  <32.012043, 35.598843, 42.254898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.519077, 35.488243, 42.837555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.431999, 35.878464, 42.849602>,  <32.379753, 36.112595, 42.856831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.431999, 35.878464, 42.849602>,  <32.519077, 35.488243, 42.837555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.431999, 35.878464, 42.849602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088209, -0.050397, 0.994826,
		0.972023, 0.213909, 0.097023,
		-0.217692, 0.975553, 0.030119,
		32.366692, 36.171131, 42.858639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.750282, 35.763962, 43.544174>,  <32.519077, 35.488243, 42.837555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.750282, 35.763962, 43.544174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.500473, 36.063225, 43.454525>,  <32.350586, 36.242783, 43.400734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.500473, 36.063225, 43.454525>,  <32.750282, 35.763962, 43.544174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.500473, 36.063225, 43.454525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160548, 0.157864, 0.974322,
		0.764328, 0.644469, 0.021526,
		-0.624522, 0.748157, -0.224128,
		32.313118, 36.287670, 43.387287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.037457, 36.305290, 43.917664>,  <32.750282, 35.763962, 43.544174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.037457, 36.305290, 43.917664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.645363, 36.349777, 43.852211>,  <32.410107, 36.376469, 43.812939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.645363, 36.349777, 43.852211>,  <33.037457, 36.305290, 43.917664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.645363, 36.349777, 43.852211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161861, 0.024855, 0.986501,
		0.113779, 0.993486, -0.006362,
		-0.980232, 0.111213, -0.163635,
		32.351292, 36.383141, 43.803120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.776909, 36.860970, 44.347004>,  <33.037457, 36.305290, 43.917664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.776909, 36.860970, 44.347004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.444290, 36.656570, 44.259899>,  <32.244720, 36.533932, 44.207638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.444290, 36.656570, 44.259899>,  <32.776909, 36.860970, 44.347004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.444290, 36.656570, 44.259899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295828, 0.075601, 0.952245,
		-0.470131, 0.856251, -0.214033,
		-0.831542, -0.510997, -0.217761,
		32.194828, 36.503273, 44.194572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.261158, 37.183643, 44.685692>,  <32.776909, 36.860970, 44.347004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.261158, 37.183643, 44.685692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.081127, 36.835114, 44.607494>,  <31.973108, 36.625996, 44.560574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.081127, 36.835114, 44.607494>,  <32.261158, 37.183643, 44.685692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.081127, 36.835114, 44.607494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364682, -0.020491, 0.930907,
		-0.815131, 0.490273, -0.308535,
		-0.450076, -0.871328, -0.195497,
		31.946104, 36.573715, 44.548843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.596827, 37.342171, 45.007030>,  <32.261158, 37.183643, 44.685692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.596827, 37.342171, 45.007030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.622614, 36.953751, 44.915024>,  <31.638086, 36.720699, 44.859821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.622614, 36.953751, 44.915024>,  <31.596827, 37.342171, 45.007030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.622614, 36.953751, 44.915024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398657, -0.236364, 0.886118,
		-0.914832, 0.034573, -0.402353,
		0.064467, -0.971049, -0.230016,
		31.641954, 36.662437, 44.846020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.930298, 37.067822, 44.989372>,  <31.596827, 37.342171, 45.007030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.930298, 37.067822, 44.989372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.163120, 36.756413, 45.083271>,  <31.302814, 36.569565, 45.139610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.163120, 36.756413, 45.083271>,  <30.930298, 37.067822, 44.989372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.163120, 36.756413, 45.083271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522705, -0.137086, 0.841420,
		-0.622888, -0.612456, -0.486732,
		0.582057, -0.778527, 0.234744,
		31.337738, 36.522854, 45.153694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.533085, 36.505737, 45.369999>,  <30.930298, 37.067822, 44.989372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.533085, 36.505737, 45.369999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.901476, 36.403515, 45.487637>,  <31.122511, 36.342182, 45.558220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.901476, 36.403515, 45.487637>,  <30.533085, 36.505737, 45.369999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.901476, 36.403515, 45.487637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365292, -0.303840, 0.879911,
		-0.135504, -0.917810, -0.373181,
		0.920978, -0.255551, 0.294097,
		31.177769, 36.326851, 45.575867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.482241, 35.855381, 45.738171>,  <30.533085, 36.505737, 45.369999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.482241, 35.855381, 45.738171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.849182, 35.959560, 45.858589>,  <31.069347, 36.022068, 45.930840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.849182, 35.959560, 45.858589>,  <30.482241, 35.855381, 45.738171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.849182, 35.959560, 45.858589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176179, -0.412524, 0.893748,
		0.356966, -0.872920, -0.332544,
		0.917353, 0.260450, 0.301047,
		31.124388, 36.037697, 45.948902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.723145, 35.254025, 46.127487>,  <30.482241, 35.855381, 45.738171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.723145, 35.254025, 46.127487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.942776, 35.560856, 46.260216>,  <31.074554, 35.744953, 46.339855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.942776, 35.560856, 46.260216>,  <30.723145, 35.254025, 46.127487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.942776, 35.560856, 46.260216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110988, -0.326587, 0.938628,
		0.828370, -0.552207, -0.094184,
		0.549076, 0.767078, 0.331823,
		31.107498, 35.790977, 46.359764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.077499, 34.977638, 46.635338>,  <30.723145, 35.254025, 46.127487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.077499, 34.977638, 46.635338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.132923, 35.361637, 46.732662>,  <31.166178, 35.592037, 46.791058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.132923, 35.361637, 46.732662>,  <31.077499, 34.977638, 46.635338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.132923, 35.361637, 46.732662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114860, -0.228449, 0.966757,
		0.983671, -0.161898, 0.078612,
		0.138557, 0.960000, 0.243314,
		31.174490, 35.649635, 46.805656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.541246, 34.909828, 47.233864>,  <31.077499, 34.977638, 46.635338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.541246, 34.909828, 47.233864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.368679, 35.269852, 47.258427>,  <31.265139, 35.485867, 47.273167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.368679, 35.269852, 47.258427>,  <31.541246, 34.909828, 47.233864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.368679, 35.269852, 47.258427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100646, -0.115662, 0.988176,
		0.896521, 0.420135, 0.140486,
		-0.431417, 0.900060, 0.061409,
		31.239254, 35.539871, 47.276848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.927641, 35.324051, 47.854961>,  <31.541246, 34.909828, 47.233864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.927641, 35.324051, 47.854961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.561951, 35.466286, 47.777245>,  <31.342537, 35.551628, 47.730614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.561951, 35.466286, 47.777245>,  <31.927641, 35.324051, 47.854961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.561951, 35.466286, 47.777245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207615, 0.000717, 0.978210,
		0.347981, 0.934642, 0.073170,
		-0.914224, 0.355590, -0.194295,
		31.287683, 35.572964, 47.718956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.843229, 35.718288, 48.393280>,  <31.927641, 35.324051, 47.854961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.843229, 35.718288, 48.393280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.472134, 35.681271, 48.248650>,  <31.249477, 35.659061, 48.161873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.472134, 35.681271, 48.248650>,  <31.843229, 35.718288, 48.393280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.472134, 35.681271, 48.248650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363567, 0.005047, 0.931554,
		-0.084383, 0.995696, -0.038327,
		-0.927738, -0.092541, -0.361577,
		31.193811, 35.653507, 48.140175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.505970, 36.110790, 48.899124>,  <31.843229, 35.718288, 48.393280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.505970, 36.110790, 48.899124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.217949, 35.902653, 48.715485>,  <31.045135, 35.777771, 48.605301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.217949, 35.902653, 48.715485>,  <31.505970, 36.110790, 48.899124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.217949, 35.902653, 48.715485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414350, -0.208302, 0.885959,
		-0.556630, 0.828165, -0.065614,
		-0.720053, -0.520339, -0.459098,
		31.001932, 35.746552, 48.577755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.850138, 36.385010, 49.050663>,  <31.505970, 36.110790, 48.899124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.850138, 36.385010, 49.050663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.771540, 36.003124, 48.961304>,  <30.724380, 35.773994, 48.907688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.771540, 36.003124, 48.961304>,  <30.850138, 36.385010, 49.050663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.771540, 36.003124, 48.961304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274227, -0.165239, 0.947362,
		-0.941376, 0.247417, -0.229340,
		-0.196497, -0.954715, -0.223401,
		30.712591, 35.716709, 48.894283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.408419, 36.186977, 49.615108>,  <30.850138, 36.385010, 49.050663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.408419, 36.186977, 49.615108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.425415, 35.827957, 49.439564>,  <30.435612, 35.612545, 49.334236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.425415, 35.827957, 49.439564>,  <30.408419, 36.186977, 49.615108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.425415, 35.827957, 49.439564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388961, -0.419463, 0.820219,
		-0.920274, 0.135850, -0.366935,
		0.042489, -0.897550, -0.438861,
		30.438162, 35.558693, 49.307907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.775761, 35.825340, 49.638660>,  <30.408419, 36.186977, 49.615108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.775761, 35.825340, 49.638660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.047091, 35.534988, 49.593086>,  <30.209888, 35.360779, 49.565742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.047091, 35.534988, 49.593086>,  <29.775761, 35.825340, 49.638660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.047091, 35.534988, 49.593086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272102, -0.392206, 0.878712,
		-0.682524, -0.565047, -0.463555,
		0.678322, -0.725876, -0.113940,
		30.250587, 35.317226, 49.558903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.513845, 35.102100, 49.877090>,  <29.775761, 35.825340, 49.638660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.513845, 35.102100, 49.877090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.912912, 35.075771, 49.884373>,  <30.152351, 35.059975, 49.888744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.912912, 35.075771, 49.884373>,  <29.513845, 35.102100, 49.877090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.912912, 35.075771, 49.884373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052176, -0.562572, 0.825101,
		-0.044064, -0.824124, -0.564692,
		0.997665, -0.065820, 0.018210,
		30.212212, 35.056026, 49.889835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.667238, 34.395149, 50.041679>,  <29.513845, 35.102100, 49.877090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.667238, 34.395149, 50.041679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.001156, 34.595787, 50.132477>,  <30.201508, 34.716167, 50.186954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.001156, 34.595787, 50.132477>,  <29.667238, 34.395149, 50.041679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.001156, 34.595787, 50.132477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068658, -0.503914, 0.861021,
		0.546263, -0.703192, -0.455103,
		0.834795, 0.501590, 0.226990,
		30.251595, 34.746265, 50.200573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.140272, 33.928844, 50.312935>,  <29.667238, 34.395149, 50.041679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.140272, 33.928844, 50.312935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.288645, 34.273544, 50.451378>,  <30.377668, 34.480366, 50.534443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.288645, 34.273544, 50.451378>,  <30.140272, 33.928844, 50.312935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.288645, 34.273544, 50.451378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234124, -0.447437, 0.863126,
		0.898663, -0.239129, -0.367727,
		0.370933, 0.861752, 0.346109,
		30.399925, 34.532070, 50.555210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.725595, 33.771614, 50.566559>,  <30.140272, 33.928844, 50.312935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.725595, 33.771614, 50.566559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.653942, 34.123070, 50.743607>,  <30.610950, 34.333942, 50.849834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.653942, 34.123070, 50.743607>,  <30.725595, 33.771614, 50.566559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.653942, 34.123070, 50.743607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207098, -0.406137, 0.890035,
		0.961780, 0.251101, -0.109210,
		-0.179134, 0.878636, 0.442617,
		30.600203, 34.386662, 50.876392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.300827, 33.955475, 50.993408>,  <30.725595, 33.771614, 50.566559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.300827, 33.955475, 50.993408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.983084, 34.149597, 51.139545>,  <30.792437, 34.266071, 51.227226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.983084, 34.149597, 51.139545>,  <31.300827, 33.955475, 50.993408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.983084, 34.149597, 51.139545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178408, -0.388518, 0.904004,
		0.580658, 0.783284, 0.222041,
		-0.794360, 0.485303, 0.365341,
		30.744776, 34.295189, 51.249149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.374357, 33.776264, 51.640781>,  <31.300827, 33.955475, 50.993408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.374357, 33.776264, 51.640781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.020800, 33.962696, 51.656319>,  <30.808666, 34.074554, 51.665642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.020800, 33.962696, 51.656319>,  <31.374357, 33.776264, 51.640781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.020800, 33.962696, 51.656319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121917, -0.309798, 0.942954,
		0.451521, 0.828733, 0.330651,
		-0.883892, 0.466075, 0.038843,
		30.755632, 34.102520, 51.667973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.329000, 34.194965, 52.255283>,  <31.374357, 33.776264, 51.640781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.329000, 34.194965, 52.255283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.949432, 34.108246, 52.163586>,  <30.721691, 34.056213, 52.108566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.949432, 34.108246, 52.163586>,  <31.329000, 34.194965, 52.255283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.949432, 34.108246, 52.163586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135840, -0.375058, 0.916995,
		-0.284783, 0.901293, 0.326449,
		-0.948918, -0.216800, -0.229242,
		30.664757, 34.043205, 52.094814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.984221, 34.402439, 52.755306>,  <31.329000, 34.194965, 52.255283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.984221, 34.402439, 52.755306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.745995, 34.116882, 52.607979>,  <30.603060, 33.945549, 52.519581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.745995, 34.116882, 52.607979>,  <30.984221, 34.402439, 52.755306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.745995, 34.116882, 52.607979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161876, -0.342443, 0.925488,
		-0.786828, 0.610811, 0.088385,
		-0.595565, -0.713893, -0.368319,
		30.567326, 33.902714, 52.497482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.248356, 34.198353, 52.999527>,  <30.984221, 34.402439, 52.755306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.248356, 34.198353, 52.999527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.491730, 33.888973, 52.928440>,  <30.637754, 33.703346, 52.885788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.491730, 33.888973, 52.928440>,  <30.248356, 34.198353, 52.999527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.491730, 33.888973, 52.928440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000548, -0.223524, 0.974698,
		-0.793602, -0.593140, -0.135577,
		0.608437, -0.773448, -0.177715,
		30.674261, 33.656940, 52.875126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.985668, 33.586006, 53.443653>,  <30.248356, 34.198353, 52.999527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.985668, 33.586006, 53.443653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.377766, 33.556587, 53.370209>,  <30.613024, 33.538937, 53.326141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.377766, 33.556587, 53.370209>,  <29.985668, 33.586006, 53.443653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.377766, 33.556587, 53.370209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136750, -0.418671, 0.897783,
		-0.142898, -0.905155, -0.400343,
		0.980245, -0.073545, -0.183608,
		30.671839, 33.534523, 53.315125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.210913, 32.813576, 53.585556>,  <29.985668, 33.586006, 53.443653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.210913, 32.813576, 53.585556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.504770, 33.081543, 53.628468>,  <30.681086, 33.242321, 53.654213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.504770, 33.081543, 53.628468>,  <30.210913, 32.813576, 53.585556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.504770, 33.081543, 53.628468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233879, -0.398489, 0.886852,
		0.636865, -0.626433, -0.449427,
		0.734645, 0.669917, 0.107275,
		30.725164, 33.282516, 53.660648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.692142, 32.260296, 53.547493>,  <30.210913, 32.813576, 53.585556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.692142, 32.260296, 53.547493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.942636, 31.996183, 53.713318>,  <31.092934, 31.837717, 53.812813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.942636, 31.996183, 53.713318>,  <30.692142, 32.260296, 53.547493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.942636, 31.996183, 53.713318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116250, -0.604875, -0.787790,
		0.770917, 0.445150, -0.455553,
		0.626237, -0.660279, 0.414559,
		31.130508, 31.798100, 53.837685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.121260, 32.047504, 53.023548>,  <30.692142, 32.260296, 53.547493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.121260, 32.047504, 53.023548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.137482, 31.765118, 53.306381>,  <31.147215, 31.595686, 53.476082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.137482, 31.765118, 53.306381>,  <31.121260, 32.047504, 53.023548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.137482, 31.765118, 53.306381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111728, -0.706435, -0.698904,
		0.992911, -0.050657, -0.107527,
		0.040557, -0.705963, 0.707087,
		31.149649, 31.553329, 53.518509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.626293, 31.769051, 52.642986>,  <31.121260, 32.047504, 53.023548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.626293, 31.769051, 52.642986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.456009, 31.502058, 52.887360>,  <31.353838, 31.341862, 53.033981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.456009, 31.502058, 52.887360>,  <31.626293, 31.769051, 52.642986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.456009, 31.502058, 52.887360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100248, -0.636220, -0.764967,
		0.899289, -0.386900, 0.203933,
		-0.425712, -0.667482, 0.610931,
		31.328295, 31.301813, 53.070641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.949406, 30.983147, 52.644718>,  <31.626293, 31.769051, 52.642986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.949406, 30.983147, 52.644718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.559458, 31.052208, 52.701035>,  <31.325489, 31.093645, 52.734825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.559458, 31.052208, 52.701035>,  <31.949406, 30.983147, 52.644718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.559458, 31.052208, 52.701035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199089, -0.391571, -0.898352,
		-0.099974, -0.903805, 0.416103,
		-0.974869, 0.172653, 0.140790,
		31.266996, 31.104004, 52.743271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.429842, 30.362602, 52.383030>,  <31.949406, 30.983147, 52.644718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.429842, 30.362602, 52.383030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.232660, 30.710550, 52.390217>,  <31.114351, 30.919319, 52.394531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.232660, 30.710550, 52.390217>,  <31.429842, 30.362602, 52.383030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.232660, 30.710550, 52.390217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264269, -0.130018, -0.955645,
		-0.828949, -0.475839, 0.293972,
		-0.492955, 0.869869, 0.017971,
		31.084774, 30.971512, 52.395607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.802071, 30.339384, 51.915798>,  <31.429842, 30.362602, 52.383030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.802071, 30.339384, 51.915798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.929440, 30.717207, 51.947838>,  <31.005861, 30.943901, 51.967064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.929440, 30.717207, 51.947838>,  <30.802071, 30.339384, 51.915798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.929440, 30.717207, 51.947838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092813, 0.115158, -0.989002,
		-0.943395, 0.307484, 0.124336,
		0.318421, 0.944559, 0.080101,
		31.024965, 31.000574, 51.971867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.344515, 31.031269, 51.646698>,  <30.802071, 30.339384, 51.915798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.344515, 31.031269, 51.646698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.739614, 31.013790, 51.586777>,  <30.976675, 31.003304, 51.550823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.739614, 31.013790, 51.586777>,  <30.344515, 31.031269, 51.646698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.739614, 31.013790, 51.586777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154074, -0.120982, -0.980624,
		0.024726, 0.991692, -0.126233,
		0.987750, -0.043696, -0.149803,
		31.035940, 31.000681, 51.541836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.259609, 30.685638, 50.968647>,  <30.344515, 31.031269, 51.646698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.259609, 30.685638, 50.968647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.223715, 31.077425, 51.040859>,  <30.202179, 31.312498, 51.084187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.223715, 31.077425, 51.040859>,  <30.259609, 30.685638, 50.968647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.223715, 31.077425, 51.040859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317124, 0.199925, -0.927072,
		-0.944129, -0.025941, -0.328553,
		-0.089735, 0.979468, 0.180528,
		30.196795, 31.371265, 51.095016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.902903, 30.987986, 50.357838>,  <30.259609, 30.685638, 50.968647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.902903, 30.987986, 50.357838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.045721, 31.305277, 50.555141>,  <30.131413, 31.495651, 50.673523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.045721, 31.305277, 50.555141>,  <29.902903, 30.987986, 50.357838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.045721, 31.305277, 50.555141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079026, 0.551826, -0.830207,
		-0.930738, 0.257441, 0.259713,
		0.357046, 0.793229, 0.493261,
		30.152834, 31.543245, 50.703121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.417917, 31.593775, 50.294693>,  <29.902903, 30.987986, 50.357838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.417917, 31.593775, 50.294693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.776468, 31.757198, 50.363495>,  <29.991598, 31.855251, 50.404778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.776468, 31.757198, 50.363495>,  <29.417917, 31.593775, 50.294693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.776468, 31.757198, 50.363495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198474, 0.716850, -0.668382,
		-0.396376, 0.564984, 0.723657,
		0.896378, 0.408558, 0.172007,
		30.045382, 31.879766, 50.415096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.302570, 32.332535, 50.390850>,  <29.417917, 31.593775, 50.294693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.302570, 32.332535, 50.390850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.695181, 32.289398, 50.327629>,  <29.930746, 32.263515, 50.289696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.695181, 32.289398, 50.327629>,  <29.302570, 32.332535, 50.390850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.695181, 32.289398, 50.327629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044424, 0.675031, -0.736451,
		0.186106, 0.729866, 0.657769,
		0.981525, -0.107837, -0.158051,
		29.989639, 32.257046, 50.280212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.650080, 33.077541, 50.263493>,  <29.302570, 32.332535, 50.390850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.650080, 33.077541, 50.263493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.897556, 32.808247, 50.101517>,  <30.046041, 32.646671, 50.004330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.897556, 32.808247, 50.101517>,  <29.650080, 33.077541, 50.263493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.897556, 32.808247, 50.101517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280458, 0.670735, -0.686628,
		0.733871, 0.311240, 0.603790,
		0.618689, -0.673234, -0.404944,
		30.083162, 32.606277, 49.980034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.914026, 33.438766, 49.728821>,  <29.650080, 33.077541, 50.263493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.914026, 33.438766, 49.728821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.032446, 33.069515, 49.630684>,  <30.103497, 32.847965, 49.571800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.032446, 33.069515, 49.630684>,  <29.914026, 33.438766, 49.728821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.032446, 33.069515, 49.630684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115516, 0.289571, -0.950160,
		0.948163, 0.252951, 0.192363,
		0.296047, -0.923127, -0.245341,
		30.121260, 32.792576, 49.557083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.467978, 33.483711, 49.329811>,  <29.914026, 33.438766, 49.728821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.467978, 33.483711, 49.329811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.285543, 33.140923, 49.233818>,  <30.176083, 32.935249, 49.176220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.285543, 33.140923, 49.233818>,  <30.467978, 33.483711, 49.329811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.285543, 33.140923, 49.233818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075260, 0.231558, -0.969905,
		0.886749, -0.460419, -0.041114,
		-0.456084, -0.856969, -0.239985,
		30.148718, 32.883831, 49.161823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.879692, 33.193562, 48.733055>,  <30.467978, 33.483711, 49.329811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.879692, 33.193562, 48.733055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.540115, 32.983738, 48.707348>,  <30.336369, 32.857841, 48.691925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.540115, 32.983738, 48.707348>,  <30.879692, 33.193562, 48.733055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.540115, 32.983738, 48.707348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106153, -0.050125, -0.993086,
		0.517715, -0.849895, 0.098238,
		-0.848942, -0.524563, -0.064269,
		30.285433, 32.826370, 48.688068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.001081, 32.573238, 48.430176>,  <30.879692, 33.193562, 48.733055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.001081, 32.573238, 48.430176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.607101, 32.617870, 48.377380>,  <30.370712, 32.644650, 48.345703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.607101, 32.617870, 48.377380>,  <31.001081, 32.573238, 48.430176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.607101, 32.617870, 48.377380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119587, -0.111389, -0.986555,
		-0.124803, -0.987491, 0.096367,
		-0.984948, 0.111600, -0.131993,
		30.311617, 32.651344, 48.337784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.935694, 32.065453, 48.008553>,  <31.001081, 32.573238, 48.430176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.935694, 32.065453, 48.008553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.626333, 32.318275, 47.989159>,  <30.440718, 32.469971, 47.977524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.626333, 32.318275, 47.989159>,  <30.935694, 32.065453, 48.008553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.626333, 32.318275, 47.989159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052502, -0.012350, -0.998544,
		-0.631740, -0.774820, -0.023633,
		-0.773401, 0.632061, -0.048481,
		30.394314, 32.507893, 47.974613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.392727, 31.840267, 47.547497>,  <30.935694, 32.065453, 48.008553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.392727, 31.840267, 47.547497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.276632, 32.222763, 47.562271>,  <30.206976, 32.452259, 47.571136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.276632, 32.222763, 47.562271>,  <30.392727, 31.840267, 47.547497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.276632, 32.222763, 47.562271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155760, 0.085293, -0.984106,
		-0.944193, -0.279872, -0.173700,
		-0.290239, 0.956241, 0.036940,
		30.189560, 32.509636, 47.573353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.838116, 31.899509, 47.066490>,  <30.392727, 31.840267, 47.547497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.838116, 31.899509, 47.066490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.000664, 32.260059, 47.126339>,  <30.098192, 32.476391, 47.162247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.000664, 32.260059, 47.126339>,  <29.838116, 31.899509, 47.066490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.000664, 32.260059, 47.126339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221887, 0.061495, -0.973131,
		-0.886357, 0.428650, -0.175013,
		0.406370, 0.901375, 0.149619,
		30.122574, 32.530472, 47.171227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.391216, 32.460144, 46.707169>,  <29.838116, 31.899509, 47.066490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.391216, 32.460144, 46.707169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.738369, 32.642269, 46.786636>,  <29.946661, 32.751545, 46.834316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.738369, 32.642269, 46.786636>,  <29.391216, 32.460144, 46.707169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.738369, 32.642269, 46.786636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027620, 0.443527, -0.895835,
		-0.496000, 0.771993, 0.397505,
		0.867883, 0.455314, 0.198667,
		29.998734, 32.778862, 46.846237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.357592, 33.111038, 46.389786>,  <29.391216, 32.460144, 46.707169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.357592, 33.111038, 46.389786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.751064, 33.044514, 46.417236>,  <29.987148, 33.004597, 46.433708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.751064, 33.044514, 46.417236>,  <29.357592, 33.111038, 46.389786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.751064, 33.044514, 46.417236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128796, 0.384610, -0.914050,
		0.125626, 0.907973, 0.399754,
		0.983682, -0.166315, 0.068626,
		30.046169, 32.994617, 46.437824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.587500, 33.749115, 46.072880>,  <29.357592, 33.111038, 46.389786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.587500, 33.749115, 46.072880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.879469, 33.476192, 46.056515>,  <30.054651, 33.312439, 46.046696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.879469, 33.476192, 46.056515>,  <29.587500, 33.749115, 46.072880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.879469, 33.476192, 46.056515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150455, 0.218764, -0.964109,
		0.666763, 0.697572, 0.262337,
		0.729925, -0.682302, -0.040910,
		30.098446, 33.271503, 46.044243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.054958, 34.051544, 45.623627>,  <29.587500, 33.749115, 46.072880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.054958, 34.051544, 45.623627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.183876, 33.672890, 45.622993>,  <30.261227, 33.445698, 45.622612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.183876, 33.672890, 45.622993>,  <30.054958, 34.051544, 45.623627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.183876, 33.672890, 45.622993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096631, 0.034567, -0.994720,
		0.941695, 0.320438, 0.102615,
		0.322293, -0.946639, -0.001587,
		30.280563, 33.388897, 45.622517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.641718, 34.016903, 45.202694>,  <30.054958, 34.051544, 45.623627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.641718, 34.016903, 45.202694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.523420, 33.634834, 45.208202>,  <30.452442, 33.405594, 45.211506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.523420, 33.634834, 45.208202>,  <30.641718, 34.016903, 45.202694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.523420, 33.634834, 45.208202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104623, -0.046712, -0.993414,
		0.949521, -0.292354, 0.113748,
		-0.295742, -0.955169, 0.013767,
		30.434698, 33.348282, 45.212334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.086988, 33.741280, 44.828556>,  <30.641718, 34.016903, 45.202694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.086988, 33.741280, 44.828556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.800879, 33.463291, 44.857937>,  <30.629211, 33.296497, 44.875565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.800879, 33.463291, 44.857937>,  <31.086988, 33.741280, 44.828556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.800879, 33.463291, 44.857937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086815, -0.192660, -0.977418,
		0.693428, -0.692747, 0.198139,
		-0.715277, -0.694970, 0.073455,
		30.586296, 33.254799, 44.879974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.270330, 33.004631, 44.452442>,  <31.086988, 33.741280, 44.828556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.270330, 33.004631, 44.452442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.871115, 33.020058, 44.472179>,  <30.631586, 33.029312, 44.484020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.871115, 33.020058, 44.472179>,  <31.270330, 33.004631, 44.452442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.871115, 33.020058, 44.472179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057445, -0.249974, -0.966547,
		-0.024942, -0.967484, 0.251698,
		-0.998037, 0.038566, 0.049342,
		30.571703, 33.031628, 44.486980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.090542, 32.567936, 43.927975>,  <31.270330, 33.004631, 44.452442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.090542, 32.567936, 43.927975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.737597, 32.748955, 43.979568>,  <30.525829, 32.857567, 44.010525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.737597, 32.748955, 43.979568>,  <31.090542, 32.567936, 43.927975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.737597, 32.748955, 43.979568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209187, -0.131694, -0.968967,
		-0.421522, -0.881960, 0.210870,
		-0.882361, 0.452552, 0.128983,
		30.472889, 32.884720, 44.018265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.649668, 32.222878, 43.515301>,  <31.090542, 32.567936, 43.927975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.649668, 32.222878, 43.515301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.498795, 32.590271, 43.562820>,  <30.408270, 32.810707, 43.591331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.498795, 32.590271, 43.562820>,  <30.649668, 32.222878, 43.515301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.498795, 32.590271, 43.562820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113209, 0.081587, -0.990216,
		-0.919193, -0.386943, 0.073207,
		-0.377184, 0.918487, 0.118800,
		30.385639, 32.865818, 43.598461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.880047, 32.210323, 43.139198>,  <30.649668, 32.222878, 43.515301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.880047, 32.210323, 43.139198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.024054, 32.581543, 43.177372>,  <30.110458, 32.804276, 43.200275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.024054, 32.581543, 43.177372>,  <29.880047, 32.210323, 43.139198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.024054, 32.581543, 43.177372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140717, 0.155145, -0.977818,
		-0.922272, 0.338603, 0.186448,
		0.360018, 0.928051, 0.095438,
		30.132059, 32.859959, 43.206005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.450047, 32.691341, 42.770096>,  <29.880047, 32.210323, 43.139198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.450047, 32.691341, 42.770096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.786982, 32.901287, 42.819061>,  <29.989141, 33.027256, 42.848442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.786982, 32.901287, 42.819061>,  <29.450047, 32.691341, 42.770096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.786982, 32.901287, 42.819061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029772, 0.272098, -0.961809,
		-0.538130, 0.806522, 0.244825,
		0.842336, 0.524867, 0.122413,
		30.039682, 33.058746, 42.855785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.314926, 33.401299, 42.551201>,  <29.450047, 32.691341, 42.770096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.314926, 33.401299, 42.551201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.713234, 33.374374, 42.526188>,  <29.952219, 33.358219, 42.511181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.713234, 33.374374, 42.526188>,  <29.314926, 33.401299, 42.551201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.713234, 33.374374, 42.526188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023826, 0.468113, -0.883347,
		0.088733, 0.881101, 0.464530,
		0.995770, -0.067314, -0.062530,
		30.011965, 33.354179, 42.507427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.443512, 34.035103, 42.369862>,  <29.314926, 33.401299, 42.551201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.443512, 34.035103, 42.369862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.762342, 33.826351, 42.248333>,  <29.953642, 33.701099, 42.175415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.762342, 33.826351, 42.248333>,  <29.443512, 34.035103, 42.369862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.762342, 33.826351, 42.248333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017779, 0.482615, -0.875652,
		0.603614, 0.703365, 0.375403,
		0.797078, -0.521881, -0.303819,
		30.001467, 33.669788, 42.157188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.807478, 34.573055, 41.977592>,  <29.443512, 34.035103, 42.369862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.807478, 34.573055, 41.977592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.943100, 34.206745, 41.891438>,  <30.024473, 33.986958, 41.839745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.943100, 34.206745, 41.891438>,  <29.807478, 34.573055, 41.977592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.943100, 34.206745, 41.891438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181158, 0.288221, -0.940271,
		0.923159, 0.279785, 0.263624,
		0.339055, -0.915778, -0.215389,
		30.044817, 33.932011, 41.826820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.406637, 34.711178, 41.540657>,  <29.807478, 34.573055, 41.977592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.406637, 34.711178, 41.540657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.353952, 34.319134, 41.481285>,  <30.322342, 34.083908, 41.445663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.353952, 34.319134, 41.481285>,  <30.406637, 34.711178, 41.540657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.353952, 34.319134, 41.481285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256708, 0.110904, -0.960105,
		0.957472, -0.164559, 0.236996,
		-0.131710, -0.980113, -0.148431,
		30.314440, 34.025101, 41.436756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.083420, 34.323425, 41.284725>,  <30.406637, 34.711178, 41.540657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.083420, 34.323425, 41.284725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.730406, 34.188576, 41.153587>,  <30.518597, 34.107666, 41.074905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.730406, 34.188576, 41.153587>,  <31.083420, 34.323425, 41.284725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.730406, 34.188576, 41.153587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317944, 0.085892, -0.944211,
		0.346475, -0.937534, 0.031384,
		-0.882534, -0.337124, -0.327842,
		30.465645, 34.087440, 41.055233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.270441, 34.150558, 40.597221>,  <31.083420, 34.323425, 41.284725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.270441, 34.150558, 40.597221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.872576, 34.111801, 40.583035>,  <30.633856, 34.088547, 40.574524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.872576, 34.111801, 40.583035>,  <31.270441, 34.150558, 40.597221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.872576, 34.111801, 40.583035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047798, -0.128093, -0.990610,
		0.091442, -0.987018, 0.132040,
		-0.994663, -0.096894, -0.035465,
		30.574177, 34.082733, 40.572395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.080500, 33.544128, 40.150524>,  <31.270441, 34.150558, 40.597221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.080500, 33.544128, 40.150524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.732687, 33.740768, 40.169483>,  <30.523998, 33.858753, 40.180859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.732687, 33.740768, 40.169483>,  <31.080500, 33.544128, 40.150524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.732687, 33.740768, 40.169483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129560, -0.134442, -0.982415,
		-0.476580, -0.860382, 0.180593,
		-0.869532, 0.491597, 0.047399,
		30.471827, 33.888248, 40.183704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.615108, 33.136036, 39.668453>,  <31.080500, 33.544128, 40.150524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.615108, 33.136036, 39.668453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.467838, 33.506992, 39.694950>,  <30.379477, 33.729568, 39.710850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.467838, 33.506992, 39.694950>,  <30.615108, 33.136036, 39.668453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.467838, 33.506992, 39.694950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119490, 0.023458, -0.992558,
		-0.922047, -0.373349, 0.102178,
		-0.368173, 0.927395, 0.066241,
		30.357386, 33.785210, 39.714821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.122606, 33.175598, 39.176437>,  <30.615108, 33.136036, 39.668453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.122606, 33.175598, 39.176437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.186604, 33.564297, 39.245838>,  <30.225002, 33.797516, 39.287479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.186604, 33.564297, 39.245838>,  <30.122606, 33.175598, 39.176437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.186604, 33.564297, 39.245838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041790, 0.168939, -0.984740,
		-0.986233, 0.164802, -0.013581,
		0.159993, 0.971751, 0.173500,
		30.234602, 33.855824, 39.297890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.636459, 33.576160, 38.703262>,  <30.122606, 33.175598, 39.176437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.636459, 33.576160, 38.703262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.946341, 33.810184, 38.799217>,  <30.132269, 33.950600, 38.856789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.946341, 33.810184, 38.799217>,  <29.636459, 33.576160, 38.703262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.946341, 33.810184, 38.799217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132951, 0.220175, -0.966357,
		-0.618190, 0.780533, 0.092787,
		0.774703, 0.585056, 0.239883,
		30.178751, 33.985703, 38.871181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.600670, 34.187256, 38.235889>,  <29.636459, 33.576160, 38.703262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.600670, 34.187256, 38.235889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.969566, 34.226505, 38.385475>,  <30.190905, 34.250057, 38.475227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.969566, 34.226505, 38.385475>,  <29.600670, 34.187256, 38.235889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.969566, 34.226505, 38.385475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310703, 0.387522, -0.867923,
		-0.230083, 0.916624, 0.326899,
		0.922239, 0.098126, 0.373960,
		30.246239, 34.255943, 38.497662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.763605, 34.845001, 38.152348>,  <29.600670, 34.187256, 38.235889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.763605, 34.845001, 38.152348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.103914, 34.637234, 38.184326>,  <30.308100, 34.512573, 38.203514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.103914, 34.637234, 38.184326>,  <29.763605, 34.845001, 38.152348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.103914, 34.637234, 38.184326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418583, 0.577767, -0.700695,
		0.317763, 0.629597, 0.708968,
		0.850773, -0.519416, 0.079945,
		30.359146, 34.481407, 38.208309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.287781, 35.377300, 38.184509>,  <29.763605, 34.845001, 38.152348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.287781, 35.377300, 38.184509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.476665, 35.036057, 38.095768>,  <30.589996, 34.831310, 38.042522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.476665, 35.036057, 38.095768>,  <30.287781, 35.377300, 38.184509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.476665, 35.036057, 38.095768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561479, 0.485123, -0.670370,
		0.679528, 0.191988, 0.708084,
		0.472211, -0.853109, -0.221858,
		30.618328, 34.780125, 38.029209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.851500, 35.617283, 37.821941>,  <30.287781, 35.377300, 38.184509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.851500, 35.617283, 37.821941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.852362, 35.226040, 37.738701>,  <30.852879, 34.991295, 37.688755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.852362, 35.226040, 37.738701>,  <30.851500, 35.617283, 37.821941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.852362, 35.226040, 37.738701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578100, 0.171023, -0.797842,
		0.815963, -0.118586, 0.565811,
		0.002153, -0.978105, -0.208103,
		30.853008, 34.932610, 37.676270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.571968, 35.406910, 37.733994>,  <30.851500, 35.617283, 37.821941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.571968, 35.406910, 37.733994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.365137, 35.123074, 37.542530>,  <31.241039, 34.952774, 37.427650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.365137, 35.123074, 37.542530>,  <31.571968, 35.406910, 37.733994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.365137, 35.123074, 37.542530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542091, 0.161288, -0.824696,
		0.662396, -0.685909, 0.301263,
		-0.517076, -0.709588, -0.478663,
		31.210014, 34.910198, 37.398930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.070839, 34.849346, 37.531082>,  <31.571968, 35.406910, 37.733994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.070839, 34.849346, 37.531082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.752312, 34.870098, 37.290024>,  <31.561195, 34.882549, 37.145390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.752312, 34.870098, 37.290024>,  <32.070839, 34.849346, 37.531082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.752312, 34.870098, 37.290024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598018, 0.217127, -0.771512,
		0.090828, -0.974764, -0.203926,
		-0.796320, 0.051877, -0.602647,
		31.513416, 34.885662, 37.109230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.296085, 34.494255, 37.006371>,  <32.070839, 34.849346, 37.531082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.296085, 34.494255, 37.006371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.989471, 34.720661, 36.885010>,  <31.805504, 34.856506, 36.812195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.989471, 34.720661, 36.885010>,  <32.296085, 34.494255, 37.006371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.989471, 34.720661, 36.885010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440279, 0.119232, -0.889909,
		-0.467530, -0.815724, -0.340602,
		-0.766531, 0.566019, -0.303401,
		31.759512, 34.890469, 36.793991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.675114, 34.318756, 36.483158>,  <32.296085, 34.494255, 37.006371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.675114, 34.318756, 36.483158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.054806, 34.202473, 36.531231>,  <33.282623, 34.132702, 36.560074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.054806, 34.202473, 36.531231>,  <32.675114, 34.318756, 36.483158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.054806, 34.202473, 36.531231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121458, 0.013727, 0.992502,
		-0.290175, -0.956714, -0.022278,
		0.949235, -0.290705, 0.120184,
		33.339577, 34.115261, 36.567287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.717430, 33.698536, 36.850971>,  <32.675114, 34.318756, 36.483158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.717430, 33.698536, 36.850971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.069832, 33.882603, 36.894943>,  <33.281273, 33.993042, 36.921326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.069832, 33.882603, 36.894943>,  <32.717430, 33.698536, 36.850971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.069832, 33.882603, 36.894943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058441, -0.124734, 0.990468,
		0.469493, -0.879027, -0.082998,
		0.881000, 0.460167, 0.109933,
		33.334133, 34.020653, 36.927921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.958046, 33.328129, 37.415657>,  <32.717430, 33.698536, 36.850971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.958046, 33.328129, 37.415657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.178978, 33.659683, 37.380138>,  <33.311539, 33.858616, 37.358826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.178978, 33.659683, 37.380138>,  <32.958046, 33.328129, 37.415657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.178978, 33.659683, 37.380138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114064, 0.030376, 0.993009,
		0.825784, -0.558599, -0.077768,
		0.552331, 0.828881, -0.088801,
		33.344677, 33.908348, 37.353497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.464165, 33.170956, 37.915852>,  <32.958046, 33.328129, 37.415657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.464165, 33.170956, 37.915852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.502884, 33.558388, 37.824223>,  <33.526115, 33.790848, 37.769245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.502884, 33.558388, 37.824223>,  <33.464165, 33.170956, 37.915852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.502884, 33.558388, 37.824223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381506, 0.176468, 0.907365,
		0.919284, -0.175223, -0.352439,
		0.096797, 0.968584, -0.229073,
		33.531921, 33.848965, 37.755501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.227165, 33.427105, 38.052662>,  <33.464165, 33.170956, 37.915852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.227165, 33.427105, 38.052662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.963512, 33.725662, 38.089394>,  <33.805321, 33.904797, 38.111435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.963512, 33.725662, 38.089394>,  <34.227165, 33.427105, 38.052662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.963512, 33.725662, 38.089394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407692, 0.252047, 0.877644,
		0.631924, 0.615926, -0.470433,
		-0.659135, 0.746396, 0.091833,
		33.765770, 33.949581, 38.116943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.643913, 33.909470, 38.461201>,  <34.227165, 33.427105, 38.052662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.643913, 33.909470, 38.461201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.263580, 34.033184, 38.454811>,  <34.035381, 34.107410, 38.450977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.263580, 34.033184, 38.454811>,  <34.643913, 33.909470, 38.461201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.263580, 34.033184, 38.454811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067587, 0.257578, 0.963891,
		0.302230, 0.915422, -0.265818,
		-0.950836, 0.309283, -0.015978,
		33.978329, 34.125969, 38.450016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.673302, 34.425587, 38.882080>,  <34.643913, 33.909470, 38.461201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.673302, 34.425587, 38.882080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.296764, 34.291035, 38.892799>,  <34.070843, 34.210304, 38.899231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.296764, 34.291035, 38.892799>,  <34.673302, 34.425587, 38.882080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.296764, 34.291035, 38.892799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013863, 0.040810, 0.999071,
		-0.337163, 0.940841, -0.033753,
		-0.941344, -0.336382, 0.026803,
		34.014362, 34.190121, 38.900841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.473354, 34.599312, 39.620441>,  <34.673302, 34.425587, 38.882080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.473354, 34.599312, 39.620441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.170670, 34.365082, 39.504169>,  <33.989059, 34.224545, 39.434406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.170670, 34.365082, 39.504169>,  <34.473354, 34.599312, 39.620441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.170670, 34.365082, 39.504169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239939, -0.164839, 0.956691,
		-0.608130, 0.793680, -0.015768,
		-0.756708, -0.585576, -0.290679,
		33.943657, 34.189407, 39.416965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.912479, 34.799065, 39.950726>,  <34.473354, 34.599312, 39.620441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.912479, 34.799065, 39.950726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.824741, 34.424168, 39.842312>,  <33.772099, 34.199230, 39.777264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.824741, 34.424168, 39.842312>,  <33.912479, 34.799065, 39.950726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.824741, 34.424168, 39.842312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013938, -0.274761, 0.961411,
		-0.975548, 0.214657, 0.047203,
		-0.219343, -0.937245, -0.271035,
		33.758938, 34.142994, 39.761002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.289356, 34.560596, 40.307117>,  <33.912479, 34.799065, 39.950726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.289356, 34.560596, 40.307117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.474514, 34.222431, 40.200527>,  <33.585609, 34.019531, 40.136574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.474514, 34.222431, 40.200527>,  <33.289356, 34.560596, 40.307117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.474514, 34.222431, 40.200527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232217, -0.405773, 0.883982,
		-0.855458, -0.347307, -0.384148,
		0.462890, -0.845415, -0.266471,
		33.613380, 33.968807, 40.120586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.928566, 34.117592, 40.688354>,  <33.289356, 34.560596, 40.307117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.928566, 34.117592, 40.688354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.272175, 33.940395, 40.585724>,  <33.478340, 33.834076, 40.524143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.272175, 33.940395, 40.585724>,  <32.928566, 34.117592, 40.688354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.272175, 33.940395, 40.585724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011461, -0.484430, 0.874755,
		-0.511807, -0.754376, -0.411060,
		0.859024, -0.442994, -0.256581,
		33.529884, 33.807499, 40.508751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.823689, 33.366528, 40.823967>,  <32.928566, 34.117592, 40.688354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.823689, 33.366528, 40.823967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.212692, 33.458210, 40.807518>,  <33.446095, 33.513218, 40.797649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.212692, 33.458210, 40.807518>,  <32.823689, 33.366528, 40.823967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.212692, 33.458210, 40.807518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145320, -0.459369, 0.876278,
		0.181958, -0.858164, -0.480048,
		0.972509, 0.229206, -0.041123,
		33.504444, 33.526970, 40.795181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.124447, 32.696804, 40.901215>,  <32.823689, 33.366528, 40.823967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.124447, 32.696804, 40.901215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.421021, 32.955288, 40.973545>,  <33.598965, 33.110378, 41.016945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.421021, 32.955288, 40.973545>,  <33.124447, 32.696804, 40.901215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.421021, 32.955288, 40.973545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161424, -0.433327, 0.886662,
		0.651325, -0.628208, -0.425595,
		0.741430, 0.646206, 0.180828,
		33.643448, 33.149151, 41.027794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.735924, 32.339233, 41.133602>,  <33.124447, 32.696804, 40.901215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.735924, 32.339233, 41.133602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.785927, 32.715935, 41.258480>,  <33.815929, 32.941956, 41.333408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.785927, 32.715935, 41.258480>,  <33.735924, 32.339233, 41.133602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.785927, 32.715935, 41.258480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109206, -0.325812, 0.939106,
		0.986127, -0.083305, -0.143576,
		0.125010, 0.941757, 0.312194,
		33.823429, 32.998463, 41.352139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.405056, 32.390862, 41.632469>,  <33.735924, 32.339233, 41.133602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.405056, 32.390862, 41.632469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.134216, 32.680084, 41.687210>,  <33.971714, 32.853619, 41.720055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.134216, 32.680084, 41.687210>,  <34.405056, 32.390862, 41.632469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.134216, 32.680084, 41.687210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090506, -0.266373, 0.959611,
		0.730304, 0.637367, 0.245802,
		-0.677100, 0.723055, 0.136848,
		33.931087, 32.896999, 41.728264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.510956, 32.589405, 42.371639>,  <34.405056, 32.390862, 41.632469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.510956, 32.589405, 42.371639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.175663, 32.795082, 42.299007>,  <33.974487, 32.918488, 42.255428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.175663, 32.795082, 42.299007>,  <34.510956, 32.589405, 42.371639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.175663, 32.795082, 42.299007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195705, 0.027134, 0.980287,
		0.508985, 0.857245, 0.077886,
		-0.838233, 0.514194, -0.181578,
		33.924194, 32.949341, 42.244534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.394192, 33.170979, 42.844460>,  <34.510956, 32.589405, 42.371639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.394192, 33.170979, 42.844460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.035286, 33.066521, 42.702065>,  <33.819942, 33.003845, 42.616627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.035286, 33.066521, 42.702065>,  <34.394192, 33.170979, 42.844460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.035286, 33.066521, 42.702065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384081, 0.064077, 0.921073,
		-0.217721, 0.963171, -0.157794,
		-0.897262, -0.261142, -0.355985,
		33.766106, 32.988178, 42.595268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.909092, 33.441418, 43.350422>,  <34.394192, 33.170979, 42.844460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.909092, 33.441418, 43.350422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.677700, 33.201397, 43.129402>,  <33.538864, 33.057384, 42.996792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.677700, 33.201397, 43.129402>,  <33.909092, 33.441418, 43.350422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.677700, 33.201397, 43.129402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569447, -0.187930, 0.800257,
		-0.584033, 0.777576, -0.232982,
		-0.578476, -0.600048, -0.552546,
		33.504158, 33.021381, 42.963638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.218075, 33.632214, 43.600525>,  <33.909092, 33.441418, 43.350422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.218075, 33.632214, 43.600525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.197205, 33.270233, 43.431602>,  <33.184685, 33.053043, 43.330250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.197205, 33.270233, 43.431602>,  <33.218075, 33.632214, 43.600525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.197205, 33.270233, 43.431602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550740, -0.326684, 0.768090,
		-0.833045, 0.272653, -0.481349,
		-0.052172, -0.904952, -0.422304,
		33.181553, 32.998749, 43.304913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.517708, 33.421288, 43.526833>,  <33.218075, 33.632214, 43.600525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.517708, 33.421288, 43.526833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.717232, 33.074944, 43.511414>,  <32.836945, 32.867138, 43.502163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.717232, 33.074944, 43.511414>,  <32.517708, 33.421288, 43.526833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.717232, 33.074944, 43.511414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411455, -0.275706, 0.868729,
		-0.762823, -0.417467, -0.493784,
		0.498805, -0.865856, -0.038546,
		32.866875, 32.815186, 43.499851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.052662, 33.050930, 43.864162>,  <32.517708, 33.421288, 43.526833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.052662, 33.050930, 43.864162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.398628, 32.850502, 43.875839>,  <32.606209, 32.730247, 43.882847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.398628, 32.850502, 43.875839>,  <32.052662, 33.050930, 43.864162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.398628, 32.850502, 43.875839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186175, -0.266262, 0.945750,
		-0.466111, -0.823430, -0.323580,
		0.864916, -0.501067, 0.029195,
		32.658104, 32.700184, 43.884598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.877655, 32.313702, 44.052311>,  <32.052662, 33.050930, 43.864162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.877655, 32.313702, 44.052311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.249058, 32.414001, 44.161858>,  <32.471901, 32.474182, 44.227585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.249058, 32.414001, 44.161858>,  <31.877655, 32.313702, 44.052311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.249058, 32.414001, 44.161858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220738, -0.220325, 0.950122,
		0.298580, -0.942646, -0.149224,
		0.928507, 0.250748, 0.273862,
		32.527611, 32.489227, 44.244015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.004631, 31.800604, 44.472099>,  <31.877655, 32.313702, 44.052311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.004631, 31.800604, 44.472099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.260418, 32.100483, 44.540253>,  <32.413891, 32.280411, 44.581146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.260418, 32.100483, 44.540253>,  <32.004631, 31.800604, 44.472099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.260418, 32.100483, 44.540253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040908, -0.188131, 0.981292,
		0.767727, -0.634477, -0.089636,
		0.639470, 0.749697, 0.170388,
		32.452259, 32.325394, 44.591370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.393433, 31.487478, 45.009590>,  <32.004631, 31.800604, 44.472099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.393433, 31.487478, 45.009590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.493801, 31.874605, 45.017235>,  <32.554024, 32.106880, 45.021820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.493801, 31.874605, 45.017235>,  <32.393433, 31.487478, 45.009590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.493801, 31.874605, 45.017235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168954, -0.063227, 0.983594,
		0.953149, -0.243574, -0.179382,
		0.250920, 0.967819, 0.019112,
		32.569077, 32.164951, 45.022968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.105625, 31.504251, 45.268089>,  <32.393433, 31.487478, 45.009590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.105625, 31.504251, 45.268089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.926613, 31.851507, 45.353924>,  <32.819206, 32.059860, 45.405426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.926613, 31.851507, 45.353924>,  <33.105625, 31.504251, 45.268089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.926613, 31.851507, 45.353924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108841, -0.185301, 0.976636,
		0.887618, 0.460435, -0.011560,
		-0.447535, 0.868138, 0.214590,
		32.792351, 32.111950, 45.418301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.522369, 31.793928, 45.804092>,  <33.105625, 31.504251, 45.268089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.522369, 31.793928, 45.804092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.191566, 32.017273, 45.830284>,  <32.993084, 32.151279, 45.846001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.191566, 32.017273, 45.830284>,  <33.522369, 31.793928, 45.804092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.191566, 32.017273, 45.830284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071194, -0.011514, 0.997396,
		0.557662, 0.829518, -0.030230,
		-0.827009, 0.558362, 0.065478,
		32.943462, 32.184780, 45.849926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.790520, 32.303429, 46.264954>,  <33.522369, 31.793928, 45.804092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.790520, 32.303429, 46.264954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.391037, 32.298820, 46.284763>,  <33.151348, 32.296055, 46.296650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.391037, 32.298820, 46.284763>,  <33.790520, 32.303429, 46.264954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.391037, 32.298820, 46.284763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050026, -0.047935, 0.997597,
		-0.009116, 0.998784, 0.048449,
		-0.998706, -0.011518, 0.049528,
		33.091427, 32.295364, 46.299622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.529839, 32.909000, 46.669270>,  <33.790520, 32.303429, 46.264954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.529839, 32.909000, 46.669270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.249474, 32.627232, 46.714027>,  <33.081257, 32.458172, 46.740883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.249474, 32.627232, 46.714027>,  <33.529839, 32.909000, 46.669270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.249474, 32.627232, 46.714027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000237, 0.157105, 0.987582,
		-0.713251, 0.692179, -0.110283,
		-0.700909, -0.704419, 0.111891,
		33.039200, 32.415905, 46.747593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.152786, 33.179749, 47.275848>,  <33.529839, 32.909000, 46.669270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.152786, 33.179749, 47.275848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.026131, 32.813759, 47.175797>,  <32.950138, 32.594166, 47.115765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.026131, 32.813759, 47.175797>,  <33.152786, 33.179749, 47.275848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.026131, 32.813759, 47.175797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203730, -0.191941, 0.960028,
		-0.926409, 0.354942, -0.125631,
		-0.316641, -0.914973, -0.250128,
		32.931137, 32.539268, 47.100758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.501049, 33.160507, 47.602306>,  <33.152786, 33.179749, 47.275848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.501049, 33.160507, 47.602306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.637272, 32.787437, 47.554749>,  <32.719006, 32.563595, 47.526215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.637272, 32.787437, 47.554749>,  <32.501049, 33.160507, 47.602306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.637272, 32.787437, 47.554749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206434, -0.197541, 0.958312,
		-0.917282, -0.301815, -0.259810,
		0.340556, -0.932676, -0.118896,
		32.739437, 32.507633, 47.519081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.953825, 32.785103, 47.946243>,  <32.501049, 33.160507, 47.602306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.953825, 32.785103, 47.946243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.286209, 32.565662, 47.909279>,  <32.485638, 32.433998, 47.887100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.286209, 32.565662, 47.909279>,  <31.953825, 32.785103, 47.946243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.286209, 32.565662, 47.909279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115516, -0.332630, 0.935956,
		-0.544208, -0.767066, -0.339775,
		0.830959, -0.548604, -0.092411,
		32.535496, 32.401081, 47.881557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.741215, 32.128033, 48.097340>,  <31.953825, 32.785103, 47.946243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.741215, 32.128033, 48.097340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.130249, 32.159668, 48.184811>,  <32.363670, 32.178650, 48.237293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.130249, 32.159668, 48.184811>,  <31.741215, 32.128033, 48.097340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.130249, 32.159668, 48.184811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173328, -0.380385, 0.908441,
		0.155028, -0.921441, -0.356249,
		0.972586, 0.079086, 0.218682,
		32.422024, 32.183395, 48.250416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.927237, 31.519943, 48.475098>,  <31.741215, 32.128033, 48.097340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.927237, 31.519943, 48.475098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.233128, 31.764734, 48.555771>,  <32.416660, 31.911610, 48.604176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.233128, 31.764734, 48.555771>,  <31.927237, 31.519943, 48.475098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.233128, 31.764734, 48.555771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087570, -0.408803, 0.908412,
		0.638376, -0.677025, -0.366213,
		0.764727, 0.611978, 0.201683,
		32.462547, 31.948328, 48.616276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.456081, 31.107088, 48.857632>,  <31.927237, 31.519943, 48.475098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.456081, 31.107088, 48.857632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.559807, 31.483950, 48.942581>,  <32.622040, 31.710068, 48.993549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.559807, 31.483950, 48.942581>,  <32.456081, 31.107088, 48.857632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.559807, 31.483950, 48.942581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293764, -0.286418, 0.911958,
		0.920033, -0.174093, -0.351042,
		0.259311, 0.942155, 0.212371,
		32.637600, 31.766596, 49.006294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.104904, 30.981939, 49.096619>,  <32.456081, 31.107088, 48.857632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.104904, 30.981939, 49.096619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.024399, 31.359703, 49.200603>,  <32.976097, 31.586361, 49.262993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.024399, 31.359703, 49.200603>,  <33.104904, 30.981939, 49.096619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.024399, 31.359703, 49.200603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363684, -0.174377, 0.915055,
		0.909520, 0.278712, -0.308371,
		-0.201264, 0.944411, 0.259963,
		32.964020, 31.643026, 49.278591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.708473, 31.338938, 49.382118>,  <33.104904, 30.981939, 49.096619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.708473, 31.338938, 49.382118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.384869, 31.533138, 49.514656>,  <33.190704, 31.649658, 49.594181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.384869, 31.533138, 49.514656>,  <33.708473, 31.338938, 49.382118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.384869, 31.533138, 49.514656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313734, -0.120039, 0.941893,
		0.497063, 0.865956, -0.055205,
		-0.809011, 0.485500, 0.331347,
		33.142166, 31.678789, 49.614059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.978073, 31.780716, 49.899990>,  <33.708473, 31.338938, 49.382118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.978073, 31.780716, 49.899990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.585136, 31.754890, 49.970230>,  <33.349373, 31.739395, 50.012375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.585136, 31.754890, 49.970230>,  <33.978073, 31.780716, 49.899990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.585136, 31.754890, 49.970230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182015, -0.112654, 0.976821,
		-0.043285, 0.991534, 0.122416,
		-0.982343, -0.064564, 0.175597,
		33.290432, 31.735521, 50.022911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.765827, 32.400894, 50.352982>,  <33.978073, 31.780716, 49.899990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.765827, 32.400894, 50.352982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.529980, 32.082142, 50.405628>,  <33.388470, 31.890890, 50.437214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.529980, 32.082142, 50.405628>,  <33.765827, 32.400894, 50.352982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.529980, 32.082142, 50.405628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370273, -0.121873, 0.920894,
		-0.717805, 0.591712, 0.366923,
		-0.589621, -0.796884, 0.131614,
		33.353092, 31.843077, 50.445114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.916893, 32.511391, 51.073124>,  <33.765827, 32.400894, 50.352982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.916893, 32.511391, 51.073124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.253071, 32.694431, 51.189232>,  <34.454777, 32.804256, 51.258896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.253071, 32.694431, 51.189232>,  <33.916893, 32.511391, 51.073124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.253071, 32.694431, 51.189232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244988, 0.156936, -0.956740,
		-0.483363, 0.875197, 0.019788,
		0.840441, 0.457605, 0.290270,
		34.505203, 32.831711, 51.276314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.973709, 33.157677, 50.678024>,  <33.916893, 32.511391, 51.073124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.973709, 33.157677, 50.678024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.342968, 33.088436, 50.815334>,  <34.564522, 33.046894, 50.897720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.342968, 33.088436, 50.815334>,  <33.973709, 33.157677, 50.678024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.342968, 33.088436, 50.815334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379532, 0.267915, -0.885538,
		0.061316, 0.947765, 0.313020,
		0.923145, -0.173099, 0.343280,
		34.619911, 33.036507, 50.918320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.353725, 33.760067, 50.415703>,  <33.973709, 33.157677, 50.678024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.353725, 33.760067, 50.415703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.624088, 33.479408, 50.505898>,  <34.786304, 33.311012, 50.560013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.624088, 33.479408, 50.505898>,  <34.353725, 33.760067, 50.415703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.624088, 33.479408, 50.505898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477165, 0.183457, -0.859452,
		0.561665, 0.688502, 0.458801,
		0.675904, -0.701647, 0.225488,
		34.826859, 33.268913, 50.573544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.052212, 34.085518, 50.206795>,  <34.353725, 33.760067, 50.415703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.052212, 34.085518, 50.206795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.135406, 33.694931, 50.229637>,  <35.185326, 33.460579, 50.243343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.135406, 33.694931, 50.229637>,  <35.052212, 34.085518, 50.206795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.135406, 33.694931, 50.229637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427668, 0.038277, -0.903125,
		0.879682, 0.212263, 0.425563,
		0.207989, -0.976463, 0.057107,
		35.197803, 33.401993, 50.246769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.797894, 34.003895, 50.008785>,  <35.052212, 34.085518, 50.206795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.797894, 34.003895, 50.008785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.584393, 33.669033, 49.960991>,  <35.456291, 33.468117, 49.932312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.584393, 33.669033, 49.960991>,  <35.797894, 34.003895, 50.008785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.584393, 33.669033, 49.960991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195335, 0.015423, -0.980615,
		0.822772, -0.546745, 0.155294,
		-0.533751, -0.837157, -0.119488,
		35.424267, 33.417885, 49.925144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.156086, 33.608406, 49.441753>,  <35.797894, 34.003895, 50.008785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.156086, 33.608406, 49.441753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.790329, 33.451080, 49.480083>,  <35.570873, 33.356686, 49.503082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.790329, 33.451080, 49.480083>,  <36.156086, 33.608406, 49.441753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.790329, 33.451080, 49.480083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050254, -0.124597, -0.990934,
		0.401688, -0.910922, 0.094165,
		-0.914396, -0.393314, 0.095826,
		35.516010, 33.333088, 49.508831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.111973, 33.091797, 48.824051>,  <36.156086, 33.608406, 49.441753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.111973, 33.091797, 48.824051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.732555, 33.163399, 48.928535>,  <35.504906, 33.206360, 48.991226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.732555, 33.163399, 48.928535>,  <36.111973, 33.091797, 48.824051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.732555, 33.163399, 48.928535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220933, 0.216848, -0.950876,
		-0.226852, -0.959654, -0.166141,
		-0.948539, 0.179003, 0.261211,
		35.447994, 33.217098, 49.006897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.826637, 32.624123, 48.554573>,  <36.111973, 33.091797, 48.824051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.826637, 32.624123, 48.554573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.574833, 32.927357, 48.622711>,  <35.423748, 33.109299, 48.663593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.574833, 32.927357, 48.622711>,  <35.826637, 32.624123, 48.554573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.574833, 32.927357, 48.622711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031974, 0.193777, -0.980524,
		-0.776332, -0.622699, -0.097746,
		-0.629512, 0.758087, 0.170346,
		35.385979, 33.154781, 48.673817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.297661, 32.574238, 48.011871>,  <35.826637, 32.624123, 48.554573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.297661, 32.574238, 48.011871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.249695, 32.951527, 48.135773>,  <35.220917, 33.177902, 48.210114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.249695, 32.951527, 48.135773>,  <35.297661, 32.574238, 48.011871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.249695, 32.951527, 48.135773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130415, 0.294333, -0.946763,
		-0.984181, -0.153925, 0.087717,
		-0.119913, 0.943226, 0.309752,
		35.213722, 33.234493, 48.228699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.615311, 32.761635, 47.733597>,  <35.297661, 32.574238, 48.011871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.615311, 32.761635, 47.733597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.825871, 33.086163, 47.835320>,  <34.952206, 33.280880, 47.896355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.825871, 33.086163, 47.835320>,  <34.615311, 32.761635, 47.733597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.825871, 33.086163, 47.835320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229249, 0.423457, -0.876430,
		-0.818749, 0.403051, 0.408900,
		0.526397, 0.811316, 0.254306,
		34.983791, 33.329559, 47.911610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.101887, 33.275452, 47.691505>,  <34.615311, 32.761635, 47.733597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.101887, 33.275452, 47.691505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.482616, 33.385368, 47.637074>,  <34.711056, 33.451321, 47.604416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.482616, 33.385368, 47.637074>,  <34.101887, 33.275452, 47.691505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.482616, 33.385368, 47.637074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172975, 0.114730, -0.978221,
		-0.253199, 0.954633, 0.156736,
		0.951825, 0.274796, -0.136078,
		34.768166, 33.467808, 47.596249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.123878, 33.865551, 47.317478>,  <34.101887, 33.275452, 47.691505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.123878, 33.865551, 47.317478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.512928, 33.775356, 47.295013>,  <34.746357, 33.721237, 47.281536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.512928, 33.775356, 47.295013>,  <34.123878, 33.865551, 47.317478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.512928, 33.775356, 47.295013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010675, 0.284772, -0.958536,
		0.232133, 0.931697, 0.279384,
		0.972625, -0.225491, -0.056159,
		34.804714, 33.707710, 47.278164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.462250, 34.441681, 47.085014>,  <34.123878, 33.865551, 47.317478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.462250, 34.441681, 47.085014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.703930, 34.137329, 46.990353>,  <34.848938, 33.954720, 46.933556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.703930, 34.137329, 46.990353>,  <34.462250, 34.441681, 47.085014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.703930, 34.137329, 46.990353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121315, 0.381369, -0.916428,
		0.787543, 0.524997, 0.322729,
		0.604201, -0.760878, -0.236655,
		34.885189, 33.909065, 46.919357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.974228, 34.781273, 46.513996>,  <34.462250, 34.441681, 47.085014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.974228, 34.781273, 46.513996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.076252, 34.396187, 46.477966>,  <35.137466, 34.165134, 46.456348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.076252, 34.396187, 46.477966>,  <34.974228, 34.781273, 46.513996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.076252, 34.396187, 46.477966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326564, 0.173451, -0.929124,
		0.910109, 0.207571, 0.358631,
		0.255064, -0.962720, -0.090074,
		35.152771, 34.107372, 46.450943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.748398, 34.727913, 46.347130>,  <34.974228, 34.781273, 46.513996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.748398, 34.727913, 46.347130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.583195, 34.378056, 46.245598>,  <35.484074, 34.168140, 46.184677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.583195, 34.378056, 46.245598>,  <35.748398, 34.727913, 46.347130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.583195, 34.378056, 46.245598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293727, 0.135896, -0.946180,
		0.862061, -0.465338, 0.200779,
		-0.413009, -0.874639, -0.253833,
		35.459293, 34.115665, 46.169449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.276031, 34.341587, 45.963467>,  <35.748398, 34.727913, 46.347130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.276031, 34.341587, 45.963467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.918446, 34.190842, 45.866470>,  <35.703896, 34.100395, 45.808273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.918446, 34.190842, 45.866470>,  <36.276031, 34.341587, 45.963467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.918446, 34.190842, 45.866470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239013, 0.056748, -0.969357,
		0.379079, -0.924528, 0.039345,
		-0.893964, -0.376867, -0.242486,
		35.650257, 34.077782, 45.793724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.547474, 33.903584, 45.507141>,  <36.276031, 34.341587, 45.963467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.547474, 33.903584, 45.507141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.155827, 33.930763, 45.430500>,  <35.920837, 33.947071, 45.384514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.155827, 33.930763, 45.430500>,  <36.547474, 33.903584, 45.507141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.155827, 33.930763, 45.430500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201624, 0.203973, -0.957989,
		-0.026018, -0.976615, -0.213415,
		-0.979117, 0.067955, -0.191602,
		35.862091, 33.951149, 45.373020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.310715, 33.474907, 44.985516>,  <36.547474, 33.903584, 45.507141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.310715, 33.474907, 44.985516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.016376, 33.745609, 44.976292>,  <35.839775, 33.908031, 44.970757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.016376, 33.745609, 44.976292>,  <36.310715, 33.474907, 44.985516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.016376, 33.745609, 44.976292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058615, 0.029737, -0.997838,
		-0.674612, -0.735602, -0.061550,
		-0.735842, 0.676760, -0.023056,
		35.795624, 33.948639, 44.969376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.964436, 33.326736, 44.444263>,  <36.310715, 33.474907, 44.985516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.964436, 33.326736, 44.444263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.807175, 33.693386, 44.473183>,  <35.712818, 33.913376, 44.490532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.807175, 33.693386, 44.473183>,  <35.964436, 33.326736, 44.444263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.807175, 33.693386, 44.473183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170838, 0.004434, -0.985289,
		-0.903462, -0.399722, 0.154851,
		-0.393155, 0.916626, 0.072294,
		35.689228, 33.968372, 44.494869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.507401, 33.305870, 43.943539>,  <35.964436, 33.326736, 44.444263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.507401, 33.305870, 43.943539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.536930, 33.694710, 44.032597>,  <35.554649, 33.928013, 44.086029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.536930, 33.694710, 44.032597>,  <35.507401, 33.305870, 43.943539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.536930, 33.694710, 44.032597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052576, 0.226735, -0.972536,
		-0.995884, 0.060090, 0.067848,
		0.073824, 0.972101, 0.222643,
		35.559078, 33.986340, 44.099388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.892338, 33.614613, 43.730923>,  <35.507401, 33.305870, 43.943539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.892338, 33.614613, 43.730923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.161613, 33.909611, 43.709324>,  <35.323181, 34.086609, 43.696365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.161613, 33.909611, 43.709324>,  <34.892338, 33.614613, 43.730923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.161613, 33.909611, 43.709324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153231, 0.067694, -0.985869,
		-0.723418, 0.671952, 0.158578,
		0.673192, 0.737494, -0.053993,
		35.363571, 34.130859, 43.693127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.609848, 34.187874, 43.280952>,  <34.892338, 33.614613, 43.730923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.609848, 34.187874, 43.280952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.005611, 34.244434, 43.294029>,  <35.243069, 34.278370, 43.301876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.005611, 34.244434, 43.294029>,  <34.609848, 34.187874, 43.280952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.005611, 34.244434, 43.294029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001653, 0.236210, -0.971701,
		-0.145122, 0.961358, 0.233943,
		0.989412, 0.141402, 0.032691,
		35.302437, 34.286854, 43.303837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.700047, 34.806873, 43.090950>,  <34.609848, 34.187874, 43.280952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.700047, 34.806873, 43.090950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.046127, 34.619530, 43.019325>,  <35.253777, 34.507126, 42.976349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.046127, 34.619530, 43.019325>,  <34.700047, 34.806873, 43.090950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.046127, 34.619530, 43.019325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050918, 0.273206, -0.960607,
		0.498828, 0.840239, 0.212531,
		0.865204, -0.468356, -0.179066,
		35.305687, 34.479023, 42.965607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.098991, 35.216396, 42.516003>,  <34.700047, 34.806873, 43.090950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.098991, 35.216396, 42.516003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.314156, 34.879559, 42.531658>,  <35.443253, 34.677456, 42.541054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.314156, 34.879559, 42.531658>,  <35.098991, 35.216396, 42.516003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.314156, 34.879559, 42.531658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176308, 0.066975, -0.982054,
		0.824359, 0.535157, 0.184494,
		0.537910, -0.842093, 0.039142,
		35.475529, 34.626930, 42.543400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.724934, 35.347546, 42.118649>,  <35.098991, 35.216396, 42.516003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.724934, 35.347546, 42.118649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.719814, 34.947632, 42.125118>,  <35.716743, 34.707684, 42.129002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.719814, 34.947632, 42.125118>,  <35.724934, 35.347546, 42.118649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.719814, 34.947632, 42.125118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374072, -0.019793, -0.927189,
		0.927312, -0.005818, 0.374245,
		-0.012802, -0.999787, 0.016178,
		35.715973, 34.647697, 42.129971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.266125, 35.163513, 41.688995>,  <35.724934, 35.347546, 42.118649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.266125, 35.163513, 41.688995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.038376, 34.834900, 41.701038>,  <35.901726, 34.637733, 41.708263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.038376, 34.834900, 41.701038>,  <36.266125, 35.163513, 41.688995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.038376, 34.834900, 41.701038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286990, -0.232955, -0.929177,
		0.770362, -0.520402, 0.368408,
		-0.569368, -0.821531, 0.030109,
		35.867565, 34.588440, 41.710072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.683647, 34.521782, 41.465622>,  <36.266125, 35.163513, 41.688995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.683647, 34.521782, 41.465622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.287704, 34.525055, 41.408886>,  <36.050140, 34.527020, 41.374844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.287704, 34.525055, 41.408886>,  <36.683647, 34.521782, 41.465622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.287704, 34.525055, 41.408886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134794, -0.261363, -0.955782,
		-0.044888, -0.965206, 0.257609,
		-0.989856, 0.008178, -0.141836,
		35.990749, 34.527508, 41.366337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.547684, 33.800564, 41.261566>,  <36.683647, 34.521782, 41.465622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.547684, 33.800564, 41.261566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.295479, 34.055756, 41.084736>,  <36.144157, 34.208870, 40.978638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.295479, 34.055756, 41.084736>,  <36.547684, 33.800564, 41.261566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.295479, 34.055756, 41.084736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303446, -0.321613, -0.896931,
		-0.714405, -0.699672, 0.009187,
		-0.630513, 0.637984, -0.442075,
		36.106323, 34.247150, 40.952114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.187042, 33.425045, 40.733547>,  <36.547684, 33.800564, 41.261566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.187042, 33.425045, 40.733547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.120510, 33.803593, 40.622749>,  <36.080593, 34.030720, 40.556271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.120510, 33.803593, 40.622749>,  <36.187042, 33.425045, 40.733547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.120510, 33.803593, 40.622749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355185, -0.204550, -0.912142,
		-0.919880, -0.250098, -0.302113,
		-0.166328, 0.946367, -0.276992,
		36.070610, 34.087502, 40.539650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.984276, 33.338951, 40.052937>,  <36.187042, 33.425045, 40.733547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.984276, 33.338951, 40.052937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.060753, 33.731449, 40.062790>,  <36.106640, 33.966946, 40.068703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.060753, 33.731449, 40.062790>,  <35.984276, 33.338951, 40.052937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.060753, 33.731449, 40.062790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463867, -0.068213, -0.883275,
		-0.865027, 0.180303, -0.468208,
		0.191195, 0.981243, 0.024631,
		36.118111, 34.025822, 40.070179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.825455, 33.608147, 39.348049>,  <35.984276, 33.338951, 40.052937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.825455, 33.608147, 39.348049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.069580, 33.865810, 39.532471>,  <36.216057, 34.020409, 39.643124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.069580, 33.865810, 39.532471>,  <35.825455, 33.608147, 39.348049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.069580, 33.865810, 39.532471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593457, 0.013722, -0.804749,
		-0.524713, 0.764768, -0.373906,
		0.610315, 0.644159, 0.461057,
		36.252674, 34.059059, 39.670788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.856636, 34.195915, 38.947800>,  <35.825455, 33.608147, 39.348049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.856636, 34.195915, 38.947800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.195625, 34.181240, 39.159630>,  <36.399017, 34.172436, 39.286728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.195625, 34.181240, 39.159630>,  <35.856636, 34.195915, 38.947800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.195625, 34.181240, 39.159630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528113, 0.159284, -0.834102,
		-0.053747, 0.986551, 0.154366,
		0.847472, -0.036693, 0.529571,
		36.449867, 34.170231, 39.318501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.160988, 34.841366, 38.730038>,  <35.856636, 34.195915, 38.947800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.160988, 34.841366, 38.730038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.455051, 34.656776, 38.928665>,  <36.631489, 34.546024, 39.047840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.455051, 34.656776, 38.928665>,  <36.160988, 34.841366, 38.730038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.455051, 34.656776, 38.928665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619753, 0.160744, -0.768159,
		0.274665, 0.872470, 0.404173,
		0.735163, -0.461474, 0.496565,
		36.675602, 34.518333, 39.077633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.718204, 35.376915, 38.873318>,  <36.160988, 34.841366, 38.730038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.718204, 35.376915, 38.873318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.872948, 35.008125, 38.866375>,  <36.965794, 34.786850, 38.862209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.872948, 35.008125, 38.866375>,  <36.718204, 35.376915, 38.873318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.872948, 35.008125, 38.866375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.686506, 0.300520, -0.662115,
		0.615671, 0.244228, 0.749201,
		0.386857, -0.921976, -0.017357,
		36.989006, 34.731533, 38.861168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.429470, 35.484486, 38.954689>,  <36.718204, 35.376915, 38.873318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.429470, 35.484486, 38.954689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.390079, 35.128208, 38.777168>,  <37.366444, 34.914440, 38.670654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.390079, 35.128208, 38.777168>,  <37.429470, 35.484486, 38.954689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.390079, 35.128208, 38.777168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.725417, 0.241042, -0.644724,
		0.681229, -0.385436, 0.622388,
		-0.098478, -0.890695, -0.443806,
		37.360535, 34.861000, 38.644028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.147686, 35.223083, 38.911850>,  <37.429470, 35.484486, 38.954689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.147686, 35.223083, 38.911850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.958092, 34.989288, 38.648426>,  <37.844334, 34.849010, 38.490372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.958092, 34.989288, 38.648426>,  <38.147686, 35.223083, 38.911850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.958092, 34.989288, 38.648426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.779364, 0.069592, -0.622694,
		0.409791, -0.808410, 0.422546,
		-0.473986, -0.584492, -0.658564,
		37.815895, 34.813942, 38.450855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.753601, 34.943588, 38.564671>,  <38.147686, 35.223083, 38.911850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.753601, 34.943588, 38.564671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.447269, 34.876129, 38.316460>,  <38.263470, 34.835655, 38.167534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.447269, 34.876129, 38.316460>,  <38.753601, 34.943588, 38.564671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.447269, 34.876129, 38.316460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614427, 0.092740, -0.783504,
		0.189686, -0.981303, 0.032599,
		-0.765833, -0.168649, -0.620531,
		38.217518, 34.825535, 38.130299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.967731, 34.437321, 38.107437>,  <38.753601, 34.943588, 38.564671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.967731, 34.437321, 38.107437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.669277, 34.618523, 37.912266>,  <38.490204, 34.727242, 37.795162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.669277, 34.618523, 37.912266>,  <38.967731, 34.437321, 38.107437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.669277, 34.618523, 37.912266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617412, 0.196508, -0.761700,
		-0.249171, -0.869582, -0.426311,
		-0.746134, 0.453003, -0.487926,
		38.445438, 34.754425, 37.765888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.205162, 34.296349, 37.361595>,  <38.967731, 34.437321, 38.107437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.205162, 34.296349, 37.361595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.901306, 34.555176, 37.335522>,  <38.718994, 34.710472, 37.319878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.901306, 34.555176, 37.335522>,  <39.205162, 34.296349, 37.361595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.901306, 34.555176, 37.335522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468995, 0.475621, -0.744196,
		-0.450547, -0.595889, -0.664773,
		-0.759639, 0.647071, -0.065180,
		38.673416, 34.749298, 37.315968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.849697, 34.319592, 36.701008>,  <39.205162, 34.296349, 37.361595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.849697, 34.319592, 36.701008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.788998, 34.685215, 36.851460>,  <38.752579, 34.904591, 36.941730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.788998, 34.685215, 36.851460>,  <38.849697, 34.319592, 36.701008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.788998, 34.685215, 36.851460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505245, 0.398795, -0.765304,
		-0.849529, 0.073902, -0.522339,
		-0.151749, 0.914058, 0.376126,
		38.743473, 34.959431, 36.964298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.807735, 34.750225, 36.171173>,  <38.849697, 34.319592, 36.701008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.807735, 34.750225, 36.171173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.943947, 34.981895, 36.467442>,  <39.025673, 35.120895, 36.645203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.943947, 34.981895, 36.467442>,  <38.807735, 34.750225, 36.171173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.943947, 34.981895, 36.467442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511181, 0.547120, -0.662838,
		-0.789136, 0.604333, -0.109754,
		0.340526, 0.579174, 0.740675,
		39.046104, 35.155647, 36.689644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.577057, 35.570396, 36.111526>,  <38.807735, 34.750225, 36.171173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.577057, 35.570396, 36.111526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.927753, 35.503368, 36.291855>,  <39.138172, 35.463150, 36.400051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.927753, 35.503368, 36.291855>,  <38.577057, 35.570396, 36.111526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.927753, 35.503368, 36.291855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470795, 0.490685, -0.733199,
		-0.098350, 0.855073, 0.509095,
		0.876744, -0.167569, 0.450823,
		39.190777, 35.453098, 36.427101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.078537, 36.164532, 36.180443>,  <38.577057, 35.570396, 36.111526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.078537, 36.164532, 36.180443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.358528, 35.879227, 36.166035>,  <39.526524, 35.708046, 36.157391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.358528, 35.879227, 36.166035>,  <39.078537, 36.164532, 36.180443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.358528, 35.879227, 36.166035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541565, 0.563008, -0.624283,
		0.465557, 0.417474, 0.780367,
		0.699975, -0.713259, -0.036023,
		39.568520, 35.665249, 36.155228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.745571, 36.263367, 36.038616>,  <39.078537, 36.164532, 36.180443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.745571, 36.263367, 36.038616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.084412, 36.052052, 36.015507>,  <40.287716, 35.925262, 36.001640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.084412, 36.052052, 36.015507>,  <39.745571, 36.263367, 36.038616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.084412, 36.052052, 36.015507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518624, 0.845505, -0.127082,
		0.115984, 0.077688, 0.990208,
		0.847099, -0.528285, -0.057774,
		40.338543, 35.893566, 35.998173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.152527, 36.382645, 36.599297>,  <39.745571, 36.263367, 36.038616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.152527, 36.382645, 36.599297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.353889, 36.303356, 36.262894>,  <40.474705, 36.255783, 36.061050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.353889, 36.303356, 36.262894>,  <40.152527, 36.382645, 36.599297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.353889, 36.303356, 36.262894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568609, 0.808871, 0.149707,
		0.650592, -0.553568, 0.519897,
		0.503403, -0.198220, -0.841008,
		40.504910, 36.243889, 36.010590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.827641, 36.556137, 36.764702>,  <40.152527, 36.382645, 36.599297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.827641, 36.556137, 36.764702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.800953, 36.567135, 36.365746>,  <40.784939, 36.573734, 36.126369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.800953, 36.567135, 36.365746>,  <40.827641, 36.556137, 36.764702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.800953, 36.567135, 36.365746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446930, 0.894554, -0.005234,
		0.892078, -0.446114, -0.071975,
		-0.066721, 0.027498, -0.997393,
		40.780937, 36.575386, 36.066528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.458824, 36.366276, 36.350838>,  <40.827641, 36.556137, 36.764702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.458824, 36.366276, 36.350838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.634003, 36.504230, 36.018753>,  <41.739109, 36.587002, 35.819504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.634003, 36.504230, 36.018753>,  <41.458824, 36.366276, 36.350838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.634003, 36.504230, 36.018753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.898872, -0.183527, 0.397929,
		-0.015126, -0.920528, -0.390385,
		0.437950, 0.344887, -0.830212,
		41.765388, 36.607697, 35.769688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.786213, 35.832127, 35.943924>,  <41.458824, 36.366276, 36.350838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.786213, 35.832127, 35.943924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.063057, 35.600399, 35.771706>,  <42.229164, 35.461365, 35.668373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.063057, 35.600399, 35.771706>,  <41.786213, 35.832127, 35.943924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.063057, 35.600399, 35.771706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.596021, -0.122265, -0.793605,
		0.407108, 0.805881, -0.429906,
		0.692114, -0.579317, -0.430547,
		42.270691, 35.426605, 35.642540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.833687, 36.053867, 35.347012>,  <41.786213, 35.832127, 35.943924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.833687, 36.053867, 35.347012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.996906, 35.696339, 35.272617>,  <42.094837, 35.481823, 35.227982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.996906, 35.696339, 35.272617>,  <41.833687, 36.053867, 35.347012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.996906, 35.696339, 35.272617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534208, -0.068556, -0.842569,
		0.740353, 0.443159, -0.505458,
		0.408044, -0.893818, -0.185983,
		42.119320, 35.428192, 35.216824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.824757, 36.112186, 34.721222>,  <41.833687, 36.053867, 35.347012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.824757, 36.112186, 34.721222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.855091, 35.714447, 34.750957>,  <41.873291, 35.475803, 34.768799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.855091, 35.714447, 34.750957>,  <41.824757, 36.112186, 34.721222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.855091, 35.714447, 34.750957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583958, -0.104715, -0.805002,
		0.808234, 0.017636, -0.588597,
		0.075832, -0.994346, 0.074335,
		41.877842, 35.416142, 34.773258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.958412, 35.829315, 34.039001>,  <41.824757, 36.112186, 34.721222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.958412, 35.829315, 34.039001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.834431, 35.513985, 34.251595>,  <41.760040, 35.324787, 34.379150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.834431, 35.513985, 34.251595>,  <41.958412, 35.829315, 34.039001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.834431, 35.513985, 34.251595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.618150, -0.257639, -0.742639,
		0.722371, -0.558721, -0.407446,
		-0.309954, -0.788323, 0.531483,
		41.741444, 35.277489, 34.411041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.868202, 35.328171, 33.525288>,  <41.958412, 35.829315, 34.039001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.868202, 35.328171, 33.525288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.667103, 35.182564, 33.838909>,  <41.546444, 35.095200, 34.027081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.667103, 35.182564, 33.838909>,  <41.868202, 35.328171, 33.525288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.667103, 35.182564, 33.838909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.602495, -0.502851, -0.619790,
		0.619874, -0.783986, 0.033490,
		-0.502748, -0.364014, 0.784052,
		41.516277, 35.073360, 34.074123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.784973, 34.649094, 33.417156>,  <41.868202, 35.328171, 33.525288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.784973, 34.649094, 33.417156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.487831, 34.733234, 33.671371>,  <41.309544, 34.783718, 33.823902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.487831, 34.733234, 33.671371>,  <41.784973, 34.649094, 33.417156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.487831, 34.733234, 33.671371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.609265, -0.605838, -0.511621,
		0.277413, -0.767275, 0.578214,
		-0.742858, 0.210355, 0.635542,
		41.264973, 34.796341, 33.862034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.476452, 33.917427, 33.629417>,  <41.784973, 34.649094, 33.417156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.476452, 33.917427, 33.629417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.188622, 34.180683, 33.718025>,  <41.015923, 34.338634, 33.771191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.188622, 34.180683, 33.718025>,  <41.476452, 33.917427, 33.629417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.188622, 34.180683, 33.718025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.672071, -0.579752, -0.460662,
		-0.174752, -0.480356, 0.859488,
		-0.719571, 0.658138, 0.221521,
		40.972752, 34.378124, 33.784481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.933273, 33.472710, 33.909714>,  <41.476452, 33.917427, 33.629417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.933273, 33.472710, 33.909714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.764172, 33.808350, 33.772785>,  <40.662712, 34.009735, 33.690628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.764172, 33.808350, 33.772785>,  <40.933273, 33.472710, 33.909714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.764172, 33.808350, 33.772785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.756256, -0.534786, -0.376936,
		-0.499357, 0.099531, 0.860660,
		-0.422752, 0.839105, -0.342320,
		40.637344, 34.060081, 33.670090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.191650, 33.355030, 34.011532>,  <40.933273, 33.472710, 33.909714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.191650, 33.355030, 34.011532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.227623, 33.654213, 33.748482>,  <40.249207, 33.833725, 33.590652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.227623, 33.654213, 33.748482>,  <40.191650, 33.355030, 34.011532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.227623, 33.654213, 33.748482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.674190, -0.440290, -0.592969,
		-0.733062, 0.496688, 0.464673,
		0.089929, 0.747961, -0.657622,
		40.254601, 33.878601, 33.551197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.502529, 33.512154, 33.859894>,  <40.191650, 33.355030, 34.011532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.502529, 33.512154, 33.859894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.715111, 33.664742, 33.557358>,  <39.842659, 33.756294, 33.375835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.715111, 33.664742, 33.557358>,  <39.502529, 33.512154, 33.859894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.715111, 33.664742, 33.557358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.601687, -0.458494, -0.654030,
		-0.596265, 0.802663, -0.014144,
		0.531451, 0.381465, -0.756336,
		39.874546, 33.779182, 33.330456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.045753, 33.696106, 33.422764>,  <39.502529, 33.512154, 33.859894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.045753, 33.696106, 33.422764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.350246, 33.740398, 33.167183>,  <39.532944, 33.766975, 33.013836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.350246, 33.740398, 33.167183>,  <39.045753, 33.696106, 33.422764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.350246, 33.740398, 33.167183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.593377, -0.278512, -0.755205,
		-0.261583, 0.954028, -0.146305,
		0.761235, 0.110735, -0.638952,
		39.578617, 33.773621, 32.975498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.902321, 34.189125, 32.802498>,  <39.045753, 33.696106, 33.422764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.902321, 34.189125, 32.802498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.188732, 33.931530, 32.694733>,  <39.360580, 33.776974, 32.630074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.188732, 33.931530, 32.694733>,  <38.902321, 34.189125, 32.802498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.188732, 33.931530, 32.694733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564658, -0.307384, -0.765948,
		0.410447, 0.700567, -0.583728,
		0.716027, -0.643988, -0.269416,
		39.403542, 33.738335, 32.613907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.059486, 34.397038, 32.095901>,  <38.902321, 34.189125, 32.802498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.059486, 34.397038, 32.095901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.172852, 34.016338, 32.142990>,  <39.240871, 33.787918, 32.171246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.172852, 34.016338, 32.142990>,  <39.059486, 34.397038, 32.095901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.172852, 34.016338, 32.142990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490547, -0.249355, -0.834977,
		0.824041, 0.178892, -0.537545,
		0.283410, -0.951746, 0.117724,
		39.257874, 33.730816, 32.178307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.088768, 34.240768, 31.445131>,  <39.059486, 34.397038, 32.095901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.088768, 34.240768, 31.445131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.116417, 33.894192, 31.642920>,  <39.133007, 33.686245, 31.761593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.116417, 33.894192, 31.642920>,  <39.088768, 34.240768, 31.445131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.116417, 33.894192, 31.642920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402369, -0.477764, -0.780923,
		0.912864, -0.144981, -0.381654,
		0.069122, -0.866442, 0.494470,
		39.137154, 33.634258, 31.791260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.394310, 33.855007, 30.939510>,  <39.088768, 34.240768, 31.445131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.394310, 33.855007, 30.939510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.224506, 33.596188, 31.192848>,  <39.122623, 33.440895, 31.344851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.224506, 33.596188, 31.192848>,  <39.394310, 33.855007, 30.939510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.224506, 33.596188, 31.192848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299981, -0.559480, -0.772654,
		0.854285, -0.517990, 0.043403,
		-0.424510, -0.647046, 0.633342,
		39.097153, 33.402073, 31.382851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.644459, 33.127319, 30.838875>,  <39.394310, 33.855007, 30.939510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.644459, 33.127319, 30.838875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.279385, 33.128765, 31.002331>,  <39.060341, 33.129631, 31.100405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.279385, 33.128765, 31.002331>,  <39.644459, 33.127319, 30.838875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.279385, 33.128765, 31.002331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353831, -0.507286, -0.785789,
		0.204460, -0.861770, 0.464272,
		-0.912688, 0.003612, 0.408641,
		39.005577, 33.129848, 31.124924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.424210, 32.499371, 30.669577>,  <39.644459, 33.127319, 30.838875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.424210, 32.499371, 30.669577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.080589, 32.670605, 30.781845>,  <38.874416, 32.773346, 30.849207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.080589, 32.670605, 30.781845>,  <39.424210, 32.499371, 30.669577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.080589, 32.670605, 30.781845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502108, -0.597980, -0.624746,
		-0.099608, -0.677616, 0.728639,
		-0.859049, 0.428085, 0.280672,
		38.822876, 32.799030, 30.866047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.892929, 31.946707, 30.790560>,  <39.424210, 32.499371, 30.669577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.892929, 31.946707, 30.790560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.729588, 32.297050, 30.687704>,  <38.631584, 32.507256, 30.625990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.729588, 32.297050, 30.687704>,  <38.892929, 31.946707, 30.790560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.729588, 32.297050, 30.687704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546300, -0.460171, -0.699856,
		-0.731302, -0.145314, 0.666394,
		-0.408354, 0.875857, -0.257139,
		38.607082, 32.559807, 30.610563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.357571, 31.699316, 30.374622>,  <38.892929, 31.946707, 30.790560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.357571, 31.699316, 30.374622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.301292, 32.090267, 30.311460>,  <38.267525, 32.324837, 30.273563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.301292, 32.090267, 30.311460>,  <38.357571, 31.699316, 30.374622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.301292, 32.090267, 30.311460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.699346, -0.211004, -0.682929,
		-0.700800, 0.014347, 0.713214,
		-0.140693, 0.977380, -0.157905,
		38.259083, 32.383480, 30.264090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.720360, 31.841715, 30.521067>,  <38.357571, 31.699316, 30.374622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.720360, 31.841715, 30.521067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.854271, 32.100662, 30.247179>,  <37.934616, 32.256031, 30.082848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.854271, 32.100662, 30.247179>,  <37.720360, 31.841715, 30.521067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.854271, 32.100662, 30.247179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.593185, -0.419815, -0.686940,
		-0.732158, 0.636137, 0.243464,
		0.334778, 0.647368, -0.684718,
		37.954704, 32.294872, 30.041763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.087677, 31.945433, 30.126574>,  <37.720360, 31.841715, 30.521067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.087677, 31.945433, 30.126574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.400066, 32.082035, 29.917400>,  <37.587498, 32.163998, 29.791897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.400066, 32.082035, 29.917400>,  <37.087677, 31.945433, 30.126574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.400066, 32.082035, 29.917400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401500, -0.366835, -0.839184,
		-0.478416, 0.865336, -0.149373,
		0.780971, 0.341506, -0.522932,
		37.634357, 32.184486, 29.760521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.869556, 32.221718, 29.471403>,  <37.087677, 31.945433, 30.126574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.869556, 32.221718, 29.471403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.250301, 32.114830, 29.411343>,  <37.478748, 32.050697, 29.375305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.250301, 32.114830, 29.411343>,  <36.869556, 32.221718, 29.471403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.250301, 32.114830, 29.411343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269578, -0.496696, -0.824997,
		0.145875, 0.825764, -0.544825,
		0.951866, -0.267219, -0.150152,
		37.535862, 32.034664, 29.366297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.981663, 32.301079, 28.765347>,  <36.869556, 32.221718, 29.471403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.981663, 32.301079, 28.765347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.224548, 32.039993, 28.946568>,  <37.370281, 31.883343, 29.055300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.224548, 32.039993, 28.946568>,  <36.981663, 32.301079, 28.765347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.224548, 32.039993, 28.946568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215226, -0.684015, -0.696994,
		0.764831, 0.325718, -0.555826,
		0.607216, -0.652711, 0.453053,
		37.406712, 31.844179, 29.082483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.344177, 32.010971, 28.219795>,  <36.981663, 32.301079, 28.765347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.344177, 32.010971, 28.219795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.294369, 31.795977, 28.553408>,  <37.264484, 31.666981, 28.753574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.294369, 31.795977, 28.553408>,  <37.344177, 32.010971, 28.219795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.294369, 31.795977, 28.553408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395420, -0.744056, -0.538539,
		0.910020, -0.396852, -0.119879,
		-0.124524, -0.537484, 0.834029,
		37.257011, 31.634731, 28.803616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.726246, 31.412519, 28.296793>,  <37.344177, 32.010971, 28.219795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.726246, 31.412519, 28.296793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.362778, 31.364740, 28.456818>,  <37.144695, 31.336073, 28.552834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.362778, 31.364740, 28.456818>,  <37.726246, 31.412519, 28.296793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.362778, 31.364740, 28.456818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199254, -0.717978, -0.666938,
		0.366901, -0.685741, 0.628605,
		-0.908671, -0.119448, 0.400063,
		37.090176, 31.328905, 28.576836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.429199, 31.153265, 28.516867>,  <37.726246, 31.412519, 28.296793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.429199, 31.153265, 28.516867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.527138, 30.768496, 28.565447>,  <38.585899, 30.537634, 28.594595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.527138, 30.768496, 28.565447>,  <38.429199, 31.153265, 28.516867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.527138, 30.768496, 28.565447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.733423, 0.265681, 0.625704,
		-0.634147, -0.064127, 0.770549,
		0.244845, -0.961926, 0.121448,
		38.600590, 30.479918, 28.601881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.447388, 30.787943, 29.201721>,  <38.429199, 31.153265, 28.516867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.447388, 30.787943, 29.201721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.741936, 30.610563, 28.997324>,  <38.918663, 30.504135, 28.874685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.741936, 30.610563, 28.997324>,  <38.447388, 30.787943, 29.201721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.741936, 30.610563, 28.997324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.658493, 0.296273, 0.691816,
		-0.155393, -0.845916, 0.510175,
		0.736369, -0.443450, -0.510991,
		38.962845, 30.477528, 28.844027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.812645, 30.761894, 29.722288>,  <38.447388, 30.787943, 29.201721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.812645, 30.761894, 29.722288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.034267, 30.680752, 29.399334>,  <39.167240, 30.632067, 29.205563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.034267, 30.680752, 29.399334>,  <38.812645, 30.761894, 29.722288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.034267, 30.680752, 29.399334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.823874, -0.005463, 0.566747,
		-0.119379, -0.979193, 0.164101,
		0.554059, -0.202857, -0.807384,
		39.200485, 30.619896, 29.157118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.200638, 30.150517, 29.853764>,  <38.812645, 30.761894, 29.722288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.200638, 30.150517, 29.853764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.386631, 30.373112, 29.578341>,  <39.498226, 30.506670, 29.413088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.386631, 30.373112, 29.578341>,  <39.200638, 30.150517, 29.853764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.386631, 30.373112, 29.578341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.858553, -0.093648, 0.504099,
		0.216044, -0.825560, -0.521321,
		0.464985, 0.556489, -0.688555,
		39.526127, 30.540058, 29.371775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.889660, 29.979422, 29.824364>,  <39.200638, 30.150517, 29.853764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.889660, 29.979422, 29.824364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.880482, 30.347792, 29.668737>,  <39.874973, 30.568813, 29.575361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.880482, 30.347792, 29.668737>,  <39.889660, 29.979422, 29.824364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.880482, 30.347792, 29.668737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.888719, 0.197030, 0.413954,
		0.457878, -0.336271, -0.822964,
		-0.022948, 0.920924, -0.389066,
		39.873596, 30.624069, 29.552017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.559341, 30.152161, 29.525019>,  <39.889660, 29.979422, 29.824364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.559341, 30.152161, 29.525019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.372612, 30.477262, 29.664450>,  <40.260574, 30.672323, 29.748108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.372612, 30.477262, 29.664450>,  <40.559341, 30.152161, 29.525019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.372612, 30.477262, 29.664450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.824463, 0.257390, 0.503996,
		0.319905, 0.522665, -0.790242,
		-0.466821, 0.812756, 0.348577,
		40.232567, 30.721088, 29.769022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.847012, 30.775253, 29.399858>,  <40.559341, 30.152161, 29.525019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.847012, 30.775253, 29.399858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.658718, 30.822701, 29.749563>,  <40.545742, 30.851170, 29.959387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.658718, 30.822701, 29.749563>,  <40.847012, 30.775253, 29.399858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.658718, 30.822701, 29.749563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.879525, 0.141253, 0.454404,
		-0.069592, 0.982841, -0.170820,
		-0.470736, 0.118618, 0.874264,
		40.517498, 30.858286, 30.011843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.139874, 31.385080, 29.754148>,  <40.847012, 30.775253, 29.399858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.139874, 31.385080, 29.754148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.969528, 31.194975, 30.062115>,  <40.867321, 31.080912, 30.246895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.969528, 31.194975, 30.062115>,  <41.139874, 31.385080, 29.754148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.969528, 31.194975, 30.062115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.749823, 0.290844, 0.594286,
		-0.506366, 0.830383, 0.232503,
		-0.425862, -0.475263, 0.769914,
		40.841770, 31.052397, 30.293089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.300335, 31.793079, 30.311670>,  <41.139874, 31.385080, 29.754148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.300335, 31.793079, 30.311670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.176525, 31.457958, 30.491575>,  <41.102242, 31.256886, 30.599518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.176525, 31.457958, 30.491575>,  <41.300335, 31.793079, 30.311670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.176525, 31.457958, 30.491575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595979, 0.197639, 0.778298,
		-0.740950, 0.508949, 0.438138,
		-0.309520, -0.837801, 0.449764,
		41.083668, 31.206617, 30.626505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.062828, 31.963280, 31.000700>,  <41.300335, 31.793079, 30.311670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.062828, 31.963280, 31.000700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.182003, 31.581869, 30.982748>,  <41.253510, 31.353022, 30.971977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.182003, 31.581869, 30.982748>,  <41.062828, 31.963280, 31.000700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.182003, 31.581869, 30.982748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.699295, 0.186019, 0.690205,
		-0.649782, -0.237024, 0.722221,
		0.297942, -0.953529, -0.044878,
		41.271385, 31.295811, 30.969284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.020809, 31.759016, 31.691015>,  <41.062828, 31.963280, 31.000700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.020809, 31.759016, 31.691015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.273388, 31.494293, 31.529379>,  <41.424934, 31.335459, 31.432398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.273388, 31.494293, 31.529379>,  <41.020809, 31.759016, 31.691015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.273388, 31.494293, 31.529379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.755651, 0.408259, 0.512168,
		-0.173984, -0.628756, 0.757889,
		0.631443, -0.661809, -0.404090,
		41.462822, 31.295750, 31.408152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.416607, 31.448658, 32.197418>,  <41.020809, 31.759016, 31.691015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.416607, 31.448658, 32.197418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.655094, 31.397436, 31.880402>,  <41.798187, 31.366703, 31.690191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.655094, 31.397436, 31.880402>,  <41.416607, 31.448658, 32.197418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.655094, 31.397436, 31.880402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.780880, 0.321710, 0.535471,
		0.186400, -0.938139, 0.291805,
		0.596223, -0.128053, -0.792541,
		41.833961, 31.359020, 31.642639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.027725, 31.184114, 32.457130>,  <41.416607, 31.448658, 32.197418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.027725, 31.184114, 32.457130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.112305, 31.319780, 32.090469>,  <42.163052, 31.401180, 31.870472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.112305, 31.319780, 32.090469>,  <42.027725, 31.184114, 32.457130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.112305, 31.319780, 32.090469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.802227, 0.475515, 0.360994,
		0.558320, -0.811698, -0.171539,
		0.211448, 0.339163, -0.916656,
		42.175739, 31.421530, 31.815472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.617287, 30.993582, 32.454304>,  <42.027725, 31.184114, 32.457130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.617287, 30.993582, 32.454304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.606094, 31.276936, 32.172195>,  <42.599380, 31.446947, 32.002930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.606094, 31.276936, 32.172195>,  <42.617287, 30.993582, 32.454304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.606094, 31.276936, 32.172195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.815185, 0.424508, 0.394039,
		0.578524, -0.563901, -0.589343,
		-0.027982, 0.708385, -0.705272,
		42.597698, 31.489450, 31.960613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.276752, 31.133797, 32.382652>,  <42.617287, 30.993582, 32.454304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.276752, 31.133797, 32.382652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.106556, 31.446749, 32.200737>,  <43.004436, 31.634520, 32.091587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.106556, 31.446749, 32.200737>,  <43.276752, 31.133797, 32.382652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.106556, 31.446749, 32.200737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.750614, 0.585838, 0.305570,
		0.505507, -0.211357, -0.836535,
		-0.425490, 0.782382, -0.454793,
		42.978909, 31.681463, 32.064301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.944363, 31.593149, 32.017998>,  <43.276752, 31.133797, 32.382652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.944363, 31.593149, 32.017998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.615917, 31.818890, 32.052124>,  <43.418850, 31.954334, 32.072601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.615917, 31.818890, 32.052124>,  <43.944363, 31.593149, 32.017998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.615917, 31.818890, 32.052124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563271, 0.777086, 0.280826,
		0.092185, 0.278648, -0.955959,
		-0.821113, 0.564352, 0.085319,
		43.369583, 31.988195, 32.077721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.003719, 32.239773, 31.597544>,  <43.944363, 31.593149, 32.017998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.003719, 32.239773, 31.597544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.775059, 32.291149, 31.921698>,  <43.637863, 32.321976, 32.116188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.775059, 32.291149, 31.921698>,  <44.003719, 32.239773, 31.597544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.775059, 32.291149, 31.921698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490040, 0.845614, 0.211654,
		-0.658086, 0.518112, -0.546336,
		-0.571649, 0.128440, 0.810383,
		43.603565, 32.329681, 32.164814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.947571, 32.993240, 31.676619>,  <44.003719, 32.239773, 31.597544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.947571, 32.993240, 31.676619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.781433, 32.878922, 32.022060>,  <43.681751, 32.810329, 32.229324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.781433, 32.878922, 32.022060>,  <43.947571, 32.993240, 31.676619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.781433, 32.878922, 32.022060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537411, 0.688891, 0.486435,
		-0.733949, 0.666147, -0.132536,
		-0.415341, -0.285793, 0.863606,
		43.656830, 32.793182, 32.281143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.824467, 33.635048, 32.112675>,  <43.947571, 32.993240, 31.676619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.824467, 33.635048, 32.112675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.809845, 33.327976, 32.368591>,  <43.801071, 33.143734, 32.522141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.809845, 33.327976, 32.368591>,  <43.824467, 33.635048, 32.112675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.809845, 33.327976, 32.368591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490664, 0.543949, 0.680711,
		-0.870582, 0.338805, 0.356789,
		-0.036553, -0.767678, 0.639792,
		43.798878, 33.097672, 32.560528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.470226, 33.855400, 32.705280>,  <43.824467, 33.635048, 32.112675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.470226, 33.855400, 32.705280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.654510, 33.534946, 32.858086>,  <43.765079, 33.342674, 32.949768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.654510, 33.534946, 32.858086>,  <43.470226, 33.855400, 32.705280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.654510, 33.534946, 32.858086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179180, 0.505508, 0.844012,
		-0.869276, -0.320396, 0.376439,
		0.460711, -0.801130, 0.382018,
		43.792725, 33.294609, 32.972691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.188232, 33.761642, 33.442532>,  <43.470226, 33.855400, 32.705280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.188232, 33.761642, 33.442532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.545326, 33.584290, 33.410450>,  <43.759583, 33.477879, 33.391201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.545326, 33.584290, 33.410450>,  <43.188232, 33.761642, 33.442532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.545326, 33.584290, 33.410450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374711, 0.631709, 0.678627,
		-0.250226, -0.635888, 0.730091,
		0.892736, -0.443384, -0.080205,
		43.813148, 33.451275, 33.386387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.330807, 33.569973, 34.128582>,  <43.188232, 33.761642, 33.442532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.330807, 33.569973, 34.128582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.683792, 33.565800, 33.940475>,  <43.895584, 33.563293, 33.827610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.683792, 33.565800, 33.940475>,  <43.330807, 33.569973, 34.128582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.683792, 33.565800, 33.940475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378049, 0.610613, 0.695866,
		0.279890, -0.791860, 0.542788,
		0.882463, -0.010435, -0.470267,
		43.948532, 33.562668, 33.799397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.806332, 33.392284, 34.658165>,  <43.330807, 33.569973, 34.128582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.806332, 33.392284, 34.658165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.017391, 33.556465, 34.360680>,  <44.144028, 33.654972, 34.182190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.017391, 33.556465, 34.360680>,  <43.806332, 33.392284, 34.658165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.017391, 33.556465, 34.360680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506353, 0.550990, 0.663337,
		0.682047, -0.726594, 0.082898,
		0.527653, 0.410452, -0.743714,
		44.175686, 33.679600, 34.137566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.432186, 33.325153, 34.760391>,  <43.806332, 33.392284, 34.658165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.432186, 33.325153, 34.760391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.412773, 33.650162, 34.528027>,  <44.401127, 33.845165, 34.388607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.412773, 33.650162, 34.528027>,  <44.432186, 33.325153, 34.760391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.412773, 33.650162, 34.528027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610411, 0.484476, 0.626643,
		0.790597, -0.324181, -0.519484,
		-0.048531, 0.812521, -0.580909,
		44.398212, 33.893917, 34.353752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.014946, 33.592045, 34.910839>,  <44.432186, 33.325153, 34.760391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.014946, 33.592045, 34.910839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.874481, 33.891163, 34.685455>,  <44.790203, 34.070633, 34.550224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.874481, 33.891163, 34.685455>,  <45.014946, 33.592045, 34.910839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.874481, 33.891163, 34.685455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520983, 0.656074, 0.546025,
		0.777985, -0.101807, -0.619980,
		-0.351163, 0.747799, -0.563455,
		44.769131, 34.115501, 34.516418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.572926, 34.013561, 34.771534>,  <45.014946, 33.592045, 34.910839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.572926, 34.013561, 34.771534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.239338, 34.229649, 34.726536>,  <45.039185, 34.359299, 34.699535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.239338, 34.229649, 34.726536>,  <45.572926, 34.013561, 34.771534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.239338, 34.229649, 34.726536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365360, 0.693372, 0.621085,
		0.413522, 0.476867, -0.775627,
		-0.833973, 0.540216, -0.112496,
		44.989147, 34.391712, 34.692787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.744019, 34.677074, 34.562141>,  <45.572926, 34.013561, 34.771534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.744019, 34.677074, 34.562141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.383263, 34.698658, 34.733574>,  <45.166809, 34.711609, 34.836433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.383263, 34.698658, 34.733574>,  <45.744019, 34.677074, 34.562141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.383263, 34.698658, 34.733574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364908, 0.626131, 0.689059,
		-0.231168, 0.777848, -0.584391,
		-0.901889, 0.053960, 0.428584,
		45.112698, 34.714848, 34.862148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.713039, 35.266804, 34.882584>,  <45.744019, 34.677074, 34.562141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.713039, 35.266804, 34.882584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.402683, 35.089134, 35.061787>,  <45.216469, 34.982533, 35.169308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.402683, 35.089134, 35.061787>,  <45.713039, 35.266804, 34.882584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.402683, 35.089134, 35.061787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223688, 0.470303, 0.853685,
		-0.589884, 0.762577, -0.265546,
		-0.775887, -0.444175, 0.448003,
		45.169918, 34.955883, 35.196186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.385033, 35.162159, 35.106354>,  <45.713039, 35.266804, 34.882584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.385033, 35.162159, 35.106354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.710533, 35.393124, 35.079800>,  <46.905834, 35.531704, 35.063869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.710533, 35.393124, 35.079800>,  <46.385033, 35.162159, 35.106354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.710533, 35.393124, 35.079800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547596, -0.723380, 0.420546,
		0.194809, -0.378570, -0.904839,
		0.813749, 0.577413, -0.066382,
		46.954659, 35.566349, 35.059887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.053017, 34.841618, 34.756813>,  <46.385033, 35.162159, 35.106354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.053017, 34.841618, 34.756813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.150291, 35.100029, 35.046227>,  <47.208656, 35.255077, 35.219875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.150291, 35.100029, 35.046227>,  <47.053017, 34.841618, 34.756813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.150291, 35.100029, 35.046227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610781, -0.681465, 0.403178,
		0.753528, 0.343871, -0.560310,
		0.243190, 0.646033, 0.723533,
		47.223248, 35.293839, 35.263287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.819073, 34.839886, 34.804214>,  <47.053017, 34.841618, 34.756813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.819073, 34.839886, 34.804214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.685482, 34.939110, 35.167957>,  <47.605328, 34.998646, 35.386204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.685482, 34.939110, 35.167957>,  <47.819073, 34.839886, 34.804214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.685482, 34.939110, 35.167957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621198, -0.667670, 0.410280,
		0.708924, 0.701913, 0.068890,
		-0.333977, 0.248062, 0.909354,
		47.585289, 35.013527, 35.440765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<34.746128, 37.963688, 46.413372> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.402000, 37.801937, 46.289230>,  <34.195522, 37.704887, 46.214745>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.402000, 37.801937, 46.289230>,  <34.746128, 37.963688, 46.413372>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.402000, 37.801937, 46.289230> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224841, 0.245381, -0.942992,
		0.457484, -0.881058, -0.120185,
		-0.860322, -0.404381, -0.310356,
		34.143902, 37.680622, 46.196125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.911793, 37.510048, 45.943291>,  <34.746128, 37.963688, 46.413372>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.911793, 37.510048, 45.943291> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.525227, 37.577114, 45.865391>,  <34.293285, 37.617352, 45.818649>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.525227, 37.577114, 45.865391>,  <34.911793, 37.510048, 45.943291>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.525227, 37.577114, 45.865391> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194856, -0.015980, -0.980702,
		-0.167538, -0.985715, -0.017227,
		-0.966417, 0.167662, -0.194750,
		34.235302, 37.627411, 45.806965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.805214, 37.114666, 45.365013>,  <34.911793, 37.510048, 45.943291>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.805214, 37.114666, 45.365013> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.515011, 37.389954, 45.364380>,  <34.340889, 37.555126, 45.363998>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.515011, 37.389954, 45.364380>,  <34.805214, 37.114666, 45.365013>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.515011, 37.389954, 45.364380> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019574, 0.018332, -0.999640,
		-0.687940, -0.725274, -0.026771,
		-0.725504, 0.688216, -0.001585,
		34.297359, 37.596416, 45.363903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.425739, 36.986095, 44.830002>,  <34.805214, 37.114666, 45.365013>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.425739, 36.986095, 44.830002> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.316219, 37.368740, 44.869858>,  <34.250507, 37.598328, 44.893772>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.316219, 37.368740, 44.869858>,  <34.425739, 36.986095, 44.830002>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.316219, 37.368740, 44.869858> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007728, 0.105780, -0.994359,
		-0.961755, -0.271489, -0.036355,
		-0.273803, 0.956611, 0.099636,
		34.234077, 37.655724, 44.899750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.006790, 37.063335, 44.277542>,  <34.425739, 36.986095, 44.830002>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.006790, 37.063335, 44.277542> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.090088, 37.445118, 44.363007>,  <34.140068, 37.674187, 44.414288>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.090088, 37.445118, 44.363007>,  <34.006790, 37.063335, 44.277542>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.090088, 37.445118, 44.363007> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076706, 0.233718, -0.969274,
		-0.975065, 0.185456, 0.121882,
		0.208244, 0.954454, 0.213665,
		34.152561, 37.731453, 44.427105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.351185, 37.448738, 44.010902>,  <34.006790, 37.063335, 44.277542>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.351185, 37.448738, 44.010902> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.689648, 37.661903, 44.012623>,  <33.892727, 37.789803, 44.013653>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.689648, 37.661903, 44.012623>,  <33.351185, 37.448738, 44.010902>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.689648, 37.661903, 44.012623> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114442, 0.189575, -0.975174,
		-0.520497, 0.824661, 0.221398,
		0.846160, 0.532912, 0.004297,
		33.943497, 37.821777, 44.013912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.275364, 38.007355, 43.567307>,  <33.351185, 37.448738, 44.010902>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.275364, 38.007355, 43.567307> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.673115, 37.970020, 43.587292>,  <33.911766, 37.947620, 43.599281>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.673115, 37.970020, 43.587292>,  <33.275364, 38.007355, 43.567307>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.673115, 37.970020, 43.587292> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063385, 0.146888, -0.987120,
		0.084791, 0.984740, 0.151979,
		0.994381, -0.093332, 0.049963,
		33.971428, 37.942020, 43.602280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.617630, 38.687054, 43.228489>,  <33.275364, 38.007355, 43.567307>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.617630, 38.687054, 43.228489> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.858742, 38.368099, 43.216892>,  <34.003407, 38.176727, 43.209934>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.858742, 38.368099, 43.216892>,  <33.617630, 38.687054, 43.228489>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.858742, 38.368099, 43.216892> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164433, 0.159688, -0.973376,
		0.780784, 0.581960, 0.227373,
		0.602775, -0.797384, -0.028989,
		34.039574, 38.128883, 43.208195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.020687, 38.921921, 42.691345>,  <33.617630, 38.687054, 43.228489>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.020687, 38.921921, 42.691345> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.131382, 38.542103, 42.750378>,  <34.197800, 38.314213, 42.785797>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.131382, 38.542103, 42.750378>,  <34.020687, 38.921921, 42.691345>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.131382, 38.542103, 42.750378> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366913, -0.037533, -0.929498,
		0.888140, 0.311374, 0.338014,
		0.276735, -0.949546, 0.147581,
		34.214401, 38.257240, 42.794651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.696625, 38.881886, 42.297508>,  <34.020687, 38.921921, 42.691345>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.696625, 38.881886, 42.297508> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.579227, 38.505238, 42.363495>,  <34.508789, 38.279247, 42.403088>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.579227, 38.505238, 42.363495>,  <34.696625, 38.881886, 42.297508>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.579227, 38.505238, 42.363495> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268624, -0.246849, -0.931078,
		0.917445, -0.228947, 0.325389,
		-0.293490, -0.941620, 0.164970,
		34.491180, 38.222752, 42.412987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.289444, 38.500713, 42.307800>,  <34.696625, 38.881886, 42.297508>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.289444, 38.500713, 42.307800> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.988598, 38.253510, 42.216251>,  <34.808090, 38.105186, 42.161324>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.988598, 38.253510, 42.216251>,  <35.289444, 38.500713, 42.307800>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.988598, 38.253510, 42.216251> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346560, -0.075506, -0.934984,
		0.560547, -0.782537, 0.270966,
		-0.752119, -0.618008, -0.228872,
		34.762962, 38.068108, 42.147591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.551098, 37.808159, 42.158859>,  <35.289444, 38.500713, 42.307800>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.551098, 37.808159, 42.158859> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.203655, 37.843021, 41.963745>,  <34.995190, 37.863937, 41.846676>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.203655, 37.843021, 41.963745>,  <35.551098, 37.808159, 42.158859>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.203655, 37.843021, 41.963745> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476020, -0.126594, -0.870275,
		-0.137615, -0.988117, 0.068463,
		-0.868600, 0.087173, -0.487784,
		34.943073, 37.869167, 41.817410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.481743, 37.225616, 41.809074>,  <35.551098, 37.808159, 42.158859>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.481743, 37.225616, 41.809074> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.218117, 37.435074, 41.593136>,  <35.059940, 37.560749, 41.463573>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.218117, 37.435074, 41.593136>,  <35.481743, 37.225616, 41.809074>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.218117, 37.435074, 41.593136> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482981, -0.255539, -0.837514,
		-0.576506, -0.812712, -0.084491,
		-0.659067, 0.523640, -0.539844,
		35.020397, 37.592167, 41.431183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.296982, 36.814144, 41.299114>,  <35.481743, 37.225616, 41.809074>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.296982, 36.814144, 41.299114> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.175323, 37.170536, 41.164268>,  <35.102329, 37.384373, 41.083359>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.175323, 37.170536, 41.164268>,  <35.296982, 36.814144, 41.299114>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.175323, 37.170536, 41.164268> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280553, -0.254412, -0.925508,
		-0.910377, -0.376067, -0.172590,
		-0.304144, 0.890981, -0.337118,
		35.084080, 37.437832, 41.063133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.959354, 36.646011, 40.657829>,  <35.296982, 36.814144, 41.299114>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.959354, 36.646011, 40.657829> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.049622, 37.035275, 40.639767>,  <35.103783, 37.268833, 40.628929>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.049622, 37.035275, 40.639767>,  <34.959354, 36.646011, 40.657829>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.049622, 37.035275, 40.639767> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217829, -0.095586, -0.971295,
		-0.949539, 0.209353, -0.233553,
		0.225668, 0.973157, -0.045159,
		35.117321, 37.327221, 40.626221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.542370, 36.977142, 40.130772>,  <34.959354, 36.646011, 40.657829>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.542370, 36.977142, 40.130772> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.874409, 37.190861, 40.194599>,  <35.073631, 37.319092, 40.232895>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.874409, 37.190861, 40.194599>,  <34.542370, 36.977142, 40.130772>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.874409, 37.190861, 40.194599> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224626, -0.058496, -0.972688,
		-0.510367, 0.843273, -0.168573,
		0.830102, 0.534294, 0.159566,
		35.123440, 37.351151, 40.242470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.622585, 37.433262, 39.547691>,  <34.542370, 36.977142, 40.130772>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.622585, 37.433262, 39.547691> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.989143, 37.461914, 39.705219>,  <35.209080, 37.479107, 39.799736>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.989143, 37.461914, 39.705219>,  <34.622585, 37.433262, 39.547691>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.989143, 37.461914, 39.705219> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400126, -0.136830, -0.906188,
		-0.011027, 0.988001, -0.154052,
		0.916394, 0.071633, 0.393816,
		35.264061, 37.483402, 39.823364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.915199, 37.733013, 39.084751>,  <34.622585, 37.433262, 39.547691>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.915199, 37.733013, 39.084751> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.235767, 37.618008, 39.294540>,  <35.428108, 37.549004, 39.420414>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.235767, 37.618008, 39.294540>,  <34.915199, 37.733013, 39.084751>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.235767, 37.618008, 39.294540> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498656, -0.163017, -0.851333,
		0.330266, 0.943802, 0.012725,
		0.801415, -0.287512, 0.524471,
		35.476192, 37.531754, 39.451881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.376713, 38.137238, 38.886639>,  <34.915199, 37.733013, 39.084751>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.376713, 38.137238, 38.886639> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.562668, 37.808567, 39.018532>,  <35.674240, 37.611362, 39.097668>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.562668, 37.808567, 39.018532>,  <35.376713, 38.137238, 38.886639>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.562668, 37.808567, 39.018532> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438968, -0.109509, -0.891804,
		0.768884, 0.559333, 0.309780,
		0.464892, -0.821678, 0.329729,
		35.702137, 37.562065, 39.117451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.938610, 38.175552, 38.456329>,  <35.376713, 38.137238, 38.886639>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.938610, 38.175552, 38.456329> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.969543, 37.802650, 38.597706>,  <35.988102, 37.578911, 38.682529>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.969543, 37.802650, 38.597706>,  <35.938610, 38.175552, 38.456329>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.969543, 37.802650, 38.597706> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.654441, -0.219975, -0.723407,
		0.752148, 0.287246, 0.593096,
		0.077330, -0.932256, 0.353439,
		35.992741, 37.522972, 38.703739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.673069, 38.047264, 38.497070>,  <35.938610, 38.175552, 38.456329>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.673069, 38.047264, 38.497070> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.489643, 37.692791, 38.470531>,  <36.379585, 37.480106, 38.454609>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.489643, 37.692791, 38.470531>,  <36.673069, 38.047264, 38.497070>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.489643, 37.692791, 38.470531> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.694783, -0.310973, -0.648516,
		0.554069, -0.343485, 0.758304,
		-0.458568, -0.886179, -0.066347,
		36.352074, 37.426937, 38.450626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.143997, 37.598171, 38.505226>,  <36.673069, 38.047264, 38.497070>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.143997, 37.598171, 38.505226> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.829472, 37.416382, 38.337814>,  <36.640755, 37.307308, 38.237366>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.829472, 37.416382, 38.337814>,  <37.143997, 37.598171, 38.505226>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.829472, 37.416382, 38.337814> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527643, -0.141566, -0.837587,
		0.321412, -0.879439, 0.351115,
		-0.786312, -0.454474, -0.418529,
		36.593578, 37.280041, 38.212257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.866062, 37.682026, 38.688751>,  <37.143997, 37.598171, 38.505226>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.866062, 37.682026, 38.688751> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.155178, 37.407650, 38.722347>,  <38.328648, 37.243023, 38.742504>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.155178, 37.407650, 38.722347>,  <37.866062, 37.682026, 38.688751>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.155178, 37.407650, 38.722347> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285536, -0.185759, 0.940193,
		-0.629317, -0.703546, -0.330126,
		0.722793, -0.685942, 0.083986,
		38.372017, 37.201866, 38.747543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.568867, 37.085377, 39.006073>,  <37.866062, 37.682026, 38.688751>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.568867, 37.085377, 39.006073> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.956295, 37.044853, 39.096935>,  <38.188751, 37.020538, 39.151451>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.956295, 37.044853, 39.096935>,  <37.568867, 37.085377, 39.006073>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.956295, 37.044853, 39.096935> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248167, -0.332730, 0.909782,
		-0.016589, -0.937564, -0.347416,
		0.968576, -0.101310, 0.227153,
		38.246868, 37.014462, 39.165081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.601830, 36.467178, 39.340637>,  <37.568867, 37.085377, 39.006073>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.601830, 36.467178, 39.340637> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.934929, 36.668255, 39.433445>,  <38.134789, 36.788902, 39.489128>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.934929, 36.668255, 39.433445>,  <37.601830, 36.467178, 39.340637>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.934929, 36.668255, 39.433445> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090421, -0.289952, 0.952760,
		0.546217, -0.814389, -0.196003,
		0.832749, 0.502692, 0.232015,
		38.184753, 36.819061, 39.503048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.848194, 36.113354, 39.858028>,  <37.601830, 36.467178, 39.340637>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.848194, 36.113354, 39.858028> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.055386, 36.453312, 39.896748>,  <38.179703, 36.657288, 39.919979>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.055386, 36.453312, 39.896748>,  <37.848194, 36.113354, 39.858028>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.055386, 36.453312, 39.896748> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038023, -0.090170, 0.995200,
		0.854545, -0.519177, -0.014391,
		0.517983, 0.849896, 0.096795,
		38.210781, 36.708282, 39.925785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.256294, 35.916981, 40.443554>,  <37.848194, 36.113354, 39.858028>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.256294, 35.916981, 40.443554> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.262291, 36.314758, 40.401886>,  <38.265888, 36.553425, 40.376884>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.262291, 36.314758, 40.401886>,  <38.256294, 35.916981, 40.443554>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.262291, 36.314758, 40.401886> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043609, 0.104729, 0.993544,
		0.998936, -0.010354, 0.044937,
		0.014994, 0.994447, -0.104166,
		38.266788, 36.613091, 40.370636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.853722, 36.156807, 40.779221>,  <38.256294, 35.916981, 40.443554>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.853722, 36.156807, 40.779221> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.585464, 36.452793, 40.758446>,  <38.424511, 36.630386, 40.745979>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.585464, 36.452793, 40.758446>,  <38.853722, 36.156807, 40.779221>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.585464, 36.452793, 40.758446> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027689, 0.044999, 0.998603,
		0.741268, 0.671140, -0.009689,
		-0.670638, 0.739964, -0.051939,
		38.384274, 36.674782, 40.742863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.084816, 36.722828, 41.221684>,  <38.853722, 36.156807, 40.779221>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.084816, 36.722828, 41.221684> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.688168, 36.754467, 41.180836>,  <38.450180, 36.773449, 41.156326>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.688168, 36.754467, 41.180836>,  <39.084816, 36.722828, 41.221684>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.688168, 36.754467, 41.180836> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091554, 0.127314, 0.987628,
		0.091120, 0.988703, -0.119006,
		-0.991622, 0.079097, -0.102121,
		38.390682, 36.778194, 41.150200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.906193, 37.175163, 41.727982>,  <39.084816, 36.722828, 41.221684>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.906193, 37.175163, 41.727982> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.568977, 36.981285, 41.634720>,  <38.366650, 36.864960, 41.578762>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.568977, 36.981285, 41.634720>,  <38.906193, 37.175163, 41.727982>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.568977, 36.981285, 41.634720> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215608, -0.092600, 0.972080,
		-0.492754, 0.869767, -0.026440,
		-0.843034, -0.484697, -0.233158,
		38.316067, 36.835876, 41.564774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.264580, 37.613087, 41.952473>,  <38.906193, 37.175163, 41.727982>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.264580, 37.613087, 41.952473> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.160957, 37.230408, 41.899380>,  <38.098782, 37.000801, 41.867523>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.160957, 37.230408, 41.899380>,  <38.264580, 37.613087, 41.952473>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.160957, 37.230408, 41.899380> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430691, -0.008579, 0.902459,
		-0.864520, 0.290954, -0.409819,
		-0.259058, -0.956699, -0.132728,
		38.083241, 36.943398, 41.859562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.651741, 37.540836, 42.373363>,  <38.264580, 37.613087, 41.952473>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.651741, 37.540836, 42.373363> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.752125, 37.164703, 42.281456>,  <37.812355, 36.939022, 42.226311>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.752125, 37.164703, 42.281456>,  <37.651741, 37.540836, 42.373363>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.752125, 37.164703, 42.281456> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378783, -0.313834, 0.870650,
		-0.890810, -0.131467, -0.434942,
		0.250962, -0.940332, -0.229769,
		37.827412, 36.882603, 42.212524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.083725, 37.197029, 42.443531>,  <37.651741, 37.540836, 42.373363>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.083725, 37.197029, 42.443531> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.381397, 36.935116, 42.496384>,  <37.560001, 36.777969, 42.528095>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.381397, 36.935116, 42.496384>,  <37.083725, 37.197029, 42.443531>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.381397, 36.935116, 42.496384> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393340, -0.269675, 0.878953,
		-0.539888, -0.706073, -0.458238,
		0.744181, -0.654779, 0.132133,
		37.604652, 36.738682, 42.536022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.759949, 36.564781, 42.653999>,  <37.083725, 37.197029, 42.443531>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.759949, 36.564781, 42.653999> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.142563, 36.575920, 42.770115>,  <37.372131, 36.582603, 42.839783>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.142563, 36.575920, 42.770115>,  <36.759949, 36.564781, 42.653999>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.142563, 36.575920, 42.770115> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271589, -0.277515, 0.921534,
		0.106220, -0.960318, -0.257890,
		0.956534, 0.027845, 0.290290,
		37.429523, 36.584274, 42.857201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.787025, 35.977169, 43.016190>,  <36.759949, 36.564781, 42.653999>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.787025, 35.977169, 43.016190> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.097210, 36.199631, 43.135757>,  <37.283321, 36.333107, 43.207500>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.097210, 36.199631, 43.135757>,  <36.787025, 35.977169, 43.016190>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.097210, 36.199631, 43.135757> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252654, -0.160555, 0.954142,
		0.578647, -0.815421, 0.016012,
		0.775457, 0.556157, 0.298924,
		37.329845, 36.366478, 43.225433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.034679, 35.585373, 43.511753>,  <36.787025, 35.977169, 43.016190>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.034679, 35.585373, 43.511753> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.199261, 35.938381, 43.602852>,  <37.298008, 36.150185, 43.657513>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.199261, 35.938381, 43.602852>,  <37.034679, 35.585373, 43.511753>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.199261, 35.938381, 43.602852> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084510, -0.211866, 0.973638,
		0.907506, -0.419849, -0.012591,
		0.411449, 0.882519, 0.227751,
		37.322697, 36.203136, 43.671177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.396065, 35.402252, 44.048073>,  <37.034679, 35.585373, 43.511753>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.396065, 35.402252, 44.048073> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.336857, 35.797832, 44.051308>,  <37.301334, 36.035179, 44.053249>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.336857, 35.797832, 44.051308>,  <37.396065, 35.402252, 44.048073>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.336857, 35.797832, 44.051308> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262882, -0.047222, 0.963672,
		0.953407, 0.140516, 0.266967,
		-0.148018, 0.988952, 0.008083,
		37.292450, 36.094517, 44.053734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.934566, 35.550991, 44.568069>,  <37.396065, 35.402252, 44.048073>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.934566, 35.550991, 44.568069> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.645420, 35.822010, 44.513817>,  <37.471931, 35.984623, 44.481266>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.645420, 35.822010, 44.513817>,  <37.934566, 35.550991, 44.568069>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.645420, 35.822010, 44.513817> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275356, -0.102427, 0.955870,
		0.633754, 0.728313, 0.260608,
		-0.722866, 0.677546, -0.135632,
		37.428562, 36.025272, 44.473125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.909096, 35.952087, 45.190487>,  <37.934566, 35.550991, 44.568069>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.909096, 35.952087, 45.190487> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.561893, 36.075409, 45.034790>,  <37.353573, 36.149403, 44.941372>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.561893, 36.075409, 45.034790>,  <37.909096, 35.952087, 45.190487>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.561893, 36.075409, 45.034790> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368091, 0.126628, 0.921127,
		0.333273, 0.942824, 0.003568,
		-0.868008, 0.308300, -0.389247,
		37.301491, 36.167900, 44.918015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.707287, 36.548512, 45.521610>,  <37.909096, 35.952087, 45.190487>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.707287, 36.548512, 45.521610> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.372711, 36.393497, 45.366596>,  <37.171967, 36.300488, 45.273586>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.372711, 36.393497, 45.366596>,  <37.707287, 36.548512, 45.521610>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.372711, 36.393497, 45.366596> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432090, 0.031315, 0.901287,
		-0.337146, 0.921322, -0.193644,
		-0.836440, -0.387537, -0.387536,
		37.121780, 36.277237, 45.250336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<37.095753, 37.001102, 45.679371> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.941845, 36.635452, 45.628246>,  <36.849503, 36.416061, 45.597572>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.941845, 36.635452, 45.628246>,  <37.095753, 37.001102, 45.679371>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.941845, 36.635452, 45.628246> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576597, 0.129914, 0.806633,
		-0.720756, 0.384063, -0.577067,
		-0.384768, -0.914121, -0.127814,
		36.826416, 36.361217, 45.589901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.433460, 37.099335, 45.854553>,  <37.095753, 37.001102, 45.679371>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.433460, 37.099335, 45.854553> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.497307, 36.708298, 45.909454>,  <36.535614, 36.473675, 45.942394>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.497307, 36.708298, 45.909454>,  <36.433460, 37.099335, 45.854553>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.497307, 36.708298, 45.909454> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.610055, 0.011630, 0.792274,
		-0.776116, -0.210195, -0.594527,
		0.159617, -0.977590, 0.137256,
		36.545193, 36.415020, 45.950630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.750332, 36.806232, 45.979717>,  <36.433460, 37.099335, 45.854553>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.750332, 36.806232, 45.979717> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.995285, 36.526772, 46.127705>,  <36.142258, 36.359097, 46.216496>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.995285, 36.526772, 46.127705>,  <35.750332, 36.806232, 45.979717>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.995285, 36.526772, 46.127705> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476933, 0.046737, 0.877696,
		-0.630495, -0.713933, -0.304589,
		0.612381, -0.698652, 0.369966,
		36.179001, 36.317177, 46.238693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.288418, 36.315792, 46.445492>,  <35.750332, 36.806232, 45.979717>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.288418, 36.315792, 46.445492> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.671398, 36.273788, 46.553024>,  <35.901184, 36.248589, 46.617542>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.671398, 36.273788, 46.553024>,  <35.288418, 36.315792, 46.445492>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.671398, 36.273788, 46.553024> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276266, -0.063946, 0.958951,
		-0.083526, -0.992411, -0.090241,
		0.957445, -0.105028, 0.268829,
		35.958633, 36.242287, 46.633675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.210808, 35.710262, 46.906799>,  <35.288418, 36.315792, 46.445492>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.210808, 35.710262, 46.906799> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.542347, 35.923111, 46.975914>,  <35.741272, 36.050819, 47.017384>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.542347, 35.923111, 46.975914>,  <35.210808, 35.710262, 46.906799>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.542347, 35.923111, 46.975914> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211830, 0.012641, 0.977225,
		0.517822, -0.846571, 0.123197,
		0.828847, 0.532126, 0.172784,
		35.791000, 36.082748, 47.027748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.479782, 35.388348, 47.478443>,  <35.210808, 35.710262, 46.906799>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.479782, 35.388348, 47.478443> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.659313, 35.743793, 47.440685>,  <35.767033, 35.957062, 47.418030>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.659313, 35.743793, 47.440685>,  <35.479782, 35.388348, 47.478443>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.659313, 35.743793, 47.440685> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183319, 0.194943, 0.963531,
		0.874613, -0.415155, 0.250396,
		0.448828, 0.888619, -0.094394,
		35.793961, 36.010380, 47.412369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.175999, 35.340092, 47.904514>,  <35.479782, 35.388348, 47.478443>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.175999, 35.340092, 47.904514> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.067192, 35.721016, 47.849209>,  <36.001907, 35.949570, 47.816025>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.067192, 35.721016, 47.849209>,  <36.175999, 35.340092, 47.904514>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.067192, 35.721016, 47.849209> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218284, 0.201001, 0.954961,
		0.937207, 0.229587, -0.262550,
		-0.272019, 0.952307, -0.138265,
		35.985588, 36.006706, 47.807728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.647030, 35.820961, 48.335087>,  <36.175999, 35.340092, 47.904514>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.647030, 35.820961, 48.335087> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.327141, 36.052368, 48.270885>,  <36.135208, 36.191212, 48.232365>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.327141, 36.052368, 48.270885>,  <36.647030, 35.820961, 48.335087>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.327141, 36.052368, 48.270885> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018243, 0.243798, 0.969654,
		0.600093, 0.778382, -0.184417,
		-0.799722, 0.578518, -0.160502,
		36.087223, 36.225925, 48.222736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.845428, 36.596687, 48.535847>,  <36.647030, 35.820961, 48.335087>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.845428, 36.596687, 48.535847> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.454292, 36.516590, 48.560314>,  <36.219612, 36.468533, 48.574993>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.454292, 36.516590, 48.560314>,  <36.845428, 36.596687, 48.535847>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.454292, 36.516590, 48.560314> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021812, 0.387967, 0.921415,
		-0.208232, 0.899659, -0.383736,
		-0.977836, -0.200238, 0.061164,
		36.160942, 36.456520, 48.578663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.642307, 36.992039, 49.004871>,  <36.845428, 36.596687, 48.535847>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.642307, 36.992039, 49.004871> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.290230, 36.802631, 48.992020>,  <36.078983, 36.688988, 48.984306>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.290230, 36.802631, 48.992020>,  <36.642307, 36.992039, 49.004871>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.290230, 36.802631, 48.992020> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154465, 0.221793, 0.962782,
		-0.448768, 0.852402, -0.268364,
		-0.880198, -0.473518, -0.032132,
		36.026169, 36.660576, 48.982380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.143246, 37.523830, 49.221218>,  <36.642307, 36.992039, 49.004871>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.143246, 37.523830, 49.221218> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.001072, 37.155338, 49.284462>,  <35.915768, 36.934242, 49.322407>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.001072, 37.155338, 49.284462>,  <36.143246, 37.523830, 49.221218>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.001072, 37.155338, 49.284462> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081664, 0.199116, 0.976568,
		-0.931128, 0.334191, -0.146004,
		-0.355431, -0.921233, 0.158111,
		35.894444, 36.878967, 49.331894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.792263, 37.588425, 49.901684>,  <36.143246, 37.523830, 49.221218>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.792263, 37.588425, 49.901684> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.782948, 37.196136, 49.824070>,  <35.777359, 36.960766, 49.777500>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.782948, 37.196136, 49.824070>,  <35.792263, 37.588425, 49.901684>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.782948, 37.196136, 49.824070> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262557, -0.181273, 0.947736,
		-0.964635, 0.073019, -0.253272,
		-0.023291, -0.980718, -0.194034,
		35.775959, 36.901920, 49.765862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.115513, 37.271347, 50.108223>,  <35.792263, 37.588425, 49.901684>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.115513, 37.271347, 50.108223> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.361588, 36.957279, 50.079800>,  <35.509232, 36.768837, 50.062744>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.361588, 36.957279, 50.079800>,  <35.115513, 37.271347, 50.108223>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.361588, 36.957279, 50.079800> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321382, -0.332062, 0.886819,
		-0.719900, -0.522724, -0.456621,
		0.615188, -0.785171, -0.071057,
		35.546143, 36.721729, 50.058483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.693665, 36.560089, 50.287895>,  <35.115513, 37.271347, 50.108223>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.693665, 36.560089, 50.287895> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.083828, 36.489353, 50.340508>,  <35.317928, 36.446911, 50.372074>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.083828, 36.489353, 50.340508>,  <34.693665, 36.560089, 50.287895>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.083828, 36.489353, 50.340508> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179475, -0.290949, 0.939754,
		-0.127914, -0.940254, -0.315533,
		0.975411, -0.176838, 0.131536,
		35.376450, 36.436302, 50.379967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.733658, 35.847942, 50.483650>,  <34.693665, 36.560089, 50.287895>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.733658, 35.847942, 50.483650> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.069500, 36.028751, 50.604149>,  <35.271004, 36.137238, 50.676449>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.069500, 36.028751, 50.604149>,  <34.733658, 35.847942, 50.483650>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.069500, 36.028751, 50.604149> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062674, -0.470261, 0.880299,
		0.539576, -0.757980, -0.366501,
		0.839601, 0.452018, 0.301247,
		35.321381, 36.164356, 50.694523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.241631, 35.284492, 50.720139>,  <34.733658, 35.847942, 50.483650>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.241631, 35.284492, 50.720139> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.353348, 35.621124, 50.905067>,  <35.420380, 35.823101, 51.016026>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.353348, 35.621124, 50.905067>,  <35.241631, 35.284492, 50.720139>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.353348, 35.621124, 50.905067> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005314, -0.482831, 0.875697,
		0.960190, -0.242122, -0.139324,
		0.279295, 0.841577, 0.462323,
		35.437138, 35.873596, 51.043766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.785309, 35.088028, 51.137505>,  <35.241631, 35.284492, 50.720139>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.785309, 35.088028, 51.137505> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.690022, 35.435898, 51.310440>,  <35.632851, 35.644619, 51.414200>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.690022, 35.435898, 51.310440>,  <35.785309, 35.088028, 51.137505>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.690022, 35.435898, 51.310440> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157531, -0.404660, 0.900797,
		0.958351, 0.282692, -0.040603,
		-0.238218, 0.869676, 0.432338,
		35.618557, 35.696800, 51.440140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.297699, 35.180489, 51.728405>,  <35.785309, 35.088028, 51.137505>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.297699, 35.180489, 51.728405> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.981056, 35.410534, 51.810978>,  <35.791073, 35.548561, 51.860519>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.981056, 35.410534, 51.810978>,  <36.297699, 35.180489, 51.728405>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.981056, 35.410534, 51.810978> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016310, -0.357603, 0.933731,
		0.610817, 0.735778, 0.292460,
		-0.791604, 0.575109, 0.206429,
		35.743576, 35.583065, 51.872906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.343639, 35.255283, 52.489483>,  <36.297699, 35.180489, 51.728405>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.343639, 35.255283, 52.489483> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.969173, 35.383213, 52.431099>,  <35.744492, 35.459972, 52.396069>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.969173, 35.383213, 52.431099>,  <36.343639, 35.255283, 52.489483>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.969173, 35.383213, 52.431099> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208587, -0.171118, 0.962917,
		0.282989, 0.931896, 0.226907,
		-0.936167, 0.319825, -0.145957,
		35.688324, 35.479160, 52.387314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.070053, 35.646828, 53.016418>,  <36.343639, 35.255283, 52.489483>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.070053, 35.646828, 53.016418> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.705940, 35.549301, 52.882584>,  <35.487473, 35.490784, 52.802284>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.705940, 35.549301, 52.882584>,  <36.070053, 35.646828, 53.016418>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.705940, 35.549301, 52.882584> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318782, -0.102849, 0.942232,
		-0.264144, 0.964352, 0.015897,
		-0.910278, -0.243818, -0.334585,
		35.432858, 35.476154, 52.782207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.598564, 35.986843, 53.466034>,  <36.070053, 35.646828, 53.016418>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.598564, 35.986843, 53.466034> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.383537, 35.693523, 53.299522>,  <35.254520, 35.517532, 53.199615>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.383537, 35.693523, 53.299522>,  <35.598564, 35.986843, 53.466034>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.383537, 35.693523, 53.299522> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429463, -0.186752, 0.883564,
		-0.725658, 0.653755, -0.214533,
		-0.537570, -0.733299, -0.416281,
		35.222267, 35.473534, 53.174637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.870346, 36.140316, 53.657402>,  <35.598564, 35.986843, 53.466034>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.870346, 36.140316, 53.657402> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.945370, 35.755611, 53.577560>,  <34.990383, 35.524788, 53.529655>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.945370, 35.755611, 53.577560>,  <34.870346, 36.140316, 53.657402>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.945370, 35.755611, 53.577560> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425176, -0.262684, 0.866154,
		-0.885464, -0.077588, -0.458186,
		0.187561, -0.961757, -0.199609,
		35.001637, 35.467083, 53.517677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.287830, 35.601501, 53.707596>,  <34.870346, 36.140316, 53.657402>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.287830, 35.601501, 53.707596> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.624805, 35.392330, 53.759499>,  <34.826992, 35.266827, 53.790638>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.624805, 35.392330, 53.759499>,  <34.287830, 35.601501, 53.707596>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.624805, 35.392330, 53.759499> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387502, -0.420732, 0.820260,
		-0.374345, -0.741302, -0.557079,
		0.842441, -0.522930, 0.129757,
		34.877537, 35.235451, 53.798424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.451332, 35.711060, 53.713478>,  <34.287830, 35.601501, 53.707596>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.451332, 35.711060, 53.713478> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.179531, 35.512569, 53.929642>,  <33.016453, 35.393475, 54.059338>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.179531, 35.512569, 53.929642>,  <33.451332, 35.711060, 53.713478>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.179531, 35.512569, 53.929642> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236803, -0.548812, -0.801704,
		0.694410, -0.672727, 0.255409,
		-0.679499, -0.496229, 0.540404,
		32.975681, 35.363701, 54.091763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.604595, 35.041515, 53.647999>,  <33.451332, 35.711060, 53.713478>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.604595, 35.041515, 53.647999> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.226181, 35.167713, 53.677589>,  <32.999130, 35.243431, 53.695343>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.226181, 35.167713, 53.677589>,  <33.604595, 35.041515, 53.647999>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.226181, 35.167713, 53.677589> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139240, -0.189628, -0.971933,
		-0.292617, -0.929785, 0.223326,
		-0.946038, 0.315500, 0.073975,
		32.942371, 35.262363, 53.699783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.209297, 34.569958, 53.207321>,  <33.604595, 35.041515, 53.647999>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.209297, 34.569958, 53.207321> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.009491, 34.912338, 53.260723>,  <32.889606, 35.117767, 53.292767>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.009491, 34.912338, 53.260723>,  <33.209297, 34.569958, 53.207321>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.009491, 34.912338, 53.260723> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194608, 0.039301, -0.980093,
		-0.844163, -0.515555, 0.146944,
		-0.499517, 0.855955, 0.133508,
		32.859634, 35.169125, 53.300774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.597839, 34.383297, 52.859577>,  <33.209297, 34.569958, 53.207321>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.597839, 34.383297, 52.859577> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.602226, 34.781986, 52.891659>,  <32.604858, 35.021198, 52.910908>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.602226, 34.781986, 52.891659>,  <32.597839, 34.383297, 52.859577>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.602226, 34.781986, 52.891659> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248793, 0.080402, -0.965214,
		-0.968495, -0.009367, 0.248858,
		0.010968, 0.996719, 0.080200,
		32.605518, 35.081001, 52.915718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.945402, 34.660946, 52.504589>,  <32.597839, 34.383297, 52.859577>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.945402, 34.660946, 52.504589> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.213097, 34.958069, 52.512161>,  <32.373714, 35.136345, 52.516705>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.213097, 34.958069, 52.512161>,  <31.945402, 34.660946, 52.504589>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.213097, 34.958069, 52.512161> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186077, 0.192203, -0.963552,
		-0.719376, 0.641320, 0.266849,
		0.669234, 0.742810, 0.018932,
		32.413868, 35.180912, 52.517841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.648979, 35.303616, 52.298130>,  <31.945402, 34.660946, 52.504589>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.648979, 35.303616, 52.298130> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.037926, 35.352810, 52.218758>,  <32.271294, 35.382324, 52.171135>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.037926, 35.352810, 52.218758>,  <31.648979, 35.303616, 52.298130>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.037926, 35.352810, 52.218758> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228145, 0.320338, -0.919420,
		-0.049507, 0.939286, 0.339545,
		0.972368, 0.122983, -0.198435,
		32.329636, 35.389706, 52.159225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.569050, 35.673420, 51.700710>,  <31.648979, 35.303616, 52.298130>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.569050, 35.673420, 51.700710> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.965530, 35.621651, 51.711781>,  <32.203419, 35.590588, 51.718422>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.965530, 35.621651, 51.711781>,  <31.569050, 35.673420, 51.700710>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.965530, 35.621651, 51.711781> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056036, 0.220916, -0.973682,
		0.119905, 0.966667, 0.226225,
		0.991203, -0.129426, 0.027679,
		32.262890, 35.582825, 51.720085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.897785, 36.379482, 51.512081>,  <31.569050, 35.673420, 51.700710>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.897785, 36.379482, 51.512081> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.158936, 36.095280, 51.407055>,  <32.315624, 35.924759, 51.344040>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.158936, 36.095280, 51.407055>,  <31.897785, 36.379482, 51.512081>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.158936, 36.095280, 51.407055> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174849, 0.478635, -0.860428,
		0.737010, 0.515842, 0.436719,
		0.652874, -0.710504, -0.262564,
		32.354797, 35.882130, 51.328285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.486301, 36.657837, 51.131721>,  <31.897785, 36.379482, 51.512081>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.486301, 36.657837, 51.131721> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.486084, 36.275726, 51.013435>,  <32.485954, 36.046459, 50.942463>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.486084, 36.275726, 51.013435>,  <32.486301, 36.657837, 51.131721>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.486084, 36.275726, 51.013435> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265713, 0.284944, -0.920979,
		0.964052, -0.079076, 0.253675,
		-0.000544, -0.955277, -0.295712,
		32.485920, 35.989143, 50.924721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.130470, 36.624233, 50.790993>,  <32.486301, 36.657837, 51.131721>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.130470, 36.624233, 50.790993> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.929222, 36.298912, 50.674095>,  <32.808472, 36.103718, 50.603958>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.929222, 36.298912, 50.674095>,  <33.130470, 36.624233, 50.790993>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.929222, 36.298912, 50.674095> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329040, 0.132420, -0.934985,
		0.799127, -0.566569, 0.200987,
		-0.503119, -0.813305, -0.292244,
		32.778286, 36.054920, 50.586422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.563320, 36.291012, 50.330536>,  <33.130470, 36.624233, 50.790993>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.563320, 36.291012, 50.330536> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.216877, 36.106472, 50.253574>,  <33.009010, 35.995750, 50.207397>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.216877, 36.106472, 50.253574>,  <33.563320, 36.291012, 50.330536>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.216877, 36.106472, 50.253574> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174798, 0.081081, -0.981260,
		0.468303, -0.883507, 0.010418,
		-0.866105, -0.461348, -0.192406,
		32.957047, 35.968067, 50.195854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.761192, 35.746124, 49.861561>,  <33.563320, 36.291012, 50.330536>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.761192, 35.746124, 49.861561> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.373798, 35.838860, 49.825127>,  <33.141361, 35.894501, 49.803265>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.373798, 35.838860, 49.825127>,  <33.761192, 35.746124, 49.861561>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.373798, 35.838860, 49.825127> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082721, -0.045583, -0.995530,
		-0.234955, -0.971685, 0.024968,
		-0.968480, 0.231839, -0.091089,
		33.083256, 35.908409, 49.797798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.543739, 35.362526, 49.338512>,  <33.761192, 35.746124, 49.861561>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.543739, 35.362526, 49.338512> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.267727, 35.651997, 49.343426>,  <33.102119, 35.825680, 49.346375>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.267727, 35.651997, 49.343426>,  <33.543739, 35.362526, 49.338512>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.267727, 35.651997, 49.343426> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211013, 0.217377, -0.953006,
		-0.692337, -0.655012, -0.302702,
		-0.690031, 0.723676, 0.012282,
		33.060719, 35.869099, 49.347111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.167316, 35.254112, 48.684818>,  <33.543739, 35.362526, 49.338512>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.167316, 35.254112, 48.684818> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.073860, 35.627930, 48.792183>,  <33.017788, 35.852219, 48.856602>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.073860, 35.627930, 48.792183>,  <33.167316, 35.254112, 48.684818>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.073860, 35.627930, 48.792183> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204753, 0.317152, -0.926008,
		-0.950520, -0.161395, -0.265450,
		-0.233641, 0.934541, 0.268413,
		33.003769, 35.908291, 48.872707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.885441, 35.516018, 48.139439>,  <33.167316, 35.254112, 48.684818>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.885441, 35.516018, 48.139439> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.960419, 35.859550, 48.330128>,  <33.005405, 36.065670, 48.444542>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.960419, 35.859550, 48.330128>,  <32.885441, 35.516018, 48.139439>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.960419, 35.859550, 48.330128> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035622, 0.479062, -0.877058,
		-0.981628, 0.181386, 0.059207,
		0.187450, 0.858836, 0.476722,
		33.016655, 36.117203, 48.473145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.595432, 35.970303, 47.681644>,  <32.885441, 35.516018, 48.139439>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.595432, 35.970303, 47.681644> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.853138, 36.184875, 47.899696>,  <33.007763, 36.313618, 48.030525>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.853138, 36.184875, 47.899696>,  <32.595432, 35.970303, 47.681644>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.853138, 36.184875, 47.899696> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274048, 0.503518, -0.819370,
		-0.714016, 0.677284, 0.177392,
		0.644266, 0.536430, 0.545128,
		33.046417, 36.345806, 48.063236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.427345, 36.634014, 47.475864>,  <32.595432, 35.970303, 47.681644>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.427345, 36.634014, 47.475864> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.789436, 36.658890, 47.644009>,  <33.006691, 36.673817, 47.744896>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.789436, 36.658890, 47.644009>,  <32.427345, 36.634014, 47.475864>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.789436, 36.658890, 47.644009> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229501, 0.760995, -0.606808,
		-0.357627, 0.645770, 0.674599,
		0.905225, 0.062190, 0.420357,
		33.061005, 36.677547, 47.770115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.608223, 37.283566, 47.597263>,  <32.427345, 36.634014, 47.475864>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.608223, 37.283566, 47.597263> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.963112, 37.106083, 47.546745>,  <33.176044, 36.999592, 47.516434>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.963112, 37.106083, 47.546745>,  <32.608223, 37.283566, 47.597263>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.963112, 37.106083, 47.546745> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208499, 0.629868, -0.748194,
		0.411530, 0.637486, 0.651349,
		0.887227, -0.443709, -0.126295,
		33.229279, 36.972969, 47.508858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.092129, 37.905724, 47.346283>,  <32.608223, 37.283566, 47.597263>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.092129, 37.905724, 47.346283> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.285103, 37.562580, 47.275471>,  <33.400887, 37.356693, 47.232983>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.285103, 37.562580, 47.275471>,  <33.092129, 37.905724, 47.346283>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.285103, 37.562580, 47.275471> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355866, 0.376628, -0.855284,
		0.800386, 0.349617, 0.486980,
		0.482432, -0.857857, -0.177031,
		33.429832, 37.305222, 47.222363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.637428, 38.162071, 47.185516>,  <33.092129, 37.905724, 47.346283>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.637428, 38.162071, 47.185516> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.673252, 37.785469, 47.055565>,  <33.694748, 37.559509, 46.977596>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.673252, 37.785469, 47.055565>,  <33.637428, 38.162071, 47.185516>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.673252, 37.785469, 47.055565> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242589, 0.336984, -0.909721,
		0.965986, 0.002668, 0.258580,
		0.089564, -0.941507, -0.324874,
		33.700123, 37.503017, 46.958103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.269207, 38.107384, 46.942753>,  <33.637428, 38.162071, 47.185516>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.269207, 38.107384, 46.942753> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.060940, 37.821659, 46.755703>,  <33.935982, 37.650227, 46.643475>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.060940, 37.821659, 46.755703>,  <34.269207, 38.107384, 46.942753>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.060940, 37.821659, 46.755703> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253925, 0.393373, -0.883617,
		0.815126, -0.578809, -0.023434,
		-0.520664, -0.714309, -0.467623,
		33.904739, 37.607365, 46.615417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<38.592842, 32.638321, 28.993786> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.298504, 32.498272, 29.225626>,  <38.121899, 32.414242, 29.364731>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.298504, 32.498272, 29.225626>,  <38.592842, 32.638321, 28.993786>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.298504, 32.498272, 29.225626> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211852, 0.693941, 0.688161,
		-0.643151, 0.629172, -0.436461,
		-0.735850, -0.350126, 0.579600,
		38.077747, 32.393234, 29.399506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.226154, 33.249454, 29.240871>,  <38.592842, 32.638321, 28.993786>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.226154, 33.249454, 29.240871> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.133411, 32.964542, 29.505869>,  <38.077766, 32.793594, 29.664867>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.133411, 32.964542, 29.505869>,  <38.226154, 33.249454, 29.240871>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.133411, 32.964542, 29.505869> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357654, 0.570930, 0.739001,
		-0.904615, 0.408284, 0.122377,
		-0.231854, -0.712280, 0.662496,
		38.063854, 32.750858, 29.704618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.154221, 33.558559, 29.849415>,  <38.226154, 33.249454, 29.240871>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.154221, 33.558559, 29.849415> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.133118, 33.197514, 30.020294>,  <38.120457, 32.980885, 30.122822>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.133118, 33.197514, 30.020294>,  <38.154221, 33.558559, 29.849415>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.133118, 33.197514, 30.020294> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330990, 0.387806, 0.860263,
		-0.942159, 0.186779, 0.278300,
		-0.052753, -0.902619, 0.427197,
		38.117290, 32.926727, 30.148453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.821724, 33.586208, 30.572346>,  <38.154221, 33.558559, 29.849415>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.821724, 33.586208, 30.572346> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.057880, 33.263569, 30.560776>,  <38.199574, 33.069984, 30.553833>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.057880, 33.263569, 30.560776>,  <37.821724, 33.586208, 30.572346>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.057880, 33.263569, 30.560776> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388842, 0.252839, 0.885931,
		-0.707280, -0.534290, 0.462914,
		0.590387, -0.806602, -0.028926,
		38.234997, 33.021587, 30.552097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.683170, 33.256718, 31.164164>,  <37.821724, 33.586208, 30.572346>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.683170, 33.256718, 31.164164> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.055946, 33.149834, 31.066116>,  <38.279613, 33.085705, 31.007288>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.055946, 33.149834, 31.066116>,  <37.683170, 33.256718, 31.164164>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.055946, 33.149834, 31.066116> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325832, 0.320488, 0.889450,
		-0.159109, -0.908784, 0.385741,
		0.931943, -0.267206, -0.245118,
		38.335529, 33.069672, 30.992580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.915607, 32.890636, 31.773680>,  <37.683170, 33.256718, 31.164164>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.915607, 32.890636, 31.773680> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.227627, 33.025566, 31.562876>,  <38.414837, 33.106525, 31.436394>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.227627, 33.025566, 31.562876>,  <37.915607, 32.890636, 31.773680>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.227627, 33.025566, 31.562876> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552949, 0.022608, 0.832909,
		0.292875, -0.941117, -0.168887,
		0.780047, 0.337324, -0.527011,
		38.461639, 33.126762, 31.404772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.467587, 32.637062, 32.192047>,  <37.915607, 32.890636, 31.773680>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.467587, 32.637062, 32.192047> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.660313, 32.891327, 31.950788>,  <38.775948, 33.043888, 31.806032>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.660313, 32.891327, 31.950788>,  <38.467587, 32.637062, 32.192047>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.660313, 32.891327, 31.950788> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.679527, 0.163545, 0.715189,
		0.553262, -0.754443, -0.353153,
		0.481813, 0.635664, -0.603148,
		38.804855, 33.082027, 31.769844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.124382, 32.472748, 32.352600>,  <38.467587, 32.637062, 32.192047>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.124382, 32.472748, 32.352600> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.125053, 32.839184, 32.192215>,  <39.125458, 33.059048, 32.095985>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.125053, 32.839184, 32.192215>,  <39.124382, 32.472748, 32.352600>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.125053, 32.839184, 32.192215> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.623844, 0.312411, 0.716392,
		0.781547, -0.251343, -0.570974,
		0.001681, 0.916093, -0.400962,
		39.125557, 33.114010, 32.071926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.831345, 32.552258, 32.195221>,  <39.124382, 32.472748, 32.352600>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.831345, 32.552258, 32.195221> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.646572, 32.907001, 32.199062>,  <39.535709, 33.119850, 32.201366>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.646572, 32.907001, 32.199062>,  <39.831345, 32.552258, 32.195221>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.646572, 32.907001, 32.199062> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.718836, 0.368030, 0.589770,
		0.519511, 0.279336, -0.807514,
		-0.461933, 0.886863, 0.009601,
		39.507992, 33.173061, 32.201942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.402855, 33.063351, 32.161785>,  <39.831345, 32.552258, 32.195221>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.402855, 33.063351, 32.161785> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.090847, 33.269981, 32.303047>,  <39.903641, 33.393959, 32.387806>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.090847, 33.269981, 32.303047>,  <40.402855, 33.063351, 32.161785>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.090847, 33.269981, 32.303047> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617776, 0.545893, 0.565998,
		0.099596, 0.659661, -0.744935,
		-0.780021, 0.516574, 0.353154,
		39.856842, 33.424953, 32.408993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.639080, 33.796322, 32.245895>,  <40.402855, 33.063351, 32.161785>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.639080, 33.796322, 32.245895> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.297703, 33.822346, 32.452740>,  <40.092876, 33.837959, 32.576847>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.297703, 33.822346, 32.452740>,  <40.639080, 33.796322, 32.245895>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.297703, 33.822346, 32.452740> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465335, 0.541980, 0.699801,
		-0.234733, 0.837869, -0.492824,
		-0.853442, 0.065061, 0.517110,
		40.041672, 33.841866, 32.607872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.597885, 34.405899, 32.441841>,  <40.639080, 33.796322, 32.245895>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.597885, 34.405899, 32.441841> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.347290, 34.232697, 32.701073>,  <40.196934, 34.128773, 32.856613>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.347290, 34.232697, 32.701073>,  <40.597885, 34.405899, 32.441841>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.347290, 34.232697, 32.701073> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312045, 0.622601, 0.717632,
		-0.714238, 0.651821, -0.254936,
		-0.626491, -0.433009, 0.648084,
		40.159344, 34.102795, 32.895496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.208027, 34.932697, 32.770622>,  <40.597885, 34.405899, 32.441841>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.208027, 34.932697, 32.770622> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.180920, 34.636078, 33.037609>,  <40.164658, 34.458107, 33.197800>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.180920, 34.636078, 33.037609>,  <40.208027, 34.932697, 32.770622>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.180920, 34.636078, 33.037609> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351632, 0.608324, 0.711545,
		-0.933682, 0.282921, 0.219530,
		-0.067766, -0.741551, 0.667466,
		40.160591, 34.413612, 33.237850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.079365, 35.263485, 33.351009>,  <40.208027, 34.932697, 32.770622>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.079365, 35.263485, 33.351009> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.202515, 34.899204, 33.461163>,  <40.276405, 34.680637, 33.527256>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.202515, 34.899204, 33.461163>,  <40.079365, 35.263485, 33.351009>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.202515, 34.899204, 33.461163> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536883, 0.405251, 0.739952,
		-0.785474, -0.079965, 0.613707,
		0.307876, -0.910702, 0.275382,
		40.294876, 34.625996, 33.543777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.166409, 35.361786, 34.049515>,  <40.079365, 35.263485, 33.351009>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.166409, 35.361786, 34.049515> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.385883, 35.034634, 33.980217>,  <40.517570, 34.838345, 33.938637>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.385883, 35.034634, 33.980217>,  <40.166409, 35.361786, 34.049515>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.385883, 35.034634, 33.980217> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567721, 0.212391, 0.795351,
		-0.613704, -0.534756, 0.580864,
		0.548689, -0.817879, -0.173247,
		40.550491, 34.789268, 33.928242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.345177, 35.129814, 34.650158>,  <40.166409, 35.361786, 34.049515>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.345177, 35.129814, 34.650158> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.641144, 35.006554, 34.410969>,  <40.818722, 34.932598, 34.267456>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.641144, 35.006554, 34.410969>,  <40.345177, 35.129814, 34.650158>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.641144, 35.006554, 34.410969> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.670019, 0.258277, 0.695965,
		-0.060022, -0.915606, 0.397571,
		0.739914, -0.308154, -0.597971,
		40.863117, 34.914108, 34.231579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.830688, 34.673634, 35.044388>,  <40.345177, 35.129814, 34.650158>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.830688, 34.673634, 35.044388> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.040607, 34.773983, 34.719021>,  <41.166561, 34.834194, 34.523800>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.040607, 34.773983, 34.719021>,  <40.830688, 34.673634, 35.044388>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.040607, 34.773983, 34.719021> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.768126, 0.272235, 0.579544,
		0.366835, -0.928950, -0.049837,
		0.524800, 0.250878, -0.813416,
		41.198048, 34.849247, 34.474995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.332481, 34.217110, 35.025932>,  <40.830688, 34.673634, 35.044388>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.332481, 34.217110, 35.025932> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.432434, 34.554619, 34.835938>,  <41.492405, 34.757126, 34.721943>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.432434, 34.554619, 34.835938>,  <41.332481, 34.217110, 35.025932>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.432434, 34.554619, 34.835938> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.770481, 0.123832, 0.625320,
		0.586445, -0.522221, -0.619167,
		0.249882, 0.843772, -0.474982,
		41.507401, 34.807751, 34.693443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.045620, 34.133392, 34.977200>,  <41.332481, 34.217110, 35.025932>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.045620, 34.133392, 34.977200> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.983765, 34.526005, 34.932167>,  <41.946651, 34.761574, 34.905148>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.983765, 34.526005, 34.932167>,  <42.045620, 34.133392, 34.977200>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.983765, 34.526005, 34.932167> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.785775, 0.191269, 0.588196,
		0.598869, 0.002493, -0.800843,
		-0.154643, 0.981535, -0.112586,
		41.937370, 34.820465, 34.898392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.617554, 34.234642, 35.226040>,  <42.045620, 34.133392, 34.977200>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.617554, 34.234642, 35.226040> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.469189, 34.605537, 35.205437>,  <42.380169, 34.828075, 35.193073>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.469189, 34.605537, 35.205437>,  <42.617554, 34.234642, 35.226040>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.469189, 34.605537, 35.205437> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.807263, 0.349347, 0.475691,
		0.459074, 0.134858, -0.878103,
		-0.370913, 0.927238, -0.051510,
		42.357914, 34.883709, 35.189983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.179459, 34.729527, 35.047443>,  <42.617554, 34.234642, 35.226040>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.179459, 34.729527, 35.047443> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.887363, 34.927052, 35.236290>,  <42.712105, 35.045567, 35.349598>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.887363, 34.927052, 35.236290>,  <43.179459, 34.729527, 35.047443>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.887363, 34.927052, 35.236290> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.668134, 0.371900, 0.644428,
		0.142646, 0.786027, -0.601510,
		-0.730240, 0.493814, 0.472121,
		42.668293, 35.075195, 35.377926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.931019, 34.853542, 35.397198>,  <43.179459, 34.729527, 35.047443>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.931019, 34.853542, 35.397198> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.289925, 34.786606, 35.233780>,  <44.505268, 34.746445, 35.135731>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.289925, 34.786606, 35.233780>,  <43.931019, 34.853542, 35.397198>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.289925, 34.786606, 35.233780> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439960, -0.262016, -0.858943,
		0.036694, 0.950444, -0.308723,
		0.897268, -0.167344, -0.408543,
		44.559105, 34.736404, 35.111217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.835613, 35.129192, 34.742878>,  <43.931019, 34.853542, 35.397198>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.835613, 35.129192, 34.742878> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.158928, 34.894642, 34.721592>,  <44.352917, 34.753910, 34.708820>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.158928, 34.894642, 34.721592>,  <43.835613, 35.129192, 34.742878>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.158928, 34.894642, 34.721592> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331804, -0.378979, -0.863876,
		0.486391, 0.715916, -0.500886,
		0.808288, -0.586378, -0.053212,
		44.401413, 34.718727, 34.705627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.081181, 35.141724, 34.043510>,  <43.835613, 35.129192, 34.742878>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.081181, 35.141724, 34.043510> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.269695, 34.823296, 34.195389>,  <44.382805, 34.632240, 34.286514>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.269695, 34.823296, 34.195389>,  <44.081181, 35.141724, 34.043510>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.269695, 34.823296, 34.195389> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232228, -0.527311, -0.817321,
		0.850859, 0.297015, -0.433383,
		0.471284, -0.796069, 0.379692,
		44.411079, 34.584476, 34.309296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.434292, 34.838242, 33.502419>,  <44.081181, 35.141724, 34.043510>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.434292, 34.838242, 33.502419> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.393085, 34.555172, 33.782013>,  <44.368362, 34.385330, 33.949768>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.393085, 34.555172, 33.782013>,  <44.434292, 34.838242, 33.502419>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.393085, 34.555172, 33.782013> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280620, -0.653504, -0.702983,
		0.954275, -0.268567, -0.131267,
		-0.103015, -0.707676, 0.698987,
		44.362183, 34.342869, 33.991711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.781120, 34.290508, 33.153927>,  <44.434292, 34.838242, 33.502419>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.781120, 34.290508, 33.153927> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.607975, 34.102398, 33.461555>,  <44.504086, 33.989532, 33.646133>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.607975, 34.102398, 33.461555>,  <44.781120, 34.290508, 33.153927>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.607975, 34.102398, 33.461555> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103646, -0.821519, -0.560682,
		0.895480, -0.322412, 0.306866,
		-0.432867, -0.470274, 0.769070,
		44.478115, 33.961315, 33.692276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.024067, 33.500965, 33.139107>,  <44.781120, 34.290508, 33.153927>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.024067, 33.500965, 33.139107> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.696716, 33.490974, 33.368763>,  <44.500305, 33.484982, 33.506557>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.696716, 33.490974, 33.368763>,  <45.024067, 33.500965, 33.139107>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.696716, 33.490974, 33.368763> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351669, -0.768392, -0.534698,
		0.454518, -0.639491, 0.620051,
		-0.818377, -0.024977, 0.574138,
		44.451202, 33.483482, 33.541004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.946804, 32.820808, 33.438850>,  <45.024067, 33.500965, 33.139107>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.946804, 32.820808, 33.438850> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.591534, 33.002537, 33.411324>,  <44.378372, 33.111572, 33.394806>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.591534, 33.002537, 33.411324>,  <44.946804, 32.820808, 33.438850>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.591534, 33.002537, 33.411324> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387380, -0.820875, -0.419644,
		-0.247145, -0.346059, 0.905076,
		-0.888176, 0.454321, -0.068818,
		44.325081, 33.138832, 33.390678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.457588, 32.282822, 33.459923>,  <44.946804, 32.820808, 33.438850>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.457588, 32.282822, 33.459923> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.232399, 32.579632, 33.314346>,  <44.097286, 32.757717, 33.227001>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.232399, 32.579632, 33.314346>,  <44.457588, 32.282822, 33.459923>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.232399, 32.579632, 33.314346> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476952, -0.651320, -0.590169,
		-0.674962, -0.158670, 0.720590,
		-0.562976, 0.742029, -0.363938,
		44.063507, 32.802242, 33.205166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.783524, 32.074081, 33.460476>,  <44.457588, 32.282822, 33.459923>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.783524, 32.074081, 33.460476> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.781898, 32.380215, 33.203026>,  <43.780922, 32.563892, 33.048557>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.781898, 32.380215, 33.203026>,  <43.783524, 32.074081, 33.460476>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.781898, 32.380215, 33.203026> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.630500, -0.501536, -0.592394,
		-0.776179, 0.403400, 0.484578,
		-0.004061, 0.765330, -0.643625,
		43.780682, 32.609814, 33.009937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.101704, 32.159801, 33.253834>,  <43.783524, 32.074081, 33.460476>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.101704, 32.159801, 33.253834> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.280903, 32.369152, 32.963905>,  <43.388424, 32.494762, 32.789948>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.280903, 32.369152, 32.963905>,  <43.101704, 32.159801, 33.253834>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.280903, 32.369152, 32.963905> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.679388, -0.327697, -0.656541,
		-0.581143, 0.786567, 0.208771,
		0.448000, 0.523381, -0.724823,
		43.415302, 32.526165, 32.746460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.586998, 32.508327, 32.949005>,  <43.101704, 32.159801, 33.253834>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.586998, 32.508327, 32.949005> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.878857, 32.458057, 32.680134>,  <43.053970, 32.427895, 32.518810>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.878857, 32.458057, 32.680134>,  <42.586998, 32.508327, 32.949005>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.878857, 32.458057, 32.680134> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.649353, -0.435486, -0.623452,
		-0.214369, 0.891380, -0.399360,
		0.729648, -0.125677, -0.672175,
		43.097752, 32.420353, 32.478481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.315113, 32.721783, 32.346321>,  <42.586998, 32.508327, 32.949005>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.315113, 32.721783, 32.346321> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.640522, 32.507366, 32.256134>,  <42.835770, 32.378716, 32.202023>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.640522, 32.507366, 32.256134>,  <42.315113, 32.721783, 32.346321>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.640522, 32.507366, 32.256134> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538646, -0.548464, -0.639569,
		0.219178, 0.641751, -0.734927,
		0.813524, -0.536044, -0.225465,
		42.884579, 32.346554, 32.188496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.433987, 32.733589, 31.590834>,  <42.315113, 32.721783, 32.346321>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.433987, 32.733589, 31.590834> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.606651, 32.403915, 31.737474>,  <42.710251, 32.206112, 31.825459>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.606651, 32.403915, 31.737474>,  <42.433987, 32.733589, 31.590834>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.606651, 32.403915, 31.737474> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509679, -0.558172, -0.654730,
		0.744243, 0.095770, -0.661007,
		0.431659, -0.824180, 0.366604,
		42.736149, 32.156662, 31.847456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.590618, 32.418896, 31.021076>,  <42.433987, 32.733589, 31.590834>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.590618, 32.418896, 31.021076> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.591202, 32.137287, 31.305147>,  <42.591553, 31.968321, 31.475590>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.591202, 32.137287, 31.305147>,  <42.590618, 32.418896, 31.021076>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.591202, 32.137287, 31.305147> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.641159, -0.545655, -0.539607,
		0.767407, -0.454547, -0.452188,
		0.001462, -0.704023, 0.710176,
		42.591640, 31.926081, 31.518200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.469440, 31.855255, 30.646416>,  <42.590618, 32.418896, 31.021076>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.469440, 31.855255, 30.646416> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.376190, 31.739471, 31.017763>,  <42.320240, 31.670000, 31.240572>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.376190, 31.739471, 31.017763>,  <42.469440, 31.855255, 30.646416>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.376190, 31.739471, 31.017763> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.616293, -0.694492, -0.371301,
		0.752220, -0.658706, -0.016488,
		-0.233127, -0.289461, 0.928366,
		42.306252, 31.652634, 31.296272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.577854, 31.017075, 30.675596>,  <42.469440, 31.855255, 30.646416>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.577854, 31.017075, 30.675596> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.341782, 31.157904, 30.966177>,  <42.200138, 31.242401, 31.140526>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.341782, 31.157904, 30.966177>,  <42.577854, 31.017075, 30.675596>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.341782, 31.157904, 30.966177> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.708078, -0.657948, -0.256378,
		0.387703, -0.665693, 0.637604,
		-0.590179, 0.352075, 0.726452,
		42.164726, 31.263527, 31.184113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.177822, 30.452381, 30.713409>,  <42.577854, 31.017075, 30.675596>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.177822, 30.452381, 30.713409> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.963615, 30.727753, 30.909077>,  <41.835091, 30.892977, 31.026476>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.963615, 30.727753, 30.909077>,  <42.177822, 30.452381, 30.713409>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.963615, 30.727753, 30.909077> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.844240, -0.451410, -0.288942,
		0.021899, -0.567708, 0.822939,
		-0.535518, 0.688430, 0.489167,
		41.802959, 30.934282, 31.055826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.639301, 30.041367, 31.003628>,  <42.177822, 30.452381, 30.713409>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.639301, 30.041367, 31.003628> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.528805, 30.425200, 30.982128>,  <41.462505, 30.655500, 30.969229>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.528805, 30.425200, 30.982128>,  <41.639301, 30.041367, 31.003628>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.528805, 30.425200, 30.982128> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.896380, -0.277416, -0.345750,
		-0.346687, -0.047331, 0.936786,
		-0.276244, 0.959583, -0.053750,
		41.445930, 30.713074, 30.966003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.888901, 30.050119, 31.085783>,  <41.639301, 30.041367, 31.003628>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.888901, 30.050119, 31.085783> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.946499, 30.416782, 30.936649>,  <40.981056, 30.636780, 30.847170>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.946499, 30.416782, 30.936649>,  <40.888901, 30.050119, 31.085783>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.946499, 30.416782, 30.936649> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.908451, -0.026952, -0.417121,
		-0.392406, 0.398762, 0.828858,
		0.143992, 0.916658, -0.372832,
		40.989697, 30.691780, 30.824800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.313896, 30.410492, 31.259956>,  <40.888901, 30.050119, 31.085783>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.313896, 30.410492, 31.259956> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.482628, 30.572475, 30.935471>,  <40.583866, 30.669666, 30.740780>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.482628, 30.572475, 30.935471>,  <40.313896, 30.410492, 31.259956>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.482628, 30.572475, 30.935471> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.836622, -0.171000, -0.520407,
		-0.349462, 0.898202, 0.266665,
		0.421831, 0.404960, -0.811213,
		40.609177, 30.693964, 30.692106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.927254, 30.998600, 31.074646>,  <40.313896, 30.410492, 31.259956>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.927254, 30.998600, 31.074646> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.104675, 30.858212, 30.744780>,  <40.211128, 30.773979, 30.546860>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.104675, 30.858212, 30.744780>,  <39.927254, 30.998600, 31.074646>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.104675, 30.858212, 30.744780> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.895894, -0.147863, -0.418940,
		0.025098, 0.924639, -0.380018,
		0.443558, -0.350971, -0.824667,
		40.237743, 30.752920, 30.497379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<38.731400, 36.387756, 43.092297> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.337292, 36.420509, 43.032253>,  <38.100826, 36.440159, 42.996227>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.337292, 36.420509, 43.032253>,  <38.731400, 36.387756, 43.092297>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.337292, 36.420509, 43.032253> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136361, -0.153397, -0.978711,
		-0.103156, -0.984767, 0.139974,
		-0.985273, 0.081873, -0.150108,
		38.041710, 36.445072, 42.987221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.548496, 35.857368, 42.624619>,  <38.731400, 36.387756, 43.092297>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.548496, 35.857368, 42.624619> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.249226, 36.121891, 42.603043>,  <38.069664, 36.280605, 42.590099>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.249226, 36.121891, 42.603043>,  <38.548496, 35.857368, 42.624619>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.249226, 36.121891, 42.603043> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058389, -0.146600, -0.987471,
		-0.660929, -0.735650, 0.148296,
		-0.748173, 0.661307, -0.053938,
		38.024773, 36.320282, 42.586861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.146786, 35.612164, 42.071556>,  <38.548496, 35.857368, 42.624619>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.146786, 35.612164, 42.071556> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.050850, 36.000305, 42.083450>,  <37.993290, 36.233192, 42.090588>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.050850, 36.000305, 42.083450>,  <38.146786, 35.612164, 42.071556>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.050850, 36.000305, 42.083450> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076387, 0.011676, -0.997010,
		-0.967803, -0.241395, 0.071322,
		-0.239840, 0.970357, 0.029740,
		37.978897, 36.291412, 42.092373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.622166, 35.757023, 41.533421>,  <38.146786, 35.612164, 42.071556>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.622166, 35.757023, 41.533421> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.769650, 36.114853, 41.634449>,  <37.858139, 36.329552, 41.695065>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.769650, 36.114853, 41.634449>,  <37.622166, 35.757023, 41.533421>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.769650, 36.114853, 41.634449> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107408, 0.310893, -0.944356,
		-0.923317, 0.321069, 0.210714,
		0.368713, 0.894572, 0.252568,
		37.880264, 36.383224, 41.710220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.193874, 36.356220, 41.145691>,  <37.622166, 35.757023, 41.533421>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.193874, 36.356220, 41.145691> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.544399, 36.507015, 41.265663>,  <37.754715, 36.597492, 41.337646>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.544399, 36.507015, 41.265663>,  <37.193874, 36.356220, 41.145691>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.544399, 36.507015, 41.265663> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142646, 0.391618, -0.909004,
		-0.460145, 0.839353, 0.289402,
		0.876310, 0.376991, 0.299932,
		37.807293, 36.620113, 41.355644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.125107, 36.973106, 40.872089>,  <37.193874, 36.356220, 41.145691>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.125107, 36.973106, 40.872089> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.510334, 36.906067, 40.956379>,  <37.741470, 36.865845, 41.006954>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.510334, 36.906067, 40.956379>,  <37.125107, 36.973106, 40.872089>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.510334, 36.906067, 40.956379> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245474, 0.225015, -0.942927,
		0.110618, 0.959833, 0.257847,
		0.963071, -0.167599, 0.210724,
		37.799255, 36.855785, 41.019596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.390213, 37.528122, 40.646603>,  <37.125107, 36.973106, 40.872089>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.390213, 37.528122, 40.646603> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.695080, 37.271889, 40.684032>,  <37.877998, 37.118149, 40.706490>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.695080, 37.271889, 40.684032>,  <37.390213, 37.528122, 40.646603>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.695080, 37.271889, 40.684032> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159202, 0.045355, -0.986204,
		0.627504, 0.766546, 0.136550,
		0.762164, -0.640585, 0.093575,
		37.923729, 37.079712, 40.712105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.862740, 37.804844, 40.160217>,  <37.390213, 37.528122, 40.646603>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.862740, 37.804844, 40.160217> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.011280, 37.438808, 40.223106>,  <38.100403, 37.219189, 40.260838>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.011280, 37.438808, 40.223106>,  <37.862740, 37.804844, 40.160217>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.011280, 37.438808, 40.223106> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356802, -0.015685, -0.934049,
		0.857201, 0.402952, 0.320680,
		0.371347, -0.915087, 0.157219,
		38.122684, 37.164284, 40.270271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.627647, 37.861443, 39.930645>,  <37.862740, 37.804844, 40.160217>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.627647, 37.861443, 39.930645> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.510937, 37.478882, 39.935677>,  <38.440910, 37.249344, 39.938694>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.510937, 37.478882, 39.935677>,  <38.627647, 37.861443, 39.930645>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.510937, 37.478882, 39.935677> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340468, -0.116139, -0.933056,
		0.893840, -0.267958, 0.359511,
		-0.291773, -0.956405, 0.012578,
		38.423405, 37.191959, 39.939449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.243511, 37.478348, 39.820312>,  <38.627647, 37.861443, 39.930645>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.243511, 37.478348, 39.820312> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.929173, 37.252186, 39.720100>,  <38.740570, 37.116489, 39.659973>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.929173, 37.252186, 39.720100>,  <39.243511, 37.478348, 39.820312>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.929173, 37.252186, 39.720100> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365497, -0.097850, -0.925655,
		0.498855, -0.818990, 0.283549,
		-0.785847, -0.565404, -0.250525,
		38.693417, 37.082565, 39.644943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.441261, 36.866779, 39.519196>,  <39.243511, 37.478348, 39.820312>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.441261, 36.866779, 39.519196> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.065853, 36.906574, 39.386967>,  <38.840607, 36.930450, 39.307629>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.065853, 36.906574, 39.386967>,  <39.441261, 36.866779, 39.519196>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.065853, 36.906574, 39.386967> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339510, 0.092543, -0.936039,
		-0.062536, -0.990726, -0.120632,
		-0.938521, 0.099492, -0.330574,
		38.784298, 36.936420, 39.287796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.388947, 36.424873, 38.994473>,  <39.441261, 36.866779, 39.519196>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.388947, 36.424873, 38.994473> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.086895, 36.675034, 38.915825>,  <38.905666, 36.825130, 38.868637>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.086895, 36.675034, 38.915825>,  <39.388947, 36.424873, 38.994473>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.086895, 36.675034, 38.915825> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355483, 0.138609, -0.924348,
		-0.550831, -0.767896, -0.326986,
		-0.755127, 0.625398, -0.196624,
		38.860355, 36.862652, 38.856838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.109715, 36.283520, 38.185703>,  <39.388947, 36.424873, 38.994473>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.109715, 36.283520, 38.185703> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.061607, 36.648628, 38.341850>,  <39.032742, 36.867691, 38.435539>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.061607, 36.648628, 38.341850>,  <39.109715, 36.283520, 38.185703>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.061607, 36.648628, 38.341850> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302404, 0.408219, -0.861342,
		-0.945562, 0.014454, -0.325122,
		-0.120271, 0.912770, 0.390367,
		39.025528, 36.922459, 38.458961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.069229, 35.700844, 37.766167>,  <39.109715, 36.283520, 38.185703>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.069229, 35.700844, 37.766167> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.999393, 35.649204, 37.375710>,  <38.957493, 35.618221, 37.141434>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.999393, 35.649204, 37.375710>,  <39.069229, 35.700844, 37.766167>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.999393, 35.649204, 37.375710> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.835323, -0.505442, 0.216250,
		-0.521301, 0.853148, -0.019597,
		-0.174588, -0.129101, -0.976141,
		38.947018, 35.610474, 37.082867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.427559, 36.019951, 37.640514>,  <39.069229, 35.700844, 37.766167>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.427559, 36.019951, 37.640514> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.526485, 35.718201, 37.397285>,  <38.585842, 35.537151, 37.251347>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.526485, 35.718201, 37.397285>,  <38.427559, 36.019951, 37.640514>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.526485, 35.718201, 37.397285> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.737581, -0.553543, 0.386735,
		-0.628337, 0.352856, -0.693314,
		0.247318, -0.754376, -0.608072,
		38.600681, 35.491886, 37.214863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.826378, 35.820839, 37.248260>,  <38.427559, 36.019951, 37.640514>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.826378, 35.820839, 37.248260> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.060207, 35.497040, 37.270145>,  <38.200504, 35.302761, 37.283276>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.060207, 35.497040, 37.270145>,  <37.826378, 35.820839, 37.248260>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.060207, 35.497040, 37.270145> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.627927, -0.408686, 0.662332,
		-0.513796, -0.421533, -0.747210,
		0.584569, -0.809497, 0.054711,
		38.235577, 35.254192, 37.286560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.471939, 35.217812, 37.050182>,  <37.826378, 35.820839, 37.248260>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.471939, 35.217812, 37.050182> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.768867, 35.097931, 37.289890>,  <37.947025, 35.026001, 37.433716>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.768867, 35.097931, 37.289890>,  <37.471939, 35.217812, 37.050182>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.768867, 35.097931, 37.289890> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.662456, -0.462462, 0.589306,
		0.100524, -0.834450, -0.541838,
		0.742326, -0.299705, 0.599275,
		37.991566, 35.008018, 37.469673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.339546, 34.535797, 37.209293>,  <37.471939, 35.217812, 37.050182>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.339546, 34.535797, 37.209293> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.569111, 34.661392, 37.511826>,  <37.706848, 34.736748, 37.693344>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.569111, 34.661392, 37.511826>,  <37.339546, 34.535797, 37.209293>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.569111, 34.661392, 37.511826> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.633387, -0.415227, 0.652999,
		0.519083, -0.853814, -0.039427,
		0.573911, 0.313988, 0.756332,
		37.741283, 34.755589, 37.738724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.224262, 33.979218, 37.692860>,  <37.339546, 34.535797, 37.209293>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.224262, 33.979218, 37.692860> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.410572, 34.229095, 37.943558>,  <37.522358, 34.379021, 38.093975>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.410572, 34.229095, 37.943558>,  <37.224262, 33.979218, 37.692860>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.410572, 34.229095, 37.943558> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.587095, -0.311780, 0.747069,
		0.662097, -0.715925, 0.221536,
		0.465775, 0.624695, 0.626745,
		37.550304, 34.416504, 38.131580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.382950, 33.630867, 38.285519>,  <37.224262, 33.979218, 37.692860>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.382950, 33.630867, 38.285519> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.372593, 34.009918, 38.412849>,  <37.366379, 34.237350, 38.489246>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.372593, 34.009918, 38.412849>,  <37.382950, 33.630867, 38.285519>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.372593, 34.009918, 38.412849> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.630314, -0.262632, 0.730567,
		0.775908, -0.181728, 0.604104,
		-0.025892, 0.947628, 0.318325,
		37.364826, 34.294209, 38.508347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.636757, 33.598949, 38.976677>,  <37.382950, 33.630867, 38.285519>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.636757, 33.598949, 38.976677> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.433426, 33.940155, 38.929398>,  <37.311428, 34.144878, 38.901031>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.433426, 33.940155, 38.929398>,  <37.636757, 33.598949, 38.976677>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.433426, 33.940155, 38.929398> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536448, -0.206284, 0.818334,
		0.673668, 0.479387, 0.562458,
		-0.508325, 0.853015, -0.118199,
		37.280930, 34.196060, 38.893936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.610401, 33.785721, 39.712448>,  <37.636757, 33.598949, 38.976677>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.610401, 33.785721, 39.712448> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.355820, 34.022995, 39.515244>,  <37.203072, 34.165359, 39.396919>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.355820, 34.022995, 39.515244>,  <37.610401, 33.785721, 39.712448>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.355820, 34.022995, 39.515244> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.633034, -0.036531, 0.773261,
		0.440674, 0.804240, 0.398755,
		-0.636454, 0.593181, -0.493013,
		37.164883, 34.200951, 39.367340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.302578, 34.254284, 40.222736>,  <37.610401, 33.785721, 39.712448>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.302578, 34.254284, 40.222736> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.052490, 34.251015, 39.910572>,  <36.902439, 34.249054, 39.723274>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.052490, 34.251015, 39.910572>,  <37.302578, 34.254284, 40.222736>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.052490, 34.251015, 39.910572> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.776355, 0.108843, 0.620827,
		0.079867, 0.994025, -0.074397,
		-0.625216, -0.008175, -0.780409,
		36.864925, 34.248562, 39.676449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.008999, 34.879734, 40.282421>,  <37.302578, 34.254284, 40.222736>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.008999, 34.879734, 40.282421> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.788773, 34.603199, 40.095261>,  <36.656635, 34.437279, 39.982964>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.788773, 34.603199, 40.095261>,  <37.008999, 34.879734, 40.282421>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.788773, 34.603199, 40.095261> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.780728, 0.228003, 0.581789,
		-0.295528, 0.685618, -0.665276,
		-0.550570, -0.691334, -0.467900,
		36.623600, 34.395798, 39.954891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.473137, 35.280647, 40.174671>,  <37.008999, 34.879734, 40.282421>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.473137, 35.280647, 40.174671> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.364861, 34.897156, 40.139862>,  <36.299896, 34.667061, 40.118977>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.364861, 34.897156, 40.139862>,  <36.473137, 35.280647, 40.174671>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.364861, 34.897156, 40.139862> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.701030, 0.134361, 0.700360,
		-0.659760, 0.250587, -0.708465,
		-0.270691, -0.958724, -0.087024,
		36.283653, 34.609539, 40.113754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.749577, 35.267319, 40.154453>,  <36.473137, 35.280647, 40.174671>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.749577, 35.267319, 40.154453> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.847778, 34.900707, 40.280762>,  <35.906700, 34.680740, 40.356544>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.847778, 34.900707, 40.280762>,  <35.749577, 35.267319, 40.154453>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.847778, 34.900707, 40.280762> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526158, 0.147595, 0.837480,
		-0.814177, -0.371749, -0.446002,
		0.245505, -0.916525, 0.315767,
		35.921429, 34.625751, 40.375492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.196960, 35.037327, 40.576538>,  <35.749577, 35.267319, 40.154453>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.196960, 35.037327, 40.576538> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.504902, 34.809067, 40.690865>,  <35.689667, 34.672112, 40.759460>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.504902, 34.809067, 40.690865>,  <35.196960, 35.037327, 40.576538>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.504902, 34.809067, 40.690865> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301218, 0.069943, 0.950987,
		-0.562668, -0.818212, -0.118043,
		0.769853, -0.570646, 0.285814,
		35.735859, 34.637875, 40.776608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.768330, 34.538013, 40.919559>,  <35.196960, 35.037327, 40.576538>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.768330, 34.538013, 40.919559> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.146973, 34.505829, 41.044434>,  <35.374157, 34.486519, 41.119358>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.146973, 34.505829, 41.044434>,  <34.768330, 34.538013, 40.919559>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.146973, 34.505829, 41.044434> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321710, -0.173065, 0.930887,
		-0.020870, -0.981618, -0.189710,
		0.946608, -0.080459, 0.312184,
		35.430954, 34.481689, 41.138088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.799885, 33.721279, 40.791149>,  <34.768330, 34.538013, 40.919559>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.799885, 33.721279, 40.791149> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.407131, 33.645607, 40.786785>,  <34.171478, 33.600204, 40.784164>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.407131, 33.645607, 40.786785>,  <34.799885, 33.721279, 40.791149>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.407131, 33.645607, 40.786785> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050123, 0.314831, -0.947823,
		0.182742, -0.930104, -0.318610,
		-0.981883, -0.189177, -0.010913,
		34.112568, 33.588852, 40.783512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.655121, 33.298267, 40.154327>,  <34.799885, 33.721279, 40.791149>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.655121, 33.298267, 40.154327> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.297989, 33.441380, 40.263767>,  <34.083710, 33.527245, 40.329430>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.297989, 33.441380, 40.263767>,  <34.655121, 33.298267, 40.154327>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.297989, 33.441380, 40.263767> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200085, 0.229164, -0.952601,
		-0.403519, -0.905251, -0.133018,
		-0.892826, 0.357778, 0.273599,
		34.030140, 33.548714, 40.345848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.216789, 32.957310, 39.734043>,  <34.655121, 33.298267, 40.154327>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.216789, 32.957310, 39.734043> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.023819, 33.286297, 39.854584>,  <33.908035, 33.483688, 39.926907>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.023819, 33.286297, 39.854584>,  <34.216789, 32.957310, 39.734043>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.023819, 33.286297, 39.854584> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172428, 0.248129, -0.953258,
		-0.858798, -0.511836, 0.022113,
		-0.482425, 0.822469, 0.301348,
		33.879093, 33.533039, 39.944988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.449047, 32.928669, 39.488888>,  <34.216789, 32.957310, 39.734043>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.449047, 32.928669, 39.488888> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.580574, 33.301334, 39.550709>,  <33.659492, 33.524933, 39.587803>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.580574, 33.301334, 39.550709>,  <33.449047, 32.928669, 39.488888>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.580574, 33.301334, 39.550709> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161592, 0.216744, -0.962762,
		-0.930465, 0.291602, 0.221819,
		0.328821, 0.931660, 0.154552,
		33.679222, 33.580833, 39.597076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.072216, 33.263790, 39.050739>,  <33.449047, 32.928669, 39.488888>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.072216, 33.263790, 39.050739> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.321087, 33.553539, 39.169518>,  <33.470409, 33.727390, 39.240784>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.321087, 33.553539, 39.169518>,  <33.072216, 33.263790, 39.050739>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.321087, 33.553539, 39.169518> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025166, 0.360602, -0.932380,
		-0.782470, 0.587581, 0.206130,
		0.622180, 0.724372, 0.296947,
		33.507740, 33.770851, 39.258602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.738316, 33.815491, 38.955593>,  <33.072216, 33.263790, 39.050739>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.738316, 33.815491, 38.955593> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.123005, 33.924633, 38.945496>,  <33.353817, 33.990116, 38.939438>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.123005, 33.924633, 38.945496>,  <32.738316, 33.815491, 38.955593>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.123005, 33.924633, 38.945496> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140849, 0.413227, -0.899669,
		-0.235047, 0.868789, 0.435842,
		0.961725, 0.272852, -0.025241,
		33.411522, 34.006489, 38.937923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.750927, 34.488777, 38.651089>,  <32.738316, 33.815491, 38.955593>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.750927, 34.488777, 38.651089> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.127121, 34.366276, 38.592163>,  <33.352837, 34.292774, 38.556808>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.127121, 34.366276, 38.592163>,  <32.750927, 34.488777, 38.651089>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.127121, 34.366276, 38.592163> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086690, 0.202946, -0.975345,
		0.328599, 0.930065, 0.164319,
		0.940482, -0.306253, -0.147315,
		33.409267, 34.274399, 38.547970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.036495, 34.975300, 38.235939>,  <32.750927, 34.488777, 38.651089>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.036495, 34.975300, 38.235939> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.218998, 34.620499, 38.207478>,  <33.328499, 34.407619, 38.190403>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.218998, 34.620499, 38.207478>,  <33.036495, 34.975300, 38.235939>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.218998, 34.620499, 38.207478> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142044, 0.151531, -0.978193,
		0.878439, 0.436199, 0.195130,
		0.456255, -0.887000, -0.071151,
		33.355873, 34.354397, 38.186131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.552956, 35.143738, 37.639507>,  <33.036495, 34.975300, 38.235939>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.552956, 35.143738, 37.639507> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.515804, 34.745842, 37.656765>,  <33.493515, 34.507103, 37.667118>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.515804, 34.745842, 37.656765>,  <33.552956, 35.143738, 37.639507>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.515804, 34.745842, 37.656765> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385415, -0.075872, -0.919619,
		0.918057, -0.068781, 0.390436,
		-0.092875, -0.994742, 0.043146,
		33.487942, 34.447418, 37.669708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.061169, 34.963776, 37.214546>,  <33.552956, 35.143738, 37.639507>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.061169, 34.963776, 37.214546> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.858021, 34.624763, 37.276199>,  <33.736134, 34.421356, 37.313190>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.858021, 34.624763, 37.276199>,  <34.061169, 34.963776, 37.214546>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.858021, 34.624763, 37.276199> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260363, -0.321578, -0.910384,
		0.821146, -0.422225, 0.383986,
		-0.507868, -0.847534, 0.154131,
		33.705662, 34.370502, 37.322437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.545200, 34.492439, 36.984127>,  <34.061169, 34.963776, 37.214546>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.545200, 34.492439, 36.984127> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.165806, 34.365826, 36.978722>,  <33.938171, 34.289856, 36.975479>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.165806, 34.365826, 36.978722>,  <34.545200, 34.492439, 36.984127>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.165806, 34.365826, 36.978722> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134804, -0.364588, -0.921359,
		0.286717, -0.875716, 0.388477,
		-0.948484, -0.316538, -0.013516,
		33.881260, 34.270863, 36.974667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.561203, 33.779507, 36.709145>,  <34.545200, 34.492439, 36.984127>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.561203, 33.779507, 36.709145> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.233463, 34.001846, 36.652996>,  <34.036819, 34.135250, 36.619308>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.233463, 34.001846, 36.652996>,  <34.561203, 33.779507, 36.709145>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.233463, 34.001846, 36.652996> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085264, -0.123974, -0.988616,
		-0.566920, -0.821989, 0.054184,
		-0.819349, 0.555845, -0.140369,
		33.987659, 34.168598, 36.610886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<33.770153, 32.015438, 44.033146> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.434544, 32.227207, 43.982941>,  <33.233177, 32.354267, 43.952816>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.434544, 32.227207, 43.982941>,  <33.770153, 32.015438, 44.033146>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.434544, 32.227207, 43.982941> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152595, 0.007533, -0.988260,
		-0.522260, -0.848326, -0.087108,
		-0.839023, 0.529421, -0.125516,
		33.182838, 32.386032, 43.945286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.527931, 31.720495, 43.388836>,  <33.770153, 32.015438, 44.033146>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.527931, 31.720495, 43.388836> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.290855, 32.039497, 43.433910>,  <33.148609, 32.230900, 43.460957>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.290855, 32.039497, 43.433910>,  <33.527931, 31.720495, 43.388836>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.290855, 32.039497, 43.433910> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114368, 0.221829, -0.968355,
		-0.797267, -0.561050, -0.222686,
		-0.592694, 0.797505, 0.112691,
		33.113049, 32.278748, 43.467716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.242352, 31.815508, 42.778194>,  <33.527931, 31.720495, 43.388836>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.242352, 31.815508, 42.778194> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.191154, 32.177166, 42.941235>,  <33.160439, 32.394161, 43.039059>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.191154, 32.177166, 42.941235>,  <33.242352, 31.815508, 42.778194>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.191154, 32.177166, 42.941235> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164639, 0.424650, -0.890262,
		-0.978015, -0.046836, -0.203208,
		-0.127989, 0.904146, 0.407602,
		33.152760, 32.448410, 43.063515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.846767, 32.053158, 42.360661>,  <33.242352, 31.815508, 42.778194>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.846767, 32.053158, 42.360661> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.036777, 32.348366, 42.552364>,  <33.150784, 32.525490, 42.667385>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.036777, 32.348366, 42.552364>,  <32.846767, 32.053158, 42.360661>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.036777, 32.348366, 42.552364> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263087, 0.400608, -0.877667,
		-0.839725, 0.542998, -0.003864,
		0.475023, 0.738016, 0.479256,
		33.179283, 32.569771, 42.696140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.666111, 32.604740, 42.034554>,  <32.846767, 32.053158, 42.360661>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.666111, 32.604740, 42.034554> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.988331, 32.753635, 42.218956>,  <33.181664, 32.842972, 42.329597>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.988331, 32.753635, 42.218956>,  <32.666111, 32.604740, 42.034554>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.988331, 32.753635, 42.218956> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229991, 0.520604, -0.822238,
		-0.546066, 0.768383, 0.333764,
		0.805553, 0.372234, 0.461006,
		33.229996, 32.865307, 42.357258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.724567, 33.316059, 41.975990>,  <32.666111, 32.604740, 42.034554>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.724567, 33.316059, 41.975990> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.103416, 33.219898, 42.061008>,  <33.330727, 33.162201, 42.112019>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.103416, 33.219898, 42.061008>,  <32.724567, 33.316059, 41.975990>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.103416, 33.219898, 42.061008> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314557, 0.564663, -0.763027,
		0.063413, 0.789534, 0.610421,
		0.947118, -0.240398, 0.212547,
		33.387550, 33.147778, 42.124771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.065441, 33.960274, 41.854618>,  <32.724567, 33.316059, 41.975990>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.065441, 33.960274, 41.854618> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.325550, 33.656811, 41.838715>,  <33.481617, 33.474731, 41.829170>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.325550, 33.656811, 41.838715>,  <33.065441, 33.960274, 41.854618>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.325550, 33.656811, 41.838715> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385183, 0.374365, -0.843495,
		0.654810, 0.533188, 0.535663,
		0.650275, -0.758657, -0.039763,
		33.520634, 33.429214, 41.826786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.831364, 34.162029, 41.877136>,  <33.065441, 33.960274, 41.854618>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.831364, 34.162029, 41.877136> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.819550, 33.804100, 41.698959>,  <33.812462, 33.589344, 41.592052>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.819550, 33.804100, 41.698959>,  <33.831364, 34.162029, 41.877136>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.819550, 33.804100, 41.698959> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296839, 0.417679, -0.858738,
		0.954471, -0.157586, 0.253283,
		-0.029534, -0.894825, -0.445440,
		33.810688, 33.535652, 41.565327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.480129, 34.064766, 41.516197>,  <33.831364, 34.162029, 41.877136>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.480129, 34.064766, 41.516197> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.221329, 33.814632, 41.341686>,  <34.066048, 33.664551, 41.236980>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.221329, 33.814632, 41.341686>,  <34.480129, 34.064766, 41.516197>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.221329, 33.814632, 41.341686> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333200, 0.282779, -0.899452,
		0.685833, -0.727315, 0.025404,
		-0.647002, -0.625338, -0.436281,
		34.027229, 33.627029, 41.210800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.036655, 33.628391, 41.621838>,  <34.480129, 34.064766, 41.516197>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.036655, 33.628391, 41.621838> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.294033, 33.931156, 41.667564>,  <35.448460, 34.112816, 41.695000>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.294033, 33.931156, 41.667564>,  <35.036655, 33.628391, 41.621838>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.294033, 33.931156, 41.667564> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210448, 0.031327, 0.977103,
		0.736000, -0.652765, 0.179447,
		0.643441, 0.756912, 0.114316,
		35.487064, 34.158230, 41.701859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.585346, 33.360401, 42.096928>,  <35.036655, 33.628391, 41.621838>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.585346, 33.360401, 42.096928> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.639839, 33.756184, 42.116577>,  <35.672535, 33.993652, 42.128368>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.639839, 33.756184, 42.116577>,  <35.585346, 33.360401, 42.096928>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.639839, 33.756184, 42.116577> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099349, -0.062985, 0.993057,
		0.985683, -0.130403, -0.106882,
		0.136229, 0.989458, 0.049128,
		35.680710, 34.053020, 42.131317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.125523, 33.514278, 42.545776>,  <35.585346, 33.360401, 42.096928>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.125523, 33.514278, 42.545776> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.925442, 33.860615, 42.541374>,  <35.805393, 34.068417, 42.538734>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.925442, 33.860615, 42.541374>,  <36.125523, 33.514278, 42.545776>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.925442, 33.860615, 42.541374> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109691, 0.075966, 0.991059,
		0.858932, 0.494524, -0.132973,
		-0.500204, 0.865838, -0.011005,
		35.775379, 34.120365, 42.538074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.503769, 33.901020, 43.029072>,  <36.125523, 33.514278, 42.545776>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.503769, 33.901020, 43.029072> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.152588, 34.088448, 42.989777>,  <35.941879, 34.200905, 42.966202>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.152588, 34.088448, 42.989777>,  <36.503769, 33.901020, 43.029072>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.152588, 34.088448, 42.989777> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039931, 0.132806, 0.990337,
		0.477085, 0.873389, -0.097886,
		-0.877950, 0.468566, -0.098235,
		35.889202, 34.229019, 42.960304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.565948, 34.453590, 43.461617>,  <36.503769, 33.901020, 43.029072>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.565948, 34.453590, 43.461617> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.171272, 34.438683, 43.398304>,  <35.934467, 34.429737, 43.360317>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.171272, 34.438683, 43.398304>,  <36.565948, 34.453590, 43.461617>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.171272, 34.438683, 43.398304> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162574, 0.246605, 0.955383,
		0.003430, 0.968400, -0.249381,
		-0.986690, -0.037266, -0.158283,
		35.875267, 34.427502, 43.350819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.367607, 34.951706, 43.884014>,  <36.565948, 34.453590, 43.461617>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.367607, 34.951706, 43.884014> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.054321, 34.711281, 43.820400>,  <35.866348, 34.567024, 43.782230>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.054321, 34.711281, 43.820400>,  <36.367607, 34.951706, 43.884014>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.054321, 34.711281, 43.820400> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163277, -0.047976, 0.985413,
		-0.599927, 0.797759, -0.060565,
		-0.783216, -0.601065, -0.159037,
		35.819355, 34.530960, 43.772690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.847897, 35.247101, 44.189213>,  <36.367607, 34.951706, 43.884014>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.847897, 35.247101, 44.189213> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.728600, 34.866333, 44.161213>,  <35.657021, 34.637871, 44.144413>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.728600, 34.866333, 44.161213>,  <35.847897, 35.247101, 44.189213>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.728600, 34.866333, 44.161213> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109436, -0.038752, 0.993238,
		-0.948197, 0.303882, -0.092617,
		-0.298238, -0.951921, -0.070000,
		35.639130, 34.580757, 44.140213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.305832, 35.195232, 44.643703>,  <35.847897, 35.247101, 44.189213>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.305832, 35.195232, 44.643703> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.420216, 34.816166, 44.586914>,  <35.488846, 34.588726, 44.552841>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.420216, 34.816166, 44.586914>,  <35.305832, 35.195232, 44.643703>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.420216, 34.816166, 44.586914> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023408, -0.141210, 0.989703,
		-0.957955, -0.286341, -0.018197,
		0.285962, -0.947665, -0.141975,
		35.506004, 34.531868, 44.544323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.744221, 34.733925, 44.957661>,  <35.305832, 35.195232, 44.643703>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.744221, 34.733925, 44.957661> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.084934, 34.524834, 44.943699>,  <35.289360, 34.399380, 44.935322>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.084934, 34.524834, 44.943699>,  <34.744221, 34.733925, 44.957661>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.084934, 34.524834, 44.943699> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133751, -0.281392, 0.950226,
		-0.506536, -0.804717, -0.309600,
		0.851781, -0.522733, -0.034903,
		35.340469, 34.368015, 44.933228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.546780, 34.085209, 45.140682>,  <34.744221, 34.733925, 44.957661>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.546780, 34.085209, 45.140682> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.939373, 34.057266, 45.212032>,  <35.174927, 34.040501, 45.254841>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.939373, 34.057266, 45.212032>,  <34.546780, 34.085209, 45.140682>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.939373, 34.057266, 45.212032> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190198, -0.466418, 0.863875,
		0.022853, -0.881802, -0.471065,
		0.981479, -0.069853, 0.178376,
		35.233818, 34.036312, 45.265545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.620274, 33.421135, 45.427326>,  <34.546780, 34.085209, 45.140682>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.620274, 33.421135, 45.427326> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.917980, 33.655937, 45.554756>,  <35.096603, 33.796818, 45.631214>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.917980, 33.655937, 45.554756>,  <34.620274, 33.421135, 45.427326>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.917980, 33.655937, 45.554756> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125817, -0.345229, 0.930047,
		0.655927, -0.732283, -0.183086,
		0.744264, 0.587008, 0.318579,
		35.141258, 33.832039, 45.650330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.003967, 32.987167, 45.740837>,  <34.620274, 33.421135, 45.427326>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.003967, 32.987167, 45.740837> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.123600, 33.347443, 45.866898>,  <35.195377, 33.563606, 45.942532>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.123600, 33.347443, 45.866898>,  <35.003967, 32.987167, 45.740837>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.123600, 33.347443, 45.866898> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070599, -0.308474, 0.948609,
		0.951614, -0.305956, -0.028670,
		0.299077, 0.900686, 0.315148,
		35.213322, 33.617649, 45.961441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.426083, 32.834400, 46.324554>,  <35.003967, 32.987167, 45.740837>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.426083, 32.834400, 46.324554> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.350060, 33.224976, 46.365425>,  <35.304447, 33.459320, 46.389946>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.350060, 33.224976, 46.365425>,  <35.426083, 32.834400, 46.324554>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.350060, 33.224976, 46.365425> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101177, -0.084041, 0.991312,
		0.976546, 0.198743, -0.082821,
		-0.190056, 0.976442, 0.102178,
		35.293041, 33.517906, 46.396080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.924366, 33.106812, 46.695141>,  <35.426083, 32.834400, 46.324554>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.924366, 33.106812, 46.695141> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.631664, 33.368141, 46.772804>,  <35.456043, 33.524940, 46.819401>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.631664, 33.368141, 46.772804>,  <35.924366, 33.106812, 46.695141>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.631664, 33.368141, 46.772804> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025790, -0.258122, 0.965768,
		0.681080, 0.711713, 0.172033,
		-0.731755, 0.653328, 0.194157,
		35.412136, 33.564140, 46.831051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<30.610510, 36.626343, 47.405754> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.806246, 36.281986, 47.350010>,  <30.923687, 36.075375, 47.316563>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.806246, 36.281986, 47.350010>,  <30.610510, 36.626343, 47.405754>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.806246, 36.281986, 47.350010> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425417, 0.375137, -0.823585,
		0.761294, 0.343725, 0.549805,
		0.489339, -0.860887, -0.139363,
		30.953047, 36.023720, 47.308201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.322083, 36.834644, 47.247631>,  <30.610510, 36.626343, 47.405754>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.322083, 36.834644, 47.247631> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.255991, 36.470581, 47.095680>,  <31.216337, 36.252144, 47.004509>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.255991, 36.470581, 47.095680>,  <31.322083, 36.834644, 47.247631>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.255991, 36.470581, 47.095680> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494872, 0.256661, -0.830197,
		0.853113, -0.325160, 0.408006,
		-0.165227, -0.910163, -0.379873,
		31.206423, 36.197533, 46.981720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.809031, 36.815128, 46.808472>,  <31.322083, 36.834644, 47.247631>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.809031, 36.815128, 46.808472> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.598188, 36.501575, 46.677204>,  <31.471684, 36.313446, 46.598442>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.598188, 36.501575, 46.677204>,  <31.809031, 36.815128, 46.808472>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.598188, 36.501575, 46.677204> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340710, 0.158842, -0.926653,
		0.778510, -0.600254, 0.183349,
		-0.527104, -0.783878, -0.328173,
		31.440058, 36.266411, 46.578751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.257458, 36.390812, 46.344101>,  <31.809031, 36.815128, 46.808472>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.257458, 36.390812, 46.344101> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.886917, 36.284489, 46.237354>,  <31.664593, 36.220695, 46.173306>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.886917, 36.284489, 46.237354>,  <32.257458, 36.390812, 46.344101>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.886917, 36.284489, 46.237354> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204074, 0.241307, -0.948749,
		0.316588, -0.933334, -0.169289,
		-0.926351, -0.265815, -0.266864,
		31.609011, 36.204746, 46.157295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.419773, 35.962708, 45.831589>,  <32.257458, 36.390812, 46.344101>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.419773, 35.962708, 45.831589> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.044815, 36.073326, 45.746918>,  <31.819839, 36.139698, 45.696117>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.044815, 36.073326, 45.746918>,  <32.419773, 35.962708, 45.831589>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.044815, 36.073326, 45.746918> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262469, 0.161518, -0.951326,
		-0.228896, -0.947330, -0.223991,
		-0.937399, 0.276545, -0.211674,
		31.763596, 36.156288, 45.683414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.134991, 35.522957, 45.424500>,  <32.419773, 35.962708, 45.831589>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.134991, 35.522957, 45.424500> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.882263, 35.818546, 45.330925>,  <31.730625, 35.995899, 45.274780>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.882263, 35.818546, 45.330925>,  <32.134991, 35.522957, 45.424500>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.882263, 35.818546, 45.330925> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233453, -0.106369, -0.966533,
		-0.739122, -0.665288, -0.105308,
		-0.631821, 0.738970, -0.233933,
		31.692717, 36.040237, 45.260746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.962963, 35.383457, 44.756207>,  <32.134991, 35.522957, 45.424500>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.962963, 35.383457, 44.756207> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.825466, 35.756222, 44.802486>,  <31.742968, 35.979881, 44.830254>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.825466, 35.756222, 44.802486>,  <31.962963, 35.383457, 44.756207>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.825466, 35.756222, 44.802486> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188369, 0.189131, -0.963715,
		-0.919978, -0.309475, -0.240555,
		-0.343742, 0.931909, 0.115701,
		31.722343, 36.035793, 44.837196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.445028, 35.426098, 44.274769>,  <31.962963, 35.383457, 44.756207>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.445028, 35.426098, 44.274769> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.589563, 35.790298, 44.355194>,  <31.676285, 36.008820, 44.403450>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.589563, 35.790298, 44.355194>,  <31.445028, 35.426098, 44.274769>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.589563, 35.790298, 44.355194> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305933, 0.087928, -0.947984,
		-0.880819, 0.404052, -0.246781,
		0.361336, 0.910500, 0.201062,
		31.697964, 36.063450, 44.415512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.152784, 35.919353, 43.774700>,  <31.445028, 35.426098, 44.274769>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.152784, 35.919353, 43.774700> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.485783, 36.086227, 43.920528>,  <31.685581, 36.186352, 44.008026>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.485783, 36.086227, 43.920528>,  <31.152784, 35.919353, 43.774700>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.485783, 36.086227, 43.920528> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352391, 0.109047, -0.929478,
		-0.427522, 0.902254, -0.056232,
		0.832493, 0.417188, 0.364567,
		31.735531, 36.211384, 44.029900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.136322, 36.544373, 43.418610>,  <31.152784, 35.919353, 43.774700>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.136322, 36.544373, 43.418610> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.514139, 36.481407, 43.533890>,  <31.740829, 36.443626, 43.603058>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.514139, 36.481407, 43.533890>,  <31.136322, 36.544373, 43.418610>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.514139, 36.481407, 43.533890> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318767, 0.228605, -0.919852,
		0.078912, 0.960708, 0.266106,
		0.944542, -0.157413, 0.288203,
		31.797503, 36.434185, 43.620350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.347336, 37.080032, 42.987328>,  <31.136322, 36.544373, 43.418610>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.347336, 37.080032, 42.987328> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.659258, 36.858574, 43.104210>,  <31.846411, 36.725700, 43.174339>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.659258, 36.858574, 43.104210>,  <31.347336, 37.080032, 42.987328>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.659258, 36.858574, 43.104210> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466016, 0.201710, -0.861476,
		0.418009, 0.807957, 0.415301,
		0.779806, -0.553641, 0.292205,
		31.893200, 36.692482, 43.191872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.023365, 37.366791, 42.820320>,  <31.347336, 37.080032, 42.987328>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.023365, 37.366791, 42.820320> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.137699, 36.985855, 42.862938>,  <32.206299, 36.757294, 42.888508>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.137699, 36.985855, 42.862938>,  <32.023365, 37.366791, 42.820320>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.137699, 36.985855, 42.862938> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497900, 0.052601, -0.865638,
		0.818775, 0.300478, 0.489204,
		0.285837, -0.952337, 0.106540,
		32.223450, 36.700153, 42.894901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.743217, 37.423031, 42.639030>,  <32.023365, 37.366791, 42.820320>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.743217, 37.423031, 42.639030> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.598660, 37.056892, 42.567997>,  <32.511925, 36.837208, 42.525375>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.598660, 37.056892, 42.567997>,  <32.743217, 37.423031, 42.639030>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.598660, 37.056892, 42.567997> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482372, -0.020549, -0.875725,
		0.797943, -0.402143, 0.448964,
		-0.361393, -0.915346, -0.177586,
		32.490242, 36.782288, 42.514721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.325336, 37.030350, 42.287933>,  <32.743217, 37.423031, 42.639030>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.325336, 37.030350, 42.287933> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.001812, 36.832684, 42.160423>,  <32.807697, 36.714085, 42.083916>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.001812, 36.832684, 42.160423>,  <33.325336, 37.030350, 42.287933>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.001812, 36.832684, 42.160423> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337160, 0.054459, -0.939871,
		0.481815, -0.867659, 0.122567,
		-0.808813, -0.494168, -0.318778,
		32.759167, 36.684433, 42.064789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.019272, 36.991211, 42.420933>,  <33.325336, 37.030350, 42.287933>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.019272, 36.991211, 42.420933> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.171696, 37.361031, 42.421356>,  <34.263149, 37.582924, 42.421608>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.171696, 37.361031, 42.421356>,  <34.019272, 36.991211, 42.420933>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.171696, 37.361031, 42.421356> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049872, -0.021696, 0.998520,
		0.923205, -0.380442, -0.054377,
		0.381059, 0.924550, 0.001057,
		34.286015, 37.638397, 42.421673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.611496, 37.034195, 42.880894>,  <34.019272, 36.991211, 42.420933>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.611496, 37.034195, 42.880894> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.518894, 37.422890, 42.862427>,  <34.463333, 37.656109, 42.851349>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.518894, 37.422890, 42.862427>,  <34.611496, 37.034195, 42.880894>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.518894, 37.422890, 42.862427> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003596, 0.048306, 0.998826,
		0.972828, 0.231063, -0.014678,
		-0.231501, 0.971739, -0.046163,
		34.449444, 37.714413, 42.848579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.092228, 37.429119, 43.206944>,  <34.611496, 37.034195, 42.880894>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.092228, 37.429119, 43.206944> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.749958, 37.635803, 43.218544>,  <34.544598, 37.759811, 43.225502>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.749958, 37.635803, 43.218544>,  <35.092228, 37.429119, 43.206944>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.749958, 37.635803, 43.218544> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057898, 0.039894, 0.997525,
		0.514271, 0.855233, -0.064053,
		-0.855671, 0.516706, 0.028999,
		34.493256, 37.790813, 43.227245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.236225, 37.824284, 43.754494>,  <35.092228, 37.429119, 43.206944>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.236225, 37.824284, 43.754494> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.841412, 37.860264, 43.701313>,  <34.604523, 37.881851, 43.669407>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.841412, 37.860264, 43.701313>,  <35.236225, 37.824284, 43.754494>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.841412, 37.860264, 43.701313> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112971, 0.199116, 0.973442,
		0.114036, 0.975839, -0.186372,
		-0.987033, 0.089953, -0.132948,
		34.545303, 37.887249, 43.661430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.091663, 38.458588, 44.136200>,  <35.236225, 37.824284, 43.754494>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.091663, 38.458588, 44.136200> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.752502, 38.249294, 44.102074>,  <34.549004, 38.123718, 44.081600>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.752502, 38.249294, 44.102074>,  <35.091663, 38.458588, 44.136200>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.752502, 38.249294, 44.102074> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330202, 0.395338, 0.857131,
		-0.414755, 0.754938, -0.507983,
		-0.847906, -0.523237, -0.085313,
		34.498131, 38.092323, 44.076481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.522202, 38.904259, 44.422249>,  <35.091663, 38.458588, 44.136200>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.522202, 38.904259, 44.422249> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.397388, 38.524830, 44.443588>,  <34.322502, 38.297173, 44.456390>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.397388, 38.524830, 44.443588>,  <34.522202, 38.904259, 44.422249>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.397388, 38.524830, 44.443588> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355984, 0.168794, 0.919122,
		-0.880859, 0.267804, -0.390345,
		-0.312032, -0.948573, 0.053349,
		34.303780, 38.240257, 44.459595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.923481, 38.892975, 44.902435>,  <34.522202, 38.904259, 44.422249>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.923481, 38.892975, 44.902435> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.037991, 38.509949, 44.915840>,  <34.106697, 38.280132, 44.923885>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.037991, 38.509949, 44.915840>,  <33.923481, 38.892975, 44.902435>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.037991, 38.509949, 44.915840> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357463, -0.074284, 0.930969,
		-0.888970, -0.278493, -0.363558,
		0.286274, -0.957561, 0.033515,
		34.123875, 38.222679, 44.925896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.446156, 38.564377, 45.291214>,  <33.923481, 38.892975, 44.902435>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.446156, 38.564377, 45.291214> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.721378, 38.275333, 45.317806>,  <33.886513, 38.101906, 45.333763>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.721378, 38.275333, 45.317806>,  <33.446156, 38.564377, 45.291214>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.721378, 38.275333, 45.317806> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296246, -0.196082, 0.934768,
		-0.662436, -0.662864, -0.348984,
		0.688053, -0.722608, 0.066479,
		33.927795, 38.058552, 45.337749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.051517, 38.038624, 45.606964>,  <33.446156, 38.564377, 45.291214>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.051517, 38.038624, 45.606964> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.411011, 37.864799, 45.630424>,  <33.626705, 37.760506, 45.644501>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.411011, 37.864799, 45.630424>,  <33.051517, 38.038624, 45.606964>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.411011, 37.864799, 45.630424> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240072, -0.375683, 0.895113,
		-0.366917, -0.818560, -0.441962,
		0.898742, -0.434535, 0.058669,
		33.680630, 37.734428, 45.648022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.031769, 37.251270, 45.678711>,  <33.051517, 38.038624, 45.606964>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.031769, 37.251270, 45.678711> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.370872, 37.377563, 45.849174>,  <33.574333, 37.453339, 45.951454>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.370872, 37.377563, 45.849174>,  <33.031769, 37.251270, 45.678711>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.370872, 37.377563, 45.849174> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276583, -0.422422, 0.863170,
		0.452553, -0.849630, -0.270785,
		0.847760, 0.315735, 0.426161,
		33.625202, 37.472282, 45.977024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.281876, 36.652905, 45.957500>,  <33.031769, 37.251270, 45.678711>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.281876, 36.652905, 45.957500> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.463425, 36.941471, 46.166714>,  <33.572353, 37.114609, 46.292240>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.463425, 36.941471, 46.166714>,  <33.281876, 36.652905, 45.957500>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.463425, 36.941471, 46.166714> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113880, -0.535196, 0.837016,
		0.883759, -0.439463, -0.160758,
		0.453874, 0.721413, 0.523030,
		33.599586, 37.157894, 46.323624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.600571, 36.326466, 46.455093>,  <33.281876, 36.652905, 45.957500>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.600571, 36.326466, 46.455093> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.640301, 36.691772, 46.613121>,  <33.664139, 36.910957, 46.707939>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.640301, 36.691772, 46.613121>,  <33.600571, 36.326466, 46.455093>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.640301, 36.691772, 46.613121> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033523, -0.393735, 0.918613,
		0.994490, -0.104484, -0.008491,
		0.099324, 0.913267, 0.395068,
		33.670097, 36.965752, 46.731640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.125130, 36.262211, 46.945030>,  <33.600571, 36.326466, 46.455093>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.125130, 36.262211, 46.945030> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.887890, 36.574440, 47.023968>,  <33.745548, 36.761776, 47.071331>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.887890, 36.574440, 47.023968>,  <34.125130, 36.262211, 46.945030>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.887890, 36.574440, 47.023968> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008362, -0.239124, 0.970953,
		0.805089, 0.577518, 0.135296,
		-0.593095, 0.780572, 0.197346,
		33.709961, 36.808613, 47.083172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.443840, 36.588280, 47.536827>,  <34.125130, 36.262211, 46.945030>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.443840, 36.588280, 47.536827> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.065842, 36.718113, 47.520664>,  <33.839043, 36.796013, 47.510967>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.065842, 36.718113, 47.520664>,  <34.443840, 36.588280, 47.536827>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.065842, 36.718113, 47.520664> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102602, -0.176851, 0.978875,
		0.310581, 0.929176, 0.200426,
		-0.944993, 0.324585, -0.040408,
		33.782345, 36.815487, 47.508541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.041939, 36.925926, 47.977753>,  <34.443840, 36.588280, 47.536827>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.041939, 36.925926, 47.977753> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.355209, 36.689377, 48.054611>,  <35.543171, 36.547447, 48.100727>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.355209, 36.689377, 48.054611>,  <35.041939, 36.925926, 47.977753>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.355209, 36.689377, 48.054611> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138822, -0.134924, -0.981083,
		0.606111, 0.795031, -0.023573,
		0.783172, -0.591372, 0.192147,
		35.590160, 36.511967, 48.112255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.712734, 37.257133, 47.844193>,  <35.041939, 36.925926, 47.977753>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.712734, 37.257133, 47.844193> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.767792, 36.863010, 47.803730>,  <35.800827, 36.626537, 47.779453>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.767792, 36.863010, 47.803730>,  <35.712734, 37.257133, 47.844193>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.767792, 36.863010, 47.803730> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174566, 0.124658, -0.976723,
		0.974978, 0.116779, 0.189158,
		0.137641, -0.985303, -0.101154,
		35.809086, 36.567421, 47.773384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.278187, 37.221119, 47.463531>,  <35.712734, 37.257133, 47.844193>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.278187, 37.221119, 47.463531> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.131340, 36.849247, 47.451420>,  <36.043232, 36.626122, 47.444153>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.131340, 36.849247, 47.451420>,  <36.278187, 37.221119, 47.463531>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.131340, 36.849247, 47.451420> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426812, -0.139442, -0.893525,
		0.826472, -0.340952, 0.447991,
		-0.367118, -0.929681, -0.030277,
		36.021206, 36.570343, 47.442337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.877136, 36.743530, 47.339550>,  <36.278187, 37.221119, 47.463531>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.877136, 36.743530, 47.339550> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.538799, 36.552082, 47.245342>,  <36.335796, 36.437214, 47.188820>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.538799, 36.552082, 47.245342>,  <36.877136, 36.743530, 47.339550>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.538799, 36.552082, 47.245342> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394034, -0.263009, -0.880661,
		0.359562, -0.837703, 0.411059,
		-0.845844, -0.478623, -0.235515,
		36.285046, 36.408497, 47.174686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.174320, 36.121624, 47.091183>,  <36.877136, 36.743530, 47.339550>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.174320, 36.121624, 47.091183> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.800251, 36.134789, 46.950119>,  <36.575809, 36.142689, 46.865482>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.800251, 36.134789, 46.950119>,  <37.174320, 36.121624, 47.091183>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.800251, 36.134789, 46.950119> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331039, -0.272869, -0.903303,
		-0.125960, -0.961488, 0.244285,
		-0.935172, 0.032913, -0.352660,
		36.519699, 36.144661, 46.844322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.983200, 35.465748, 46.706821>,  <37.174320, 36.121624, 47.091183>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.983200, 35.465748, 46.706821> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.726559, 35.729748, 46.550495>,  <36.572575, 35.888149, 46.456699>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.726559, 35.729748, 46.550495>,  <36.983200, 35.465748, 46.706821>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.726559, 35.729748, 46.550495> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285135, -0.267770, -0.920325,
		-0.712066, -0.701921, -0.016387,
		-0.641607, 0.660005, -0.390812,
		36.534077, 35.927750, 46.433250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.594318, 35.134174, 46.110096>,  <36.983200, 35.465748, 46.706821>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.594318, 35.134174, 46.110096> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.585159, 35.528893, 46.045948>,  <36.579662, 35.765724, 46.007462>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.585159, 35.528893, 46.045948>,  <36.594318, 35.134174, 46.110096>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.585159, 35.528893, 46.045948> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452703, -0.132784, -0.881719,
		-0.891367, -0.092792, -0.443682,
		-0.022902, 0.986792, -0.160367,
		36.578289, 35.824928, 45.997837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.285240, 35.226925, 45.384747>,  <36.594318, 35.134174, 46.110096>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.285240, 35.226925, 45.384747> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.447342, 35.585426, 45.456860>,  <36.544605, 35.800526, 45.500130>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.447342, 35.585426, 45.456860>,  <36.285240, 35.226925, 45.384747>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.447342, 35.585426, 45.456860> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249816, 0.081134, -0.964888,
		-0.879408, 0.436067, -0.191017,
		0.405258, 0.896249, 0.180287,
		36.568920, 35.854301, 45.510944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.099251, 35.679703, 44.740063>,  <36.285240, 35.226925, 45.384747>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.099251, 35.679703, 44.740063> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.415558, 35.848732, 44.917206>,  <36.605343, 35.950150, 45.023491>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.415558, 35.848732, 44.917206>,  <36.099251, 35.679703, 44.740063>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.415558, 35.848732, 44.917206> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473182, 0.036958, -0.880189,
		-0.388309, 0.905576, -0.170728,
		0.790768, 0.422571, 0.442854,
		36.652790, 35.975502, 45.050060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.169445, 36.320801, 44.319122>,  <36.099251, 35.679703, 44.740063>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.169445, 36.320801, 44.319122> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.517883, 36.285789, 44.512421>,  <36.726948, 36.264782, 44.628399>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.517883, 36.285789, 44.512421>,  <36.169445, 36.320801, 44.319122>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.517883, 36.285789, 44.512421> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484130, 0.318322, -0.815040,
		-0.082491, 0.943933, 0.319664,
		0.871099, -0.087525, 0.483245,
		36.779213, 36.259533, 44.657394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.529285, 36.972969, 44.308643>,  <36.169445, 36.320801, 44.319122>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.529285, 36.972969, 44.308643> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.789124, 36.671394, 44.347847>,  <36.945026, 36.490448, 44.371368>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.789124, 36.671394, 44.347847>,  <36.529285, 36.972969, 44.308643>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.789124, 36.671394, 44.347847> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473921, 0.300750, -0.827616,
		0.594494, 0.584063, 0.552672,
		0.649596, -0.753936, 0.098006,
		36.984001, 36.445213, 44.377247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.160049, 37.354534, 44.101765>,  <36.529285, 36.972969, 44.308643>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.160049, 37.354534, 44.101765> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.235054, 36.961731, 44.092793>,  <37.280056, 36.726048, 44.087410>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.235054, 36.961731, 44.092793>,  <37.160049, 37.354534, 44.101765>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.235054, 36.961731, 44.092793> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534459, 0.121161, -0.836465,
		0.824132, 0.144854, 0.547561,
		0.187509, -0.982007, -0.022434,
		37.291306, 36.667130, 44.086063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.847538, 37.305515, 43.937874>,  <37.160049, 37.354534, 44.101765>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.847538, 37.305515, 43.937874> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.703541, 36.945084, 43.841160>,  <37.617142, 36.728825, 43.783131>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.703541, 36.945084, 43.841160>,  <37.847538, 37.305515, 43.937874>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.703541, 36.945084, 43.841160> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577224, -0.011521, -0.816504,
		0.732950, -0.433501, 0.524273,
		-0.359995, -0.901080, -0.241783,
		37.595543, 36.674759, 43.768623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.440361, 36.958389, 43.707035>,  <37.847538, 37.305515, 43.937874>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.440361, 36.958389, 43.707035> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.110840, 36.788383, 43.556988>,  <37.913128, 36.686382, 43.466961>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.110840, 36.788383, 43.556988>,  <38.440361, 36.958389, 43.707035>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.110840, 36.788383, 43.556988> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468625, -0.138263, -0.872510,
		0.318961, -0.894567, 0.313072,
		-0.823805, -0.425010, -0.375116,
		37.863697, 36.660881, 43.444454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<27.862789, 37.893276, 28.075676> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.259363, 37.860546, 28.034964>,  <28.497309, 37.840908, 28.010536>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.259363, 37.860546, 28.034964>,  <27.862789, 37.893276, 28.075676>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.259363, 37.860546, 28.034964> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069990, -0.325088, 0.943090,
		-0.110252, -0.942138, -0.316577,
		0.991436, -0.081820, -0.101781,
		28.556793, 37.835999, 28.004429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.063997, 37.221786, 28.184032>,  <27.862789, 37.893276, 28.075676>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.063997, 37.221786, 28.184032> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.369894, 37.459496, 28.283638>,  <28.553432, 37.602123, 28.343401>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.369894, 37.459496, 28.283638>,  <28.063997, 37.221786, 28.184032>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.369894, 37.459496, 28.283638> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076936, -0.299479, 0.950996,
		0.639727, -0.746424, -0.183303,
		0.764742, 0.594276, 0.249012,
		28.599316, 37.637779, 28.358341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.591551, 36.779236, 28.442926>,  <28.063997, 37.221786, 28.184032>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.591551, 36.779236, 28.442926> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.577127, 37.157940, 28.570889>,  <28.568474, 37.385162, 28.647665>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.577127, 37.157940, 28.570889>,  <28.591551, 36.779236, 28.442926>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.577127, 37.157940, 28.570889> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237867, -0.319045, 0.917404,
		0.970628, -0.043013, 0.236709,
		-0.036061, 0.946763, 0.319906,
		28.566309, 37.441967, 28.666861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.936846, 36.732594, 29.035133>,  <28.591551, 36.779236, 28.442926>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.936846, 36.732594, 29.035133> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.724268, 37.071404, 29.030676>,  <28.596722, 37.274689, 29.028002>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.724268, 37.071404, 29.030676>,  <28.936846, 36.732594, 29.035133>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.724268, 37.071404, 29.030676> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475172, -0.287190, 0.831705,
		0.701271, 0.447300, 0.555105,
		-0.531442, 0.847021, -0.011146,
		28.564835, 37.325508, 29.027332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.023420, 36.963829, 29.646441>,  <28.936846, 36.732594, 29.035133>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.023420, 36.963829, 29.646441> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.688778, 37.155018, 29.539387>,  <28.487993, 37.269733, 29.475155>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.688778, 37.155018, 29.539387>,  <29.023420, 36.963829, 29.646441>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.688778, 37.155018, 29.539387> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341292, -0.072630, 0.937147,
		0.428496, 0.875365, 0.223892,
		-0.836607, 0.477977, -0.267634,
		28.437796, 37.298412, 29.459097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.960690, 37.383484, 30.273848>,  <29.023420, 36.963829, 29.646441>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.960690, 37.383484, 30.273848> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.605663, 37.369877, 30.090076>,  <28.392649, 37.361713, 29.979815>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.605663, 37.369877, 30.090076>,  <28.960690, 37.383484, 30.273848>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.605663, 37.369877, 30.090076> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456096, -0.075498, 0.886722,
		-0.064850, 0.996566, 0.051494,
		-0.887564, -0.034018, -0.459426,
		28.339394, 37.359673, 29.952250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.442686, 37.883274, 30.682089>,  <28.960690, 37.383484, 30.273848>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.442686, 37.883274, 30.682089> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.197803, 37.642315, 30.477221>,  <28.050875, 37.497738, 30.354300>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.197803, 37.642315, 30.477221>,  <28.442686, 37.883274, 30.682089>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.197803, 37.642315, 30.477221> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377403, -0.346577, 0.858750,
		-0.694818, 0.719026, -0.015172,
		-0.612205, -0.602401, -0.512170,
		28.014141, 37.461594, 30.323570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.759085, 38.023777, 30.940565>,  <28.442686, 37.883274, 30.682089>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.759085, 38.023777, 30.940565> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.823927, 37.656055, 30.797123>,  <27.862833, 37.435421, 30.711058>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.823927, 37.656055, 30.797123>,  <27.759085, 38.023777, 30.940565>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.823927, 37.656055, 30.797123> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247320, -0.389666, 0.887126,
		-0.955277, -0.055117, -0.290530,
		0.162105, -0.919306, -0.358607,
		27.872559, 37.380264, 30.689541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.440434, 37.638832, 31.391142>,  <27.759085, 38.023777, 30.940565>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.440434, 37.638832, 31.391142> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.613411, 37.320538, 31.221531>,  <27.717197, 37.129562, 31.119764>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.613411, 37.320538, 31.221531>,  <27.440434, 37.638832, 31.391142>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.613411, 37.320538, 31.221531> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166800, -0.532755, 0.829668,
		-0.886098, -0.288057, -0.363116,
		0.432444, -0.795736, -0.424026,
		27.743143, 37.081818, 31.094324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.026461, 36.936840, 31.544407>,  <27.440434, 37.638832, 31.391142>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.026461, 36.936840, 31.544407> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.418839, 36.878922, 31.492586>,  <27.654264, 36.844170, 31.461493>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.418839, 36.878922, 31.492586>,  <27.026461, 36.936840, 31.544407>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.418839, 36.878922, 31.492586> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034606, -0.525913, 0.849834,
		-0.191188, -0.838122, -0.510880,
		0.980944, -0.144798, -0.129553,
		27.713121, 36.835484, 31.453720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.186857, 36.364281, 31.986214>,  <27.026461, 36.936840, 31.544407>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.186857, 36.364281, 31.986214> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.560831, 36.445267, 31.869658>,  <27.785215, 36.493858, 31.799725>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.560831, 36.445267, 31.869658>,  <27.186857, 36.364281, 31.986214>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.560831, 36.445267, 31.869658> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353642, -0.598678, 0.718695,
		-0.028936, -0.774979, -0.631325,
		0.934933, 0.202467, -0.291388,
		27.841311, 36.506008, 31.782242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.532127, 35.681812, 32.110798>,  <27.186857, 36.364281, 31.986214>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.532127, 35.681812, 32.110798> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.802156, 35.975388, 32.080833>,  <27.964174, 36.151531, 32.062855>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.802156, 35.975388, 32.080833>,  <27.532127, 35.681812, 32.110798>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.802156, 35.975388, 32.080833> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549032, -0.431964, 0.715522,
		0.492787, -0.524160, -0.694562,
		0.675073, 0.733937, -0.074915,
		28.004679, 36.195568, 32.058357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.141117, 35.313854, 32.069641>,  <27.532127, 35.681812, 32.110798>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.141117, 35.313854, 32.069641> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.269573, 35.678623, 32.171825>,  <28.346647, 35.897484, 32.233135>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.269573, 35.678623, 32.171825>,  <28.141117, 35.313854, 32.069641>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.269573, 35.678623, 32.171825> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564089, -0.400867, 0.721878,
		0.760706, -0.087720, -0.643142,
		0.321138, 0.911927, 0.255460,
		28.365915, 35.952202, 32.248463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.829365, 35.247890, 32.189358>,  <28.141117, 35.313854, 32.069641>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.829365, 35.247890, 32.189358> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.739532, 35.583725, 32.387207>,  <28.685633, 35.785225, 32.505917>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.739532, 35.583725, 32.387207>,  <28.829365, 35.247890, 32.189358>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.739532, 35.583725, 32.387207> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622828, -0.266701, 0.735497,
		0.749433, 0.473242, -0.463025,
		-0.224579, 0.839591, 0.494623,
		28.672159, 35.835602, 32.535595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.464125, 35.366444, 32.452522>,  <28.829365, 35.247890, 32.189358>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.464125, 35.366444, 32.452522> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.191931, 35.576496, 32.656944>,  <29.028614, 35.702526, 32.779598>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.191931, 35.576496, 32.656944>,  <29.464125, 35.366444, 32.452522>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.191931, 35.576496, 32.656944> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429579, -0.279126, 0.858807,
		0.593633, 0.803946, -0.035643,
		-0.680486, 0.525128, 0.511057,
		28.987785, 35.734035, 32.810261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.854553, 35.808193, 32.953800>,  <29.464125, 35.366444, 32.452522>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.854553, 35.808193, 32.953800> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.483982, 35.739761, 33.087940>,  <29.261639, 35.698700, 33.168423>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.483982, 35.739761, 33.087940>,  <29.854553, 35.808193, 32.953800>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.483982, 35.739761, 33.087940> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369420, -0.241572, 0.897314,
		-0.072505, 0.955183, 0.287001,
		-0.926430, -0.171083, 0.335349,
		29.206053, 35.688435, 33.188545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.803055, 36.242069, 33.492466>,  <29.854553, 35.808193, 32.953800>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.803055, 36.242069, 33.492466> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.586607, 35.905701, 33.494984>,  <29.456738, 35.703880, 33.496494>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.586607, 35.905701, 33.494984>,  <29.803055, 36.242069, 33.492466>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.586607, 35.905701, 33.494984> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555577, -0.351867, 0.753342,
		-0.631286, 0.411146, 0.657599,
		-0.541121, -0.840921, 0.006295,
		29.424271, 35.653423, 33.496872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.610363, 35.996689, 34.179962>,  <29.803055, 36.242069, 33.492466>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.610363, 35.996689, 34.179962> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.609446, 35.682758, 33.932076>,  <29.608894, 35.494400, 33.783344>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.609446, 35.682758, 33.932076>,  <29.610363, 35.996689, 34.179962>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.609446, 35.682758, 33.932076> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.653573, -0.470215, 0.593077,
		-0.756860, -0.403667, 0.514019,
		-0.002294, -0.784826, -0.619713,
		29.608757, 35.447311, 33.746162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.144009, 36.535446, 34.052128>,  <29.610363, 35.996689, 34.179962>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.144009, 36.535446, 34.052128> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.364498, 36.474415, 34.380245>,  <30.496792, 36.437794, 34.577114>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.364498, 36.474415, 34.380245>,  <30.144009, 36.535446, 34.052128>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.364498, 36.474415, 34.380245> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.829261, 0.208700, -0.518431,
		-0.092092, 0.966004, 0.241570,
		0.551222, -0.152581, 0.820289,
		30.529865, 36.428642, 34.626331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.599531, 37.104679, 34.033001>,  <30.144009, 36.535446, 34.052128>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.599531, 37.104679, 34.033001> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.763407, 36.789429, 34.216743>,  <30.861732, 36.600277, 34.326988>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.763407, 36.789429, 34.216743>,  <30.599531, 37.104679, 34.033001>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.763407, 36.789429, 34.216743> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.847514, 0.142572, -0.511266,
		0.337451, 0.598774, 0.726359,
		0.409691, -0.788126, 0.459358,
		30.886314, 36.552990, 34.354549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.316795, 37.340160, 34.307495>,  <30.599531, 37.104679, 34.033001>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.316795, 37.340160, 34.307495> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.265747, 36.952129, 34.224869>,  <31.235117, 36.719311, 34.175293>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.265747, 36.952129, 34.224869>,  <31.316795, 37.340160, 34.307495>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.265747, 36.952129, 34.224869> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.763739, 0.036759, -0.644478,
		0.632784, -0.240014, 0.736191,
		-0.127622, -0.970073, -0.206568,
		31.227461, 36.661106, 34.162899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.052380, 37.084805, 34.192696>,  <31.316795, 37.340160, 34.307495>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.052380, 37.084805, 34.192696> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.796793, 36.831429, 34.018120>,  <31.643440, 36.679405, 33.913376>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.796793, 36.831429, 34.018120>,  <32.052380, 37.084805, 34.192696>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.796793, 36.831429, 34.018120> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614228, -0.078585, -0.785206,
		0.463081, -0.769793, 0.439288,
		-0.638968, -0.633437, -0.436437,
		31.605103, 36.641396, 33.887188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.489151, 36.487354, 33.913120>,  <32.052380, 37.084805, 34.192696>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.489151, 36.487354, 33.913120> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.153805, 36.514145, 33.696732>,  <31.952597, 36.530220, 33.566898>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.153805, 36.514145, 33.696732>,  <32.489151, 36.487354, 33.913120>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.153805, 36.514145, 33.696732> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534988, -0.089200, -0.840138,
		-0.104531, -0.993759, 0.038946,
		-0.838368, 0.066985, -0.540973,
		31.902294, 36.534237, 33.534439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.624886, 36.010807, 33.334305>,  <32.489151, 36.487354, 33.913120>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.624886, 36.010807, 33.334305> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.309483, 36.232040, 33.226711>,  <32.120239, 36.364780, 33.162155>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.309483, 36.232040, 33.226711>,  <32.624886, 36.010807, 33.334305>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.309483, 36.232040, 33.226711> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307750, -0.023838, -0.951169,
		-0.532490, -0.832783, -0.151416,
		-0.788508, 0.553086, -0.268982,
		32.072929, 36.397964, 33.146015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.269379, 35.592022, 32.831478>,  <32.624886, 36.010807, 33.334305>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.269379, 35.592022, 32.831478> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.152538, 35.972698, 32.793610>,  <32.082436, 36.201103, 32.770889>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.152538, 35.972698, 32.793610>,  <32.269379, 35.592022, 32.831478>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.152538, 35.972698, 32.793610> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044351, -0.085398, -0.995359,
		-0.955360, -0.294940, -0.017264,
		-0.292097, 0.951692, -0.094667,
		32.064911, 36.258205, 32.765209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.715202, 35.556488, 32.327438>,  <32.269379, 35.592022, 32.831478>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.715202, 35.556488, 32.327438> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.853157, 35.931389, 32.347862>,  <31.935930, 36.156330, 32.360115>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.853157, 35.931389, 32.347862>,  <31.715202, 35.556488, 32.327438>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.853157, 35.931389, 32.347862> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102771, 0.016364, -0.994570,
		-0.933001, 0.348262, -0.090679,
		0.344887, 0.937254, 0.051059,
		31.956623, 36.212566, 32.363178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.343573, 35.981888, 31.797243>,  <31.715202, 35.556488, 32.327438>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.343573, 35.981888, 31.797243> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.669687, 36.201443, 31.871029>,  <31.865356, 36.333176, 31.915300>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.669687, 36.201443, 31.871029>,  <31.343573, 35.981888, 31.797243>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.669687, 36.201443, 31.871029> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058612, 0.238699, -0.969323,
		-0.576083, 0.801089, 0.162437,
		0.815287, 0.548890, 0.184464,
		31.914274, 36.366108, 31.926369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.309193, 36.507191, 31.270046>,  <31.343573, 35.981888, 31.797243>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.309193, 36.507191, 31.270046> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.696152, 36.486794, 31.369278>,  <31.928328, 36.474556, 31.428818>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.696152, 36.486794, 31.369278>,  <31.309193, 36.507191, 31.270046>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.696152, 36.486794, 31.369278> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252734, 0.130868, -0.958645,
		0.016422, 0.990087, 0.139490,
		0.967397, -0.050996, 0.248079,
		31.986370, 36.471493, 31.443701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.655722, 37.083614, 31.068558>,  <31.309193, 36.507191, 31.270046>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.655722, 37.083614, 31.068558> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.942348, 36.805382, 31.089355>,  <32.114323, 36.638443, 31.101833>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.942348, 36.805382, 31.089355>,  <31.655722, 37.083614, 31.068558>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.942348, 36.805382, 31.089355> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280365, 0.218964, -0.934586,
		0.638694, 0.684269, 0.351918,
		0.716565, -0.695580, 0.051994,
		32.157318, 36.596706, 31.104954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.334106, 37.383938, 30.831694>,  <31.655722, 37.083614, 31.068558>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.334106, 37.383938, 30.831694> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.365410, 36.987911, 30.784962>,  <32.384193, 36.750298, 30.756922>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.365410, 36.987911, 30.784962>,  <32.334106, 37.383938, 30.831694>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.365410, 36.987911, 30.784962> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173854, 0.128949, -0.976292,
		0.981656, 0.056096, 0.182219,
		0.078263, -0.990063, -0.116831,
		32.388889, 36.690891, 30.749912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.924427, 37.364864, 30.524139>,  <32.334106, 37.383938, 30.831694>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.924427, 37.364864, 30.524139> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.764812, 37.005726, 30.449694>,  <32.669044, 36.790241, 30.405025>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.764812, 37.005726, 30.449694>,  <32.924427, 37.364864, 30.524139>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.764812, 37.005726, 30.449694> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414889, 0.004212, -0.909862,
		0.817702, -0.440286, 0.370827,
		-0.399037, -0.897848, -0.186114,
		32.645100, 36.736370, 30.393860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.529743, 37.038597, 30.263557>,  <32.924427, 37.364864, 30.524139>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.529743, 37.038597, 30.263557> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.217033, 36.830379, 30.126232>,  <33.029408, 36.705448, 30.043837>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.217033, 36.830379, 30.126232>,  <33.529743, 37.038597, 30.263557>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.217033, 36.830379, 30.126232> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512407, -0.222530, -0.829409,
		0.355350, -0.824324, 0.440700,
		-0.781771, -0.520549, -0.343314,
		32.982502, 36.674213, 30.023237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.812523, 36.546261, 29.969275>,  <33.529743, 37.038597, 30.263557>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.812523, 36.546261, 29.969275> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.444721, 36.543526, 29.812061>,  <33.224041, 36.541885, 29.717733>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.444721, 36.543526, 29.812061>,  <33.812523, 36.546261, 29.969275>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.444721, 36.543526, 29.812061> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379828, -0.272997, -0.883857,
		-0.101249, -0.961990, 0.253620,
		-0.919500, -0.006843, -0.393031,
		33.168873, 36.541473, 29.694153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.737030, 35.971775, 29.510424>,  <33.812523, 36.546261, 29.969275>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.737030, 35.971775, 29.510424> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.431927, 36.205292, 29.399151>,  <33.248863, 36.345402, 29.332388>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.431927, 36.205292, 29.399151>,  <33.737030, 35.971775, 29.510424>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.431927, 36.205292, 29.399151> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257867, -0.119914, -0.958710,
		-0.593050, -0.802996, -0.059076,
		-0.762756, 0.583797, -0.278181,
		33.203098, 36.380432, 29.315697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.487175, 35.690746, 28.882504>,  <33.737030, 35.971775, 29.510424>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.487175, 35.690746, 28.882504> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.355621, 36.067989, 28.862976>,  <33.276691, 36.294334, 28.851259>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.355621, 36.067989, 28.862976>,  <33.487175, 35.690746, 28.882504>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.355621, 36.067989, 28.862976> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236439, 0.032184, -0.971113,
		-0.914294, -0.330924, -0.233573,
		-0.328882, 0.943108, -0.048817,
		33.256958, 36.350922, 28.848331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.099297, 35.721451, 28.299866>,  <33.487175, 35.690746, 28.882504>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.099297, 35.721451, 28.299866> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.189339, 36.104137, 28.373644>,  <33.243362, 36.333748, 28.417912>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.189339, 36.104137, 28.373644>,  <33.099297, 35.721451, 28.299866>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.189339, 36.104137, 28.373644> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379567, 0.088243, -0.920946,
		-0.897362, 0.277316, -0.343275,
		0.225101, 0.956718, 0.184446,
		33.256870, 36.391151, 28.428978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.748642, 36.058960, 27.767065>,  <33.099297, 35.721451, 28.299866>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.748642, 36.058960, 27.767065> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.040401, 36.293182, 27.908545>,  <33.215458, 36.433716, 27.993431>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.040401, 36.293182, 27.908545>,  <32.748642, 36.058960, 27.767065>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.040401, 36.293182, 27.908545> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361574, 0.108921, -0.925959,
		-0.580730, 0.803278, -0.132277,
		0.729395, 0.585560, 0.353698,
		33.259220, 36.468849, 28.014654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.906876, 36.422958, 27.168652>,  <32.748642, 36.058960, 27.767065>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.906876, 36.422958, 27.168652> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.215160, 36.508907, 27.408596>,  <33.400131, 36.560478, 27.552563>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.215160, 36.508907, 27.408596>,  <32.906876, 36.422958, 27.168652>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.215160, 36.508907, 27.408596> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602016, 0.062888, -0.796004,
		-0.208764, 0.974615, -0.080889,
		0.770711, 0.214873, 0.599862,
		33.446373, 36.573368, 27.588554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.189602, 36.940792, 26.850979>,  <32.906876, 36.422958, 27.168652>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.189602, 36.940792, 26.850979> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.476246, 36.782825, 27.080940>,  <33.648232, 36.688046, 27.218918>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.476246, 36.782825, 27.080940>,  <33.189602, 36.940792, 26.850979>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.476246, 36.782825, 27.080940> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.623270, -0.007395, -0.781972,
		0.313066, 0.918687, 0.240841,
		0.716606, -0.394917, 0.574905,
		33.691227, 36.664349, 27.253412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.755001, 37.410324, 26.798090>,  <33.189602, 36.940792, 26.850979>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.755001, 37.410324, 26.798090> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.890488, 37.055298, 26.922987>,  <33.971779, 36.842281, 26.997925>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.890488, 37.055298, 26.922987>,  <33.755001, 37.410324, 26.798090>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.890488, 37.055298, 26.922987> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.717654, 0.029094, -0.695793,
		0.608479, 0.459755, 0.646822,
		0.338713, -0.887569, 0.312241,
		33.992100, 36.789028, 27.016659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.476227, 37.624107, 26.991854>,  <33.755001, 37.410324, 26.798090>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.476227, 37.624107, 26.991854> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.405548, 37.242462, 26.895155>,  <34.363140, 37.013474, 26.837135>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.405548, 37.242462, 26.895155>,  <34.476227, 37.624107, 26.991854>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.405548, 37.242462, 26.895155> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.791034, 0.008496, -0.611714,
		0.585700, -0.299316, 0.753237,
		-0.176696, -0.954116, -0.241745,
		34.352539, 36.956226, 26.822632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.128033, 37.206188, 27.090302>,  <34.476227, 37.624107, 26.991854>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.128033, 37.206188, 27.090302> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.874016, 37.047752, 26.825022>,  <34.721603, 36.952690, 26.665854>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.874016, 37.047752, 26.825022>,  <35.128033, 37.206188, 27.090302>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.874016, 37.047752, 26.825022> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.698072, 0.073374, -0.712259,
		0.330777, -0.915277, 0.229901,
		-0.635045, -0.396086, -0.663199,
		34.683502, 36.928928, 26.626062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<36.114639, 33.480473, 47.276310> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.723839, 33.564770, 47.263325>,  <35.489357, 33.615349, 47.255535>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.723839, 33.564770, 47.263325>,  <36.114639, 33.480473, 47.276310>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.723839, 33.564770, 47.263325> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009382, 0.109608, 0.993931,
		0.213018, 0.971378, -0.105110,
		-0.977003, 0.210739, -0.032462,
		35.430737, 33.627991, 47.253586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.986767, 34.058315, 47.665504>,  <36.114639, 33.480473, 47.276310>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.986767, 34.058315, 47.665504> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.630543, 33.879951, 47.629578>,  <35.416809, 33.772934, 47.608021>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.630543, 33.879951, 47.629578>,  <35.986767, 34.058315, 47.665504>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.630543, 33.879951, 47.629578> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084100, -0.032637, 0.995923,
		-0.447021, 0.894484, -0.008436,
		-0.890561, -0.445908, -0.089815,
		35.363373, 33.746178, 47.602634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.697094, 34.362030, 48.229733>,  <35.986767, 34.058315, 47.665504>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.697094, 34.362030, 48.229733> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.466949, 34.057503, 48.110168>,  <35.328861, 33.874786, 48.038429>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.466949, 34.057503, 48.110168>,  <35.697094, 34.362030, 48.229733>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.466949, 34.057503, 48.110168> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246128, -0.187349, 0.950958,
		-0.779985, 0.620717, -0.079588,
		-0.575365, -0.761322, -0.298906,
		35.294338, 33.829105, 48.020496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.091335, 34.498985, 48.572807>,  <35.697094, 34.362030, 48.229733>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.091335, 34.498985, 48.572807> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.158375, 34.116245, 48.477852>,  <35.198601, 33.886600, 48.420879>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.158375, 34.116245, 48.477852>,  <35.091335, 34.498985, 48.572807>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.158375, 34.116245, 48.477852> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133787, -0.260646, 0.956120,
		-0.976735, -0.128487, -0.171698,
		0.167602, -0.956846, -0.237392,
		35.208656, 33.829193, 48.406635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.542404, 34.131351, 48.986919>,  <35.091335, 34.498985, 48.572807>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.542404, 34.131351, 48.986919> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.779160, 33.829952, 48.872444>,  <34.921211, 33.649113, 48.803761>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.779160, 33.829952, 48.872444>,  <34.542404, 34.131351, 48.986919>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.779160, 33.829952, 48.872444> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112287, -0.428683, 0.896450,
		-0.798161, -0.498462, -0.338340,
		0.591887, -0.753503, -0.286187,
		34.956726, 33.603901, 48.786587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.222897, 33.586731, 49.278416>,  <34.542404, 34.131351, 48.986919>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.222897, 33.586731, 49.278416> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.589703, 33.450550, 49.195293>,  <34.809784, 33.368843, 49.145420>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.589703, 33.450550, 49.195293>,  <34.222897, 33.586731, 49.278416>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.589703, 33.450550, 49.195293> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110517, -0.283726, 0.952515,
		-0.383246, -0.896433, -0.222554,
		0.917010, -0.340452, -0.207808,
		34.864807, 33.348415, 49.132950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.256527, 32.943890, 49.538979>,  <34.222897, 33.586731, 49.278416>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.256527, 32.943890, 49.538979> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.643738, 33.044136, 49.543301>,  <34.876064, 33.104282, 49.545895>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.643738, 33.044136, 49.543301>,  <34.256527, 32.943890, 49.538979>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.643738, 33.044136, 49.543301> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067011, -0.299877, 0.951621,
		0.241729, -0.920471, -0.307083,
		0.968027, 0.250613, 0.010807,
		34.934147, 33.119320, 49.546543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.640701, 32.375816, 49.803108>,  <34.256527, 32.943890, 49.538979>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.640701, 32.375816, 49.803108> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.876507, 32.697250, 49.835918>,  <35.017990, 32.890110, 49.855602>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.876507, 32.697250, 49.835918>,  <34.640701, 32.375816, 49.803108>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.876507, 32.697250, 49.835918> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098268, -0.172136, 0.980159,
		0.801760, -0.569755, -0.180443,
		0.589511, 0.803585, 0.082023,
		35.053360, 32.938324, 49.860527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.240616, 32.091934, 50.154892>,  <34.640701, 32.375816, 49.803108>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.240616, 32.091934, 50.154892> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.215565, 32.485962, 50.219048>,  <35.200535, 32.722378, 50.257542>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.215565, 32.485962, 50.219048>,  <35.240616, 32.091934, 50.154892>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.215565, 32.485962, 50.219048> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071366, -0.155872, 0.985196,
		0.995482, 0.073147, -0.060538,
		-0.062628, 0.985065, 0.160388,
		35.196777, 32.781483, 50.267162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.592743, 32.230621, 50.799988>,  <35.240616, 32.091934, 50.154892>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.592743, 32.230621, 50.799988> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.378380, 32.564800, 50.751270>,  <35.249763, 32.765308, 50.722038>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.378380, 32.564800, 50.751270>,  <35.592743, 32.230621, 50.799988>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.378380, 32.564800, 50.751270> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227115, -0.003710, 0.973861,
		0.813157, 0.549558, 0.191730,
		-0.535905, 0.835447, -0.121796,
		35.217609, 32.815434, 50.714733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.872013, 32.794540, 51.289684>,  <35.592743, 32.230621, 50.799988>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.872013, 32.794540, 51.289684> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.493343, 32.872944, 51.187405>,  <35.266140, 32.919987, 51.126038>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.493343, 32.872944, 51.187405>,  <35.872013, 32.794540, 51.289684>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.493343, 32.872944, 51.187405> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235302, 0.121502, 0.964298,
		0.220080, 0.973045, -0.068901,
		-0.946677, 0.196010, -0.255700,
		35.209339, 32.931747, 51.110695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.583508, 33.485298, 51.647324>,  <35.872013, 32.794540, 51.289684>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.583508, 33.485298, 51.647324> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.264366, 33.274284, 51.530609>,  <35.072880, 33.147678, 51.460579>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.264366, 33.274284, 51.530609>,  <35.583508, 33.485298, 51.647324>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.264366, 33.274284, 51.530609> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512899, 0.339641, 0.788402,
		-0.316805, 0.778687, -0.541554,
		-0.797853, -0.527533, -0.291788,
		35.025009, 33.116024, 51.443073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.021366, 33.919312, 51.654167>,  <35.583508, 33.485298, 51.647324>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.021366, 33.919312, 51.654167> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.905788, 33.550407, 51.756893>,  <34.836441, 33.329067, 51.818531>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.905788, 33.550407, 51.756893>,  <35.021366, 33.919312, 51.654167>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.905788, 33.550407, 51.756893> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564481, 0.380792, 0.732365,
		-0.773222, 0.066644, -0.630624,
		-0.288944, -0.922256, 0.256818,
		34.819107, 33.273731, 51.833939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.330383, 34.310169, 52.233566>,  <35.021366, 33.919312, 51.654167>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.330383, 34.310169, 52.233566> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.609871, 34.313107, 52.519711>,  <35.777561, 34.314869, 52.691399>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.609871, 34.313107, 52.519711>,  <35.330383, 34.310169, 52.233566>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.609871, 34.313107, 52.519711> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.684390, 0.284347, -0.671385,
		-0.208339, 0.958693, 0.193655,
		0.698717, 0.007341, 0.715361,
		35.819485, 34.315308, 52.734318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.915329, 34.253456, 52.924023>,  <35.330383, 34.310169, 52.233566>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.915329, 34.253456, 52.924023> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.908978, 34.616451, 53.091930>,  <34.905167, 34.834248, 53.192677>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.908978, 34.616451, 53.091930>,  <34.915329, 34.253456, 52.924023>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.908978, 34.616451, 53.091930> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431803, 0.384878, -0.815730,
		-0.901828, 0.168304, -0.397970,
		-0.015879, 0.907493, 0.419768,
		34.904213, 34.888699, 53.217861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.495953, 34.616974, 52.547077>,  <34.915329, 34.253456, 52.924023>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.495953, 34.616974, 52.547077> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.722450, 34.881187, 52.744282>,  <34.858349, 35.039715, 52.862606>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.722450, 34.881187, 52.744282>,  <34.495953, 34.616974, 52.547077>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.722450, 34.881187, 52.744282> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342738, 0.355286, -0.869657,
		-0.749601, 0.661410, -0.025214,
		0.566241, 0.660537, 0.493013,
		34.892323, 35.079350, 52.892185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.277740, 35.233719, 52.276924>,  <34.495953, 34.616974, 52.547077>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.277740, 35.233719, 52.276924> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.645344, 35.292454, 52.423271>,  <34.865906, 35.327694, 52.511078>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.645344, 35.292454, 52.423271>,  <34.277740, 35.233719, 52.276924>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.645344, 35.292454, 52.423271> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291226, 0.372643, -0.881093,
		-0.265718, 0.916283, 0.299699,
		0.919011, 0.146842, 0.365863,
		34.921047, 35.336506, 52.533031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.436069, 35.854843, 52.075985>,  <34.277740, 35.233719, 52.276924>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.436069, 35.854843, 52.075985> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.810036, 35.743649, 52.164215>,  <35.034416, 35.676929, 52.217155>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.810036, 35.743649, 52.164215>,  <34.436069, 35.854843, 52.075985>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.810036, 35.743649, 52.164215> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344927, 0.565746, -0.748971,
		0.083414, 0.776308, 0.624810,
		0.934916, -0.277988, 0.220578,
		35.090511, 35.660252, 52.230389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.780235, 36.471672, 52.227360>,  <34.436069, 35.854843, 52.075985>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.780235, 36.471672, 52.227360> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.046318, 36.194408, 52.116344>,  <35.205967, 36.028049, 52.049736>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.046318, 36.194408, 52.116344>,  <34.780235, 36.471672, 52.227360>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.046318, 36.194408, 52.116344> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278742, 0.575376, -0.768925,
		0.692680, 0.434130, 0.575956,
		0.665205, -0.693162, -0.277541,
		35.245880, 35.986462, 52.033081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.259171, 36.865654, 51.993675>,  <34.780235, 36.471672, 52.227360>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.259171, 36.865654, 51.993675> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.342384, 36.512161, 51.825989>,  <35.392311, 36.300068, 51.725376>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.342384, 36.512161, 51.825989>,  <35.259171, 36.865654, 51.993675>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.342384, 36.512161, 51.825989> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322266, 0.466592, -0.823673,
		0.923509, 0.036249, 0.381861,
		0.208031, -0.883730, -0.419220,
		35.404793, 36.247044, 51.700222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.764938, 37.019836, 51.592274>,  <35.259171, 36.865654, 51.993675>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.764938, 37.019836, 51.592274> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.660889, 36.671970, 51.424458>,  <35.598457, 36.463249, 51.323769>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.660889, 36.671970, 51.424458>,  <35.764938, 37.019836, 51.592274>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.660889, 36.671970, 51.424458> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312028, 0.335472, -0.888874,
		0.913768, -0.362128, 0.184095,
		-0.260127, -0.869668, -0.419537,
		35.582851, 36.411072, 51.298595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.366756, 36.787430, 51.125000>,  <35.764938, 37.019836, 51.592274>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.366756, 36.787430, 51.125000> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.055695, 36.570770, 50.997330>,  <35.869057, 36.440773, 50.920727>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.055695, 36.570770, 50.997330>,  <36.366756, 36.787430, 51.125000>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.055695, 36.570770, 50.997330> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281197, 0.154406, -0.947147,
		0.562304, -0.826302, 0.032236,
		-0.777652, -0.541649, -0.319177,
		35.822399, 36.408276, 50.901577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.630173, 36.274818, 50.697784>,  <36.366756, 36.787430, 51.125000>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.630173, 36.274818, 50.697784> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.249538, 36.320534, 50.583641>,  <36.021160, 36.347961, 50.515156>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.249538, 36.320534, 50.583641>,  <36.630173, 36.274818, 50.697784>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.249538, 36.320534, 50.583641> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287770, 0.004831, -0.957687,
		-0.108073, -0.993436, -0.037485,
		-0.951582, 0.114287, -0.285360,
		35.964066, 36.354820, 50.498032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.489723, 35.913189, 50.124001>,  <36.630173, 36.274818, 50.697784>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.489723, 35.913189, 50.124001> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.174667, 36.158867, 50.104446>,  <35.985634, 36.306274, 50.092712>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.174667, 36.158867, 50.104446>,  <36.489723, 35.913189, 50.124001>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.174667, 36.158867, 50.104446> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060468, -0.156018, -0.985902,
		-0.613159, -0.773581, 0.160025,
		-0.787642, 0.614191, -0.048887,
		35.938374, 36.343124, 50.089779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.935417, 35.591427, 49.773540>,  <36.489723, 35.913189, 50.124001>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.935417, 35.591427, 49.773540> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.873684, 35.985897, 49.749401>,  <35.836643, 36.222580, 49.734917>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.873684, 35.985897, 49.749401>,  <35.935417, 35.591427, 49.773540>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.873684, 35.985897, 49.749401> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290002, -0.103606, -0.951401,
		-0.944500, -0.129332, 0.301983,
		-0.154334, 0.986174, -0.060350,
		35.827385, 36.281750, 49.731297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.395508, 35.675209, 49.432159>,  <35.935417, 35.591427, 49.773540>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.395508, 35.675209, 49.432159> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.540154, 36.046448, 49.396652>,  <35.626942, 36.269192, 49.375347>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.540154, 36.046448, 49.396652>,  <35.395508, 35.675209, 49.432159>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.540154, 36.046448, 49.396652> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156847, -0.033301, -0.987061,
		-0.919041, 0.370857, 0.133526,
		0.361612, 0.928093, -0.088772,
		35.648636, 36.324875, 49.370022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.955612, 35.932884, 48.972366>,  <35.395508, 35.675209, 49.432159>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.955612, 35.932884, 48.972366> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.278732, 36.168671, 48.972664>,  <35.472603, 36.310143, 48.972843>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.278732, 36.168671, 48.972664>,  <34.955612, 35.932884, 48.972366>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.278732, 36.168671, 48.972664> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040331, 0.056536, -0.997586,
		-0.588081, 0.805815, 0.069443,
		0.807796, 0.589462, 0.000748,
		35.521072, 36.345509, 48.972889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.840473, 36.389874, 48.448673>,  <34.955612, 35.932884, 48.972366>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.840473, 36.389874, 48.448673> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.235786, 36.390724, 48.509712>,  <35.472977, 36.391235, 48.546337>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.235786, 36.390724, 48.509712>,  <34.840473, 36.389874, 48.448673>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.235786, 36.390724, 48.509712> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152475, -0.056863, -0.986670,
		0.006578, 0.998380, -0.056521,
		0.988286, 0.002128, 0.152602,
		35.532272, 36.391361, 48.555492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.314053, 36.765247, 48.273342>,  <34.840473, 36.389874, 48.448673>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.314053, 36.765247, 48.273342> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.950623, 36.712776, 48.114708>,  <33.732563, 36.681293, 48.019527>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.950623, 36.712776, 48.114708>,  <34.314053, 36.765247, 48.273342>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.950623, 36.712776, 48.114708> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290673, -0.483312, 0.825784,
		-0.300001, 0.865564, 0.400996,
		-0.908575, -0.131178, -0.396590,
		33.678051, 36.673424, 47.995731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.929794, 37.029007, 48.823402>,  <34.314053, 36.765247, 48.273342>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.929794, 37.029007, 48.823402> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.678520, 36.812748, 48.599590>,  <33.527756, 36.682991, 48.465302>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.678520, 36.812748, 48.599590>,  <33.929794, 37.029007, 48.823402>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.678520, 36.812748, 48.599590> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219401, -0.566867, 0.794056,
		-0.746486, 0.621579, 0.237480,
		-0.628189, -0.540649, -0.559534,
		33.490063, 36.650555, 48.431728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.232178, 37.268883, 48.958889>,  <33.929794, 37.029007, 48.823402>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.232178, 37.268883, 48.958889> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.171967, 36.903805, 48.806927>,  <33.135841, 36.684757, 48.715752>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.171967, 36.903805, 48.806927>,  <33.232178, 37.268883, 48.958889>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.171967, 36.903805, 48.806927> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323804, -0.317566, 0.891237,
		-0.934074, 0.257166, -0.247735,
		-0.150523, -0.912698, -0.379901,
		33.126808, 36.629997, 48.692955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.582371, 37.106819, 49.102882>,  <33.232178, 37.268883, 48.958889>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.582371, 37.106819, 49.102882> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.750484, 36.745735, 49.066048>,  <32.851353, 36.529087, 49.043945>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.750484, 36.745735, 49.066048>,  <32.582371, 37.106819, 49.102882>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.750484, 36.745735, 49.066048> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508435, -0.318341, 0.800096,
		-0.751568, -0.289446, -0.592761,
		0.420285, -0.902707, -0.092090,
		32.876572, 36.474922, 49.038422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.133438, 36.768749, 49.528217>,  <32.582371, 37.106819, 49.102882>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.133438, 36.768749, 49.528217> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.410973, 36.491211, 49.451099>,  <32.577492, 36.324688, 49.404827>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.410973, 36.491211, 49.451099>,  <32.133438, 36.768749, 49.528217>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.410973, 36.491211, 49.451099> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252597, -0.485203, 0.837122,
		-0.674382, -0.532123, -0.511913,
		0.693833, -0.693848, -0.192799,
		32.619122, 36.283058, 49.393261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.795723, 36.157722, 49.598377>,  <32.133438, 36.768749, 49.528217>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.795723, 36.157722, 49.598377> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.186092, 36.093090, 49.656982>,  <32.420315, 36.054310, 49.692146>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.186092, 36.093090, 49.656982>,  <31.795723, 36.157722, 49.598377>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.186092, 36.093090, 49.656982> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203767, -0.435796, 0.876676,
		-0.077800, -0.885423, -0.458228,
		0.975923, -0.161577, 0.146515,
		32.478870, 36.044617, 49.700935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.746941, 35.598000, 49.921738>,  <31.795723, 36.157722, 49.598377>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.746941, 35.598000, 49.921738> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.123554, 35.709175, 49.997906>,  <32.349522, 35.775883, 50.043606>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.123554, 35.709175, 49.997906>,  <31.746941, 35.598000, 49.921738>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.123554, 35.709175, 49.997906> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135784, -0.204213, 0.969464,
		0.308342, -0.938640, -0.154533,
		0.941535, 0.277943, 0.190420,
		32.406013, 35.792557, 50.055031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.459833, 34.964825, 49.848202>,  <31.746941, 35.598000, 49.921738>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.459833, 34.964825, 49.848202> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.060476, 34.955803, 49.869022>,  <30.820862, 34.950390, 49.881516>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.060476, 34.955803, 49.869022>,  <31.459833, 34.964825, 49.848202>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.060476, 34.955803, 49.869022> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054189, 0.108076, -0.992665,
		0.016758, -0.993887, -0.109124,
		-0.998390, -0.022548, 0.052047,
		30.760960, 34.949039, 49.884636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.153219, 34.362862, 49.455425>,  <31.459833, 34.964825, 49.848202>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.153219, 34.362862, 49.455425> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.911255, 34.680290, 49.481728>,  <30.766077, 34.870747, 49.497509>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.911255, 34.680290, 49.481728>,  <31.153219, 34.362862, 49.455425>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.911255, 34.680290, 49.481728> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033859, 0.108136, -0.993559,
		-0.795573, -0.598788, -0.092282,
		-0.604911, 0.793574, 0.065756,
		30.729782, 34.918362, 49.501453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.993965, 34.470646, 48.846867>,  <31.153219, 34.362862, 49.455425>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.993965, 34.470646, 48.846867> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.780787, 34.788830, 48.962246>,  <30.652880, 34.979740, 49.031475>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.780787, 34.788830, 48.962246>,  <30.993965, 34.470646, 48.846867>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.780787, 34.788830, 48.962246> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082694, 0.388231, -0.917844,
		-0.842097, -0.465311, -0.272687,
		-0.532949, 0.795464, 0.288450,
		30.620901, 35.027470, 49.048782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.550673, 34.559422, 48.395123>,  <30.993965, 34.470646, 48.846867>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.550673, 34.559422, 48.395123> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.591963, 34.922729, 48.557301>,  <30.616737, 35.140717, 48.654606>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.591963, 34.922729, 48.557301>,  <30.550673, 34.559422, 48.395123>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.591963, 34.922729, 48.557301> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242516, 0.372336, -0.895852,
		-0.964640, 0.190803, -0.181836,
		0.103227, 0.908273, 0.405443,
		30.622931, 35.195213, 48.678932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.223150, 34.933533, 47.920017>,  <30.550673, 34.559422, 48.395123>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.223150, 34.933533, 47.920017> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.442005, 35.196102, 48.127769>,  <30.573318, 35.353642, 48.252419>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.442005, 35.196102, 48.127769>,  <30.223150, 34.933533, 47.920017>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.442005, 35.196102, 48.127769> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191129, 0.506127, -0.841015,
		-0.814930, 0.559418, 0.151460,
		0.547137, 0.656420, 0.519379,
		30.606146, 35.393028, 48.283585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.957882, 35.625973, 47.792973>,  <30.223150, 34.933533, 47.920017>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.957882, 35.625973, 47.792973> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.349457, 35.618603, 47.874302>,  <30.584402, 35.614182, 47.923100>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.349457, 35.618603, 47.874302>,  <29.957882, 35.625973, 47.792973>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.349457, 35.618603, 47.874302> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185114, 0.500075, -0.845966,
		-0.086086, 0.865786, 0.492954,
		0.978939, -0.018427, 0.203319,
		30.643139, 35.613075, 47.935299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.159338, 36.059391, 47.347183>,  <29.957882, 35.625973, 47.792973>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.159338, 36.059391, 47.347183> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.506697, 35.912487, 47.480453>,  <30.715113, 35.824345, 47.560417>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.506697, 35.912487, 47.480453>,  <30.159338, 36.059391, 47.347183>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.506697, 35.912487, 47.480453> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438770, 0.256079, -0.861339,
		0.231011, 0.894174, 0.383519,
		0.868398, -0.367256, 0.333180,
		30.767216, 35.802311, 47.580406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<32.354370, 31.121994, 50.490673> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.669819, 31.358587, 50.423470>,  <32.859089, 31.500544, 50.383148>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.669819, 31.358587, 50.423470>,  <32.354370, 31.121994, 50.490673>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.669819, 31.358587, 50.423470> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480895, 0.423028, -0.767976,
		-0.383169, 0.686437, 0.618049,
		0.788620, 0.591482, -0.168013,
		32.906406, 31.536032, 50.373066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.038925, 31.761431, 50.348724>,  <32.354370, 31.121994, 50.490673>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.038925, 31.761431, 50.348724> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.420300, 31.760513, 50.228088>,  <32.649124, 31.759962, 50.155708>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.420300, 31.760513, 50.228088>,  <32.038925, 31.761431, 50.348724>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.420300, 31.760513, 50.228088> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286044, 0.310123, -0.906644,
		0.095610, 0.950694, 0.295026,
		0.953435, -0.002293, -0.301591,
		32.706329, 31.759825, 50.137611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.084888, 32.351318, 49.951485>,  <32.038925, 31.761431, 50.348724>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.084888, 32.351318, 49.951485> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.405350, 32.131580, 49.856514>,  <32.597626, 31.999737, 49.799530>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.405350, 32.131580, 49.856514>,  <32.084888, 32.351318, 49.951485>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.405350, 32.131580, 49.856514> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020792, 0.422038, -0.906340,
		0.598098, 0.721180, 0.349539,
		0.801153, -0.549348, -0.237425,
		32.645695, 31.966776, 49.785286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.648712, 32.834515, 49.727402>,  <32.084888, 32.351318, 49.951485>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.648712, 32.834515, 49.727402> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.719002, 32.465900, 49.588898>,  <32.761177, 32.244732, 49.505795>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.719002, 32.465900, 49.588898>,  <32.648712, 32.834515, 49.727402>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.719002, 32.465900, 49.588898> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030635, 0.346444, -0.937570,
		0.983963, 0.175360, 0.032647,
		0.175723, -0.921534, -0.346261,
		32.771717, 32.189442, 49.485020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.982193, 33.056206, 49.167095>,  <32.648712, 32.834515, 49.727402>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.982193, 33.056206, 49.167095> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.904224, 32.667210, 49.116085>,  <32.857441, 32.433811, 49.085480>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.904224, 32.667210, 49.116085>,  <32.982193, 33.056206, 49.167095>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.904224, 32.667210, 49.116085> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164111, 0.095846, -0.981774,
		0.966991, -0.212299, 0.140915,
		-0.194923, -0.972493, -0.127523,
		32.845749, 32.375462, 49.077827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.474030, 32.761326, 48.761803>,  <32.982193, 33.056206, 49.167095>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.474030, 32.761326, 48.761803> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.160057, 32.514606, 48.738304>,  <32.971676, 32.366573, 48.724205>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.160057, 32.514606, 48.738304>,  <33.474030, 32.761326, 48.761803>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.160057, 32.514606, 48.738304> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051912, 0.029018, -0.998230,
		0.617410, -0.786587, 0.009242,
		-0.784927, -0.616797, -0.058749,
		32.924580, 32.329567, 48.720680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.737030, 32.344437, 48.216232>,  <33.474030, 32.761326, 48.761803>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.737030, 32.344437, 48.216232> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.347542, 32.263523, 48.258091>,  <33.113850, 32.214973, 48.283207>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.347542, 32.263523, 48.258091>,  <33.737030, 32.344437, 48.216232>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.347542, 32.263523, 48.258091> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095893, -0.052637, -0.993999,
		0.206581, -0.977911, 0.031856,
		-0.973719, -0.202287, 0.104649,
		33.055428, 32.202839, 48.289486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.566803, 31.654388, 47.898151>,  <33.737030, 32.344437, 48.216232>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.566803, 31.654388, 47.898151> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.245106, 31.891356, 47.879223>,  <33.052090, 32.033535, 47.867867>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.245106, 31.891356, 47.879223>,  <33.566803, 31.654388, 47.898151>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.245106, 31.891356, 47.879223> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022365, -0.049405, -0.998528,
		-0.593885, -0.804114, 0.026484,
		-0.804239, 0.592419, -0.047325,
		33.003834, 32.069080, 47.865025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.240150, 31.308681, 47.395695>,  <33.566803, 31.654388, 47.898151>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.240150, 31.308681, 47.395695> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.065121, 31.666267, 47.434399>,  <32.960102, 31.880819, 47.457623>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.065121, 31.666267, 47.434399>,  <33.240150, 31.308681, 47.395695>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.065121, 31.666267, 47.434399> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129862, 0.043653, -0.990571,
		-0.889757, -0.446011, 0.096990,
		-0.437571, 0.893963, 0.096761,
		32.933849, 31.934456, 47.463428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.630741, 31.312445, 46.930843>,  <33.240150, 31.308681, 47.395695>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.630741, 31.312445, 46.930843> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.721050, 31.698666, 46.982590>,  <32.775234, 31.930399, 47.013638>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.721050, 31.698666, 46.982590>,  <32.630741, 31.312445, 46.930843>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.721050, 31.698666, 46.982590> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312976, 0.197650, -0.928967,
		-0.922536, 0.169245, 0.346818,
		0.225771, 0.965552, 0.129370,
		32.788780, 31.988331, 47.021400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.041115, 31.584173, 46.697742>,  <32.630741, 31.312445, 46.930843>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.041115, 31.584173, 46.697742> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.340611, 31.848576, 46.717560>,  <32.520309, 32.007217, 46.729450>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.340611, 31.848576, 46.717560>,  <32.041115, 31.584173, 46.697742>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.340611, 31.848576, 46.717560> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206040, 0.303126, -0.930410,
		-0.630024, 0.686430, 0.363157,
		0.748744, 0.661005, 0.049545,
		32.565235, 32.046879, 46.732422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.736309, 32.214336, 46.498360>,  <32.041115, 31.584173, 46.697742>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.736309, 32.214336, 46.498360> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.125641, 32.228935, 46.407764>,  <32.359241, 32.237694, 46.353409>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.125641, 32.228935, 46.407764>,  <31.736309, 32.214336, 46.498360>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.125641, 32.228935, 46.407764> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229093, 0.206155, -0.951323,
		0.011972, 0.977838, 0.209018,
		0.973331, 0.036496, -0.226484,
		32.417641, 32.239883, 46.339821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.312769, 32.841370, 46.570873>,  <31.736309, 32.214336, 46.498360>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.312769, 32.841370, 46.570873> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.919323, 32.895840, 46.523613>,  <30.683256, 32.928520, 46.495258>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.919323, 32.895840, 46.523613>,  <31.312769, 32.841370, 46.570873>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.919323, 32.895840, 46.523613> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115281, 0.028791, 0.992916,
		0.138610, 0.990267, -0.012621,
		-0.983615, 0.136173, -0.118150,
		30.624239, 32.936691, 46.488167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.114950, 33.416817, 47.028984>,  <31.312769, 32.841370, 46.570873>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.114950, 33.416817, 47.028984> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.766003, 33.228333, 46.976929>,  <30.556635, 33.115242, 46.945694>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.766003, 33.228333, 46.976929>,  <31.114950, 33.416817, 47.028984>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.766003, 33.228333, 46.976929> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185136, 0.072070, 0.980067,
		-0.452438, 0.879072, -0.150110,
		-0.872367, -0.471210, -0.130141,
		30.504292, 33.086971, 46.937885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.599216, 33.751282, 47.400898>,  <31.114950, 33.416817, 47.028984>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.599216, 33.751282, 47.400898> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.469795, 33.380203, 47.326393>,  <30.392141, 33.157555, 47.281693>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.469795, 33.380203, 47.326393>,  <30.599216, 33.751282, 47.400898>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.469795, 33.380203, 47.326393> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291522, -0.089536, 0.952365,
		-0.900182, 0.362441, -0.241474,
		-0.323555, -0.927696, -0.186258,
		30.372728, 33.101894, 47.270515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.898777, 33.739254, 47.573845>,  <30.599216, 33.751282, 47.400898>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.898777, 33.739254, 47.573845> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.038076, 33.364388, 47.582218>,  <30.121656, 33.139465, 47.587242>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.038076, 33.364388, 47.582218>,  <29.898777, 33.739254, 47.573845>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.038076, 33.364388, 47.582218> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349784, -0.109197, 0.930445,
		-0.869698, -0.331346, -0.365834,
		0.348247, -0.937169, 0.020931,
		30.142551, 33.083237, 47.588497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.354715, 33.323948, 47.805779>,  <29.898777, 33.739254, 47.573845>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.354715, 33.323948, 47.805779> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.658649, 33.070229, 47.862797>,  <29.841009, 32.917999, 47.897007>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.658649, 33.070229, 47.862797>,  <29.354715, 33.323948, 47.805779>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.658649, 33.070229, 47.862797> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420267, -0.311961, 0.852089,
		-0.496009, -0.707353, -0.503613,
		0.759836, -0.634296, 0.142542,
		29.886600, 32.879940, 47.905560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.017311, 32.760277, 48.168339>,  <29.354715, 33.323948, 47.805779>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.017311, 32.760277, 48.168339> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.411283, 32.722782, 48.226479>,  <29.647667, 32.700287, 48.261360>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.411283, 32.722782, 48.226479>,  <29.017311, 32.760277, 48.168339>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.411283, 32.722782, 48.226479> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164195, -0.242760, 0.956090,
		-0.054330, -0.965548, -0.254492,
		0.984931, -0.093731, 0.145348,
		29.706762, 32.694664, 48.270084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.206940, 32.192497, 48.478207>,  <29.017311, 32.760277, 48.168339>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.206940, 32.192497, 48.478207> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.516027, 32.424126, 48.582188>,  <29.701481, 32.563103, 48.644577>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.516027, 32.424126, 48.582188>,  <29.206940, 32.192497, 48.478207>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.516027, 32.424126, 48.582188> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082531, -0.497717, 0.863404,
		0.629359, -0.645716, -0.432388,
		0.772720, 0.579076, 0.259951,
		29.747843, 32.597847, 48.660172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.679350, 31.685953, 48.890301>,  <29.206940, 32.192497, 48.478207>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.679350, 31.685953, 48.890301> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.852684, 32.042561, 48.943081>,  <29.956684, 32.256527, 48.974751>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.852684, 32.042561, 48.943081>,  <29.679350, 31.685953, 48.890301>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.852684, 32.042561, 48.943081> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441919, -0.337798, 0.831024,
		0.785447, -0.301802, -0.540359,
		0.433337, 0.891520, 0.131950,
		29.982685, 32.310017, 48.982666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.373343, 31.553522, 49.177803>,  <29.679350, 31.685953, 48.890301>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.373343, 31.553522, 49.177803> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.335430, 31.937574, 49.283001>,  <30.312683, 32.168007, 49.346119>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.335430, 31.937574, 49.283001>,  <30.373343, 31.553522, 49.177803>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.335430, 31.937574, 49.283001> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306177, -0.223262, 0.925424,
		0.947245, 0.168234, -0.272810,
		-0.094780, 0.960131, 0.262993,
		30.306995, 32.225613, 49.361900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.053373, 31.847263, 49.496895>,  <30.373343, 31.553522, 49.177803>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.053373, 31.847263, 49.496895> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.739771, 32.049435, 49.641048>,  <30.551609, 32.170738, 49.727539>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.739771, 32.049435, 49.641048>,  <31.053373, 31.847263, 49.496895>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.739771, 32.049435, 49.641048> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278519, -0.232419, 0.931885,
		0.554762, 0.830976, 0.041446,
		-0.784007, 0.505431, 0.360380,
		30.504568, 32.201065, 49.749161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.278608, 32.141964, 50.038425>,  <31.053373, 31.847263, 49.496895>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.278608, 32.141964, 50.038425> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.883112, 32.155132, 50.096813>,  <30.645815, 32.163033, 50.131847>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.883112, 32.155132, 50.096813>,  <31.278608, 32.141964, 50.038425>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.883112, 32.155132, 50.096813> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135006, -0.224477, 0.965082,
		0.064539, 0.973923, 0.217505,
		-0.988741, 0.032921, 0.145974,
		30.586491, 32.165009, 50.140606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.150206, 32.453850, 50.774242>,  <31.278608, 32.141964, 50.038425>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.150206, 32.453850, 50.774242> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.819143, 32.263870, 50.654633>,  <30.620506, 32.149883, 50.582867>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.819143, 32.263870, 50.654633>,  <31.150206, 32.453850, 50.774242>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.819143, 32.263870, 50.654633> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195004, -0.256241, 0.946739,
		-0.526271, 0.841883, 0.119463,
		-0.827655, -0.474945, -0.299023,
		30.570847, 32.121387, 50.564926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.584545, 32.689056, 51.147484>,  <31.150206, 32.453850, 50.774242>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.584545, 32.689056, 51.147484> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.448439, 32.336861, 51.015446>,  <30.366776, 32.125546, 50.936222>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.448439, 32.336861, 51.015446>,  <30.584545, 32.689056, 51.147484>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.448439, 32.336861, 51.015446> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155908, -0.293359, 0.943203,
		-0.927314, 0.372405, -0.037455,
		-0.340266, -0.880486, -0.330097,
		30.346359, 32.072716, 50.916416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.931646, 32.589539, 51.443027>,  <30.584545, 32.689056, 51.147484>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.931646, 32.589539, 51.443027> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.093542, 32.232735, 51.362526>,  <30.190680, 32.018650, 51.314224>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.093542, 32.232735, 51.362526>,  <29.931646, 32.589539, 51.443027>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.093542, 32.232735, 51.362526> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146025, -0.280305, 0.948739,
		-0.902698, -0.354603, -0.243706,
		0.404738, -0.892012, -0.201250,
		30.214964, 31.965132, 51.302151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.780251, 33.208378, 51.766235>,  <29.931646, 32.589539, 51.443027>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.780251, 33.208378, 51.766235> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.976517, 33.447857, 52.019474>,  <30.094276, 33.591545, 52.171417>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.976517, 33.447857, 52.019474>,  <29.780251, 33.208378, 51.766235>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.976517, 33.447857, 52.019474> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326069, 0.547618, -0.770580,
		-0.808038, 0.584530, 0.073480,
		0.490666, 0.598698, 0.633093,
		30.123716, 33.627468, 52.209404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.448082, 33.888847, 51.649483>,  <29.780251, 33.208378, 51.766235>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.448082, 33.888847, 51.649483> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.821140, 33.935955, 51.785896>,  <30.044975, 33.964218, 51.867744>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.821140, 33.935955, 51.785896>,  <29.448082, 33.888847, 51.649483>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.821140, 33.935955, 51.785896> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170855, 0.688365, -0.704955,
		-0.317778, 0.715740, 0.621879,
		0.932645, 0.117768, 0.341035,
		30.100933, 33.971287, 51.888206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.525787, 34.658310, 51.863491>,  <29.448082, 33.888847, 51.649483>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.525787, 34.658310, 51.863491> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.867245, 34.476059, 51.762535>,  <30.072119, 34.366707, 51.701962>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.867245, 34.476059, 51.762535>,  <29.525787, 34.658310, 51.863491>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.867245, 34.476059, 51.762535> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154873, 0.684675, -0.712204,
		0.497303, 0.568879, 0.655032,
		0.853641, -0.455628, -0.252387,
		30.123337, 34.339371, 51.686817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.900269, 35.138607, 51.783585>,  <29.525787, 34.658310, 51.863491>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.900269, 35.138607, 51.783585> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.155304, 34.871468, 51.629978>,  <30.308325, 34.711185, 51.537815>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.155304, 34.871468, 51.629978>,  <29.900269, 35.138607, 51.783585>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.155304, 34.871468, 51.629978> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103361, 0.568122, -0.816427,
		0.763414, 0.480851, 0.431256,
		0.637586, -0.667847, -0.384011,
		30.346581, 34.671112, 51.514774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.475376, 35.498981, 51.539314>,  <29.900269, 35.138607, 51.783585>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.475376, 35.498981, 51.539314> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.500788, 35.171074, 51.311653>,  <30.516035, 34.974327, 51.175056>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.500788, 35.171074, 51.311653>,  <30.475376, 35.498981, 51.539314>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.500788, 35.171074, 51.311653> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246069, 0.565565, -0.787138,
		0.967168, -0.090046, 0.237650,
		0.063528, -0.819773, -0.569154,
		30.519846, 34.925140, 51.140907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.978853, 35.600868, 50.952412>,  <30.475376, 35.498981, 51.539314>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.978853, 35.600868, 50.952412> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.807156, 35.255909, 50.845062>,  <30.704138, 35.048935, 50.780651>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.807156, 35.255909, 50.845062>,  <30.978853, 35.600868, 50.952412>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.807156, 35.255909, 50.845062> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151799, 0.224033, -0.962687,
		0.890341, -0.453966, 0.034746,
		-0.429243, -0.862394, -0.268377,
		30.678383, 34.997192, 50.764549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.421265, 35.260365, 50.529125>,  <30.978853, 35.600868, 50.952412>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.421265, 35.260365, 50.529125> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.058168, 35.121750, 50.434536>,  <30.840311, 35.038582, 50.377781>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.058168, 35.121750, 50.434536>,  <31.421265, 35.260365, 50.529125>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.058168, 35.121750, 50.434536> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172809, 0.204777, -0.963433,
		0.382289, -0.915412, -0.126000,
		-0.907740, -0.346537, -0.236475,
		30.785847, 35.017788, 50.363594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.064297, 35.027378, 50.258686>,  <31.421265, 35.260365, 50.529125>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.064297, 35.027378, 50.258686> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.285446, 35.344074, 50.362587>,  <32.418137, 35.534092, 50.424927>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.285446, 35.344074, 50.362587>,  <32.064297, 35.027378, 50.258686>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.285446, 35.344074, 50.362587> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081202, -0.259056, 0.962443,
		0.829300, -0.553201, -0.078934,
		0.552873, 0.791744, 0.259757,
		32.451309, 35.581596, 50.440514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.653336, 34.758270, 50.640526>,  <32.064297, 35.027378, 50.258686>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.653336, 34.758270, 50.640526> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.595749, 35.145615, 50.722065>,  <32.561195, 35.378021, 50.770988>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.595749, 35.145615, 50.722065>,  <32.653336, 34.758270, 50.640526>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.595749, 35.145615, 50.722065> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136252, -0.184638, 0.973316,
		0.980158, 0.167902, -0.105359,
		-0.143968, 0.968358, 0.203851,
		32.552559, 35.436123, 50.783222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.244087, 34.991879, 51.010670>,  <32.653336, 34.758270, 50.640526>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.244087, 34.991879, 51.010670> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.961941, 35.257122, 51.110859>,  <32.792652, 35.416267, 51.170971>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.961941, 35.257122, 51.110859>,  <33.244087, 34.991879, 51.010670>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.961941, 35.257122, 51.110859> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312477, -0.026275, 0.949562,
		0.636248, 0.748058, -0.188674,
		-0.705370, 0.663113, 0.250469,
		32.750328, 35.456055, 51.186001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.515385, 35.280685, 51.564678>,  <33.244087, 34.991879, 51.010670>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.515385, 35.280685, 51.564678> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.129639, 35.377174, 51.608158>,  <32.898193, 35.435066, 51.634247>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.129639, 35.377174, 51.608158>,  <33.515385, 35.280685, 51.564678>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.129639, 35.377174, 51.608158> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134670, 0.093864, 0.986435,
		0.227745, 0.965920, -0.123004,
		-0.964363, 0.241220, 0.108703,
		32.840328, 35.449539, 51.640770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.543095, 35.778973, 52.073936>,  <33.515385, 35.280685, 51.564678>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.543095, 35.778973, 52.073936> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.154694, 35.685104, 52.092205>,  <32.921654, 35.628784, 52.103165>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.154694, 35.685104, 52.092205>,  <33.543095, 35.778973, 52.073936>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.154694, 35.685104, 52.092205> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064538, -0.073361, 0.995215,
		-0.230200, 0.969302, 0.086379,
		-0.971001, -0.234673, 0.045669,
		32.863392, 35.614704, 52.105907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.209629, 36.210842, 52.509655>,  <33.543095, 35.778973, 52.073936>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.209629, 36.210842, 52.509655> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.966045, 35.893703, 52.519100>,  <32.819893, 35.703419, 52.524765>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.966045, 35.893703, 52.519100>,  <33.209629, 36.210842, 52.509655>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.966045, 35.893703, 52.519100> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041362, 0.061464, 0.997252,
		-0.792120, 0.606312, -0.070222,
		-0.608962, -0.792848, 0.023609,
		32.783356, 35.655849, 52.526184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.668903, 36.376488, 53.002888>,  <33.209629, 36.210842, 52.509655>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.668903, 36.376488, 53.002888> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.643150, 35.977547, 52.989357>,  <32.627697, 35.738182, 52.981239>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.643150, 35.977547, 52.989357>,  <32.668903, 36.376488, 53.002888>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.643150, 35.977547, 52.989357> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169101, -0.022505, 0.985342,
		-0.983494, 0.069159, -0.167204,
		-0.064382, -0.997352, -0.033829,
		32.623837, 35.678341, 52.979210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.148914, 36.244297, 53.453533>,  <32.668903, 36.376488, 53.002888>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.148914, 36.244297, 53.453533> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.350750, 35.902935, 53.401237>,  <32.471851, 35.698120, 53.369858>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.350750, 35.902935, 53.401237>,  <32.148914, 36.244297, 53.453533>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.350750, 35.902935, 53.401237> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145607, -0.233382, 0.961421,
		-0.850993, -0.466085, -0.242023,
		0.504588, -0.853403, -0.130742,
		32.502125, 35.646915, 53.362015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.760450, 35.685177, 53.855286>,  <32.148914, 36.244297, 53.453533>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.760450, 35.685177, 53.855286> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.142200, 35.584328, 53.791290>,  <32.371250, 35.523819, 53.752892>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.142200, 35.584328, 53.791290>,  <31.760450, 35.685177, 53.855286>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.142200, 35.584328, 53.791290> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098893, -0.238680, 0.966050,
		-0.281755, -0.937797, -0.202857,
		0.954377, -0.252129, -0.159991,
		32.428513, 35.508690, 53.743294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<35.598225, 36.554634, 37.763950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.915905, 36.735893, 37.925888>,  <36.106514, 36.844650, 38.023052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.915905, 36.735893, 37.925888>,  <35.598225, 36.554634, 37.763950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.915905, 36.735893, 37.925888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540251, 0.221578, 0.811808,
		0.278171, -0.863454, 0.420794,
		0.794197, 0.453156, 0.404846,
		36.154163, 36.871838, 38.047344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.868519, 36.243122, 38.400406>,  <35.598225, 36.554634, 37.763950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.868519, 36.243122, 38.400406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.992378, 36.622486, 38.427670>,  <36.066692, 36.850105, 38.444027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.992378, 36.622486, 38.427670>,  <35.868519, 36.243122, 38.400406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.992378, 36.622486, 38.427670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370820, 0.054440, 0.927108,
		0.875564, -0.312350, 0.368545,
		0.309645, 0.948406, 0.068160,
		36.085270, 36.907009, 38.448116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.083218, 36.306583, 39.041401>,  <35.868519, 36.243122, 38.400406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.083218, 36.306583, 39.041401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.059814, 36.694927, 38.948441>,  <36.045773, 36.927933, 38.892662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.059814, 36.694927, 38.948441>,  <36.083218, 36.306583, 39.041401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.059814, 36.694927, 38.948441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374036, 0.194524, 0.906784,
		0.925566, 0.139986, 0.351754,
		-0.058513, 0.970858, -0.232405,
		36.042259, 36.986183, 38.878719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.509659, 36.632481, 39.591000>,  <36.083218, 36.306583, 39.041401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.509659, 36.632481, 39.591000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.245430, 36.896503, 39.447910>,  <36.086891, 37.054916, 39.362057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.245430, 36.896503, 39.447910>,  <36.509659, 36.632481, 39.591000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.245430, 36.896503, 39.447910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324825, 0.178303, 0.928815,
		0.676852, 0.729751, 0.096619,
		-0.660575, 0.660054, -0.357726,
		36.047256, 37.094521, 39.340591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.418934, 37.009090, 40.127590>,  <36.509659, 36.632481, 39.591000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.418934, 37.009090, 40.127590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.126698, 37.171925, 39.908314>,  <35.951355, 37.269627, 39.776749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.126698, 37.171925, 39.908314>,  <36.418934, 37.009090, 40.127590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.126698, 37.171925, 39.908314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367591, 0.442091, 0.818189,
		0.575424, 0.799273, -0.173348,
		-0.730592, 0.407085, -0.548195,
		35.907520, 37.294048, 39.743855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.360741, 37.599567, 40.444679>,  <36.418934, 37.009090, 40.127590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.360741, 37.599567, 40.444679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.017506, 37.545464, 40.246529>,  <35.811565, 37.513000, 40.127640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.017506, 37.545464, 40.246529>,  <36.360741, 37.599567, 40.444679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.017506, 37.545464, 40.246529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511697, 0.306228, 0.802739,
		0.043124, 0.942301, -0.331979,
		-0.858083, -0.135255, -0.495378,
		35.760082, 37.504887, 40.097916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.034447, 38.239727, 40.474922>,  <36.360741, 37.599567, 40.444679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.034447, 38.239727, 40.474922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.752914, 37.964180, 40.405548>,  <35.583996, 37.798851, 40.363922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.752914, 37.964180, 40.405548>,  <36.034447, 38.239727, 40.474922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.752914, 37.964180, 40.405548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484409, 0.286849, 0.826478,
		-0.519586, 0.665714, -0.535588,
		-0.703831, -0.688870, -0.173435,
		35.541763, 37.757519, 40.353519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.481411, 38.613060, 40.580204>,  <36.034447, 38.239727, 40.474922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.481411, 38.613060, 40.580204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.374481, 38.228146, 40.600403>,  <35.310326, 37.997196, 40.612522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.374481, 38.228146, 40.600403>,  <35.481411, 38.613060, 40.580204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.374481, 38.228146, 40.600403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418745, 0.163207, 0.893317,
		-0.867866, 0.217658, -0.446581,
		-0.267323, -0.962283, 0.050499,
		35.294285, 37.939461, 40.615551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.745934, 38.686890, 40.717064>,  <35.481411, 38.613060, 40.580204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.745934, 38.686890, 40.717064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.828526, 38.302830, 40.792416>,  <34.878078, 38.072395, 40.837627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.828526, 38.302830, 40.792416>,  <34.745934, 38.686890, 40.717064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.828526, 38.302830, 40.792416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546987, 0.046369, 0.835856,
		-0.811279, -0.275627, -0.515613,
		0.206476, -0.960146, 0.188383,
		34.890469, 38.014786, 40.848930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.128147, 38.302555, 40.792919>,  <34.745934, 38.686890, 40.717064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.128147, 38.302555, 40.792919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.410099, 38.112049, 41.003181>,  <34.579269, 37.997746, 41.129337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.410099, 38.112049, 41.003181>,  <34.128147, 38.302555, 40.792919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.410099, 38.112049, 41.003181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.608289, -0.024683, 0.793332,
		-0.364866, -0.878953, -0.307108,
		0.704881, -0.476270, 0.525651,
		34.621563, 37.969170, 41.160877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.771862, 37.897167, 41.231495>,  <34.128147, 38.302555, 40.792919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.771862, 37.897167, 41.231495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.135715, 37.881100, 41.396881>,  <34.354027, 37.871460, 41.496113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.135715, 37.881100, 41.396881>,  <33.771862, 37.897167, 41.231495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.135715, 37.881100, 41.396881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415154, -0.053124, 0.908199,
		-0.014509, -0.997780, -0.064996,
		0.909635, -0.040160, 0.413462,
		34.408607, 37.869049, 41.520920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.718239, 37.338867, 41.749599>,  <33.771862, 37.897167, 41.231495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.718239, 37.338867, 41.749599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.038708, 37.531670, 41.891476>,  <34.230988, 37.647350, 41.976601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.038708, 37.531670, 41.891476>,  <33.718239, 37.338867, 41.749599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.038708, 37.531670, 41.891476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384992, -0.038629, 0.922111,
		0.458161, -0.875318, 0.154619,
		0.801168, 0.482003, 0.354688,
		34.279057, 37.676270, 41.997883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.556797, 36.552666, 41.732174>,  <33.718239, 37.338867, 41.749599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.556797, 36.552666, 41.732174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.164936, 36.502296, 41.669662>,  <32.929821, 36.472076, 41.632156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.164936, 36.502296, 41.669662>,  <33.556797, 36.552666, 41.732174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.164936, 36.502296, 41.669662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154895, 0.020776, -0.987712,
		0.127620, -0.991823, -0.000849,
		-0.979653, -0.125920, -0.156280,
		32.871040, 36.464520, 41.622780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.410549, 35.986252, 41.273197>,  <33.556797, 36.552666, 41.732174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.410549, 35.986252, 41.273197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.099930, 36.235313, 41.234669>,  <32.913559, 36.384750, 41.211552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.099930, 36.235313, 41.234669>,  <33.410549, 35.986252, 41.273197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.099930, 36.235313, 41.234669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000273, -0.152545, -0.988297,
		-0.630061, -0.767484, 0.118288,
		-0.776545, 0.622654, -0.096322,
		32.866966, 36.422112, 41.205772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.039055, 35.760136, 40.647251>,  <33.410549, 35.986252, 41.273197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.039055, 35.760136, 40.647251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.915642, 36.135632, 40.708668>,  <32.841595, 36.360928, 40.745518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.915642, 36.135632, 40.708668>,  <33.039055, 35.760136, 40.647251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.915642, 36.135632, 40.708668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055111, 0.143509, -0.988113,
		-0.949617, -0.313324, 0.007458,
		-0.308530, 0.938740, 0.153546,
		32.823082, 36.417255, 40.754730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.434395, 35.845810, 40.276382>,  <33.039055, 35.760136, 40.647251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.434395, 35.845810, 40.276382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.562729, 36.221390, 40.326088>,  <32.639729, 36.446739, 40.355911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.562729, 36.221390, 40.326088>,  <32.434395, 35.845810, 40.276382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.562729, 36.221390, 40.326088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244128, 0.208744, -0.947010,
		-0.915132, 0.273498, 0.296196,
		0.320834, 0.938949, 0.124259,
		32.658978, 36.503075, 40.363365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.906384, 36.313057, 40.120449>,  <32.434395, 35.845810, 40.276382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.906384, 36.313057, 40.120449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.243240, 36.517735, 40.052368>,  <32.445354, 36.640541, 40.011520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.243240, 36.517735, 40.052368>,  <31.906384, 36.313057, 40.120449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.243240, 36.517735, 40.052368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368530, 0.315693, -0.874371,
		-0.393678, 0.799068, 0.454432,
		0.842142, 0.511693, -0.170199,
		32.495884, 36.671242, 40.001308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.645578, 36.956036, 39.853489>,  <31.906384, 36.313057, 40.120449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.645578, 36.956036, 39.853489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.030998, 36.950813, 39.746609>,  <32.262249, 36.947681, 39.682480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.030998, 36.950813, 39.746609>,  <31.645578, 36.956036, 39.853489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.030998, 36.950813, 39.746609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263294, 0.130593, -0.955836,
		0.047374, 0.991350, 0.122396,
		0.963552, -0.013056, -0.267203,
		32.320065, 36.946896, 39.666447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.653925, 37.407207, 39.350033>,  <31.645578, 36.956036, 39.853489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.653925, 37.407207, 39.350033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.987226, 37.206238, 39.257721>,  <32.187206, 37.085655, 39.202335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.987226, 37.206238, 39.257721>,  <31.653925, 37.407207, 39.350033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.987226, 37.206238, 39.257721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184820, 0.140281, -0.972709,
		0.521083, 0.853168, 0.024032,
		0.833255, -0.502421, -0.230780,
		32.237202, 37.055511, 39.188488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.721600, 37.578205, 38.731407>,  <31.653925, 37.407207, 39.350033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.721600, 37.578205, 38.731407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.980478, 37.273277, 38.732578>,  <32.135803, 37.090321, 38.733280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.980478, 37.273277, 38.732578>,  <31.721600, 37.578205, 38.731407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.980478, 37.273277, 38.732578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086692, -0.077415, -0.993223,
		0.757379, 0.642555, -0.116189,
		0.647195, -0.762319, 0.002928,
		32.174637, 37.044582, 38.733456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.269653, 37.771515, 38.322502>,  <31.721600, 37.578205, 38.731407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.269653, 37.771515, 38.322502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.254368, 37.371807, 38.323174>,  <32.245197, 37.131981, 38.323578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.254368, 37.371807, 38.323174>,  <32.269653, 37.771515, 38.322502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.254368, 37.371807, 38.323174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104112, 0.002306, -0.994563,
		0.993831, -0.038182, -0.104124,
		-0.038215, -0.999268, 0.001683,
		32.242905, 37.072025, 38.323677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.748859, 37.619991, 37.805828>,  <32.269653, 37.771515, 38.322502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.748859, 37.619991, 37.805828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.513630, 37.301701, 37.863781>,  <32.372494, 37.110725, 37.898552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.513630, 37.301701, 37.863781>,  <32.748859, 37.619991, 37.805828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.513630, 37.301701, 37.863781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215009, -0.018878, -0.976430,
		0.779707, -0.605361, -0.159986,
		-0.588073, -0.795727, 0.144878,
		32.337208, 37.062981, 37.907246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.949123, 37.144836, 37.277374>,  <32.748859, 37.619991, 37.805828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.949123, 37.144836, 37.277374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.578613, 37.053455, 37.397255>,  <32.356308, 36.998627, 37.469185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.578613, 37.053455, 37.397255>,  <32.949123, 37.144836, 37.277374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.578613, 37.053455, 37.397255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295879, -0.051641, -0.953828,
		0.233380, -0.972185, -0.019760,
		-0.926277, -0.228450, 0.299701,
		32.300732, 36.984921, 37.487164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.793365, 36.492092, 36.932590>,  <32.949123, 37.144836, 37.277374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.793365, 36.492092, 36.932590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.461151, 36.696125, 37.022060>,  <32.261822, 36.818546, 37.075741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.461151, 36.696125, 37.022060>,  <32.793365, 36.492092, 36.932590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.461151, 36.696125, 37.022060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323981, -0.115781, -0.938952,
		-0.453046, -0.852297, 0.261418,
		-0.830533, 0.510083, 0.223674,
		32.211990, 36.849152, 37.089161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.326397, 36.190273, 36.576015>,  <32.793365, 36.492092, 36.932590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.326397, 36.190273, 36.576015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.129433, 36.526157, 36.667587>,  <32.011253, 36.727688, 36.722530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.129433, 36.526157, 36.667587>,  <32.326397, 36.190273, 36.576015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.129433, 36.526157, 36.667587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476552, -0.040022, -0.878235,
		-0.728303, -0.541553, 0.419875,
		-0.492415, 0.839714, 0.228929,
		31.981709, 36.778072, 36.736267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.718904, 36.131039, 36.278500>,  <32.326397, 36.190273, 36.576015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.718904, 36.131039, 36.278500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.745613, 36.527367, 36.325531>,  <31.761639, 36.765163, 36.353752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.745613, 36.527367, 36.325531>,  <31.718904, 36.131039, 36.278500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.745613, 36.527367, 36.325531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416557, 0.134765, -0.899065,
		-0.906654, 0.011052, 0.421730,
		0.066771, 0.990816, 0.117582,
		31.765644, 36.824612, 36.360806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.061142, 36.219902, 36.034664>,  <31.718904, 36.131039, 36.278500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.061142, 36.219902, 36.034664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.309481, 36.529861, 35.987194>,  <31.458485, 36.715836, 35.958714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.309481, 36.529861, 35.987194>,  <31.061142, 36.219902, 36.034664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.309481, 36.529861, 35.987194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312167, 0.105512, -0.944150,
		-0.719096, 0.623221, 0.307404,
		0.620848, 0.774896, -0.118676,
		31.495735, 36.762329, 35.951591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.291397, 36.071251, 36.217358>,  <31.061142, 36.219902, 36.034664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.291397, 36.071251, 36.217358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.507566, 36.019527, 35.884800>,  <30.637268, 35.988491, 35.685265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.507566, 36.019527, 35.884800>,  <30.291397, 36.071251, 36.217358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.507566, 36.019527, 35.884800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.832073, 0.228795, 0.505279,
		0.124880, -0.964848, 0.231244,
		0.540424, -0.129312, -0.831396,
		30.669693, 35.980732, 35.635380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.772751, 35.589870, 36.300621>,  <30.291397, 36.071251, 36.217358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.772751, 35.589870, 36.300621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.068712, 35.381130, 36.470425>,  <31.246290, 35.255886, 36.572308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.068712, 35.381130, 36.470425>,  <30.772751, 35.589870, 36.300621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.068712, 35.381130, 36.470425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.651121, -0.396963, 0.646886,
		-0.169061, -0.755044, -0.633503,
		0.739905, -0.521851, 0.424514,
		31.290684, 35.224575, 36.597778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.435940, 34.900570, 36.440300>,  <30.772751, 35.589870, 36.300621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.435940, 34.900570, 36.440300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.785213, 34.882610, 36.634430>,  <30.994778, 34.871834, 36.750908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.785213, 34.882610, 36.634430>,  <30.435940, 34.900570, 36.440300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.785213, 34.882610, 36.634430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411444, -0.601701, 0.684595,
		0.261279, -0.797458, -0.543869,
		0.873182, -0.044901, 0.485322,
		31.047169, 34.869141, 36.780025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.490599, 34.111050, 36.721321>,  <30.435940, 34.900570, 36.440300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.490599, 34.111050, 36.721321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.716513, 34.360916, 36.937027>,  <30.852062, 34.510838, 37.066448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.716513, 34.360916, 36.937027>,  <30.490599, 34.111050, 36.721321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.716513, 34.360916, 36.937027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261866, -0.484030, 0.834950,
		0.782588, -0.612782, -0.109793,
		0.564786, 0.624670, 0.539262,
		30.885948, 34.548317, 37.098804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.790344, 33.670700, 37.172661>,  <30.490599, 34.111050, 36.721321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.790344, 33.670700, 37.172661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.806892, 34.040634, 37.323902>,  <30.816820, 34.262596, 37.414646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.806892, 34.040634, 37.323902>,  <30.790344, 33.670700, 37.172661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.806892, 34.040634, 37.323902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123145, -0.370825, 0.920502,
		0.991526, -0.084641, 0.098549,
		0.041368, 0.924838, 0.378106,
		30.819304, 34.318085, 37.437332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.300730, 33.741974, 37.702259>,  <30.790344, 33.670700, 37.172661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.300730, 33.741974, 37.702259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.062002, 34.049160, 37.795238>,  <30.918766, 34.233471, 37.851028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.062002, 34.049160, 37.795238>,  <31.300730, 33.741974, 37.702259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.062002, 34.049160, 37.795238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073313, -0.236299, 0.968911,
		0.799019, 0.595307, 0.084726,
		-0.596820, 0.767967, 0.232451,
		30.882956, 34.279549, 37.864975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.505301, 33.886837, 38.296684>,  <31.300730, 33.741974, 37.702259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.505301, 33.886837, 38.296684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.160021, 34.088749, 38.293015>,  <30.952852, 34.209896, 38.290813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.160021, 34.088749, 38.293015>,  <31.505301, 33.886837, 38.296684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.160021, 34.088749, 38.293015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114369, -0.177808, 0.977397,
		0.491736, 0.844739, 0.211215,
		-0.863201, 0.504778, -0.009177,
		30.901060, 34.240181, 38.290260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.463087, 34.288521, 39.008114>,  <31.505301, 33.886837, 38.296684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.463087, 34.288521, 39.008114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.098007, 34.280724, 38.844849>,  <30.878960, 34.276047, 38.746891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.098007, 34.280724, 38.844849>,  <31.463087, 34.288521, 39.008114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.098007, 34.280724, 38.844849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408004, -0.011676, 0.912905,
		-0.022562, 0.999742, 0.002703,
		-0.912701, -0.019494, -0.408163,
		30.824198, 34.274876, 38.722401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.062140, 34.798252, 39.311810>,  <31.463087, 34.288521, 39.008114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.062140, 34.798252, 39.311810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.787365, 34.552166, 39.157085>,  <30.622499, 34.404514, 39.064251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.787365, 34.552166, 39.157085>,  <31.062140, 34.798252, 39.311810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.787365, 34.552166, 39.157085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481160, -0.013854, 0.876523,
		-0.544611, 0.788236, -0.286501,
		-0.686938, -0.615217, -0.386813,
		30.581284, 34.367599, 39.041042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.444723, 35.136677, 39.447426>,  <31.062140, 34.798252, 39.311810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.444723, 35.136677, 39.447426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.394825, 34.741333, 39.412598>,  <30.364887, 34.504128, 39.391701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.394825, 34.741333, 39.412598>,  <30.444723, 35.136677, 39.447426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.394825, 34.741333, 39.412598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534325, -0.007023, 0.845250,
		-0.836024, 0.151963, -0.527230,
		-0.124744, -0.988361, -0.087069,
		30.357401, 34.444824, 39.386478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.906925, 35.078392, 39.789276>,  <30.444723, 35.136677, 39.447426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.906925, 35.078392, 39.789276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.072989, 34.714565, 39.782070>,  <30.172626, 34.496269, 39.777744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.072989, 34.714565, 39.782070>,  <29.906925, 35.078392, 39.789276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.072989, 34.714565, 39.782070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443763, -0.219756, 0.868781,
		-0.794178, -0.352685, -0.494868,
		0.415157, -0.909571, -0.018017,
		30.197536, 34.441692, 39.776665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.432085, 34.581177, 40.093376>,  <29.906925, 35.078392, 39.789276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.432085, 34.581177, 40.093376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.779348, 34.384720, 40.121883>,  <29.987707, 34.266846, 40.138988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.779348, 34.384720, 40.121883>,  <29.432085, 34.581177, 40.093376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.779348, 34.384720, 40.121883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243538, -0.296479, 0.923466,
		-0.432422, -0.819073, -0.377002,
		0.868159, -0.491142, 0.071271,
		30.039797, 34.237377, 40.143265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.276329, 33.931705, 40.397419>,  <29.432085, 34.581177, 40.093376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.276329, 33.931705, 40.397419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.667011, 33.992916, 40.457596>,  <29.901421, 34.029644, 40.493702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.667011, 33.992916, 40.457596>,  <29.276329, 33.931705, 40.397419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.667011, 33.992916, 40.457596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078877, -0.395973, 0.914868,
		0.199569, -0.905422, -0.374678,
		0.976704, 0.153026, 0.150441,
		29.960022, 34.038822, 40.502728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.571440, 33.279400, 40.713104>,  <29.276329, 33.931705, 40.397419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.571440, 33.279400, 40.713104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.832645, 33.570370, 40.797417>,  <29.989368, 33.744949, 40.848003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.832645, 33.570370, 40.797417>,  <29.571440, 33.279400, 40.713104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.832645, 33.570370, 40.797417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118472, -0.373007, 0.920234,
		0.748021, -0.575955, -0.329758,
		0.653015, 0.727422, 0.210782,
		30.028549, 33.788597, 40.860653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.014524, 32.813828, 41.099171>,  <29.571440, 33.279400, 40.713104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.014524, 32.813828, 41.099171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.099079, 33.190742, 41.203022>,  <30.149813, 33.416893, 41.265331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.099079, 33.190742, 41.203022>,  <30.014524, 32.813828, 41.099171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.099079, 33.190742, 41.203022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014889, -0.268700, 0.963109,
		0.977289, -0.199722, -0.070829,
		0.211386, 0.942290, 0.259624,
		30.162495, 33.473431, 41.280910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.590311, 32.784554, 41.497055>,  <30.014524, 32.813828, 41.099171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.590311, 32.784554, 41.497055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.407497, 33.124226, 41.602890>,  <30.297810, 33.328030, 41.666393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.407497, 33.124226, 41.602890>,  <30.590311, 32.784554, 41.497055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.407497, 33.124226, 41.602890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148733, -0.220322, 0.964021,
		0.876926, 0.479943, -0.025607,
		-0.457034, 0.849184, 0.264589,
		30.270388, 33.378983, 41.682266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.081369, 33.087105, 41.830589>,  <30.590311, 32.784554, 41.497055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.081369, 33.087105, 41.830589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.726034, 33.240803, 41.931156>,  <30.512833, 33.333023, 41.991497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.726034, 33.240803, 41.931156>,  <31.081369, 33.087105, 41.830589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.726034, 33.240803, 41.931156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199555, -0.170065, 0.965016,
		0.413563, 0.907431, 0.074397,
		-0.888338, 0.384248, 0.251415,
		30.459534, 33.356079, 42.006580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.257092, 33.526302, 42.419155>,  <31.081369, 33.087105, 41.830589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.257092, 33.526302, 42.419155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.861410, 33.470623, 42.437504>,  <30.624002, 33.437218, 42.448513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.861410, 33.470623, 42.437504>,  <31.257092, 33.526302, 42.419155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.861410, 33.470623, 42.437504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052523, -0.044465, 0.997629,
		-0.136825, 0.989266, 0.051296,
		-0.989202, -0.139195, 0.045875,
		30.564650, 33.428864, 42.451267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.069481, 33.866730, 42.983456>,  <31.257092, 33.526302, 42.419155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.069481, 33.866730, 42.983456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.746853, 33.635162, 42.935631>,  <30.553276, 33.496220, 42.906937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.746853, 33.635162, 42.935631>,  <31.069481, 33.866730, 42.983456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.746853, 33.635162, 42.935631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090461, -0.079005, 0.992761,
		-0.584177, 0.811547, 0.011354,
		-0.806569, -0.578922, -0.119567,
		30.504883, 33.461487, 42.899761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.535822, 34.094437, 43.282482>,  <31.069481, 33.866730, 42.983456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.535822, 34.094437, 43.282482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.433372, 33.708160, 43.265266>,  <30.371902, 33.476395, 43.254936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.433372, 33.708160, 43.265266>,  <30.535822, 34.094437, 43.282482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.433372, 33.708160, 43.265266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142046, -0.006438, 0.989839,
		-0.956151, 0.259633, -0.135522,
		-0.256123, -0.965686, -0.043036,
		30.356535, 33.418453, 43.252357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.965204, 34.059647, 43.711643>,  <30.535822, 34.094437, 43.282482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.965204, 34.059647, 43.711643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.101002, 33.685726, 43.669888>,  <30.182480, 33.461376, 43.644833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.101002, 33.685726, 43.669888>,  <29.965204, 34.059647, 43.711643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.101002, 33.685726, 43.669888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059303, -0.132033, 0.989470,
		-0.938736, -0.329730, -0.100260,
		0.339495, -0.934797, -0.104390,
		30.202850, 33.405289, 43.638569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.484419, 33.704487, 44.125248>,  <29.965204, 34.059647, 43.711643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.484419, 33.704487, 44.125248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.789467, 33.447334, 44.096645>,  <29.972496, 33.293041, 44.079483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.789467, 33.447334, 44.096645>,  <29.484419, 33.704487, 44.125248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.789467, 33.447334, 44.096645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002522, -0.113497, 0.993535,
		-0.646841, -0.757510, -0.088176,
		0.762621, -0.642882, -0.071504,
		30.018253, 33.254471, 44.075195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.313511, 33.100601, 44.491451>,  <29.484419, 33.704487, 44.125248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.313511, 33.100601, 44.491451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.708675, 33.038628, 44.493427>,  <29.945774, 33.001442, 44.494614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.708675, 33.038628, 44.493427>,  <29.313511, 33.100601, 44.491451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.708675, 33.038628, 44.493427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023887, -0.120660, 0.992406,
		-0.153166, -0.980528, -0.122903,
		0.987912, -0.154939, 0.004941,
		30.005049, 32.992146, 44.494911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.472692, 32.494598, 44.911255>,  <29.313511, 33.100601, 44.491451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.472692, 32.494598, 44.911255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.814402, 32.701557, 44.891155>,  <30.019426, 32.825733, 44.879093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.814402, 32.701557, 44.891155>,  <29.472692, 32.494598, 44.911255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.814402, 32.701557, 44.891155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166063, -0.180021, 0.969544,
		0.492590, -0.836598, -0.239707,
		0.854271, 0.517394, -0.050251,
		30.070683, 32.856777, 44.876080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.969746, 32.137512, 45.181168>,  <29.472692, 32.494598, 44.911255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.969746, 32.137512, 45.181168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.126778, 32.504505, 45.206802>,  <30.220997, 32.724701, 45.222183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.126778, 32.504505, 45.206802>,  <29.969746, 32.137512, 45.181168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.126778, 32.504505, 45.206802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124751, -0.122153, 0.984640,
		0.911218, -0.378555, -0.162412,
		0.392579, 0.917483, 0.064083,
		30.244551, 32.779751, 45.226028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.398952, 32.088303, 45.677231>,  <29.969746, 32.137512, 45.181168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.398952, 32.088303, 45.677231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.370310, 32.486290, 45.649223>,  <30.353125, 32.725082, 45.632420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.370310, 32.486290, 45.649223>,  <30.398952, 32.088303, 45.677231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.370310, 32.486290, 45.649223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212073, 0.083782, 0.973656,
		0.974627, 0.054873, -0.217007,
		-0.071609, 0.994972, -0.070019,
		30.348827, 32.784782, 45.628216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.033850, 32.422714, 45.849213>,  <30.398952, 32.088303, 45.677231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.033850, 32.422714, 45.849213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.732618, 32.675575, 45.922169>,  <30.551880, 32.827290, 45.965942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.732618, 32.675575, 45.922169>,  <31.033850, 32.422714, 45.849213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.732618, 32.675575, 45.922169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249459, 0.017832, 0.968221,
		0.608807, 0.774642, -0.171124,
		-0.753076, 0.632148, 0.182385,
		30.506695, 32.865219, 45.976883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.768778, 32.839375, 45.950600>,  <31.033850, 32.422714, 45.849213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.768778, 32.839375, 45.950600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.117390, 32.646851, 45.913116>,  <32.326557, 32.531338, 45.890629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.117390, 32.646851, 45.913116>,  <31.768778, 32.839375, 45.950600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.117390, 32.646851, 45.913116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068787, 0.309215, -0.948501,
		0.485498, 0.820199, 0.302598,
		0.871527, -0.481310, -0.093704,
		32.378849, 32.502457, 45.885006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.286865, 33.317768, 45.639103>,  <31.768778, 32.839375, 45.950600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.286865, 33.317768, 45.639103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.396610, 32.941364, 45.559883>,  <32.462460, 32.715523, 45.512352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.396610, 32.941364, 45.559883>,  <32.286865, 33.317768, 45.639103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.396610, 32.941364, 45.559883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120390, 0.237945, -0.963789,
		0.954059, 0.240588, 0.178572,
		0.274366, -0.941010, -0.198049,
		32.478920, 32.659061, 45.500469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.798702, 33.414265, 45.075768>,  <32.286865, 33.317768, 45.639103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.798702, 33.414265, 45.075768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.727962, 33.020607, 45.081146>,  <32.685520, 32.784412, 45.084373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.727962, 33.020607, 45.081146>,  <32.798702, 33.414265, 45.075768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.727962, 33.020607, 45.081146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299801, -0.066878, -0.951655,
		0.937467, -0.164268, 0.306875,
		-0.176849, -0.984146, 0.013448,
		32.674908, 32.725365, 45.085182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.390846, 33.102436, 44.895782>,  <32.798702, 33.414265, 45.075768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.390846, 33.102436, 44.895782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.106930, 32.839561, 44.794350>,  <32.936581, 32.681839, 44.733490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.106930, 32.839561, 44.794350>,  <33.390846, 33.102436, 44.895782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.106930, 32.839561, 44.794350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416888, -0.101729, -0.903247,
		0.567802, -0.746835, 0.346178,
		-0.709793, -0.657183, -0.253584,
		32.893993, 32.642406, 44.718273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.753197, 32.655174, 44.455185>,  <33.390846, 33.102436, 44.895782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.753197, 32.655174, 44.455185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.367584, 32.599400, 44.364674>,  <33.136215, 32.565933, 44.310368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.367584, 32.599400, 44.364674>,  <33.753197, 32.655174, 44.455185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.367584, 32.599400, 44.364674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259134, -0.303695, -0.916853,
		0.059122, -0.942511, 0.328904,
		-0.964030, -0.139437, -0.226282,
		33.078377, 32.557568, 44.296787>
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
