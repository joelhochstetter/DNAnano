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
	<24.218996, 35.074909, 35.434757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.441803, 34.906483, 35.148418>,  <24.575487, 34.805428, 34.976616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.441803, 34.906483, 35.148418>,  <24.218996, 35.074909, 35.434757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.441803, 34.906483, 35.148418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.647555, 0.759891, 0.056902,
		0.520003, -0.495243, 0.695940,
		0.557018, -0.421070, -0.715843,
		24.608908, 34.780163, 34.933666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.918196, 34.852165, 35.664288>,  <24.218996, 35.074909, 35.434757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.918196, 34.852165, 35.664288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.929586, 34.953968, 35.277626>,  <24.936420, 35.015049, 35.045628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.929586, 34.953968, 35.277626>,  <24.918196, 34.852165, 35.664288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.929586, 34.953968, 35.277626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.669183, 0.713518, 0.207571,
		0.742552, -0.652779, -0.149991,
		0.028477, 0.254503, -0.966653,
		24.938129, 35.030319, 34.987629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.510460, 34.612007, 35.238113>,  <24.918196, 34.852165, 35.664288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.510460, 34.612007, 35.238113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.872732, 34.460674, 35.314648>,  <26.090096, 34.369873, 35.360569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.872732, 34.460674, 35.314648>,  <25.510460, 34.612007, 35.238113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.872732, 34.460674, 35.314648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408637, -0.658740, 0.631727,
		-0.112963, -0.650328, -0.751208,
		0.905680, -0.378333, 0.191335,
		26.144436, 34.347176, 35.372047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.493330, 33.914089, 35.161041>,  <25.510460, 34.612007, 35.238113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.493330, 33.914089, 35.161041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.806618, 33.989849, 35.397919>,  <25.994591, 34.035305, 35.540047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.806618, 33.989849, 35.397919>,  <25.493330, 33.914089, 35.161041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.806618, 33.989849, 35.397919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366224, -0.629170, 0.685584,
		0.502444, -0.753838, -0.423413,
		0.783218, 0.189404, 0.592196,
		26.041584, 34.046669, 35.575577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.836864, 33.293903, 35.250774>,  <25.493330, 33.914089, 35.161041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.836864, 33.293903, 35.250774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.909000, 33.546387, 35.552517>,  <25.952282, 33.697876, 35.733562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.909000, 33.546387, 35.552517>,  <25.836864, 33.293903, 35.250774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.909000, 33.546387, 35.552517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183517, -0.731872, 0.656266,
		0.966333, -0.256788, -0.016149,
		0.180340, 0.631208, 0.754357,
		25.963102, 33.735748, 35.778824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.326487, 33.143234, 35.849792>,  <25.836864, 33.293903, 35.250774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.326487, 33.143234, 35.849792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.042620, 33.382492, 35.998703>,  <25.872299, 33.526047, 36.088051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.042620, 33.382492, 35.998703>,  <26.326487, 33.143234, 35.849792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.042620, 33.382492, 35.998703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254906, -0.710593, 0.655806,
		0.656806, 0.370509, 0.656756,
		-0.709668, 0.598149, 0.372277,
		25.829720, 33.561935, 36.110386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.119303, 33.226624, 36.053009>,  <26.326487, 33.143234, 35.849792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.119303, 33.226624, 36.053009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.512266, 33.236786, 35.979000>,  <27.748043, 33.242882, 35.934597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.512266, 33.236786, 35.979000>,  <27.119303, 33.226624, 36.053009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.512266, 33.236786, 35.979000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146610, 0.508771, 0.848326,
		0.115683, -0.860527, 0.496095,
		0.982407, 0.025405, -0.185018,
		27.806988, 33.244408, 35.923496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.419390, 32.990227, 36.726749>,  <27.119303, 33.226624, 36.053009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.419390, 32.990227, 36.726749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.710995, 33.166077, 36.516884>,  <27.885958, 33.271587, 36.390965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.710995, 33.166077, 36.516884>,  <27.419390, 32.990227, 36.726749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.710995, 33.166077, 36.516884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367022, 0.395937, 0.841742,
		0.577786, -0.806202, 0.127290,
		0.729012, 0.439628, -0.524660,
		27.929699, 33.297966, 36.359486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.974237, 32.884613, 37.071144>,  <27.419390, 32.990227, 36.726749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.974237, 32.884613, 37.071144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.056990, 33.216839, 36.864315>,  <28.106640, 33.416172, 36.740215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.056990, 33.216839, 36.864315>,  <27.974237, 32.884613, 37.071144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.056990, 33.216839, 36.864315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359997, 0.426809, 0.829600,
		0.909727, -0.357772, -0.210702,
		0.206878, 0.830562, -0.517077,
		28.119053, 33.466007, 36.709190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.695553, 33.019783, 37.184750>,  <27.974237, 32.884613, 37.071144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.695553, 33.019783, 37.184750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.522526, 33.360142, 37.065514>,  <28.418711, 33.564358, 36.993973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.522526, 33.360142, 37.065514>,  <28.695553, 33.019783, 37.184750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.522526, 33.360142, 37.065514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480620, 0.497350, 0.722252,
		0.762818, 0.169155, -0.624096,
		-0.432567, 0.850899, -0.298088,
		28.392756, 33.615410, 36.976086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.227049, 33.579956, 37.310291>,  <28.695553, 33.019783, 37.184750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.227049, 33.579956, 37.310291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.874678, 33.767403, 37.283863>,  <28.663256, 33.879871, 37.268005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.874678, 33.767403, 37.283863>,  <29.227049, 33.579956, 37.310291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.874678, 33.767403, 37.283863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252118, 0.582858, 0.772472,
		0.400502, 0.663835, -0.631602,
		-0.880928, 0.468615, -0.066071,
		28.610399, 33.907986, 37.264042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.363344, 34.260014, 37.351185>,  <29.227049, 33.579956, 37.310291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.363344, 34.260014, 37.351185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.001194, 34.171722, 37.496277>,  <28.783903, 34.118748, 37.583332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.001194, 34.171722, 37.496277>,  <29.363344, 34.260014, 37.351185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.001194, 34.171722, 37.496277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204968, 0.520951, 0.828612,
		-0.371866, 0.824553, -0.426414,
		-0.905375, -0.220731, 0.362731,
		28.729582, 34.105503, 37.605095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.293940, 34.575199, 38.102825>,  <29.363344, 34.260014, 37.351185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.293940, 34.575199, 38.102825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.004164, 34.545914, 38.377003>,  <28.830299, 34.528343, 38.541508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.004164, 34.545914, 38.377003>,  <29.293940, 34.575199, 38.102825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.004164, 34.545914, 38.377003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.614942, -0.380693, -0.690593,
		0.311504, -0.921798, 0.230766,
		-0.724438, -0.073215, 0.685440,
		28.786833, 34.523949, 38.582634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.003750, 33.855995, 38.111931>,  <29.293940, 34.575199, 38.102825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.003750, 33.855995, 38.111931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.757166, 34.163853, 38.178425>,  <28.609217, 34.348568, 38.218319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.757166, 34.163853, 38.178425>,  <29.003750, 33.855995, 38.111931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.757166, 34.163853, 38.178425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530440, -0.249908, -0.810049,
		-0.581905, -0.587535, 0.562306,
		-0.616457, 0.769641, 0.166230,
		28.572229, 34.394745, 38.228294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.243055, 33.693523, 37.974842>,  <29.003750, 33.855995, 38.111931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.243055, 33.693523, 37.974842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.261742, 34.092747, 37.958374>,  <28.272953, 34.332279, 37.948494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.261742, 34.092747, 37.958374>,  <28.243055, 33.693523, 37.974842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.261742, 34.092747, 37.958374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293329, -0.025695, -0.955666,
		-0.954870, 0.056720, 0.291559,
		0.046714, 0.998059, -0.041173,
		28.275755, 34.392166, 37.946022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.537260, 34.082191, 37.871510>,  <28.243055, 33.693523, 37.974842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.537260, 34.082191, 37.871510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.880045, 34.231804, 37.729683>,  <28.085716, 34.321571, 37.644588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.880045, 34.231804, 37.729683>,  <27.537260, 34.082191, 37.871510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.880045, 34.231804, 37.729683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234115, -0.330372, -0.914355,
		-0.459138, 0.866576, -0.195549,
		0.856961, 0.374034, -0.354565,
		28.137133, 34.344013, 37.623314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.504114, 34.532112, 37.206314>,  <27.537260, 34.082191, 37.871510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.504114, 34.532112, 37.206314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.872683, 34.376987, 37.196625>,  <28.093822, 34.283913, 37.190811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.872683, 34.376987, 37.196625>,  <27.504114, 34.532112, 37.206314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.872683, 34.376987, 37.196625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171141, -0.349064, -0.921339,
		0.348849, 0.853087, -0.388005,
		0.921420, -0.387812, -0.024227,
		28.149109, 34.260643, 37.189358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.824965, 34.752998, 36.541710>,  <27.504114, 34.532112, 37.206314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.824965, 34.752998, 36.541710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.018202, 34.428818, 36.674248>,  <28.134144, 34.234310, 36.753769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.018202, 34.428818, 36.674248>,  <27.824965, 34.752998, 36.541710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.018202, 34.428818, 36.674248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151573, -0.450130, -0.880005,
		0.862349, 0.374901, -0.340298,
		0.483093, -0.810451, 0.331344,
		28.163130, 34.185680, 36.773651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.125128, 34.584755, 35.980423>,  <27.824965, 34.752998, 36.541710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.125128, 34.584755, 35.980423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.182655, 34.254848, 36.199177>,  <28.217171, 34.056904, 36.330429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.182655, 34.254848, 36.199177>,  <28.125128, 34.584755, 35.980423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.182655, 34.254848, 36.199177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050624, -0.545775, -0.836401,
		0.988308, 0.147975, -0.036739,
		0.143817, -0.824762, 0.546885,
		28.225801, 34.007420, 36.363243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.718172, 34.239681, 35.729614>,  <28.125128, 34.584755, 35.980423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.718172, 34.239681, 35.729614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.462103, 33.972187, 35.880859>,  <28.308462, 33.811691, 35.971607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.462103, 33.972187, 35.880859>,  <28.718172, 34.239681, 35.729614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.462103, 33.972187, 35.880859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042865, -0.522515, -0.851552,
		0.767036, -0.528930, 0.363164,
		-0.640170, -0.668738, 0.378116,
		28.270052, 33.771564, 35.994293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.018394, 33.608658, 35.496948>,  <28.718172, 34.239681, 35.729614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.018394, 33.608658, 35.496948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.626995, 33.576130, 35.572773>,  <28.392157, 33.556614, 35.618267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.626995, 33.576130, 35.572773>,  <29.018394, 33.608658, 35.496948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.626995, 33.576130, 35.572773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118533, -0.530433, -0.839399,
		0.168805, -0.843818, 0.509388,
		-0.978496, -0.081316, 0.189560,
		28.333447, 33.551735, 35.629642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.894436, 32.992786, 35.360954>,  <29.018394, 33.608658, 35.496948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.894436, 32.992786, 35.360954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.527672, 33.149006, 35.328091>,  <28.307613, 33.242737, 35.308372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.527672, 33.149006, 35.328091>,  <28.894436, 32.992786, 35.360954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.527672, 33.149006, 35.328091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205006, -0.637524, -0.742654,
		-0.342417, -0.664105, 0.664617,
		-0.916909, 0.390548, -0.082154,
		28.252600, 33.266171, 35.303444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.350574, 32.427151, 35.274532>,  <28.894436, 32.992786, 35.360954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.350574, 32.427151, 35.274532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.244341, 32.769535, 35.097088>,  <28.180601, 32.974964, 34.990620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.244341, 32.769535, 35.097088>,  <28.350574, 32.427151, 35.274532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.244341, 32.769535, 35.097088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339594, -0.513708, -0.787896,
		-0.902297, -0.058605, 0.427113,
		-0.265586, 0.855961, -0.443615,
		28.164665, 33.026325, 34.964005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.877649, 32.539719, 34.735233>,  <28.350574, 32.427151, 35.274532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.877649, 32.539719, 34.735233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.180927, 32.294365, 34.646786>,  <29.362894, 32.147152, 34.593716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.180927, 32.294365, 34.646786>,  <28.877649, 32.539719, 34.735233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.180927, 32.294365, 34.646786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195719, 0.109392, -0.974540,
		0.621958, 0.782171, -0.037111,
		0.758197, -0.613386, -0.221123,
		29.408386, 32.110348, 34.580448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.527267, 32.965828, 34.835838>,  <28.877649, 32.539719, 34.735233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.527267, 32.965828, 34.835838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.596584, 32.663132, 34.583710>,  <29.638174, 32.481514, 34.432430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.596584, 32.663132, 34.583710>,  <29.527267, 32.965828, 34.835838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.596584, 32.663132, 34.583710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.952957, -0.290442, 0.086697,
		-0.248680, 0.585649, -0.771475,
		0.173294, -0.756742, -0.630326,
		29.648573, 32.436108, 34.394611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.166269, 32.776115, 35.073948>,  <29.527267, 32.965828, 34.835838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.166269, 32.776115, 35.073948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.472919, 32.626568, 35.282757>,  <30.656910, 32.536839, 35.408043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.472919, 32.626568, 35.282757>,  <30.166269, 32.776115, 35.073948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.472919, 32.626568, 35.282757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410414, -0.339925, -0.846175,
		0.493805, 0.862945, -0.107156,
		0.766627, -0.373867, 0.522021,
		30.702908, 32.514408, 35.439362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.780916, 32.999523, 34.753975>,  <30.166269, 32.776115, 35.073948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.780916, 32.999523, 34.753975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.864290, 32.665188, 34.957123>,  <30.914314, 32.464588, 35.079010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.864290, 32.665188, 34.957123>,  <30.780916, 32.999523, 34.753975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.864290, 32.665188, 34.957123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570333, -0.317971, -0.757374,
		0.794529, 0.447517, 0.410429,
		0.208433, -0.835837, 0.507870,
		30.926821, 32.414436, 35.109486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.411331, 32.937920, 34.700397>,  <30.780916, 32.999523, 34.753975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.411331, 32.937920, 34.700397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.301817, 32.559399, 34.769157>,  <31.236107, 32.332287, 34.810413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.301817, 32.559399, 34.769157>,  <31.411331, 32.937920, 34.700397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.301817, 32.559399, 34.769157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.641390, -0.312823, -0.700543,
		0.716700, -0.081547, 0.692597,
		-0.273788, -0.946304, 0.171897,
		31.219681, 32.275509, 34.820724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.089642, 32.540852, 34.743095>,  <31.411331, 32.937920, 34.700397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.089642, 32.540852, 34.743095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.821415, 32.248734, 34.690914>,  <31.660479, 32.073463, 34.659607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.821415, 32.248734, 34.690914>,  <32.089642, 32.540852, 34.743095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.821415, 32.248734, 34.690914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488492, -0.302333, -0.818517,
		0.558317, -0.612592, 0.559476,
		-0.670565, -0.730292, -0.130449,
		31.620245, 32.029648, 34.651779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.346985, 31.859915, 34.774689>,  <32.089642, 32.540852, 34.743095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.346985, 31.859915, 34.774689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.013577, 31.820732, 34.557198>,  <31.813530, 31.797222, 34.426704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.013577, 31.820732, 34.557198>,  <32.346985, 31.859915, 34.774689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.013577, 31.820732, 34.557198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547893, -0.273128, -0.790705,
		-0.071053, -0.956977, 0.281328,
		-0.833526, -0.097956, -0.543727,
		31.763519, 31.791346, 34.394081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.507427, 31.256224, 34.387264>,  <32.346985, 31.859915, 34.774689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.507427, 31.256224, 34.387264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.196327, 31.371714, 34.163929>,  <32.009666, 31.441008, 34.029926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.196327, 31.371714, 34.163929>,  <32.507427, 31.256224, 34.387264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.196327, 31.371714, 34.163929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456971, -0.350200, -0.817642,
		-0.431606, -0.891065, 0.140428,
		-0.777749, 0.288728, -0.558339,
		31.963001, 31.458330, 33.996429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.260342, 30.665960, 34.002701>,  <32.507427, 31.256224, 34.387264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.260342, 30.665960, 34.002701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.168365, 31.005970, 33.813137>,  <32.113182, 31.209976, 33.699398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.168365, 31.005970, 33.813137>,  <32.260342, 30.665960, 34.002701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.168365, 31.005970, 33.813137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380705, -0.369590, -0.847624,
		-0.895652, -0.375321, -0.238625,
		-0.229938, 0.850022, -0.473911,
		32.099384, 31.260977, 33.670963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.005505, 30.420515, 33.367966>,  <32.260342, 30.665960, 34.002701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.005505, 30.420515, 33.367966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.085335, 30.809189, 33.317375>,  <32.133232, 31.042393, 33.287022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.085335, 30.809189, 33.317375>,  <32.005505, 30.420515, 33.367966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.085335, 30.809189, 33.317375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470719, -0.208278, -0.857347,
		-0.859414, 0.111572, -0.498958,
		0.199578, 0.971685, -0.126477,
		32.145206, 31.100695, 33.279430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.748627, 30.620249, 32.715588>,  <32.005505, 30.420515, 33.367966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.748627, 30.620249, 32.715588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.030704, 30.892515, 32.794975>,  <32.199951, 31.055876, 32.842609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.030704, 30.892515, 32.794975>,  <31.748627, 30.620249, 32.715588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.030704, 30.892515, 32.794975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505023, -0.285744, -0.814434,
		-0.497646, 0.674568, -0.545258,
		0.705195, 0.680668, 0.198473,
		32.242264, 31.096716, 32.854519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.989115, 31.087336, 32.101654>,  <31.748627, 30.620249, 32.715588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.989115, 31.087336, 32.101654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.253067, 31.022558, 32.395138>,  <32.411438, 30.983692, 32.571228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.253067, 31.022558, 32.395138>,  <31.989115, 31.087336, 32.101654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.253067, 31.022558, 32.395138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429463, -0.719975, -0.545159,
		0.616539, 0.674841, -0.405548,
		0.659879, -0.161944, 0.733712,
		32.451031, 30.973974, 32.615250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.648952, 31.204758, 31.865463>,  <31.989115, 31.087336, 32.101654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.648952, 31.204758, 31.865463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.704838, 30.937456, 32.157742>,  <32.738369, 30.777075, 32.333107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.704838, 30.937456, 32.157742>,  <32.648952, 31.204758, 31.865463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.704838, 30.937456, 32.157742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338619, -0.661200, -0.669442,
		0.930494, 0.340956, 0.133907,
		0.139711, -0.668255, 0.730696,
		32.746750, 30.736980, 32.376949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.364788, 30.917667, 31.851936>,  <32.648952, 31.204758, 31.865463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.364788, 30.917667, 31.851936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.092941, 30.658056, 31.988688>,  <32.929832, 30.502289, 32.070740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.092941, 30.658056, 31.988688>,  <33.364788, 30.917667, 31.851936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.092941, 30.658056, 31.988688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236909, -0.635267, -0.735057,
		0.694258, -0.418564, 0.585500,
		-0.679618, -0.649029, 0.341878,
		32.889057, 30.463346, 32.091251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.557140, 30.848791, 32.625980>,  <33.364788, 30.917667, 31.851936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.557140, 30.848791, 32.625980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.326073, 31.108751, 32.428421>,  <33.187431, 31.264727, 32.309887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.326073, 31.108751, 32.428421>,  <33.557140, 30.848791, 32.625980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.326073, 31.108751, 32.428421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420617, 0.281553, 0.862444,
		0.699560, 0.705945, 0.110715,
		-0.577666, 0.649899, -0.493896,
		33.152775, 31.303720, 32.280251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.441547, 31.540928, 33.016014>,  <33.557140, 30.848791, 32.625980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.441547, 31.540928, 33.016014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.113754, 31.426250, 32.817520>,  <32.917076, 31.357443, 32.698425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.113754, 31.426250, 32.817520>,  <33.441547, 31.540928, 33.016014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.113754, 31.426250, 32.817520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568828, 0.301374, 0.765250,
		-0.069841, 0.909384, -0.410052,
		-0.819486, -0.286695, -0.496235,
		32.867908, 31.340242, 32.668648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.966316, 32.169971, 32.980679>,  <33.441547, 31.540928, 33.016014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.966316, 32.169971, 32.980679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.760509, 31.828566, 32.947746>,  <32.637024, 31.623722, 32.927986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.760509, 31.828566, 32.947746>,  <32.966316, 32.169971, 32.980679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.760509, 31.828566, 32.947746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.659741, 0.332708, 0.673830,
		-0.547734, 0.401014, -0.734285,
		-0.514518, -0.853518, -0.082330,
		32.606155, 31.572510, 32.923046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.282646, 32.405769, 33.107941>,  <32.966316, 32.169971, 32.980679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.282646, 32.405769, 33.107941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.261993, 32.008156, 33.146381>,  <32.249599, 31.769588, 33.169445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.261993, 32.008156, 33.146381>,  <32.282646, 32.405769, 33.107941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.261993, 32.008156, 33.146381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.747764, 0.102271, 0.656041,
		-0.661954, -0.037988, -0.748581,
		-0.051636, -0.994031, 0.096105,
		32.246502, 31.709946, 33.175213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.584276, 32.296707, 33.041473>,  <32.282646, 32.405769, 33.107941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.584276, 32.296707, 33.041473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.752308, 31.985443, 33.228237>,  <31.853127, 31.798685, 33.340294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.752308, 31.985443, 33.228237>,  <31.584276, 32.296707, 33.041473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.752308, 31.985443, 33.228237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.623943, 0.125936, 0.771255,
		-0.658960, -0.615311, -0.432625,
		0.420079, -0.778160, 0.466906,
		31.878332, 31.751995, 33.368309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.067614, 31.876766, 33.264629>,  <31.584276, 32.296707, 33.041473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.067614, 31.876766, 33.264629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.379519, 31.794144, 33.501038>,  <31.566662, 31.744570, 33.642883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.379519, 31.794144, 33.501038>,  <31.067614, 31.876766, 33.264629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.379519, 31.794144, 33.501038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.580046, 0.116913, 0.806150,
		-0.235613, -0.971425, -0.028648,
		0.779764, -0.206557, 0.591018,
		31.613447, 31.732176, 33.678345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.654896, 31.725344, 33.853222>,  <31.067614, 31.876766, 33.264629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.654896, 31.725344, 33.853222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.029831, 31.711496, 33.991898>,  <31.254793, 31.703188, 34.075104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.029831, 31.711496, 33.991898>,  <30.654896, 31.725344, 33.853222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.029831, 31.711496, 33.991898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347384, -0.016349, 0.937580,
		-0.026834, -0.999265, -0.027367,
		0.937339, -0.034666, 0.346690,
		31.311033, 31.701111, 34.095905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.573746, 31.307920, 34.486233>,  <30.654896, 31.725344, 33.853222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.573746, 31.307920, 34.486233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.903708, 31.533073, 34.507000>,  <31.101685, 31.668165, 34.519459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.903708, 31.533073, 34.507000>,  <30.573746, 31.307920, 34.486233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.903708, 31.533073, 34.507000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117758, 0.081291, 0.989709,
		0.552868, -0.822531, 0.133341,
		0.824906, 0.562880, 0.051916,
		31.151180, 31.701937, 34.522575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.933952, 31.002832, 35.055244>,  <30.573746, 31.307920, 34.486233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.933952, 31.002832, 35.055244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.968056, 31.394365, 34.980816>,  <30.988518, 31.629284, 34.936157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.968056, 31.394365, 34.980816>,  <30.933952, 31.002832, 35.055244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.968056, 31.394365, 34.980816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340798, 0.204137, 0.917706,
		0.936263, -0.014827, 0.350988,
		0.085256, 0.978830, -0.186073,
		30.993633, 31.688015, 34.924995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.268671, 31.301662, 35.540451>,  <30.933952, 31.002832, 35.055244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.268671, 31.301662, 35.540451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.100704, 31.640797, 35.410934>,  <30.999924, 31.844276, 35.333225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.100704, 31.640797, 35.410934>,  <31.268671, 31.301662, 35.540451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.100704, 31.640797, 35.410934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282627, 0.216870, 0.934393,
		0.862433, 0.483882, 0.148554,
		-0.419919, 0.847836, -0.323794,
		30.974730, 31.895147, 35.313797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.522243, 31.933382, 35.761272>,  <31.268671, 31.301662, 35.540451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.522243, 31.933382, 35.761272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.124540, 31.965521, 35.732990>,  <30.885920, 31.984804, 35.716022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.124540, 31.965521, 35.732990>,  <31.522243, 31.933382, 35.761272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.124540, 31.965521, 35.732990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059511, 0.134076, 0.989182,
		0.088958, 0.987708, -0.128524,
		-0.994256, 0.080347, -0.070707,
		30.826263, 31.989626, 35.711777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.306650, 32.512791, 36.098682>,  <31.522243, 31.933382, 35.761272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.306650, 32.512791, 36.098682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.053602, 32.203407, 36.082912>,  <30.901773, 32.017776, 36.073448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.053602, 32.203407, 36.082912>,  <31.306650, 32.512791, 36.098682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.053602, 32.203407, 36.082912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034108, -0.023035, 0.999153,
		-0.773712, 0.633428, -0.011808,
		-0.632619, -0.773459, -0.039427,
		30.863817, 31.971369, 36.071083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.502842, 32.568802, 36.332970>,  <31.306650, 32.512791, 36.098682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.502842, 32.568802, 36.332970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.702030, 32.229309, 36.404167>,  <30.821543, 32.025612, 36.446884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.702030, 32.229309, 36.404167>,  <30.502842, 32.568802, 36.332970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.702030, 32.229309, 36.404167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085913, 0.252526, 0.963768,
		-0.862928, -0.464636, 0.198667,
		0.497970, -0.848731, 0.177994,
		30.851421, 31.974689, 36.457565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.023985, 32.164299, 36.799042>,  <30.502842, 32.568802, 36.332970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.023985, 32.164299, 36.799042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.421480, 32.135506, 36.833233>,  <30.659977, 32.118229, 36.853748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.421480, 32.135506, 36.833233>,  <30.023985, 32.164299, 36.799042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.421480, 32.135506, 36.833233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066268, 0.236325, 0.969412,
		-0.089986, -0.969004, 0.230074,
		0.993736, -0.071987, 0.085480,
		30.719601, 32.113911, 36.858875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.253063, 31.678942, 37.332214>,  <30.023985, 32.164299, 36.799042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.253063, 31.678942, 37.332214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.504517, 31.988714, 37.303707>,  <30.655388, 32.174576, 37.286602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.504517, 31.988714, 37.303707>,  <30.253063, 31.678942, 37.332214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.504517, 31.988714, 37.303707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089424, 0.019049, 0.995811,
		0.772545, -0.632372, -0.057278,
		0.628632, 0.774431, -0.071265,
		30.693106, 32.221043, 37.282326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.835024, 31.593494, 37.873413>,  <30.253063, 31.678942, 37.332214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.835024, 31.593494, 37.873413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.783731, 31.983377, 37.800198>,  <30.752956, 32.217308, 37.756268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.783731, 31.983377, 37.800198>,  <30.835024, 31.593494, 37.873413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.783731, 31.983377, 37.800198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126581, 0.199137, 0.971762,
		0.983633, 0.101441, -0.148915,
		-0.128231, 0.974707, -0.183037,
		30.745262, 32.275791, 37.745285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.416416, 31.892008, 38.152611>,  <30.835024, 31.593494, 37.873413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.416416, 31.892008, 38.152611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.118761, 32.158535, 38.133495>,  <30.940168, 32.318451, 38.122028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.118761, 32.158535, 38.133495>,  <31.416416, 31.892008, 38.152611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.118761, 32.158535, 38.133495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105919, 0.188311, 0.976381,
		0.659577, 0.721499, -0.210705,
		-0.744136, 0.666317, -0.047785,
		30.895521, 32.358429, 38.119160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.532608, 32.649673, 38.404125>,  <31.416416, 31.892008, 38.152611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.532608, 32.649673, 38.404125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.199398, 32.449905, 38.499336>,  <30.999472, 32.330044, 38.556461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.199398, 32.449905, 38.499336>,  <31.532608, 32.649673, 38.404125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.199398, 32.449905, 38.499336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415866, -0.281514, 0.864757,
		-0.364866, 0.819350, 0.442198,
		-0.833023, -0.499416, 0.238025,
		30.949492, 32.300079, 38.570744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.161072, 33.236313, 38.732811>,  <31.532608, 32.649673, 38.404125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.161072, 33.236313, 38.732811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.532257, 33.099224, 38.791367>,  <31.754969, 33.016972, 38.826500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.532257, 33.099224, 38.791367>,  <31.161072, 33.236313, 38.732811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.532257, 33.099224, 38.791367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332948, -0.938878, -0.087482,
		0.167427, 0.032438, -0.985351,
		0.927962, -0.342717, 0.146394,
		31.810646, 32.996410, 38.835285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.414598, 33.615788, 38.659843>,  <31.161072, 33.236313, 38.732811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.414598, 33.615788, 38.659843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.758659, 33.780216, 38.780613>,  <30.965096, 33.878876, 38.853073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.758659, 33.780216, 38.780613>,  <30.414598, 33.615788, 38.659843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.758659, 33.780216, 38.780613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248242, 0.179701, -0.951884,
		-0.445551, 0.893715, 0.052524,
		0.860151, 0.411074, 0.301924,
		31.016705, 33.903538, 38.871189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.480686, 34.193768, 38.126831>,  <30.414598, 33.615788, 38.659843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.480686, 34.193768, 38.126831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.826958, 34.157059, 38.323677>,  <31.034721, 34.135033, 38.441784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.826958, 34.157059, 38.323677>,  <30.480686, 34.193768, 38.126831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.826958, 34.157059, 38.323677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474988, 0.460984, -0.749586,
		-0.158063, 0.882650, 0.442657,
		0.865680, -0.091775, 0.492113,
		31.086662, 34.129524, 38.471310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.019812, 34.020916, 37.585274>,  <30.480686, 34.193768, 38.126831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.019812, 34.020916, 37.585274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.311676, 34.243855, 37.426800>,  <30.486795, 34.377617, 37.331715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.311676, 34.243855, 37.426800>,  <30.019812, 34.020916, 37.585274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.311676, 34.243855, 37.426800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390659, -0.815281, -0.427437,
		-0.561230, 0.157112, -0.812611,
		0.729662, 0.557344, -0.396183,
		30.530575, 34.411057, 37.307945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.090330, 33.951305, 36.786243>,  <30.019812, 34.020916, 37.585274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.090330, 33.951305, 36.786243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.457064, 34.063076, 36.900326>,  <30.677103, 34.130138, 36.968777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.457064, 34.063076, 36.900326>,  <30.090330, 33.951305, 36.786243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.457064, 34.063076, 36.900326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389487, -0.783073, -0.484868,
		0.087854, 0.555626, -0.826778,
		0.916832, 0.279422, 0.285205,
		30.732113, 34.146904, 36.985886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.608562, 33.972946, 36.206490>,  <30.090330, 33.951305, 36.786243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.608562, 33.972946, 36.206490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.789177, 33.875771, 36.549908>,  <30.897547, 33.817467, 36.755959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.789177, 33.875771, 36.549908>,  <30.608562, 33.972946, 36.206490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.789177, 33.875771, 36.549908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561660, -0.670266, -0.485057,
		0.693291, 0.701231, -0.166203,
		0.451537, -0.242936, 0.858543,
		30.924639, 33.802891, 36.807472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.389097, 34.032326, 36.210381>,  <30.608562, 33.972946, 36.206490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.389097, 34.032326, 36.210381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.216026, 33.754959, 36.440845>,  <31.112183, 33.588539, 36.579124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.216026, 33.754959, 36.440845>,  <31.389097, 34.032326, 36.210381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.216026, 33.754959, 36.440845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448285, -0.719949, -0.529824,
		0.782195, 0.029040, 0.622356,
		-0.432679, -0.693419, 0.576159,
		31.086222, 33.546932, 36.613693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.052956, 33.865585, 35.949471>,  <31.389097, 34.032326, 36.210381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.052956, 33.865585, 35.949471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.816320, 33.547256, 36.001152>,  <31.674339, 33.356258, 36.032162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.816320, 33.547256, 36.001152>,  <32.052956, 33.865585, 35.949471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.816320, 33.547256, 36.001152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.639374, -0.560713, -0.526120,
		0.491144, -0.228636, 0.840537,
		-0.591590, -0.795818, 0.129207,
		31.638844, 33.308510, 36.039913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.567986, 34.369434, 35.761669>,  <32.052956, 33.865585, 35.949471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.567986, 34.369434, 35.761669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.591022, 33.995880, 35.902828>,  <32.604843, 33.771748, 35.987526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.591022, 33.995880, 35.902828>,  <32.567986, 34.369434, 35.761669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.591022, 33.995880, 35.902828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486856, -0.282334, -0.826595,
		0.871582, 0.219414, 0.438410,
		0.057588, -0.933887, 0.352900,
		32.608299, 33.715714, 36.008698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.247543, 34.091152, 35.888058>,  <32.567986, 34.369434, 35.761669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.247543, 34.091152, 35.888058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.021900, 33.770653, 35.808273>,  <32.886517, 33.578354, 35.760403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.021900, 33.770653, 35.808273>,  <33.247543, 34.091152, 35.888058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.021900, 33.770653, 35.808273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.667122, -0.299924, -0.681904,
		0.486551, -0.517732, 0.703720,
		-0.564106, -0.801248, -0.199462,
		32.852669, 33.530277, 35.748436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.708546, 33.494263, 35.714996>,  <33.247543, 34.091152, 35.888058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.708546, 33.494263, 35.714996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.343189, 33.397797, 35.583809>,  <33.123978, 33.339916, 35.505096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.343189, 33.397797, 35.583809>,  <33.708546, 33.494263, 35.714996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.343189, 33.397797, 35.583809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405679, -0.472265, -0.782554,
		0.033836, -0.847825, 0.529196,
		-0.913390, -0.241162, -0.327965,
		33.069172, 33.325447, 35.485420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.766911, 32.810703, 35.483234>,  <33.708546, 33.494263, 35.714996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.766911, 32.810703, 35.483234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.490086, 33.022797, 35.287315>,  <33.323990, 33.150051, 35.169765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.490086, 33.022797, 35.287315>,  <33.766911, 32.810703, 35.483234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.490086, 33.022797, 35.287315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472546, -0.180136, -0.862700,
		-0.545663, -0.828494, -0.125894,
		-0.692064, 0.530234, -0.489795,
		33.282467, 33.181866, 35.140377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.458366, 32.449421, 34.855560>,  <33.766911, 32.810703, 35.483234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.458366, 32.449421, 34.855560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.450802, 32.842682, 34.782845>,  <33.446262, 33.078640, 34.739216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.450802, 32.842682, 34.782845>,  <33.458366, 32.449421, 34.855560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.450802, 32.842682, 34.782845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405922, -0.158613, -0.900038,
		-0.913712, -0.090814, -0.396085,
		-0.018912, 0.983155, -0.181790,
		33.445129, 33.137627, 34.728306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.148193, 32.508659, 34.254925>,  <33.458366, 32.449421, 34.855560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.148193, 32.508659, 34.254925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.339851, 32.857407, 34.295471>,  <33.454845, 33.066654, 34.319801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.339851, 32.857407, 34.295471>,  <33.148193, 32.508659, 34.254925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.339851, 32.857407, 34.295471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307099, -0.058329, -0.949888,
		-0.822261, 0.486262, -0.295696,
		0.479142, 0.871864, 0.101369,
		33.483593, 33.118965, 34.325882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.076797, 32.871742, 33.597534>,  <33.148193, 32.508659, 34.254925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.076797, 32.871742, 33.597534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.394688, 33.018021, 33.791309>,  <33.585423, 33.105785, 33.907574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.394688, 33.018021, 33.791309>,  <33.076797, 32.871742, 33.597534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.394688, 33.018021, 33.791309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554854, -0.114141, -0.824081,
		-0.246066, 0.923710, -0.293617,
		0.794726, 0.365693, 0.484438,
		33.633106, 33.127728, 33.936642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.442894, 33.195110, 33.076744>,  <33.076797, 32.871742, 33.597534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.442894, 33.195110, 33.076744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.695904, 33.180359, 33.386211>,  <33.847710, 33.171509, 33.571892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.695904, 33.180359, 33.386211>,  <33.442894, 33.195110, 33.076744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.695904, 33.180359, 33.386211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.732153, -0.297451, -0.612761,
		0.252727, 0.954025, -0.161140,
		0.632520, -0.036882, 0.773666,
		33.885658, 33.169292, 33.618313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.975330, 33.585918, 32.815620>,  <33.442894, 33.195110, 33.076744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.975330, 33.585918, 32.815620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.130497, 33.345512, 33.095135>,  <34.223595, 33.201267, 33.262844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.130497, 33.345512, 33.095135>,  <33.975330, 33.585918, 32.815620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.130497, 33.345512, 33.095135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.726218, -0.267553, -0.633263,
		0.567565, 0.753121, 0.332684,
		0.387913, -0.601019, 0.698784,
		34.246872, 33.165207, 33.304771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.659779, 33.633179, 32.764149>,  <33.975330, 33.585918, 32.815620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.659779, 33.633179, 32.764149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.646168, 33.301815, 32.987785>,  <34.638000, 33.102997, 33.121967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.646168, 33.301815, 32.987785>,  <34.659779, 33.633179, 32.764149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.646168, 33.301815, 32.987785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.697273, -0.420449, -0.580545,
		0.715997, 0.370081, 0.591936,
		-0.034031, -0.828410, 0.559088,
		34.635960, 33.053291, 33.155510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.329704, 33.386478, 32.689911>,  <34.659779, 33.633179, 32.764149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.329704, 33.386478, 32.689911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.120033, 33.069866, 32.815590>,  <34.994232, 32.879898, 32.890995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.120033, 33.069866, 32.815590>,  <35.329704, 33.386478, 32.689911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.120033, 33.069866, 32.815590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594011, -0.604197, -0.531127,
		0.610239, -0.091768, 0.786884,
		-0.524174, -0.791533, 0.314194,
		34.962780, 32.832405, 32.909847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.869095, 32.785862, 32.897549>,  <35.329704, 33.386478, 32.689911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.869095, 32.785862, 32.897549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.518394, 32.616192, 32.806881>,  <35.307972, 32.514389, 32.752480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.518394, 32.616192, 32.806881>,  <35.869095, 32.785862, 32.897549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.518394, 32.616192, 32.806881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472480, -0.671661, -0.570644,
		0.089809, -0.607410, 0.789296,
		-0.876754, -0.424176, -0.226668,
		35.255367, 32.488937, 32.738880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.939953, 32.046276, 32.897266>,  <35.869095, 32.785862, 32.897549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.939953, 32.046276, 32.897266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.619434, 32.104343, 32.665112>,  <35.427124, 32.139183, 32.525818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.619434, 32.104343, 32.665112>,  <35.939953, 32.046276, 32.897266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.619434, 32.104343, 32.665112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402612, -0.586728, -0.702605,
		-0.442523, -0.796666, 0.411699,
		-0.801297, 0.145163, -0.580388,
		35.379044, 32.147892, 32.490993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.722496, 31.336029, 32.718056>,  <35.939953, 32.046276, 32.897266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.722496, 31.336029, 32.718056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.575813, 31.605436, 32.461338>,  <35.487804, 31.767080, 32.307308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.575813, 31.605436, 32.461338>,  <35.722496, 31.336029, 32.718056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.575813, 31.605436, 32.461338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282110, -0.576866, -0.766577,
		-0.886532, -0.462166, 0.021535,
		-0.366708, 0.673520, -0.641792,
		35.465801, 31.807491, 32.268799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.625572, 30.947136, 32.107754>,  <35.722496, 31.336029, 32.718056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.625572, 30.947136, 32.107754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.542843, 31.301968, 31.942678>,  <35.493206, 31.514866, 31.843634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.542843, 31.301968, 31.942678>,  <35.625572, 30.947136, 32.107754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.542843, 31.301968, 31.942678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300109, -0.343955, -0.889736,
		-0.931213, -0.307873, -0.195082,
		-0.206826, 0.887079, -0.412690,
		35.480797, 31.568092, 31.818871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.249039, 30.842196, 31.421268>,  <35.625572, 30.947136, 32.107754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.249039, 30.842196, 31.421268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.428425, 31.199694, 31.417326>,  <35.536057, 31.414192, 31.414961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.428425, 31.199694, 31.417326>,  <35.249039, 30.842196, 31.421268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.428425, 31.199694, 31.417326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400405, -0.210750, -0.891774,
		-0.799097, 0.395982, -0.452375,
		0.448464, 0.893746, -0.009856,
		35.562965, 31.467817, 31.414370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.253242, 31.043320, 30.732008>,  <35.249039, 30.842196, 31.421268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.253242, 31.043320, 30.732008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.539040, 31.281136, 30.879532>,  <35.710518, 31.423826, 30.968046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.539040, 31.281136, 30.879532>,  <35.253242, 31.043320, 30.732008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.539040, 31.281136, 30.879532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510597, -0.082713, -0.855832,
		-0.478322, 0.799799, -0.362669,
		0.714492, 0.594542, 0.368812,
		35.753387, 31.459497, 30.990175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.316948, 31.600105, 30.328733>,  <35.253242, 31.043320, 30.732008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.316948, 31.600105, 30.328733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.671700, 31.609163, 30.513315>,  <35.884548, 31.614597, 30.624063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.671700, 31.609163, 30.513315>,  <35.316948, 31.600105, 30.328733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.671700, 31.609163, 30.513315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432064, 0.313080, -0.845755,
		-0.163623, 0.949457, 0.267879,
		0.886876, 0.022644, 0.461453,
		35.937763, 31.615957, 30.651751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.561043, 32.281036, 30.419006>,  <35.316948, 31.600105, 30.328733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.561043, 32.281036, 30.419006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.878769, 32.038036, 30.418159>,  <36.069405, 31.892235, 30.417652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.878769, 32.038036, 30.418159>,  <35.561043, 32.281036, 30.419006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.878769, 32.038036, 30.418159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350826, 0.461543, -0.814800,
		0.495971, 0.646465, 0.579738,
		0.794314, -0.607504, -0.002115,
		36.117062, 31.855785, 30.417524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.105652, 32.694733, 30.244364>,  <35.561043, 32.281036, 30.419006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.105652, 32.694733, 30.244364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.227989, 32.322800, 30.162508>,  <36.301392, 32.099640, 30.113394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.227989, 32.322800, 30.162508>,  <36.105652, 32.694733, 30.244364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.227989, 32.322800, 30.162508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364796, 0.312986, -0.876906,
		0.879421, 0.193547, 0.434923,
		0.305847, -0.929828, -0.204641,
		36.319744, 32.043850, 30.101116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.690266, 32.829731, 29.871895>,  <36.105652, 32.694733, 30.244364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.690266, 32.829731, 29.871895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.591518, 32.449070, 29.798771>,  <36.532269, 32.220673, 29.754896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.591518, 32.449070, 29.798771>,  <36.690266, 32.829731, 29.871895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.591518, 32.449070, 29.798771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242549, 0.121963, -0.962442,
		0.938204, -0.281935, 0.200713,
		-0.246867, -0.951650, -0.182810,
		36.517460, 32.163574, 29.743929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.186760, 32.549946, 29.415756>,  <36.690266, 32.829731, 29.871895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.186760, 32.549946, 29.415756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.876320, 32.300903, 29.375685>,  <36.690056, 32.151478, 29.351643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.876320, 32.300903, 29.375685>,  <37.186760, 32.549946, 29.415756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.876320, 32.300903, 29.375685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121284, 0.008522, -0.992581,
		0.618838, -0.782491, 0.068898,
		-0.776099, -0.622603, -0.100178,
		36.643490, 32.114124, 29.345631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.334084, 31.953043, 29.086464>,  <37.186760, 32.549946, 29.415756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.334084, 31.953043, 29.086464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.946980, 31.992348, 28.993700>,  <36.714718, 32.015930, 28.938042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.946980, 31.992348, 28.993700>,  <37.334084, 31.953043, 29.086464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.946980, 31.992348, 28.993700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239076, 0.068645, -0.968571,
		-0.079257, -0.992790, -0.089924,
		-0.967761, 0.098265, -0.231912,
		36.656651, 32.021828, 28.924126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.307808, 31.672892, 28.376509>,  <37.334084, 31.953043, 29.086464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.307808, 31.672892, 28.376509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.951405, 31.844616, 28.435562>,  <36.737564, 31.947651, 28.470995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.951405, 31.844616, 28.435562>,  <37.307808, 31.672892, 28.376509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.951405, 31.844616, 28.435562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008585, 0.309202, -0.950958,
		-0.453906, -0.848578, -0.271816,
		-0.891008, 0.429312, 0.147633,
		36.684101, 31.973410, 28.479853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.943775, 31.260542, 27.964520>,  <37.307808, 31.672892, 28.376509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.943775, 31.260542, 27.964520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.724682, 31.593321, 27.999973>,  <36.593227, 31.792988, 28.021246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.724682, 31.593321, 27.999973>,  <36.943775, 31.260542, 27.964520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.724682, 31.593321, 27.999973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062130, 0.065203, -0.995936,
		-0.834343, -0.551014, 0.015975,
		-0.547733, 0.831945, 0.088636,
		36.560364, 31.842905, 28.026564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.444248, 31.179146, 27.490183>,  <36.943775, 31.260542, 27.964520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.444248, 31.179146, 27.490183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.496044, 31.570951, 27.551874>,  <36.527122, 31.806034, 27.588888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.496044, 31.570951, 27.551874>,  <36.444248, 31.179146, 27.490183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.496044, 31.570951, 27.551874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152988, 0.133941, -0.979109,
		-0.979708, 0.150377, -0.132510,
		0.129487, 0.979514, 0.154229,
		36.534889, 31.864805, 27.598143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.259197, 31.404392, 26.887121>,  <36.444248, 31.179146, 27.490183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.259197, 31.404392, 26.887121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.400894, 31.744602, 27.042618>,  <36.485912, 31.948729, 27.135916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.400894, 31.744602, 27.042618>,  <36.259197, 31.404392, 26.887121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.400894, 31.744602, 27.042618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109651, 0.375053, -0.920496,
		-0.928704, 0.368701, 0.039597,
		0.354239, 0.850526, 0.388741,
		36.507164, 31.999760, 27.159241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.977093, 31.835018, 26.447407>,  <36.259197, 31.404392, 26.887121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.977093, 31.835018, 26.447407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.287235, 32.031193, 26.606556>,  <36.473320, 32.148895, 26.702045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.287235, 32.031193, 26.606556>,  <35.977093, 31.835018, 26.447407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.287235, 32.031193, 26.606556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146256, 0.473441, -0.868598,
		-0.614361, 0.731660, 0.295355,
		0.775352, 0.490435, 0.397873,
		36.519840, 32.178322, 26.725918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.875950, 32.587490, 26.299372>,  <35.977093, 31.835018, 26.447407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.875950, 32.587490, 26.299372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.267555, 32.527767, 26.354845>,  <36.502518, 32.491936, 26.388128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.267555, 32.527767, 26.354845>,  <35.875950, 32.587490, 26.299372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.267555, 32.527767, 26.354845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203096, 0.659323, -0.723910,
		0.016646, 0.736886, 0.675812,
		0.979017, -0.149305, 0.138683,
		36.561260, 32.482975, 26.396450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.036736, 33.184109, 25.960941>,  <35.875950, 32.587490, 26.299372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.036736, 33.184109, 25.960941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.368874, 32.968357, 26.016935>,  <36.568157, 32.838905, 26.050531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.368874, 32.968357, 26.016935>,  <36.036736, 33.184109, 25.960941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.368874, 32.968357, 26.016935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417782, 0.436336, -0.796912,
		0.368756, 0.720196, 0.587653,
		0.830347, -0.539377, 0.139983,
		36.617977, 32.806545, 26.058929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.576485, 33.610180, 25.795090>,  <36.036736, 33.184109, 25.960941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.576485, 33.610180, 25.795090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.710400, 33.237766, 25.736990>,  <36.790749, 33.014320, 25.702131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.710400, 33.237766, 25.736990>,  <36.576485, 33.610180, 25.795090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.710400, 33.237766, 25.736990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450420, 0.293509, -0.843193,
		0.827671, 0.216867, 0.517619,
		0.334787, -0.931032, -0.145247,
		36.810837, 32.958458, 25.693417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.197803, 33.699993, 25.547079>,  <36.576485, 33.610180, 25.795090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.197803, 33.699993, 25.547079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.135269, 33.317223, 25.449224>,  <37.097748, 33.087559, 25.390512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.135269, 33.317223, 25.449224>,  <37.197803, 33.699993, 25.547079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.135269, 33.317223, 25.449224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422594, 0.159062, -0.892252,
		0.892734, -0.242872, 0.379526,
		-0.156334, -0.956929, -0.244636,
		37.088367, 33.030144, 25.375834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.809261, 33.576096, 25.317333>,  <37.197803, 33.699993, 25.547079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.809261, 33.576096, 25.317333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.576942, 33.279068, 25.183907>,  <37.437550, 33.100853, 25.103849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.576942, 33.279068, 25.183907>,  <37.809261, 33.576096, 25.317333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.576942, 33.279068, 25.183907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390692, 0.105217, -0.914489,
		0.714164, -0.661459, 0.229003,
		-0.580802, -0.742564, -0.333568,
		37.402702, 33.056297, 25.083836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.252266, 33.057785, 24.932180>,  <37.809261, 33.576096, 25.317333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.252266, 33.057785, 24.932180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.879536, 33.030724, 24.789560>,  <37.655899, 33.014484, 24.703989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.879536, 33.030724, 24.789560>,  <38.252266, 33.057785, 24.932180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.879536, 33.030724, 24.789560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352119, 0.069256, -0.933389,
		0.087851, -0.995301, -0.040709,
		-0.931823, -0.067665, -0.356549,
		37.599987, 33.010426, 24.682596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.278721, 32.543583, 24.324512>,  <38.252266, 33.057785, 24.932180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.278721, 32.543583, 24.324512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.951073, 32.765137, 24.264828>,  <37.754486, 32.898067, 24.229017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.951073, 32.765137, 24.264828>,  <38.278721, 32.543583, 24.324512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.951073, 32.765137, 24.264828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202975, 0.036573, -0.978501,
		-0.536515, -0.831792, -0.142382,
		-0.819117, 0.553881, -0.149211,
		37.705338, 32.931301, 24.220064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.939842, 32.284672, 23.650866>,  <38.278721, 32.543583, 24.324512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.939842, 32.284672, 23.650866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.804546, 32.656677, 23.708366>,  <37.723370, 32.879883, 23.742867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.804546, 32.656677, 23.708366>,  <37.939842, 32.284672, 23.650866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.804546, 32.656677, 23.708366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126249, 0.196219, -0.972399,
		-0.932553, -0.310756, -0.183783,
		-0.338240, 0.930015, 0.143752,
		37.703075, 32.935680, 23.751492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.664574, 32.440311, 22.961624>,  <37.939842, 32.284672, 23.650866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.664574, 32.440311, 22.961624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.701988, 32.795654, 23.141432>,  <37.724438, 33.008862, 23.249315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.701988, 32.795654, 23.141432>,  <37.664574, 32.440311, 22.961624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.701988, 32.795654, 23.141432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227859, 0.420413, -0.878256,
		-0.969191, 0.184574, -0.163098,
		0.093535, 0.888361, 0.449518,
		37.730049, 33.062164, 23.276287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.362774, 32.797226, 22.461906>,  <37.664574, 32.440311, 22.961624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.362774, 32.797226, 22.461906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.581024, 33.043449, 22.689373>,  <37.711975, 33.191185, 22.825853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.581024, 33.043449, 22.689373>,  <37.362774, 32.797226, 22.461906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.581024, 33.043449, 22.689373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270480, 0.512905, -0.814720,
		-0.793179, 0.598345, 0.113358,
		0.545626, 0.615558, 0.568666,
		37.744713, 33.228115, 22.859972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.103668, 33.451870, 22.342569>,  <37.362774, 32.797226, 22.461906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.103668, 33.451870, 22.342569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.484859, 33.494991, 22.455853>,  <37.713573, 33.520866, 22.523823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.484859, 33.494991, 22.455853>,  <37.103668, 33.451870, 22.342569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.484859, 33.494991, 22.455853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121949, 0.719126, -0.684095,
		-0.277414, 0.686466, 0.672165,
		0.952979, 0.107808, 0.283210,
		37.770752, 33.527332, 22.540815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.191929, 34.125069, 22.269911>,  <37.103668, 33.451870, 22.342569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.191929, 34.125069, 22.269911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.578186, 34.025307, 22.299114>,  <37.809940, 33.965450, 22.316637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.578186, 34.025307, 22.299114>,  <37.191929, 34.125069, 22.269911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.578186, 34.025307, 22.299114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213656, 0.602019, -0.769366,
		0.147928, 0.758532, 0.634623,
		0.965644, -0.249402, 0.073009,
		37.867878, 33.950485, 22.321016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.528870, 34.784061, 22.065958>,  <37.191929, 34.125069, 22.269911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.528870, 34.784061, 22.065958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.792233, 34.485500, 22.027225>,  <37.950249, 34.306362, 22.003986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.792233, 34.485500, 22.027225>,  <37.528870, 34.784061, 22.065958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.792233, 34.485500, 22.027225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492584, 0.524590, -0.694382,
		0.569087, 0.409490, 0.713062,
		0.658408, -0.746407, -0.096830,
		37.989754, 34.261578, 21.998177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.219429, 35.095947, 22.193445>,  <37.528870, 34.784061, 22.065958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.219429, 35.095947, 22.193445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.267986, 34.767128, 21.970917>,  <38.297119, 34.569836, 21.837399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.267986, 34.767128, 21.970917>,  <38.219429, 35.095947, 22.193445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.267986, 34.767128, 21.970917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600245, 0.507175, -0.618449,
		0.790550, -0.258854, 0.555000,
		0.121394, -0.822051, -0.556323,
		38.304405, 34.520512, 21.804020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.894051, 35.102577, 21.976044>,  <38.219429, 35.095947, 22.193445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.894051, 35.102577, 21.976044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.737518, 34.830170, 21.728474>,  <38.643597, 34.666725, 21.579931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.737518, 34.830170, 21.728474>,  <38.894051, 35.102577, 21.976044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.737518, 34.830170, 21.728474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611829, 0.309843, -0.727779,
		0.687402, -0.663481, 0.295416,
		-0.391335, -0.681021, -0.618924,
		38.620117, 34.625862, 21.542797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.419861, 34.772984, 21.524334>,  <38.894051, 35.102577, 21.976044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.419861, 34.772984, 21.524334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.086231, 34.719364, 21.310284>,  <38.886055, 34.687195, 21.181854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.086231, 34.719364, 21.310284>,  <39.419861, 34.772984, 21.524334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.086231, 34.719364, 21.310284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420714, 0.472885, -0.774196,
		0.356827, -0.870869, -0.338027,
		-0.834071, -0.134041, -0.535124,
		38.836010, 34.679150, 21.149746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.692844, 34.633060, 20.921936>,  <39.419861, 34.772984, 21.524334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.692844, 34.633060, 20.921936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.314480, 34.707111, 20.815363>,  <39.087463, 34.751541, 20.751419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.314480, 34.707111, 20.815363>,  <39.692844, 34.633060, 20.921936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.314480, 34.707111, 20.815363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324255, 0.566782, -0.757375,
		0.010802, -0.802799, -0.596151,
		-0.945908, 0.185124, -0.266434,
		39.030708, 34.762650, 20.735434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.710297, 34.678867, 20.188347>,  <39.692844, 34.633060, 20.921936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.710297, 34.678867, 20.188347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.391151, 34.879196, 20.322559>,  <39.199665, 34.999393, 20.403088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.391151, 34.879196, 20.322559>,  <39.710297, 34.678867, 20.188347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.391151, 34.879196, 20.322559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203792, 0.747905, -0.631749,
		-0.567343, -0.435672, -0.698793,
		-0.797866, 0.500827, 0.335532,
		39.151791, 35.029446, 20.423220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.244507, 34.813648, 19.644148>,  <39.710297, 34.678867, 20.188347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.244507, 34.813648, 19.644148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.200523, 35.104107, 19.915623>,  <39.174133, 35.278381, 20.078508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.200523, 35.104107, 19.915623>,  <39.244507, 34.813648, 19.644148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.200523, 35.104107, 19.915623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380629, 0.661541, -0.646130,
		-0.918166, 0.187278, -0.349138,
		-0.109963, 0.726147, 0.678689,
		39.167534, 35.321953, 20.119230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.860348, 35.498749, 19.370520>,  <39.244507, 34.813648, 19.644148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.860348, 35.498749, 19.370520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.145924, 35.564697, 19.642729>,  <39.317268, 35.604267, 19.806055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.145924, 35.564697, 19.642729>,  <38.860348, 35.498749, 19.370520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.145924, 35.564697, 19.642729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395342, 0.707240, -0.586102,
		-0.577927, 0.687479, 0.439742,
		0.713936, 0.164876, 0.680523,
		39.360104, 35.614159, 19.846886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.993210, 36.205265, 19.530039>,  <38.860348, 35.498749, 19.370520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.993210, 36.205265, 19.530039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.337322, 36.004845, 19.567692>,  <39.543789, 35.884594, 19.590282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.337322, 36.004845, 19.567692>,  <38.993210, 36.205265, 19.530039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.337322, 36.004845, 19.567692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432978, 0.620585, -0.653762,
		0.269152, 0.603177, 0.750823,
		0.860283, -0.501051, 0.094130,
		39.595406, 35.854530, 19.595930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.527523, 36.710201, 19.608191>,  <38.993210, 36.205265, 19.530039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.527523, 36.710201, 19.608191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.625607, 36.361652, 19.438208>,  <39.684456, 36.152523, 19.336218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.625607, 36.361652, 19.438208>,  <39.527523, 36.710201, 19.608191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.625607, 36.361652, 19.438208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552376, 0.485805, -0.677402,
		0.796714, -0.068631, 0.600447,
		0.245209, -0.871369, -0.424958,
		39.699169, 36.100243, 19.310720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.320984, 36.438164, 19.720322>,  <39.527523, 36.710201, 19.608191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.320984, 36.438164, 19.720322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.123573, 36.385658, 19.376413>,  <40.005127, 36.354156, 19.170069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.123573, 36.385658, 19.376413>,  <40.320984, 36.438164, 19.720322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.123573, 36.385658, 19.376413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.620321, 0.639774, -0.453752,
		0.609618, -0.757271, -0.234320,
		-0.493525, -0.131262, -0.859769,
		39.975517, 36.346279, 19.118483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.993320, 36.514393, 19.473818>,  <40.320984, 36.438164, 19.720322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.993320, 36.514393, 19.473818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.367016, 36.620861, 19.378864>,  <41.591232, 36.684742, 19.321892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.367016, 36.620861, 19.378864>,  <40.993320, 36.514393, 19.473818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.367016, 36.620861, 19.378864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292787, 0.192320, -0.936637,
		-0.203653, 0.944545, 0.257605,
		0.934238, 0.266172, -0.237384,
		41.647285, 36.700714, 19.307650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.931293, 37.157063, 19.124212>,  <40.993320, 36.514393, 19.473818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.931293, 37.157063, 19.124212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.307114, 37.055641, 19.032162>,  <41.532604, 36.994789, 18.976933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.307114, 37.055641, 19.032162>,  <40.931293, 37.157063, 19.124212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.307114, 37.055641, 19.032162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108491, 0.417008, -0.902404,
		0.324768, 0.872821, 0.364293,
		0.939551, -0.253549, -0.230124,
		41.588978, 36.979576, 18.963125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.664925, 37.874367, 19.233162>,  <40.931293, 37.157063, 19.124212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.664925, 37.874367, 19.233162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.319775, 37.812389, 19.040730>,  <40.112686, 37.775204, 18.925270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.319775, 37.812389, 19.040730>,  <40.664925, 37.874367, 19.233162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.319775, 37.812389, 19.040730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491229, 0.033150, 0.870399,
		-0.118918, 0.987366, -0.104719,
		-0.862874, -0.154947, -0.481081,
		40.060913, 37.765903, 18.896404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.194794, 38.043694, 19.729376>,  <40.664925, 37.874367, 19.233162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.194794, 38.043694, 19.729376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.929409, 37.883545, 19.476545>,  <39.770180, 37.787457, 19.324846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.929409, 37.883545, 19.476545>,  <40.194794, 38.043694, 19.729376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.929409, 37.883545, 19.476545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.712633, 0.080736, 0.696876,
		-0.227980, 0.912788, -0.338886,
		-0.663460, -0.400375, -0.632077,
		39.730370, 37.763432, 19.286922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.648438, 38.496559, 19.603336>,  <40.194794, 38.043694, 19.729376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.648438, 38.496559, 19.603336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.528328, 38.115654, 19.625332>,  <39.456261, 37.887112, 19.638529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.528328, 38.115654, 19.625332>,  <39.648438, 38.496559, 19.603336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.528328, 38.115654, 19.625332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.803253, 0.283535, 0.523826,
		-0.514413, 0.113121, -0.850049,
		-0.300274, -0.952267, 0.054989,
		39.438244, 37.829975, 19.641829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.844631, 38.309006, 20.316275>,  <39.648438, 38.496559, 19.603336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.844631, 38.309006, 20.316275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.528446, 38.121506, 20.158569>,  <39.338734, 38.009007, 20.063946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.528446, 38.121506, 20.158569>,  <39.844631, 38.309006, 20.316275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.528446, 38.121506, 20.158569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402801, -0.087098, 0.911134,
		-0.461433, 0.879027, -0.119964,
		-0.790463, -0.468749, -0.394263,
		39.291306, 37.980881, 20.040291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.149212, 38.715000, 20.394760>,  <39.844631, 38.309006, 20.316275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.149212, 38.715000, 20.394760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.118382, 38.316395, 20.407505>,  <39.099884, 38.077232, 20.415152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.118382, 38.316395, 20.407505>,  <39.149212, 38.715000, 20.394760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.118382, 38.316395, 20.407505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.603534, 0.072069, 0.794073,
		-0.793603, 0.041969, -0.606986,
		-0.077071, -0.996516, 0.031864,
		39.095261, 38.017441, 20.417065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.458153, 38.588409, 20.593620>,  <39.149212, 38.715000, 20.394760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.458153, 38.588409, 20.593620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.645962, 38.244404, 20.673550>,  <38.758648, 38.038002, 20.721508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.645962, 38.244404, 20.673550>,  <38.458153, 38.588409, 20.593620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.645962, 38.244404, 20.673550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514094, -0.082294, 0.853777,
		-0.717814, -0.503594, -0.480765,
		0.469521, -0.860012, 0.199823,
		38.786819, 37.986401, 20.733496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.982052, 38.173340, 21.077700>,  <38.458153, 38.588409, 20.593620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.982052, 38.173340, 21.077700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.340305, 38.003704, 21.131350>,  <38.555256, 37.901924, 21.163540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.340305, 38.003704, 21.131350>,  <37.982052, 38.173340, 21.077700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.340305, 38.003704, 21.131350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195760, -0.105063, 0.975008,
		-0.399397, -0.899506, -0.177117,
		0.895634, -0.424088, 0.134125,
		38.608997, 37.876476, 21.171587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.818974, 37.551113, 21.501921>,  <37.982052, 38.173340, 21.077700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.818974, 37.551113, 21.501921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.211548, 37.608265, 21.553089>,  <38.447094, 37.642555, 21.583790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.211548, 37.608265, 21.553089>,  <37.818974, 37.551113, 21.501921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.211548, 37.608265, 21.553089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122769, -0.044354, 0.991444,
		0.147327, -0.988746, -0.025990,
		0.981439, 0.142876, 0.127922,
		38.505981, 37.651127, 21.591465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.107731, 37.077877, 22.019793>,  <37.818974, 37.551113, 21.501921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.107731, 37.077877, 22.019793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.388195, 37.363049, 22.015493>,  <38.556473, 37.534149, 22.012915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.388195, 37.363049, 22.015493>,  <38.107731, 37.077877, 22.019793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.388195, 37.363049, 22.015493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036591, 0.051033, 0.998027,
		0.712068, -0.699379, 0.061868,
		0.701156, 0.712927, -0.010748,
		38.598541, 37.576927, 22.012270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.550785, 36.808815, 22.461039>,  <38.107731, 37.077877, 22.019793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.550785, 36.808815, 22.461039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.638145, 37.199158, 22.461243>,  <38.690559, 37.433365, 22.461365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.638145, 37.199158, 22.461243>,  <38.550785, 36.808815, 22.461039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.638145, 37.199158, 22.461243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005035, -0.001650, 0.999986,
		0.975847, -0.218392, -0.005274,
		0.218398, 0.975860, 0.000510,
		38.703667, 37.491917, 22.461395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.247295, 36.925762, 22.870974>,  <38.550785, 36.808815, 22.461039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.247295, 36.925762, 22.870974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.044514, 37.270546, 22.869474>,  <38.922844, 37.477417, 22.868574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.044514, 37.270546, 22.869474>,  <39.247295, 36.925762, 22.870974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.044514, 37.270546, 22.869474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057184, 0.037972, 0.997641,
		0.860071, 0.505549, -0.068541,
		-0.506959, 0.861962, -0.003749,
		38.892426, 37.529133, 22.868349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.582176, 37.391712, 23.241693>,  <39.247295, 36.925762, 22.870974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.582176, 37.391712, 23.241693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.206497, 37.528675, 23.231377>,  <38.981091, 37.610855, 23.225187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.206497, 37.528675, 23.231377>,  <39.582176, 37.391712, 23.241693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.206497, 37.528675, 23.231377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001576, 0.079411, 0.996841,
		0.343375, 0.936189, -0.075122,
		-0.939197, 0.342409, -0.025793,
		38.924740, 37.631397, 23.223639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.533710, 37.869598, 23.781576>,  <39.582176, 37.391712, 23.241693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.533710, 37.869598, 23.781576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.147762, 37.771469, 23.743956>,  <38.916195, 37.712593, 23.721384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.147762, 37.771469, 23.743956>,  <39.533710, 37.869598, 23.781576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.147762, 37.771469, 23.743956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137910, 0.168212, 0.976056,
		-0.223628, 0.954737, -0.196135,
		-0.964869, -0.245323, -0.094050,
		38.858303, 37.697872, 23.715740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.091034, 38.439110, 24.297525>,  <39.533710, 37.869598, 23.781576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.091034, 38.439110, 24.297525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.878513, 38.106476, 24.232800>,  <38.750999, 37.906895, 24.193964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.878513, 38.106476, 24.232800>,  <39.091034, 38.439110, 24.297525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.878513, 38.106476, 24.232800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367039, 0.053803, 0.928648,
		-0.763544, 0.552785, -0.333809,
		-0.531303, -0.831585, -0.161813,
		38.719124, 37.856998, 24.184256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.546432, 38.503105, 24.637537>,  <39.091034, 38.439110, 24.297525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.546432, 38.503105, 24.637537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.494534, 38.117252, 24.545761>,  <38.463394, 37.885738, 24.490696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.494534, 38.117252, 24.545761>,  <38.546432, 38.503105, 24.637537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.494534, 38.117252, 24.545761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353892, -0.171105, 0.919501,
		-0.926243, 0.200501, -0.319177,
		-0.129748, -0.964636, -0.229441,
		38.455608, 37.827862, 24.476929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.933033, 38.285454, 24.845539>,  <38.546432, 38.503105, 24.637537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.933033, 38.285454, 24.845539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.098969, 37.921497, 24.844368>,  <38.198528, 37.703125, 24.843666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.098969, 37.921497, 24.844368>,  <37.933033, 38.285454, 24.845539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.098969, 37.921497, 24.844368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370952, -0.172059, 0.912574,
		-0.830847, -0.377482, -0.408902,
		0.414836, -0.909892, -0.002927,
		38.223419, 37.648529, 24.843491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.462173, 37.944618, 25.322836>,  <37.933033, 38.285454, 24.845539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.462173, 37.944618, 25.322836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.759872, 37.678783, 25.296227>,  <37.938492, 37.519283, 25.280260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.759872, 37.678783, 25.296227>,  <37.462173, 37.944618, 25.322836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.759872, 37.678783, 25.296227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342820, -0.465582, 0.815909,
		-0.573215, -0.584429, -0.574341,
		0.744244, -0.664587, -0.066525,
		37.983147, 37.479408, 25.276270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.143932, 37.267662, 25.194910>,  <37.462173, 37.944618, 25.322836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.143932, 37.267662, 25.194910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.505436, 37.204105, 25.353893>,  <37.722340, 37.165970, 25.449284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.505436, 37.204105, 25.353893>,  <37.143932, 37.267662, 25.194910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.505436, 37.204105, 25.353893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424335, -0.454546, 0.783153,
		0.056224, -0.876436, -0.478224,
		0.903758, -0.158896, 0.397459,
		37.776562, 37.156437, 25.473131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.105824, 36.489639, 25.397350>,  <37.143932, 37.267662, 25.194910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.105824, 36.489639, 25.397350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.376518, 36.692909, 25.610437>,  <37.538937, 36.814869, 25.738291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.376518, 36.692909, 25.610437>,  <37.105824, 36.489639, 25.397350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.376518, 36.692909, 25.610437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431302, -0.312768, 0.846259,
		0.596661, -0.802458, 0.007513,
		0.676737, 0.508171, 0.532719,
		37.579540, 36.845360, 25.770252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.161911, 36.119049, 25.958780>,  <37.105824, 36.489639, 25.397350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.161911, 36.119049, 25.958780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.339714, 36.461182, 26.065233>,  <37.446396, 36.666462, 26.129105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.339714, 36.461182, 26.065233>,  <37.161911, 36.119049, 25.958780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.339714, 36.461182, 26.065233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395247, -0.079336, 0.915142,
		0.803863, -0.511973, 0.302802,
		0.444505, 0.855330, 0.266131,
		37.473064, 36.717781, 26.145073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.522427, 35.974991, 26.534637>,  <37.161911, 36.119049, 25.958780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.522427, 35.974991, 26.534637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.466187, 36.370514, 26.554619>,  <37.432442, 36.607826, 26.566608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.466187, 36.370514, 26.554619>,  <37.522427, 35.974991, 26.534637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.466187, 36.370514, 26.554619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487571, -0.113065, 0.865732,
		0.861688, 0.097364, 0.498009,
		-0.140599, 0.988806, 0.049956,
		37.424007, 36.667156, 26.569605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.655079, 36.160149, 27.286421>,  <37.522427, 35.974991, 26.534637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.655079, 36.160149, 27.286421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.448383, 36.462433, 27.125481>,  <37.324364, 36.643803, 27.028917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.448383, 36.462433, 27.125481>,  <37.655079, 36.160149, 27.286421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.448383, 36.462433, 27.125481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571079, 0.045878, 0.819612,
		0.637846, 0.653300, 0.407862,
		-0.516740, 0.755708, -0.402350,
		37.293362, 36.689144, 27.004776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.640007, 36.648254, 27.769495>,  <37.655079, 36.160149, 27.286421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.640007, 36.648254, 27.769495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.322018, 36.739521, 27.544655>,  <37.131226, 36.794281, 27.409750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.322018, 36.739521, 27.544655>,  <37.640007, 36.648254, 27.769495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.322018, 36.739521, 27.544655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.565902, 0.054917, 0.822641,
		0.218570, 0.972071, 0.085463,
		-0.794973, 0.228169, -0.562101,
		37.083527, 36.807972, 27.376024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.395794, 37.264412, 28.096954>,  <37.640007, 36.648254, 27.769495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.395794, 37.264412, 28.096954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.118988, 37.086384, 27.869610>,  <36.952904, 36.979568, 27.733202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.118988, 37.086384, 27.869610>,  <37.395794, 37.264412, 28.096954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.118988, 37.086384, 27.869610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.634244, -0.001161, 0.773133,
		-0.344757, 0.895496, -0.281478,
		-0.692010, -0.445068, -0.568363,
		36.911385, 36.952862, 27.699100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.825710, 37.735603, 28.269800>,  <37.395794, 37.264412, 28.096954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.825710, 37.735603, 28.269800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.644787, 37.415653, 28.112005>,  <36.536232, 37.223682, 28.017328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.644787, 37.415653, 28.112005>,  <36.825710, 37.735603, 28.269800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.644787, 37.415653, 28.112005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543796, -0.103246, 0.832843,
		-0.706896, 0.591225, -0.388267,
		-0.452310, -0.799871, -0.394489,
		36.509094, 37.175694, 27.993658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.182831, 37.815884, 28.541712>,  <36.825710, 37.735603, 28.269800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.182831, 37.815884, 28.541712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.190720, 37.432678, 28.427294>,  <36.195454, 37.202755, 28.358643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.190720, 37.432678, 28.427294>,  <36.182831, 37.815884, 28.541712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.190720, 37.432678, 28.427294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.677154, -0.223290, 0.701145,
		-0.735577, 0.179865, -0.653127,
		0.019726, -0.958014, -0.286043,
		36.196636, 37.145275, 28.341480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.508854, 37.626686, 28.536707>,  <36.182831, 37.815884, 28.541712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.508854, 37.626686, 28.536707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.719288, 37.289097, 28.578564>,  <35.845547, 37.086544, 28.603678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.719288, 37.289097, 28.578564>,  <35.508854, 37.626686, 28.536707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.719288, 37.289097, 28.578564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.662890, -0.329871, 0.672133,
		-0.532741, -0.422965, -0.732999,
		0.526083, -0.843971, 0.104643,
		35.877113, 37.035904, 28.609957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.967434, 37.157261, 28.494871>,  <35.508854, 37.626686, 28.536707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.967434, 37.157261, 28.494871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.273838, 36.957561, 28.656851>,  <35.457680, 36.837742, 28.754040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.273838, 36.957561, 28.656851>,  <34.967434, 37.157261, 28.494871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.273838, 36.957561, 28.656851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.587954, -0.289437, 0.755339,
		-0.259898, -0.816684, -0.515248,
		0.766005, -0.499253, 0.404948,
		35.503639, 36.807789, 28.778336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.679798, 36.455097, 28.655516>,  <34.967434, 37.157261, 28.494871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.679798, 36.455097, 28.655516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.013580, 36.477688, 28.874786>,  <35.213848, 36.491241, 29.006348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.013580, 36.477688, 28.874786>,  <34.679798, 36.455097, 28.655516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.013580, 36.477688, 28.874786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426385, -0.564015, 0.707165,
		0.349114, -0.823831, -0.446566,
		0.834455, 0.056472, 0.548175,
		35.263916, 36.494629, 29.039240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.767250, 35.752567, 28.891220>,  <34.679798, 36.455097, 28.655516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.767250, 35.752567, 28.891220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.963440, 36.000477, 29.136271>,  <35.081154, 36.149223, 29.283300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.963440, 36.000477, 29.136271>,  <34.767250, 35.752567, 28.891220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.963440, 36.000477, 29.136271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307542, -0.534659, 0.787119,
		0.815383, -0.574473, -0.071632,
		0.490478, 0.619774, 0.612627,
		35.110584, 36.186409, 29.320059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.901871, 35.228565, 29.364037>,  <34.767250, 35.752567, 28.891220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.901871, 35.228565, 29.364037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.993725, 35.576061, 29.539562>,  <35.048836, 35.784557, 29.644876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.993725, 35.576061, 29.539562>,  <34.901871, 35.228565, 29.364037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.993725, 35.576061, 29.539562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262418, -0.378899, 0.887453,
		0.937233, -0.318942, 0.140965,
		0.229634, 0.868741, 0.438812,
		35.062614, 35.836685, 29.671206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.275780, 35.050709, 29.959541>,  <34.901871, 35.228565, 29.364037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.275780, 35.050709, 29.959541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.144794, 35.424427, 30.015923>,  <35.066204, 35.648659, 30.049751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.144794, 35.424427, 30.015923>,  <35.275780, 35.050709, 29.959541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.144794, 35.424427, 30.015923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143821, -0.196724, 0.969853,
		0.933854, 0.297319, 0.198790,
		-0.327463, 0.934292, 0.140951,
		35.046555, 35.704716, 30.058208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.515316, 35.265522, 30.550535>,  <35.275780, 35.050709, 29.959541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.515316, 35.265522, 30.550535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.202911, 35.513905, 30.523905>,  <35.015469, 35.662933, 30.507927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.202911, 35.513905, 30.523905>,  <35.515316, 35.265522, 30.550535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.202911, 35.513905, 30.523905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346006, -0.341496, 0.873876,
		0.519903, 0.705545, 0.481568,
		-0.781013, 0.620956, -0.066578,
		34.968609, 35.700191, 30.503931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.656097, 35.767525, 31.128103>,  <35.515316, 35.265522, 30.550535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.656097, 35.767525, 31.128103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.278774, 35.828308, 31.010071>,  <35.052380, 35.864777, 30.939251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.278774, 35.828308, 31.010071>,  <35.656097, 35.767525, 31.128103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.278774, 35.828308, 31.010071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306358, -0.056558, 0.950235,
		0.127707, 0.986767, 0.099905,
		-0.943311, 0.151958, -0.295081,
		34.995781, 35.873894, 30.921547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.391972, 36.319477, 31.373922>,  <35.656097, 35.767525, 31.128103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.391972, 36.319477, 31.373922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.064827, 36.099617, 31.305819>,  <34.868538, 35.967701, 31.264956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.064827, 36.099617, 31.305819>,  <35.391972, 36.319477, 31.373922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.064827, 36.099617, 31.305819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255511, 0.081788, 0.963340,
		-0.515571, 0.831384, -0.207332,
		-0.817863, -0.549647, -0.170261,
		34.819469, 35.934723, 31.254740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.902328, 36.659058, 31.685137>,  <35.391972, 36.319477, 31.373922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.902328, 36.659058, 31.685137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.743141, 36.293964, 31.648157>,  <34.647629, 36.074909, 31.625969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.743141, 36.293964, 31.648157>,  <34.902328, 36.659058, 31.685137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.743141, 36.293964, 31.648157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329535, 0.048176, 0.942913,
		-0.856172, 0.405713, -0.319949,
		-0.397966, -0.912730, -0.092450,
		34.623753, 36.020145, 31.620422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.294735, 36.712914, 31.882910>,  <34.902328, 36.659058, 31.685137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.294735, 36.712914, 31.882910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.346798, 36.316772, 31.901890>,  <34.378036, 36.079086, 31.913277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.346798, 36.316772, 31.901890>,  <34.294735, 36.712914, 31.882910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.346798, 36.316772, 31.901890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348961, -0.000964, 0.937137,
		-0.928054, -0.138535, -0.345721,
		0.130160, -0.990357, 0.047448,
		34.385845, 36.019665, 31.916124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.617744, 36.438416, 31.934277>,  <34.294735, 36.712914, 31.882910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.617744, 36.438416, 31.934277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.853649, 36.137077, 32.050655>,  <33.995193, 35.956276, 32.120483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.853649, 36.137077, 32.050655>,  <33.617744, 36.438416, 31.934277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.853649, 36.137077, 32.050655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401900, 0.038693, 0.914866,
		-0.700466, -0.656487, -0.279949,
		0.589766, -0.753344, 0.290946,
		34.030579, 35.911076, 32.137939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.267807, 36.052902, 32.391102>,  <33.617744, 36.438416, 31.934277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.267807, 36.052902, 32.391102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.612778, 35.871452, 32.480946>,  <33.819759, 35.762581, 32.534851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.612778, 35.871452, 32.480946>,  <33.267807, 36.052902, 32.391102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.612778, 35.871452, 32.480946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297654, -0.095570, 0.949878,
		-0.409425, -0.886052, -0.217446,
		0.862423, -0.453628, 0.224608,
		33.871506, 35.735363, 32.548328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.090588, 35.344261, 32.726387>,  <33.267807, 36.052902, 32.391102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.090588, 35.344261, 32.726387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.461254, 35.432213, 32.848335>,  <33.683655, 35.484982, 32.921505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.461254, 35.432213, 32.848335>,  <33.090588, 35.344261, 32.726387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.461254, 35.432213, 32.848335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200859, -0.395909, 0.896053,
		0.317720, -0.891578, -0.322712,
		0.926666, 0.219875, 0.304870,
		33.739254, 35.498177, 32.939796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.407276, 34.734043, 33.125134>,  <33.090588, 35.344261, 32.726387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.407276, 34.734043, 33.125134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.600433, 35.067856, 33.231247>,  <33.716328, 35.268143, 33.294914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.600433, 35.067856, 33.231247>,  <33.407276, 34.734043, 33.125134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.600433, 35.067856, 33.231247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057464, -0.272092, 0.960554,
		0.873794, -0.479085, -0.083435,
		0.482889, 0.834532, 0.265282,
		33.745300, 35.318214, 33.310833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.991802, 34.608463, 33.615170>,  <33.407276, 34.734043, 33.125134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.991802, 34.608463, 33.615170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.915886, 34.999264, 33.654068>,  <33.870335, 35.233742, 33.677406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.915886, 34.999264, 33.654068>,  <33.991802, 34.608463, 33.615170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.915886, 34.999264, 33.654068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123343, -0.074540, 0.989561,
		0.974046, 0.199804, -0.106358,
		-0.189790, 0.976997, 0.097250,
		33.858948, 35.292362, 33.683243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.598549, 34.915249, 33.976692>,  <33.991802, 34.608463, 33.615170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.598549, 34.915249, 33.976692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.277142, 35.145721, 34.036530>,  <34.084297, 35.284004, 34.072430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.277142, 35.145721, 34.036530>,  <34.598549, 34.915249, 33.976692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.277142, 35.145721, 34.036530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106201, -0.108508, 0.988406,
		0.585730, 0.810089, 0.025998,
		-0.803518, 0.576179, 0.149589,
		34.036087, 35.318577, 34.081406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.213673, 34.743595, 34.413307>,  <34.598549, 34.915249, 33.976692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.213673, 34.743595, 34.413307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.550350, 34.806465, 34.619938>,  <35.752357, 34.844189, 34.743916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.550350, 34.806465, 34.619938>,  <35.213673, 34.743595, 34.413307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.550350, 34.806465, 34.619938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261109, 0.718920, -0.644187,
		-0.472624, 0.677090, 0.564071,
		0.841694, 0.157174, 0.516573,
		35.802856, 34.853619, 34.774910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.403233, 35.377979, 34.044365>,  <35.213673, 34.743595, 34.413307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.403233, 35.377979, 34.044365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.722324, 35.317390, 34.277840>,  <35.913780, 35.281036, 34.417923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.722324, 35.317390, 34.277840>,  <35.403233, 35.377979, 34.044365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.722324, 35.317390, 34.277840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543606, 0.599597, -0.587346,
		-0.261005, 0.785836, 0.560659,
		0.797727, -0.151477, 0.583683,
		35.961643, 35.271946, 34.452946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.657604, 36.011002, 34.265808>,  <35.403233, 35.377979, 34.044365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.657604, 36.011002, 34.265808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.965073, 35.756077, 34.287651>,  <36.149551, 35.603123, 34.300755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.965073, 35.756077, 34.287651>,  <35.657604, 36.011002, 34.265808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.965073, 35.756077, 34.287651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532856, 0.590774, -0.605847,
		0.353855, 0.494791, 0.793705,
		0.768668, -0.637312, 0.054604,
		36.195675, 35.564884, 34.304031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.334007, 36.491821, 34.254398>,  <35.657604, 36.011002, 34.265808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.334007, 36.491821, 34.254398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.493305, 36.139103, 34.153336>,  <36.588882, 35.927471, 34.092697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.493305, 36.139103, 34.153336>,  <36.334007, 36.491821, 34.254398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.493305, 36.139103, 34.153336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586124, 0.456503, -0.669375,
		0.705592, 0.118486, 0.698642,
		0.398244, -0.881797, -0.252658,
		36.612778, 35.874565, 34.077538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.110229, 36.469650, 34.287914>,  <36.334007, 36.491821, 34.254398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.110229, 36.469650, 34.287914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.998646, 36.188457, 34.026226>,  <36.931694, 36.019741, 33.869213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.998646, 36.188457, 34.026226>,  <37.110229, 36.469650, 34.287914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.998646, 36.188457, 34.026226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551555, 0.440398, -0.708404,
		0.786109, -0.558456, 0.264877,
		-0.278961, -0.702977, -0.654220,
		36.914959, 35.977566, 33.829960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.733982, 36.430515, 33.977337>,  <37.110229, 36.469650, 34.287914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.733982, 36.430515, 33.977337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.483955, 36.233219, 33.735340>,  <37.333939, 36.114841, 33.590141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.483955, 36.233219, 33.735340>,  <37.733982, 36.430515, 33.977337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.483955, 36.233219, 33.735340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548775, 0.273499, -0.789965,
		0.555107, -0.825779, 0.099725,
		-0.625062, -0.493242, -0.604988,
		37.296436, 36.085247, 33.553844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.156151, 35.802555, 33.649586>,  <37.733982, 36.430515, 33.977337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.156151, 35.802555, 33.649586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.836815, 35.884739, 33.423157>,  <37.645214, 35.934048, 33.287300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.836815, 35.884739, 33.423157>,  <38.156151, 35.802555, 33.649586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.836815, 35.884739, 33.423157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591026, 0.087008, -0.801946,
		-0.115516, -0.974790, -0.190895,
		-0.798338, 0.205462, -0.566076,
		37.597313, 35.946377, 33.253334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.423611, 35.534420, 33.015415>,  <38.156151, 35.802555, 33.649586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.423611, 35.534420, 33.015415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.092617, 35.733761, 32.911938>,  <37.894020, 35.853363, 32.849854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.092617, 35.733761, 32.911938>,  <38.423611, 35.534420, 33.015415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.092617, 35.733761, 32.911938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458585, 0.333980, -0.823503,
		-0.323995, -0.800066, -0.504898,
		-0.827483, 0.498349, -0.258691,
		37.844372, 35.883266, 32.834332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.212761, 35.318909, 32.284821>,  <38.423611, 35.534420, 33.015415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.212761, 35.318909, 32.284821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.085846, 35.686234, 32.379498>,  <38.009697, 35.906628, 32.436302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.085846, 35.686234, 32.379498>,  <38.212761, 35.318909, 32.284821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.085846, 35.686234, 32.379498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510262, 0.375698, -0.773617,
		-0.799351, -0.124683, -0.587786,
		-0.317287, 0.918316, 0.236694,
		37.990662, 35.961727, 32.450504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.820007, 35.578709, 31.738358>,  <38.212761, 35.318909, 32.284821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.820007, 35.578709, 31.738358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.932995, 35.907810, 31.935652>,  <38.000786, 36.105270, 32.054028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.932995, 35.907810, 31.935652>,  <37.820007, 35.578709, 31.738358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.932995, 35.907810, 31.935652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353381, 0.388769, -0.850870,
		-0.891814, 0.414647, -0.180931,
		0.282470, 0.822756, 0.493238,
		38.017735, 36.154636, 32.083622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.619953, 36.170792, 31.282135>,  <37.820007, 35.578709, 31.738358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.619953, 36.170792, 31.282135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.878319, 36.326439, 31.544853>,  <38.033340, 36.419827, 31.702484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.878319, 36.326439, 31.544853>,  <37.619953, 36.170792, 31.282135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.878319, 36.326439, 31.544853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369622, 0.593373, -0.715044,
		-0.667960, 0.704625, 0.239443,
		0.645917, 0.389117, 0.656794,
		38.072094, 36.443172, 31.741892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.671036, 36.878319, 31.152615>,  <37.619953, 36.170792, 31.282135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.671036, 36.878319, 31.152615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.018234, 36.818897, 31.342150>,  <38.226551, 36.783245, 31.455872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.018234, 36.818897, 31.342150>,  <37.671036, 36.878319, 31.152615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.018234, 36.818897, 31.342150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461058, 0.595487, -0.657891,
		-0.184433, 0.789510, 0.585369,
		0.867992, -0.148553, 0.473838,
		38.278633, 36.774330, 31.484301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.874306, 37.546082, 31.130743>,  <37.671036, 36.878319, 31.152615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.874306, 37.546082, 31.130743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.177822, 37.293755, 31.195612>,  <38.359932, 37.142357, 31.234533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.177822, 37.293755, 31.195612>,  <37.874306, 37.546082, 31.130743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.177822, 37.293755, 31.195612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546948, 0.481927, -0.684539,
		0.353663, 0.608126, 0.710708,
		0.758795, -0.630816, 0.162174,
		38.405460, 37.104511, 31.244265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.485165, 37.897213, 31.136827>,  <37.874306, 37.546082, 31.130743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.485165, 37.897213, 31.136827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.623646, 37.534916, 31.039026>,  <38.706734, 37.317539, 30.980345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.623646, 37.534916, 31.039026>,  <38.485165, 37.897213, 31.136827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.623646, 37.534916, 31.039026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472771, 0.393542, -0.788424,
		0.810329, 0.157357, 0.564451,
		0.346199, -0.905739, -0.244505,
		38.727505, 37.263195, 30.965675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.117455, 38.066727, 30.853880>,  <38.485165, 37.897213, 31.136827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.117455, 38.066727, 30.853880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.091259, 37.691647, 30.717394>,  <39.075542, 37.466599, 30.635502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.091259, 37.691647, 30.717394>,  <39.117455, 38.066727, 30.853880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.091259, 37.691647, 30.717394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481177, 0.269890, -0.834043,
		0.874174, -0.218806, 0.433525,
		-0.065490, -0.937701, -0.341216,
		39.071613, 37.410336, 30.615028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.854351, 37.877953, 30.580418>,  <39.117455, 38.066727, 30.853880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.854351, 37.877953, 30.580418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.573746, 37.636986, 30.428120>,  <39.405380, 37.492405, 30.336740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.573746, 37.636986, 30.428120>,  <39.854351, 37.877953, 30.580418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.573746, 37.636986, 30.428120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459485, 0.026045, -0.887803,
		0.544746, -0.797755, 0.258532,
		-0.701517, -0.602419, -0.380745,
		39.363289, 37.456261, 30.313896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.208237, 37.486572, 30.151068>,  <39.854351, 37.877953, 30.580418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.208237, 37.486572, 30.151068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.843601, 37.382462, 30.023781>,  <39.624821, 37.319996, 29.947409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.843601, 37.382462, 30.023781>,  <40.208237, 37.486572, 30.151068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.843601, 37.382462, 30.023781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322602, 0.026895, -0.946153,
		0.254825, -0.965158, 0.059450,
		-0.911588, -0.260282, -0.318216,
		39.570126, 37.304379, 29.928316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.353718, 36.858616, 29.681536>,  <40.208237, 37.486572, 30.151068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.353718, 36.858616, 29.681536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.004688, 37.032345, 29.592117>,  <39.795269, 37.136581, 29.538465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.004688, 37.032345, 29.592117>,  <40.353718, 36.858616, 29.681536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.004688, 37.032345, 29.592117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210466, -0.078699, -0.974428,
		-0.440814, -0.897311, -0.022740,
		-0.872575, 0.434327, -0.223545,
		39.742916, 37.162643, 29.525053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.100094, 36.548012, 29.139074>,  <40.353718, 36.858616, 29.681536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.100094, 36.548012, 29.139074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.886063, 36.884739, 29.110708>,  <39.757645, 37.086777, 29.093689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.886063, 36.884739, 29.110708>,  <40.100094, 36.548012, 29.139074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.886063, 36.884739, 29.110708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221760, 0.058960, -0.973317,
		-0.815177, -0.536528, -0.218230,
		-0.535079, 0.841820, -0.070917,
		39.725540, 37.137283, 29.089434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.539440, 36.478336, 28.659513>,  <40.100094, 36.548012, 29.139074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.539440, 36.478336, 28.659513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.612576, 36.871384, 28.672314>,  <39.656456, 37.107212, 28.679995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.612576, 36.871384, 28.672314>,  <39.539440, 36.478336, 28.659513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.612576, 36.871384, 28.672314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243913, -0.013805, -0.969699,
		-0.952406, 0.185104, -0.242199,
		0.182839, 0.982622, 0.032001,
		39.667427, 37.166172, 28.681913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.320526, 36.700520, 28.037903>,  <39.539440, 36.478336, 28.659513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.320526, 36.700520, 28.037903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.551212, 37.006252, 28.153273>,  <39.689625, 37.189693, 28.222494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.551212, 37.006252, 28.153273>,  <39.320526, 36.700520, 28.037903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.551212, 37.006252, 28.153273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398348, 0.045137, -0.916123,
		-0.713245, 0.643236, -0.278441,
		0.576715, 0.764336, 0.288426,
		39.724228, 37.235554, 28.239799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.121391, 37.302139, 27.695223>,  <39.320526, 36.700520, 28.037903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.121391, 37.302139, 27.695223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.479614, 37.408207, 27.838137>,  <39.694550, 37.471848, 27.923885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.479614, 37.408207, 27.838137>,  <39.121391, 37.302139, 27.695223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.479614, 37.408207, 27.838137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286737, 0.270059, -0.919157,
		-0.340223, 0.925609, 0.165821,
		0.895562, 0.265171, 0.357286,
		39.748283, 37.487759, 27.945322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.046612, 37.918358, 27.420286>,  <39.121391, 37.302139, 27.695223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.046612, 37.918358, 27.420286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.420994, 37.789810, 27.477858>,  <39.645622, 37.712681, 27.512402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.420994, 37.789810, 27.477858>,  <39.046612, 37.918358, 27.420286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.420994, 37.789810, 27.477858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196748, 0.138288, -0.970653,
		0.292031, 0.936803, 0.192659,
		0.935953, -0.321366, 0.143930,
		39.701778, 37.693401, 27.521036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.527973, 38.397667, 27.104912>,  <39.046612, 37.918358, 27.420286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.527973, 38.397667, 27.104912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.740623, 38.059471, 27.124947>,  <39.868214, 37.856552, 27.136969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.740623, 38.059471, 27.124947>,  <39.527973, 38.397667, 27.104912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.740623, 38.059471, 27.124947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284387, 0.122487, -0.950853,
		0.797805, 0.519747, 0.305565,
		0.531630, -0.845494, 0.050089,
		39.900112, 37.805824, 27.139973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.185577, 38.588989, 26.819275>,  <39.527973, 38.397667, 27.104912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.185577, 38.588989, 26.819275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.194118, 38.189236, 26.808199>,  <40.199245, 37.949383, 26.801554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.194118, 38.189236, 26.808199>,  <40.185577, 38.588989, 26.819275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.194118, 38.189236, 26.808199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373928, 0.033668, -0.926847,
		0.927212, 0.009439, 0.374418,
		0.021354, -0.999389, -0.027688,
		40.200523, 37.889420, 26.799892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.845341, 38.365772, 26.593430>,  <40.185577, 38.588989, 26.819275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.845341, 38.365772, 26.593430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.600605, 38.058163, 26.519386>,  <40.453766, 37.873596, 26.474960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.600605, 38.058163, 26.519386>,  <40.845341, 38.365772, 26.593430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.600605, 38.058163, 26.519386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342928, -0.047007, -0.938185,
		0.712782, -0.637492, 0.292480,
		-0.611834, -0.769021, -0.185108,
		40.417053, 37.827457, 26.463854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.301262, 37.779087, 26.283329>,  <40.845341, 38.365772, 26.593430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.301262, 37.779087, 26.283329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.919495, 37.735531, 26.172169>,  <40.690434, 37.709396, 26.105473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.919495, 37.735531, 26.172169>,  <41.301262, 37.779087, 26.283329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.919495, 37.735531, 26.172169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285931, -0.066515, -0.955939,
		0.085607, -0.991826, 0.094618,
		-0.954419, -0.108889, -0.277899,
		40.633167, 37.702866, 26.088799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.267574, 37.185795, 25.998747>,  <41.301262, 37.779087, 26.283329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.267574, 37.185795, 25.998747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.936653, 37.343201, 25.838385>,  <40.738102, 37.437645, 25.742167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.936653, 37.343201, 25.838385>,  <41.267574, 37.185795, 25.998747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.936653, 37.343201, 25.838385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242611, -0.393391, -0.886783,
		-0.506674, -0.830897, 0.229980,
		-0.827298, 0.393514, -0.400905,
		40.688465, 37.461254, 25.718113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.096226, 36.710907, 25.634838>,  <41.267574, 37.185795, 25.998747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.096226, 36.710907, 25.634838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.905781, 37.027573, 25.481689>,  <40.791515, 37.217571, 25.389801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.905781, 37.027573, 25.481689>,  <41.096226, 36.710907, 25.634838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.905781, 37.027573, 25.481689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369896, -0.214707, -0.903924,
		-0.797807, -0.571989, -0.190609,
		-0.476110, 0.791662, -0.382872,
		40.762947, 37.265072, 25.366829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.825680, 36.501053, 24.965931>,  <41.096226, 36.710907, 25.634838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.825680, 36.501053, 24.965931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.828091, 36.900688, 24.949062>,  <40.829536, 37.140469, 24.938940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.828091, 36.900688, 24.949062>,  <40.825680, 36.501053, 24.965931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.828091, 36.900688, 24.949062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346050, -0.041653, -0.937291,
		-0.938197, -0.008941, -0.345987,
		0.006031, 0.999092, -0.042172,
		40.829899, 37.200417, 24.936411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.540817, 36.618103, 24.308868>,  <40.825680, 36.501053, 24.965931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.540817, 36.618103, 24.308868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.760147, 36.938976, 24.403391>,  <40.891743, 37.131500, 24.460104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.760147, 36.938976, 24.403391>,  <40.540817, 36.618103, 24.308868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.760147, 36.938976, 24.403391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319093, 0.060497, -0.945791,
		-0.772997, 0.593999, -0.222801,
		0.548320, 0.802188, 0.236305,
		40.924644, 37.179634, 24.474283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.446224, 37.133400, 23.720762>,  <40.540817, 36.618103, 24.308868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.446224, 37.133400, 23.720762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.777824, 37.243279, 23.915615>,  <40.976784, 37.309204, 24.032526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.777824, 37.243279, 23.915615>,  <40.446224, 37.133400, 23.720762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.777824, 37.243279, 23.915615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466230, 0.141570, -0.873263,
		-0.308846, 0.951052, -0.010710,
		0.829002, 0.274697, 0.487132,
		41.026524, 37.325687, 24.061754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.680645, 37.819847, 23.419477>,  <40.446224, 37.133400, 23.720762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.680645, 37.819847, 23.419477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.990978, 37.655144, 23.610697>,  <41.177177, 37.556320, 23.725428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.990978, 37.655144, 23.610697>,  <40.680645, 37.819847, 23.419477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.990978, 37.655144, 23.610697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598877, 0.242166, -0.763349,
		0.198551, 0.878526, 0.434476,
		0.775837, -0.411762, 0.478047,
		41.223728, 37.531616, 23.754110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.278877, 38.270664, 23.350218>,  <40.680645, 37.819847, 23.419477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.278877, 38.270664, 23.350218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.473946, 37.935261, 23.447443>,  <41.590984, 37.734016, 23.505777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.473946, 37.935261, 23.447443>,  <41.278877, 38.270664, 23.350218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.473946, 37.935261, 23.447443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.682531, 0.192583, -0.705027,
		0.544363, 0.509717, 0.666226,
		0.487668, -0.838511, 0.243062,
		41.620247, 37.683708, 23.520361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.971298, 38.390663, 23.320063>,  <41.278877, 38.270664, 23.350218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.971298, 38.390663, 23.320063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.959480, 37.992233, 23.286673>,  <41.952389, 37.753178, 23.266638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.959480, 37.992233, 23.286673>,  <41.971298, 38.390663, 23.320063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.959480, 37.992233, 23.286673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.685231, 0.040618, -0.727193,
		0.727727, -0.078684, 0.681339,
		-0.029544, -0.996072, -0.083475,
		41.950619, 37.693413, 23.261629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.555794, 38.137154, 23.555319>,  <41.971298, 38.390663, 23.320063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.555794, 38.137154, 23.555319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.431263, 37.848057, 23.308508>,  <42.356544, 37.674599, 23.160421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.431263, 37.848057, 23.308508>,  <42.555794, 38.137154, 23.555319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.431263, 37.848057, 23.308508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.814288, 0.131846, -0.565288,
		0.489909, -0.678428, 0.547471,
		-0.311326, -0.722739, -0.617028,
		42.337864, 37.631233, 23.123400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.146011, 37.946980, 23.265707>,  <42.555794, 38.137154, 23.555319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.146011, 37.946980, 23.265707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.883492, 37.780151, 23.014210>,  <42.725979, 37.680054, 22.863312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.883492, 37.780151, 23.014210>,  <43.146011, 37.946980, 23.265707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.883492, 37.780151, 23.014210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.695888, -0.012588, -0.718040,
		0.291557, -0.908788, 0.298494,
		-0.656304, -0.417068, -0.628745,
		42.686600, 37.655029, 22.825586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.426666, 37.331364, 22.996641>,  <43.146011, 37.946980, 23.265707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.426666, 37.331364, 22.996641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.157959, 37.442661, 22.722033>,  <42.996735, 37.509438, 22.557266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.157959, 37.442661, 22.722033>,  <43.426666, 37.331364, 22.996641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.157959, 37.442661, 22.722033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.700558, -0.062550, -0.710849,
		-0.240729, -0.958472, -0.152905,
		-0.671765, 0.278241, -0.686523,
		42.956429, 37.526134, 22.516075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.648502, 36.601570, 23.073641>,  <43.426666, 37.331364, 22.996641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.648502, 36.601570, 23.073641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.976940, 36.388649, 23.156071>,  <44.174004, 36.260899, 23.205528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.976940, 36.388649, 23.156071>,  <43.648502, 36.601570, 23.073641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.976940, 36.388649, 23.156071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268984, -0.042409, 0.962210,
		-0.503447, -0.845492, -0.178002,
		0.821090, -0.532301, 0.206073,
		44.223267, 36.228958, 23.217894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.384296, 35.918400, 23.454275>,  <43.648502, 36.601570, 23.073641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.384296, 35.918400, 23.454275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.767307, 36.014763, 23.517643>,  <43.997116, 36.072582, 23.555664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.767307, 36.014763, 23.517643>,  <43.384296, 35.918400, 23.454275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.767307, 36.014763, 23.517643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139577, -0.093469, 0.985790,
		0.252296, -0.966036, -0.055874,
		0.957531, 0.240912, 0.158419,
		44.054565, 36.087036, 23.565168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.511745, 35.500816, 23.917130>,  <43.384296, 35.918400, 23.454275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.511745, 35.500816, 23.917130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.800308, 35.775330, 23.954199>,  <43.973446, 35.940037, 23.976440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.800308, 35.775330, 23.954199>,  <43.511745, 35.500816, 23.917130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.800308, 35.775330, 23.954199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117416, -0.010672, 0.993025,
		0.682483, -0.727258, 0.072882,
		0.721408, 0.686281, 0.092675,
		44.016731, 35.981213, 23.982002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.993824, 35.155075, 24.448500>,  <43.511745, 35.500816, 23.917130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.993824, 35.155075, 24.448500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.061874, 35.548824, 24.430340>,  <44.102703, 35.785076, 24.419443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.061874, 35.548824, 24.430340>,  <43.993824, 35.155075, 24.448500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.061874, 35.548824, 24.430340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024665, 0.041804, 0.998821,
		0.985114, -0.171044, -0.017168,
		0.170125, 0.984376, -0.045400,
		44.112911, 35.844135, 24.416719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.396778, 35.257858, 25.079510>,  <43.993824, 35.155075, 24.448500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.396778, 35.257858, 25.079510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.261837, 35.618492, 24.971186>,  <44.180874, 35.834873, 24.906191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.261837, 35.618492, 24.971186>,  <44.396778, 35.257858, 25.079510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.261837, 35.618492, 24.971186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118463, 0.244729, 0.962328,
		0.933894, 0.356726, 0.024244,
		-0.337354, 0.901584, -0.270810,
		44.160629, 35.888966, 24.889942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.809486, 35.781208, 25.516047>,  <44.396778, 35.257858, 25.079510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.809486, 35.781208, 25.516047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.458591, 35.931000, 25.395897>,  <44.248055, 36.020874, 25.323807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.458591, 35.931000, 25.395897>,  <44.809486, 35.781208, 25.516047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.458591, 35.931000, 25.395897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275757, 0.119094, 0.953821,
		0.392957, 0.919556, -0.001209,
		-0.877236, 0.374477, -0.300373,
		44.195419, 36.043343, 25.305784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.612606, 36.356426, 25.966627>,  <44.809486, 35.781208, 25.516047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.612606, 36.356426, 25.966627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.271217, 36.273857, 25.775219>,  <44.066383, 36.224316, 25.660374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.271217, 36.273857, 25.775219>,  <44.612606, 36.356426, 25.966627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.271217, 36.273857, 25.775219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513768, 0.179335, 0.838977,
		-0.087369, 0.961888, -0.259110,
		-0.853469, -0.206422, -0.478519,
		44.015175, 36.211929, 25.631662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.187569, 36.826794, 26.281399>,  <44.612606, 36.356426, 25.966627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.187569, 36.826794, 26.281399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.953037, 36.556618, 26.102510>,  <43.812321, 36.394512, 25.995176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.953037, 36.556618, 26.102510>,  <44.187569, 36.826794, 26.281399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.953037, 36.556618, 26.102510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.709167, 0.161139, 0.686379,
		-0.391540, 0.719598, -0.573477,
		-0.586327, -0.675436, -0.447222,
		43.777138, 36.353989, 25.968344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.512257, 37.112076, 26.167774>,  <44.187569, 36.826794, 26.281399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.512257, 37.112076, 26.167774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.474377, 36.713875, 26.166674>,  <43.451649, 36.474953, 26.166014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.474377, 36.713875, 26.166674>,  <43.512257, 37.112076, 26.167774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.474377, 36.713875, 26.166674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.629975, 0.057786, 0.774463,
		-0.770820, 0.075075, -0.632614,
		-0.094699, -0.995502, -0.002753,
		43.445969, 36.415226, 26.165848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.731754, 36.867844, 26.049299>,  <43.512257, 37.112076, 26.167774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.731754, 36.867844, 26.049299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.927094, 36.578384, 26.244379>,  <43.044296, 36.404709, 26.361427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.927094, 36.578384, 26.244379>,  <42.731754, 36.867844, 26.049299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.927094, 36.578384, 26.244379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.685510, 0.027709, 0.727536,
		-0.539994, -0.689612, -0.482537,
		0.488347, -0.723649, 0.487699,
		43.073597, 36.361290, 26.390688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.235428, 36.524460, 26.388206>,  <42.731754, 36.867844, 26.049299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.235428, 36.524460, 26.388206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.553696, 36.363720, 26.569504>,  <42.744656, 36.267277, 26.678282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.553696, 36.363720, 26.569504>,  <42.235428, 36.524460, 26.388206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.553696, 36.363720, 26.569504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.567352, -0.232292, 0.790033,
		-0.212183, -0.885756, -0.412814,
		0.795669, -0.401843, 0.453247,
		42.792397, 36.243164, 26.705477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.046459, 35.849461, 26.646187>,  <42.235428, 36.524460, 26.388206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.046459, 35.849461, 26.646187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.361664, 35.973396, 26.858992>,  <42.550785, 36.047756, 26.986675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.361664, 35.973396, 26.858992>,  <42.046459, 35.849461, 26.646187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.361664, 35.973396, 26.858992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449047, -0.301912, 0.840955,
		0.421183, -0.901581, -0.098778,
		0.788011, 0.309840, 0.532013,
		42.598068, 36.066349, 27.018595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.120911, 35.381363, 27.301178>,  <42.046459, 35.849461, 26.646187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.120911, 35.381363, 27.301178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.315647, 35.723587, 27.371601>,  <42.432487, 35.928921, 27.413855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.315647, 35.723587, 27.371601>,  <42.120911, 35.381363, 27.301178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.315647, 35.723587, 27.371601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263328, -0.048426, 0.963490,
		0.832853, -0.515427, 0.201718,
		0.486841, 0.855564, 0.176058,
		42.461700, 35.980255, 27.424419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.611607, 35.242687, 27.857985>,  <42.120911, 35.381363, 27.301178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.611607, 35.242687, 27.857985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.549694, 35.637600, 27.872494>,  <42.512547, 35.874546, 27.881199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.549694, 35.637600, 27.872494>,  <42.611607, 35.242687, 27.857985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.549694, 35.637600, 27.872494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112523, -0.054095, 0.992176,
		0.981520, 0.149487, 0.119465,
		-0.154780, 0.987283, 0.036274,
		42.503262, 35.933784, 27.883375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.880692, 35.422176, 28.514288>,  <42.611607, 35.242687, 27.857985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.880692, 35.422176, 28.514288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.661835, 35.739716, 28.408125>,  <42.530521, 35.930241, 28.344427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.661835, 35.739716, 28.408125>,  <42.880692, 35.422176, 28.514288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.661835, 35.739716, 28.408125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257699, 0.141923, 0.955745,
		0.796386, 0.591321, 0.126923,
		-0.547139, 0.793850, -0.265408,
		42.497692, 35.977871, 28.328503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.980389, 35.917366, 29.054825>,  <42.880692, 35.422176, 28.514288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.980389, 35.917366, 29.054825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.645939, 36.053196, 28.882507>,  <42.445271, 36.134693, 28.779118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.645939, 36.053196, 28.882507>,  <42.980389, 35.917366, 29.054825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.645939, 36.053196, 28.882507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333508, 0.308816, 0.890733,
		0.435509, 0.888436, -0.144956,
		-0.836124, 0.339578, -0.430793,
		42.395103, 36.155071, 28.753269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.843002, 36.552963, 29.350859>,  <42.980389, 35.917366, 29.054825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.843002, 36.552963, 29.350859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.487267, 36.451473, 29.198698>,  <42.273827, 36.390579, 29.107401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.487267, 36.451473, 29.198698>,  <42.843002, 36.552963, 29.350859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.487267, 36.451473, 29.198698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445986, 0.297753, 0.844061,
		-0.100893, 0.920308, -0.377960,
		-0.889335, -0.253725, -0.380404,
		42.220467, 36.375355, 29.084578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.455109, 37.048233, 29.714840>,  <42.843002, 36.552963, 29.350859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.455109, 37.048233, 29.714840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.210060, 36.772720, 29.559774>,  <42.063030, 36.607414, 29.466736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.210060, 36.772720, 29.559774>,  <42.455109, 37.048233, 29.714840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.210060, 36.772720, 29.559774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518988, -0.019369, 0.854562,
		-0.596115, 0.724711, -0.345603,
		-0.612617, -0.688780, -0.387663,
		42.026276, 36.566086, 29.443476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.851299, 37.320911, 29.680817>,  <42.455109, 37.048233, 29.714840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.851299, 37.320911, 29.680817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.795006, 36.925209, 29.696627>,  <41.761230, 36.687786, 29.706114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.795006, 36.925209, 29.696627>,  <41.851299, 37.320911, 29.680817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.795006, 36.925209, 29.696627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473282, 0.102290, 0.874952,
		-0.869596, 0.104429, -0.482594,
		-0.140735, -0.989258, 0.039527,
		41.752785, 36.628433, 29.708485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.151699, 37.186752, 29.855022>,  <41.851299, 37.320911, 29.680817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.151699, 37.186752, 29.855022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.351597, 36.854721, 29.954002>,  <41.471535, 36.655502, 30.013391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.351597, 36.854721, 29.954002>,  <41.151699, 37.186752, 29.855022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.351597, 36.854721, 29.954002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495985, -0.040025, 0.867408,
		-0.710109, -0.556215, -0.431706,
		0.499744, -0.830074, 0.247452,
		41.501522, 36.605698, 30.028238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.745705, 36.967327, 30.346668>,  <41.151699, 37.186752, 29.855022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.745705, 36.967327, 30.346668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.053886, 36.713505, 30.371141>,  <41.238796, 36.561211, 30.385826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.053886, 36.713505, 30.371141>,  <40.745705, 36.967327, 30.346668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.053886, 36.713505, 30.371141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198454, -0.147529, 0.968943,
		-0.605821, -0.758667, -0.239594,
		0.770452, -0.634555, 0.061185,
		41.285023, 36.523140, 30.389496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.463181, 36.283646, 30.347506>,  <40.745705, 36.967327, 30.346668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.463181, 36.283646, 30.347506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.810287, 36.345467, 30.536436>,  <41.018551, 36.382561, 30.649794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.810287, 36.345467, 30.536436>,  <40.463181, 36.283646, 30.347506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.810287, 36.345467, 30.536436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471968, -0.041351, 0.880645,
		0.155640, -0.987118, 0.037062,
		0.867768, 0.154556, 0.472324,
		41.070618, 36.391834, 30.678133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.423733, 35.872505, 30.887751>,  <40.463181, 36.283646, 30.347506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.423733, 35.872505, 30.887751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.757885, 36.067921, 30.988525>,  <40.958374, 36.185169, 31.048990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.757885, 36.067921, 30.988525>,  <40.423733, 35.872505, 30.887751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.757885, 36.067921, 30.988525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148944, -0.240007, 0.959277,
		0.529114, -0.838882, -0.127730,
		0.835376, 0.488542, 0.251938,
		41.008499, 36.214481, 31.064106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.892052, 35.359756, 31.358488>,  <40.423733, 35.872505, 30.887751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.892052, 35.359756, 31.358488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.980598, 35.745239, 31.418167>,  <41.033726, 35.976528, 31.453976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.980598, 35.745239, 31.418167>,  <40.892052, 35.359756, 31.358488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.980598, 35.745239, 31.418167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271344, -0.086084, 0.958625,
		0.936680, -0.252689, 0.242441,
		0.221364, 0.963710, 0.149199,
		41.047009, 36.034351, 31.462927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.286140, 35.301331, 31.973373>,  <40.892052, 35.359756, 31.358488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.286140, 35.301331, 31.973373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.158802, 35.678757, 31.936838>,  <41.082401, 35.905212, 31.914917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.158802, 35.678757, 31.936838>,  <41.286140, 35.301331, 31.973373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.158802, 35.678757, 31.936838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075884, 0.070676, 0.994609,
		0.944933, 0.323558, 0.049102,
		-0.318343, 0.943565, -0.091337,
		41.063297, 35.961826, 31.909437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.635723, 35.743145, 32.459248>,  <41.286140, 35.301331, 31.973373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.635723, 35.743145, 32.459248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.289890, 35.926018, 32.375839>,  <41.082390, 36.035740, 32.325794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.289890, 35.926018, 32.375839>,  <41.635723, 35.743145, 32.459248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.289890, 35.926018, 32.375839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281816, -0.097614, 0.954490,
		0.416021, 0.884000, 0.213237,
		-0.864584, 0.457182, -0.208516,
		41.030514, 36.063171, 32.313286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.609982, 36.285801, 32.987297>,  <41.635723, 35.743145, 32.459248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.609982, 36.285801, 32.987297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.257885, 36.173283, 32.834435>,  <41.046627, 36.105770, 32.742718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.257885, 36.173283, 32.834435>,  <41.609982, 36.285801, 32.987297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.257885, 36.173283, 32.834435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333867, -0.205158, 0.920023,
		-0.337202, 0.937434, 0.086673,
		-0.880243, -0.281296, -0.382158,
		40.993813, 36.088894, 32.719788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.197651, 36.758419, 33.226948>,  <41.609982, 36.285801, 32.987297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.197651, 36.758419, 33.226948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.964302, 36.442410, 33.151539>,  <40.824295, 36.252804, 33.106293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.964302, 36.442410, 33.151539>,  <41.197651, 36.758419, 33.226948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.964302, 36.442410, 33.151539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423896, 0.098154, 0.900376,
		-0.692816, 0.605165, -0.392148,
		-0.583367, -0.790026, -0.188525,
		40.789291, 36.205402, 33.094982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.478912, 36.918518, 33.549206>,  <41.197651, 36.758419, 33.226948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.478912, 36.918518, 33.549206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.435921, 36.527885, 33.474659>,  <40.410126, 36.293507, 33.429932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.435921, 36.527885, 33.474659>,  <40.478912, 36.918518, 33.549206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.435921, 36.527885, 33.474659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459311, -0.117478, 0.880473,
		-0.881750, 0.180229, -0.435930,
		-0.107475, -0.976584, -0.186367,
		40.403679, 36.234909, 33.418747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.773384, 36.831429, 33.691414>,  <40.478912, 36.918518, 33.549206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.773384, 36.831429, 33.691414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.962715, 36.479519, 33.709106>,  <40.076313, 36.268372, 33.719723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.962715, 36.479519, 33.709106>,  <39.773384, 36.831429, 33.691414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.962715, 36.479519, 33.709106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501597, -0.227910, 0.834540,
		-0.724129, -0.417194, -0.549169,
		0.473326, -0.879776, 0.044227,
		40.104713, 36.215588, 33.722374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.220543, 36.379166, 34.036419>,  <39.773384, 36.831429, 33.691414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.220543, 36.379166, 34.036419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.567440, 36.181065, 34.056896>,  <39.775578, 36.062202, 34.069183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.567440, 36.181065, 34.056896>,  <39.220543, 36.379166, 34.036419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.567440, 36.181065, 34.056896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211197, -0.272810, 0.938601,
		-0.450880, -0.824802, -0.341187,
		0.867239, -0.495253, 0.051191,
		39.827610, 36.032490, 34.072254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.096764, 35.607952, 34.299969>,  <39.220543, 36.379166, 34.036419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.096764, 35.607952, 34.299969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.478237, 35.691055, 34.386993>,  <39.707119, 35.740917, 34.439209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.478237, 35.691055, 34.386993>,  <39.096764, 35.607952, 34.299969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.478237, 35.691055, 34.386993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157672, -0.270692, 0.949666,
		0.256190, -0.939981, -0.225396,
		0.953681, 0.207756, 0.217558,
		39.764339, 35.753384, 34.452259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.357258, 35.062855, 34.714657>,  <39.096764, 35.607952, 34.299969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.357258, 35.062855, 34.714657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.624897, 35.353821, 34.775558>,  <39.785480, 35.528400, 34.812099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.624897, 35.353821, 34.775558>,  <39.357258, 35.062855, 34.714657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.624897, 35.353821, 34.775558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151539, -0.334107, 0.930274,
		0.727561, -0.599371, -0.333781,
		0.669098, 0.727411, 0.152255,
		39.825626, 35.572044, 34.821236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.862061, 34.729588, 35.047733>,  <39.357258, 35.062855, 34.714657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.862061, 34.729588, 35.047733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.934719, 35.109779, 35.148605>,  <39.978313, 35.337894, 35.209129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.934719, 35.109779, 35.148605>,  <39.862061, 34.729588, 35.047733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.934719, 35.109779, 35.148605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200796, -0.286895, 0.936682,
		0.962645, -0.119511, -0.242966,
		0.181649, 0.950478, 0.252181,
		39.989212, 35.394924, 35.224258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.421337, 34.672989, 35.603615>,  <39.862061, 34.729588, 35.047733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.421337, 34.672989, 35.603615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.304192, 35.054951, 35.623188>,  <40.233906, 35.284126, 35.634933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.304192, 35.054951, 35.623188>,  <40.421337, 34.672989, 35.603615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.304192, 35.054951, 35.623188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003968, -0.049967, 0.998743,
		0.956146, 0.292689, 0.010844,
		-0.292863, 0.954901, 0.048938,
		40.216331, 35.341419, 35.637871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.873444, 35.127052, 36.068890>,  <40.421337, 34.672989, 35.603615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.873444, 35.127052, 36.068890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.509384, 35.292763, 36.068066>,  <40.290947, 35.392189, 36.067574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.509384, 35.292763, 36.068066>,  <40.873444, 35.127052, 36.068890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.509384, 35.292763, 36.068066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004387, -0.004671, 0.999979,
		0.414259, 0.910139, 0.006069,
		-0.910149, 0.414277, -0.002058,
		40.236340, 35.417046, 36.067448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.891075, 35.764660, 36.391605>,  <40.873444, 35.127052, 36.068890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.891075, 35.764660, 36.391605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.502071, 35.675064, 36.417107>,  <40.268669, 35.621307, 36.432407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.502071, 35.675064, 36.417107>,  <40.891075, 35.764660, 36.391605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.502071, 35.675064, 36.417107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007173, 0.244807, 0.969545,
		-0.232772, 0.943345, -0.236470,
		-0.972505, -0.223986, 0.063751,
		40.210320, 35.607868, 36.436234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.596691, 36.245228, 36.900578>,  <40.891075, 35.764660, 36.391605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.596691, 36.245228, 36.900578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.302673, 35.975494, 36.872337>,  <40.126263, 35.813652, 36.855392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.302673, 35.975494, 36.872337>,  <40.596691, 36.245228, 36.900578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.302673, 35.975494, 36.872337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265432, 0.190377, 0.945147,
		-0.623908, 0.713460, -0.318926,
		-0.735040, -0.674338, -0.070598,
		40.082161, 35.773193, 36.851158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.987167, 36.489502, 37.275234>,  <40.596691, 36.245228, 36.900578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.987167, 36.489502, 37.275234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.938854, 36.092876, 37.256413>,  <39.909866, 35.854900, 37.245121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.938854, 36.092876, 37.256413>,  <39.987167, 36.489502, 37.275234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.938854, 36.092876, 37.256413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343643, -0.002700, 0.939097,
		-0.931300, 0.129599, -0.340417,
		-0.120787, -0.991563, -0.047050,
		39.902618, 35.795406, 37.242298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.307961, 36.394203, 37.511292>,  <39.987167, 36.489502, 37.275234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.307961, 36.394203, 37.511292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.505177, 36.049847, 37.561543>,  <39.623505, 35.843235, 37.591694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.505177, 36.049847, 37.561543>,  <39.307961, 36.394203, 37.511292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.505177, 36.049847, 37.561543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135198, 0.066829, 0.988562,
		-0.859437, -0.504387, -0.083441,
		0.493041, -0.860888, 0.125627,
		39.653088, 35.791580, 37.599232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.039391, 36.035381, 38.093842>,  <39.307961, 36.394203, 37.511292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.039391, 36.035381, 38.093842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.406872, 35.877586, 38.086292>,  <39.627361, 35.782909, 38.081764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.406872, 35.877586, 38.086292>,  <39.039391, 36.035381, 38.093842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.406872, 35.877586, 38.086292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023939, -0.103317, 0.994360,
		-0.394216, -0.913073, -0.104362,
		0.918706, -0.394491, -0.018872,
		39.682484, 35.759239, 38.080631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.995476, 35.379902, 38.559299>,  <39.039391, 36.035381, 38.093842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.995476, 35.379902, 38.559299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.373837, 35.507889, 38.537796>,  <39.600853, 35.584679, 38.524895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.373837, 35.507889, 38.537796>,  <38.995476, 35.379902, 38.559299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.373837, 35.507889, 38.537796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090235, -0.100285, 0.990859,
		0.311647, -0.942108, -0.123732,
		0.945904, 0.319963, -0.053758,
		39.657608, 35.603878, 38.521667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.292927, 35.008709, 39.147984>,  <38.995476, 35.379902, 38.559299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.292927, 35.008709, 39.147984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.586285, 35.259708, 39.043388>,  <39.762299, 35.410309, 38.980629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.586285, 35.259708, 39.043388>,  <39.292927, 35.008709, 39.147984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.586285, 35.259708, 39.043388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370294, -0.046170, 0.927767,
		0.570096, -0.777250, -0.266218,
		0.733398, 0.627495, -0.261490,
		39.806305, 35.447956, 38.964943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.031536, 34.797272, 39.288376>,  <39.292927, 35.008709, 39.147984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.031536, 34.797272, 39.288376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.058678, 35.195847, 39.308407>,  <40.074963, 35.434990, 39.320423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.058678, 35.195847, 39.308407>,  <40.031536, 34.797272, 39.288376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.058678, 35.195847, 39.308407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502444, -0.077490, 0.861130,
		0.861943, -0.033272, -0.505912,
		0.067855, 0.996438, 0.050075,
		40.079033, 35.494778, 39.323429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.679779, 34.986774, 39.738365>,  <40.031536, 34.797272, 39.288376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.679779, 34.986774, 39.738365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.469791, 35.327217, 39.740475>,  <40.343800, 35.531483, 39.741741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.469791, 35.327217, 39.740475>,  <40.679779, 34.986774, 39.738365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.469791, 35.327217, 39.740475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357719, 0.215009, 0.908740,
		0.772298, 0.478949, -0.417329,
		-0.524969, 0.851105, 0.005278,
		40.312302, 35.582550, 39.742058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.123672, 35.448017, 39.871742>,  <40.679779, 34.986774, 39.738365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.123672, 35.448017, 39.871742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.752052, 35.541676, 39.986309>,  <40.529079, 35.597870, 40.055050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.752052, 35.541676, 39.986309>,  <41.123672, 35.448017, 39.871742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.752052, 35.541676, 39.986309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318709, 0.113457, 0.941038,
		0.187842, 0.965559, -0.180031,
		-0.929053, 0.234144, 0.286420,
		40.473335, 35.611919, 40.072235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.282993, 35.993916, 40.340492>,  <41.123672, 35.448017, 39.871742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.282993, 35.993916, 40.340492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.906818, 35.883884, 40.420410>,  <40.681114, 35.817867, 40.468361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.906818, 35.883884, 40.420410>,  <41.282993, 35.993916, 40.340492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.906818, 35.883884, 40.420410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154685, 0.177121, 0.971957,
		-0.302752, 0.944966, -0.124020,
		-0.940433, -0.275078, 0.199795,
		40.624687, 35.801361, 40.480350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.084820, 36.491028, 40.792973>,  <41.282993, 35.993916, 40.340492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.084820, 36.491028, 40.792973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.823936, 36.194389, 40.855778>,  <40.667408, 36.016407, 40.893459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.823936, 36.194389, 40.855778>,  <41.084820, 36.491028, 40.792973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.823936, 36.194389, 40.855778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177567, 0.051905, 0.982739,
		-0.736949, 0.668831, 0.097831,
		-0.652208, -0.741600, 0.157014,
		40.628273, 35.971909, 40.902882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.014931, 36.519695, 41.464973>,  <41.084820, 36.491028, 40.792973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.014931, 36.519695, 41.464973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.794888, 36.186771, 41.437710>,  <40.662861, 35.987019, 41.421352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.794888, 36.186771, 41.437710>,  <41.014931, 36.519695, 41.464973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.794888, 36.186771, 41.437710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020553, -0.095093, 0.995256,
		-0.834839, 0.546100, 0.069418,
		-0.550110, -0.832305, -0.068163,
		40.629856, 35.937080, 41.417259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.422619, 36.505619, 41.997734>,  <41.014931, 36.519695, 41.464973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.422619, 36.505619, 41.997734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.551254, 36.137936, 41.906837>,  <40.628433, 35.917324, 41.852299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.551254, 36.137936, 41.906837>,  <40.422619, 36.505619, 41.997734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.551254, 36.137936, 41.906837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343871, -0.110233, 0.932524,
		-0.882233, -0.378029, 0.280640,
		0.321586, -0.919208, -0.227244,
		40.647732, 35.862175, 41.838665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.431313, 36.103348, 42.543701>,  <40.422619, 36.505619, 41.997734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.431313, 36.103348, 42.543701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.696587, 35.923889, 42.304066>,  <40.855751, 35.816216, 42.160286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.696587, 35.923889, 42.304066>,  <40.431313, 36.103348, 42.543701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.696587, 35.923889, 42.304066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.639689, -0.075791, 0.764888,
		-0.388568, -0.890491, 0.236730,
		0.663184, -0.448644, -0.599087,
		40.895542, 35.789295, 42.124340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.070324, 36.155251, 42.912922>,  <40.431313, 36.103348, 42.543701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.070324, 36.155251, 42.912922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.242165, 35.895237, 42.662193>,  <41.345268, 35.739227, 42.511757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.242165, 35.895237, 42.662193>,  <41.070324, 36.155251, 42.912922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.242165, 35.895237, 42.662193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.778899, -0.084474, 0.621434,
		-0.456903, -0.755195, 0.470020,
		0.429600, -0.650034, -0.626818,
		41.371044, 35.700226, 42.474148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.277218, 35.397453, 43.227737>,  <41.070324, 36.155251, 42.912922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.277218, 35.397453, 43.227737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.489883, 35.594585, 42.952213>,  <41.617481, 35.712864, 42.786900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.489883, 35.594585, 42.952213>,  <41.277218, 35.397453, 43.227737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.489883, 35.594585, 42.952213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.782999, 0.024029, 0.621559,
		0.322874, -0.869793, -0.373110,
		0.531662, 0.492830, -0.688806,
		41.649384, 35.742435, 42.745571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.841213, 35.005432, 43.043392>,  <41.277218, 35.397453, 43.227737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.841213, 35.005432, 43.043392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.867558, 35.404549, 43.046719>,  <41.883362, 35.644020, 43.048714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.867558, 35.404549, 43.046719>,  <41.841213, 35.005432, 43.043392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.867558, 35.404549, 43.046719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.677395, -0.050827, 0.733861,
		0.732666, -0.042696, -0.679248,
		0.065857, 0.997794, 0.008318,
		41.887314, 35.703888, 43.049213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.581116, 35.124058, 43.070843>,  <41.841213, 35.005432, 43.043392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.581116, 35.124058, 43.070843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.411026, 35.464401, 43.194275>,  <42.308971, 35.668606, 43.268333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.411026, 35.464401, 43.194275>,  <42.581116, 35.124058, 43.070843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.411026, 35.464401, 43.194275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.679272, 0.074696, 0.730075,
		0.598141, 0.520058, -0.609727,
		-0.425225, 0.850859, 0.308582,
		42.283459, 35.719658, 43.286850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.152664, 35.548992, 43.146862>,  <42.581116, 35.124058, 43.070843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.152664, 35.548992, 43.146862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.849010, 35.713539, 43.348652>,  <42.666821, 35.812267, 43.469727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.849010, 35.713539, 43.348652>,  <43.152664, 35.548992, 43.146862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.849010, 35.713539, 43.348652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.620466, 0.222953, 0.751874,
		0.196826, 0.883779, -0.424493,
		-0.759132, 0.411372, 0.504471,
		42.621269, 35.836952, 43.499992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.340034, 36.253059, 43.387821>,  <43.152664, 35.548992, 43.146862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.340034, 36.253059, 43.387821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.044739, 36.153408, 43.638557>,  <42.867561, 36.093616, 43.789001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.044739, 36.153408, 43.638557>,  <43.340034, 36.253059, 43.387821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.044739, 36.153408, 43.638557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565278, 0.278557, 0.776445,
		-0.368046, 0.927546, -0.064816,
		-0.738243, -0.249129, 0.626843,
		42.823265, 36.078671, 43.826611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.075481, 36.776649, 43.875210>,  <43.340034, 36.253059, 43.387821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.075481, 36.776649, 43.875210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.922310, 36.473148, 44.085983>,  <42.830406, 36.291050, 44.212448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.922310, 36.473148, 44.085983>,  <43.075481, 36.776649, 43.875210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.922310, 36.473148, 44.085983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613663, 0.217429, 0.759041,
		-0.690493, 0.614022, 0.382356,
		-0.382933, -0.758750, 0.526936,
		42.807430, 36.245522, 44.244064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.103397, 37.000984, 44.589378>,  <43.075481, 36.776649, 43.875210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.103397, 37.000984, 44.589378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.061295, 36.604473, 44.621086>,  <43.036034, 36.366566, 44.640110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.061295, 36.604473, 44.621086>,  <43.103397, 37.000984, 44.589378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.061295, 36.604473, 44.621086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465816, 0.021276, 0.884626,
		-0.878599, 0.130042, 0.459515,
		-0.105262, -0.991280, 0.079269,
		43.029716, 36.307091, 44.644867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.725716, 36.807312, 45.075516>,  <43.103397, 37.000984, 44.589378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.725716, 36.807312, 45.075516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.014954, 36.536655, 45.019966>,  <43.188496, 36.374260, 44.986637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.014954, 36.536655, 45.019966>,  <42.725716, 36.807312, 45.075516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.014954, 36.536655, 45.019966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529402, 0.413736, 0.740646,
		-0.443698, -0.609076, 0.657387,
		0.723095, -0.676645, -0.138872,
		43.231880, 36.333660, 44.978306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.688034, 36.596016, 45.712540>,  <42.725716, 36.807312, 45.075516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.688034, 36.596016, 45.712540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.051365, 36.528236, 45.559578>,  <43.269363, 36.487568, 45.467800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.051365, 36.528236, 45.559578>,  <42.688034, 36.596016, 45.712540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.051365, 36.528236, 45.559578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418080, 0.340706, 0.842098,
		-0.012405, -0.924774, 0.380315,
		0.908325, -0.169448, -0.382403,
		43.323864, 36.477402, 45.444859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.063156, 36.163410, 46.080616>,  <42.688034, 36.596016, 45.712540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.063156, 36.163410, 46.080616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.280670, 36.438805, 45.888668>,  <43.411179, 36.604042, 45.773499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.280670, 36.438805, 45.888668>,  <43.063156, 36.163410, 46.080616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.280670, 36.438805, 45.888668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340300, 0.341789, 0.876000,
		0.767132, -0.639658, -0.048432,
		0.543787, 0.688489, -0.479873,
		43.443806, 36.645351, 45.744705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.783718, 36.159603, 46.135513>,  <43.063156, 36.163410, 46.080616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.783718, 36.159603, 46.135513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.644791, 36.532639, 46.096233>,  <43.561436, 36.756462, 46.072666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.644791, 36.532639, 46.096233>,  <43.783718, 36.159603, 46.135513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.644791, 36.532639, 46.096233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451417, 0.258063, 0.854182,
		0.821944, 0.252343, -0.510617,
		-0.347318, 0.932591, -0.098202,
		43.540596, 36.812416, 46.066772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.196262, 36.166615, 45.508465>,  <43.783718, 36.159603, 46.135513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.196262, 36.166615, 45.508465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.930054, 35.885159, 45.608047>,  <43.770329, 35.716286, 45.667797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.930054, 35.885159, 45.608047>,  <44.196262, 36.166615, 45.508465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.930054, 35.885159, 45.608047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394764, 0.048755, -0.917488,
		0.633440, -0.708885, -0.310218,
		-0.665518, -0.703637, 0.248959,
		43.730400, 35.674068, 45.682735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.033981, 35.710659, 44.872982>,  <44.196262, 36.166615, 45.508465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.033981, 35.710659, 44.872982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.708233, 35.729740, 45.104336>,  <43.512783, 35.741188, 45.243149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.708233, 35.729740, 45.104336>,  <44.033981, 35.710659, 44.872982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.708233, 35.729740, 45.104336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577944, 0.023913, -0.815726,
		-0.052746, -0.998575, 0.008097,
		-0.814370, 0.047706, 0.578382,
		43.463921, 35.744053, 45.277851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.611629, 35.170277, 44.712536>,  <44.033981, 35.710659, 44.872982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.611629, 35.170277, 44.712536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.390701, 35.476368, 44.844814>,  <43.258144, 35.660023, 44.924183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.390701, 35.476368, 44.844814>,  <43.611629, 35.170277, 44.712536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.390701, 35.476368, 44.844814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.610634, -0.101322, -0.785404,
		-0.567510, -0.635730, 0.523240,
		-0.552320, 0.765233, 0.330697,
		43.225006, 35.705936, 44.944023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.914673, 34.949028, 44.810299>,  <43.611629, 35.170277, 44.712536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.914673, 34.949028, 44.810299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.927731, 35.344585, 44.752304>,  <42.935566, 35.581921, 44.717506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.927731, 35.344585, 44.752304>,  <42.914673, 34.949028, 44.810299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.927731, 35.344585, 44.752304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.806000, -0.059729, -0.588894,
		-0.591014, 0.136082, 0.795100,
		0.032647, 0.988895, -0.144983,
		42.937523, 35.641254, 44.708809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.296837, 35.203754, 44.676949>,  <42.914673, 34.949028, 44.810299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.296837, 35.203754, 44.676949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.518944, 35.502392, 44.530373>,  <42.652206, 35.681576, 44.442425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.518944, 35.502392, 44.530373>,  <42.296837, 35.203754, 44.676949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.518944, 35.502392, 44.530373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.697006, 0.177374, -0.694781,
		-0.453722, 0.641200, 0.618870,
		0.555265, 0.746593, -0.366441,
		42.685524, 35.726368, 44.420441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.816071, 35.742481, 44.556290>,  <42.296837, 35.203754, 44.676949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.816071, 35.742481, 44.556290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.135361, 35.819790, 44.328087>,  <42.326935, 35.866177, 44.191166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.135361, 35.819790, 44.328087>,  <41.816071, 35.742481, 44.556290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.135361, 35.819790, 44.328087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.598129, 0.366354, -0.712760,
		0.071253, 0.910182, 0.408034,
		0.798226, 0.193271, -0.570510,
		42.374828, 35.877769, 44.156933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.710789, 36.390327, 44.237339>,  <41.816071, 35.742481, 44.556290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.710789, 36.390327, 44.237339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.957466, 36.160439, 44.022163>,  <42.105473, 36.022503, 43.893059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.957466, 36.160439, 44.022163>,  <41.710789, 36.390327, 44.237339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.957466, 36.160439, 44.022163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498496, 0.243770, -0.831912,
		0.609255, 0.781196, -0.136167,
		0.616693, -0.574726, -0.537941,
		42.142475, 35.988022, 43.860783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.786873, 36.885841, 43.500916>,  <41.710789, 36.390327, 44.237339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.786873, 36.885841, 43.500916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.948807, 36.524883, 43.441864>,  <42.045967, 36.308308, 43.406433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.948807, 36.524883, 43.441864>,  <41.786873, 36.885841, 43.500916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.948807, 36.524883, 43.441864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297575, 0.022647, -0.954430,
		0.864615, 0.430317, -0.259362,
		0.404834, -0.902394, -0.147632,
		42.070255, 36.254166, 43.397575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.164696, 36.944847, 42.942726>,  <41.786873, 36.885841, 43.500916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.164696, 36.944847, 42.942726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.070938, 36.558331, 42.985321>,  <42.014683, 36.326420, 43.010880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.070938, 36.558331, 42.985321>,  <42.164696, 36.944847, 42.942726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.070938, 36.558331, 42.985321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390587, -0.006700, -0.920542,
		0.890225, -0.257363, -0.375850,
		-0.234395, -0.966292, 0.106487,
		42.000618, 36.268444, 43.017265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.397396, 36.615112, 42.312088>,  <42.164696, 36.944847, 42.942726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.397396, 36.615112, 42.312088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.141945, 36.357716, 42.480885>,  <41.988674, 36.203278, 42.582161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.141945, 36.357716, 42.480885>,  <42.397396, 36.615112, 42.312088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.141945, 36.357716, 42.480885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495557, -0.075624, -0.865277,
		0.588709, -0.761711, -0.270590,
		-0.638627, -0.643489, 0.421992,
		41.950356, 36.164669, 42.607483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.377800, 35.922367, 41.989376>,  <42.397396, 36.615112, 42.312088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.377800, 35.922367, 41.989376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.027370, 35.997803, 42.166885>,  <41.817112, 36.043064, 42.273392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.027370, 35.997803, 42.166885>,  <42.377800, 35.922367, 41.989376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.027370, 35.997803, 42.166885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482049, -0.321090, -0.815187,
		-0.011242, -0.928082, 0.372205,
		-0.876072, 0.188586, 0.443771,
		41.764549, 36.054379, 42.300018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.908226, 35.759014, 41.382713>,  <42.377800, 35.922367, 41.989376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.908226, 35.759014, 41.382713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.695057, 35.753448, 41.721134>,  <41.567154, 35.750111, 41.924187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.695057, 35.753448, 41.721134>,  <41.908226, 35.759014, 41.382713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.695057, 35.753448, 41.721134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.819753, -0.239366, -0.520297,
		0.209752, -0.970830, 0.116161,
		-0.532925, -0.013911, 0.846048,
		41.535179, 35.749275, 41.974949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.581318, 35.082966, 41.308704>,  <41.908226, 35.759014, 41.382713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.581318, 35.082966, 41.308704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.375465, 35.325504, 41.551193>,  <41.251953, 35.471027, 41.696686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.375465, 35.325504, 41.551193>,  <41.581318, 35.082966, 41.308704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.375465, 35.325504, 41.551193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.833095, -0.186417, -0.520770,
		-0.202764, -0.773034, 0.601086,
		-0.514625, 0.606355, 0.606212,
		41.221077, 35.507408, 41.733059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.945202, 34.736813, 41.404922>,  <41.581318, 35.082966, 41.308704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.945202, 34.736813, 41.404922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.891914, 35.117054, 41.517067>,  <40.859943, 35.345200, 41.584354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.891914, 35.117054, 41.517067>,  <40.945202, 34.736813, 41.404922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.891914, 35.117054, 41.517067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.655455, 0.127681, -0.744363,
		-0.743392, -0.282928, 0.606069,
		-0.133218, 0.950604, 0.280364,
		40.851948, 35.402237, 41.601177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.223354, 34.892460, 41.606983>,  <40.945202, 34.736813, 41.404922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.223354, 34.892460, 41.606983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.395508, 35.204208, 41.424843>,  <40.498798, 35.391258, 41.315559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.395508, 35.204208, 41.424843>,  <40.223354, 34.892460, 41.606983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.395508, 35.204208, 41.424843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.792660, 0.084998, -0.603710,
		-0.431813, 0.620765, 0.654362,
		0.430381, 0.779376, -0.455352,
		40.524624, 35.438023, 41.288239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.706944, 35.113049, 41.138203>,  <40.223354, 34.892460, 41.606983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.706944, 35.113049, 41.138203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.999798, 35.373634, 41.058624>,  <40.175510, 35.529984, 41.010876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.999798, 35.373634, 41.058624>,  <39.706944, 35.113049, 41.138203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.999798, 35.373634, 41.058624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350391, 0.109725, -0.930154,
		-0.584131, 0.750704, 0.308600,
		0.732132, 0.651463, -0.198946,
		40.219437, 35.569073, 40.998940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.377934, 35.512234, 40.704826>,  <39.706944, 35.113049, 41.138203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.377934, 35.512234, 40.704826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.759079, 35.612080, 40.635845>,  <39.987766, 35.671986, 40.594456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.759079, 35.612080, 40.635845>,  <39.377934, 35.512234, 40.704826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.759079, 35.612080, 40.635845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233790, 0.241841, -0.941730,
		-0.193360, 0.937661, 0.288798,
		0.952866, 0.249612, -0.172453,
		40.044937, 35.686962, 40.584110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.403011, 36.165676, 40.345707>,  <39.377934, 35.512234, 40.704826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.403011, 36.165676, 40.345707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.720051, 35.934780, 40.267147>,  <39.910275, 35.796242, 40.220013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.720051, 35.934780, 40.267147>,  <39.403011, 36.165676, 40.345707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.720051, 35.934780, 40.267147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117928, 0.170893, -0.978207,
		0.598226, 0.798490, 0.067377,
		0.792602, -0.577243, -0.196397,
		39.957832, 35.761608, 40.208229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.599979, 36.644897, 39.865597>,  <39.403011, 36.165676, 40.345707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.599979, 36.644897, 39.865597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.818607, 36.314110, 39.812862>,  <39.949783, 36.115639, 39.781223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.818607, 36.314110, 39.812862>,  <39.599979, 36.644897, 39.865597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.818607, 36.314110, 39.812862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056051, 0.193207, -0.979556,
		0.835533, 0.528009, 0.151954,
		0.546573, -0.826969, -0.131835,
		39.982578, 36.066021, 39.773312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.979645, 36.746189, 39.244526>,  <39.599979, 36.644897, 39.865597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.979645, 36.746189, 39.244526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.991383, 36.347980, 39.280483>,  <39.998425, 36.109055, 39.302059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.991383, 36.347980, 39.280483>,  <39.979645, 36.746189, 39.244526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.991383, 36.347980, 39.280483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038540, -0.090992, -0.995106,
		0.998826, 0.025741, -0.041037,
		0.029349, -0.995519, 0.089893,
		40.000187, 36.049324, 39.307449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.490921, 36.497063, 38.749146>,  <39.979645, 36.746189, 39.244526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.490921, 36.497063, 38.749146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.279781, 36.164814, 38.820072>,  <40.153099, 35.965466, 38.862629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.279781, 36.164814, 38.820072>,  <40.490921, 36.497063, 38.749146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.279781, 36.164814, 38.820072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080219, -0.256594, -0.963184,
		0.845543, -0.494189, 0.202074,
		-0.527846, -0.830624, 0.177318,
		40.121426, 35.915627, 38.873268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.909531, 35.920906, 38.506195>,  <40.490921, 36.497063, 38.749146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.909531, 35.920906, 38.506195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.519989, 35.830116, 38.509804>,  <40.286263, 35.775642, 38.511967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.519989, 35.830116, 38.509804>,  <40.909531, 35.920906, 38.506195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.519989, 35.830116, 38.509804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055915, -0.278010, -0.958949,
		0.220168, -0.933376, 0.283434,
		-0.973858, -0.226978, 0.009019,
		40.227833, 35.762024, 38.512508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.905819, 35.390114, 38.226170>,  <40.909531, 35.920906, 38.506195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.905819, 35.390114, 38.226170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.527218, 35.504616, 38.166584>,  <40.300056, 35.573315, 38.130833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.527218, 35.504616, 38.166584>,  <40.905819, 35.390114, 38.226170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.527218, 35.504616, 38.166584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087317, -0.217227, -0.972208,
		-0.310657, -0.933205, 0.180611,
		-0.946503, 0.286252, -0.148967,
		40.243267, 35.590492, 38.121895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.421375, 35.864449, 37.891529>,  <40.905819, 35.390114, 38.226170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.421375, 35.864449, 37.891529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.391411, 35.597988, 37.594711>,  <41.373432, 35.438110, 37.416622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.391411, 35.597988, 37.594711>,  <41.421375, 35.864449, 37.891529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.391411, 35.597988, 37.594711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.996390, -0.020192, -0.082465,
		0.039951, -0.745541, 0.665262,
		-0.074914, -0.666154, -0.742042,
		41.368938, 35.398140, 37.372097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.827171, 36.462772, 37.712639>,  <41.421375, 35.864449, 37.891529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.827171, 36.462772, 37.712639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.115097, 36.730003, 37.788040>,  <42.287853, 36.890343, 37.833282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.115097, 36.730003, 37.788040>,  <41.827171, 36.462772, 37.712639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.115097, 36.730003, 37.788040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.693221, 0.705982, 0.145032,
		-0.036190, -0.235075, 0.971303,
		0.719816, 0.668079, 0.188508,
		42.331043, 36.930428, 37.844593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.721882, 36.706860, 38.404331>,  <41.827171, 36.462772, 37.712639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.721882, 36.706860, 38.404331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.913681, 36.963745, 38.165119>,  <42.028763, 37.117878, 38.021591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.913681, 36.963745, 38.165119>,  <41.721882, 36.706860, 38.404331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.913681, 36.963745, 38.165119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.617826, 0.731021, 0.289654,
		0.623192, 0.230589, 0.747302,
		0.479503, 0.642213, -0.598031,
		42.057533, 37.156410, 37.985710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.892166, 36.548126, 39.023338>,  <41.721882, 36.706860, 38.404331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.892166, 36.548126, 39.023338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.201130, 36.450821, 38.788666>,  <42.386509, 36.392437, 38.647861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.201130, 36.450821, 38.788666>,  <41.892166, 36.548126, 39.023338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.201130, 36.450821, 38.788666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576391, 0.656456, 0.486661,
		0.266744, -0.714064, 0.647272,
		0.772412, -0.243268, -0.586685,
		42.432854, 36.377842, 38.612659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.477554, 36.187645, 39.402588>,  <41.892166, 36.548126, 39.023338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.477554, 36.187645, 39.402588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.578300, 36.421478, 39.094090>,  <42.638748, 36.561779, 38.908989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.578300, 36.421478, 39.094090>,  <42.477554, 36.187645, 39.402588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.578300, 36.421478, 39.094090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535631, 0.579539, 0.614194,
		0.806016, -0.567801, -0.167153,
		0.251868, 0.584583, -0.771250,
		42.653862, 36.596851, 38.862713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.167973, 36.396481, 39.409885>,  <42.477554, 36.187645, 39.402588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.167973, 36.396481, 39.409885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.961143, 36.693413, 39.239441>,  <42.837044, 36.871574, 39.137173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.961143, 36.693413, 39.239441>,  <43.167973, 36.396481, 39.409885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.961143, 36.693413, 39.239441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474025, 0.662870, 0.579572,
		0.712695, 0.097693, -0.694638,
		-0.517075, 0.742334, -0.426115,
		42.806023, 36.916115, 39.111607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.817398, 36.780922, 39.264217>,  <43.167973, 36.396481, 39.409885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.817398, 36.780922, 39.264217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.949276, 36.775093, 38.886627>,  <44.028404, 36.771595, 38.660072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.949276, 36.775093, 38.886627>,  <43.817398, 36.780922, 39.264217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.949276, 36.775093, 38.886627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.861174, 0.414389, 0.294385,
		0.386883, -0.909983, 0.149169,
		0.329699, -0.014568, -0.943974,
		44.048187, 36.770721, 38.603436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.465385, 36.611614, 39.414101>,  <43.817398, 36.780922, 39.264217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.465385, 36.611614, 39.414101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.446682, 36.805672, 39.064827>,  <44.435459, 36.922104, 38.855263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.446682, 36.805672, 39.064827>,  <44.465385, 36.611614, 39.414101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.446682, 36.805672, 39.064827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.908052, 0.384893, 0.165223,
		0.416240, -0.785173, -0.458528,
		-0.046756, 0.485140, -0.873186,
		44.432655, 36.951214, 38.802872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.024097, 36.679096, 39.012356>,  <44.465385, 36.611614, 39.414101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.024097, 36.679096, 39.012356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.177727, 36.513596, 38.682194>,  <45.269905, 36.414295, 38.484097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.177727, 36.513596, 38.682194>,  <45.024097, 36.679096, 39.012356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.177727, 36.513596, 38.682194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386789, 0.883850, -0.263065,
		0.838378, -0.218221, 0.499501,
		0.384078, -0.413750, -0.825406,
		45.292950, 36.389469, 38.434570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.713154, 36.808372, 38.991268>,  <45.024097, 36.679096, 39.012356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.713154, 36.808372, 38.991268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.603142, 36.744202, 38.612083>,  <45.537136, 36.705700, 38.384575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.603142, 36.744202, 38.612083>,  <45.713154, 36.808372, 38.991268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.603142, 36.744202, 38.612083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644461, 0.700916, -0.305593,
		0.713462, -0.694968, -0.089387,
		-0.275030, -0.160422, -0.947957,
		45.520634, 36.696075, 38.327698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.954746, 37.455723, 39.098930>,  <45.713154, 36.808372, 38.991268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.954746, 37.455723, 39.098930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.803669, 37.397385, 38.733181>,  <45.713024, 37.362381, 38.513733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.803669, 37.397385, 38.733181>,  <45.954746, 37.455723, 39.098930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.803669, 37.397385, 38.733181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294472, 0.917327, -0.267950,
		0.877858, -0.370459, -0.303520,
		-0.377692, -0.145844, -0.914374,
		45.690361, 37.353630, 38.458870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.195045, 37.337742, 38.405758>,  <45.954746, 37.455723, 39.098930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.195045, 37.337742, 38.405758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.286240, 36.948315, 38.411251>,  <46.340958, 36.714657, 38.414547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.286240, 36.948315, 38.411251>,  <46.195045, 37.337742, 38.405758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.286240, 36.948315, 38.411251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355357, 0.070066, -0.932101,
		0.906500, 0.217389, 0.361938,
		0.227988, -0.973567, 0.013736,
		46.354637, 36.656246, 38.415371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.851551, 37.177242, 38.356976>,  <46.195045, 37.337742, 38.405758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.851551, 37.177242, 38.356976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.678066, 36.853481, 38.198605>,  <46.573975, 36.659225, 38.103584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.678066, 36.853481, 38.198605>,  <46.851551, 37.177242, 38.356976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.678066, 36.853481, 38.198605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558675, 0.103184, -0.822943,
		0.706947, -0.578116, 0.407442,
		-0.433715, -0.809404, -0.395925,
		46.547951, 36.610661, 38.079826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.257473, 36.552120, 38.120296>,  <46.851551, 37.177242, 38.356976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.257473, 36.552120, 38.120296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.947632, 36.633186, 37.880657>,  <46.761726, 36.681828, 37.736874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.947632, 36.633186, 37.880657>,  <47.257473, 36.552120, 38.120296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.947632, 36.633186, 37.880657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626025, 0.110994, -0.771864,
		-0.089934, -0.972937, -0.212850,
		-0.774599, 0.202666, -0.599100,
		46.715252, 36.693985, 37.700928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.944706, 36.078987, 37.594166>,  <47.257473, 36.552120, 38.120296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.944706, 36.078987, 37.594166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.211376, 36.317051, 37.414684>,  <47.371376, 36.459888, 37.306995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.211376, 36.317051, 37.414684>,  <46.944706, 36.078987, 37.594166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.211376, 36.317051, 37.414684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224921, -0.734577, -0.640162,
		-0.710603, 0.325857, -0.623587,
		0.666673, 0.595159, -0.448700,
		47.411377, 36.495598, 37.280075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.736530, 36.139114, 36.903000>,  <46.944706, 36.078987, 37.594166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.736530, 36.139114, 36.903000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.131920, 36.187172, 36.939838>,  <47.369152, 36.216007, 36.961941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.131920, 36.187172, 36.939838>,  <46.736530, 36.139114, 36.903000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.131920, 36.187172, 36.939838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151253, -0.758513, -0.633861,
		-0.006298, 0.640486, -0.767944,
		0.988475, 0.120146, 0.092098,
		47.428463, 36.223217, 36.967468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.969910, 36.465576, 36.199272>,  <46.736530, 36.139114, 36.903000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.969910, 36.465576, 36.199272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.234295, 36.240711, 36.398106>,  <47.392925, 36.105793, 36.517406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.234295, 36.240711, 36.398106>,  <46.969910, 36.465576, 36.199272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.234295, 36.240711, 36.398106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221216, -0.487011, -0.844916,
		0.717071, 0.668423, -0.197537,
		0.660964, -0.562167, 0.497087,
		47.432583, 36.072060, 36.547234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.578815, 36.443054, 35.902313>,  <46.969910, 36.465576, 36.199272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.578815, 36.443054, 35.902313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.491779, 36.103352, 36.094734>,  <47.439556, 35.899529, 36.210186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.491779, 36.103352, 36.094734>,  <47.578815, 36.443054, 35.902313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.491779, 36.103352, 36.094734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232447, -0.523770, -0.819532,
		0.947957, -0.066502, 0.311375,
		-0.217590, -0.849260, 0.481054,
		47.426502, 35.848572, 36.239052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.105621, 35.943386, 35.769115>,  <47.578815, 36.443054, 35.902313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.105621, 35.943386, 35.769115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.808262, 35.687286, 35.846512>,  <47.629845, 35.533627, 35.892948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.808262, 35.687286, 35.846512>,  <48.105621, 35.943386, 35.769115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.808262, 35.687286, 35.846512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384825, -0.646041, -0.659197,
		0.547050, -0.415589, 0.726651,
		-0.743401, -0.640247, 0.193488,
		47.585243, 35.495213, 35.904560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.416924, 35.298523, 35.874847>,  <48.105621, 35.943386, 35.769115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.416924, 35.298523, 35.874847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.047146, 35.180637, 35.778057>,  <47.825279, 35.109905, 35.719982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.047146, 35.180637, 35.778057>,  <48.416924, 35.298523, 35.874847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.047146, 35.180637, 35.778057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379412, -0.647494, -0.660907,
		0.038099, -0.702778, 0.710388,
		-0.924443, -0.294710, -0.241973,
		47.769814, 35.092224, 35.705463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.240192, 35.062267, 35.164745>,  <48.416924, 35.298523, 35.874847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.240192, 35.062267, 35.164745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.869316, 34.953938, 35.268261>,  <47.646790, 34.888939, 35.330372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.869316, 34.953938, 35.268261>,  <48.240192, 35.062267, 35.164745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.869316, 34.953938, 35.268261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092348, 0.834804, 0.542746,
		-0.363028, 0.479330, -0.799033,
		-0.927191, -0.270821, 0.258792,
		47.591160, 34.872692, 35.345898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<40.381077, 31.774910, 27.885099> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.018066, 31.683596, 27.744087>,  <39.800259, 31.628807, 27.659481>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.018066, 31.683596, 27.744087>,  <40.381077, 31.774910, 27.885099>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.018066, 31.683596, 27.744087> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333312, -0.119206, 0.935250,
		-0.255529, 0.966268, 0.032092,
		-0.907529, -0.228287, -0.352530,
		39.745808, 31.615110, 27.638329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.859810, 32.191422, 28.325871>,  <40.381077, 31.774910, 27.885099>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.859810, 32.191422, 28.325871> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.662060, 31.897669, 28.139853>,  <39.543407, 31.721416, 28.028242>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.662060, 31.897669, 28.139853>,  <39.859810, 32.191422, 28.325871>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.662060, 31.897669, 28.139853> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.591813, -0.107484, 0.798877,
		-0.636669, 0.670168, -0.381481,
		-0.494379, -0.734385, -0.465046,
		39.513744, 31.677353, 28.000340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.148087, 32.287987, 28.556372>,  <39.859810, 32.191422, 28.325871>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.148087, 32.287987, 28.556372> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.171761, 31.910156, 28.427204>,  <39.185966, 31.683458, 28.349705>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.171761, 31.910156, 28.427204>,  <39.148087, 32.287987, 28.556372>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.171761, 31.910156, 28.427204> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522842, -0.304897, 0.796036,
		-0.850372, 0.121722, -0.511909,
		0.059185, -0.944574, -0.322917,
		39.189514, 31.626783, 28.330328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.456631, 32.025833, 28.577171>,  <39.148087, 32.287987, 28.556372>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.456631, 32.025833, 28.577171> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.698586, 31.707346, 28.582134>,  <38.843758, 31.516254, 28.585112>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.698586, 31.707346, 28.582134>,  <38.456631, 32.025833, 28.577171>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.698586, 31.707346, 28.582134> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371658, -0.268500, 0.888694,
		-0.704262, -0.542168, -0.458332,
		0.604884, -0.796217, 0.012407,
		38.880051, 31.468481, 28.585855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.059917, 31.291594, 28.653896>,  <38.456631, 32.025833, 28.577171>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.059917, 31.291594, 28.653896> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.429562, 31.254347, 28.802143>,  <38.651348, 31.231998, 28.891090>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.429562, 31.254347, 28.802143>,  <38.059917, 31.291594, 28.653896>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.429562, 31.254347, 28.802143> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377501, -0.373010, 0.847559,
		0.059323, -0.923143, -0.379852,
		0.924107, -0.093115, 0.370616,
		38.706795, 31.226412, 28.913328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.883522, 30.899630, 29.124910>,  <38.059917, 31.291594, 28.653896>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.883522, 30.899630, 29.124910> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.261650, 30.998381, 29.210167>,  <38.488525, 31.057632, 29.261320>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.261650, 30.998381, 29.210167>,  <37.883522, 30.899630, 29.124910>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.261650, 30.998381, 29.210167> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225745, 0.023589, 0.973901,
		0.235408, -0.968759, 0.078031,
		0.945316, 0.246880, 0.213139,
		38.545246, 31.072445, 29.274109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.164124, 30.399529, 29.529615>,  <37.883522, 30.899630, 29.124910>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.164124, 30.399529, 29.529615> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.417782, 30.701656, 29.595768>,  <38.569977, 30.882933, 29.635460>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.417782, 30.701656, 29.595768>,  <38.164124, 30.399529, 29.529615>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.417782, 30.701656, 29.595768> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059376, -0.165685, 0.984390,
		0.770930, -0.634067, -0.060220,
		0.634147, 0.755320, 0.165380,
		38.608025, 30.928253, 29.645382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.762600, 30.240932, 30.018850>,  <38.164124, 30.399529, 29.529615>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.762600, 30.240932, 30.018850> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.770527, 30.638029, 30.066299>,  <38.775284, 30.876287, 30.094769>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.770527, 30.638029, 30.066299>,  <38.762600, 30.240932, 30.018850>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.770527, 30.638029, 30.066299> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028830, -0.118031, 0.992591,
		0.999388, -0.023095, 0.026281,
		0.019822, 0.992741, 0.118624,
		38.776474, 30.935852, 30.101887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.164726, 30.433214, 30.624195>,  <38.762600, 30.240932, 30.018850>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.164726, 30.433214, 30.624195> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.943848, 30.757254, 30.545389>,  <38.811321, 30.951677, 30.498106>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.943848, 30.757254, 30.545389>,  <39.164726, 30.433214, 30.624195>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.943848, 30.757254, 30.545389> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125348, 0.152950, 0.980252,
		0.824235, 0.565991, 0.017085,
		-0.552200, 0.810099, -0.197013,
		38.778187, 31.000284, 30.486286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.470768, 30.942062, 31.028316>,  <39.164726, 30.433214, 30.624195>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.470768, 30.942062, 31.028316> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.100834, 31.075535, 30.955288>,  <38.878872, 31.155619, 30.911470>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.100834, 31.075535, 30.955288>,  <39.470768, 30.942062, 31.028316>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.100834, 31.075535, 30.955288> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125668, 0.184979, 0.974674,
		0.359000, 0.924360, -0.129143,
		-0.924838, 0.333679, -0.182570,
		38.823383, 31.175638, 30.900517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.345501, 31.676651, 31.367342>,  <39.470768, 30.942062, 31.028316>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.345501, 31.676651, 31.367342> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.009846, 31.467497, 31.307432>,  <38.808453, 31.342005, 31.271486>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.009846, 31.467497, 31.307432>,  <39.345501, 31.676651, 31.367342>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.009846, 31.467497, 31.307432> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195679, 0.033288, 0.980103,
		-0.507496, 0.851752, -0.130251,
		-0.839141, -0.522886, -0.149777,
		38.758102, 31.310631, 31.262499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.941402, 32.003098, 31.886587>,  <39.345501, 31.676651, 31.367342>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.941402, 32.003098, 31.886587> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.703926, 31.698959, 31.781206>,  <38.561440, 31.516478, 31.717978>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.703926, 31.698959, 31.781206>,  <38.941402, 32.003098, 31.886587>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.703926, 31.698959, 31.781206> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246782, -0.139581, 0.958966,
		-0.765916, 0.634346, -0.104770,
		-0.593693, -0.760343, -0.263452,
		38.525818, 31.470856, 31.702171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.243671, 32.132545, 32.114388>,  <38.941402, 32.003098, 31.886587>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.243671, 32.132545, 32.114388> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.247242, 31.736034, 32.061794>,  <38.249382, 31.498127, 32.030239>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.247242, 31.736034, 32.061794>,  <38.243671, 32.132545, 32.114388>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.247242, 31.736034, 32.061794> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454193, -0.121162, 0.882626,
		-0.890859, 0.051842, -0.451313,
		0.008924, -0.991278, -0.131485,
		38.249920, 31.438650, 32.022350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.544632, 31.877220, 32.234215>,  <38.243671, 32.132545, 32.114388>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.544632, 31.877220, 32.234215> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.787327, 31.562408, 32.278870>,  <37.932941, 31.373522, 32.305660>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.787327, 31.562408, 32.278870>,  <37.544632, 31.877220, 32.234215>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.787327, 31.562408, 32.278870> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481120, -0.251795, 0.839716,
		-0.632771, -0.563192, -0.531427,
		0.606732, -0.787028, 0.111634,
		37.969345, 31.326300, 32.312359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.079029, 31.327946, 32.298260>,  <37.544632, 31.877220, 32.234215>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.079029, 31.327946, 32.298260> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.430210, 31.215965, 32.453602>,  <37.640919, 31.148777, 32.546806>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.430210, 31.215965, 32.453602>,  <37.079029, 31.327946, 32.298260>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.430210, 31.215965, 32.453602> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477515, -0.454093, 0.752183,
		-0.034225, -0.845829, -0.532355,
		0.877957, -0.279950, 0.388355,
		37.693596, 31.131979, 32.570107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.868595, 30.758303, 32.736965>,  <37.079029, 31.327946, 32.298260>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.868595, 30.758303, 32.736965> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.238853, 30.858145, 32.850719>,  <37.461010, 30.918051, 32.918972>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.238853, 30.858145, 32.850719>,  <36.868595, 30.758303, 32.736965>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.238853, 30.858145, 32.850719> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197478, -0.322419, 0.925769,
		0.322767, -0.913095, -0.249155,
		0.925648, 0.249605, 0.284382,
		37.516548, 30.933027, 32.936035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.054344, 30.289680, 33.212170>,  <36.868595, 30.758303, 32.736965>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.054344, 30.289680, 33.212170> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.246166, 30.636288, 33.267555>,  <37.361259, 30.844252, 33.300785>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.246166, 30.636288, 33.267555>,  <37.054344, 30.289680, 33.212170>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.246166, 30.636288, 33.267555> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017969, -0.148063, 0.988814,
		0.877326, -0.476682, -0.055434,
		0.479558, 0.866517, 0.138465,
		37.390034, 30.896242, 33.309093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.528973, 30.162395, 33.647598>,  <37.054344, 30.289680, 33.212170>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.528973, 30.162395, 33.647598> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.481075, 30.554537, 33.710297>,  <37.452335, 30.789822, 33.747913>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.481075, 30.554537, 33.710297>,  <37.528973, 30.162395, 33.647598>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.481075, 30.554537, 33.710297> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176883, -0.176419, 0.968292,
		0.976920, 0.088226, 0.194533,
		-0.119748, 0.980353, 0.156742,
		37.445152, 30.848642, 33.757320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.023830, 30.305971, 34.278107>,  <37.528973, 30.162395, 33.647598>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.023830, 30.305971, 34.278107> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.764584, 30.609507, 34.252476>,  <37.609035, 30.791628, 34.237099>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.764584, 30.609507, 34.252476>,  <38.023830, 30.305971, 34.278107>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.764584, 30.609507, 34.252476> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046374, 0.044658, 0.997925,
		0.760127, 0.649744, 0.006247,
		-0.648117, 0.758840, -0.064077,
		37.570148, 30.837158, 34.233253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.371265, 30.861227, 34.546017>,  <38.023830, 30.305971, 34.278107>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.371265, 30.861227, 34.546017> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.994762, 30.985716, 34.598434>,  <37.768860, 31.060410, 34.629887>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.994762, 30.985716, 34.598434>,  <38.371265, 30.861227, 34.546017>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.994762, 30.985716, 34.598434> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207216, 0.225914, 0.951853,
		0.266635, 0.923094, -0.277134,
		-0.941258, 0.311224, 0.131044,
		37.712383, 31.079082, 34.637749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.464931, 31.588060, 34.820065>,  <38.371265, 30.861227, 34.546017>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.464931, 31.588060, 34.820065> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.112358, 31.425962, 34.917095>,  <37.900814, 31.328703, 34.975315>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.112358, 31.425962, 34.917095>,  <38.464931, 31.588060, 34.820065>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.112358, 31.425962, 34.917095> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175536, 0.195740, 0.964817,
		-0.438470, 0.893008, -0.101398,
		-0.881437, -0.405245, 0.242581,
		37.847927, 31.304390, 34.989868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.289131, 31.976984, 35.423359>,  <38.464931, 31.588060, 34.820065>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.289131, 31.976984, 35.423359> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.996284, 31.704517, 35.425121>,  <37.820576, 31.541039, 35.426178>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.996284, 31.704517, 35.425121>,  <38.289131, 31.976984, 35.423359>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.996284, 31.704517, 35.425121> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235684, 0.259377, 0.936577,
		-0.639108, 0.684644, -0.350434,
		-0.732116, -0.681166, 0.004410,
		37.776649, 31.500168, 35.426445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.788826, 32.389874, 35.769146>,  <38.289131, 31.976984, 35.423359>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.788826, 32.389874, 35.769146> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.068516, 32.674202, 35.799652>,  <39.236328, 32.844799, 35.817955>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.068516, 32.674202, 35.799652>,  <38.788826, 32.389874, 35.769146>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.068516, 32.674202, 35.799652> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415986, -0.317776, -0.852041,
		-0.581417, 0.627491, -0.517889,
		0.699221, 0.710825, 0.076267,
		39.278282, 32.887451, 35.822533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.902428, 32.727226, 35.087608>,  <38.788826, 32.389874, 35.769146>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.902428, 32.727226, 35.087608> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.232883, 32.802044, 35.300217>,  <39.431156, 32.846935, 35.427780>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.232883, 32.802044, 35.300217>,  <38.902428, 32.727226, 35.087608>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.232883, 32.802044, 35.300217> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563153, -0.305848, -0.767669,
		0.018974, 0.933526, -0.358008,
		0.826135, 0.187047, 0.531521,
		39.480724, 32.858158, 35.459671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.274937, 33.235706, 34.761684>,  <38.902428, 32.727226, 35.087608>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.274937, 33.235706, 34.761684> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.551498, 33.059368, 34.990635>,  <39.717438, 32.953564, 35.128006>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.551498, 33.059368, 34.990635>,  <39.274937, 33.235706, 34.761684>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.551498, 33.059368, 34.990635> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483702, -0.306015, -0.819992,
		0.536646, 0.843806, 0.001658,
		0.691407, -0.440847, 0.572372,
		39.758919, 32.927113, 35.162346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.885426, 33.382832, 34.465557>,  <39.274937, 33.235706, 34.761684>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.885426, 33.382832, 34.465557> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.994411, 33.077457, 34.699802>,  <40.059803, 32.894234, 34.840347>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.994411, 33.077457, 34.699802>,  <39.885426, 33.382832, 34.465557>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.994411, 33.077457, 34.699802> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486214, -0.415962, -0.768487,
		0.830278, 0.494114, 0.257857,
		0.272461, -0.763431, 0.585609,
		40.076149, 32.848427, 34.875484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.701141, 33.361813, 34.520279>,  <39.885426, 33.382832, 34.465557>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.701141, 33.361813, 34.520279> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.586075, 32.991280, 34.617561>,  <40.517036, 32.768959, 34.675930>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.586075, 32.991280, 34.617561>,  <40.701141, 33.361813, 34.520279>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.586075, 32.991280, 34.617561> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607722, -0.372822, -0.701197,
		0.740219, -0.053904, 0.670202,
		-0.287664, -0.926336, 0.243211,
		40.499775, 32.713379, 34.690525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.293350, 32.924435, 34.510456>,  <40.701141, 33.361813, 34.520279>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.293350, 32.924435, 34.510456> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.997227, 32.659439, 34.464756>,  <40.819553, 32.500443, 34.437336>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.997227, 32.659439, 34.464756>,  <41.293350, 32.924435, 34.510456>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.997227, 32.659439, 34.464756> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450497, -0.362724, -0.815772,
		0.498999, -0.655391, 0.566977,
		-0.740306, -0.662491, -0.114253,
		40.775135, 32.460693, 34.430481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.665657, 32.487442, 34.164124>,  <41.293350, 32.924435, 34.510456>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.665657, 32.487442, 34.164124> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.289803, 32.358978, 34.116886>,  <41.064289, 32.281902, 34.088543>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.289803, 32.358978, 34.116886>,  <41.665657, 32.487442, 34.164124>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.289803, 32.358978, 34.116886> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284411, -0.541119, -0.791391,
		0.190257, -0.777206, 0.599795,
		-0.939635, -0.321156, -0.118095,
		41.007912, 32.262630, 34.081459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.729321, 31.672230, 34.044891>,  <41.665657, 32.487442, 34.164124>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.729321, 31.672230, 34.044891> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.369946, 31.787226, 33.912128>,  <41.154320, 31.856224, 33.832470>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.369946, 31.787226, 33.912128>,  <41.729321, 31.672230, 34.044891>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.369946, 31.787226, 33.912128> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170600, -0.467948, -0.867133,
		-0.404604, -0.835688, 0.371377,
		-0.898438, 0.287488, -0.331902,
		41.100414, 31.873472, 33.812557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.476917, 31.097712, 33.780392>,  <41.729321, 31.672230, 34.044891>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.476917, 31.097712, 33.780392> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.280525, 31.398935, 33.605198>,  <41.162689, 31.579670, 33.500080>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.280525, 31.398935, 33.605198>,  <41.476917, 31.097712, 33.780392>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.280525, 31.398935, 33.605198> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094556, -0.453723, -0.886112,
		-0.866022, -0.476481, 0.151564,
		-0.490983, 0.753061, -0.437989,
		41.133228, 31.624853, 33.473801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.014271, 30.796471, 33.291462>,  <41.476917, 31.097712, 33.780392>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.014271, 30.796471, 33.291462> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.044014, 31.185619, 33.203835>,  <41.061859, 31.419109, 33.151257>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.044014, 31.185619, 33.203835>,  <41.014271, 30.796471, 33.291462>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.044014, 31.185619, 33.203835> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063850, -0.223872, -0.972525,
		-0.995186, 0.058325, -0.078764,
		0.074356, 0.972872, -0.219070,
		41.066322, 31.477482, 33.138115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.760746, 30.906935, 32.563820>,  <41.014271, 30.796471, 33.291462>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.760746, 30.906935, 32.563820> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.974339, 31.241823, 32.611019>,  <41.102493, 31.442757, 32.639339>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.974339, 31.241823, 32.611019>,  <40.760746, 30.906935, 32.563820>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.974339, 31.241823, 32.611019> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194260, 0.014337, -0.980845,
		-0.822876, 0.546676, -0.154983,
		0.533983, 0.837221, 0.117995,
		41.134533, 31.492990, 32.646420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.482040, 31.405123, 32.183231>,  <40.760746, 30.906935, 32.563820>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.482040, 31.405123, 32.183231> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.879101, 31.442215, 32.214352>,  <41.117336, 31.464470, 32.233025>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.879101, 31.442215, 32.214352>,  <40.482040, 31.405123, 32.183231>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.879101, 31.442215, 32.214352> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077784, 0.003813, -0.996963,
		-0.092748, 0.995684, -0.003428,
		0.992647, 0.092733, 0.077802,
		41.176895, 31.470036, 32.237694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.620598, 31.908373, 31.668844>,  <40.482040, 31.405123, 32.183231>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.620598, 31.908373, 31.668844> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.965210, 31.712385, 31.722048>,  <41.171978, 31.594793, 31.753969>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.965210, 31.712385, 31.722048>,  <40.620598, 31.908373, 31.668844>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.965210, 31.712385, 31.722048> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286048, 0.252008, -0.924483,
		0.419449, 0.834519, 0.357268,
		0.861533, -0.489969, 0.133008,
		41.223671, 31.565395, 31.761950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.159908, 32.418598, 31.491022>,  <40.620598, 31.908373, 31.668844>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.159908, 32.418598, 31.491022> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.305897, 32.047806, 31.456377>,  <41.393490, 31.825331, 31.435591>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.305897, 32.047806, 31.456377>,  <41.159908, 32.418598, 31.491022>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.305897, 32.047806, 31.456377> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316610, 0.211061, -0.924776,
		0.875532, 0.310092, 0.370522,
		0.364968, -0.926982, -0.086612,
		41.415386, 31.769711, 31.430393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.792397, 32.512714, 31.284689>,  <41.159908, 32.418598, 31.491022>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.792397, 32.512714, 31.284689> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.723686, 32.130478, 31.188911>,  <41.682461, 31.901134, 31.131445>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.723686, 32.130478, 31.188911>,  <41.792397, 32.512714, 31.284689>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.723686, 32.130478, 31.188911> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428113, 0.146493, -0.891773,
		0.887249, -0.255695, 0.383938,
		-0.171778, -0.955594, -0.239442,
		41.672153, 31.843800, 31.117079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.459625, 32.243927, 30.839952>,  <41.792397, 32.512714, 31.284689>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.459625, 32.243927, 30.839952> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.152634, 31.995491, 30.776421>,  <41.968441, 31.846430, 30.738300>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.152634, 31.995491, 30.776421>,  <42.459625, 32.243927, 30.839952>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.152634, 31.995491, 30.776421> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033828, 0.208177, -0.977506,
		0.640183, -0.755587, -0.138761,
		-0.767478, -0.621089, -0.158831,
		41.922390, 31.809164, 30.728771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.711067, 31.635815, 30.258953>,  <42.459625, 32.243927, 30.839952>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.711067, 31.635815, 30.258953> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.313568, 31.668919, 30.288933>,  <42.075069, 31.688780, 30.306921>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.313568, 31.668919, 30.288933>,  <42.711067, 31.635815, 30.258953>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.313568, 31.668919, 30.288933> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054933, 0.221996, -0.973499,
		-0.097203, -0.971529, -0.216062,
		-0.993748, 0.082758, 0.074948,
		42.015446, 31.693747, 30.311417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.369919, 31.177187, 29.786795>,  <42.711067, 31.635815, 30.258953>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.369919, 31.177187, 29.786795> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.101299, 31.469849, 29.833616>,  <41.940128, 31.645445, 29.861710>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.101299, 31.469849, 29.833616>,  <42.369919, 31.177187, 29.786795>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.101299, 31.469849, 29.833616> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115800, 0.259671, -0.958729,
		-0.731851, -0.630283, -0.259108,
		-0.671553, 0.731652, 0.117054,
		41.899834, 31.689344, 29.868732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<41.900154, 31.141169, 29.181629> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.830986, 31.505999, 29.330339>,  <41.789486, 31.724897, 29.419565>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.830986, 31.505999, 29.330339>,  <41.900154, 31.141169, 29.181629>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.830986, 31.505999, 29.330339> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001162, 0.377274, -0.926101,
		-0.984935, -0.160573, -0.064178,
		-0.172920, 0.912075, 0.371777,
		41.779110, 31.779621, 29.441872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.385395, 31.467648, 28.748377>,  <41.900154, 31.141169, 29.181629>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.385395, 31.467648, 28.748377> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.551109, 31.777931, 28.938805>,  <41.650539, 31.964102, 29.053061>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.551109, 31.777931, 28.938805>,  <41.385395, 31.467648, 28.748377>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.551109, 31.777931, 28.938805> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103265, 0.559751, -0.822201,
		-0.904270, 0.291464, 0.312000,
		0.414284, 0.775711, 0.476068,
		41.675396, 32.010643, 29.081625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.894657, 32.163162, 28.723278>,  <41.385395, 31.467648, 28.748377>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.894657, 32.163162, 28.723278> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.267273, 32.289944, 28.794571>,  <41.490845, 32.366013, 28.837347>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.267273, 32.289944, 28.794571>,  <40.894657, 32.163162, 28.723278>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.267273, 32.289944, 28.794571> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105960, 0.705483, -0.700761,
		-0.347849, 0.633904, 0.690773,
		0.931544, 0.316953, 0.178233,
		41.546738, 32.385029, 28.848042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.810688, 32.827732, 28.652250>,  <40.894657, 32.163162, 28.723278>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.810688, 32.827732, 28.652250> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.204887, 32.763638, 28.629919>,  <41.441406, 32.725182, 28.616520>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.204887, 32.763638, 28.629919>,  <40.810688, 32.827732, 28.652250>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.204887, 32.763638, 28.629919> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071841, 0.692090, -0.718227,
		0.153726, 0.703801, 0.693565,
		0.985498, -0.160237, -0.055830,
		41.500538, 32.715565, 28.613171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.023258, 33.498379, 28.628292>,  <40.810688, 32.827732, 28.652250>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.023258, 33.498379, 28.628292> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.324974, 33.279312, 28.483454>,  <41.506004, 33.147873, 28.396551>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.324974, 33.279312, 28.483454>,  <41.023258, 33.498379, 28.628292>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.324974, 33.279312, 28.483454> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101430, 0.642105, -0.759876,
		0.648661, 0.536438, 0.539882,
		0.754288, -0.547663, -0.362098,
		41.551262, 33.115013, 28.374825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.424999, 34.026726, 28.259226>,  <41.023258, 33.498379, 28.628292>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.424999, 34.026726, 28.259226> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.541233, 33.659798, 28.150358>,  <41.610973, 33.439640, 28.085037>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.541233, 33.659798, 28.150358>,  <41.424999, 34.026726, 28.259226>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.541233, 33.659798, 28.150358> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222318, 0.341387, -0.913252,
		0.930663, 0.204870, 0.303140,
		0.290586, -0.917324, -0.272170,
		41.628410, 33.384602, 28.068707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.166546, 34.013809, 27.844946>,  <41.424999, 34.026726, 28.259226>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.166546, 34.013809, 27.844946> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.978279, 33.680443, 27.729090>,  <41.865318, 33.480423, 27.659576>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.978279, 33.680443, 27.729090>,  <42.166546, 34.013809, 27.844946>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.978279, 33.680443, 27.729090> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211470, 0.212151, -0.954082,
		0.856594, -0.510305, 0.076390,
		-0.470667, -0.833415, -0.289642,
		41.837078, 33.430420, 27.642197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.672382, 33.596573, 27.520742>,  <42.166546, 34.013809, 27.844946>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.672382, 33.596573, 27.520742> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.306442, 33.507275, 27.386152>,  <42.086880, 33.453697, 27.305399>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.306442, 33.507275, 27.386152>,  <42.672382, 33.596573, 27.520742>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.306442, 33.507275, 27.386152> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283074, 0.239671, -0.928670,
		0.287968, -0.944837, -0.156066,
		-0.914846, -0.223249, -0.336476,
		42.031990, 33.440300, 27.285210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.879971, 33.200764, 27.080194>,  <42.672382, 33.596573, 27.520742>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.879971, 33.200764, 27.080194> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.518047, 33.338554, 26.980070>,  <42.300892, 33.421230, 26.919996>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.518047, 33.338554, 26.980070>,  <42.879971, 33.200764, 27.080194>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.518047, 33.338554, 26.980070> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253457, -0.036669, -0.966651,
		-0.342171, -0.938077, -0.054132,
		-0.904809, 0.344480, -0.250309,
		42.246605, 33.441898, 26.904978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.728138, 32.740520, 26.511827>,  <42.879971, 33.200764, 27.080194>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.728138, 32.740520, 26.511827> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.449387, 33.020699, 26.450199>,  <42.282135, 33.188805, 26.413221>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.449387, 33.020699, 26.450199>,  <42.728138, 32.740520, 26.511827>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.449387, 33.020699, 26.450199> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268453, 0.055550, -0.961690,
		-0.665049, -0.711544, -0.226748,
		-0.696880, 0.700442, -0.154072,
		42.240322, 33.230831, 26.403976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.284626, 32.538082, 25.977386>,  <42.728138, 32.740520, 26.511827>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.284626, 32.538082, 25.977386> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.204098, 32.929714, 25.965626>,  <42.155781, 33.164696, 25.958570>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.204098, 32.929714, 25.965626>,  <42.284626, 32.538082, 25.977386>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.204098, 32.929714, 25.965626> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041367, -0.021490, -0.998913,
		-0.978651, -0.202320, -0.036175,
		-0.201323, 0.979083, -0.029401,
		42.143700, 33.223438, 25.956806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.953598, 32.585579, 25.457981>,  <42.284626, 32.538082, 25.977386>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.953598, 32.585579, 25.457981> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.070972, 32.967964, 25.460468>,  <42.141396, 33.197395, 25.461960>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.070972, 32.967964, 25.460468>,  <41.953598, 32.585579, 25.457981>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.070972, 32.967964, 25.460468> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040470, -0.005924, -0.999163,
		-0.955122, 0.293441, -0.040426,
		0.293435, 0.955959, 0.006217,
		42.159004, 33.254753, 25.462334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.704952, 32.858135, 24.767458>,  <41.953598, 32.585579, 25.457981>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.704952, 32.858135, 24.767458> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.990314, 33.085953, 24.930765>,  <42.161530, 33.222641, 25.028749>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.990314, 33.085953, 24.930765>,  <41.704952, 32.858135, 24.767458>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.990314, 33.085953, 24.930765> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382907, 0.171117, -0.907800,
		-0.586890, 0.803954, -0.096006,
		0.713402, 0.569541, 0.408266,
		42.204334, 33.256817, 25.053246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.670380, 33.438141, 24.425406>,  <41.704952, 32.858135, 24.767458>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.670380, 33.438141, 24.425406> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.042168, 33.430027, 24.572744>,  <42.265240, 33.425159, 24.661148>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.042168, 33.430027, 24.572744>,  <41.670380, 33.438141, 24.425406>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.042168, 33.430027, 24.572744> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365961, 0.176626, -0.913716,
		-0.046522, 0.984069, 0.171592,
		0.929467, -0.020288, 0.368348,
		42.321007, 33.423939, 24.683249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.055691, 34.096817, 24.357418>,  <41.670380, 33.438141, 24.425406>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.055691, 34.096817, 24.357418> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.343857, 33.823296, 24.403738>,  <42.516758, 33.659184, 24.431530>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.343857, 33.823296, 24.403738>,  <42.055691, 34.096817, 24.357418>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.343857, 33.823296, 24.403738> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418326, 0.295260, -0.858967,
		0.553177, 0.667256, 0.498764,
		0.720416, -0.683807, 0.115800,
		42.559982, 33.618153, 24.438478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.647045, 34.454849, 24.146704>,  <42.055691, 34.096817, 24.357418>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.647045, 34.454849, 24.146704> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.767406, 34.073452, 24.153658>,  <42.839622, 33.844612, 24.157831>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.767406, 34.073452, 24.153658>,  <42.647045, 34.454849, 24.146704>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.767406, 34.073452, 24.153658> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446295, 0.124681, -0.886157,
		0.842781, 0.274403, 0.463058,
		0.300899, -0.953497, 0.017386,
		42.857677, 33.787403, 24.158875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.354542, 34.517719, 24.007664>,  <42.647045, 34.454849, 24.146704>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.354542, 34.517719, 24.007664> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.302990, 34.127048, 23.938963>,  <43.272060, 33.892647, 23.897741>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.302990, 34.127048, 23.938963>,  <43.354542, 34.517719, 24.007664>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.302990, 34.127048, 23.938963> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449174, 0.096918, -0.888172,
		0.884100, -0.191615, 0.426206,
		-0.128880, -0.976673, -0.171754,
		43.264324, 33.834045, 23.887436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.062309, 34.227489, 23.932995>,  <43.354542, 34.517719, 24.007664>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.062309, 34.227489, 23.932995> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.791580, 33.999607, 23.746510>,  <43.629143, 33.862877, 23.634619>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.791580, 33.999607, 23.746510>,  <44.062309, 34.227489, 23.932995>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.791580, 33.999607, 23.746510> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458375, 0.169416, -0.872462,
		0.576028, -0.804200, 0.146473,
		-0.676819, -0.569702, -0.466214,
		43.588535, 33.828697, 23.606646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.398235, 33.816994, 23.559065>,  <44.062309, 34.227489, 23.932995>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.398235, 33.816994, 23.559065> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.055271, 33.781521, 23.356293>,  <43.849491, 33.760239, 23.234629>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.055271, 33.781521, 23.356293>,  <44.398235, 33.816994, 23.559065>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.055271, 33.781521, 23.356293> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513007, -0.069099, -0.855598,
		0.040848, -0.993660, 0.104741,
		-0.857412, -0.088683, -0.506933,
		43.798046, 33.754917, 23.204212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.499203, 33.325142, 23.056103>,  <44.398235, 33.816994, 23.559065>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.499203, 33.325142, 23.056103> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.191368, 33.539143, 22.916668>,  <44.006668, 33.667545, 22.833008>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.191368, 33.539143, 22.916668>,  <44.499203, 33.325142, 23.056103>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.191368, 33.539143, 22.916668> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357631, -0.091122, -0.929407,
		-0.529002, -0.839920, -0.121209,
		-0.769583, 0.535006, -0.348585,
		43.960495, 33.699646, 22.812092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.338493, 32.940285, 22.509020>,  <44.499203, 33.325142, 23.056103>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.338493, 32.940285, 22.509020> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.149315, 33.283470, 22.428791>,  <44.035809, 33.489380, 22.380653>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.149315, 33.283470, 22.428791>,  <44.338493, 32.940285, 22.509020>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.149315, 33.283470, 22.428791> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330070, -0.038543, -0.943169,
		-0.816931, -0.512270, -0.264958,
		-0.472945, 0.857959, -0.200572,
		44.007431, 33.540859, 22.368620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.861286, 32.847679, 21.875996>,  <44.338493, 32.940285, 22.509020>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.861286, 32.847679, 21.875996> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.969879, 33.231853, 21.900843>,  <44.035034, 33.462357, 21.915751>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.969879, 33.231853, 21.900843>,  <43.861286, 32.847679, 21.875996>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.969879, 33.231853, 21.900843> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580556, -0.111943, -0.806488,
		-0.767626, 0.255015, -0.587978,
		0.271486, 0.960435, 0.062120,
		44.051327, 33.519985, 21.919479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.775761, 33.434956, 21.290245>,  <43.861286, 32.847679, 21.875996>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.775761, 33.434956, 21.290245> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.113380, 33.473106, 21.501333>,  <44.315952, 33.495998, 21.627987>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.113380, 33.473106, 21.501333>,  <43.775761, 33.434956, 21.290245>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.113380, 33.473106, 21.501333> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530229, -0.001118, -0.847854,
		-0.080279, 0.995440, -0.051518,
		0.844045, 0.095382, 0.527722,
		44.366592, 33.501720, 21.659649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.400421, 32.812553, 21.103556>,  <43.775761, 33.434956, 21.290245>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.400421, 32.812553, 21.103556> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.114529, 32.767101, 20.827513>,  <42.942993, 32.739830, 20.661886>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.114529, 32.767101, 20.827513>,  <43.400421, 32.812553, 21.103556>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.114529, 32.767101, 20.827513> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.696120, 0.020114, 0.717644,
		-0.067664, 0.993320, -0.093476,
		-0.714730, -0.113629, -0.690108,
		42.900108, 32.733013, 20.620480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.887714, 33.375435, 21.176332>,  <43.400421, 32.812553, 21.103556>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.887714, 33.375435, 21.176332> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.734241, 33.041481, 21.018465>,  <42.642159, 32.841110, 20.923744>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.734241, 33.041481, 21.018465>,  <42.887714, 33.375435, 21.176332>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.734241, 33.041481, 21.018465> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.835293, 0.131505, 0.533847,
		-0.393798, 0.534489, -0.747827,
		-0.383678, -0.834882, -0.394668,
		42.619137, 32.791016, 20.900064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.096367, 33.497089, 21.183388>,  <42.887714, 33.375435, 21.176332>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.096367, 33.497089, 21.183388> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.129642, 33.103512, 21.120235>,  <42.149609, 32.867363, 21.082344>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.129642, 33.103512, 21.120235>,  <42.096367, 33.497089, 21.183388>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.129642, 33.103512, 21.120235> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.936266, -0.131434, 0.325778,
		-0.341299, 0.120715, -0.932171,
		0.083193, -0.983948, -0.157880,
		42.154602, 32.808327, 21.072872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.472889, 33.384216, 20.802414>,  <42.096367, 33.497089, 21.183388>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.472889, 33.384216, 20.802414> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.601147, 33.060104, 20.998634>,  <41.678101, 32.865639, 21.116365>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.601147, 33.060104, 20.998634>,  <41.472889, 33.384216, 20.802414>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.601147, 33.060104, 20.998634> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.802736, 0.042450, 0.594821,
		-0.502794, -0.584507, -0.636828,
		0.320644, -0.810278, 0.490548,
		41.697338, 32.817020, 21.145800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.870918, 33.082951, 20.940788>,  <41.472889, 33.384216, 20.802414>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.870918, 33.082951, 20.940788> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.131439, 32.869854, 21.156935>,  <41.287754, 32.741997, 21.286623>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.131439, 32.869854, 21.156935>,  <40.870918, 33.082951, 20.940788>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.131439, 32.869854, 21.156935> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.684054, -0.103981, 0.721982,
		-0.328440, -0.839868, -0.432145,
		0.651304, -0.532738, 0.540364,
		41.326832, 32.710033, 21.319044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.541058, 32.470394, 21.233379>,  <40.870918, 33.082951, 20.940788>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.541058, 32.470394, 21.233379> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.849659, 32.578556, 21.463739>,  <41.034821, 32.643456, 21.601955>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.849659, 32.578556, 21.463739>,  <40.541058, 32.470394, 21.233379>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.849659, 32.578556, 21.463739> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.632770, 0.231912, 0.738796,
		0.066218, -0.934396, 0.350027,
		0.771503, 0.270408, 0.575901,
		41.081108, 32.659679, 21.636509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.397995, 32.161491, 21.870735>,  <40.541058, 32.470394, 21.233379>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.397995, 32.161491, 21.870735> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.676128, 32.435081, 21.958998>,  <40.843010, 32.599236, 22.011955>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.676128, 32.435081, 21.958998>,  <40.397995, 32.161491, 21.870735>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.676128, 32.435081, 21.958998> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401111, 0.114573, 0.908836,
		0.596341, -0.720450, 0.354017,
		0.695332, 0.683976, 0.220656,
		40.884727, 32.640274, 22.025194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.833633, 31.996429, 22.522240>,  <40.397995, 32.161491, 21.870735>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.833633, 31.996429, 22.522240> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.809937, 32.394051, 22.485695>,  <40.795719, 32.632622, 22.463768>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.809937, 32.394051, 22.485695>,  <40.833633, 31.996429, 22.522240>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.809937, 32.394051, 22.485695> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329158, 0.066952, 0.941898,
		0.942415, 0.085870, 0.323235,
		-0.059240, 0.994054, -0.091362,
		40.792164, 32.692268, 22.458286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.892403, 32.132935, 23.186569>,  <40.833633, 31.996429, 22.522240>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.892403, 32.132935, 23.186569> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.784405, 32.481518, 23.022785>,  <40.719608, 32.690670, 22.924515>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.784405, 32.481518, 23.022785>,  <40.892403, 32.132935, 23.186569>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.784405, 32.481518, 23.022785> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577420, 0.193759, 0.793123,
		0.770513, 0.450567, 0.450886,
		-0.269992, 0.871462, -0.409460,
		40.703407, 32.742958, 22.899946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.225239, 32.528183, 23.645689>,  <40.892403, 32.132935, 23.186569>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.225239, 32.528183, 23.645689> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.963295, 32.786461, 23.488600>,  <40.806129, 32.941429, 23.394346>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.963295, 32.786461, 23.488600>,  <41.225239, 32.528183, 23.645689>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.963295, 32.786461, 23.488600> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417158, 0.124475, 0.900269,
		0.630186, 0.753379, 0.187844,
		-0.654862, 0.645698, -0.392721,
		40.766838, 32.980171, 23.370783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.206253, 33.085342, 23.982742>,  <41.225239, 32.528183, 23.645689>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.206253, 33.085342, 23.982742> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.846455, 33.101345, 23.808706>,  <40.630573, 33.110947, 23.704285>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.846455, 33.101345, 23.808706>,  <41.206253, 33.085342, 23.982742>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.846455, 33.101345, 23.808706> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434261, 0.027942, 0.900354,
		0.048175, 0.998809, -0.007761,
		-0.899498, 0.040004, -0.435090,
		40.576607, 33.113346, 23.678179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.852760, 33.665718, 24.263985>,  <41.206253, 33.085342, 23.982742>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.852760, 33.665718, 24.263985> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.587357, 33.398113, 24.130016>,  <40.428116, 33.237549, 24.049635>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.587357, 33.398113, 24.130016>,  <40.852760, 33.665718, 24.263985>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.587357, 33.398113, 24.130016> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400149, -0.060917, 0.914423,
		-0.632166, 0.740747, -0.227287,
		-0.663511, -0.669016, -0.334919,
		40.388302, 33.197407, 24.029541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.227852, 33.914658, 24.466400>,  <40.852760, 33.665718, 24.263985>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.227852, 33.914658, 24.466400> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.202290, 33.519741, 24.408194>,  <40.186951, 33.282791, 24.373270>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.202290, 33.519741, 24.408194>,  <40.227852, 33.914658, 24.466400>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.202290, 33.519741, 24.408194> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414143, -0.106427, 0.903968,
		-0.907965, 0.118037, -0.402077,
		-0.063910, -0.987289, -0.145516,
		40.183117, 33.223553, 24.364538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.604122, 33.779289, 24.731478>,  <40.227852, 33.914658, 24.466400>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.604122, 33.779289, 24.731478> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.772659, 33.416584, 24.725210>,  <39.873779, 33.198959, 24.721451>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.772659, 33.416584, 24.725210>,  <39.604122, 33.779289, 24.731478>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.772659, 33.416584, 24.725210> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537769, -0.263716, 0.800786,
		-0.730259, -0.328977, -0.598746,
		0.421339, -0.906768, -0.015667,
		39.899059, 33.144554, 24.720510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.153683, 33.386810, 25.163967>,  <39.604122, 33.779289, 24.731478>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.153683, 33.386810, 25.163967> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.447250, 33.118580, 25.120714>,  <39.623390, 32.957642, 25.094763>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.447250, 33.118580, 25.120714>,  <39.153683, 33.386810, 25.163967>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.447250, 33.118580, 25.120714> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273011, -0.437003, 0.857026,
		-0.621954, -0.599466, -0.503799,
		0.733919, -0.670574, -0.108135,
		39.667427, 32.917408, 25.088274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.922031, 32.839897, 25.412939>,  <39.153683, 33.386810, 25.163967>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.922031, 32.839897, 25.412939> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.313957, 32.763248, 25.435707>,  <39.549114, 32.717258, 25.449368>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.313957, 32.763248, 25.435707>,  <38.922031, 32.839897, 25.412939>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.313957, 32.763248, 25.435707> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146104, -0.492167, 0.858152,
		-0.136423, -0.849149, -0.510230,
		0.979818, -0.191618, 0.056921,
		39.607903, 32.705765, 25.452784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.988445, 32.091831, 25.573566>,  <38.922031, 32.839897, 25.412939>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.988445, 32.091831, 25.573566> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.354477, 32.212967, 25.680088>,  <39.574097, 32.285648, 25.744001>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.354477, 32.212967, 25.680088>,  <38.988445, 32.091831, 25.573566>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.354477, 32.212967, 25.680088> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029872, -0.709452, 0.704121,
		0.402164, -0.636372, -0.658252,
		0.915080, 0.302835, 0.266306,
		39.629002, 32.303818, 25.759979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.287258, 31.509867, 25.788260>,  <38.988445, 32.091831, 25.573566>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.287258, 31.509867, 25.788260> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.525928, 31.788223, 25.948114>,  <39.669132, 31.955236, 26.044027>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.525928, 31.788223, 25.948114>,  <39.287258, 31.509867, 25.788260>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.525928, 31.788223, 25.948114> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137700, -0.579404, 0.803324,
		0.790579, -0.424294, -0.441541,
		0.596677, 0.695892, 0.399639,
		39.704933, 31.996990, 26.068007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.829353, 31.167124, 26.081261>,  <39.287258, 31.509867, 25.788260>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.829353, 31.167124, 26.081261> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.836857, 31.510889, 26.285635>,  <39.841358, 31.717148, 26.408260>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.836857, 31.510889, 26.285635>,  <39.829353, 31.167124, 26.081261>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.836857, 31.510889, 26.285635> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044199, -0.509815, 0.859148,
		0.998847, -0.038698, 0.028423,
		0.018757, 0.859413, 0.510938,
		39.842484, 31.768713, 26.438917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.211201, 31.051979, 26.631107>,  <39.829353, 31.167124, 26.081261>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.211201, 31.051979, 26.631107> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.001194, 31.377216, 26.731697>,  <39.875191, 31.572359, 26.792051>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.001194, 31.377216, 26.731697>,  <40.211201, 31.051979, 26.631107>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.001194, 31.377216, 26.731697> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178834, -0.394269, 0.901427,
		0.832091, 0.428293, 0.352406,
		-0.525018, 0.813091, 0.251474,
		39.843689, 31.621143, 26.807138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.461639, 31.299038, 27.301552>,  <40.211201, 31.051979, 26.631107>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.461639, 31.299038, 27.301552> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.084198, 31.424273, 27.258495>,  <39.857731, 31.499413, 27.232662>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.084198, 31.424273, 27.258495>,  <40.461639, 31.299038, 27.301552>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.084198, 31.424273, 27.258495> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217480, -0.341038, 0.914547,
		0.249622, 0.886381, 0.389895,
		-0.943606, 0.313085, -0.107640,
		39.801117, 31.518198, 27.226204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<42.414497, 31.834148, 32.527786> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.038570, 31.758596, 32.413898>,  <41.813015, 31.713264, 32.345566>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.038570, 31.758596, 32.413898>,  <42.414497, 31.834148, 32.527786>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.038570, 31.758596, 32.413898> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324560, 0.233061, 0.916702,
		-0.106789, 0.953943, -0.280338,
		-0.939817, -0.188880, -0.284724,
		41.756626, 31.701933, 32.328480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.983067, 32.406796, 32.645519>,  <42.414497, 31.834148, 32.527786>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.983067, 32.406796, 32.645519> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.720936, 32.104736, 32.652336>,  <41.563656, 31.923500, 32.656425>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.720936, 32.104736, 32.652336>,  <41.983067, 32.406796, 32.645519>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.720936, 32.104736, 32.652336> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375820, 0.345548, 0.859858,
		-0.655211, 0.557086, -0.510248,
		-0.655330, -0.755150, 0.017043,
		41.524338, 31.878191, 32.657448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.318195, 32.698517, 32.837109>,  <41.983067, 32.406796, 32.645519>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.318195, 32.698517, 32.837109> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.212803, 32.321762, 32.920467>,  <41.149567, 32.095711, 32.970482>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.212803, 32.321762, 32.920467>,  <41.318195, 32.698517, 32.837109>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.212803, 32.321762, 32.920467> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525860, 0.321353, 0.787530,
		-0.808732, 0.097911, -0.579971,
		-0.263483, -0.941884, 0.208401,
		41.133759, 32.039196, 32.982986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.534107, 32.608440, 32.880566>,  <41.318195, 32.698517, 32.837109>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.534107, 32.608440, 32.880566> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.704903, 32.304581, 33.076778>,  <40.807381, 32.122265, 33.194508>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.704903, 32.304581, 33.076778>,  <40.534107, 32.608440, 32.880566>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.704903, 32.304581, 33.076778> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461604, 0.283357, 0.840613,
		-0.777564, -0.585360, -0.229667,
		0.426984, -0.759646, 0.490534,
		40.832996, 32.076687, 33.223938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.952763, 32.213078, 33.314873>,  <40.534107, 32.608440, 32.880566>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.952763, 32.213078, 33.314873> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.305141, 32.106834, 33.471531>,  <40.516567, 32.043087, 33.565525>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.305141, 32.106834, 33.471531>,  <39.952763, 32.213078, 33.314873>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.305141, 32.106834, 33.471531> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334757, 0.235191, 0.912482,
		-0.334476, -0.934953, 0.118275,
		0.880945, -0.265610, 0.391647,
		40.569424, 32.027153, 33.589024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.744617, 31.904453, 33.878876>,  <39.952763, 32.213078, 33.314873>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.744617, 31.904453, 33.878876> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.125721, 32.008465, 33.941650>,  <40.354385, 32.070869, 33.979317>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.125721, 32.008465, 33.941650>,  <39.744617, 31.904453, 33.878876>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.125721, 32.008465, 33.941650> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208216, 0.183045, 0.960802,
		0.221114, -0.948091, 0.228542,
		0.952762, 0.260033, 0.156934,
		40.411549, 32.086472, 33.988731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.862808, 31.589911, 34.492264>,  <39.744617, 31.904453, 33.878876>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.862808, 31.589911, 34.492264> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.138275, 31.878473, 34.463108>,  <40.303555, 32.051609, 34.445614>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.138275, 31.878473, 34.463108>,  <39.862808, 31.589911, 34.492264>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.138275, 31.878473, 34.463108> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242804, 0.324166, 0.914310,
		0.683217, -0.611956, 0.398402,
		0.688666, 0.721406, -0.072890,
		40.344875, 32.094894, 34.441242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.190044, 31.540157, 35.079552>,  <39.862808, 31.589911, 34.492264>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.190044, 31.540157, 35.079552> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.281612, 31.915356, 34.975426>,  <40.336552, 32.140472, 34.912949>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.281612, 31.915356, 34.975426>,  <40.190044, 31.540157, 35.079552>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.281612, 31.915356, 34.975426> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446322, 0.338787, 0.828263,
		0.865097, -0.073419, 0.496202,
		0.228917, 0.937994, -0.260315,
		40.350288, 32.196754, 34.897331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.453815, 31.854181, 35.611851>,  <40.190044, 31.540157, 35.079552>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.453815, 31.854181, 35.611851> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.336456, 32.156620, 35.377846>,  <40.266041, 32.338081, 35.237442>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.336456, 32.156620, 35.377846>,  <40.453815, 31.854181, 35.611851>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.336456, 32.156620, 35.377846> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167207, 0.561924, 0.810113,
		0.941256, 0.335501, -0.038440,
		-0.293394, 0.756096, -0.585012,
		40.248440, 32.383450, 35.202343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.590828, 32.356174, 36.054310>,  <40.453815, 31.854181, 35.611851>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.590828, 32.356174, 36.054310> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.365921, 32.528404, 35.771904>,  <40.230976, 32.631741, 35.602459>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.365921, 32.528404, 35.771904>,  <40.590828, 32.356174, 36.054310>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.365921, 32.528404, 35.771904> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454423, 0.552424, 0.698804,
		0.690908, 0.713746, -0.114947,
		-0.562268, 0.430576, -0.706017,
		40.197239, 32.657578, 35.560101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.616161, 33.112888, 36.205006>,  <40.590828, 32.356174, 36.054310>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.616161, 33.112888, 36.205006> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.285278, 33.036026, 35.993797>,  <40.086750, 32.989906, 35.867073>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.285278, 33.036026, 35.993797>,  <40.616161, 33.112888, 36.205006>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.285278, 33.036026, 35.993797> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532528, 0.567950, 0.627573,
		0.179295, 0.800317, -0.572141,
		-0.827205, -0.192160, -0.528022,
		40.037117, 32.978378, 35.835392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.273392, 33.718777, 36.056171>,  <40.616161, 33.112888, 36.205006>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.273392, 33.718777, 36.056171> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.983551, 33.450336, 35.993462>,  <39.809647, 33.289272, 35.955837>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.983551, 33.450336, 35.993462>,  <40.273392, 33.718777, 36.056171>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.983551, 33.450336, 35.993462> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.648388, 0.586772, 0.485068,
		-0.233539, 0.453131, -0.860309,
		-0.724605, -0.671097, -0.156771,
		39.766171, 33.249008, 35.946430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.768272, 33.784691, 36.604973>,  <40.273392, 33.718777, 36.056171>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.768272, 33.784691, 36.604973> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.593559, 34.106594, 36.444183>,  <40.488731, 34.299736, 36.347710>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.593559, 34.106594, 36.444183>,  <40.768272, 33.784691, 36.604973>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.593559, 34.106594, 36.444183> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.896344, -0.351559, 0.270137,
		0.076078, 0.478296, 0.874897,
		-0.436784, 0.804760, -0.401972,
		40.462524, 34.348022, 36.323593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.404823, 34.029491, 37.245972>,  <40.768272, 33.784691, 36.604973>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.404823, 34.029491, 37.245972> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.295326, 34.125935, 36.873535>,  <40.229630, 34.183800, 36.650074>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.295326, 34.125935, 36.873535>,  <40.404823, 34.029491, 37.245972>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.295326, 34.125935, 36.873535> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.920985, -0.344737, 0.181500,
		-0.277219, 0.907205, 0.316430,
		-0.273743, 0.241112, -0.931091,
		40.213203, 34.198269, 36.594208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.299950, 34.647949, 37.673889>,  <40.404823, 34.029491, 37.245972>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.299950, 34.647949, 37.673889> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.077507, 34.980267, 37.664635>,  <39.944042, 35.179657, 37.659081>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.077507, 34.980267, 37.664635>,  <40.299950, 34.647949, 37.673889>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.077507, 34.980267, 37.664635> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249299, -0.193302, -0.948938,
		-0.792840, -0.521943, 0.314612,
		-0.556106, 0.830789, -0.023138,
		39.910675, 35.229504, 37.657692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.766510, 34.497997, 37.242298>,  <40.299950, 34.647949, 37.673889>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.766510, 34.497997, 37.242298> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.815392, 34.894989, 37.239594>,  <39.844723, 35.133186, 37.237968>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.815392, 34.894989, 37.239594>,  <39.766510, 34.497997, 37.242298>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.815392, 34.894989, 37.239594> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155194, 0.012376, -0.987807,
		-0.980296, 0.121766, 0.155540,
		0.122206, 0.992482, -0.006765,
		39.852055, 35.192734, 37.237564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.185837, 34.842072, 36.828400>,  <39.766510, 34.497997, 37.242298>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.185837, 34.842072, 36.828400> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.450764, 35.141762, 36.827675>,  <39.609718, 35.321575, 36.827240>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.450764, 35.141762, 36.827675>,  <39.185837, 34.842072, 36.828400>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.450764, 35.141762, 36.827675> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140751, 0.122046, -0.982494,
		-0.735887, 0.650974, 0.186287,
		0.662314, 0.749224, -0.001813,
		39.649456, 35.366528, 36.827129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.956299, 35.308987, 36.341328>,  <39.185837, 34.842072, 36.828400>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.956299, 35.308987, 36.341328> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.339462, 35.412643, 36.390739>,  <39.569359, 35.474838, 36.420387>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.339462, 35.412643, 36.390739>,  <38.956299, 35.308987, 36.341328>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.339462, 35.412643, 36.390739> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050259, 0.272283, -0.960904,
		-0.282644, 0.926665, 0.247798,
		0.957907, 0.259140, 0.123532,
		39.626835, 35.490387, 36.427799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.027027, 35.825001, 35.980518>,  <38.956299, 35.308987, 36.341328>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.027027, 35.825001, 35.980518> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.414383, 35.728706, 36.006668>,  <39.646797, 35.670929, 36.022358>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.414383, 35.728706, 36.006668>,  <39.027027, 35.825001, 35.980518>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.414383, 35.728706, 36.006668> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127864, 0.253980, -0.958721,
		0.214197, 0.936771, 0.276732,
		0.968386, -0.240739, 0.065378,
		39.704899, 35.656487, 36.026279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.481472, 36.359180, 35.701637>,  <39.027027, 35.825001, 35.980518>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.481472, 36.359180, 35.701637> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.727730, 36.044350, 35.686172>,  <39.875484, 35.855450, 35.676895>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.727730, 36.044350, 35.686172>,  <39.481472, 36.359180, 35.701637>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.727730, 36.044350, 35.686172> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247156, 0.239442, -0.938926,
		0.748263, 0.568488, 0.341942,
		0.615643, -0.787076, -0.038660,
		39.912422, 35.808228, 35.674576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.139717, 36.621426, 35.579639>,  <39.481472, 36.359180, 35.701637>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.139717, 36.621426, 35.579639> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.096985, 36.245987, 35.448421>,  <40.071346, 36.020721, 35.369690>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.096985, 36.245987, 35.448421>,  <40.139717, 36.621426, 35.579639>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.096985, 36.245987, 35.448421> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138534, 0.312667, -0.939706,
		0.984578, -0.145839, 0.096624,
		-0.106834, -0.938600, -0.328049,
		40.064934, 35.964405, 35.350006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.677116, 36.552231, 35.071827>,  <40.139717, 36.621426, 35.579639>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.677116, 36.552231, 35.071827> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.408470, 36.259235, 35.027298>,  <40.247284, 36.083439, 35.000580>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.408470, 36.259235, 35.027298>,  <40.677116, 36.552231, 35.071827>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.408470, 36.259235, 35.027298> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015262, 0.136548, -0.990516,
		0.740744, -0.666943, -0.080528,
		-0.671614, -0.732490, -0.111327,
		40.206985, 36.039490, 34.993900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.009079, 35.920387, 34.764248>,  <40.677116, 36.552231, 35.071827>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.009079, 35.920387, 34.764248> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.624805, 35.896118, 34.655872>,  <40.394241, 35.881557, 34.590847>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.624805, 35.896118, 34.655872>,  <41.009079, 35.920387, 34.764248>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.624805, 35.896118, 34.655872> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268899, 0.039769, -0.962347,
		0.069165, -0.997365, -0.021890,
		-0.960682, -0.060675, -0.270941,
		40.336601, 35.877918, 34.574589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.919037, 35.322243, 34.318855>,  <41.009079, 35.920387, 34.764248>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.919037, 35.322243, 34.318855> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.600643, 35.550568, 34.238277>,  <40.409607, 35.687565, 34.189930>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.600643, 35.550568, 34.238277>,  <40.919037, 35.322243, 34.318855>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.600643, 35.550568, 34.238277> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129447, -0.164568, -0.977835,
		-0.591313, -0.804418, 0.057104,
		-0.795985, 0.570814, -0.201440,
		40.361847, 35.721813, 34.177845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.622334, 35.002735, 33.781807>,  <40.919037, 35.322243, 34.318855>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.622334, 35.002735, 33.781807> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.454006, 35.364918, 33.759644>,  <40.353008, 35.582226, 33.746346>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.454006, 35.364918, 33.759644>,  <40.622334, 35.002735, 33.781807>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.454006, 35.364918, 33.759644> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002258, -0.060034, -0.998194,
		-0.907143, -0.420182, 0.023219,
		-0.420817, 0.905452, -0.055408,
		40.327763, 35.636555, 33.743023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.226841, 34.957333, 33.231087>,  <40.622334, 35.002735, 33.781807>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.226841, 34.957333, 33.231087> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.307907, 35.343277, 33.297993>,  <40.356548, 35.574844, 33.338139>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.307907, 35.343277, 33.297993>,  <40.226841, 34.957333, 33.231087>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.307907, 35.343277, 33.297993> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053338, 0.159684, -0.985726,
		-0.977795, 0.208693, -0.019101,
		0.202664, 0.964857, 0.167269,
		40.368706, 35.632732, 33.348175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.902191, 35.312309, 32.681412>,  <40.226841, 34.957333, 33.231087>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.902191, 35.312309, 32.681412> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.164387, 35.587902, 32.805107>,  <40.321705, 35.753258, 32.879326>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.164387, 35.587902, 32.805107>,  <39.902191, 35.312309, 32.681412>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.164387, 35.587902, 32.805107> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132028, 0.298627, -0.945194,
		-0.743573, 0.660394, 0.104781,
		0.655490, 0.688987, 0.309241,
		40.361034, 35.794598, 32.897881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.742199, 35.923939, 32.301304>,  <39.902191, 35.312309, 32.681412>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.742199, 35.923939, 32.301304> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.111919, 35.980530, 32.443089>,  <40.333752, 36.014484, 32.528160>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.111919, 35.980530, 32.443089>,  <39.742199, 35.923939, 32.301304>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.111919, 35.980530, 32.443089> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241137, 0.503404, -0.829721,
		-0.295830, 0.852389, 0.431182,
		0.924304, 0.141482, 0.354464,
		40.389210, 36.022976, 32.549427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.327881, 36.536846, 32.157246>,  <39.742199, 35.923939, 32.301304>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.327881, 36.536846, 32.157246> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.996704, 36.616131, 31.947397>,  <38.798000, 36.663700, 31.821487>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.996704, 36.616131, 31.947397>,  <39.327881, 36.536846, 32.157246>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.996704, 36.616131, 31.947397> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559295, -0.222943, 0.798427,
		0.041298, 0.954467, 0.295442,
		-0.827940, 0.198212, -0.524621,
		38.748322, 36.675594, 31.790010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.928295, 36.937710, 32.592770>,  <39.327881, 36.536846, 32.157246>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.928295, 36.937710, 32.592770> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.660828, 36.789219, 32.335064>,  <38.500347, 36.700123, 32.180439>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.660828, 36.789219, 32.335064>,  <38.928295, 36.937710, 32.592770>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.660828, 36.789219, 32.335064> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.677987, -0.051390, 0.733275,
		-0.305321, 0.927119, -0.217325,
		-0.668665, -0.371228, -0.644265,
		38.460228, 36.677849, 32.141785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.237499, 37.213276, 32.775108>,  <38.928295, 36.937710, 32.592770>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.237499, 37.213276, 32.775108> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.174397, 36.881714, 32.560436>,  <38.136536, 36.682777, 32.431633>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.174397, 36.881714, 32.560436>,  <38.237499, 37.213276, 32.775108>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.174397, 36.881714, 32.560436> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.650588, -0.321610, 0.687969,
		-0.742865, 0.457687, -0.488543,
		-0.157754, -0.828909, -0.536679,
		38.127071, 36.633041, 32.399433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.495167, 37.163746, 32.612892>,  <38.237499, 37.213276, 32.775108>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.495167, 37.163746, 32.612892> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.644169, 36.795837, 32.563488>,  <37.733570, 36.575092, 32.533844>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.644169, 36.795837, 32.563488>,  <37.495167, 37.163746, 32.612892>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.644169, 36.795837, 32.563488> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.718384, -0.370043, 0.589062,
		-0.587509, -0.130700, -0.798593,
		0.372504, -0.919775, -0.123511,
		37.755920, 36.519905, 32.526436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.878628, 36.692467, 32.536373>,  <37.495167, 37.163746, 32.612892>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.878628, 36.692467, 32.536373> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.179035, 36.447224, 32.634399>,  <37.359280, 36.300076, 32.693214>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.179035, 36.447224, 32.634399>,  <36.878628, 36.692467, 32.536373>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.179035, 36.447224, 32.634399> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.594094, -0.465509, 0.656014,
		-0.288127, -0.638276, -0.713853,
		0.751023, -0.613111, 0.245070,
		37.404343, 36.263290, 32.707920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.619350, 36.092598, 32.458958>,  <36.878628, 36.692467, 32.536373>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.619350, 36.092598, 32.458958> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.914585, 36.063828, 32.727303>,  <37.091724, 36.046566, 32.888309>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.914585, 36.063828, 32.727303>,  <36.619350, 36.092598, 32.458958>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.914585, 36.063828, 32.727303> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.614078, -0.483564, 0.623758,
		0.279541, -0.872349, -0.401079,
		0.738082, -0.071928, 0.670866,
		37.136009, 36.042248, 32.928562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.573681, 35.428631, 32.692989>,  <36.619350, 36.092598, 32.458958>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.573681, 35.428631, 32.692989> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.773277, 35.637745, 32.969452>,  <36.893036, 35.763214, 33.135330>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.773277, 35.637745, 32.969452>,  <36.573681, 35.428631, 32.692989>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.773277, 35.637745, 32.969452> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419313, -0.552315, 0.720503,
		0.758407, -0.649338, -0.056390,
		0.498995, 0.522789, 0.691155,
		36.922977, 35.794582, 33.176800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.607254, 34.991798, 33.109005>,  <36.573681, 35.428631, 32.692989>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.607254, 34.991798, 33.109005> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.728882, 35.297665, 33.336277>,  <36.801857, 35.481186, 33.472641>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.728882, 35.297665, 33.336277>,  <36.607254, 34.991798, 33.109005>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.728882, 35.297665, 33.336277> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212362, -0.527002, 0.822904,
		0.928679, -0.370878, 0.002142,
		0.304068, 0.764669, 0.568176,
		36.820103, 35.527065, 33.506729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.054745, 34.703403, 33.634983>,  <36.607254, 34.991798, 33.109005>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.054745, 34.703403, 33.634983> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.902096, 35.053104, 33.755013>,  <36.810509, 35.262924, 33.827030>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.902096, 35.053104, 33.755013>,  <37.054745, 34.703403, 33.634983>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.902096, 35.053104, 33.755013> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284208, -0.419901, 0.861922,
		0.879541, 0.243644, 0.408712,
		-0.381620, 0.874255, 0.300075,
		36.787609, 35.315380, 33.845036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.203766, 34.795372, 34.409348>,  <37.054745, 34.703403, 33.634983>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.203766, 34.795372, 34.409348> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.898159, 35.052197, 34.383957>,  <36.714794, 35.206291, 34.368721>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.898159, 35.052197, 34.383957>,  <37.203766, 34.795372, 34.409348>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.898159, 35.052197, 34.383957> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339642, -0.316594, 0.885670,
		0.548561, 0.698228, 0.459956,
		-0.764019, 0.642064, -0.063476,
		36.668953, 35.244816, 34.364914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.101219, 34.993587, 35.057537>,  <37.203766, 34.795372, 34.409348>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.101219, 34.993587, 35.057537> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.748512, 35.054722, 34.879044>,  <36.536888, 35.091400, 34.771946>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.748512, 35.054722, 34.879044>,  <37.101219, 34.993587, 35.057537>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.748512, 35.054722, 34.879044> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470440, -0.353564, 0.808504,
		-0.034208, 0.922841, 0.383660,
		-0.881769, 0.152832, -0.446236,
		36.483982, 35.100571, 34.745174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.746132, 35.244606, 35.520561>,  <37.101219, 34.993587, 35.057537>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.746132, 35.244606, 35.520561> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.462200, 35.113853, 35.270988>,  <36.291840, 35.035404, 35.121243>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.462200, 35.113853, 35.270988>,  <36.746132, 35.244606, 35.520561>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.462200, 35.113853, 35.270988> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356702, -0.597000, 0.718578,
		-0.607377, 0.732626, 0.307169,
		-0.709829, -0.326880, -0.623934,
		36.249252, 35.015789, 35.083809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<40.553707, 38.102322, 28.726309> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.281242, 37.863449, 28.556889>,  <40.117764, 37.720123, 28.455236>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.281242, 37.863449, 28.556889>,  <40.553707, 38.102322, 28.726309>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.281242, 37.863449, 28.556889> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.580995, 0.088891, 0.809038,
		-0.445494, 0.797164, -0.407510,
		-0.681160, -0.597183, -0.423548,
		40.076893, 37.684296, 28.429825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.817604, 38.431911, 28.810333>,  <40.553707, 38.102322, 28.726309>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.817604, 38.431911, 28.810333> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.769596, 38.037548, 28.763733>,  <39.740791, 37.800930, 28.735773>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.769596, 38.037548, 28.763733>,  <39.817604, 38.431911, 28.810333>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.769596, 38.037548, 28.763733> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459480, -0.048857, 0.886844,
		-0.880042, 0.159969, -0.447143,
		-0.120022, -0.985912, -0.116499,
		39.733589, 37.741776, 28.728783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.231071, 38.324772, 29.044996>,  <39.817604, 38.431911, 28.810333>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.231071, 38.324772, 29.044996> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.365204, 37.947964, 29.049936>,  <39.445683, 37.721878, 29.052900>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.365204, 37.947964, 29.049936>,  <39.231071, 38.324772, 29.044996>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.365204, 37.947964, 29.049936> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508002, -0.169761, 0.844461,
		-0.793404, -0.289445, -0.535474,
		0.335328, -0.942021, 0.012350,
		39.465801, 37.665356, 29.053640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.670223, 37.829872, 29.201664>,  <39.231071, 38.324772, 29.044996>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.670223, 37.829872, 29.201664> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.008488, 37.642376, 29.303749>,  <39.211449, 37.529881, 29.365000>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.008488, 37.642376, 29.303749>,  <38.670223, 37.829872, 29.201664>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.008488, 37.642376, 29.303749> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291213, -0.004517, 0.956648,
		-0.447265, -0.883325, -0.140323,
		0.845665, -0.468739, 0.255215,
		39.262188, 37.501755, 29.380314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.379005, 37.260689, 29.585659>,  <38.670223, 37.829872, 29.201664>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.379005, 37.260689, 29.585659> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.766865, 37.271713, 29.682840>,  <38.999580, 37.278328, 29.741150>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.766865, 37.271713, 29.682840>,  <38.379005, 37.260689, 29.585659>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.766865, 37.271713, 29.682840> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241556, -0.046063, 0.969293,
		0.037907, -0.998558, -0.038007,
		0.969646, 0.027562, 0.242954,
		39.057758, 37.279980, 29.755726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.528343, 36.573166, 29.851486>,  <38.379005, 37.260689, 29.585659>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.528343, 36.573166, 29.851486> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.756802, 36.869499, 29.992884>,  <38.893875, 37.047298, 30.077723>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.756802, 36.869499, 29.992884>,  <38.528343, 36.573166, 29.851486>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.756802, 36.869499, 29.992884> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306179, -0.207295, 0.929130,
		0.761608, -0.638903, 0.108431,
		0.571147, 0.740832, 0.353496,
		38.928146, 37.091747, 30.098932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.922951, 36.200089, 30.280262>,  <38.528343, 36.573166, 29.851486>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.922951, 36.200089, 30.280262> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.973396, 36.584576, 30.378376>,  <39.003662, 36.815266, 30.437244>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.973396, 36.584576, 30.378376>,  <38.922951, 36.200089, 30.280262>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.973396, 36.584576, 30.378376> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032490, -0.251131, 0.967408,
		0.991484, -0.114029, -0.062900,
		0.126109, 0.961213, 0.245287,
		39.011230, 36.872940, 30.451962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.255951, 36.124279, 30.831154>,  <38.922951, 36.200089, 30.280262>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.255951, 36.124279, 30.831154> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.089451, 36.485737, 30.871462>,  <38.989552, 36.702614, 30.895647>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.089451, 36.485737, 30.871462>,  <39.255951, 36.124279, 30.831154>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.089451, 36.485737, 30.871462> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349706, -0.261410, 0.899651,
		0.839310, 0.339241, 0.424823,
		-0.416251, 0.903649, 0.100769,
		38.964577, 36.756832, 30.901693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.481678, 36.427879, 31.442963>,  <39.255951, 36.124279, 30.831154>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.481678, 36.427879, 31.442963> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.143288, 36.632626, 31.383209>,  <38.940254, 36.755474, 31.347357>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.143288, 36.632626, 31.383209>,  <39.481678, 36.427879, 31.442963>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.143288, 36.632626, 31.383209> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381897, -0.386128, 0.839678,
		0.372119, 0.767399, 0.522135,
		-0.845980, 0.511862, -0.149382,
		38.889492, 36.786186, 31.338394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.033474, 36.727627, 31.859724>,  <39.481678, 36.427879, 31.442963>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.033474, 36.727627, 31.859724> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.334114, 36.523800, 32.027267>,  <40.514496, 36.401505, 32.127792>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.334114, 36.523800, 32.027267>,  <40.033474, 36.727627, 31.859724>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.334114, 36.523800, 32.027267> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601865, 0.269927, -0.751597,
		0.269927, 0.816995, 0.509567,
		0.751597, -0.509567, 0.418860,
		40.559593, 36.370930, 32.152924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.697926, 37.175884, 31.782949>,  <40.033474, 36.727627, 31.859724>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.697926, 37.175884, 31.782949> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.819561, 36.798260, 31.833994>,  <40.892544, 36.571686, 31.864620>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.819561, 36.798260, 31.833994>,  <40.697926, 37.175884, 31.782949>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.819561, 36.798260, 31.833994> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.680116, 0.121342, -0.722992,
		0.667062, 0.306643, 0.678968,
		0.304088, -0.944058, 0.127610,
		40.910786, 36.515041, 31.872276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.426109, 37.285686, 31.492701>,  <40.697926, 37.175884, 31.782949>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.426109, 37.285686, 31.492701> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.321228, 36.900558, 31.518709>,  <41.258297, 36.669483, 31.534315>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.321228, 36.900558, 31.518709>,  <41.426109, 37.285686, 31.492701>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.321228, 36.900558, 31.518709> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541794, -0.202635, -0.815720,
		0.798566, -0.178659, 0.574781,
		-0.262206, -0.962819, 0.065021,
		41.242565, 36.611713, 31.538216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.048222, 36.918392, 31.431328>,  <41.426109, 37.285686, 31.492701>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.048222, 36.918392, 31.431328> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.740730, 36.684681, 31.327267>,  <41.556236, 36.544456, 31.264830>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.740730, 36.684681, 31.327267>,  <42.048222, 36.918392, 31.431328>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.740730, 36.684681, 31.327267> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428674, -0.168820, -0.887546,
		0.474654, -0.793801, 0.380240,
		-0.768728, -0.584276, -0.260151,
		41.510113, 36.509399, 31.249222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.294796, 36.296402, 31.143147>,  <42.048222, 36.918392, 31.431328>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.294796, 36.296402, 31.143147> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.924534, 36.328686, 30.995279>,  <41.702377, 36.348057, 30.906559>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.924534, 36.328686, 30.995279>,  <42.294796, 36.296402, 31.143147>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.924534, 36.328686, 30.995279> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344838, -0.222192, -0.911986,
		-0.155742, -0.971657, 0.177842,
		-0.925652, 0.080708, -0.369668,
		41.646839, 36.352898, 30.884378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.249825, 35.741531, 30.698950>,  <42.294796, 36.296402, 31.143147>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.249825, 35.741531, 30.698950> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.935848, 35.971386, 30.606298>,  <41.747463, 36.109299, 30.550707>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.935848, 35.971386, 30.606298>,  <42.249825, 35.741531, 30.698950>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.935848, 35.971386, 30.606298> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164207, -0.167537, -0.972094,
		-0.597411, -0.801074, 0.037148,
		-0.784943, 0.574640, -0.231630,
		41.700367, 36.143776, 30.536810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.997696, 35.447422, 30.204689>,  <42.249825, 35.741531, 30.698950>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.997696, 35.447422, 30.204689> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.848774, 35.814507, 30.149258>,  <41.759422, 36.034756, 30.115999>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.848774, 35.814507, 30.149258>,  <41.997696, 35.447422, 30.204689>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.848774, 35.814507, 30.149258> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233159, -0.052044, -0.971045,
		-0.898348, -0.393832, -0.194596,
		-0.372301, 0.917708, -0.138579,
		41.737083, 36.089817, 30.107683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.526779, 35.327419, 29.696093>,  <41.997696, 35.447422, 30.204689>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.526779, 35.327419, 29.696093> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.573513, 35.724678, 29.695086>,  <41.601555, 35.963032, 29.694481>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.573513, 35.724678, 29.695086>,  <41.526779, 35.327419, 29.696093>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.573513, 35.724678, 29.695086> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364782, -0.045270, -0.929992,
		-0.923733, 0.107740, -0.367572,
		0.116837, 0.993148, -0.002516,
		41.608562, 36.022621, 29.694330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.296902, 35.526817, 29.082596>,  <41.526779, 35.327419, 29.696093>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.296902, 35.526817, 29.082596> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.492973, 35.859699, 29.186249>,  <41.610619, 36.059429, 29.248442>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.492973, 35.859699, 29.186249>,  <41.296902, 35.526817, 29.082596>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.492973, 35.859699, 29.186249> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258986, 0.144812, -0.954964,
		-0.832255, 0.535218, -0.144546,
		0.490182, 0.832208, 0.259134,
		41.640030, 36.109364, 29.263988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.091541, 36.042442, 28.642199>,  <41.296902, 35.526817, 29.082596>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.091541, 36.042442, 28.642199> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.449493, 36.154186, 28.781420>,  <41.664265, 36.221233, 28.864952>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.449493, 36.154186, 28.781420>,  <41.091541, 36.042442, 28.642199>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.449493, 36.154186, 28.781420> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308374, 0.176713, -0.934708,
		-0.322629, 0.943784, 0.071989,
		0.894884, 0.279364, 0.348051,
		41.717957, 36.237995, 28.885836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.207199, 36.658550, 28.266642>,  <41.091541, 36.042442, 28.642199>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.207199, 36.658550, 28.266642> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.537788, 36.490746, 28.416811>,  <41.736141, 36.390060, 28.506912>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.537788, 36.490746, 28.416811>,  <41.207199, 36.658550, 28.266642>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.537788, 36.490746, 28.416811> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484911, 0.191695, -0.853296,
		0.286003, 0.887277, 0.361859,
		0.826477, -0.419514, 0.375425,
		41.785732, 36.364891, 28.529438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.775631, 37.044350, 28.035328>,  <41.207199, 36.658550, 28.266642>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.775631, 37.044350, 28.035328> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.996758, 36.721672, 28.118885>,  <42.129433, 36.528065, 28.169020>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.996758, 36.721672, 28.118885>,  <41.775631, 37.044350, 28.035328>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.996758, 36.721672, 28.118885> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468234, 0.093347, -0.878660,
		0.689309, 0.583552, 0.429325,
		0.552821, -0.806692, 0.208894,
		42.162605, 36.479664, 28.181553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.431438, 37.248886, 27.864267>,  <41.775631, 37.044350, 28.035328>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.431438, 37.248886, 27.864267> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.466980, 36.851093, 27.886557>,  <42.488304, 36.612415, 27.899929>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.466980, 36.851093, 27.886557>,  <42.431438, 37.248886, 27.864267>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.466980, 36.851093, 27.886557> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541081, 0.001222, -0.840970,
		0.836264, 0.104870, 0.538205,
		0.088850, -0.994485, 0.055721,
		42.493633, 36.552750, 27.903273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.162758, 37.094532, 27.600544>,  <42.431438, 37.248886, 27.864267>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.162758, 37.094532, 27.600544> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.961224, 36.751846, 27.556387>,  <42.840302, 36.546234, 27.529892>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.961224, 36.751846, 27.556387>,  <43.162758, 37.094532, 27.600544>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.961224, 36.751846, 27.556387> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479017, -0.170758, -0.861037,
		0.718814, -0.486701, 0.496416,
		-0.503834, -0.856717, -0.110395,
		42.810074, 36.494831, 27.523268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<36.863697, 31.789896, 25.070742> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.975822, 32.159111, 25.176134>,  <37.043098, 32.380642, 25.239370>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.975822, 32.159111, 25.176134>,  <36.863697, 31.789896, 25.070742>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.975822, 32.159111, 25.176134> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130569, -0.235271, 0.963119,
		0.950987, -0.304376, 0.054571,
		0.280312, 0.923040, 0.263482,
		37.059917, 32.436024, 25.255178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.329735, 31.767584, 25.553213>,  <36.863697, 31.789896, 25.070742>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.329735, 31.767584, 25.553213> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.194466, 32.141647, 25.595390>,  <37.113304, 32.366085, 25.620697>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.194466, 32.141647, 25.595390>,  <37.329735, 31.767584, 25.553213>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.194466, 32.141647, 25.595390> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078265, -0.139602, 0.987110,
		0.937825, 0.325558, 0.120399,
		-0.338169, 0.935160, 0.105442,
		37.093014, 32.422195, 25.627024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.682621, 32.033852, 26.035013>,  <37.329735, 31.767584, 25.553213>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.682621, 32.033852, 26.035013> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.338509, 32.237686, 26.041080>,  <37.132042, 32.359985, 26.044720>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.338509, 32.237686, 26.041080>,  <37.682621, 32.033852, 26.035013>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.338509, 32.237686, 26.041080> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083463, -0.170124, 0.981882,
		0.502935, 0.843433, 0.188887,
		-0.860285, 0.509587, 0.015166,
		37.080421, 32.390564, 26.045630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.781307, 32.371586, 26.733603>,  <37.682621, 32.033852, 26.035013>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.781307, 32.371586, 26.733603> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.399017, 32.432922, 26.633141>,  <37.169643, 32.469727, 26.572863>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.399017, 32.432922, 26.633141>,  <37.781307, 32.371586, 26.733603>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.399017, 32.432922, 26.633141> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268346, -0.103896, 0.957704,
		0.120764, 0.982696, 0.140445,
		-0.955723, 0.153344, -0.251156,
		37.112301, 32.478924, 26.557795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.520519, 32.851460, 27.215706>,  <37.781307, 32.371586, 26.733603>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.520519, 32.851460, 27.215706> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.213139, 32.639431, 27.072311>,  <37.028709, 32.512215, 26.986275>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.213139, 32.639431, 27.072311>,  <37.520519, 32.851460, 27.215706>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.213139, 32.639431, 27.072311> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299831, -0.196655, 0.933503,
		-0.565321, 0.824834, -0.007812,
		-0.768449, -0.530072, -0.358484,
		36.982605, 32.480408, 26.964766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.959808, 33.165459, 27.583467>,  <37.520519, 32.851460, 27.215706>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.959808, 33.165459, 27.583467> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.856487, 32.799446, 27.459538>,  <36.794495, 32.579838, 27.385180>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.856487, 32.799446, 27.459538>,  <36.959808, 33.165459, 27.583467>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.856487, 32.799446, 27.459538> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376476, -0.200011, 0.904578,
		-0.889689, 0.350296, -0.292825,
		-0.258302, -0.915034, -0.309826,
		36.778996, 32.524937, 27.366590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.271107, 33.200130, 27.643513>,  <36.959808, 33.165459, 27.583467>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.271107, 33.200130, 27.643513> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.361420, 32.811840, 27.676266>,  <36.415607, 32.578865, 27.695917>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.361420, 32.811840, 27.676266>,  <36.271107, 33.200130, 27.643513>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.361420, 32.811840, 27.676266> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494544, -0.041798, 0.868147,
		-0.839314, -0.236508, -0.489506,
		0.225785, -0.970730, 0.081882,
		36.429153, 32.520622, 27.700830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.992191, 33.034687, 28.225080>,  <36.271107, 33.200130, 27.643513>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.992191, 33.034687, 28.225080> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.153069, 32.675758, 28.152357>,  <36.249596, 32.460400, 28.108723>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.153069, 32.675758, 28.152357>,  <35.992191, 33.034687, 28.225080>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.153069, 32.675758, 28.152357> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126474, -0.251128, 0.959656,
		-0.906778, -0.362970, -0.214489,
		0.402191, -0.897322, -0.181811,
		36.273727, 32.406563, 28.097815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.513920, 32.572788, 28.531773>,  <35.992191, 33.034687, 28.225080>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.513920, 32.572788, 28.531773> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.863373, 32.378834, 28.515533>,  <36.073044, 32.262463, 28.505791>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.863373, 32.378834, 28.515533>,  <35.513920, 32.572788, 28.531773>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.863373, 32.378834, 28.515533> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129362, -0.311885, 0.941272,
		-0.469073, -0.817075, -0.335199,
		0.873634, -0.484887, -0.040599,
		36.125462, 32.233368, 28.503353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.372486, 31.855906, 28.757757>,  <35.513920, 32.572788, 28.531773>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.372486, 31.855906, 28.757757> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.761086, 31.940096, 28.801363>,  <35.994247, 31.990610, 28.827526>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.761086, 31.940096, 28.801363>,  <35.372486, 31.855906, 28.757757>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.761086, 31.940096, 28.801363> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018439, -0.525619, 0.850520,
		0.236315, -0.824271, -0.514521,
		0.971501, 0.210478, 0.109013,
		36.052536, 32.003239, 28.834066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.590675, 31.311800, 29.158628>,  <35.372486, 31.855906, 28.757757>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.590675, 31.311800, 29.158628> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.899147, 31.560387, 29.213854>,  <36.084229, 31.709539, 29.246988>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.899147, 31.560387, 29.213854>,  <35.590675, 31.311800, 29.158628>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.899147, 31.560387, 29.213854> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033051, -0.255660, 0.966202,
		0.635761, -0.740550, -0.217700,
		0.771178, 0.621469, 0.138063,
		36.130501, 31.746828, 29.255272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.322254, 30.901545, 29.350571>,  <35.590675, 31.311800, 29.158628>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.322254, 30.901545, 29.350571> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.336052, 31.280544, 29.477726>,  <36.344330, 31.507944, 29.554020>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.336052, 31.280544, 29.477726>,  <36.322254, 30.901545, 29.350571>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.336052, 31.280544, 29.477726> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118870, -0.319711, 0.940029,
		0.992311, 0.005365, -0.123656,
		0.034491, 0.947500, 0.317890,
		36.346397, 31.564795, 29.573093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.850403, 30.929691, 29.867260>,  <36.322254, 30.901545, 29.350571>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.850403, 30.929691, 29.867260> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.668659, 31.281904, 29.921263>,  <36.559612, 31.493233, 29.953665>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.668659, 31.281904, 29.921263>,  <36.850403, 30.929691, 29.867260>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.668659, 31.281904, 29.921263> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069635, -0.115982, 0.990807,
		0.888095, 0.459579, -0.008619,
		-0.454354, 0.880531, 0.135005,
		36.532352, 31.546064, 29.961765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.056156, 30.946573, 30.462721>,  <36.850403, 30.929691, 29.867260>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.056156, 30.946573, 30.462721> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.758820, 31.213404, 30.442919>,  <36.580418, 31.373503, 30.431038>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.758820, 31.213404, 30.442919>,  <37.056156, 30.946573, 30.462721>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.758820, 31.213404, 30.442919> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238890, -0.195614, 0.951140,
		0.624798, 0.718850, 0.304766,
		-0.743343, 0.667076, -0.049507,
		36.535816, 31.413527, 30.428066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.587105, 31.561375, 30.676252>,  <37.056156, 30.946573, 30.462721>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.587105, 31.561375, 30.676252> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.953522, 31.414814, 30.741503>,  <38.173374, 31.326878, 30.780653>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.953522, 31.414814, 30.741503>,  <37.587105, 31.561375, 30.676252>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.953522, 31.414814, 30.741503> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271093, 0.265900, -0.925098,
		0.295582, 0.891654, 0.342905,
		0.916046, -0.366402, 0.163126,
		38.228336, 31.304893, 30.790442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.028587, 32.045006, 30.347445>,  <37.587105, 31.561375, 30.676252>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.028587, 32.045006, 30.347445> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.257526, 31.718485, 30.378580>,  <38.394890, 31.522572, 30.397261>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.257526, 31.718485, 30.378580>,  <38.028587, 32.045006, 30.347445>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.257526, 31.718485, 30.378580> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372703, 0.174414, -0.911412,
		0.730416, 0.550658, 0.404065,
		0.572351, -0.816306, 0.077837,
		38.429234, 31.473593, 30.401932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.645897, 32.216587, 30.043726>,  <38.028587, 32.045006, 30.347445>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.645897, 32.216587, 30.043726> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.663639, 31.817108, 30.033567>,  <38.674282, 31.577421, 30.027473>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.663639, 31.817108, 30.033567>,  <38.645897, 32.216587, 30.043726>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.663639, 31.817108, 30.033567> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519585, 0.044772, -0.853245,
		0.853267, 0.024649, 0.520892,
		0.044353, -0.998693, -0.025395,
		38.676945, 31.517500, 30.025949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.368607, 31.985401, 29.766102>,  <38.645897, 32.216587, 30.043726>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.368607, 31.985401, 29.766102> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.143673, 31.655588, 29.741016>,  <39.008713, 31.457701, 29.725965>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.143673, 31.655588, 29.741016>,  <39.368607, 31.985401, 29.766102>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.143673, 31.655588, 29.741016> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302003, -0.134182, -0.943816,
		0.769792, -0.549675, 0.324466,
		-0.562330, -0.824532, -0.062712,
		38.974976, 31.408228, 29.722202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.801544, 31.442171, 29.545704>,  <39.368607, 31.985401, 29.766102>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.801544, 31.442171, 29.545704> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.425716, 31.328476, 29.469372>,  <39.200218, 31.260258, 29.423573>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.425716, 31.328476, 29.469372>,  <39.801544, 31.442171, 29.545704>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.425716, 31.328476, 29.469372> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268757, -0.267083, -0.925438,
		0.212079, -0.920801, 0.327334,
		-0.939570, -0.284240, -0.190829,
		39.143845, 31.243204, 29.412123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.901825, 30.858538, 29.253727>,  <39.801544, 31.442171, 29.545704>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.901825, 30.858538, 29.253727> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.528629, 30.936148, 29.132477>,  <39.304710, 30.982714, 29.059727>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.528629, 30.936148, 29.132477>,  <39.901825, 30.858538, 29.253727>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.528629, 30.936148, 29.132477> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303159, -0.030247, -0.952460,
		-0.193970, -0.980530, -0.030601,
		-0.932990, 0.194025, -0.303123,
		39.248734, 30.994354, 29.041540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.713257, 30.417294, 28.647142>,  <39.901825, 30.858538, 29.253727>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.713257, 30.417294, 28.647142> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.452930, 30.719421, 28.616325>,  <39.296734, 30.900698, 28.597836>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.452930, 30.719421, 28.616325>,  <39.713257, 30.417294, 28.647142>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.452930, 30.719421, 28.616325> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351741, 0.210024, -0.912232,
		-0.672847, -0.620791, -0.402363,
		-0.650811, 0.755320, -0.077044,
		39.257687, 30.946018, 28.593212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.421024, 30.376297, 28.016460>,  <39.713257, 30.417294, 28.647142>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.421024, 30.376297, 28.016460> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.352264, 30.762728, 28.093550>,  <39.311008, 30.994587, 28.139803>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.352264, 30.762728, 28.093550>,  <39.421024, 30.376297, 28.016460>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.352264, 30.762728, 28.093550> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153563, 0.219521, -0.963446,
		-0.973072, -0.136021, -0.186090,
		-0.171899, 0.966079, 0.192722,
		39.300694, 31.052551, 28.151367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.976494, 30.612175, 27.497578>,  <39.421024, 30.376297, 28.016460>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.976494, 30.612175, 27.497578> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.128464, 30.948399, 27.652040>,  <39.219646, 31.150133, 27.744719>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.128464, 30.948399, 27.652040>,  <38.976494, 30.612175, 27.497578>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.128464, 30.948399, 27.652040> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226161, 0.320383, -0.919894,
		-0.896944, 0.436824, -0.068380,
		0.379924, 0.840559, 0.386158,
		39.242439, 31.200567, 27.767887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.530266, 31.295994, 27.206696>,  <38.976494, 30.612175, 27.497578>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.530266, 31.295994, 27.206696> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.906464, 31.376831, 27.315968>,  <39.132183, 31.425333, 27.381531>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.906464, 31.376831, 27.315968>,  <38.530266, 31.295994, 27.206696>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.906464, 31.376831, 27.315968> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129128, 0.531069, -0.837431,
		-0.314314, 0.822876, 0.473373,
		0.940496, 0.202091, 0.273179,
		39.188614, 31.437458, 27.397921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.631184, 32.130199, 27.110559>,  <38.530266, 31.295994, 27.206696>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.631184, 32.130199, 27.110559> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.985359, 31.950735, 27.159048>,  <39.197865, 31.843056, 27.188141>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.985359, 31.950735, 27.159048>,  <38.631184, 32.130199, 27.110559>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.985359, 31.950735, 27.159048> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354673, 0.483773, -0.800107,
		0.300332, 0.751443, 0.587481,
		0.885442, -0.448661, 0.121224,
		39.250992, 31.816137, 27.195415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.071224, 32.651390, 27.043816>,  <38.631184, 32.130199, 27.110559>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.071224, 32.651390, 27.043816> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.308952, 32.334011, 26.991306>,  <39.451588, 32.143585, 26.959801>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.308952, 32.334011, 26.991306>,  <39.071224, 32.651390, 27.043816>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.308952, 32.334011, 26.991306> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444367, 0.460027, -0.768708,
		0.670318, 0.398521, 0.625983,
		0.594316, -0.793446, -0.131274,
		39.487247, 32.095978, 26.951923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.655510, 32.932709, 26.952633>,  <39.071224, 32.651390, 27.043816>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.655510, 32.932709, 26.952633> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.712490, 32.572075, 26.789244>,  <39.746677, 32.355694, 26.691210>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.712490, 32.572075, 26.789244>,  <39.655510, 32.932709, 26.952633>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.712490, 32.572075, 26.789244> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472771, 0.424541, -0.772174,
		0.869595, -0.083117, 0.486720,
		0.142451, -0.901585, -0.408474,
		39.755226, 32.301598, 26.666702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.243698, 33.040020, 26.718710>,  <39.655510, 32.932709, 26.952633>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.243698, 33.040020, 26.718710> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.079498, 32.738510, 26.513453>,  <39.980980, 32.557606, 26.390297>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.079498, 32.738510, 26.513453>,  <40.243698, 33.040020, 26.718710>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.079498, 32.738510, 26.513453> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327173, 0.403523, -0.854475,
		0.851145, -0.518649, 0.080968,
		-0.410500, -0.753772, -0.513144,
		39.956348, 32.512379, 26.359509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.963974, 32.959999, 26.760572>,  <40.243698, 33.040020, 26.718710>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.963974, 32.959999, 26.760572> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.300701, 33.100578, 26.924440>,  <41.502735, 33.184925, 27.022762>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.300701, 33.100578, 26.924440>,  <40.963974, 32.959999, 26.760572>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.300701, 33.100578, 26.924440> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225303, -0.460910, 0.858371,
		0.490498, -0.814889, -0.308817,
		0.841814, 0.351452, 0.409672,
		41.553246, 33.206013, 27.047342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.229546, 32.392761, 27.203087>,  <40.963974, 32.959999, 26.760572>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.229546, 32.392761, 27.203087> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.399742, 32.726955, 27.342178>,  <41.501862, 32.927471, 27.425632>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.399742, 32.726955, 27.342178>,  <41.229546, 32.392761, 27.203087>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.399742, 32.726955, 27.342178> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080863, -0.417812, 0.904928,
		0.901341, -0.356923, -0.245336,
		0.425493, 0.835487, 0.347730,
		41.527390, 32.977600, 27.446497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.743984, 32.135925, 27.534819>,  <41.229546, 32.392761, 27.203087>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.743984, 32.135925, 27.534819> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.744938, 32.505383, 27.688112>,  <41.745510, 32.727058, 27.780088>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.744938, 32.505383, 27.688112>,  <41.743984, 32.135925, 27.534819>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.744938, 32.505383, 27.688112> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028877, -0.383140, 0.923239,
		0.999580, 0.008864, -0.027586,
		0.002386, 0.923648, 0.383235,
		41.745655, 32.782478, 27.803083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.313492, 32.229240, 27.902739>,  <41.743984, 32.135925, 27.534819>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.313492, 32.229240, 27.902739> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.066757, 32.503208, 28.057861>,  <41.918716, 32.667591, 28.150934>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.066757, 32.503208, 28.057861>,  <42.313492, 32.229240, 27.902739>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.066757, 32.503208, 28.057861> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293730, -0.256801, 0.920747,
		0.730231, 0.681860, -0.042779,
		-0.616835, 0.684923, 0.387807,
		41.881706, 32.708687, 28.174204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.745632, 32.673229, 28.372709>,  <42.313492, 32.229240, 27.902739>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.745632, 32.673229, 28.372709> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.357052, 32.684261, 28.466965>,  <42.123905, 32.690880, 28.523518>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.357052, 32.684261, 28.466965>,  <42.745632, 32.673229, 28.372709>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.357052, 32.684261, 28.466965> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221488, -0.250512, 0.942437,
		0.085021, 0.967720, 0.237252,
		-0.971450, 0.027579, 0.235637,
		42.065617, 32.692535, 28.537657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.702747, 32.888584, 29.132093>,  <42.745632, 32.673229, 28.372709>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.702747, 32.888584, 29.132093> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.342793, 32.743160, 29.035744>,  <42.126820, 32.655907, 28.977934>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.342793, 32.743160, 29.035744>,  <42.702747, 32.888584, 29.132093>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.342793, 32.743160, 29.035744> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117659, -0.329452, 0.936812,
		-0.419942, 0.871371, 0.253696,
		-0.899892, -0.363557, -0.240875,
		42.072826, 32.634094, 28.963482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.144402, 33.083878, 29.669794>,  <42.702747, 32.888584, 29.132093>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.144402, 33.083878, 29.669794> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.023720, 32.752529, 29.480995>,  <41.951309, 32.553722, 29.367716>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.023720, 32.752529, 29.480995>,  <42.144402, 33.083878, 29.669794>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.023720, 32.752529, 29.480995> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173996, -0.438910, 0.881523,
		-0.937389, 0.348087, -0.011710,
		-0.301707, -0.828368, -0.471995,
		41.933208, 32.504017, 29.339397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.433617, 32.873421, 29.984104>,  <42.144402, 33.083878, 29.669794>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.433617, 32.873421, 29.984104> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.561924, 32.540668, 29.802958>,  <41.638908, 32.341019, 29.694269>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.561924, 32.540668, 29.802958>,  <41.433617, 32.873421, 29.984104>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.561924, 32.540668, 29.802958> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220711, -0.530617, 0.818372,
		-0.921084, -0.162553, -0.353809,
		0.320765, -0.831879, -0.452866,
		41.658154, 32.291103, 29.667097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.926338, 32.476437, 30.163254>,  <41.433617, 32.873421, 29.984104>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.926338, 32.476437, 30.163254> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.242485, 32.251759, 30.065422>,  <41.432175, 32.116951, 30.006723>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.242485, 32.251759, 30.065422>,  <40.926338, 32.476437, 30.163254>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.242485, 32.251759, 30.065422> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113828, -0.526918, 0.842259,
		-0.601965, -0.637855, -0.480395,
		0.790368, -0.561693, -0.244581,
		41.479595, 32.083252, 29.992048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.683323, 31.817759, 30.346977>,  <40.926338, 32.476437, 30.163254>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.683323, 31.817759, 30.346977> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.082470, 31.793371, 30.337620>,  <41.321957, 31.778740, 30.332005>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.082470, 31.793371, 30.337620>,  <40.683323, 31.817759, 30.346977>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.082470, 31.793371, 30.337620> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011077, -0.511082, 0.859461,
		-0.064355, -0.857367, -0.510666,
		0.997865, -0.060967, -0.023394,
		41.381828, 31.775082, 30.330601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.867676, 31.096706, 30.419275>,  <40.683323, 31.817759, 30.346977>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.867676, 31.096706, 30.419275> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.186150, 31.310297, 30.533085>,  <41.377235, 31.438452, 30.601372>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.186150, 31.310297, 30.533085>,  <40.867676, 31.096706, 30.419275>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.186150, 31.310297, 30.533085> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004407, -0.475358, 0.879782,
		0.605035, -0.699217, -0.380827,
		0.796187, 0.533977, 0.284526,
		41.425007, 31.470490, 30.618443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.311756, 30.628736, 30.790424>,  <40.867676, 31.096706, 30.419275>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.311756, 30.628736, 30.790424> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.422791, 30.999567, 30.891201>,  <41.489410, 31.222065, 30.951666>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.422791, 30.999567, 30.891201>,  <41.311756, 30.628736, 30.790424>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.422791, 30.999567, 30.891201> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065292, -0.243434, 0.967717,
		0.958479, -0.285078, -0.007044,
		0.277589, 0.927076, 0.251939,
		41.506069, 31.277691, 30.966784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.840176, 30.537037, 31.277891>,  <41.311756, 30.628736, 30.790424>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.840176, 30.537037, 31.277891> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.685318, 30.902149, 31.329973>,  <41.592403, 31.121216, 31.361223>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.685318, 30.902149, 31.329973>,  <41.840176, 30.537037, 31.277891>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.685318, 30.902149, 31.329973> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126934, -0.087111, 0.988079,
		0.913239, 0.399058, -0.082138,
		-0.387146, 0.912778, 0.130207,
		41.569176, 31.175983, 31.369036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.236900, 30.765230, 31.847502>,  <41.840176, 30.537037, 31.277891>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.236900, 30.765230, 31.847502> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.928596, 31.019682, 31.833248>,  <41.743614, 31.172352, 31.824696>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.928596, 31.019682, 31.833248>,  <42.236900, 30.765230, 31.847502>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.928596, 31.019682, 31.833248> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011349, 0.069626, 0.997509,
		0.637024, 0.768436, -0.060884,
		-0.770760, 0.636128, -0.035632,
		41.697369, 31.210520, 31.822559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<43.750126, 36.567753, 27.453413> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.399906, 36.402271, 27.353600>,  <43.189774, 36.302982, 27.293711>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.399906, 36.402271, 27.353600>,  <43.750126, 36.567753, 27.453413>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.399906, 36.402271, 27.353600> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416904, -0.385950, -0.822942,
		0.244145, -0.824557, 0.510391,
		-0.875548, -0.413701, -0.249533,
		43.137241, 36.278160, 27.278740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.839622, 35.861526, 27.340492>,  <43.750126, 36.567753, 27.453413>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.839622, 35.861526, 27.340492> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.519855, 35.974270, 27.128271>,  <43.327995, 36.041916, 27.000938>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.519855, 35.974270, 27.128271>,  <43.839622, 35.861526, 27.340492>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.519855, 35.974270, 27.128271> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395378, -0.418082, -0.817853,
		-0.452338, -0.863574, 0.222779,
		-0.799416, 0.281865, -0.530552,
		43.280029, 36.058826, 26.969107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.618755, 35.278324, 26.859249>,  <43.839622, 35.861526, 27.340492>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.618755, 35.278324, 26.859249> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.457932, 35.611267, 26.706656>,  <43.361439, 35.811031, 26.615099>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.457932, 35.611267, 26.706656>,  <43.618755, 35.278324, 26.859249>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.457932, 35.611267, 26.706656> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384158, -0.224850, -0.895469,
		-0.831128, -0.506580, -0.229355,
		-0.402056, 0.832358, -0.381486,
		43.337315, 35.860973, 26.592209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.244537, 35.157619, 26.206640>,  <43.618755, 35.278324, 26.859249>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.244537, 35.157619, 26.206640> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.326111, 35.548676, 26.186092>,  <43.375053, 35.783310, 26.173763>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.326111, 35.548676, 26.186092>,  <43.244537, 35.157619, 26.206640>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.326111, 35.548676, 26.186092> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326913, -0.117464, -0.937726,
		-0.922789, 0.174438, -0.343557,
		0.203930, 0.977637, -0.051368,
		43.387291, 35.841965, 26.170681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.919872, 35.409050, 25.586355>,  <43.244537, 35.157619, 26.206640>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.919872, 35.409050, 25.586355> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.173409, 35.698452, 25.695745>,  <43.325531, 35.872093, 25.761379>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.173409, 35.698452, 25.695745>,  <42.919872, 35.409050, 25.586355>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.173409, 35.698452, 25.695745> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363734, 0.033214, -0.930911,
		-0.682598, 0.689524, -0.242109,
		0.633844, 0.723501, 0.273475,
		43.363564, 35.915501, 25.777788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.912228, 35.915207, 25.052553>,  <42.919872, 35.409050, 25.586355>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.912228, 35.915207, 25.052553> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.255268, 36.021694, 25.228577>,  <43.461090, 36.085587, 25.334190>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.255268, 36.021694, 25.228577>,  <42.912228, 35.915207, 25.052553>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.255268, 36.021694, 25.228577> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390914, 0.218628, -0.894085,
		-0.334233, 0.938791, 0.083425,
		0.857598, 0.266221, 0.440059,
		43.512547, 36.101559, 25.360594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.140717, 36.626972, 24.777895>,  <42.912228, 35.915207, 25.052553>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.140717, 36.626972, 24.777895> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.467888, 36.471798, 24.947840>,  <43.664188, 36.378693, 25.049807>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.467888, 36.471798, 24.947840>,  <43.140717, 36.626972, 24.777895>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.467888, 36.471798, 24.947840> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536540, 0.247777, -0.806679,
		0.207666, 0.887758, 0.410804,
		0.817924, -0.387933, 0.424862,
		43.713264, 36.355419, 25.075298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.857201, 37.089840, 24.763456>,  <43.140717, 36.626972, 24.777895>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.857201, 37.089840, 24.763456> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.932415, 36.697067, 24.755001>,  <43.977543, 36.461403, 24.749928>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.932415, 36.697067, 24.755001>,  <43.857201, 37.089840, 24.763456>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.932415, 36.697067, 24.755001> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508949, 0.115824, -0.852969,
		0.840008, 0.149633, 0.521533,
		0.188038, -0.981934, -0.021138,
		43.988827, 36.402489, 24.748659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.506557, 37.075565, 24.379580>,  <43.857201, 37.089840, 24.763456>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.506557, 37.075565, 24.379580> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.375965, 36.697575, 24.371359>,  <44.297611, 36.470779, 24.366426>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.375965, 36.697575, 24.371359>,  <44.506557, 37.075565, 24.379580>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.375965, 36.697575, 24.371359> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439405, -0.132485, -0.888466,
		0.836860, -0.299097, 0.458483,
		-0.326479, -0.944981, -0.020553,
		44.278023, 36.414082, 24.365192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.054039, 36.785606, 24.121742>,  <44.506557, 37.075565, 24.379580>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.054039, 36.785606, 24.121742> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.747047, 36.532082, 24.083252>,  <44.562851, 36.379967, 24.060158>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.747047, 36.532082, 24.083252>,  <45.054039, 36.785606, 24.121742>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.747047, 36.532082, 24.083252> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362338, -0.305040, -0.880717,
		0.528856, -0.710797, 0.463765,
		-0.767478, -0.633812, -0.096227,
		44.516804, 36.341938, 24.054384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.355576, 36.173470, 23.753525>,  <45.054039, 36.785606, 24.121742>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.355576, 36.173470, 23.753525> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.959049, 36.130032, 23.723850>,  <44.721134, 36.103970, 23.706045>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.959049, 36.130032, 23.723850>,  <45.355576, 36.173470, 23.753525>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.959049, 36.130032, 23.723850> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106998, -0.337941, -0.935066,
		0.076470, -0.934882, 0.346625,
		-0.991314, -0.108592, -0.074188,
		44.661655, 36.097454, 23.701593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.288990, 35.542305, 23.416315>,  <45.355576, 36.173470, 23.753525>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.288990, 35.542305, 23.416315> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.966434, 35.773491, 23.366217>,  <44.772900, 35.912201, 23.336159>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.966434, 35.773491, 23.366217>,  <45.288990, 35.542305, 23.416315>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.966434, 35.773491, 23.366217> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060274, -0.130355, -0.989634,
		-0.588301, -0.805582, 0.070281,
		-0.806393, 0.577966, -0.125244,
		44.724518, 35.946880, 23.328644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.777256, 35.153454, 23.143530>,  <45.288990, 35.542305, 23.416315>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.777256, 35.153454, 23.143530> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.745811, 35.525398, 22.999765>,  <44.726944, 35.748566, 22.913507>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.745811, 35.525398, 22.999765>,  <44.777256, 35.153454, 23.143530>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.745811, 35.525398, 22.999765> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267783, -0.327578, -0.906082,
		-0.960266, -0.167476, -0.223249,
		-0.078616, 0.929862, -0.359409,
		44.722225, 35.804356, 22.891943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.391972, 35.195168, 22.461439>,  <44.777256, 35.153454, 23.143530>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.391972, 35.195168, 22.461439> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.576283, 35.547699, 22.419609>,  <44.686871, 35.759220, 22.394512>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.576283, 35.547699, 22.419609>,  <44.391972, 35.195168, 22.461439>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.576283, 35.547699, 22.419609> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177571, -0.206993, -0.962093,
		-0.869569, 0.424744, -0.251877,
		0.460780, 0.881332, -0.104573,
		44.714516, 35.812099, 22.388237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.208843, 34.828854, 21.872780>,  <44.391972, 35.195168, 22.461439>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.208843, 34.828854, 21.872780> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.187042, 34.430408, 21.900454>,  <44.173962, 34.191341, 21.917059>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.187042, 34.430408, 21.900454>,  <44.208843, 34.828854, 21.872780>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.187042, 34.430408, 21.900454> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404227, 0.085370, 0.910666,
		-0.913033, 0.021670, -0.407309,
		-0.054506, -0.996114, 0.069186,
		44.170689, 34.131573, 21.921209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.618660, 34.816032, 22.280344>,  <44.208843, 34.828854, 21.872780>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.618660, 34.816032, 22.280344> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.747566, 34.438492, 22.309446>,  <43.824909, 34.211967, 22.326908>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.747566, 34.438492, 22.309446>,  <43.618660, 34.816032, 22.280344>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.747566, 34.438492, 22.309446> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577149, -0.134977, 0.805407,
		-0.750362, -0.301547, -0.588239,
		0.322267, -0.943849, 0.072756,
		43.844246, 34.155338, 22.331274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.994011, 34.380348, 22.313107>,  <43.618660, 34.816032, 22.280344>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.994011, 34.380348, 22.313107> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.286564, 34.163361, 22.478418>,  <43.462097, 34.033169, 22.577606>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.286564, 34.163361, 22.478418>,  <42.994011, 34.380348, 22.313107>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.286564, 34.163361, 22.478418> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.580932, -0.178168, 0.794213,
		-0.357207, -0.820962, -0.445449,
		0.731383, -0.542474, 0.413280,
		43.505978, 34.000618, 22.602404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.707272, 33.755527, 22.463247>,  <42.994011, 34.380348, 22.313107>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.707272, 33.755527, 22.463247> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.029121, 33.741734, 22.700359>,  <43.222233, 33.733456, 22.842627>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.029121, 33.741734, 22.700359>,  <42.707272, 33.755527, 22.463247>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.029121, 33.741734, 22.700359> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559551, -0.378104, 0.737523,
		0.198697, -0.925120, -0.323530,
		0.804625, -0.034488, 0.592780,
		43.270508, 33.731388, 22.878193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.620628, 33.188744, 23.008095>,  <42.707272, 33.755527, 22.463247>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.620628, 33.188744, 23.008095> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.907154, 33.400188, 23.190285>,  <43.079071, 33.527058, 23.299599>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.907154, 33.400188, 23.190285>,  <42.620628, 33.188744, 23.008095>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.907154, 33.400188, 23.190285> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315612, -0.336709, 0.887139,
		0.622318, -0.779225, -0.074353,
		0.716317, 0.528616, 0.455473,
		43.122047, 33.558773, 23.326927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.967583, 32.665707, 23.470577>,  <42.620628, 33.188744, 23.008095>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.967583, 32.665707, 23.470577> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.046001, 33.030773, 23.614023>,  <43.093052, 33.249813, 23.700090>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.046001, 33.030773, 23.614023>,  <42.967583, 32.665707, 23.470577>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.046001, 33.030773, 23.614023> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233230, -0.311817, 0.921072,
		0.952454, -0.264216, 0.151729,
		0.196050, 0.912666, 0.358614,
		43.104816, 33.304573, 23.721607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.343765, 32.576603, 24.047350>,  <42.967583, 32.665707, 23.470577>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.343765, 32.576603, 24.047350> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.203030, 32.948090, 24.094154>,  <43.118587, 33.170982, 24.122236>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.203030, 32.948090, 24.094154>,  <43.343765, 32.576603, 24.047350>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.203030, 32.948090, 24.094154> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221971, -0.204218, 0.953428,
		0.909361, 0.309481, 0.278000,
		-0.351840, 0.928718, 0.117012,
		43.097477, 33.226704, 24.129257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.624508, 32.829765, 24.641640>,  <43.343765, 32.576603, 24.047350>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.624508, 32.829765, 24.641640> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.309643, 33.069515, 24.583502>,  <43.120724, 33.213364, 24.548618>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.309643, 33.069515, 24.583502>,  <43.624508, 32.829765, 24.641640>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.309643, 33.069515, 24.583502> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200450, -0.025761, 0.979365,
		0.583263, 0.800054, 0.140423,
		-0.787162, 0.599375, -0.145346,
		43.073494, 33.249329, 24.539898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.530491, 33.240837, 25.221468>,  <43.624508, 32.829765, 24.641640>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.530491, 33.240837, 25.221468> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.168068, 33.294334, 25.060883>,  <42.950615, 33.326431, 24.964531>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.168068, 33.294334, 25.060883>,  <43.530491, 33.240837, 25.221468>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.168068, 33.294334, 25.060883> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413193, -0.074989, 0.907551,
		0.091274, 0.988175, 0.123207,
		-0.906058, 0.133744, -0.401462,
		42.896252, 33.334457, 24.940443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.235016, 34.007652, 25.361986>,  <43.530491, 33.240837, 25.221468>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.235016, 34.007652, 25.361986> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.935612, 33.750828, 25.295671>,  <42.755970, 33.596733, 25.255882>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.935612, 33.750828, 25.295671>,  <43.235016, 34.007652, 25.361986>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.935612, 33.750828, 25.295671> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412422, 0.254972, 0.874584,
		-0.519267, 0.723010, -0.455651,
		-0.748512, -0.642063, -0.165787,
		42.711060, 33.558208, 25.245935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.673321, 34.424335, 25.697884>,  <43.235016, 34.007652, 25.361986>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.673321, 34.424335, 25.697884> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.486149, 34.080128, 25.617342>,  <42.373844, 33.873604, 25.569017>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.486149, 34.080128, 25.617342>,  <42.673321, 34.424335, 25.697884>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.486149, 34.080128, 25.617342> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388939, -0.004069, 0.921255,
		-0.793578, 0.509400, -0.332785,
		-0.467933, -0.860520, -0.201355,
		42.345768, 33.821972, 25.556936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.002781, 34.510807, 25.991156>,  <42.673321, 34.424335, 25.697884>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.002781, 34.510807, 25.991156> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.019672, 34.111553, 25.973518>,  <42.029808, 33.872002, 25.962936>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.019672, 34.111553, 25.973518>,  <42.002781, 34.510807, 25.991156>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.019672, 34.111553, 25.973518> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378173, -0.056819, 0.923990,
		-0.924771, -0.022343, -0.379866,
		0.042228, -0.998134, -0.044095,
		42.032341, 33.812115, 25.960289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.427338, 34.193539, 26.227339>,  <42.002781, 34.510807, 25.991156>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.427338, 34.193539, 26.227339> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.654568, 33.868263, 26.277958>,  <41.790905, 33.673100, 26.308331>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.654568, 33.868263, 26.277958>,  <41.427338, 34.193539, 26.227339>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.654568, 33.868263, 26.277958> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468831, -0.193393, 0.861856,
		-0.676379, -0.548929, -0.491110,
		0.568075, -0.813189, 0.126548,
		41.824989, 33.624306, 26.315922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.026699, 33.662266, 26.391605>,  <41.427338, 34.193539, 26.227339>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.026699, 33.662266, 26.391605> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.384674, 33.581532, 26.550776>,  <41.599461, 33.533089, 26.646278>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.384674, 33.581532, 26.550776>,  <41.026699, 33.662266, 26.391605>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.384674, 33.581532, 26.550776> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432417, -0.172489, 0.885021,
		-0.109988, -0.964112, -0.241643,
		0.894940, -0.201832, 0.397927,
		41.653156, 33.520981, 26.670153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.630432, 33.019539, 26.117683>,  <41.026699, 33.662266, 26.391605>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.630432, 33.019539, 26.117683> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.304874, 32.813503, 26.010157>,  <40.109539, 32.689884, 25.945641>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.304874, 32.813503, 26.010157>,  <40.630432, 33.019539, 26.117683>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.304874, 32.813503, 26.010157> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177132, 0.220667, -0.959130,
		0.553354, -0.828246, -0.088361,
		-0.813894, -0.515087, -0.268816,
		40.060707, 32.658978, 25.929512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.879829, 32.489712, 25.562088>,  <40.630432, 33.019539, 26.117683>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.879829, 32.489712, 25.562088> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.487751, 32.564312, 25.535473>,  <40.252502, 32.609074, 25.519505>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.487751, 32.564312, 25.535473>,  <40.879829, 32.489712, 25.562088>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.487751, 32.564312, 25.535473> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104583, 0.202261, -0.973731,
		-0.168144, -0.961409, -0.217761,
		-0.980199, 0.186501, -0.066538,
		40.193691, 32.620262, 25.515511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.742779, 32.191406, 24.937180>,  <40.879829, 32.489712, 25.562088>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.742779, 32.191406, 24.937180> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.405655, 32.399849, 24.991013>,  <40.203381, 32.524914, 25.023312>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.405655, 32.399849, 24.991013>,  <40.742779, 32.191406, 24.937180>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.405655, 32.399849, 24.991013> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147692, 0.016525, -0.988896,
		-0.517545, -0.853331, 0.063036,
		-0.842813, 0.521108, 0.134582,
		40.152809, 32.556183, 25.031387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.164448, 31.833872, 24.628325>,  <40.742779, 32.191406, 24.937180>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.164448, 31.833872, 24.628325> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.113529, 32.230457, 24.639597>,  <40.082977, 32.468410, 24.646360>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.113529, 32.230457, 24.639597>,  <40.164448, 31.833872, 24.628325>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.113529, 32.230457, 24.639597> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079934, 0.018066, -0.996636,
		-0.988639, -0.129118, 0.076952,
		-0.127294, 0.991464, 0.028182,
		40.075340, 32.527897, 24.648052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.945305, 32.012409, 24.022917>,  <40.164448, 31.833872, 24.628325>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.945305, 32.012409, 24.022917> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.022533, 32.382004, 24.154961>,  <40.068871, 32.603760, 24.234186>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.022533, 32.382004, 24.154961>,  <39.945305, 32.012409, 24.022917>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.022533, 32.382004, 24.154961> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000945, 0.336263, -0.941768,
		-0.981184, 0.182140, 0.064050,
		0.193071, 0.923987, 0.330108,
		40.080456, 32.659199, 24.253994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.481464, 32.412437, 23.535030>,  <39.945305, 32.012409, 24.022917>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.481464, 32.412437, 23.535030> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.765984, 32.651207, 23.683481>,  <39.936695, 32.794468, 23.772552>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.765984, 32.651207, 23.683481>,  <39.481464, 32.412437, 23.535030>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.765984, 32.651207, 23.683481> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248513, 0.280327, -0.927178,
		-0.657495, 0.751727, 0.051051,
		0.711296, 0.596928, 0.371127,
		39.979374, 32.830284, 23.794819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.387455, 32.985989, 23.208569>,  <39.481464, 32.412437, 23.535030>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.387455, 32.985989, 23.208569> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.760876, 33.043449, 23.339924>,  <39.984928, 33.077927, 23.418737>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.760876, 33.043449, 23.339924>,  <39.387455, 32.985989, 23.208569>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.760876, 33.043449, 23.339924> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230348, 0.461480, -0.856724,
		-0.274616, 0.875442, 0.397727,
		0.933555, 0.143655, 0.328387,
		40.040943, 33.086544, 23.438440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.931175, 33.562351, 23.085159>,  <39.387455, 32.985989, 23.208569>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.931175, 33.562351, 23.085159> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.575047, 33.590744, 22.905251>,  <38.361370, 33.607780, 22.797306>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.575047, 33.590744, 22.905251>,  <38.931175, 33.562351, 23.085159>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.575047, 33.590744, 22.905251> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434226, -0.429654, 0.791736,
		-0.137044, 0.900199, 0.413353,
		-0.890318, 0.070986, -0.449771,
		38.307953, 33.612041, 22.770319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.527794, 34.008793, 23.541418>,  <38.931175, 33.562351, 23.085159>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.527794, 34.008793, 23.541418> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.277950, 33.768867, 23.341381>,  <38.128044, 33.624912, 23.221359>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.277950, 33.768867, 23.341381>,  <38.527794, 34.008793, 23.541418>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.277950, 33.768867, 23.341381> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527744, -0.147821, 0.836442,
		-0.575634, 0.786366, -0.224218,
		-0.624605, -0.599815, -0.500090,
		38.090569, 33.588924, 23.191355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.823792, 34.217167, 23.783516>,  <38.527794, 34.008793, 23.541418>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.823792, 34.217167, 23.783516> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.827385, 33.843655, 23.640419>,  <37.829540, 33.619549, 23.554562>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.827385, 33.843655, 23.640419>,  <37.823792, 34.217167, 23.783516>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.827385, 33.843655, 23.640419> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555809, -0.302061, 0.774490,
		-0.831261, 0.191881, -0.521715,
		0.008980, -0.933778, -0.357741,
		37.830078, 33.563522, 23.533096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.200439, 34.108978, 23.946100>,  <37.823792, 34.217167, 23.783516>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.200439, 34.108978, 23.946100> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.329506, 33.740288, 23.860016>,  <37.406944, 33.519073, 23.808365>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.329506, 33.740288, 23.860016>,  <37.200439, 34.108978, 23.946100>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.329506, 33.740288, 23.860016> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.572942, -0.371182, 0.730727,
		-0.753410, -0.112476, -0.647860,
		0.322663, -0.921723, -0.215210,
		37.426304, 33.463772, 23.795452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.610889, 33.529873, 24.039433>,  <37.200439, 34.108978, 23.946100>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.610889, 33.529873, 24.039433> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.944534, 33.313839, 24.084263>,  <37.144722, 33.184219, 24.111160>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.944534, 33.313839, 24.084263>,  <36.610889, 33.529873, 24.039433>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.944534, 33.313839, 24.084263> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292672, -0.261117, 0.919870,
		-0.467548, -0.800076, -0.375870,
		0.834112, -0.540090, 0.112075,
		37.194767, 33.151814, 24.117886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.393101, 32.963711, 24.266556>,  <36.610889, 33.529873, 24.039433>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.393101, 32.963711, 24.266556> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.769936, 32.979668, 24.399750>,  <36.996037, 32.989243, 24.479666>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.769936, 32.979668, 24.399750>,  <36.393101, 32.963711, 24.266556>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.769936, 32.979668, 24.399750> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305918, -0.304619, 0.902010,
		0.137416, -0.951639, -0.274774,
		0.942088, 0.039892, 0.332983,
		37.052563, 32.991634, 24.499645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.614719, 32.202282, 24.534773>,  <36.393101, 32.963711, 24.266556>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.614719, 32.202282, 24.534773> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.843777, 32.470127, 24.723963>,  <36.981209, 32.630833, 24.837477>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.843777, 32.470127, 24.723963>,  <36.614719, 32.202282, 24.534773>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.843777, 32.470127, 24.723963> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307295, -0.359549, 0.881076,
		0.760035, -0.649882, -0.000124,
		0.572639, 0.669611, 0.472975,
		37.015568, 32.671009, 24.865856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<41.966438, 37.790112, 21.687975> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.275517, 37.711952, 21.929560>,  <42.460964, 37.665058, 22.074511>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.275517, 37.711952, 21.929560>,  <41.966438, 37.790112, 21.687975>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.275517, 37.711952, 21.929560> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.634744, -0.248171, 0.731786,
		0.006896, -0.948805, -0.315786,
		0.772691, -0.195397, 0.603960,
		42.507324, 37.653332, 22.110748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.732784, 37.179482, 22.043432>,  <41.966438, 37.790112, 21.687975>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.732784, 37.179482, 22.043432> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.038548, 37.309196, 22.266327>,  <42.222008, 37.387024, 22.400064>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.038548, 37.309196, 22.266327>,  <41.732784, 37.179482, 22.043432>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.038548, 37.309196, 22.266327> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453921, -0.343085, 0.822343,
		0.457854, -0.881551, -0.115058,
		0.764412, 0.324286, 0.557237,
		42.267872, 37.406483, 22.433498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.913330, 36.612350, 22.391285>,  <41.732784, 37.179482, 22.043432>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.913330, 36.612350, 22.391285> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.047203, 36.920395, 22.608509>,  <42.127525, 37.105221, 22.738844>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.047203, 36.920395, 22.608509>,  <41.913330, 36.612350, 22.391285>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.047203, 36.920395, 22.608509> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.596424, -0.273060, 0.754796,
		0.729568, -0.576507, 0.367928,
		0.334678, 0.770116, 0.543058,
		42.147606, 37.151428, 22.771427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.035107, 36.363716, 23.107336>,  <41.913330, 36.612350, 22.391285>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.035107, 36.363716, 23.107336> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.989658, 36.757992, 23.157145>,  <41.962391, 36.994556, 23.187031>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.989658, 36.757992, 23.157145>,  <42.035107, 36.363716, 23.107336>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.989658, 36.757992, 23.157145> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.609937, -0.168137, 0.774407,
		0.784263, 0.012035, 0.620312,
		-0.113617, 0.985690, 0.124523,
		41.955574, 37.053699, 23.194502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.220001, 36.484020, 23.769270>,  <42.035107, 36.363716, 23.107336>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.220001, 36.484020, 23.769270> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.017223, 36.815529, 23.674490>,  <41.895557, 37.014435, 23.617622>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.017223, 36.815529, 23.674490>,  <42.220001, 36.484020, 23.769270>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.017223, 36.815529, 23.674490> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499866, -0.058708, 0.864111,
		0.702238, 0.556502, 0.444035,
		-0.506948, 0.828769, -0.236950,
		41.865139, 37.064159, 23.603405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.314919, 36.962120, 24.303810>,  <42.220001, 36.484020, 23.769270>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.314919, 36.962120, 24.303810> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.980782, 37.113518, 24.144341>,  <41.780300, 37.204357, 24.048658>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.980782, 37.113518, 24.144341>,  <42.314919, 36.962120, 24.303810>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.980782, 37.113518, 24.144341> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419208, 0.030556, 0.907376,
		0.355622, 0.925098, 0.133145,
		-0.835343, 0.378498, -0.398674,
		41.730179, 37.227066, 24.024738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.125298, 37.692154, 24.622522>,  <42.314919, 36.962120, 24.303810>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.125298, 37.692154, 24.622522> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.789066, 37.576534, 24.439270>,  <41.587330, 37.507164, 24.329319>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.789066, 37.576534, 24.439270>,  <42.125298, 37.692154, 24.622522>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.789066, 37.576534, 24.439270> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540630, 0.394678, 0.742932,
		-0.033932, 0.872169, -0.488026,
		-0.840576, -0.289051, -0.458129,
		41.536892, 37.489819, 24.301832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.651737, 38.182686, 24.807627>,  <42.125298, 37.692154, 24.622522>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.651737, 38.182686, 24.807627> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.418415, 37.873581, 24.707550>,  <41.278423, 37.688118, 24.647503>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.418415, 37.873581, 24.707550>,  <41.651737, 38.182686, 24.807627>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.418415, 37.873581, 24.707550> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.630825, 0.236949, 0.738861,
		-0.511679, 0.588809, -0.625690,
		-0.583305, -0.772761, -0.250194,
		41.243423, 37.641754, 24.632492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.933197, 38.472839, 24.770252>,  <41.651737, 38.182686, 24.807627>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.933197, 38.472839, 24.770252> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.906216, 38.076687, 24.818569>,  <40.890026, 37.838993, 24.847559>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.906216, 38.076687, 24.818569>,  <40.933197, 38.472839, 24.770252>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.906216, 38.076687, 24.818569> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.699878, 0.133255, 0.701722,
		-0.711070, -0.037207, -0.702136,
		-0.067454, -0.990383, 0.120794,
		40.885979, 37.779572, 24.854807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.136341, 38.312149, 24.824270>,  <40.933197, 38.472839, 24.770252>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.136341, 38.312149, 24.824270> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.286106, 37.974388, 24.977530>,  <40.375965, 37.771732, 25.069485>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.286106, 37.974388, 24.977530>,  <40.136341, 38.312149, 24.824270>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.286106, 37.974388, 24.977530> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.606094, 0.089855, 0.790301,
		-0.701759, -0.528121, -0.478144,
		0.374412, -0.844401, 0.383147,
		40.398430, 37.721069, 25.092474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.652222, 37.965942, 25.193600>,  <40.136341, 38.312149, 24.824270>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.652222, 37.965942, 25.193600> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.985664, 37.814945, 25.354895>,  <40.185730, 37.724346, 25.451672>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.985664, 37.814945, 25.354895>,  <39.652222, 37.965942, 25.193600>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.985664, 37.814945, 25.354895> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447663, -0.034059, 0.893554,
		-0.323580, -0.925384, -0.197383,
		0.833603, -0.377497, 0.403239,
		40.235744, 37.701694, 25.475866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.404808, 37.433662, 25.643642>,  <39.652222, 37.965942, 25.193600>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.404808, 37.433662, 25.643642> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.776062, 37.510853, 25.770966>,  <39.998814, 37.557167, 25.847359>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.776062, 37.510853, 25.770966>,  <39.404808, 37.433662, 25.643642>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.776062, 37.510853, 25.770966> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292616, -0.150300, 0.944344,
		0.230082, -0.969623, -0.083030,
		0.928137, 0.192980, 0.318308,
		40.054504, 37.568748, 25.866459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.092800, 36.822891, 25.305092>,  <39.404808, 37.433662, 25.643642>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.092800, 36.822891, 25.305092> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.736160, 36.999577, 25.265209>,  <38.522179, 37.105587, 25.241280>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.736160, 36.999577, 25.265209>,  <39.092800, 36.822891, 25.305092>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.736160, 36.999577, 25.265209> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297282, 0.404876, -0.864696,
		-0.341582, -0.800601, -0.492301,
		-0.891597, 0.441717, -0.099705,
		38.468681, 37.132092, 25.235298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.909660, 36.593559, 24.740547>,  <39.092800, 36.822891, 25.305092>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.909660, 36.593559, 24.740547> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.697697, 36.929314, 24.788933>,  <38.570518, 37.130764, 24.817965>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.697697, 36.929314, 24.788933>,  <38.909660, 36.593559, 24.740547>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.697697, 36.929314, 24.788933> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034790, 0.164032, -0.985841,
		-0.847340, -0.518198, -0.116124,
		-0.529909, 0.839383, 0.120963,
		38.538723, 37.181129, 24.825222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.361122, 36.496429, 24.223164>,  <38.909660, 36.593559, 24.740547>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.361122, 36.496429, 24.223164> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.359066, 36.888199, 24.303856>,  <38.357830, 37.123260, 24.352272>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.359066, 36.888199, 24.303856>,  <38.361122, 36.496429, 24.223164>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.359066, 36.888199, 24.303856> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017675, 0.201615, -0.979305,
		-0.999831, -0.008602, 0.016275,
		-0.005143, 0.979427, 0.201733,
		38.357525, 37.182026, 24.364376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.914852, 36.878124, 23.805376>,  <38.361122, 36.496429, 24.223164>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.914852, 36.878124, 23.805376> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.152687, 37.176731, 23.924826>,  <38.295387, 37.355896, 23.996494>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.152687, 37.176731, 23.924826>,  <37.914852, 36.878124, 23.805376>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.152687, 37.176731, 23.924826> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049765, 0.336524, -0.940359,
		-0.802492, 0.573984, 0.162941,
		0.594584, 0.746521, 0.298623,
		38.331062, 37.400688, 24.014412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.614910, 37.450371, 23.434742>,  <37.914852, 36.878124, 23.805376>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.614910, 37.450371, 23.434742> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.987961, 37.556019, 23.533089>,  <38.211792, 37.619408, 23.592096>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.987961, 37.556019, 23.533089>,  <37.614910, 37.450371, 23.434742>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.987961, 37.556019, 23.533089> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180146, 0.249591, -0.951447,
		-0.312660, 0.931636, 0.185196,
		0.932626, 0.264117, 0.245868,
		38.267750, 37.635254, 23.606850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.722435, 38.005993, 23.108322>,  <37.614910, 37.450371, 23.434742>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.722435, 38.005993, 23.108322> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.110214, 37.928623, 23.168676>,  <38.342880, 37.882202, 23.204889>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.110214, 37.928623, 23.168676>,  <37.722435, 38.005993, 23.108322>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.110214, 37.928623, 23.168676> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197162, 0.248372, -0.948387,
		0.145966, 0.949157, 0.278919,
		0.969444, -0.193424, 0.150884,
		38.401047, 37.870598, 23.213942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.224312, 38.667908, 22.935774>,  <37.722435, 38.005993, 23.108322>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.224312, 38.667908, 22.935774> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.419708, 38.319939, 22.908619>,  <38.536945, 38.111156, 22.892326>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.419708, 38.319939, 22.908619>,  <38.224312, 38.667908, 22.935774>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.419708, 38.319939, 22.908619> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258468, 0.218570, -0.940968,
		0.833408, 0.442110, 0.331617,
		0.488493, -0.869923, -0.067887,
		38.566257, 38.058960, 22.888252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.844227, 38.804096, 22.469889>,  <38.224312, 38.667908, 22.935774>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.844227, 38.804096, 22.469889> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.810566, 38.405567, 22.476337>,  <38.790371, 38.166451, 22.480207>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.810566, 38.405567, 22.476337>,  <38.844227, 38.804096, 22.469889>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.810566, 38.405567, 22.476337> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252997, -0.037011, -0.966759,
		0.963801, -0.077272, 0.255181,
		-0.084148, -0.996323, 0.016122,
		38.785320, 38.106670, 22.481174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.331490, 38.598198, 21.901579>,  <38.844227, 38.804096, 22.469889>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.331490, 38.598198, 21.901579> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.104202, 38.273533, 21.955721>,  <38.967831, 38.078732, 21.988205>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.104202, 38.273533, 21.955721>,  <39.331490, 38.598198, 21.901579>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.104202, 38.273533, 21.955721> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212361, -0.303561, -0.928845,
		0.795001, -0.499046, 0.344857,
		-0.568222, -0.811667, 0.135354,
		38.933735, 38.030033, 21.996326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.739830, 37.958641, 21.806326>,  <39.331490, 38.598198, 21.901579>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.739830, 37.958641, 21.806326> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.356098, 37.873966, 21.731627>,  <39.125858, 37.823162, 21.686808>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.356098, 37.873966, 21.731627>,  <39.739830, 37.958641, 21.806326>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.356098, 37.873966, 21.731627> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245091, -0.296375, -0.923089,
		0.140058, -0.931317, 0.336204,
		-0.959330, -0.211686, -0.186748,
		39.068298, 37.810459, 21.675602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.737698, 37.276649, 21.474571>,  <39.739830, 37.958641, 21.806326>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.737698, 37.276649, 21.474571> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.405914, 37.474876, 21.371490>,  <39.206844, 37.593811, 21.309643>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.405914, 37.474876, 21.371490>,  <39.737698, 37.276649, 21.474571>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.405914, 37.474876, 21.371490> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134939, -0.269918, -0.953381,
		-0.542019, -0.825567, 0.157016,
		-0.829462, 0.495563, -0.257702,
		39.157074, 37.623547, 21.294180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.367111, 36.850090, 20.969826>,  <39.737698, 37.276649, 21.474571>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.367111, 36.850090, 20.969826> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.206200, 37.211113, 20.908419>,  <39.109653, 37.427727, 20.871574>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.206200, 37.211113, 20.908419>,  <39.367111, 36.850090, 20.969826>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.206200, 37.211113, 20.908419> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113264, -0.117331, -0.986613,
		-0.908483, -0.414283, -0.055027,
		-0.402281, 0.902554, -0.153516,
		39.085514, 37.481880, 20.862364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.811630, 36.763439, 20.522379>,  <39.367111, 36.850090, 20.969826>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.811630, 36.763439, 20.522379> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.937981, 37.140694, 20.480965>,  <39.013790, 37.367046, 20.456116>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.937981, 37.140694, 20.480965>,  <38.811630, 36.763439, 20.522379>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.937981, 37.140694, 20.480965> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136098, -0.153035, -0.978804,
		-0.938988, 0.295092, -0.176699,
		0.315878, 0.943133, -0.103537,
		39.032745, 37.423634, 20.449903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.836712, 36.156921, 20.997116>,  <38.811630, 36.763439, 20.522379>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.836712, 36.156921, 20.997116> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.942120, 35.900986, 20.708349>,  <39.005363, 35.747425, 20.535089>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.942120, 35.900986, 20.708349>,  <38.836712, 36.156921, 20.997116>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.942120, 35.900986, 20.708349> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498362, -0.731063, 0.466028,
		-0.825950, 0.236971, -0.511519,
		0.263518, -0.639838, -0.721919,
		39.021175, 35.709034, 20.491774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.227154, 35.781551, 20.902746>,  <38.836712, 36.156921, 20.997116>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.227154, 35.781551, 20.902746> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.474564, 35.523315, 20.723574>,  <38.623009, 35.368374, 20.616070>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.474564, 35.523315, 20.723574>,  <38.227154, 35.781551, 20.902746>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.474564, 35.523315, 20.723574> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.562959, -0.761781, 0.320572,
		-0.548185, 0.053887, -0.834620,
		0.618523, -0.645589, -0.447933,
		38.660122, 35.329639, 20.589193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.770241, 35.179016, 20.740242>,  <38.227154, 35.781551, 20.902746>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.770241, 35.179016, 20.740242> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.149742, 35.055115, 20.715218>,  <38.377445, 34.980774, 20.700203>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.149742, 35.055115, 20.715218>,  <37.770241, 35.179016, 20.740242>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.149742, 35.055115, 20.715218> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224745, -0.800569, 0.555499,
		-0.222155, -0.512972, -0.829160,
		0.948755, -0.309756, -0.062562,
		38.434368, 34.962189, 20.696449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.720394, 34.402863, 20.594299>,  <37.770241, 35.179016, 20.740242>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.720394, 34.402863, 20.594299> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.062035, 34.490269, 20.783091>,  <38.267017, 34.542713, 20.896364>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.062035, 34.490269, 20.783091>,  <37.720394, 34.402863, 20.594299>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.062035, 34.490269, 20.783091> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197052, -0.703862, 0.682458,
		0.481332, -0.675893, -0.558111,
		0.854102, 0.218512, 0.471977,
		38.318264, 34.555820, 20.924685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.111420, 33.767338, 20.685659>,  <37.720394, 34.402863, 20.594299>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.111420, 33.767338, 20.685659> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.252438, 34.043774, 20.938042>,  <38.337048, 34.209637, 21.089472>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.252438, 34.043774, 20.938042>,  <38.111420, 33.767338, 20.685659>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.252438, 34.043774, 20.938042> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184405, -0.609720, 0.770868,
		0.917445, -0.388119, -0.087515,
		0.352548, 0.691090, 0.630955,
		38.358200, 34.251102, 21.127329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.547340, 33.418205, 21.177053>,  <38.111420, 33.767338, 20.685659>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.547340, 33.418205, 21.177053> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.461754, 33.765934, 21.355265>,  <38.410400, 33.974571, 21.462191>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.461754, 33.765934, 21.355265>,  <38.547340, 33.418205, 21.177053>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.461754, 33.765934, 21.355265> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149616, -0.479873, 0.864487,
		0.965315, 0.118313, 0.232742,
		-0.213966, 0.869324, 0.445527,
		38.397564, 34.026730, 21.488922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.934628, 33.368324, 21.796558>,  <38.547340, 33.418205, 21.177053>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.934628, 33.368324, 21.796558> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.641518, 33.632526, 21.862009>,  <38.465652, 33.791050, 21.901279>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.641518, 33.632526, 21.862009>,  <38.934628, 33.368324, 21.796558>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.641518, 33.632526, 21.862009> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164767, -0.405527, 0.899110,
		0.660225, 0.631883, 0.405989,
		-0.732772, 0.660509, 0.163626,
		38.421684, 33.830681, 21.911097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.120583, 33.605888, 22.330345>,  <38.934628, 33.368324, 21.796558>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.120583, 33.605888, 22.330345> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.728416, 33.684368, 22.323582>,  <38.493114, 33.731457, 22.319523>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.728416, 33.684368, 22.323582>,  <39.120583, 33.605888, 22.330345>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.728416, 33.684368, 22.323582> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091115, -0.375837, 0.922196,
		0.174577, 0.905679, 0.386354,
		-0.980419, 0.196196, -0.016908,
		38.434292, 33.743229, 22.318510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.758286, 33.541225, 22.766081>,  <39.120583, 33.605888, 22.330345>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.758286, 33.541225, 22.766081> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.069134, 33.369682, 22.950327>,  <40.255642, 33.266754, 23.060875>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.069134, 33.369682, 22.950327>,  <39.758286, 33.541225, 22.766081>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.069134, 33.369682, 22.950327> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531826, 0.056135, -0.844991,
		0.336528, 0.901624, 0.271704,
		0.777117, -0.428862, 0.460616,
		40.302269, 33.241024, 23.088512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.413612, 33.908966, 22.526367>,  <39.758286, 33.541225, 22.766081>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.413612, 33.908966, 22.526367> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.515011, 33.541740, 22.648281>,  <40.575851, 33.321404, 22.721430>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.515011, 33.541740, 22.648281>,  <40.413612, 33.908966, 22.526367>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.515011, 33.541740, 22.648281> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607418, -0.094145, -0.788784,
		0.752850, 0.385088, 0.533784,
		0.253498, -0.918066, 0.304786,
		40.591061, 33.266319, 22.739717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.029495, 33.931221, 22.312119>,  <40.413612, 33.908966, 22.526367>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.029495, 33.931221, 22.312119> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.960583, 33.544815, 22.389210>,  <40.919235, 33.312973, 22.435465>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.960583, 33.544815, 22.389210>,  <41.029495, 33.931221, 22.312119>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.960583, 33.544815, 22.389210> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568590, -0.257290, -0.781350,
		0.804379, -0.025028, 0.593590,
		-0.172280, -0.966010, 0.192728,
		40.908897, 33.255013, 22.447027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.667995, 33.599659, 22.382277>,  <41.029495, 33.931221, 22.312119>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.667995, 33.599659, 22.382277> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.422298, 33.302559, 22.275671>,  <41.274879, 33.124298, 22.211708>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.422298, 33.302559, 22.275671>,  <41.667995, 33.599659, 22.382277>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.422298, 33.302559, 22.275671> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.640048, -0.271389, -0.718808,
		0.461563, -0.612108, 0.642093,
		-0.614245, -0.742746, -0.266515,
		41.238026, 33.079735, 22.195717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.160141, 32.956215, 22.298086>,  <41.667995, 33.599659, 22.382277>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.160141, 32.956215, 22.298086> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.822235, 32.862530, 22.105621>,  <41.619492, 32.806316, 21.990143>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.822235, 32.862530, 22.105621>,  <42.160141, 32.956215, 22.298086>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.822235, 32.862530, 22.105621> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534736, -0.404280, -0.742034,
		-0.020727, -0.884138, 0.466766,
		-0.844765, -0.234217, -0.481160,
		41.568806, 32.792263, 21.961273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.251328, 32.302074, 22.177347>,  <42.160141, 32.956215, 22.298086>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.251328, 32.302074, 22.177347> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.966599, 32.442356, 21.933933>,  <41.795761, 32.526524, 21.787884>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.966599, 32.442356, 21.933933>,  <42.251328, 32.302074, 22.177347>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.966599, 32.442356, 21.933933> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485457, -0.380481, -0.787125,
		-0.507584, -0.855711, 0.100584,
		-0.711821, 0.350703, -0.608537,
		41.753052, 32.547565, 21.751371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.175674, 31.741138, 21.705645>,  <42.251328, 32.302074, 22.177347>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.175674, 31.741138, 21.705645> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.038715, 32.068157, 21.520437>,  <41.956539, 32.264366, 21.409313>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.038715, 32.068157, 21.520437>,  <42.175674, 31.741138, 21.705645>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.038715, 32.068157, 21.520437> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567015, -0.213149, -0.795652,
		-0.749173, -0.534965, -0.390580,
		-0.342394, 0.817545, -0.463018,
		41.935997, 32.313419, 21.381533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.303768, 31.534523, 20.994961>,  <42.175674, 31.741138, 21.705645>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.303768, 31.534523, 20.994961> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.240467, 31.929453, 20.999784>,  <42.202488, 32.166412, 21.002678>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.240467, 31.929453, 20.999784>,  <42.303768, 31.534523, 20.994961>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.240467, 31.929453, 20.999784> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.623844, 0.109443, -0.773848,
		-0.765360, -0.114939, -0.633256,
		-0.158251, 0.987325, 0.012059,
		42.192993, 32.225651, 21.003403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.095428, 31.864681, 20.232977>,  <42.303768, 31.534523, 20.994961>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.095428, 31.864681, 20.232977> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.285080, 32.123325, 20.472008>,  <42.398869, 32.278511, 20.615427>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.285080, 32.123325, 20.472008>,  <42.095428, 31.864681, 20.232977>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.285080, 32.123325, 20.472008> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617893, 0.239145, -0.749011,
		-0.627226, 0.724365, -0.286151,
		0.474126, 0.646610, 0.597578,
		42.427319, 32.317307, 20.651281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<36.870636, 30.544275, 35.524807> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.144329, 30.835506, 35.508141>,  <37.308544, 31.010244, 35.498142>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.144329, 30.835506, 35.508141>,  <36.870636, 30.544275, 35.524807>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.144329, 30.835506, 35.508141> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024388, -0.034255, -0.999115,
		-0.728860, 0.684639, -0.005682,
		0.684228, 0.728076, -0.041664,
		37.349598, 31.053930, 35.495640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.649479, 30.906673, 35.033669>,  <36.870636, 30.544275, 35.524807>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.649479, 30.906673, 35.033669> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.016407, 31.065826, 35.039520>,  <37.236565, 31.161318, 35.043034>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.016407, 31.065826, 35.039520>,  <36.649479, 30.906673, 35.033669>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.016407, 31.065826, 35.039520> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117876, 0.306497, -0.944545,
		-0.380302, 0.864725, 0.328056,
		0.917320, 0.397882, 0.014632,
		37.291603, 31.185192, 35.043911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.518700, 31.572834, 34.720406>,  <36.649479, 30.906673, 35.033669>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.518700, 31.572834, 34.720406> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.880978, 31.408850, 34.677235>,  <37.098343, 31.310459, 34.651333>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.880978, 31.408850, 34.677235>,  <36.518700, 31.572834, 34.720406>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.880978, 31.408850, 34.677235> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036717, 0.177775, -0.983386,
		0.422338, 0.894610, 0.145957,
		0.905694, -0.409963, -0.107928,
		37.152687, 31.285860, 34.644855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.976799, 31.985607, 34.244484>,  <36.518700, 31.572834, 34.720406>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.976799, 31.985607, 34.244484> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.132259, 31.617058, 34.242722>,  <37.225536, 31.395927, 34.241665>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.132259, 31.617058, 34.242722>,  <36.976799, 31.985607, 34.244484>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.132259, 31.617058, 34.242722> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282185, 0.123579, -0.951367,
		0.877110, 0.368508, 0.308027,
		0.388652, -0.921374, -0.004405,
		37.248856, 31.340645, 34.241402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.471466, 32.124058, 33.801884>,  <36.976799, 31.985607, 34.244484>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.471466, 32.124058, 33.801884> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.464474, 31.724245, 33.811863>,  <37.460278, 31.484356, 33.817848>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.464474, 31.724245, 33.811863>,  <37.471466, 32.124058, 33.801884>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.464474, 31.724245, 33.811863> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577679, -0.030458, -0.815695,
		0.816077, 0.000154, 0.577944,
		-0.017477, -0.999536, 0.024945,
		37.459232, 31.424385, 33.819347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.065857, 31.984709, 33.539135>,  <37.471466, 32.124058, 33.801884>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.065857, 31.984709, 33.539135> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.884232, 31.629019, 33.516865>,  <37.775257, 31.415604, 33.503502>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.884232, 31.629019, 33.516865>,  <38.065857, 31.984709, 33.539135>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.884232, 31.629019, 33.516865> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513974, -0.210385, -0.831606,
		0.727774, -0.406217, 0.552568,
		-0.454065, -0.889227, -0.055672,
		37.748013, 31.362251, 33.500164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.606449, 31.414890, 33.558540>,  <38.065857, 31.984709, 33.539135>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.606449, 31.414890, 33.558540> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.282642, 31.296089, 33.355965>,  <38.088360, 31.224808, 33.234421>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.282642, 31.296089, 33.355965>,  <38.606449, 31.414890, 33.558540>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.282642, 31.296089, 33.355965> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570392, -0.193514, -0.798252,
		0.139080, -0.935062, 0.326060,
		-0.809512, -0.297003, -0.506437,
		38.039787, 31.206989, 33.204033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.762585, 30.774591, 33.148350>,  <38.606449, 31.414890, 33.558540>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.762585, 30.774591, 33.148350> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.431137, 30.901031, 32.963543>,  <38.232269, 30.976896, 32.852657>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.431137, 30.901031, 32.963543>,  <38.762585, 30.774591, 33.148350>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.431137, 30.901031, 32.963543> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428449, -0.173084, -0.886833,
		-0.360300, -0.932802, 0.007987,
		-0.828622, 0.316104, -0.462021,
		38.182549, 30.995861, 32.824936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.831970, 30.430948, 32.505363>,  <38.762585, 30.774591, 33.148350>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.831970, 30.430948, 32.505363> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.540611, 30.697123, 32.440079>,  <38.365795, 30.856827, 32.400906>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.540611, 30.697123, 32.440079>,  <38.831970, 30.430948, 32.505363>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.540611, 30.697123, 32.440079> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216292, -0.002713, -0.976325,
		-0.650125, -0.746450, -0.141952,
		-0.728393, 0.665436, -0.163215,
		38.322094, 30.896753, 32.391113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.337269, 30.148247, 31.931711>,  <38.831970, 30.430948, 32.505363>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.337269, 30.148247, 31.931711> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.302509, 30.546370, 31.948765>,  <38.281654, 30.785242, 31.958998>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.302509, 30.546370, 31.948765>,  <38.337269, 30.148247, 31.931711>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.302509, 30.546370, 31.948765> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236571, 0.062188, -0.969622,
		-0.967721, -0.074169, -0.240864,
		-0.086895, 0.995305, 0.042634,
		38.276440, 30.844961, 31.961555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.891048, 30.387175, 31.397142>,  <38.337269, 30.148247, 31.931711>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.891048, 30.387175, 31.397142> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.089882, 30.721148, 31.491627>,  <38.209183, 30.921532, 31.548317>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.089882, 30.721148, 31.491627>,  <37.891048, 30.387175, 31.397142>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.089882, 30.721148, 31.491627> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220229, 0.141916, -0.965069,
		-0.839292, 0.531737, -0.113333,
		0.497079, 0.834934, 0.236213,
		38.239006, 30.971628, 31.562490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.541096, 30.908419, 31.097652>,  <37.891048, 30.387175, 31.397142>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.541096, 30.908419, 31.097652> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.917416, 31.028551, 31.160515>,  <38.143208, 31.100630, 31.198233>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.917416, 31.028551, 31.160515>,  <37.541096, 30.908419, 31.097652>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.917416, 31.028551, 31.160515> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156159, 0.027480, -0.987350,
		-0.300850, 0.953439, -0.021047,
		0.940799, 0.300331, 0.157156,
		38.199654, 31.118650, 31.207661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.053047, 31.446461, 31.346405>,  <37.541096, 30.908419, 31.097652>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.053047, 31.446461, 31.346405> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.723270, 31.508980, 31.128830>,  <36.525406, 31.546492, 30.998285>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.723270, 31.508980, 31.128830>,  <37.053047, 31.446461, 31.346405>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.723270, 31.508980, 31.128830> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497398, 0.258383, 0.828151,
		0.269983, 0.953314, -0.135279,
		-0.824442, 0.156299, -0.543936,
		36.475937, 31.555870, 30.965649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.760349, 32.023994, 31.592403>,  <37.053047, 31.446461, 31.346405>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.760349, 32.023994, 31.592403> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.443794, 31.882860, 31.392715>,  <36.253860, 31.798180, 31.272903>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.443794, 31.882860, 31.392715>,  <36.760349, 32.023994, 31.592403>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.443794, 31.882860, 31.392715> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.601104, 0.300456, 0.740541,
		-0.111298, 0.886133, -0.449868,
		-0.791383, -0.352838, -0.499218,
		36.206379, 31.777008, 31.242950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.254814, 32.592136, 31.481373>,  <36.760349, 32.023994, 31.592403>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.254814, 32.592136, 31.481373> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.069836, 32.238247, 31.458006>,  <35.958847, 32.025913, 31.443985>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.069836, 32.238247, 31.458006>,  <36.254814, 32.592136, 31.481373>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.069836, 32.238247, 31.458006> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.636839, 0.285593, 0.716152,
		-0.616910, 0.368386, -0.695495,
		-0.462449, -0.884720, -0.058417,
		35.931103, 31.972832, 31.440481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.535702, 32.718124, 31.275478>,  <36.254814, 32.592136, 31.481373>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.535702, 32.718124, 31.275478> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.544575, 32.381432, 31.491255>,  <35.549900, 32.179417, 31.620720>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.544575, 32.381432, 31.491255>,  <35.535702, 32.718124, 31.275478>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.544575, 32.381432, 31.491255> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.695519, 0.374602, 0.613129,
		-0.718165, -0.388793, -0.577130,
		0.022186, -0.841732, 0.539439,
		35.551231, 32.128910, 31.653086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.837784, 32.688480, 31.479317>,  <35.535702, 32.718124, 31.275478>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.837784, 32.688480, 31.479317> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.044926, 32.425720, 31.698519>,  <35.169209, 32.268063, 31.830040>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.044926, 32.425720, 31.698519>,  <34.837784, 32.688480, 31.479317>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.044926, 32.425720, 31.698519> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517042, 0.270009, 0.812258,
		-0.681540, -0.703970, -0.199821,
		0.517852, -0.656903, 0.548004,
		35.200283, 32.228649, 31.862921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.297127, 32.407162, 31.840506>,  <34.837784, 32.688480, 31.479317>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.297127, 32.407162, 31.840506> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.619228, 32.306744, 32.055370>,  <34.812489, 32.246490, 32.184288>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.619228, 32.306744, 32.055370>,  <34.297127, 32.407162, 31.840506>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.619228, 32.306744, 32.055370> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436566, 0.361993, 0.823633,
		-0.401221, -0.897739, 0.181896,
		0.805253, -0.251050, 0.537161,
		34.860806, 32.231430, 32.216518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.093952, 32.075970, 32.482830>,  <34.297127, 32.407162, 31.840506>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.093952, 32.075970, 32.482830> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.471642, 32.165474, 32.579472>,  <34.698254, 32.219177, 32.637459>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.471642, 32.165474, 32.579472>,  <34.093952, 32.075970, 32.482830>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.471642, 32.165474, 32.579472> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308143, 0.341583, 0.887901,
		0.116146, -0.912827, 0.391480,
		0.944223, 0.223758, 0.241608,
		34.754910, 32.232601, 32.651955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.323235, 31.775162, 33.126717>,  <34.093952, 32.075970, 32.482830>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.323235, 31.775162, 33.126717> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.504883, 32.124367, 33.055580>,  <34.613873, 32.333889, 33.012897>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.504883, 32.124367, 33.055580>,  <34.323235, 31.775162, 33.126717>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.504883, 32.124367, 33.055580> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484298, 0.409424, 0.773193,
		0.747818, -0.264994, 0.608725,
		0.454118, 0.873012, -0.177838,
		34.641117, 32.386269, 33.002228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.425819, 31.948812, 33.819794>,  <34.323235, 31.775162, 33.126717>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.425819, 31.948812, 33.819794> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.506229, 32.295044, 33.636330>,  <34.554478, 32.502781, 33.526253>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.506229, 32.295044, 33.636330>,  <34.425819, 31.948812, 33.819794>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.506229, 32.295044, 33.636330> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324203, 0.500617, 0.802668,
		0.924381, -0.012660, 0.381260,
		0.201027, 0.865576, -0.458656,
		34.566536, 32.554718, 33.498734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.670033, 32.375141, 34.352226>,  <34.425819, 31.948812, 33.819794>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.670033, 32.375141, 34.352226> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.553894, 32.606220, 34.047081>,  <34.484211, 32.744869, 33.863995>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.553894, 32.606220, 34.047081>,  <34.670033, 32.375141, 34.352226>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.553894, 32.606220, 34.047081> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381794, 0.661072, 0.645924,
		0.877458, 0.478800, 0.028621,
		-0.290347, 0.577698, -0.762865,
		34.466789, 32.779530, 33.818222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.752323, 33.051704, 34.636810>,  <34.670033, 32.375141, 34.352226>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.752323, 33.051704, 34.636810> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.494949, 33.086758, 34.332623>,  <34.340527, 33.107792, 34.150108>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.494949, 33.086758, 34.332623>,  <34.752323, 33.051704, 34.636810>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.494949, 33.086758, 34.332623> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.561546, 0.621113, 0.546703,
		0.520248, 0.778806, -0.350433,
		-0.643434, 0.087637, -0.760469,
		34.301918, 33.113049, 34.104481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.545975, 33.672558, 34.643425>,  <34.752323, 33.051704, 34.636810>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.545975, 33.672558, 34.643425> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.263775, 33.546257, 34.389629>,  <34.094456, 33.470478, 34.237350>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.263775, 33.546257, 34.389629>,  <34.545975, 33.672558, 34.643425>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.263775, 33.546257, 34.389629> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.699136, 0.456746, 0.550084,
		0.116111, 0.831676, -0.542985,
		-0.705498, -0.315750, -0.634488,
		34.052124, 33.451530, 34.199284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.184166, 34.236126, 34.438904>,  <34.545975, 33.672558, 34.643425>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.184166, 34.236126, 34.438904> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.972713, 33.896614, 34.434448>,  <33.845844, 33.692905, 34.431774>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.972713, 33.896614, 34.434448>,  <34.184166, 34.236126, 34.438904>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.972713, 33.896614, 34.434448> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.603535, 0.366593, 0.708065,
		-0.596908, 0.381025, -0.706060,
		-0.528627, -0.848781, -0.011140,
		33.814125, 33.641979, 34.431107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.545773, 34.423542, 34.636765>,  <34.184166, 34.236126, 34.438904>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.545773, 34.423542, 34.636765> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.533627, 34.026634, 34.684883>,  <33.526340, 33.788490, 34.713753>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.533627, 34.026634, 34.684883>,  <33.545773, 34.423542, 34.636765>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.533627, 34.026634, 34.684883> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.632244, 0.112284, 0.766590,
		-0.774175, -0.052781, -0.630768,
		-0.030364, -0.992273, 0.120298,
		33.524517, 33.728951, 34.720974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.992020, 35.013161, 34.828571>,  <33.545773, 34.423542, 34.636765>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.992020, 35.013161, 34.828571> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.312439, 35.246246, 34.883373>,  <33.504688, 35.386097, 34.916256>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.312439, 35.246246, 34.883373>,  <32.992020, 35.013161, 34.828571>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.312439, 35.246246, 34.883373> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056937, 0.302008, -0.951604,
		-0.595891, 0.754476, 0.275100,
		0.801045, 0.582715, 0.137006,
		33.552753, 35.421062, 34.924477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.841499, 35.636772, 34.460255>,  <32.992020, 35.013161, 34.828571>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.841499, 35.636772, 34.460255> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.237686, 35.610294, 34.508587>,  <33.475399, 35.594406, 34.537586>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.237686, 35.610294, 34.508587>,  <32.841499, 35.636772, 34.460255>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.237686, 35.610294, 34.508587> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133240, 0.237139, -0.962295,
		0.035045, 0.969218, 0.243697,
		0.990464, -0.066194, 0.120829,
		33.534824, 35.590435, 34.544834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.111767, 36.208378, 34.232048>,  <32.841499, 35.636772, 34.460255>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.111767, 36.208378, 34.232048> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.396679, 35.928917, 34.205063>,  <33.567627, 35.761242, 34.188873>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.396679, 35.928917, 34.205063>,  <33.111767, 36.208378, 34.232048>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.396679, 35.928917, 34.205063> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203024, 0.297075, -0.933021,
		0.671894, 0.650874, 0.353442,
		0.712278, -0.698648, -0.067459,
		33.610363, 35.719322, 34.184826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.560295, 36.550697, 33.828220>,  <33.111767, 36.208378, 34.232048>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.560295, 36.550697, 33.828220> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.659668, 36.165440, 33.786968>,  <33.719292, 35.934284, 33.762215>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.659668, 36.165440, 33.786968>,  <33.560295, 36.550697, 33.828220>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.659668, 36.165440, 33.786968> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299829, 0.177703, -0.937296,
		0.921078, 0.201932, 0.332925,
		0.248432, -0.963143, -0.103133,
		33.734196, 35.876495, 33.756027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.270161, 36.488865, 33.570114>,  <33.560295, 36.550697, 33.828220>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.270161, 36.488865, 33.570114> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.086815, 36.141983, 33.492287>,  <33.976807, 35.933853, 33.445591>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.086815, 36.141983, 33.492287>,  <34.270161, 36.488865, 33.570114>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.086815, 36.141983, 33.492287> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285038, 0.063916, -0.956383,
		0.841819, -0.493826, 0.217891,
		-0.458360, -0.867208, -0.194565,
		33.949306, 35.881821, 33.433918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.897804, 36.032726, 33.157841>,  <34.270161, 36.488865, 33.570114>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.897804, 36.032726, 33.157841> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.550732, 35.838341, 33.115948>,  <34.342487, 35.721710, 33.090813>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.550732, 35.838341, 33.115948>,  <34.897804, 36.032726, 33.157841>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.550732, 35.838341, 33.115948> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204997, -0.157839, -0.965952,
		0.452886, -0.859608, 0.236575,
		-0.867681, -0.485963, -0.104734,
		34.290428, 35.692551, 33.084526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.068886, 35.435261, 32.867126>,  <34.897804, 36.032726, 33.157841>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.068886, 35.435261, 32.867126> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.692291, 35.531754, 32.772964>,  <34.466335, 35.589649, 32.716469>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.692291, 35.531754, 32.772964>,  <35.068886, 35.435261, 32.867126>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.692291, 35.531754, 32.772964> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209785, -0.127265, -0.969430,
		-0.263814, -0.962087, 0.069212,
		-0.941484, 0.241230, -0.235406,
		34.409847, 35.604122, 32.702343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.938637, 35.000149, 32.412415>,  <35.068886, 35.435261, 32.867126>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.938637, 35.000149, 32.412415> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.647472, 35.270435, 32.365841>,  <34.472775, 35.432606, 32.337898>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.647472, 35.270435, 32.365841>,  <34.938637, 35.000149, 32.412415>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.647472, 35.270435, 32.365841> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148316, -0.010625, -0.988883,
		-0.669437, -0.737089, -0.092485,
		-0.727912, 0.675712, -0.116435,
		34.429100, 35.473148, 32.330910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.499905, 34.721142, 31.912840>,  <34.938637, 35.000149, 32.412415>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.499905, 34.721142, 31.912840> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.468895, 35.119541, 31.930632>,  <34.450291, 35.358582, 31.941307>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.468895, 35.119541, 31.930632>,  <34.499905, 34.721142, 31.912840>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.468895, 35.119541, 31.930632> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017765, 0.045988, -0.998784,
		-0.996832, -0.076636, -0.021259,
		-0.077521, 0.995998, 0.044481,
		34.445641, 35.418339, 31.943975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.935375, 34.918060, 31.551331>,  <34.499905, 34.721142, 31.912840>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.935375, 34.918060, 31.551331> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.187889, 35.227962, 31.537210>,  <34.339397, 35.413902, 31.528738>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.187889, 35.227962, 31.537210>,  <33.935375, 34.918060, 31.551331>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.187889, 35.227962, 31.537210> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133621, 0.063814, -0.988976,
		-0.763957, 0.629038, 0.143808,
		0.631280, 0.774751, -0.035301,
		34.377274, 35.460388, 31.526621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.726822, 35.320606, 31.019670>,  <33.935375, 34.918060, 31.551331>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.726822, 35.320606, 31.019670> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.078896, 35.495281, 31.094051>,  <34.290138, 35.600086, 31.138680>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.078896, 35.495281, 31.094051>,  <33.726822, 35.320606, 31.019670>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.078896, 35.495281, 31.094051> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144427, 0.126780, -0.981360,
		-0.452124, 0.890634, 0.048520,
		0.880185, 0.436689, 0.185951,
		34.342953, 35.626289, 31.149837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.708618, 35.908787, 30.636917>,  <33.726822, 35.320606, 31.019670>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.708618, 35.908787, 30.636917> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.101608, 35.868412, 30.699606>,  <34.337402, 35.844189, 30.737219>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.101608, 35.868412, 30.699606>,  <33.708618, 35.908787, 30.636917>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.101608, 35.868412, 30.699606> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184082, 0.392764, -0.901027,
		0.029390, 0.914083, 0.404460,
		0.982471, -0.100935, 0.156723,
		34.396351, 35.838131, 30.746622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.002583, 36.600807, 30.507874>,  <33.708618, 35.908787, 30.636917>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.002583, 36.600807, 30.507874> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.286148, 36.319077, 30.493071>,  <34.456287, 36.150040, 30.484190>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.286148, 36.319077, 30.493071>,  <34.002583, 36.600807, 30.507874>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.286148, 36.319077, 30.493071> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346009, 0.393026, -0.851943,
		0.614587, 0.591151, 0.522324,
		0.708915, -0.704323, -0.037005,
		34.498821, 36.107780, 30.481970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.475136, 36.914570, 30.092789>,  <34.002583, 36.600807, 30.507874>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.475136, 36.914570, 30.092789> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.636757, 36.548794, 30.102062>,  <34.733730, 36.329327, 30.107626>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.636757, 36.548794, 30.102062>,  <34.475136, 36.914570, 30.092789>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.636757, 36.548794, 30.102062> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511708, 0.204945, -0.834357,
		0.758221, 0.348986, 0.550736,
		0.404049, -0.914443, 0.023186,
		34.757973, 36.274460, 30.109018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.163372, 37.041599, 30.264784>,  <34.475136, 36.914570, 30.092789>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.163372, 37.041599, 30.264784> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.127403, 36.687561, 30.082125>,  <35.105824, 36.475140, 29.972530>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.127403, 36.687561, 30.082125>,  <35.163372, 37.041599, 30.264784>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.127403, 36.687561, 30.082125> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549185, 0.338431, -0.764107,
		0.830849, -0.319494, 0.455647,
		-0.089923, -0.885092, -0.456647,
		35.100426, 36.422035, 29.945131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.868416, 36.869785, 30.104086>,  <35.163372, 37.041599, 30.264784>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.868416, 36.869785, 30.104086> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.640041, 36.660782, 29.850784>,  <35.503017, 36.535381, 29.698803>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.640041, 36.660782, 29.850784>,  <35.868416, 36.869785, 30.104086>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.640041, 36.660782, 29.850784> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521719, 0.364652, -0.771258,
		0.633908, -0.770722, 0.064409,
		-0.570938, -0.522510, -0.633256,
		35.468761, 36.504028, 29.660807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.365425, 36.757690, 29.632114>,  <35.868416, 36.869785, 30.104086>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.365425, 36.757690, 29.632114> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.026409, 36.609245, 29.480350>,  <35.822998, 36.520176, 29.389292>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.026409, 36.609245, 29.480350>,  <36.365425, 36.757690, 29.632114>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.026409, 36.609245, 29.480350> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406644, 0.005310, -0.913571,
		0.341055, -0.928572, 0.146411,
		-0.847539, -0.371115, -0.379409,
		35.772148, 36.497910, 29.366528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.544445, 36.235836, 29.245579>,  <36.365425, 36.757690, 29.632114>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.544445, 36.235836, 29.245579> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.206875, 36.395439, 29.102144>,  <36.004333, 36.491199, 29.016085>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.206875, 36.395439, 29.102144>,  <36.544445, 36.235836, 29.245579>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.206875, 36.395439, 29.102144> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419605, 0.074495, -0.904645,
		-0.334248, -0.913916, -0.230294,
		-0.843926, 0.399008, -0.358584,
		35.953697, 36.515141, 28.994570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.520664, 35.919350, 28.588850>,  <36.544445, 36.235836, 29.245579>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.520664, 35.919350, 28.588850> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.292366, 36.247761, 28.583803>,  <36.155388, 36.444809, 28.580774>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.292366, 36.247761, 28.583803>,  <36.520664, 35.919350, 28.588850>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.292366, 36.247761, 28.583803> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284867, 0.183569, -0.940826,
		-0.770127, -0.540571, -0.338655,
		-0.570750, 0.821027, -0.012619,
		36.121140, 36.494068, 28.580017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.310986, 35.910885, 27.990210>,  <36.520664, 35.919350, 28.588850>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.310986, 35.910885, 27.990210> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.240452, 36.289761, 28.097342>,  <36.198132, 36.517086, 28.161621>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.240452, 36.289761, 28.097342>,  <36.310986, 35.910885, 27.990210>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.240452, 36.289761, 28.097342> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288670, 0.309893, -0.905890,
		-0.941051, -0.082423, -0.328070,
		-0.176332, 0.947192, 0.267832,
		36.187553, 36.573917, 28.177691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.777573, 36.254704, 27.479073>,  <36.310986, 35.910885, 27.990210>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.777573, 36.254704, 27.479073> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.063889, 36.470581, 27.656330>,  <36.235680, 36.600109, 27.762684>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.063889, 36.470581, 27.656330>,  <35.777573, 36.254704, 27.479073>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.063889, 36.470581, 27.656330> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441224, 0.142336, -0.886037,
		-0.541263, 0.829743, -0.136243,
		0.715791, 0.539692, 0.443143,
		36.278625, 36.632488, 27.789272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.919239, 36.665462, 26.981516>,  <35.777573, 36.254704, 27.479073>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.919239, 36.665462, 26.981516> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.241699, 36.729424, 27.209393>,  <36.435177, 36.767799, 27.346119>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.241699, 36.729424, 27.209393>,  <35.919239, 36.665462, 26.981516>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.241699, 36.729424, 27.209393> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535548, 0.212220, -0.817405,
		-0.251602, 0.964051, 0.085448,
		0.806154, 0.159900, 0.569690,
		36.483547, 36.777393, 27.380301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.083199, 37.247730, 26.656713>,  <35.919239, 36.665462, 26.981516>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.083199, 37.247730, 26.656713> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.390240, 37.106007, 26.870348>,  <36.574467, 37.020973, 26.998529>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.390240, 37.106007, 26.870348>,  <36.083199, 37.247730, 26.656713>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.390240, 37.106007, 26.870348> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.636885, 0.328261, -0.697583,
		0.071837, 0.875621, 0.477627,
		0.767605, -0.354306, 0.534088,
		36.620522, 36.999714, 27.030575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.574532, 37.684574, 26.488781>,  <36.083199, 37.247730, 26.656713>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.574532, 37.684574, 26.488781> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.785374, 37.382500, 26.644653>,  <36.911880, 37.201256, 26.738176>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.785374, 37.382500, 26.644653>,  <36.574532, 37.684574, 26.488781>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.785374, 37.382500, 26.644653> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.714268, 0.145275, -0.684628,
		0.460413, 0.639206, 0.615983,
		0.527105, -0.755189, 0.389679,
		36.943504, 37.155945, 26.761557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.280926, 37.959061, 26.558908>,  <36.574532, 37.684574, 26.488781>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.280926, 37.959061, 26.558908> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.297718, 37.559658, 26.544937>,  <37.307793, 37.320015, 26.536554>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.297718, 37.559658, 26.544937>,  <37.280926, 37.959061, 26.558908>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.297718, 37.559658, 26.544937> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.727618, 0.054514, -0.683813,
		0.684696, 0.003294, 0.728821,
		0.041984, -0.998508, -0.034929,
		37.310314, 37.260105, 26.534458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.975922, 37.775684, 26.647339>,  <37.280926, 37.959061, 26.558908>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.975922, 37.775684, 26.647339> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.824505, 37.450733, 26.469910>,  <37.733654, 37.255764, 26.363453>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.824505, 37.450733, 26.469910>,  <37.975922, 37.775684, 26.647339>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.824505, 37.450733, 26.469910> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.738229, 0.024091, -0.674119,
		0.558323, -0.582638, 0.590599,
		-0.378540, -0.812374, -0.443571,
		37.710941, 37.207020, 26.336838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.556942, 37.256012, 26.496967>,  <37.975922, 37.775684, 26.647339>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.556942, 37.256012, 26.496967> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.250423, 37.180729, 26.251247>,  <38.066513, 37.135559, 26.103815>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.250423, 37.180729, 26.251247>,  <38.556942, 37.256012, 26.496967>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.250423, 37.180729, 26.251247> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.623966, 0.009904, -0.781389,
		0.153145, -0.982080, 0.109843,
		-0.766298, -0.188204, -0.614301,
		38.020535, 37.124268, 26.066957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.874195, 36.826580, 26.030678>,  <38.556942, 37.256012, 26.496967>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.874195, 36.826580, 26.030678> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.534454, 36.950249, 25.859556>,  <38.330612, 37.024452, 25.756884>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.534454, 36.950249, 25.859556>,  <38.874195, 36.826580, 26.030678>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.534454, 36.950249, 25.859556> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490818, 0.164468, -0.855598,
		-0.194170, -0.936676, -0.291440,
		-0.849350, 0.309175, -0.427802,
		38.279648, 37.043003, 25.731216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.601116, 36.884682, 26.255041>,  <38.874195, 36.826580, 26.030678>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.601116, 36.884682, 26.255041> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.873192, 37.174999, 26.296156>,  <40.036438, 37.349190, 26.320826>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.873192, 37.174999, 26.296156>,  <39.601116, 36.884682, 26.255041>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.873192, 37.174999, 26.296156> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140145, -0.008880, 0.990091,
		0.719517, -0.687853, 0.095676,
		0.680188, 0.725796, 0.102789,
		40.077248, 37.392738, 26.326992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.122742, 36.599716, 26.723986>,  <39.601116, 36.884682, 26.255041>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.122742, 36.599716, 26.723986> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.166981, 36.996082, 26.754585>,  <40.193523, 37.233902, 26.772945>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.166981, 36.996082, 26.754585>,  <40.122742, 36.599716, 26.723986>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.166981, 36.996082, 26.754585> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018910, -0.074861, 0.997015,
		0.993685, -0.111719, 0.010458,
		0.110602, 0.990916, 0.076501,
		40.200161, 37.293358, 26.777536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.527206, 36.611538, 27.266378>,  <40.122742, 36.599716, 26.723986>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.527206, 36.611538, 27.266378> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.366379, 36.975548, 27.225994>,  <40.269882, 37.193954, 27.201763>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.366379, 36.975548, 27.225994>,  <40.527206, 36.611538, 27.266378>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.366379, 36.975548, 27.225994> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053534, 0.086712, 0.994794,
		0.914042, 0.405382, 0.013853,
		-0.402070, 0.910025, -0.100960,
		40.245758, 37.248554, 27.195705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.907909, 37.177418, 27.661156>,  <40.527206, 36.611538, 27.266378>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.907909, 37.177418, 27.661156> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.550556, 37.351822, 27.617767>,  <40.336143, 37.456463, 27.591734>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.550556, 37.351822, 27.617767>,  <40.907909, 37.177418, 27.661156>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.550556, 37.351822, 27.617767> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079175, 0.084865, 0.993242,
		0.442269, 0.895932, -0.041295,
		-0.893381, 0.436010, -0.108469,
		40.282543, 37.482624, 27.585226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.015110, 37.695019, 28.249187>,  <40.907909, 37.177418, 27.661156>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.015110, 37.695019, 28.249187> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.633514, 37.657486, 28.135279>,  <40.404556, 37.634968, 28.066935>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.633514, 37.657486, 28.135279>,  <41.015110, 37.695019, 28.249187>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.633514, 37.657486, 28.135279> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264980, -0.180579, 0.947194,
		-0.140301, 0.979074, 0.147408,
		-0.953992, -0.093832, -0.284770,
		40.347317, 37.629337, 28.049847>
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
